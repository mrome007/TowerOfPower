using UnityEngine;
using System.Collections;

public class TurretFireScript : Weapons {
	public GameObject projectile;
	public float reloadTime = 0.5f;
	public float turnSpeed = 100.0f;
	public float firePauseTime = 0.1f;
	private Transform target;
	public float range;
	public Transform turretsPos;
	public Transform turretPan;
	public Transform aimPan;
	public int turretAmmoCount = 8;
	public float turretAmmoSpawnRange = 10.0f;
	private float nextFireTime = 0.0f;
	private Quaternion desiredRotation;
	//GameObject rotateAmmo;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(target)
		{
			aimPan.LookAt(target);
			aimPan.eulerAngles = new Vector3(0.0f, aimPan.eulerAngles.y - 10.0f, 0.0f);

			turretPan.rotation = Quaternion.Lerp(turretPan.rotation, aimPan.rotation,
			                                     Time.deltaTime * turnSpeed);
			if(Time.time >= nextFireTime)
			{
				Fire ();
			}
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			nextFireTime = Time.time + (reloadTime*0.5f);
			target = other.gameObject.transform;
			//Debug.Log ("Enter Target");
		}
		
	}

	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			//nextFireTime = Time.time + (reloadTime*0.5f);
			target = other.gameObject.transform;
			//Debug.Log ("New Target");
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if(other.gameObject.transform == target)
		{
			target = null;
		}
	}

	void Fire()
	{
		nextFireTime = Time.time + reloadTime;
		int i;
		for(i = 0; i < turretAmmoCount; i++)
		{
			Vector3 spawn = new Vector3(Random.Range (turretsPos.position.x - turretAmmoSpawnRange,
			                                          turretsPos.position.x + turretAmmoSpawnRange),
			                            Random.Range (turretsPos.position.y - turretAmmoSpawnRange,
			              							  	turretsPos.position.y + turretAmmoSpawnRange),
			                            turretsPos.position.z);
			GameObject theAmmo = (GameObject)Instantiate (projectile, spawn, turretsPos.rotation);
			FireTurretAmmo fta = theAmmo.GetComponent<FireTurretAmmo>();
			fta.turretAmmoRange = range;
			fta.mTheDamage = damage;
			//MoveCanonBall temp = rotateAmmo.GetComponent<MoveCanonBall>();
			//temp.transform.LookAt(target);
			//temp.transform.eulerAngles = new Vector3(0.0f, temp.transform.eulerAngles.y - 30.0f, 0.0f);
		}

	}
}
