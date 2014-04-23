using UnityEngine;
using System.Collections;

public class SpawnWaves : MonoBehaviour {
	public GameObject[] enemy;
	public GameObject enemyOut;
	public float spawnDuration = 2.0f;
	public float outsideSpawnDuration = 3.0f;
	public float waveDuration = 90.0f;
	private int initEnemies = 8;
	public int numEnemies = 0;
	int waveNo = 1;

	private float spawnTime = 2.0f;
	private float outSpawnTime = 3.0f;
	private float waveTime = 90.0f;
	private float endOfWaveBreak = 20.0f;
	public int numEnemiesRemaining = 0;
	//GameObject theEnemy;
	MoveEnemyUsingWayPoints moveIt;
	int newEnem = 0;
	Vector3 startPoint = new Vector3(58.5f, 0.0f, -24.4f);
	// Use this for initialization
	int count;
	int selectEnemy;
	GameObject theGC;
	void Start ()
	{
		Debug.Log (waveNo);
		numEnemies = initEnemies;
		selectEnemy = Random.Range(0,enemy.Length);
		newEnem = numEnemies / 2;
		theGC = GameObject.Find ("GameController");
	}
	
	// Update is called once per frame
	void Update () 
	{
		Debug.Log (waveNo);
		if(waveDuration >= 0.0)
		{
			if(enemy.Length > 0)
			{
				SpawnEnemy();
			}
			waveDuration -= Time.deltaTime;
		}
		else if(waveDuration < 0.0f && numEnemiesRemaining == 0)
		{
			Debug.Log(waveNo);
			waveNo++;
			waveTime += 20.0f;
			waveDuration = waveTime;
			spawnDuration = endOfWaveBreak;
			initEnemies += 4;
			numEnemies = initEnemies;
			newEnem = numEnemies/2;
		}
	}


	void SpawnEnemy()
	{
		if(numEnemies > 0)
		{
			if(spawnDuration <= 0.0f)
			{
				if(selectEnemy < enemy.Length-1)
					Instantiate(enemy[selectEnemy], startPoint,Quaternion.identity);
				else 
					Instantiate(enemy[selectEnemy], new Vector3(Random.Range(85.0f,100.0f),Random.Range(0, 20),
					                                                                   Random.Range(-50,50)),Quaternion.identity);
				numEnemies--;
				numEnemiesRemaining++;

				//Debug.Log (numEnemiesRemaining);
				spawnDuration = spawnTime;
			}
			spawnDuration -= Time.deltaTime;
			//Debug.Log(numEnemies);
		}
		else
		{
			selectEnemy = Random.Range(0,enemy.Length);
			numEnemies = initEnemies;
			spawnDuration = 7.0f;
		}
		if(waveNo == 1 || waveNo % 2 == 0)
		{
			if(newEnem > 0)
			{
				if(outsideSpawnDuration <= 0.0f)
				{
					newEnem--;
					Buy_Shoot_Modes bsm = theGC.GetComponent<Buy_Shoot_Modes>();
					GameObject eO = (GameObject)Instantiate(enemyOut, new Vector3(95.0f,0.0f,15.0f), 
			                                   Quaternion.identity);
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath;
					numEnemiesRemaining++;
					outsideSpawnDuration = outSpawnTime;
				}
				outsideSpawnDuration -= Time.deltaTime;
			}
			else
			{
				newEnem = initEnemies/2;
				outsideSpawnDuration = 7.0f;
			}
		}

	}


}
/*
		if(enemy.Length > 0)
		{
			if(numEnemies > 0)
			{
				if(spawnDuration <= 0.0f)
				{
					numEnemies--;
					spawnDuration = spawnTime;
					int i = Random.Range(0,4);
					if(i < 3)
					{
						theEnemy = (GameObject)Instantiate(enemy[i], new Vector3(58.5f,0.0f,-24.5f), 
					                                   	Quaternion.identity);
					}
					else
					{
						theEnemy = (GameObject)Instantiate(enemy[i], new Vector3(Random.Range(85.0f,100.0f),0.0f,Random.Range(-50,50)), 
						                                   Quaternion.identity);
					}

					//moveIt = theEnemy.GetComponent<MoveEnemyUsingWayPoints>();
					//moveIt.walkSpeed = newSpeed;
				}
				spawnDuration -= Time.deltaTime;
			}
			else
			{
				if(moveIt == null)
				{
					waveNo++;
					spawnDuration = endOfWaveBreak;
					numEnemies = initEnemies * waveNo;
					newEnem = numEnemies/2;
					//Debug.Log(newEnem);
					if(spawnTime >= 0.01f)
						spawnTime -= 0.5f;
					newSpeed += 5.0f;

					//Debug.Log(waveNo);
				}
			}
			if(waveNo%2 == 0 || waveNo == 1)
			{
				if(newEnem > 0)
				{
					//Debug.Log(newEnem);
					if(spawnDuration <= 0)
					{
						newEnem--;//Fix enemy type outside world coordinates
						//theEnemy = (GameObject)Instantiate(enemyOut, new Vector3(95.0f,0.0f,15.0f), 
						  //                                 Quaternion.identity);
					}
				}
			}
		}
		*/