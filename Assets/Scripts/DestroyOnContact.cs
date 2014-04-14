using UnityEngine;
using System.Collections;

public class DestroyOnContact : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update ()
	{
	
	}

	void OnTriggerEnter(Collider other)
	{
		Debug.Log (other.gameObject.tag);
		if(other.gameObject.tag == "Enemy" || other.gameObject.tag == "Ground")
			Destroy (gameObject);
	}
}
