using UnityEngine;
using System.Collections;

public class TowerStats : MonoBehaviour {

	private const int MAX_HEALTH = 20;

	public int mHealth;
	public int mResources;
	public int mScore;

	public float mFireRate;
	public float mLastFired;

	// Use this for initialization
	void Start () {
		mHealth = MAX_HEALTH;
		mFireRate = 0.5f;
		mLastFired = 0.0f;
		mResources = 800;
		//Debug.Log (mResources);
	}
	
	// Update is called once per frame
	void Update () {
		if (mHealth <= 0) {
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			Buy_Shoot_Modes bsm = gc.GetComponent<Buy_Shoot_Modes>();
			bsm.gameover = true;
			GameObject[] towerPieces = GameObject.FindGameObjectsWithTag("TowerPiece");
			for (int i = 0; i < towerPieces.Length; ++i) {
				GameObject towerPiece = towerPieces[i];
				Vector3 piecePosition = towerPiece.transform.position;
				float xPos = towerPiece.transform.position.z;
				float yPos = 5;
				float zPos = towerPiece.transform.position.z;
				Vector3 translateVector = new Vector3(xPos, yPos, zPos);
				if (zPos > 0) {
					transform.RotateAround(piecePosition, translateVector, -0.5f);
				} else {
					transform.RotateAround(piecePosition, translateVector, 0.5f);
				}
				translateVector = translateVector.normalized;
				towerPiece.transform.Translate(translateVector);
			}
		}
	}

	void OnTriggerEnter(Collider collision) {
		GameObject collisionObject = collision.gameObject;
		if (collisionObject.CompareTag("Enemy")) {
			//change the tower hp
			GameObject healthGUI = GameObject.FindGameObjectWithTag("MainCamera");
			healthGUI.GetComponent<TowerHealthBar>().health -= 5;
			healthGUI.GetComponent<TowerHealthBar>().ChangeHealth(-1);
			mHealth--;
			Destroy (collisionObject);
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			NewSpawnWaves sw = gc.GetComponent<NewSpawnWaves>();
			sw.numEnemiesRemaining--;
			Debug.Log(mHealth);
		}
	}

}
