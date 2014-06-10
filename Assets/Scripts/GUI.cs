using UnityEngine;
using System.Collections;

public class GUI : MonoBehaviour {

	string button1Text = "BUILD MODE" ;
	string button2Text = "WALL" ;
	string button3Text = "TURRET" ;
	string button4Text = "SLOW" ;
	string button5Text = "TRACKING MISSILE";
	
	string restart = "Click to Restart";
	string mainmenu = "Quit to Menu";

	private int whichinfo = 0;
	private string damage ;
	private string theinfo ;
	public Font normal ;
	public Font italic ;
	public Font bold ;

	public GUIStyle customGUI;
	public bool hardcore = false;

	//CUSTOM TEXT EDITOR STUFF
	int HexStringToInt( string hexString ) {
		int value = 0;
		int digitValue = 1;
		hexString = hexString.ToUpper();
		char[] hexDigits = hexString.ToCharArray(0, hexString.Length);
		for ( int i = hexString.Length - 1; i >= 0; i-- ) {
			int digit = 0;

			if ( hexDigits[i] >= '0' && hexDigits[i] <= '9' ) {
				digit = hexDigits[i] - '0';
			} 
			else if ( hexDigits[i] >= 'A' && hexDigits[i] <= 'F' ) {
				digit = hexDigits[i] - 'A' + 10;                
			} 
			else {
				// Not a hex string
				return -1;
			}

			value += digit * digitValue;
			digitValue *= 16;
		}
		return value;
	}
	
	
	
