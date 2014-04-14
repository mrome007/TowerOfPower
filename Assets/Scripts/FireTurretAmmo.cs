using UnityEngine;
using System.Collections;

public class FireTurretAmmo : MonoBehaviour {

	public float turretAmmoSpeed = 20.0f;
	public float turretAmmoRange = 20.0f;
	// Use this for initialization
	float distance = 0.0f;
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		//transform.Rotate (new Vector3 (Random.Range(-15,15), Random.Range(-30,30), Random.Range(-45,45))
		  //                	* Time.deltaTime);
		//transform.Translate (Vector3.forward * Time.deltaTime * turretAmmoSpeed, Space.World);
		transform.Translate (Vector3.forward * Time.deltaTime * turretAmmoSpeed);
		distance += Time.deltaTime * turretAmmoSpeed;
		if(distance >= turretAmmoRange)
			Destroy(gameObject);
	}
}
