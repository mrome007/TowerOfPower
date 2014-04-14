using UnityEngine;
using System.Collections;

public class FireTowersBasicAmmo : MonoBehaviour {
	public Vector3 dir;
	public float ammoSpeed = 50.0f;
	public float range = 500.0f;
	float dist = 0.0f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		transform.Translate (dir * Time.deltaTime * ammoSpeed);
		dist += Time.deltaTime * ammoSpeed;
		if(gameObject)
		{
			if (dist >= range)
				Destroy (gameObject);
		}
	}
}
