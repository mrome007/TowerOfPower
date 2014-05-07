using UnityEngine;
using System.Collections;

public class GUI : MonoBehaviour {

	string button1Text = "BUILD TOWER" ;
	string button2Text = "WALL" ;
	string button3Text = "TURRET" ;
	string button4Text = "TESLA" ;

	string restart = "Click to Restart";

	void OnGUI () 
	{
				if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 2, Screen.height / 100 * 95, 105, 50), button1Text)) {
						GameObject mode = GameObject.FindGameObjectWithTag ("GameController");	
						if (mode.GetComponent<Buy_Shoot_Modes> ().shootMode == true) {
								mode.GetComponent<Buy_Shoot_Modes> ().shootMode = false;
								mode.GetComponent<Buy_Shoot_Modes> ().buyMode = true;
								mode.GetComponent<Buy_Shoot_Modes> ().theWeapon = 0;
								button1Text = "ARM WEAPON";
						} else if (mode.GetComponent<Buy_Shoot_Modes> ().buyMode == true) {
								mode.GetComponent<Buy_Shoot_Modes> ().buyMode = false;
								mode.GetComponent<Buy_Shoot_Modes> ().shootMode = true;
								button1Text = "BUILD DEFENSES";
						}

				}
				/*
		if (UnityEngine.GUI.Button (new Rect (Screen.width/100*13, Screen.height/100*95, 105, 50), button2Text))
		{
			GameObject mode = GameObject.FindGameObjectWithTag("GameController");
			Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes>();
			if(sel.buyMode)
				sel.theWeapon = (sel.theWeapon + 1) % sel.weapons.Length;
			
		}
*/
				GameObject mmode = GameObject.FindGameObjectWithTag ("GameController");
				Buy_Shoot_Modes sell = mmode.GetComponent<Buy_Shoot_Modes> ();
				if (sell.buyMode) 
				{
						if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 13, Screen.height / 100 * 95, 105, 50), button2Text)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 1;
						}
						if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 24, Screen.height / 100 * 95, 105, 50), button3Text)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 0;
						}
						if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 35, Screen.height / 100 * 95, 105, 50), button4Text)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 2;
			}
		}
		
		GameObject md = GameObject.FindGameObjectWithTag ("GameController");
				Buy_Shoot_Modes bsm = md.GetComponent<Buy_Shoot_Modes> ();
				if (bsm.gameover) {
						UnityEngine.GUI.Box (new Rect (250, 150, 200, 20), "Survived " +
								(md.GetComponent<SpawnWaves> ().waveNo - 1)
								+ " Waves");
						if (UnityEngine.GUI.Button (new Rect (250, 200, 200, 50), restart))
								Application.LoadLevel (Application.loadedLevel);
		
				}
		}

	/*
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
	*/
}
