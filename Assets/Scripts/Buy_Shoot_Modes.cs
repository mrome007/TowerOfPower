using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(AudioSource))]
public class Buy_Shoot_Modes : MonoBehaviour {

	private const float TOWER_FIRE_X = -80.0f;
	private const float TOWER_FIRE_Y = 20.0f;
	private const float TOWER_FIRE_Z = 0.0f;

	private Vector3 TOWER_FIRE_VECTOR = new Vector3(TOWER_FIRE_X, TOWER_FIRE_Y, TOWER_FIRE_Z);
	public Transform towerAmmoSpawn;
	/** The maximum firing angle in radians */
	private const float MAX_FIRE_ANGLE = Mathf.PI / 2; /** 45 degrees */

	/** TODO: Replace with int and have constants defining what mode/weapon */
	public bool buyMode =	 false;
	public bool shootMode = true;

	//private bool selecting = false;

	public int theWeapon = 0;
	public int theTowerWeapon = 0;

	private float mClickY;
	private float mClickX;
	private float mReleaseY;

	public Vector3 targetPosition;

	private GameObject lastPlane;
	private GameObject hoverObject;
	private GameObject towerAmmo;

	public Material oldMaterial;
	public Material hoverMaterial;
	public Material cantBuy;

	public int buyPlane;
	private int enemyLayer = 10;
	private int placementPlaneLayer = 8;
	public GameObject[] weapons;
	public GameObject[] towerWeapons;

	public GameObject[] dummyWeapons;

	private GameObject mTargetLocation;
	private GameObject mTargetPole;
	private GameObject mTargetLine;

	//for the upgrades.
	private GridForUnits grid;

	private bool mIsClickDown;


	//for pathfinding
	//List<GameObject> distances;
	//Queue<GameObject> minVisits;
	public List<GameObject> thePath;
	public List<GameObject> thePath2;
	public List<GameObject> thePath3;
	public GameObject start;
	public GameObject start2;
	public GameObject start3;
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


	//firing off the laser
	public float laserFireTime = 0.35f;
	private float laserTime = 0.35f;

	//upgrade multiplier for upgrading tower weapons
	public float upgradeTowerMult = 1.0f;

	//multishot
	public bool multiShot = false;

	//radius upgrade
	public float theRadiusMult;
	//number of shots for spread
	public int numShots;
	public float fireAngle;

