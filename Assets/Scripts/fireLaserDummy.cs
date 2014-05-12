using UnityEngine;
using System.Collections;

public class fireLaserDummy : MonoBehaviour {
	public float mSpeed;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate (Vector3.forward * Time.deltaTime * mSpeed);
		if(transform.position.y <= 0)
		{
			Destroy(gameObject);	
		}
	}
}
