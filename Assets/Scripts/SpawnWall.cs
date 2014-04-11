using UnityEngine;
using System.Collections;

public class SpawnWall : MonoBehaviour {

	//public Transform wallPos;
	public GameObject wallIt;
	Vector3 targetPosition;
	//bool whichWall = true;
	// Use this for initialization
	void Start ()
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.E))
		{
			if(Input.GetMouseButtonDown(0))
			{
				Plane playerPlane = new Plane(Vector3.up, transform.position);
				Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				
				float hitdist;
				if(playerPlane.Raycast(ray, out hitdist))
				{
					targetPosition = ray.GetPoint(hitdist);
				}
				Instantiate(wallIt, targetPosition, Quaternion.identity);
			}
		}
	}
}