	//for SOUND
	public AudioClip towershot ;



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
		Transform [] ts = walkablePlaneParent.GetComponentsInChildren<Transform> ();
		for(int i = 0; i < ts.Length; i++)
		{
			if(ts[i].gameObject.tag != "Taken" && ts[i].gameObject.name != walkablePlaneParent.name)
			{
				GridForUnits gfn = ts[i].gameObject.GetComponent<GridForUnits>();
				if(gfn)
				{
					gfn.distance = 10000;
					gfn.hasBeenVisited = false;
				}
				//distances.Add(child.gameObject);
			}
		}
		/*
		foreach(Transform child in walkablePlaneParent.transform)
		{
			if(child.gameObject.tag != "Taken")
			{
				GridForUnits gfn = child.gameObject.GetComponent<GridForUnits>();
				gfn.distance = 10000;
				gfn.hasBeenVisited = false;
				//distances.Add(child.gameObject);
			}
		}*/
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
		int enemyMask = 1 << enemyLayer;
		int placementMask = 1 << placementPlaneLayer;
		gameover = false;
		theWeapon = 1;
		theTowerWeapon = 0;
		thePathsHaveChanged = false;
		//make this as a public function to easily use
		start = GameObject.Find ("UnitsAllowedStart");
		thePath = dijkstraPath (start,thePath);
		start2 = GameObject.Find ("UnitsAllowed18");
		thePath2 = dijkstraPath (start2,thePath2);
		start3 = GameObject.Find ("UnitsAllowed1");
		thePath3 = dijkstraPath (start3, thePath3);
		Debug.Log ("thepath3" + thePath3.Count);
		buyPlane = enemyMask | placementMask;
		upgradeTowerMult = 1.0f;
		theRadiusMult = 1.0f;
		multiShot = false;
		numShots = 1;
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
			NewSpawnWaves sw = gameObject.GetComponent<NewSpawnWaves>();
			sw.waveDuration = -1.0f;
			sw.numEnemiesRemaining = 1000;

		}
		if(buyMode && !gameover)
		{
			if(Input.GetMouseButton(0)){
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray,out hit,1000,buyPlane))
			{
				if(lastPlane)
				{
					lastPlane.renderer.material = oldMaterial;
					lastPlane.renderer.enabled = false;
					Destroy(hoverObject);
				}
				if(hit.collider.gameObject.tag != "Enemy")
				{
					lastPlane = hit.collider.gameObject;
				//oldMaterial = lastPlane.renderer.material;
					GridForUnits lsp = lastPlane.GetComponent<GridForUnits>();
					if(lsp)
					{
						lastPlane.renderer.enabled = true;
						if(lsp.isAvailable)
						{
							int cstTBy = weapons[theWeapon].GetComponent<Weapons>().cost;
							GameObject towor = GameObject.FindGameObjectWithTag("TheTower");
							int rsrce = towor.GetComponent<TowerStats>().mResources;
							if((rsrce - cstTBy) >= 0)
								lastPlane.renderer.material = hoverMaterial;
							else
								lastPlane.renderer.material = cantBuy;
						}
						else
						{
							Weapons gtpgrd = lsp.whatsInside.GetComponent<Weapons>();
							GameObject whtTpgrd = gtpgrd.upgradeIt;
							if(whtTpgrd != null)
							{
								int csy = whtTpgrd.GetComponent<Weapons>().cost;
								GameObject tweer = GameObject.FindGameObjectWithTag("TheTower");
								int reesrc = tweer.GetComponent<TowerStats>().mResources;
								if(reesrc - csy >= 0)
									lastPlane.renderer.material = hoverMaterial;
								else
									lastPlane.renderer.material = cantBuy;
							}
						}
					
						if(lastPlane != null && lastPlane.GetComponent<GridForUnits>().whatsInside != null)
						{
							GameObject hoverUpgrade = lastPlane.GetComponent<GridForUnits>().whatsInside.GetComponent<Weapons>().upgradeDummy;
							if(hoverUpgrade)
							{
								hoverObject = (GameObject)Instantiate(hoverUpgrade, lastPlane.transform.position, 
						     	                                 Quaternion.identity);
							}
						}
						else
						{
							hoverObject = (GameObject)Instantiate(dummyWeapons[theWeapon], lastPlane.transform.position, 
						                                      Quaternion.identity);
						}
					}
				}
				else
				{
					//lastPlane.renderer.enabled = false;
					lastPlane = null;
				}
			}
			else
			{
				if(lastPlane)
				{
					lastPlane.renderer.material = oldMaterial;
					lastPlane.renderer.enabled = false;
					lastPlane = null;
						Destroy(hoverObject);
				}
			}
		}
			if(Input.GetMouseButtonUp(0) && lastPlane)
			{
				Destroy(hoverObject);
				Debug.Log("HELLO THERE");
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
							//lastPlane.gameObject.tag = "NotTaken";
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

								//wall specific placement;
								if(currWeapon.tag == "WallWeapon")
								{
									wallObjectSurvive wos = currWeapon.GetComponent<wallObjectSurvive>();
									wos.planeItsOn = lastPlane.gameObject;
								}
							//GameObject start = GameObject.Find ("UnitsAllowedStart");
								theTaken = lastPlane;
								theTaken.gameObject.tag = "Taken";
								thePathsHaveChanged = true;
								if(thePath3.Contains(theTaken))
								{
									thePath3 = dijkstraPath(start3,thePath3);
								//thePathsHaveChanged = true;
								//Debug.Log("Change Paths");
								}
								if(thePath2.Contains(theTaken))
								{
									thePath2 = dijkstraPath(start2,thePath2);

								//thePathsHaveChanged1 = true;
								}
								NewSpawnWaves nsw = gameObject.GetComponent<NewSpawnWaves>();
								if(nsw.allBlue)
								{
									if(thePath.Contains(theTaken))
									{
										thePath = dijkstraPath(start,thePath);
										
										//thePathsHaveChanged1 = true;
									}
								}
							}
							else{
								lastPlane.gameObject.tag = "NotTaken";
								grid.isAvailable = true;

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
						GameObject gu = grid.whatsInside;
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
								Vector3 tempPos = lastPlane.transform.position;
								Quaternion tempRot = getUpgrade.transform.rotation;
								Destroy(gu);
								grid.whatsInside = null;
								GameObject currWeapon = (GameObject)Instantiate(whatToUpgrade, 
							                                                tempPos, tempRot);
								if(currWeapon.tag == "WallWeapon")
								{
									wallObjectSurvive wos = currWeapon.GetComponent<wallObjectSurvive>();
									wos.planeItsOn = lastPlane;
								}
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
			if(Input.GetMouseButtonDown(0) && !mIsClickDown)
			{
				if(towerWeapons.Length > 0)
				{
					Debug.Log("In onDown");
					mClickY = Input.mousePosition.y;
					mClickX = Input.mousePosition.x;
					mIsClickDown = true;
					Plane playerPlane = new Plane(Vector3.up, transform.position);
					Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				
					float hitdist;
					if(playerPlane.Raycast(ray, out hitdist))
					{
						targetPosition = ray.GetPoint(hitdist);
						//Debug.Log(targetPosition);
					}
				}
			} else if (Input.GetMouseButtonUp(0) && Time.time - lastFired >= fireRate && playerHealth > 0 && theTowerWeapon < towerWeapons.Length-1) {
				Debug.Log("In onUp");
				mIsClickDown = false;
				mReleaseY = Input.mousePosition.y;
				/** Calculate the delta Y position of the mouse and get the angle */
				float maxAngleScreenRatio = Screen.height / 2;
				float deltaY = mReleaseY - mClickY;
				if (deltaY > maxAngleScreenRatio) {
					deltaY = maxAngleScreenRatio;
				} else if (deltaY < -maxAngleScreenRatio) {
					deltaY = -maxAngleScreenRatio;
				}
				fireAngle = deltaY / maxAngleScreenRatio * MAX_FIRE_ANGLE;
				/** Get the tower */
				if(!multiShot)
				{
					//towerAmmo = (GameObject)Instantiate(towerWeapons[theTowerWeapon], 
				      //                             TOWER_FIRE_VECTOR,
				        //                          Quaternion.identity);
					//towerAmmo.GetComponent<TowerAmmoStats>().mDamage *= upgradeTowerMult;

					/** Create the cannon shot */
					//FireTowersBasicAmmo cannon = towerAmmo.GetComponent<FireTowersBasicAmmo>();
					//cannon.typeOfAmmo = theTowerWeapon;
					//cannon.radius *= theRadiusMult;
					//Vector3 dir = targetPosition - TOWER_FIRE_VECTOR;
					//cannon.dir = dir.normalized;
					//cannon.mAngle = fireAngle;
					spawnSpreadShots(numShots,targetPosition,fireAngle);
				}
				else
				{
					StartCoroutine(spawnMultiShots(3,targetPosition,fireAngle));
				}
				theTower.GetComponent<TowerStats>().mLastFired = Time.time;
			} else if(Input.GetMouseButton(0) && theTowerWeapon == towerWeapons.Length - 1) {
				if(laserFireTime <= 0.0f)
				{
					//fire laser
					GameObject tmpAmmo = (GameObject)Instantiate(towerWeapons[theTowerWeapon], TOWER_FIRE_VECTOR,
					                                             Quaternion.identity);
					tmpAmmo.transform.LookAt(targetPosition);
					laserFireTime = laserTime;
				}
				laserFireTime -= Time.deltaTime;
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
			} else if (mIsClickDown && theTowerWeapon != towerWeapons.Length - 1) {
				//Plane playerPlane = new Plane(Vector3.up, transform.position);
				//Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				
				//float hitdist;

				//Vector3 newTarget = new Vector3();
				//if(playerPlane.Raycast(ray, out hitdist))
				//{
				//	newTarget = ray.GetPoint(hitdist);
				//}
//				float deltaX = targetPosition.x - newTarget.x;
				float deltaX = (mClickX - Input.mousePosition.x) / 4;
				float deltaZ = deltaX * Mathf.Acos(targetPosition.z / targetPosition.x);
				mClickX = Input.mousePosition.x;
				targetPosition.z -= deltaX;

				float maxAngleScreenRatio = Screen.height / 2;
				float deltaY = Input.mousePosition.y - mClickY;
				if (deltaY > maxAngleScreenRatio) {
					deltaY = maxAngleScreenRatio;
				} else if (deltaY < -maxAngleScreenRatio) {
					deltaY = -maxAngleScreenRatio;
				}
				fireAngle = deltaY / maxAngleScreenRatio * MAX_FIRE_ANGLE;
				//Debug.Log("Fire Angle: " + fireAngle);
				Vector3 dir = targetPosition - towerAmmoSpawn.position;
				dir = dir.normalized;
				dir.y += Mathf.Sin(fireAngle);
				dir = dir.normalized;
				float yAccel = FireTowersBasicAmmo.ACCEL_GRAVITY;
				float yVelocity = 2.0f * dir.y;
				float yPosInit = towerAmmoSpawn.position.y;//TOWER_FIRE_Y;
				float timeToHitPlus = (-yVelocity + Mathf.Sqrt(yVelocity * yVelocity - 4 * (yAccel / 2) * yPosInit)) / yAccel;
				float timeToHitMinus = (-yVelocity - Mathf.Sqrt(yVelocity * yVelocity - 4 * (yAccel / 2) * yPosInit)) / yAccel;
				float timeToHit = Mathf.Max(timeToHitPlus, timeToHitMinus) / 90.0f;
				//Debug.Log( "Time to hit (max): " + timeToHit);
				Vector3 hitLocation = new Vector3(towerAmmoSpawn.position.x + dir.x * timeToHit * 100.0f, 0, towerAmmoSpawn.position.z + dir.z * timeToHit * 100.0f);
				//Debug.Log ("x, y, z: " + hitLocation.x + ", " + hitLocation.y + ", " + hitLocation.z);
				Destroy (mTargetLocation);
				Destroy (mTargetPole);
				Destroy (mTargetLine);
				mTargetLocation = GameObject.CreatePrimitive(PrimitiveType.Sphere);
	//			mTargetPole = GameObject.CreatePrimitive(PrimitiveType.Cylinder);
				mTargetLine = GameObject.CreatePrimitive(PrimitiveType.Cylinder);
				Destroy(mTargetLine.collider);
				float hitDistX = Mathf.Abs(hitLocation.x - towerAmmoSpawn.position.x);
				float hitDistZ = Mathf.Abs(hitLocation.z - towerAmmoSpawn.position.z);
				float totalHitDist = Mathf.Sqrt(hitDistX * hitDistX + hitDistZ * hitDistZ);
				float angle = Mathf.Atan(hitDistZ / hitDistX);

				//mTargetPole.transform.localScale = new Vector3(2, Mathf.Tan(fireAngle) * hitDistX / 4, 2);
				//float poleDistX = Mathf.Cos(angle) * totalHitDist / 2;
				//float poleDistZ = Mathf.Sin(angle) * totalHitDist / 2;
				//float poleX = towerAmmoSpawn.position.x + poleDistX;
				//float poleZ = towerAmmoSpawn.position.z + poleDistZ;
				//if (hitLocation.z < 0) {
				//	poleZ = -poleZ;
				//}
				//Vector3 halfWay = new Vector3(poleX, 0, poleZ);
				//mTargetPole.transform.position = halfWay;
				Vector3 lineLocation = TOWER_FIRE_VECTOR;
				mTargetLine.renderer.material.color = new Color32(255, 0, 0, 0);
				lineLocation.x = towerAmmoSpawn.position.x;
				lineLocation.y = 0;
				lineLocation.z = towerAmmoSpawn.position.z;
				if (hitLocation.z > 0) {
					angle = -angle;
				}
				mTargetLine.transform.localScale = new Vector3(400, 0.25f, 0.25f);
				mTargetLine.transform.position = lineLocation;
				mTargetLine.transform.RotateAround(Vector3.zero, Vector3.up, Mathf.Rad2Deg * angle); 
				mTargetLine.transform.position = lineLocation;
				mTargetLocation.transform.localScale = new Vector3(5, 5, 5);
				mTargetLocation.transform.position = hitLocation;
			}
		}
	}
	IEnumerator spawnMultiShots(int num, Vector3 multTarget, float multi_fireAngle)
	{
		for(int i = 0; i < num; i++)
		{
			//GameObject ta = (GameObject)Instantiate(towerWeapons[theTowerWeapon], 
			//                                    TOWER_FIRE_VECTOR,
			  //                                  Quaternion.identity);
			//ta.GetComponent<TowerAmmoStats>().mDamage *= upgradeTowerMult;
			//FireTowersBasicAmmo cannon = ta.GetComponent<FireTowersBasicAmmo>();
			//cannon.radius *= theRadiusMult;
			//cannon.typeOfAmmo = theTowerWeapon;
			//cannon.dir = multi_dir.normalized;
			//cannon.mAngle = multi_fireAngle;
			spawnSpreadShots(numShots, multTarget, multi_fireAngle);
			yield return new WaitForSeconds(0.2f);
		}

	}

	void spawnSpreadShots(int num, Vector3 spreadTarget, float multi_fireAngle)
	{
		Vector3 []spreadPositions = new Vector3[3];
		spreadPositions [0] = new Vector3 (spreadTarget.x, spreadTarget.y, spreadTarget.z);
		float spreadZn;
		float spreadZp;
		if((spreadTarget.z+5.0f) > 45)
			spreadZn = 45;
		else
			spreadZn = spreadTarget.z+5.0f;
		if((spreadTarget.z-5.0f) < -45)
			spreadZp = -45;
		else
			spreadZp = spreadTarget.z-5.0f;
		spreadPositions [1] = new Vector3 (spreadTarget.x, spreadTarget.y, spreadZn);
		spreadPositions [2] = new Vector3 (spreadTarget.x, spreadTarget.y, spreadZp );
		Vector3 theSpos = new Vector3 (0.0f, 0.0f, -10.0f);
		Vector3 taSpawnIt = towerAmmoSpawn.position;
		for(int i = 0; i < num; i++)
		{
			GameObject ta = (GameObject)Instantiate(towerWeapons[theTowerWeapon], 
			                                        taSpawnIt,
			                                        Quaternion.identity);
			ta.GetComponent<TowerAmmoStats>().mDamage *= upgradeTowerMult;
			FireTowersBasicAmmo cannon = ta.GetComponent<FireTowersBasicAmmo>();
			cannon.radius *= theRadiusMult;
			cannon.typeOfAmmo = theTowerWeapon;
			cannon.dir = (spreadPositions[i] - towerAmmoSpawn.position).normalized;
			cannon.mAngle = multi_fireAngle;
			theSpos *= -1.0f;
			taSpawnIt = towerAmmoSpawn.position + theSpos;
			AudioListener.volume = 1;
			audio.PlayOneShot(towershot);
		}
		
	}

}
