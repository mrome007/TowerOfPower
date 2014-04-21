using UnityEngine;
using System.Collections;

public class Buy_Shoot_Modes : MonoBehaviour {

	private const float TOWER_FIRE_X = -55.0f;
	private const float TOWER_FIRE_Y = 40.0f;
	private const float TOWER_FIRE_Z = -5.0f;

	private Vector3 TOWER_FIRE_VECTOR = new Vector3(TOWER_FIRE_X, TOWER_FIRE_Y, TOWER_FIRE_Z);

	/** The maximum firing angle in radians */
	private const float MAX_FIRE_ANGLE = Mathf.PI / 2; /** 45 degrees */

	/** TODO: Replace with int and have constants defining what mode/weapon */
	private bool buyMode =	 false;
	private bool shootMode = true;
	private bool whichWeapon = true;

	private int theWeapon = 0;

	private float mClickY;
	private float mReleaseY;

	private Vector3 targetPosition;

	private GameObject lastPlane;
	private GameObject theTower;

	public Material oldMaterial;
	public Material hoverMaterial;
	
	public LayerMask buyPlane;
	
	public GameObject[] weapons;
	public GameObject[] towerWeapons;

	//for the upgrades.
	private GridForUnits grid;

	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if (Input.GetKey (KeyCode.B))
		{	
			buyMode = true;
			shootMode = false;
		}

		if(Input.GetKey(KeyCode.S))
		{
			buyMode = false;
			shootMode = true;
			if(lastPlane)
			{
				lastPlane.renderer.material = oldMaterial;
				lastPlane = null;
			}
		}

		if(buyMode)
		{
			if(Input.GetKey(KeyCode.W))
			{
				whichWeapon = false;
				//theWeapon = 1;
			}
			if(Input.GetKey(KeyCode.T))
			{
				whichWeapon = true;
				//theWeapon = 0;
			}
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray,out hit,1000,buyPlane))
			{
				if(lastPlane)
					lastPlane.renderer.material = oldMaterial;
				lastPlane = hit.collider.gameObject;
				//oldMaterial = lastPlane.renderer.material;
				lastPlane.renderer.material = hoverMaterial;
			}
			else
			{
				if(lastPlane)
				{
					lastPlane.renderer.material = oldMaterial;
					lastPlane = null;
				}
			}
			if(Input.GetMouseButtonDown(0) && lastPlane)
			{
				grid = lastPlane.GetComponent<GridForUnits>();
				if(grid.isAvailable)
				{
					if(weapons.Length > 0)
					{
						Vector3 spawn = lastPlane.transform.position;

						if(!whichWeapon)
						{
							//spawn.y+=3.0f;
							theWeapon = 1;
						}
						else
						{
							//spawn.y += 6.5f;
							theWeapon = 0;
						}
						GameObject currWeapon = (GameObject)Instantiate(weapons[theWeapon], spawn, 
						                                                	Quaternion.identity);
						//temp.transform.localEulerAngles = new Vector3(0.0f, Random.Range(0,360), 0.0f);
						grid.whatsInside = currWeapon;
						grid.isAvailable = false;
						lastPlane.gameObject.tag = "Taken";
					}
				}
				else
				{
					if(grid.whatsInside != null)
					{
						Weapons getUpgrade = grid.whatsInside.GetComponent<Weapons>();
						GameObject whatToUpgrade = getUpgrade.upgradeIt;
						if(whatToUpgrade != null)
						{
							Vector3 tempPos = getUpgrade.transform.position;
							Quaternion tempRot = getUpgrade.transform.rotation;
							Destroy(getUpgrade.gameObject);
							GameObject currWeapon = (GameObject)Instantiate(whatToUpgrade, 
							                                                tempPos, tempRot);
							grid.whatsInside = currWeapon;
						}
					}
				}
			}
		}

		if(shootMode)
		{
			if(Input.GetMouseButtonDown(0))
			{
				if(towerWeapons.Length > 0)
				{
					mClickY = Input.mousePosition.y;
					Plane playerPlane = new Plane(Vector3.up, transform.position);
					Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				
					float hitdist;
					if(playerPlane.Raycast(ray, out hitdist))
					{
						targetPosition = ray.GetPoint(hitdist);
						Debug.Log(targetPosition);
					}
				}
			} else if (Input.GetMouseButtonUp(0)) {
				mReleaseY = Input.mousePosition.y;
				/** Calculate the delta Y position of the mouse and get the angle */
				float maxAngleScreenRatio = Screen.height / 2;
				float deltaY = mReleaseY - mClickY;
				if (deltaY > maxAngleScreenRatio) {
					deltaY = maxAngleScreenRatio;
				} else if (deltaY < -maxAngleScreenRatio) {
					deltaY = -maxAngleScreenRatio;
				}
				float fireAngle = deltaY / maxAngleScreenRatio * MAX_FIRE_ANGLE;
				/** Get the tower */
				theTower = (GameObject)Instantiate(towerWeapons[0], 
				                                   TOWER_FIRE_VECTOR,
				                                   Quaternion.identity);
				/** Create the cannon shot */
				FireTowersBasicAmmo cannon = theTower.GetComponent<FireTowersBasicAmmo>();
				Vector3 dir = targetPosition - TOWER_FIRE_VECTOR;
				/** Take the sin of the angle and add it to the y direction */
				if (Mathf.Sin(fireAngle) != 0) {
					dir.y -= dir.y * Mathf.Sin(fireAngle);
				}
				cannon.dir = dir.normalized;
			}
		}
	}

}
