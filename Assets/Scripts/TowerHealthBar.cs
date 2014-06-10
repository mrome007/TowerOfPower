using UnityEngine;
using System.Collections;

public class TowerHealthBar : MonoBehaviour {

	public int maxHealth = 20 ;
	public int curHealth = 20 ;
	public Texture2D HBImage ;
	public Texture2D HBbackground ;
	public Material mat ;
	public float health = 100 ;
	public float healthy = 1;
	public float x = 0;
	public float y = 0;
	public float w = 50;
	public float h = Screen.width/3;
	public float healthLength ;
	public Rect box ;
	public Rect boxback ;
	private string numEnemies;
	private string waveNo;
	private string stats1 ;
	private string stats2 ;
	private string healthstat ;
	public Font normal ;
	public Font italic ;
	public Font bold ;

	public GUIStyle customGUI;

	public void ChangeHealth( int n )
	{
		curHealth += n;
		if (curHealth < 0)
			curHealth = 0 ;
		if (curHealth > maxHealth)
			curHealth = maxHealth ;

		healthLength = (272) * (curHealth / (float)maxHealth);

	}
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

	// Use this for initialization
	void Start ()
	{
		health = 100;
		healthLength =300;
		//mat.SetFloat("_Cutoff", (float)0.1) ;
	}
	
	// Update is called once per frame
	void Update () 
	{
		healthy = 1 - (GameObject.Find("Main Camera").GetComponent<TowerHealthBar>().health/100) ;
		if( healthy == 0 )
			healthy = (float)0.04 ;
		mat.SetFloat("_Cutoff", healthy) ;
		ChangeHealth (0);

		waveNo = "" + GameObject.FindGameObjectWithTag ("GameController").GetComponent<NewSpawnWaves> ().waveNo;
		numEnemies = "" + GameObject.FindGameObjectWithTag ("GameController").GetComponent<NewSpawnWaves> ().numEnemiesRemaining;
	}

	void OnGUI()
	{
		if (Event.current.type.Equals (EventType.Repaint)) {
			boxback = new Rect(Screen.width/100*(float)2.35,Screen.height/100*(float)3,Screen.width/100*(float)5.75,Screen.height/100*43);
			Graphics.DrawTexture(boxback, HBbackground );
			//box = new Rect(x+5,y,75,Screen.height/2);
			box = new Rect( Screen.width/100*(float)2.65, Screen.height/100*(float).7, Screen.width/100*5, Screen.height/100*45);
			Graphics.DrawTexture(box, HBImage, mat );
		}
		GameObject tsg = GameObject.FindGameObjectWithTag ("TheTower");
		TowerStats ts = tsg.GetComponent<TowerStats> ();
		//health
		UnityEngine.GUI.Box (new Rect (Screen.width/100*(float)2, Screen.height /100*48, Screen.width / 100 * 7, Screen.height / 100 * 2), "", customGUI);
		if (curHealth >= 15) {
			healthstat = "HP" + "#x" + ": " + "#n" + curHealth ;
						UnityEngine.GUI.Box (new Rect (Screen.width/100*(float)2, Screen.height /100*48, Screen.width / 100 * 7, Screen.height / 100 * 2), "", customGUI);
						FancyLabel (new Rect (Screen.width / 100 * (float)2.5, Screen.height / 100 * 48, Screen.width / 100 * 8, Screen.height / 100 * 3), healthstat, normal, bold, italic, TextAlignment.Left);
				}
		else if (curHealth >= 6 && curHealth <= 14) {
			healthstat =  "HP" + "#x" + ": " + "#n" +"#FFDDDDFF" + curHealth +"#!" ;
			//UnityEngine.GUI.Box (new Rect (Screen.width/100*(float)0.5, Screen.height /100*48, Screen.width / 100 * 7, Screen.height / 100 * 22), "", customGUI);
			FancyLabel (new Rect (Screen.width / 100 * (float)2.5, Screen.height / 100 * 48, Screen.width / 100 * 7, Screen.height / 100 * 3), healthstat, normal, bold, italic, TextAlignment.Left);
		}
		else if (curHealth <= 5) {
			healthstat =  "HP" + "#x" + ": " + "#n" + "#FF6666FF" + curHealth +"#!" ;
			//UnityEngine.GUI.Box (new Rect (Screen.width/100*(float)0.5, Screen.height /100*48, Screen.width / 100 * 8, Screen.width / 100 * 2), "", customGUI);
			FancyLabel (new Rect (Screen.width / 100 * (float)2.5, Screen.height / 100 * 48, Screen.width / 100 * 8, Screen.height / 100 * 3), healthstat, normal, bold, italic, TextAlignment.Left);
		}




		//stat1
		stats1 = "#F66A35FF"+ ts.comboKills +"#FFFFFFFF" + " Combo"  + "\n" + "Streak" + "#x" + ":                      " + "#n" +"#F66A35FF" + ts.streakNo  + "#FFFFFFFF"+ "x" +
			"\n" + "Timer" + "#x" + ":                         " + "#n" +"#F66A35FF" + ts.killStreakTimer + "#FFFFFFFF" +"\n" + "Kills To Streak" + "#x" + ":       " + "#n" + "#F66A35FF" +ts.killsToStreak 
				+ "#FFFFFFFF" +"\n" + "Reward" + "#x" + ":  " + "#n" + "#F66A35FF" +ts.theNextStreak; 
		UnityEngine.GUI.Box (new Rect (Screen.width / 100 * (float)77, Screen.height/100*17,  Screen.width / 100*28.5f, Screen.height/100*18),"" ,customGUI);
		FancyLabel(new Rect (Screen.width / 100 * (float)79, Screen.height/100*(float)19.7,  Screen.width / 100*25, Screen.height/5), stats1, normal, bold, italic, TextAlignment.Left);





		//stat2
		stats2 = " Resources" + "#x" + ": " +"#F66A35FF"+ "#n" + GameObject.FindGameObjectWithTag("TheTower").GetComponent<TowerStats> ().mResources
			+"#FFFFFFFF" + " Current Wave" + "#x" + ": " + "#n" +"#F66A35FF"+ waveNo  +"#FFFFFFFF"+ " Enemies Remaining" + "#x" + ": "+"#F66A35FF" + "#n" + numEnemies + "\n";
		UnityEngine.GUI.Box (new Rect (Screen.width / 100 *(float)38, Screen.height/100*5, Screen.width / 100*70,  Screen.height/100*5),"" ,customGUI);
		FancyLabel(new Rect (Screen.width / 100 *(float)43.5, Screen.height/100*(float)5.7, Screen.width / 100*60, Screen.height/5), stats2, normal, bold, italic, TextAlignment.Left);
	}}





