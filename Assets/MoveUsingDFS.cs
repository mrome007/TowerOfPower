using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveUsingDFS : MonoBehaviour {
	
	public Transform[] wayPoints;
	public float walkSpeed = 10.0f;
	public float turnSpeed = 1.0f;
	public GameObject mTheStart;
	// Use this for initialization
	int i;
	Vector3 dir;
	List<Vector3> lst;
	List<GameObject> visited;
	Stack<GameObject> stk;
	public Transform rotateEnem;
	void Start () 
	{
	
		i = 0;
		mTheStart = GameObject.Find ("UnitsAllowedStart");
		stk = new Stack<GameObject> ();
		lst = new List<Vector3> ();
		visited = new List<GameObject> ();
		stk.Push (mTheStart);
		while(stk.Count != 0)
		{
			GameObject tmp = stk.Pop();
			Vector3 pos = new Vector3(tmp.transform.position.x, 0.0f, tmp.transform.position.z);
			lst.Add(pos);
			if(tmp.name == "UnitsAllowedFinish")
				break;
			GridForUnits grid = tmp.GetComponent<GridForUnits>();

			visited.Add(tmp);
			for(int j= grid.nextTo.Length-1; j >= 0; j--)
			{
				GameObject next = grid.nextTo[j];
				if(visited.Contains(next) == false)
				{
					//visited.Add(next);
					//GridForUnits nextTo = next.GetComponent<GridForUnits>();
				 	stk.Push (next);
				}
			}
		}
		dir = lst[0] - transform.position;
		dir = dir.normalized;
				  
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(i < lst.Count)
		{
			transform.Translate (dir * Time.deltaTime * walkSpeed);
			//transform.position = Vector3.Lerp(transform.position, wayPoints[i].position, 
			//Time.deltaTime * walkSpeed);
			if((transform.position - lst[i]).sqrMagnitude <= 1.0f)
			{
				i++;
				if(i < lst.Count)
				{
					dir = lst[i] - transform.position;
					dir = dir.normalized;
				}
			}
		}
		else
		{
			GameObject gc = GameObject.FindGameObjectWithTag("GameController");
			if(gc)
			{
				SpawnWaves sw = gc.GetComponent<SpawnWaves>();
				sw.numEnemiesRemaining--;
			}
			Destroy(gameObject);
		}
		
	}
}

