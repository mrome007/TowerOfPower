using UnityEngine;
using System.Collections;

public class rotCube : MonoBehaviour {
	public Transform aimPan;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Buy_Shoot_Modes bsm = GameObject.Find ("GameController").GetComponent<Buy_Shoot_Modes> ();
		Debug.Log (Mathf.Sin(bsm.fireAngle));
		aimPan.LookAt (bsm.targetPosition);
		if (bsm.fireAngle > 0) {
						transform.eulerAngles = new Vector3 (-(Mathf.Sin (bsm.fireAngle) * 180.0f) / Mathf.PI, aimPan.eulerAngles.y, 0.0f);
				} 
		else {
			transform.eulerAngles = new Vector3 (aimPan.eulerAngles.x, aimPan.eulerAngles.y, 0.0f);
				}
	}
}
