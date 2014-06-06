using UnityEngine;
using System.Collections;

public class EnemyStats : MonoBehaviour {
	public float mHealth = 100.0f;
	public int mScore;
	public int mResources;
	public float mSpeed;
	public GameObject enemyDummy;
	public float maxHealth;
	bool beenSlowed = false;
	float origSpeed;
	public float duration;
	// Use this for initialization
	void Start () {
		maxHealth = mHealth;
		origSpeed = mSpeed;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(mHealth <= 0)
		{
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				NewSpawnWaves sw = gc.GetComponent<NewSpawnWaves>();
				if(gameObject.name != "Shield")
					sw.numEnemiesRemaining--;
			}
			GameObject theTower = GameObject.FindGameObjectWithTag("TheTower");
			TowerStats towerStats = theTower.GetComponent<TowerStats>();
			towerStats.mScore += mScore;
			towerStats.mResources += mResources;
			Instantiate(enemyDummy,transform.position,transform.rotation);
			Destroy (gameObject);
		}
		if(beenSlowed)
		{
			duration -= Time.deltaTime;
			if(duration <= 0)
			{
				beenSlowed = false;
				mSpeed = origSpeed;
			}
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
			beenSlowed = true;
			duration = other.gameObject.GetComponent<FireSlowField>().enemySlowD;
			if(mSpeed - other.gameObject.GetComponent<FireSlowField>().mDamage > 1.0f)
				mSpeed -= other.gameObject.GetComponent<FireSlowField>().mDamage;
			else
				mSpeed = 1.0f;
			//Debug.Log ("SLOW");
		}
	}
}
