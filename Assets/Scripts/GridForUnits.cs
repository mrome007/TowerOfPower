using UnityEngine;
using System.Collections;

public class GridForUnits : MonoBehaviour {
	public GameObject whatsInside;
	public bool isAvailable = true;
	public GameObject[] nextTo;
	public bool hasBeenVisited = false;
	public GameObject previous;
	public int distance = 10000;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
