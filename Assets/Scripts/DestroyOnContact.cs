using UnityEngine;
using System.Collections;

public class DestroyOnContact : MonoBehaviour {

	private float mDamage = 100.0f;
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
			//Debug.Log ("Collided with enemy");
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				SpawnWaves sw = gc.GetComponent<SpawnWaves>();
				sw.numEnemiesRemaining--;
			}
			EnemyHealth enemyHealth = collisionObject.GetComponent<EnemyHealth>();
			enemyHealth.mTheEnemyHealth -= mDamage;
			if (enemyHealth.mTheEnemyHealth <= 0) {
				Destroy (collisionObject);
			}
		}
		Destroy (this);
	}

}
