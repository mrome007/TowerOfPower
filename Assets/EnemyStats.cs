using UnityEngine;
using System.Collections;

public class EnemyStats : MonoBehaviour {
	public float mHealth = 100.0f;
	public int mScore;
	public int mResources;
	public float mSpeed;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(mHealth <= 0)
		{
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				SpawnWaves sw = gc.GetComponent<SpawnWaves>();
				sw.numEnemiesRemaining--;
			}
			GameObject theTower = GameObject.FindGameObjectWithTag("TheTower");
			TowerStats towerStats = theTower.GetComponent<TowerStats>();
			towerStats.mScore += mScore;
			towerStats.mResources += mResources;
			Destroy (gameObject);
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Ammo")
		{
			Destroy (other.gameObject);
			TurretAmmoBase getAmmoInfo = other.gameObject.GetComponent<TurretAmmoBase>();
			float damageRate = getAmmoInfo.mTheDamage;
			mHealth -= damageRate;
		}
		if(other.gameObject.tag == "slowAmmo")
		{
			if(mSpeed - other.gameObject.GetComponent<FireSlowField>().mDamage > 1.0f)
				mSpeed -= other.gameObject.GetComponent<FireSlowField>().mDamage;
			else
				mSpeed = 1.0f;
			//Debug.Log ("SLOW");
		}
	}
}
