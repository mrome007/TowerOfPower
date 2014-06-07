using UnityEngine;
using System.Collections;

public class upgradeCannons : MonoBehaviour {
	public GameObject[] upgrades;
	public GameObject[] dummies;
	public bool timeToUpgrade;
	public int count;
	// Use this for initialization
	void Start () {
		timeToUpgrade = false;
		count = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if(timeToUpgrade)
		{
			transform.eulerAngles = new Vector3(0.0f,90.0f,0.0f);
			timeToUpgrade = false;
			if(count < upgrades.Length)
			{
				foreach(Transform child in gameObject.transform)
				{
					child.transform.rotation = Quaternion.identity;
					if(child.gameObject.tag == "TowerPiece")
					{
						Destroy(child.gameObject);
					}
				}
				Instantiate(dummies[count],new Vector3(-90.0f,17.5f,5.0f),Quaternion.identity);
			}

			GameObject can = (GameObject)Instantiate(upgrades[count],new Vector3(-90.0f,17.5f,5.0f),Quaternion.identity);
			can.transform.parent = gameObject.transform;
			//transform.rotation = Quaternion.identity;
			count++;
		}
	}


}
