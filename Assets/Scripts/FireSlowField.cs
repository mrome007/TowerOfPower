using UnityEngine;
using System.Collections;

public class FireSlowField : MonoBehaviour {
	public Transform aimRot;
	public float mSpeed;
	public float mDamage;
	public float mDuration;
	public float mAngle;
	public float enemySlowD;
	// Use this for initialization
	void Start () {
		//renderer.material.color.a = 0.5f;
	}
	
	// Update is called once per frame
	void Update () {
		aimRot.eulerAngles = new Vector3 (mAngle, transform.eulerAngles.y, transform.eulerAngles.z);
		transform.rotation = Quaternion.Lerp (transform.rotation, aimRot.rotation, Time.deltaTime*mSpeed);
		//if (transform.rotation == aimRot.rotation)
		Destroy (gameObject,mDuration);
	}
}

