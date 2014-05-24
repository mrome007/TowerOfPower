using UnityEngine;
using System.Collections;

public class MedicBehavior : MonoBehaviour {
	public Transform mTarget;
	public float mSpeed;
	private Vector3 mDirection;
	public GameObject medicDummy;
	private Vector3 theTarget;
	//public Transform mFlyingPan;
	// Use this for initialization
	void Start () {
		theTarget = new Vector3 (mTarget.transform.position.x, 15.0f, mTarget.transform.position.z);
		if(mTarget)
		{
			mDirection = theTarget - transform.position;
			mDirection = mDirection.normalized;
		}
		
	}
	
	// Update is called once per frame
	void Update () {
		if(transform.childCount == 1)
		{
			Instantiate(medicDummy,transform.position,Quaternion.identity);
			Destroy(gameObject);
		}
		if(mTarget)
		{
			Quaternion newRot = Quaternion.LookRotation (theTarget - transform.position, Vector3.up);
			newRot.y = 0;
			newRot.z = 0;
			transform.rotation = Quaternion.Lerp (transform.rotation, newRot, Time.deltaTime * mSpeed);
			transform.Translate(mDirection * mSpeed * Time.deltaTime);
		}
		if (gameObject.transform.position.x <= -100) {
			Destroy (gameObject);
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				NewSpawnWaves sw = gc.GetComponent<NewSpawnWaves>();
				sw.numEnemiesRemaining--;
			}
			Destroy (gameObject);
		}
	}
}
