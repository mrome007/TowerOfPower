using UnityEngine;
using System.Collections;

public class NewSpawnWaveNoRed : MonoBehaviour {
	public GameObject[] outEnemy;
	public GameObject enemyOut;
	public int spawnCount;
	public float spawnWait;
	public float startWait;
	public float waveWait;
	public float waveDuration;
	public int waveNo;
	public int numEnemiesRemaining = 0;
	public int maxEnemyOnScreen = 0;
	private float waveTime = 30.0f;
	public int waveCompleted;
	public int advanced;
	public bool advanceTheWave = false;
	public bool wallsWereDestroyed = false;
	// Use this for initialization
	GameObject theGC;
	public float healthMultiplier;
	public float speedMultiplier;
	private int HellWave = 0;
	private int difficulty = 0;
	void Start () {
		waveDuration = waveTime;
		waveNo = 1;
		waveCompleted = 0;
		maxEnemyOnScreen = 40;
		numEnemiesRemaining = 0;
		theGC = GameObject.Find ("GameController");
		advanced = 0;
		healthMultiplier = 1.0f;
		speedMultiplier = 1.0f;
		HellWave = Random.Range (8, 10);
		Debug.Log ("HELL WAVE NO: " + HellWave);
		wallsWereDestroyed = false;
		difficulty = 1;
		advanceTheWave = false;
		StartCoroutine (SpawnEasyWaves(waveDuration,spawnCount,healthMultiplier,speedMultiplier,
		                               waveWait,spawnWait));
	}
	
