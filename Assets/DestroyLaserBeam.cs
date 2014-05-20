using UnityEngine;
using System.Collections;

public class DestroyLaserBeam : TowerAmmoStats {
	//public float mDamage;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		//Destroy (gameObject, 1.5f);
	}

	void OnTriggerEnter(Collider collision)
	{
		if(collision.gameObject.tag == "Enemy")
		{
			Debug.Log("hello there");
			EnemyStats enemyStats = collision.gameObject.GetComponent<EnemyStats>();
			enemyStats.mHealth -= mDamage;
			if(enemyStats.mHealth <= 0.0f)
				enemyStats.mResources += 50;
		}
		if (collision.gameObject.tag == "Ground" || collision.gameObject.tag == "Taken"
		    || collision.gameObject.tag == "NotTaken")
			Destroy(transform.parent.gameObject,0.5f);
	}
	
}
