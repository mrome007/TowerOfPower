using UnityEngine;
using System.Collections;

public class MedicCure : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			EnemyStats es = other.gameObject.GetComponent<EnemyStats>();
			if(es && es.mHealth < es.maxHealth && es.mHealth > 0)
			{
				Debug.Log("Wat");
				es.mHealth += 5.0f;
			}
		}
	}

	void OnTriggerStay(Collider other)
	{
		if(other.gameObject.tag == "Enemy")
		{
			EnemyStats es = other.gameObject.GetComponent<EnemyStats>();
			if(es && es.mHealth < es.maxHealth && es.mHealth > 0)
			{
				es.mHealth += 5.0f;
			}
		}
	}
}
