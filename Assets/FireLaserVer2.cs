using UnityEngine;
using System.Collections;

public class FireLaserVer2 : MonoBehaviour {

	public float mRate;
	public float mSpeed;
	// Use this for initialization
	void Start () {
		mRate = -1.0f;
		mSpeed = 10.0f;
	}
	
	// Update is called once per frame
	void Update () {
		transform.localScale = transform.localScale + new Vector3(0.0f,0.0f,mRate) * Time.deltaTime * mSpeed;
	}
}
