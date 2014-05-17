using UnityEngine;
using System.Collections;

public class fireMissile : TurretAmmoBase {
	public Transform target;
	public float missileRange = 20.0f;
	public float missileSpeed = 100.0f;
	public Transform missileRot;
	public float turnSpeed = 5.0f;
	// Use this for initialization
	private float myDist = 0.0f;
	// Use this for initialization
	public float duration = 1.2f;
	float slow = 0.5f;
	bool rise = true;
	void Start () {

	}
	
	// Update is called once per frame
	void Update ()
	{

			transform.Translate (Vector3.forward * Time.deltaTime * missileSpeed);
			duration -= Time.deltaTime;
			if(rise)
			{
				slow -= Time.deltaTime;
				if(slow <= 0)
				{
					missileSpeed -= 2;
					slow = 0.2f;
				}
			}
		//myDist += Time.deltaTime * missileSpeed;
		//if(myDist >= missileRange)
		//	Destroy(gameObject);
			if(duration <= 0)
			{
				rise = false;
				if(target)
				{
					slow -= Time.deltaTime;
					if(slow <= 0)
					{
						missileSpeed += 6;
						slow = 0.1f;
					}
					if((target.position - transform.position).magnitude > 1.0f)
					{
						missileRot.LookAt(target);
						transform.rotation = Quaternion.Lerp(transform.rotation, missileRot.rotation, 
			                                     	Time.deltaTime * turnSpeed);
					}
				}
				else
				{
					myDist += Time.deltaTime * missileSpeed;
					if(myDist >= missileRange)
						Destroy(gameObject);
				}

			}

		if(transform.position.y <= 0)
			Destroy(gameObject);
	}
	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			Destroy(gameObject);
		}
	}
}
