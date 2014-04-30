using UnityEngine;
using System.Collections;

public class TowerHealthBar : MonoBehaviour {

	public int maxHealth = 20 ;
	public int curHealth = 20 ;

	//public Texture2D bgImage ;

	public float healthLength ;

	public void ChangeHealth( int n )
	{
		curHealth += n;
		if (curHealth < 0)
			curHealth = 0 ;
		if (curHealth > maxHealth)
			curHealth = maxHealth ;

		healthLength = (Screen.width / 2) * (curHealth / (float)maxHealth);

	}
	// Use this for initialization
	void Start ()
	{
		healthLength = Screen.width / 2;
	}
	
	// Update is called once per frame
	void Update () 
	{
		ChangeHealth (0);
	}

	void OnGUI()
	{
		UnityEngine.GUI.Box (new Rect(10,10, healthLength, 20), curHealth + "/" + maxHealth);
		UnityEngine.GUI.Box (new Rect (550, 10, 150, 20), 
		                     "Resources: " + GameObject.FindGameObjectWithTag("TheTower").GetComponent<TowerStats> ().mResources);
	}
}
