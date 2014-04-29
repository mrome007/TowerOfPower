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
	}
	
	// Update is called once per frame
	void Update () {
		if (mHealth <= 0) {
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
			mHealth--;
			Destroy (collisionObject);
			Debug.Log(mHealth);
		}
	}

}
