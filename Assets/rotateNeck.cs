using UnityEngine;
using System.Collections;

public class rotateNeck : MonoBehaviour {
	public float mSpeed;
	public GameObject bossDummy;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate (new Vector3 (0.0f, 5.0f, 0.0f) * Time.deltaTime * mSpeed);
		if (transform.childCount == 0)
		{
			Instantiate(bossDummy, transform.position, Quaternion.identity);
			Destroy (transform.parent.gameObject);
		}
	}
}
