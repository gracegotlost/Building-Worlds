using UnityEngine;
using System.Collections;

public class Drop : MonoBehaviour {

	public Transform White; 
	public Transform Black;
	public Transform Yellow;
	
	float nextDroppingTime = 0f;
	
	void Start () {
		nextDroppingTime = Time.time + 5f;
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time > nextDroppingTime ) {

			switch (Random.Range (0, 3) ) { 
			case 0:
				Instantiate ( White, transform.position - transform.up, Quaternion.identity );
				break;
			case 1:
				Instantiate ( Black, transform.position - transform.up, Quaternion.identity );
				break;
			case 2:
				Instantiate ( Yellow, transform.position - transform.up, Quaternion.identity );
				break;
			default:
				break;
			}

			nextDroppingTime += Random.Range( 10f, 15f);
		}	
	}
}
