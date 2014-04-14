using UnityEngine;
using System.Collections;

public class Buy_Shoot_Modes : MonoBehaviour {

	private bool buyMode = false;
	private bool shootMode = true;
	public Material oldMaterial;
	public Material hoverMaterial;
	private GameObject lastPlane;
	public LayerMask buyPlane;
	public GameObject[] weapons;
	public GameObject[] towerWeapons;
	private Vector3 targetPosition;
	GameObject theTower;
	bool whichWeapon = true;
	int theWeapon = 0;
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
				if(lastPlane.gameObject.tag == "NotTaken")
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
						Instantiate(weapons[theWeapon], spawn, Quaternion.identity);
						//temp.transform.localEulerAngles = new Vector3(0.0f, Random.Range(0,360), 0.0f);
						lastPlane.gameObject.tag = "Taken";
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
					Plane playerPlane = new Plane(Vector3.up, transform.position);
					Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				
					float hitdist;
					if(playerPlane.Raycast(ray, out hitdist))
					{
					//Vector3 targetPoint = ray.GetPoint(hitdist);
						targetPosition = ray.GetPoint(hitdist);
						Debug.Log(targetPosition);
					}
					theTower = (GameObject)Instantiate(towerWeapons[0], 
					                                   	new Vector3(-55.0f,40.0f,-5.0f), 
					                                   	Quaternion.identity);
					FireTowersBasicAmmo mc = theTower.GetComponent<FireTowersBasicAmmo>();
					Vector3 dir = targetPosition - new Vector3(-55.0f,40.0f,-5.0f);
					mc.dir = dir.normalized;
				}
			}
		}
	}
}
