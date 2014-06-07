using UnityEngine;
using System.Collections;

public class suckUpEnemy : MonoBehaviour {
	public bool goingUp;
	//Vector3 newPos;
	GameObject theEnem;
	float sec;
	// Use this for initialization
	void Start () {
		goingUp = false;
		sec = 0.7f;
	}
	
	// Update is called once per frame
	void Update () {
		if(goingUp)
		{
			Debug.Log("XXXXXXXXXXXXXXXXXX");
			if(theEnem)
			{
				theEnem.transform.position = Vector3.Lerp(theEnem.transform.position, transform.position, Time.deltaTime);
				sec -= Time.deltaTime;
				if(sec <= 0)
				{
					goingUp = false;
					sec = 0.7f;
				}
			}
		}
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			Debug.Log("Enemy Was HIT");
			if(other.gameObject.name == "EnemyType1(Clone)" || other.gameObject.name == "EnemyTypeFast(Clone)" || 
			   other.gameObject.name == "EnemyTypeSlow(Clone)")
			{
				Destroy(other.gameObject.GetComponent<MoveEnemyUsingWayPoints>());
				theEnem = other.gameObject;
				//theEnem.transform.position = new Vector3(transform.position.x,theEnem.transform.position.y,transform.position.z);
				other.gameObject.transform.parent = transform.parent.transform;
				goingUp = true;
				sec = 0.7f;
			}
			if(other.gameObject.name == "EnemyTypeOutside(Clone)" || other.gameObject.name == "EnemyTypeFastOutside(Clone)" || 
			   other.gameObject.name == "EnemyTypeSlowOutside(Clone)")
			{
				Destroy(other.gameObject.GetComponent<MoveUsingDFS>());
				theEnem = other.gameObject;
				//theEnem.transform.position = new Vector3(transform.position.x,theEnem.transform.position.y,transform.position.z);
				other.gameObject.transform.parent = transform.parent.transform;
				goingUp = true;
				sec = 0.7f;
			}

		}
	}
}
