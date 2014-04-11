using UnityEngine;
using System.Collections;

public class DestroyOnContactWithTower : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.tag == "DestroyTower")
			Destroy(gameObject);

	}
}
