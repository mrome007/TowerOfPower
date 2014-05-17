using UnityEngine;
using System.Collections;

public class wallObjectSurvive : Weapons {
	public int wallDuration;
	public GameObject planeItsOn;
	private int waveItWasPlaced;
	private int currWave;
	// Use this for initialization
	void Start () {
		waveItWasPlaced = GameObject.FindGameObjectWithTag ("GameController").GetComponent<NewSpawnWaves> ().waveNo;
		currWave = waveItWasPlaced;
	
	}
	
	// Update is called once per frame
	void Update () {
		NewSpawnWaves nsw = GameObject.FindGameObjectWithTag ("GameController").GetComponent<NewSpawnWaves> ();
		if(nsw.waveNo > currWave)
		{
			currWave = nsw.waveNo;
			wallDuration--;
			destroyWall(nsw);
		}
		if (wallDuration <= 0)
		{
			transform.Translate(Vector3.down*Time.deltaTime*2.0f);
			if(transform.position.y <= -4.0f)
			{
				planeItsOn.tag = "NotTaken";
				Destroy(gameObject);
			}
		}
	}

	void destroyWall(NewSpawnWaves n)
	{
		if(wallDuration <= 0)
		{
			planeItsOn.tag = "NotTaken";
			GridForUnits grid = planeItsOn.GetComponent<GridForUnits>();
			grid.isAvailable = true;
			grid.whatsInside = null;
			grid.previous = null;
			grid.hasBeenVisited = false;
			n.wallsWereDestroyed = true;
			//Destroy(gameObject);
			//n.wallsWereDestroyed = false;
		}
	}
}
