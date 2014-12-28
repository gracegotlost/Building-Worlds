using UnityEngine;
using System.Collections;

public class trainMoveTracks : MonoBehaviour {

	float speed = 1.5f;

	bool isPassing = false;
	
	float nextArriveTime;
	float passingTime;
	
	GameObject train;
	
	// Use this for initialization
	void Start () {
		nextArriveTime = Time.time + 10f;
		train = GameObject.Find ("/Train");
	}
	
	// Update is called once per frame
	void Update () {
		
		if (Time.time > nextArriveTime && !isPassing ) {
			isPassing = true;
			passingTime = Time.time + Random.Range(20f, 30f);
			StartCoroutine (Move());
		}
		
	}
	
	IEnumerator Move () {
		while (true) {
			if (isPassing) {
				
				// ADD TRAIN PASSING CODE HERE
				if (Time.time <= passingTime - 8f) {
					if (train.transform.position.x < 10.6f) {
						train.transform.position += new Vector3 (speed, 0, 0);
					} else {
						train.transform.position = new Vector3 (10.6f + speed * 2f - 5f, train.transform.position.y, train.transform.position.z);
					}
				}

				if (Time.time < passingTime && Time.time > passingTime - 8f) {
					train.transform.position += new Vector3 (speed, 0, 0);
				}

				// IF TRAIN HAS PASSED
				if (Time.time >= passingTime) {
					isPassing = false;
					switch(Random.Range(0, 3)){
					case 0:
						train.transform.position = new Vector3 (-10f, train.transform.position.y, -7.02f);
						break;
					case 1:
						train.transform.position = new Vector3 (-25f, train.transform.position.y, 2.88f);
						break;
					case 2:
						train.transform.position = new Vector3 (-25f, train.transform.position.y, 5.84f);
						break;
					}
					nextArriveTime = Time.time + Random.Range(10f, 30f);
					//Debug.Log("Has Left");
					yield break;
				}

				yield return new WaitForSeconds(0.1f);
			}

		}
	}
}
