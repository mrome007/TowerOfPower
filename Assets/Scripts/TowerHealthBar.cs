using UnityEngine;
using System.Collections;

public class TowerHealthBar : MonoBehaviour {

	public int maxHealth = 20 ;
	public int curHealth = 20 ;

	public Texture2D bgImage ;

	public float healthLength ;

	public void ChangeHealth( int n )
	{
		curHealth += n;
		if (curHealth < 0)
			curHealth = 0 ;
		if (curHealth > maxHealth)
			curHealth = maxHealth ;

		healthLength = (Screen.width / 3) * (curHealth / (float)maxHealth);

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
		//UnityEngine.GUI.BeginGroup(new Rect(Screen.width/50, Screen.height/50, healthLength, 20));
		UnityEngine.GUI.Box(new Rect(Screen.width/50,Screen.height/50, healthLength, 20), bgImage);
		UnityEngine.GUI.Box (new Rect(Screen.width/50,Screen.height/50, healthLength, 20), curHealth + "/" + maxHealth);

		UnityEngine.GUI.Box (new Rect (550, 10, 150, 20), 
		                     "Resources: " + GameObject.FindGameObjectWithTag("TheTower").GetComponent<TowerStats> ().mResources);
	}
}
