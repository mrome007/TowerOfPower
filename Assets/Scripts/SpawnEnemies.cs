using UnityEngine;
using System.Collections;

public class SpawnEnemies : MonoBehaviour {

	public GameObject enemyOfTower;
	public Transform targetOfEnemy;
	public int numEnemies = 12;
	public float spawnDuration = 5.0f;
	// Use this for initialization
	GameObject theEnemy;

	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(numEnemies > 0)
		{
			if(spawnDuration <= 0.0)
			{
				numEnemies--;
				spawnDuration = 5.0f;
				theEnemy = (GameObject)Instantiate(enemyOfTower, new Vector3(250,10,
				                                      	Random.Range(-200,200)),Quaternion.identity);
				MoveTowards tempEnem = theEnemy.GetComponent<MoveTowards>();
				tempEnem.target = targetOfEnemy;
			}
			spawnDuration -= Time.deltaTime;
		}
	}
}