	// Update is called once per frame
	void Update () {
		waveDuration -= Time.deltaTime;
		if((waveDuration < 0.0f && numEnemiesRemaining == 0))
		{
			waveNo++;
			if(waveNo % 10 == 0)
			{	
				HellWave = Random.Range(waveNo+8, waveNo + 10);
			}
			if(waveNo % 15 == 0)
			{
				if(difficulty < 3)
					difficulty++;
			}
			waveCompleted++;
			if(advanced > 0)
				waveCompleted += advanced;
			Debug.Log("NEW WAVE === wave number: " + waveNo);
			waveDuration = waveTime + 15;
			waveTime += 15;
			spawnCount+=1;
			
			if(waveNo % 6 == 0)
			{
				healthMultiplier += 0.5f;
				if(speedMultiplier <= 2.5f)
					speedMultiplier += 0.1f;
				if(spawnWait > 1.5f)
					spawnWait -= 0.4f;
				if(waveWait > 2.0f)
					waveWait -= 0.05f;
			}
			StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount,healthMultiplier,speedMultiplier,
			                              waveWait,spawnWait));
			for(int i = 0; i < difficulty; i++)
			{
				if(waveNo % 2 == 0)
					StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2,healthMultiplier,speedMultiplier,
					                                    waveWait,spawnWait));
				if(waveNo % 3 == 0)
					StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2,healthMultiplier,speedMultiplier,
					                                       waveWait,spawnWait));
			}
			if(waveNo == HellWave)
			{
				//spawn hell wave
				//spawnHellWave();
				StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                              waveWait,spawnWait));
				StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                                    waveWait,spawnWait));
				StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                                       waveWait,spawnWait));
				
			}
			advanced = 0;
		}
		if(advanceTheWave)
		{
			Debug.Log ("The wave was advanced to: " + waveNo);
			advanced++;
			waveNo++;
			if(waveNo % 10 == 0)
			{	
				HellWave = Random.Range(waveNo+8, waveNo + 10);
			}
			if(waveNo % 15 == 0)
			{
				if(difficulty < 3)
					difficulty++;
			}
			Debug.Log("NEW WAVE === wave number: " + waveNo);
			waveDuration = waveTime + 15;
			waveTime += 15;
			spawnCount+=1;
			if(waveNo % 6 == 0)
			{
				healthMultiplier += 0.5f;
				if(speedMultiplier <= 2.5f)
					speedMultiplier += 0.1f;
				if(spawnWait > 1.5f)
					spawnWait -= 0.4f;
				if(waveWait > 2.0f)
					waveWait -= 0.05f;
			}
			StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount,healthMultiplier,speedMultiplier,
			                              waveWait,spawnWait));
			for(int i = 0; i < difficulty; i++)
			{
				if(waveNo % 2 == 0)
					StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2,healthMultiplier,speedMultiplier,
					                                    waveWait,spawnWait));
				if(waveNo % 3 == 0)
					StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2,healthMultiplier,speedMultiplier,
					                                       waveWait,spawnWait));
			}
			if(waveNo == HellWave)
			{
				//spawn hell wave
				//spawnHellWave();
				StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                              waveWait,spawnWait));
				StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                                    waveWait,spawnWait));
				StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2,healthMultiplier*1.2f,speedMultiplier*1.2f,
				                                       waveWait,spawnWait));			
			}
			advanceTheWave = false;
		}
		
		if(wallsWereDestroyed)
		{
			Debug.Log("DEEEEEEESTROYED");
			Buy_Shoot_Mode_NoRed bsm = GameObject.FindGameObjectWithTag("GameController").GetComponent<Buy_Shoot_Mode_NoRed>();
			bsm.dijkstraPath(bsm.start,bsm.thePath);
			bsm.dijkstraPath(bsm.start2,bsm.thePath2);
			bsm.dijkstraPath(bsm.start3,bsm.thePath3);
			wallsWereDestroyed = false;	
		}
		
	}
	
	IEnumerator SpawnEasyWaves(float waveDur, int enemyCount, float hMult, float sMult, 
	                           float waveWaitTime, float spawnWaitTime)
	{
		Debug.Log ("OUTSIDE WAVE Easy");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		while(waveDur >= 0)
		{
			yield return new WaitForSeconds(waveWaitTime);
			waveDur -= waveWaitTime;
			if(waveDur < 0)
				break;
			if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
				break;
			for(int i = 0; i < enemyCount; i++)
			{
				numEnemiesRemaining++;
				int selectEnemy = Random.Range (0, outEnemy.Length);
				GameObject eO;
				if(selectEnemy < outEnemy.Length-1)
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(95.0f,0.0f,-45.0f),Quaternion.identity);
				else 
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(Random.Range(85.0f,100.0f),Random.Range(0, 20),
					                                                                Random.Range(-50,50)),Quaternion.identity);
				eO.GetComponent<EnemyStats>().mSpeed = sMult*eO.GetComponent<EnemyStats>().mSpeed;
				eO.GetComponent<EnemyStats>().mHealth = hMult*eO.GetComponent<EnemyStats>().mHealth;
				
				
				if(selectEnemy < outEnemy.Length-1)
				{
					Buy_Shoot_Mode_NoRed bsm = theGC.GetComponent<Buy_Shoot_Mode_NoRed>();
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath;
				}
				yield return new WaitForSeconds(spawnWaitTime);
				waveDur -= spawnWaitTime;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
				if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
					break;
			}
		}
	}
	
	
	IEnumerator SpawnOutsideWavesTop(float waveDur, int enemyCount, float hMult, float sMult, 
	                                 float waveWaitTime, float spawnWaitTime)
	{
		Debug.Log ("OUTSIDE WAVE TOP");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		while(waveDur >= 0)
		{
			yield return new WaitForSeconds(waveWaitTime);
			waveDur -= waveWaitTime;
			if(waveDur < 0)
				break;
			if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
				break;
			for(int i = 0; i < enemyCount; i++)
			{
				numEnemiesRemaining++;
				int selectEnemy = Random.Range (0, outEnemy.Length);
				GameObject eO;
				if(selectEnemy < outEnemy.Length-1)
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(95.0f,0.0f,15.0f),Quaternion.identity);
				else 
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(Random.Range(85.0f,100.0f),Random.Range(0, 20),
					                                                                Random.Range(-50,50)),Quaternion.identity);
				eO.GetComponent<EnemyStats>().mSpeed = sMult*eO.GetComponent<EnemyStats>().mSpeed;
				eO.GetComponent<EnemyStats>().mHealth = hMult*eO.GetComponent<EnemyStats>().mHealth;
				
				if(selectEnemy < outEnemy.Length-1)
				{
					Buy_Shoot_Mode_NoRed bsm = theGC.GetComponent<Buy_Shoot_Mode_NoRed>();
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath3;
				}
				yield return new WaitForSeconds(spawnWaitTime);
				waveDur -= spawnWaitTime;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
				if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
					break;
			}
		}
		//waveCompleted++;
	}
	
	IEnumerator SpawnOutsideWavesBottom(float waveDur, int enemyCount, float hMult, float sMult, 
	                                    float waveWaitTime, float spawnWaitTime)
	{
		Debug.Log ("OUTSIDE WAVE BOTTOM");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		while(waveDur >= 0)
		{
			yield return new WaitForSeconds(waveWaitTime);
			waveDur -= waveWaitTime;
			if(waveDur < 0)
				break;
			if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
				break;
			for(int i = 0; i < enemyCount; i++)
			{
				numEnemiesRemaining++;
				int selectEnemy = Random.Range (0, outEnemy.Length);
				GameObject eO;
				if(selectEnemy < outEnemy.Length-1)
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(95.0f,0.0f,-45.0f),Quaternion.identity);
				else 
					eO = (GameObject)Instantiate(outEnemy[selectEnemy], new Vector3(Random.Range(85.0f,100.0f),Random.Range(0, 20),
					                                                                Random.Range(-50,50)),Quaternion.identity);
				eO.GetComponent<EnemyStats>().mSpeed = sMult*eO.GetComponent<EnemyStats>().mSpeed;
				eO.GetComponent<EnemyStats>().mHealth = hMult*eO.GetComponent<EnemyStats>().mHealth;
				
				
				if(selectEnemy < outEnemy.Length-1)
				{
					Buy_Shoot_Mode_NoRed bsm = theGC.GetComponent<Buy_Shoot_Mode_NoRed>();
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath2;
				}
				yield return new WaitForSeconds(spawnWaitTime);
				waveDur -= spawnWaitTime;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
				if(gameObject.GetComponent<Buy_Shoot_Mode_NoRed>().gameover)
					break;
			}
		}
		//waveCompleted++;
	}
	

}
