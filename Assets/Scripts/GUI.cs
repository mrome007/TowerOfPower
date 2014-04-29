using UnityEngine;
using System.Collections;

public class GUI : MonoBehaviour {

	string button1Text = "BUILD TOWER" ;
	string button2Text = "BUILD WALL" ;

	void OnGUI () 
	{
		if (UnityEngine.GUI.Button (new Rect (10, 600, 105, 50), button1Text))
		{
			GameObject mode = GameObject.FindGameObjectWithTag("GameController");	
			if( mode.GetComponent<Buy_Shoot_Modes>().shootMode == true)
			{
				mode.GetComponent<Buy_Shoot_Modes>().shootMode = false ;
				mode.GetComponent<Buy_Shoot_Modes>().buyMode = true ;
				button1Text = "ARM WEAPON" ;
			}
			else if( mode.GetComponent<Buy_Shoot_Modes>().buyMode == true)
			{
				mode.GetComponent<Buy_Shoot_Modes>().buyMode = false ;
				mode.GetComponent<Buy_Shoot_Modes>().shootMode = true ;
				button1Text = "BUILD TOWER" ;
			}
		}
		if (UnityEngine.GUI.Button (new Rect (125, 600, 105, 50), button2Text))
		{
			GameObject mode = GameObject.FindGameObjectWithTag("GameController");	
			if( mode.GetComponent<Buy_Shoot_Modes>().shootMode == true)
			{
				mode.GetComponent<Buy_Shoot_Modes>().shootMode = false ;
				mode.GetComponent<Buy_Shoot_Modes>().buyMode = true ;
				button2Text = "ARM WEAPON" ;
			}
			else if( mode.GetComponent<Buy_Shoot_Modes>().buyMode == true)
			{
				mode.GetComponent<Buy_Shoot_Modes>().buyMode = false ;
				mode.GetComponent<Buy_Shoot_Modes>().shootMode = true ;
				button2Text = "BUILD WALL" ;
			}
			
		}
		if (UnityEngine.GUI.Button (new Rect (240, 600, 105, 50), "MENU"))
		{
			
		}
	}
}
