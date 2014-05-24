using UnityEngine;
using System.Collections;

public class spawnTheHomies : MonoBehaviour {
	public GameObject[] minions;
	private int selectEnemy;
	//public bool spawn;
	// Use this for initialization
	void Start () {
		//spawn = true;
	}
	
	// Update is called once per frame
	void Update () {
		MoveUsingDFS mus = gameObject.GetComponent<MoveUsingDFS> ();
		if(mus.i % 3 == 0 && mus.stop)
		{
			if((mus.i + 3) < mus.wayPoints.Count)
			{
				int n = mus.i + Random.Range(1,3);
				selectEnemy = Random.Range(0,minions.Length);
				GameObject eO = (GameObject)Instantiate(minions[selectEnemy], mus.wayPoints[n].transform.position,
				                                        Quaternion.identity);
				NewSpawnWaves nsw = GameObject.FindGameObjectWithTag("GameController").GetComponent<NewSpawnWaves>();
				nsw.numEnemiesRemaining++;

				//eO.GetComponent<EnemyStats>().mSpeed = eO.GetComponent<EnemyStats>().mSpeed;
				//eO.GetComponent<EnemyStats>().mHealth = eO.GetComponent<EnemyStats>().mHealth;
				

				MoveUsingDFS mud = eO.GetComponent<MoveUsingDFS>();
				mud.wayPoints = gameObject.GetComponent<MoveUsingDFS>().wayPoints;
				mud.fromSpawner = true;
				mud.i = n;
			}
		}
		
	}
}
