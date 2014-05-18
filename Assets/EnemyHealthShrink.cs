using UnityEngine;
using System.Collections;

public class EnemyHealthShrink : MonoBehaviour {
	public float mHealth;
	private float shrinkRate;
	private GameObject theEnemy;
	private float keepTrackShrink;
	// Use this for initialization
	void Start () {
		theEnemy = transform.parent.parent.gameObject;
		mHealth = theEnemy.GetComponent<EnemyStats> ().mHealth;
		shrinkRate = theEnemy.GetComponent<EnemyStats> ().mHealth / mHealth;
		keepTrackShrink = shrinkRate;
		//Debug.Log (mHealth);
		
	}
	
	// Update is called once per frame
	void Update () {
		theEnemy = transform.parent.parent.gameObject;
		shrinkRate = theEnemy.GetComponent<EnemyStats> ().mHealth / mHealth;
		//Debug.Log (shrinkRate);
		if(shrinkRate < keepTrackShrink)
		{
			transform.localScale = new Vector3 (shrinkRate, transform.localScale.y,
		       	                            transform.localScale.z);
			keepTrackShrink = shrinkRate;

		}

	}
}
