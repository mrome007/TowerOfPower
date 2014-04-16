using UnityEngine;
using System.Collections;

public class FireTowersBasicAmmo : MonoBehaviour {
	private const float ACCEL_GRAVITY = -0.0075f;

	private float dist = 0.0f;

	public Vector3 dir;
	public float ammoSpeed = 500.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		float xVelocity = dir.x * Time.deltaTime * ammoSpeed;
		/** Update the y velocity independent of the ammo speed */
		float zVelocity = dir.z * Time.deltaTime * ammoSpeed;

		Vector3 translateVector = new Vector3(xVelocity, dir.y, zVelocity);
		transform.Translate (translateVector);
		dir.y += ACCEL_GRAVITY;
		dist += Time.deltaTime * ammoSpeed;
		if (gameObject) {
			float yPosition = transform.position.y;
			/** Remove when it passes the ground plane */
			if (yPosition < 0) {
				Destroy (gameObject);
			}
		}
	}
}
