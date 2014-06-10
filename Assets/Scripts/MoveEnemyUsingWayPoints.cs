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
public Transform rot;
void Start () 
{
	walkSpeed = gameObject.GetComponent<EnemyStats>().mSpeed;
	i = 0;
	if(i < wayPoints.Length)
	{
		dir = wayPoints[i].position - transform.position;
		dir = dir.normalized;
	}
}

// Update is called once per frame
void Update () 
{
	if(i < wayPoints.Length)
	{
		//dir = wayPoints[i].position - transform.position;
		//dir = dir.normalized;
		walkSpeed = gameObject.GetComponent<EnemyStats>().mSpeed;
		transform.Translate (dir * Time.deltaTime * walkSpeed);
		//transform.position = Vector3.Lerp(transform.position, wayPoints[i].position, 
		//Time.deltaTime * walkSpeed);
		if((transform.position - wayPoints[i].position).sqrMagnitude <= 1.0f)
		{
			i++;
			if(i < wayPoints.Length)
			{
				rotateEnem.LookAt(wayPoints[i].position);
				rot.eulerAngles = new Vector3(rot.eulerAngles.x, rotateEnem.eulerAngles.y, rot.eulerAngles.z);
				dir = wayPoints[i].position - transform.position;
				dir = dir.normalized;
			}
		}
			if(i < wayPoints.Length)
			{

				if((transform.position - wayPoints[i].position).sqrMagnitude > 2500.0f)
				{
					Debug.Log(transform.position - wayPoints[i].position);
					rotateEnem.LookAt(wayPoints[i].position);
					rot.eulerAngles = new Vector3(rot.eulerAngles.x, rotateEnem.eulerAngles.y, rot.eulerAngles.z);
					Debug.Log("Distance greater than 100" + (transform.position - wayPoints[i].position).sqrMagnitude);
					dir = wayPoints[i].position - transform.position;
					dir = dir.normalized;
				}
			}
	}
		else
		{
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				NewSpawnWaves sw = gc.GetComponent<NewSpawnWaves>();
				sw.numEnemiesRemaining--;
			}
			Destroy(gameObject);
		}

	}
}
