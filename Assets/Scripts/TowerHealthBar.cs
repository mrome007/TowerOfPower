using UnityEngine;
using System.Collections;

public class TowerHealthBar : MonoBehaviour {

	public int maxHealth = 20 ;
	public int curHealth = 20 ;
	public Texture2D bgImage ;
	public Material mat ;
	public float health = 100 ;
	public float healthy ;
	public float x = 0;
	public float y = 0;
	public float w ;
	public float h ;
	public float healthLength ;
	public Rect box ;

	public void ChangeHealth( int n )
	{
		curHealth += n;
		if (curHealth < 0)
			curHealth = 0 ;
		if (curHealth > maxHealth)
			curHealth = maxHealth ;

		healthLength = (272) * (curHealth / (float)maxHealth);

	}
	// Use this for initialization
	void Start ()
	{
		health = 100;
		healthLength =300;

	}
	
	// Update is called once per frame
	void Update () 
	{
		healthy = 1 - (GameObject.Find("Main Camera").GetComponent<TowerHealthBar>().health/100) ;
		if( healthy == 0 )
			healthy = (float)0.1 ;
		mat.SetFloat("_Cutoff", healthy) ;
		ChangeHealth (0);
	}

	void OnGUI()
	{
		if (Event.current.type.Equals (EventType.Repaint)) {
			box = new Rect(x,y,w,h);
			Graphics.DrawTexture(box, bgImage, mat );
		}
		UnityEngine.GUI.Box (new Rect(10,15, healthLength, 20), curHealth + "/" + maxHealth);
		UnityEngine.GUI.Box (new Rect (550, 10, 150, 20), 
		                     "Resources: " + GameObject.FindGameObjectWithTag("TheTower").GetComponent<TowerStats> ().mResources);
	}
}
