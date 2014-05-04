using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BinaryHeap {

	public int sz;
	public int reserved;
	public GameObject[]hp;

	public BinaryHeap(int initSize)
	{
		hp = new GameObject[initSize];
		reserved = initSize;
		sz = 1;
	}

	public bool empty()
	{
		return sz <= 0;
	}

	private void percolateDown(int hole)
	{
		int child;
		GameObject tmp;
		for(tmp = hp[hole]; hole * 2 <= sz; hole = child)
		{
			child = hole * 2;
			if(child != sz && hp[child+1].GetComponent<GridForUnits>().distance < 
			   	hp[child].GetComponent<GridForUnits>().distance)
				child++;
			if(hp[child].GetComponent<GridForUnits>().distance < tmp.GetComponent<GridForUnits>().distance)
				hp[hole] = hp[child];
			else
				break;
		}
		hp [hole] = tmp;
	}

	public GameObject extractMin()
	{
		if(sz <= 0)
			return null;
		GameObject tmp = hp [1];
		//if(tmp == null)
			//Debug.Log ("null");
		//sz -= 1;
		hp [1] = hp [--sz];
		percolateDown (1);
		return tmp;
	}

	public void add(GameObject elem)
	{
		if(sz == reserved)
		{
			GameObject[] newHp = new GameObject[reserved*2];
			for(int i = 0; i < reserved; i++)
			{
				newHp[i] = hp[i];
			}
			reserved = reserved*2;
			hp = newHp;
		}
		int hole = sz++;
		//Debug.Log (hole/2);

		/*
		for(; hole > 1 && elem.GetComponent<GridForUnits>().distance < 
		    hp[hole/2].GetComponent<GridForUnits>().distance; hole /= 2)
		{
				hp[hole] = hp[hole/2];
		}
		*/
		while(true)
		{
			if(elem && hp[hole/2])
			{
				if(hole > 1 && elem.GetComponent<GridForUnits>().distance < 
				   	hp[hole/2].GetComponent<GridForUnits>().distance)
				{
					hp[hole] = hp[hole/2];
					hole /= 2;
				}
				else
					break;
			}
			else
			{
				break;
			}
		}
		//Debug.Log ("inserted");
		hp[hole] = elem;
	}
}
