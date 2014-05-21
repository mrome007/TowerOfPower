using UnityEngine;
using System.Collections;

public class DestroyOnContact : TowerAmmoStats {

	//private float mDamage = 100.0f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update ()
	{
	}

	void OnTriggerEnter(Collider collision) {
		//Debug.Log("Hit something");
		GameObject collisionObject = collision.gameObject;
		if (collisionObject.tag == "Enemy") {
			Debug.Log ("Collided with enemy");

			EnemyStats enemyStats = collisionObject.GetComponent<EnemyStats>();
			enemyStats.mHealth -= mDamage;
			if(enemyStats.mHealth <= 0.0f)
			{
				GameObject tsg = GameObject.FindGameObjectWithTag("TheTower");
				tsg.GetComponent<TowerStats>().comboKills++;
				//enemyStats.mResources += 50;
			}
			Destroy (this);
		}

	
	}

}
