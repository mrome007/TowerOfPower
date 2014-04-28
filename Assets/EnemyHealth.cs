using UnityEngine;
using System.Collections;

public class EnemyHealth : MonoBehaviour {
	public float mTheEnemyHealth = 100.0f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(mTheEnemyHealth <= 0)
		{
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				SpawnWaves sw = gc.GetComponent<SpawnWaves>();
				sw.numEnemiesRemaining--;
			}
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
			if(mTheEnemyHealth >= 0)
				mTheEnemyHealth -= damageRate;
		}

	}
}
