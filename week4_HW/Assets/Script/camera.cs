using UnityEngine;
using System.Collections;

public class camera : MonoBehaviour {
	float velx = 1;
	float vely = 0;
	bool hasPassed = false;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (!hasPassed && transform.position.x > 9.5) {
			velx = -1;
			vely = 1;
			hasPassed = true;
		} 

		if ((hasPassed && transform.position.x > -0.5) || (!hasPassed && transform.position.x <= 9.5)) {
			transform.position += new Vector3 (0.4f * velx * Time.deltaTime, 0, 0);
		}

		if (hasPassed && transform.position.y < 18) {
			transform.position += new Vector3 (0, 0.4f * vely * Time.deltaTime, 0);
		}

		if (!hasPassed && transform.position.x > -7 && transform.position.z > -1.2 ) {
			transform.position += new Vector3 (0, 0, -0.05f * Time.deltaTime);
		}

		if (hasPassed && transform.position.z > -2 ) {
			transform.position += new Vector3 (0, 0, -0.05f * Time.deltaTime);
		}
	}
}
