using UnityEngine;
using System.Collections;

public class NewSpawnWaves : MonoBehaviour {
	public GameObject[] enemy;
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
	Vector3 startPoint = new Vector3(58.5f, 0.0f, -24.4f);
	public int waveCompleted;
	// Use this for initialization
	GameObject theGC;
	void Start () {
		waveDuration = waveTime;
		waveNo = 1;
		waveCompleted = 0;
		maxEnemyOnScreen = 40;
		numEnemiesRemaining = 0;
		theGC = GameObject.Find ("GameController");
		StartCoroutine (SpawnEasyWaves(waveDuration,spawnCount));
	}
	
	// Update is called once per frame
	void Update () {
		waveDuration -= Time.deltaTime;
		if((waveDuration < 0.0f && numEnemiesRemaining == 0))
		{
			waveNo++;

			Debug.Log("NEW WAVE === wave number: " + waveNo);
			waveDuration = waveTime + 15;
			waveTime += 15;
			spawnCount+=1;
			StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount));
			if(waveNo % 2 == 0)
				StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2));
			if(waveNo % 3 == 0)
				StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2));
		}
		if(Input.GetKeyDown(KeyCode.A))
		{
			waveNo++;

			Debug.Log("NEW WAVE === wave number: " + waveNo);
			waveDuration = waveTime + 15;
			waveTime += waveTime/2;
			spawnCount+=1;
			StartCoroutine(SpawnEasyWaves(waveDuration,spawnCount));
			if(waveNo % 2 == 0)
				StartCoroutine(SpawnOutsideWavesTop(waveDuration-15,spawnCount/2));
			if(waveNo % 3 == 0)
				StartCoroutine(SpawnOutsideWavesBottom(waveDuration-15,spawnCount/2));
		}

	}

	IEnumerator SpawnEasyWaves(float waveDur, int enemyCount)
	{
		Debug.Log ("EASY WAVE");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		int selectEnemy = Random.Range (0, enemy.Length);
		while(waveDur >= 0)
		{
			Debug.Log("WAVE ACTIVE: " + waveDur + "WAVE DURATION: " + waveDuration);
			yield return new WaitForSeconds(waveWait);
			waveDur -= waveWait;
			//waveDur -= Time.deltaTime;
			if(waveDur < 0)
				break;
			//waveDur -= Time.deltaTime;
			for(int i = 0; i < enemyCount; i++)
			{
				numEnemiesRemaining++;
				if(selectEnemy < enemy.Length-1)
					Instantiate(enemy[selectEnemy], startPoint,Quaternion.identity);
				else 
					Instantiate(enemy[selectEnemy], new Vector3(Random.Range(85.0f,100.0f),Random.Range(0, 20),
					                                            Random.Range(-50,50)),Quaternion.identity);
				yield return new WaitForSeconds(spawnWait);
				waveDur -= spawnWait;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
			}
		}
		Debug.Log ("Wave Done");
	}


	IEnumerator SpawnOutsideWavesTop(float waveDur, int enemyCount)
	{
		Debug.Log ("OUTSIDE WAVE TOP");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		while(waveDur >= 0)
		{
			yield return new WaitForSeconds(waveWait);
			waveDur -= waveWait;
			if(waveDur < 0)
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
				if(selectEnemy < outEnemy.Length-1)
				{
					Buy_Shoot_Modes bsm = theGC.GetComponent<Buy_Shoot_Modes>();
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath;
				}
				yield return new WaitForSeconds(spawnWait);
				waveDur -= spawnWait;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
			}
		}
	}

	IEnumerator SpawnOutsideWavesBottom(float waveDur, int enemyCount)
	{
		Debug.Log ("OUTSIDE WAVE BOTTOM");
		yield return new WaitForSeconds (startWait);
		waveDur -= startWait;
		waveDur -= Time.deltaTime;
		while(waveDur >= 0)
		{
			yield return new WaitForSeconds(waveWait);
			waveDur -= waveWait;
			if(waveDur < 0)
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
				if(selectEnemy < outEnemy.Length-1)
				{
					Buy_Shoot_Modes bsm = theGC.GetComponent<Buy_Shoot_Modes>();
					MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
					mud.wayPoints = bsm.thePath2;
				}
				yield return new WaitForSeconds(spawnWait);
				waveDur -= spawnWait;
				waveDur -= Time.deltaTime;
				if(waveDur < 0)
					break;
			}
		}
	}
}
