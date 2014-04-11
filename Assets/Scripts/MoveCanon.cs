using UnityEngine;
using System.Collections;

public class MoveCanon : MonoBehaviour {

	public Vector3 dir;
	public float force = 500.0f;
	// Use this for initialization
	void Start () 
	{
		rigidbody.AddForce (Vector3.up * force);
		dir = dir.normalized;
	}
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		rigidbody.AddForce (dir * force);
	}
}