	// Recognized color string sequences:
	// #aabbccdd - Change current color to the one specified by the hex string
	//             red green blue alpha
	// #!        - Revert back to the original color that was used before this function call
	// #n        - normal font
	// #x        - bold font
	// #i        - italic font
	public void FancyLabel( Rect rect, string text, Font normalFont, Font boldFont, Font italicFont, TextAlignment alignment ) {
		int     i1 = 0, i2 = 0;
		bool    done = false;
		bool    newLine = false;
		Color   originalColor = UnityEngine.GUI.contentColor;
		Color   textColor = new Color( originalColor.r, originalColor.g, originalColor.b, originalColor.a );

		bool    leftSpace = false, rightSpace = false, topSpace = false, bottomSpace = false;
		Font    defaultFont = UnityEngine.GUI.skin.font;
		Font    newFont = null;
		GUIStyle fontStyle = new GUIStyle();
		// Start with normal font
		if ( normalFont != null ) {
			fontStyle.font = normalFont;
		} 
		else {
			fontStyle.font = defaultFont;           
		}
		// NOTE: Lowering this padding reduces the line spacing
		// May need to adjust per font
		fontStyle.padding.bottom = -3;
		GUILayout.BeginArea( rect );
		GUILayout.BeginVertical( GUILayout.ExpandHeight( true ), GUILayout.Width( rect.height ), GUILayout.MinWidth( rect.height ) );
		GUILayout.BeginHorizontal( GUILayout.ExpandWidth( true ), GUILayout.Width( rect.width ), GUILayout.MinWidth( rect.width ) );
		
		// Insert flexible space on the left if Center or Right aligned
		if ( alignment == TextAlignment.Right || alignment == TextAlignment.Center) {
			GUILayout.FlexibleSpace();
		}

		while ( !done ) {
			int skipChars = 0;
			int firstEscape, firstDoubleEscape, firstNewline;
			firstEscape = text.IndexOf("#", i2);
			firstNewline = text.IndexOf("\n", i2);
			if ( firstEscape != -1 && ( firstNewline == -1 || firstEscape < firstNewline ) ) {
				i1 = firstEscape;
			} 
			else {
				i1 = firstNewline;
			}
			// We're at the end, set the index to the end of the
			// string and signal an end
			if ( i1 == -1 ) {
				i1 = text.Length - 1;
				done = true;
			}

			fontStyle.normal.textColor = textColor;
			
			if ( newFont != null ) {
				fontStyle.font = newFont;
				newFont = null;
			}

			// If the next character is # then we have a ## sequence
			// We want to point one of the # so advance the index by
			// one to include the first #
			if ( !done ) {
				if ( text.Substring( i1, 1 ) == "#" ) {
					if ( (text.Length - i1) >= 2 && text.Substring(i1 + 1, 1) == "#" ) {
						skipChars = 2;
					}
					
					// Revert to original color sequence
					else if (  (text.Length - i1) >= 2 && text.Substring(i1 + 1, 1) == "!" ) {
						textColor = new Color( originalColor.r, originalColor.g, originalColor.b, originalColor.a );
						i1--;
						skipChars = 3;
					}
					
					// Set normal font
					else if (  (text.Length - i1) >= 2 && text.Substring(i1 + 1, 1) == "n" ) {
						if ( normalFont != null ) {
							newFont = normalFont;
						} 
						else {
							newFont = defaultFont;
						}
						i1--;
						skipChars = 3;
					}
				
					// Set bold font
					else if (  (text.Length - i1) >= 2 && text.Substring(i1 + 1, 1) == "x" ) {
						if ( boldFont != null ) {	
							newFont = boldFont;
						}
						else {
							newFont = defaultFont;
						}

						i1--;
						skipChars = 3;
					}
					
					// Set italic font
					else if (  (text.Length - i1) >= 2 && text.Substring(i1 + 1, 1) == "i" ) {
						if ( italicFont != null ) {
							newFont = italicFont;
						} 
						else {
							newFont = defaultFont;
						}
						
						i1--;
						skipChars = 3;
					}
					
					//  New color sequence
					else if ( (text.Length - i1) >= 10 ) { 
						string rText = text.Substring( i1 + 1, 2 );			
						string gText = text.Substring( i1 + 3, 2 );					
						string bText = text.Substring( i1 + 5, 2 );						
						string aText = text.Substring( i1 + 7, 2 );												
						
						float r = HexStringToInt( rText ) / 255.0f;						
						float g = HexStringToInt( gText ) / 255.0f;						
						float b = HexStringToInt( bText ) / 255.0f;						
						float a = HexStringToInt( aText ) / 255.0f;
																
						if ( r < 0 || g < 0 || b < 0 || a < 0 ) {							
							Debug.Log("Invalid color sequence");							
							return;							
						}
																		
						textColor = new Color( r, g, b, a );						
						skipChars = 10;						
						// Move back one character so that we don't print the #
						
						i1--;
						
					} 
					else {						
						Debug.Log("Invalid # escape sequence");						
						return;						
					}
					
				} 
				else if ( (text.Length - i1) >= 1 && text.Substring( i1, 1 ) == "\n" ) {					
					newLine = true;					
					i1--;					
					skipChars = 2;					
				} 
				else {					
					Debug.Log("Invalid escape sequence");					
					return;					
				}				
			}									
			string textPiece = text.Substring( i2, i1 - i2 + 1 );           			
			GUILayout.Label( textPiece, fontStyle );						
			
			// Unity seems to cut off the trailing spaces in the label, he have			
			// to add them manually here			
			// Figure out how many trailing spaces there are
			
			int spaces = textPiece.Length - textPiece.TrimEnd(' ').Length;						
			
			// NOTE: Add the proper amount of gap for trailing spaces.			
			// the length of space is a questimate here,			
			// may need to be adjusted for different fonts
			
			GUILayout.Space( spaces * 5.0f );
									
			if ( newLine ) {				
				// Create a new line by ending the horizontal layout				
				if ( alignment == TextAlignment.Left || alignment == TextAlignment.Center) {					
					GUILayout.FlexibleSpace();					
				}				
				GUILayout.EndHorizontal();				
				GUILayout.BeginHorizontal( GUILayout.ExpandWidth( true ), GUILayout.Width( rect.width ), GUILayout.MinWidth( rect.width ) );          
				
				if ( alignment == TextAlignment.Right || alignment == TextAlignment.Center) {					
					GUILayout.FlexibleSpace();					
				}				
				newLine = false;				
			}						
			
			// Store the last index			
			i2 = i1 + skipChars;			
		}
		
		if ( alignment == TextAlignment.Left || alignment == TextAlignment.Center) {			
			GUILayout.FlexibleSpace();			
		}

		GUILayout.EndHorizontal();		
		GUILayout.FlexibleSpace();		
		GUILayout.EndVertical();		
		GUILayout.EndArea();        
		
	}


