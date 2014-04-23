using UnityEngine;
using System.Collections;

public class FireTowersBasicAmmo : MonoBehaviour {
	private const float ACCEL_GRAVITY = -0.02f;

	public Vector3 dir;
	public float mAmmoSpeed;
	public float mAngle;

	// Use this for initialization
	void Start () {
		mAmmoSpeed = 100;
		dir.y += Mathf.Sin(mAngle);
		dir = dir.normalized;
	}
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		float xVelocity = dir.x * Time.deltaTime * mAmmoSpeed;
		float yVelocity = dir.y * Time.deltaTime * mAmmoSpeed;
		float zVelocity = dir.z * Time.deltaTime * mAmmoSpeed;

		Vector3 translateVector = new Vector3(xVelocity, yVelocity, zVelocity);
		transform.Translate (translateVector);
		dir.y += ACCEL_GRAVITY;
		if (gameObject) {
			float yPosition = transform.position.y;
			/** Remove when it passes the ground plane */
			if (yPosition < 0) {
				Destroy (gameObject);
			}
		}
	}
}
