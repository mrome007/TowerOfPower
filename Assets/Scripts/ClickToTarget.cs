using UnityEngine;
using System.Collections;

public class ClickToTarget : MonoBehaviour {
	public Vector3 targetPosition;
	private bool mouseClick = false;
	public float smooth = 5.0f;
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetKey(KeyCode.T))
		{
			if(Input.GetMouseButtonDown(0))
			{
				mouseClick = true;
				Plane playerPlane = new Plane(Vector3.up, transform.position);
				Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
				float hitDist;

				if(playerPlane.Raycast(ray, out hitDist))
				{
					Vector3 target = ray.GetPoint(hitDist);
					targetPosition = ray.GetPoint(hitDist);
					transform.rotation = Quaternion.LookRotation(target - transform.position);
				}
				Debug.Log(targetPosition);
			}
		}
		if(mouseClick)
		{
			transform.position = Vector3.Lerp (transform.position,targetPosition, Time.deltaTime*smooth);
			if((transform.position-targetPosition).sqrMagnitude == 0)
				mouseClick = false;
		}
	}
}