	void OnGUI () 
	{
				//button 1
		if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 2, Screen.height / 100 * 59, Screen.width/100*10, Screen.height/100*10), button1Text ,customGUI)) {
						GameObject mode = GameObject.FindGameObjectWithTag ("GameController");	
						if (mode.GetComponent<Buy_Shoot_Modes> ().shootMode == true) {
								mode.GetComponent<Buy_Shoot_Modes> ().shootMode = false;
								mode.GetComponent<Buy_Shoot_Modes> ().buyMode = true;
								mode.GetComponent<Buy_Shoot_Modes> ().theWeapon = 1;
								whichinfo = 1 ;
								button1Text = "ATTACK MODE";
						} else if (mode.GetComponent<Buy_Shoot_Modes> ().buyMode == true) {
								mode.GetComponent<Buy_Shoot_Modes> ().buyMode = false;
								mode.GetComponent<Buy_Shoot_Modes> ().shootMode = true;
								button1Text = "BUILD MODE";
								whichinfo = 2 ;
						}

				}
				//SECONDARY BUTTONS
				GameObject mmode = GameObject.FindGameObjectWithTag ("GameController");
				Buy_Shoot_Modes sell = mmode.GetComponent<Buy_Shoot_Modes> ();
				if (sell.buyMode) {
			if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 2, Screen.height / 100 * (float)98.5, Screen.width/100*10, Screen.height/100*5), button2Text ,customGUI)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 1;
								whichinfo = 3 ;
						}
			if(!hardcore){
				if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * (float)13.5, Screen.height / 100 * (float)98.5, Screen.width/100*10, Screen.height/100*5), button3Text ,customGUI)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 0;
								whichinfo = 1 ;
						}
				if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * (float)25, Screen.height / 100 * (float)98.5, Screen.width/100*10, Screen.height/100*5), button4Text ,customGUI)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 2;
								whichinfo = 4 ;
						}		
				if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * (float)36.3, Screen.height / 100 * (float)98.5, Screen.width/100*(float)12, Screen.height/100*5), button5Text ,customGUI)) {
								GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
								Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
								if (sel.buyMode)
										sel.theWeapon = 3;
								whichinfo = 5 ;
						}		
			
			}	} else if (sell.shootMode) {
					/*if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 13, Screen.height / 100 * 95, 105, 50), "grenade")) {
						GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
						Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
						if (sel.shootMode)
							sel.theTowerWeapon = 1;
					}*/
			//UPGRADE BUTTON
			if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * (float)1.5, Screen.height / 100 * 99, Screen.width/100*20, Screen.height/100*5), "UPGRADE TOWER" + "\n Cost: " 
			                            + GameObject.FindGameObjectWithTag ("TheTower").GetComponent<TowerStats>().upgradeCost ,customGUI)) {
						GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
						Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
						GameObject theT = GameObject.FindGameObjectWithTag("TheTower");
						
						TowerStats ts = theT.GetComponent<TowerStats>();
						int resources = ts.mResources; 
						int cost = ts.upgradeCost;
						if((resources - cost) >= 0)
						{		
							ts.mResources -= cost;
							sel.upgradeTowerMult += 0.5f;
					theT.GetComponent<TowerStats>().upgradeCost += theT.GetComponent<TowerStats>().upgradeCost;
						}
					}
		
					/*if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 * 35, Screen.height / 100 * 95, 105, 50), "laser")) {
						GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
						Buy_Shoot_Modes sel = mode.GetComponent<Buy_Shoot_Modes> ();
						if (sel.shootMode)
							sel.theTowerWeapon = 2;
					}*/	
				}
		//GAME OVER BUTTON
		GameObject md = GameObject.FindGameObjectWithTag ("GameController");
		Buy_Shoot_Modes bsm = md.GetComponent<Buy_Shoot_Modes> ();
		//towerinfo
		GameObject tw = GameObject.FindGameObjectWithTag ("TheTower");
		if(bsm.gameover)
		{
			UnityEngine.GUI.Box (new Rect(Screen.width/100*45,Screen.height/100*30, Screen.width/100*20, Screen.height/100*20), "Survived  "+
			                     (md.GetComponent<NewSpawnWaves>().waveCompleted + " Waves" + "\n\n" + "Score: " + tw.GetComponent<TowerStats>().mScore)
			                     	, customGUI);
			if(UnityEngine.GUI.Button(new Rect(Screen.width/100*(float)47.5,Screen.height/100*54,Screen.width/100*15,Screen.height/100*5), restart, customGUI))
				Application.LoadLevel(Application.loadedLevel);
			if(UnityEngine.GUI.Button(new Rect(Screen.width/100*(float)50.5,Screen.height/100*64,Screen.width/100*10,Screen.height/100*5), mainmenu, customGUI))
				Application.LoadLevel("StartMenu");
		}
		//WAVE ADVANCE BUTTON
		if (UnityEngine.GUI.Button (new Rect (Screen.width / 100 *(float)90.5, Screen.height / 100 * 42, Screen.width/100*12, Screen.height/100*5), "Advance Wave" ,customGUI)) 
		{
			GameObject mode = GameObject.FindGameObjectWithTag ("GameController");
			NewSpawnWaves nsw = mode.GetComponent<NewSpawnWaves>();
			nsw.advanceTheWave = true;
		}
		//INFO BOX
		UnityEngine.GUI.Box (new Rect(Screen.width/100 * (float)0.5,Screen.height/100*72, Screen.width/100*30, Screen.height/100*22),"" ,customGUI);
		switch (whichinfo) {
		case 0: //default tower stats
			theinfo = "" + "Tower Stats" + "\n\n"
				+ "Click and hold to aim." + "\n" + "Drag to change distance." +"\n" +"Release to fire." + "\n" ;
			//UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), ""  ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, Screen.width/100*20, Screen.height/100*10), theinfo, normal, bold, italic, TextAlignment.Left);

			//UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), "Info: Tower \n Damage: 100 \n Attack Speed: 0.5 \n Type: Normal" );
			break;
		case 1: //Buy mode default turret.
			theinfo = ""  + "Build Mode" +"#x" + ":          " + "#n"  + "Turret" + "\n\n"
					+ "Type" + "#x"+ ":                   " + "#n" + "Shotgun" +"\n"
					+ "Damage" + "#x" + ":                      " + "#n" + "5" + "#x" +"/" + "#n" + "#FFDDDDFF" + "5" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "5" + "\n" + "#!"
					+ "Attack Speed" + "#x" + ": " + "#n" + "0.6" + "#x" +"/" + "#n" + "#FFDDDDFF" + "0.3" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "0.1" + "\n" + "#!"
					+ "Range" +"#x" + ":                    " + "#n" + "2" + "#x" +"/" + "#n" + "#FFDDDDFF" + "25" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "30" + "\n" + "#!" 
					+ "Cost" + "#x" + ":             " + "#n" + "400" + "#x" +"/" + "#n" + "#FFDDDDFF" + "600" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "800" + "\n" ;
			//UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100),"" ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Left);
			break;
		case 2:	//Shoot mode default cannon
			theinfo = ""  + "\n\n\n"+"       Shoot Mode" + "#x" + ": " + "#n"  + "Cannon" + "\n\n"
					 ;
		//	UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), ""  ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Left);
			break;
		case 3:	//Buy mode wall
			theinfo = ""  + "Build Mode"+"#x" + ":               " + "#n"  + "Wall" + "\n\n\n"
					+ "Type" + "#x" + ":           " + "#n"  + "Unit Blocker" + "\n"
					+ "Duration" + "#x" + ":                    " + "#n" + "3" + "#x" +"/" + "#n" + "#FFDDDDFF" + "5" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "9" + "\n" + "#!" 
					+ "Cost" + "#x" + ":                      " + "#n" + "10" + "#x" +"/" + "#n" + "#FFDDDDFF" + "50" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "90" + "\n" ;
			//UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100),"" ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Left);
			break;
		case 4:	//Buy mode slow
			theinfo = ""  + "Build Mode" +"#x" + ":  " + "#n"  + "Slow Tower" + "\n\n"
				+ "Type" + "#x" + ":              " + "#n"  + "Freeze Ray" + "\n"
					+ "Damage" + "#x" + ":                        " + "#n" + "1" +  "#x"+"/"+ "#n" + "#FFDDDDFF" + "3" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "5" + "\n" + "#!"
					+ "Attack Speed" + "#x" + ":          " + "#n" + "7" + "#x"+"/"+ "#n" + "#FFDDDDFF" + "5" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "3" + "\n" + "#!"
					+ "Range" + "#x" + ":                   " + "#n" + "10" + "#x" +"/" + "#n" + "#FFDDDDFF" + "20" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "30" + "\n" + "#!"
					+ "Cost" + "#x" + ":             " + "#n" + "300" + "#x" +"/" + "#n" + "#FFDDDDFF" + "550" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "700" + "\n" ;
		//	UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100),"" ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Left);
			break;
		case 5: //Buy mode track
			theinfo = ""  + "Build Mode" +"#x" + ":      " + "#n"  + "Launcher" + "\n\n"
				+ "Type" + "#x" + ":       " + "#n"  + "Homing Missiles" + "\n"
					+ "Damage" + "#x" + ":                 " + "#n" + "10" + "#x" +"/" + "#n" + "#FFDDDDFF" + "20" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "40" + "\n" + "#!"
					+ "Attack Speed" + "#x" + ":          " + "#n" + "6" + "#x" +"/" + "#n" + "#FFDDDDFF" + "4" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "3" + "\n" + "#!"
					+ "Range" + "#x" + ":                  " + "#n" + "35" + "#x" +"/" + "#n" + "#FFDDDDFF" + "40" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "50" + "\n" + "#!"
					+ "Cost" + "#x" + ":              " + "#n" + "500" + "#x" +"/" + "#n" + "#FFDDDDFF" + "900" + "#!" + "#x" +"/" + "#n" + "#FF6666FF" + "1100" + "\n" ;
		//	UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100),"" ,customGUI);
			//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Left);

			break;
		case 6:
			break;
			
		}
		FancyLabel( new Rect(Screen.width/100 * (float)2.5,Screen.height/100*74 , Screen.width/100*30, Screen.height/100*20), theinfo, normal, bold, italic, TextAlignment.Left);
		//FancyLabel( new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100), theinfo, normal, bold, italic, TextAlignment.Center);
		//UnityEngine.GUI.Box (new Rect(Screen.width/100 * 2,Screen.height/100*75, 200, 100),"");
	}


}
