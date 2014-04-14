using UnityEngine;
using System.Collections;

public class SpawnWaves : MonoBehaviour {
	public GameObject enemy;
	public GameObject enemyOut;
	public float spawnDuration = 7.0f;
	private int initEnemies = 8;
	public int numEnemies = 0;
	int waveNo = 1;

	private float spawnTime = 5.0f;
	private float newSpeed = 2.0f;
	private float endOfWaveBreak = 10.0f;
	GameObject theEnemy;
	MoveEnemyUsingWayPoints moveIt;
	int newEnem = 0;
	// Use this for initialization
	void Start ()
	{
		Debug.Log (waveNo);
		numEnemies = initEnemies;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(enemy)
		{
			if(numEnemies > 0)
			{
				if(spawnDuration <= 0.0f)
				{
					numEnemies--;
					spawnDuration = spawnTime;
					theEnemy = (GameObject)Instantiate(enemy, new Vector3(58.5f,0.0f,-24.5f), 
					                                   	Quaternion.identity);
					moveIt = theEnemy.GetComponent<MoveEnemyUsingWayPoints>();
					moveIt.walkSpeed = newSpeed;
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
					Debug.Log(newEnem);
					if(spawnTime >= 0.01f)
						spawnTime -= 0.5f;
					newSpeed += 5.0f;

					Debug.Log(waveNo);
				}
			}
			if(waveNo%2 == 0)
			{
				if(newEnem > 0)
				{
					Debug.Log(newEnem);
					if(spawnDuration <= 0)
					{
						newEnem--;//Fix enemy type outside world coordinates
						theEnemy = (GameObject)Instantiate(enemyOut, new Vector3(95.0f,4f,15.0f), 
						                                   Quaternion.identity);
					}
				}
			}
		}
	}
}
