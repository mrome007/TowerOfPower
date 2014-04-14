using UnityEngine;
using System.Collections;

public class MoveEnemyUsingWayPoints : MonoBehaviour {

	public Transform[] wayPoints;
	public float walkSpeed = 10.0f;
	public float turnSpeed = 1.0f;
	// Use this for initialization
	int i;
	Vector3 dir;

	public Transform rotateEnem;
	void Start () 
	{
		i = 0;
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(i < wayPoints.Length)
		{
			dir = wayPoints[i].position - transform.position;
			dir = dir.normalized;
			transform.Translate (dir * Time.deltaTime * walkSpeed);
			if((transform.position - wayPoints[i].position).sqrMagnitude <= 1.0f)
			{
				i++;
			}
		}
		else
			Destroy(gameObject);

	}
}
