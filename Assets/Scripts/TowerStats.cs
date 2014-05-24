using UnityEngine;
using System.Collections;

public class TowerStats : MonoBehaviour {

	private const int MAX_HEALTH = 20;

	public int mHealth;
	public int mResources;
	public int mScore;

	public int upgradeCost;

	public float mFireRate;
	public float mLastFired;

	public int comboKills;
	public int killsToStreak;
	public int streakNo;
	public float killStreakTimer;
	public string theNextStreak;
	private int currStreak;
	private int currCombo;
	private float theStreakTimer;
	private float streakTimerIncr;
	private int streakNoIncr;

	public int selectTower;
	public GameObject[] towers;
	public GameObject towerType;
	public bool destroyTower;
	// Use this for initialization
	void Start () {
		mHealth = MAX_HEALTH;
		mFireRate = 0.5f;
		mLastFired = 0.0f;
		mResources = 500;
		upgradeCost = 2000;
		comboKills = 0;
		killsToStreak = 4;
		streakNo = 1;
		currStreak = streakNo;
		killStreakTimer = 20.0f;
		theStreakTimer = killStreakTimer;
		currCombo = comboKills;
		theNextStreak = "Fire Rate Increase";
		streakTimerIncr = 2.0f;
		streakNoIncr = 2;
		selectTower = 0;
		destroyTower = false;
		//Debug.Log (mResources);
	}
	
	// Update is called once per frame
	void Update () {
		if (mHealth <= 0) {
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			Buy_Shoot_Modes bsm = gc.GetComponent<Buy_Shoot_Modes>();
			bsm.gameover = true;
			GameObject[] towerPieces = GameObject.FindGameObjectsWithTag("TowerPiece");
			if(destroyTower)
			{
				for (int i = 0; i < towerPieces.Length; ++i) {
					GameObject towerPiece = towerPieces[i];
					towerPiece.AddComponent<Rigidbody>();

				/*Vector3 piecePosition = towerPiece.transform.position;
				float xPos = towerPiece.transform.position.z;
				float yPos = 5;
				float zPos = towerPiece.transform.position.z;
				Vector3 translateVector = new Vector3(xPos, yPos, zPos);
				if (zPos > 0) {
					transform.RotateAround(piecePosition, translateVector, -0.5f);
				} else {
					transform.RotateAround(piecePosition, translateVector, 0.5f);
				}
				translateVector = translateVector.normalized;
				towerPiece.transform.Translate(translateVector);*/
				}
				destroyTower = false;
			}
		}
		if(comboKills > currCombo)
		{
			killStreakTimer -= Time.deltaTime;
			if(comboKills >= killsToStreak && killStreakTimer > 0.0f)
			{
				streakNo++;
				if(streakNo > 2)
					streakNoIncr += 2;
				else if(streakNo > 4)
					streakNoIncr += 3;
				if(streakNo > currStreak)
				{
					currStreak = streakNo;
					killStreak(streakNo);
				}
				comboKills = 0;
				killsToStreak += streakNoIncr;
				theStreakTimer += (streakTimerIncr * streakNoIncr)/2.0f;
				killStreakTimer = theStreakTimer;
			}
			if(killStreakTimer <= 0)
			{
				comboKills = 0;
				killStreakTimer = theStreakTimer;
			}
		}


	}

	void OnTriggerEnter(Collider collision) {
		GameObject collisionObject = collision.gameObject;
		if (collisionObject.CompareTag("Enemy")) {
			//change the tower hp
			GameObject healthGUI = GameObject.FindGameObjectWithTag("MainCamera");
			healthGUI.GetComponent<TowerHealthBar>().health -= 5;
			healthGUI.GetComponent<TowerHealthBar>().ChangeHealth(-1);
			mHealth--;
			if(mHealth == 0)
				destroyTower = true;
			comboKills = 0;
			killStreakTimer = theStreakTimer;

			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			NewSpawnWaves sw = gc.GetComponent<NewSpawnWaves>();
			if(collision.gameObject.name != "Shield")
				sw.numEnemiesRemaining--;
			Destroy (collisionObject);
			Debug.Log(mHealth);
		}
	}

	void killStreak(int n)
	{
		GameObject go = GameObject.FindGameObjectWithTag("GameController");
		Buy_Shoot_Modes bsm = go.GetComponent<Buy_Shoot_Modes>();
		switch(n)
		{
		case 1:

			break;

		case 2:
			foreach(Transform child in gameObject.transform)
			{
				Destroy(child.gameObject);
			}
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			theNextStreak = "MULTISHOT";
			if((mFireRate - 0.1f) > 0.0f)
				mFireRate -= 0.1f;
			selectTower++;
			break;
		case 3:
			Destroy(towerType);
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			theNextStreak = "Fire Rate Increase";
			bsm.multiShot = true;
			selectTower++;
			break;
		case 4:
			Destroy(towerType);
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			selectTower++;
			theNextStreak = "Grenade";
			if((mFireRate - 0.1f) > 0.0f)
				mFireRate -= 0.1f;
			break;

		case 5:
			Destroy(towerType);
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			selectTower++;
			//GameObject go = GameObject.FindGameObjectWithTag("GameController");
			//Buy_Shoot_Modes bsm = go.GetComponent<Buy_Shoot_Modes>();
			theNextStreak = "Grenade MULTISHOT";
			bsm.theTowerWeapon = 1;
			bsm.multiShot = false;
			break;

		case 6:
			Destroy(towerType);
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			selectTower++;
			//GameObject go = GameObject.FindGameObjectWithTag("GameController");
			//Buy_Shoot_Modes bsm = go.GetComponent<Buy_Shoot_Modes>();
			theNextStreak = "Radius Increase";
			bsm.multiShot = true;
			break;
		case 7:
			Destroy(towerType);
			towerType = (GameObject)Instantiate(towers[selectTower], new Vector3(-63.0f,36.0f,3.0f),
			                                    Quaternion.identity);
			selectTower++;
			bsm.theRadiusMult += 1.0f;
			break;
		case 8:
			break;
		
		default:
			break;
		}
	}

}
