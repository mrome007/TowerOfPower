using UnityEngine;
using System.Collections;

public class MoveCanonBall : MonoBehaviour {

	public float canonSpeed = 20.0f;
	public float canonRange = 20.0f;
	// Use this for initialization
	private float myDist = 0;
	void Start () 
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		transform.Translate (Vector3.forward * Time.deltaTime * canonSpeed);
		myDist += Time.deltaTime * canonSpeed;
		if(myDist >= canonRange)
			Destroy(gameObject);
		
	}
}
