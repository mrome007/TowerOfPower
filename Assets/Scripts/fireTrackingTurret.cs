using UnityEngine;
using System.Collections;

public class fireTrackingTurret : Weapons {
	public GameObject projectile;
	public float reloadTime = 3.0f;
	public float missileSpeed = 30.0f;
	public float missileTurneSpeed = 10.0f;
	public float missileRange = 35.0f;
	public float missileUpDur = 1.2f;
	private Transform target;
	public Transform[] turretsPos;
	private float nextFireTime = 0.0f;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(target)
		{
			if(Time.time >= nextFireTime)
			{
				Fire();
			}
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			target = other.gameObject.transform;
//			Debug.Log ("heyThere");
		}
		
	}

	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			target = other.gameObject.transform;
			//			Debug.Log ("heyThere");
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
		//nextMoveTime = Time.time + firePauseTime;

		for(int j = 0; j < turretsPos.Length; j++)
		{
			//int i = Random.Range(0,turretsPos.Length);
			GameObject theMissile = (GameObject)Instantiate (projectile, turretsPos [j].position, 
		                                                 projectile.transform.rotation);
			fireMissile fm =  theMissile.GetComponent<fireMissile> ();
			fm.target = target;
			fm.mTheDamage = damage;
			fm.missileSpeed = missileSpeed;
			fm.turnSpeed = missileTurneSpeed;
			fm.missileRange = missileRange;
			fm.duration = missileUpDur;
		}

	}
}
