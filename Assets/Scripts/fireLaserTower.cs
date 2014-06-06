using UnityEngine;
using System.Collections;

public class fireLaserTower : Weapons {
	public GameObject projectile;
	public float reloadTime = 4.0f;
	public Transform spawn;
	public float duration;
	public float angle;
	public float enemySlowDur;
	private Transform target;
	private float nextFireTime = 0.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{

		if(target)
		{
			//Debug.Log ("targetting");
			spawn.LookAt(target);
			spawn.eulerAngles = new Vector3(70.0f, spawn.eulerAngles.y, spawn.eulerAngles.z);
			//spawn.eulerAngles = new Vector3(spawn.eulerAngles.x, 0.0f, 0.0f);
			//spawn.eulerAngles = new Vector3(0.0f, 0.0f, spawn.eulerAngles.z);
			if(Time.time >= nextFireTime)
			{
				//Debug.Log ("FIRE");
				Fire ();

			}
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			//nextFireTime = Time.time + (reloadTime);
			target = other.gameObject.transform;
			//Debug.Log ("Enter Target");
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
		GameObject tmp = (GameObject)Instantiate (projectile, spawn.position, spawn.rotation);
		FireSlowField fsf = tmp.GetComponent<FireSlowField> ();
		fsf.mDamage = damage;
		fsf.mDuration = duration;
		fsf.mAngle = angle;
		fsf.enemySlowD = enemySlowDur;
	}
}
