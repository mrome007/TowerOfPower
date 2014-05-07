using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Buy_Shoot_Modes : MonoBehaviour {

	private const float TOWER_FIRE_X = -80.0f;
	private const float TOWER_FIRE_Y = 20.0f;
	private const float TOWER_FIRE_Z = 0.0f;

	private Vector3 TOWER_FIRE_VECTOR = new Vector3(TOWER_FIRE_X, TOWER_FIRE_Y, TOWER_FIRE_Z);

	/** The maximum firing angle in radians */
	private const float MAX_FIRE_ANGLE = Mathf.PI / 2; /** 45 degrees */

	/** TODO: Replace with int and have constants defining what mode/weapon */
	public bool buyMode =	 false;
	public bool shootMode = true;

	//private bool selecting = false;

	public int theWeapon ;

	private float mClickY;
	private float mReleaseY;

	private Vector3 targetPosition;

	private GameObject lastPlane;
	private GameObject towerAmmo;

	public Material oldMaterial;
	public Material hoverMaterial;

	public LayerMask buyPlane;
	
	public GameObject[] weapons;
	public GameObject[] towerWeapons;

	//for the upgrades.
	private GridForUnits grid;


	//for pathfinding
	//List<GameObject> distances;
	//Queue<GameObject> minVisits;
	public List<GameObject> thePath;
	public List<GameObject> thePath2;
	private GameObject start;
	private GameObject start2;
	public bool thePathsHaveChanged = false;
	public GameObject theTaken;

	//for switching modes by clicking things on the scene
	private GameObject lastButton;
	public LayerMask buttonMask;
	public Material oldButton;


	//for gameover
	public bool gameover;

	//checking if everything is blocked;
	public bool allPathsBlocked = false;
	List<GameObject> dummyPaths = new List<GameObject>();
	public GameObject findMinInList(List<GameObject> lst)
	{
		GameObject temp = null;
		int compare = 10000;
		for(int i = 0; i < lst.Count; i++)
		{
			GridForUnits gfn = lst[i].GetComponent<GridForUnits>();
			if(gfn)
			{
				if(!gfn.hasBeenVisited)
				{
					if(gfn.distance < compare)
						temp = lst[i];
					compare = gfn.distance;
				}
			}
		}
		return temp;
	}

	public List<GameObject> dijkstraPath(GameObject start, List<GameObject>paths)
	{
		GameObject walkablePlaneParent = GameObject.Find ("UnitsApproved");
		
		//List<GameObject> distances = new List<GameObject> ();
		//Queue<GameObject> minVisits = new Queue<GameObject> ();
		List<GameObject> currPath = new List<GameObject> ();
		BinaryHeap bhp = new BinaryHeap (200);
		foreach(Transform child in walkablePlaneParent.transform)
		{
			if(child.gameObject.tag != "Taken")
			{
				GridForUnits gfn = child.gameObject.GetComponent<GridForUnits>();
				gfn.distance = 10000;
				gfn.hasBeenVisited = false;
				//distances.Add(child.gameObject);
			}
		}
		//Debug.Log (distances.Count);
		//start = GameObject.Find ("UnitsAllowedStart");
		if(start)
		{
			GridForUnits gfnStart = start.GetComponent<GridForUnits> ();
			gfnStart.distance = 0;
			
			//minVisits.Enqueue(start);
			gfnStart.hasBeenVisited = true;
			bhp.add(start);
			//Debug.Log("bhp size: " + bhp.reserved);
			//Debug.Log(minVisits.Count);
			
			while(!bhp.empty())//minVisits.Count != 0)
			{
				GameObject curr = bhp.extractMin();//minVisits.Peek();
				//if(!curr)
				//	Debug.Log ("hello");
				//Debug.Log (curr.GetComponent<GridForUnits>().distance);
				GridForUnits visitCurr = curr.GetComponent<GridForUnits>();
				visitCurr.hasBeenVisited = true;
				for(int neigh = 0; neigh < visitCurr.nextTo.Length; neigh++)
				{
					int currentDist = visitCurr.distance;
					if(visitCurr.isAvailable)
					{
						GridForUnits nodesToVisitGFN = visitCurr.nextTo[neigh].GetComponent<GridForUnits>();
						int oldDis = nodesToVisitGFN.distance;
						int newDis = currentDist + 1;
						if(newDis < oldDis)
						{
							nodesToVisitGFN.distance = newDis;
							nodesToVisitGFN.previous = curr;
							bhp.add (visitCurr.nextTo[neigh]);
						}
					}

				}
				/*
				GameObject theMin = findMinInList(distances);
				if(theMin != null)
				{
					GridForUnits theMinGFN = theMin.GetComponent<GridForUnits>();
					theMinGFN.hasBeenVisited = true;
					minVisits.Enqueue(theMin);
				}
				else
				{
					minVisits.Dequeue();
				}*/
			}
			
			GameObject end = GameObject.Find("UnitsAllowedFinish");
			GridForUnits checkend = end.GetComponent<GridForUnits>();
			if(end && checkend.hasBeenVisited)
			{
				while(end.name != start.gameObject.name)
				{
					currPath.Add(end);
					GridForUnits gfnEnd = end.GetComponent<GridForUnits>();
					end = gfnEnd.previous;
				}
				currPath.Add(end);
				allPathsBlocked = false;
			}
			else
			{
				currPath = paths;
				allPathsBlocked = true;
			}
			//Debug.Log(currPath.Count);
		}
		Debug.Log (currPath.Count);
		return currPath;
	}

	// Use this for initialization
	void Start () 
	{
		gameover = false;
		theWeapon = 0;
		thePathsHaveChanged = false;
		//make this as a public function to easily use
		start = GameObject.Find ("UnitsAllowedStart");
		thePath = dijkstraPath (start,thePath);
		start2 = GameObject.Find ("UnitsAllowed18");
		thePath2 = dijkstraPath (start2,thePath2);
		//Debug.Log ("START");
	}


	// Update is called once per frame
	void Update () 
	{
		if (thePathsHaveChanged)
		{
			thePathsHaveChanged = false;
			//thePathsHaveChanged = false;
		}
		//if(allPathsBlocked)
		//{
		//	allPathsBlocked = false;
		//}
		/*
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
		*/
		/*
		Ray ra = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit ht;
		if(Physics.Raycast(ra,out ht,1000,buttonMask))
		{
			if(lastButton)
				lastButton.renderer.material = oldButton;
			lastButton = ht.collider.gameObject;
			lastButton.renderer.material = hoverMaterial;

		}
		else
		{
			if(lastButton)
				lastButton.renderer.material = oldButton;
			lastButton = null;
		}
		if(Input.GetMouseButtonDown(0) && lastButton && lastButton.gameObject.tag == "SwitchMode")
		{
			shootMode = !shootMode;
			buyMode = !buyMode;
			lastButton.renderer.material = oldButton;
			if(!buyMode)
			{
				if(lastPlane)
				{
					lastPlane.renderer.material = oldMaterial;
					lastPlane = null;
				}
			}
			Debug.Log("SWITCH");
		}
		else if(Input.GetMouseButtonDown(0) && lastButton && buyMode)
		{
			theWeapon = (theWeapon+1) % weapons.Length;
			lastButton.renderer.material = oldButton;
			Debug.Log(theWeapon);
		}
		*/
		if(gameover)
		{
			SpawnWaves sw = gameObject.GetComponent<SpawnWaves>();
			sw.waveDuration = -1.0f;
			sw.numEnemiesRemaining = 1000;

		}
		if(buyMode && !gameover)
		{
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
						lastPlane.gameObject.tag = "Taken";
						grid.isAvailable = false;
						//theTaken.gameObject.tag = "Taken";
						dijkstraPath(start,dummyPaths);
						Debug.Log (allPathsBlocked);
						if(!allPathsBlocked)
						{
							int costToBuy = weapons[theWeapon].GetComponent<Weapons>().cost;
							GameObject twr = GameObject.FindGameObjectWithTag("TheTower");
							int resource = twr.GetComponent<TowerStats>().mResources;
							Debug.Log(resource);
							if((resource - costToBuy) >= 0)
							{
								twr.GetComponent<TowerStats>().mResources -= costToBuy;
								Vector3 spawn = lastPlane.transform.position;
								GameObject currWeapon = (GameObject)Instantiate(weapons[theWeapon], spawn, 
						                                                	Quaternion.identity);
							//temp.transform.localEulerAngles = new Vector3(0.0f, Random.Range(0,360), 0.0f);
								grid.whatsInside = currWeapon;
								grid.isAvailable = false;
								lastPlane.gameObject.tag = "Taken";
							//GameObject start = GameObject.Find ("UnitsAllowedStart");
								theTaken = lastPlane;
								theTaken.gameObject.tag = "Taken";
								thePathsHaveChanged = true;
								if(thePath.Contains(theTaken))
								{
									thePath = dijkstraPath(start,thePath);
								//thePathsHaveChanged = true;
								//Debug.Log("Change Paths");
								}
								if(thePath2.Contains(theTaken))
								{
									thePath2 = dijkstraPath(start2,thePath2);

								//thePathsHaveChanged1 = true;
								}
							}
						//thePathsHaveChanged = false;
						}
						else
						{
							lastPlane.gameObject.tag = "NotTaken";
							grid.isAvailable = true;
							//theTaken.gameObject.tag = "NotTaken";
						}
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
							int costToBuy = whatToUpgrade.GetComponent<Weapons>().cost;
							GameObject twr = GameObject.FindGameObjectWithTag("TheTower");
							int resource = twr.GetComponent<TowerStats>().mResources;
							if(resource - costToBuy >= 0)
							{
								twr.GetComponent<TowerStats>().mResources -= costToBuy;
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
		}

		if(shootMode && !gameover)
		{
			GameObject theTower = GameObject.FindGameObjectWithTag("TheTower");	
			float fireRate = theTower.GetComponent<TowerStats>().mFireRate;
			float lastFired = theTower.GetComponent<TowerStats>().mLastFired;
			int playerHealth = theTower.GetComponent<TowerStats>().mHealth;
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
						//Debug.Log(targetPosition);
					}
				}
			} else if (Input.GetMouseButtonUp(0) && Time.time - lastFired >= fireRate && playerHealth > 0) {
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
				towerAmmo = (GameObject)Instantiate(towerWeapons[0], 
				                                   TOWER_FIRE_VECTOR,
				                                   Quaternion.identity);
				/** Create the cannon shot */
				FireTowersBasicAmmo cannon = towerAmmo.GetComponent<FireTowersBasicAmmo>();
				Vector3 dir = targetPosition - TOWER_FIRE_VECTOR;
				cannon.dir = dir.normalized;
				cannon.mAngle = fireAngle;
				theTower.GetComponent<TowerStats>().mLastFired = Time.time;
			}
		}
	}

}
