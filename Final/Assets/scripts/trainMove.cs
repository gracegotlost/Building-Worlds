using UnityEngine;
using System.Collections;

public class trainMove : MonoBehaviour {

	float speedArrive = 10f;
	float speedDepart = 1f;

	float accArrive = -1f;
	float accDepart = 0.1f;

	bool isArriving = false;
	bool isWaiting = false;
	bool isDeparting = false;

	float nextArriveTime;
	float waitingTime;

	// Use this for initialization
	void Start () {
		nextArriveTime = Time.time + 5f;
		StartCoroutine ( Move() );
	}
	
	// Update is called once per frame
	void Update () {
		if (Time.time > nextArriveTime 
		    && (!isArriving && !isWaiting && !isDeparting)) {
			isArriving = true;
			Debug.Log("isEmpty");
		}
	}

	IEnumerator Move () {
		while (true) {
			if (isArriving) {

				// ADD TRAIN ARRIVING CODE HERE
				if (transform.position.x < 5f) {
					transform.position += new Vector3 (speedArrive, 0, 0);
				} else {
					transform.position = new Vector3 (-10f, transform.position.y, transform.position.z);
				}
				speedArrive += accArrive;

				// IF TRAIN HAS STOPPED
				if (speedArrive <= 0f) {
					isArriving = false;
					isWaiting = true;
					waitingTime = Time.time + Random.Range(10f, 15f);
					Debug.Log("isArriving");
				}

				yield return new WaitForSeconds(0.2f);
			}
			
			if (isWaiting) {

				// ADD TRAIN WAITING CODE HERE


				// IF TRAIN IS TIME TO GO
				if (Time.time > waitingTime) {
					isWaiting = false;
					isDeparting = true;
					Debug.Log("isWaiting");
				}

				yield return new WaitForSeconds(0.2f);
			}
			
			if (isDeparting) {

				// ADD TRAIN DEPARTING CODE HERE
				if (speedDepart <= 4f) {
					if (transform.position.x < 5f) {
						transform.position += new Vector3 (speedDepart, 0, 0);
					} else {
						transform.position = new Vector3 (-10f, transform.position.y, transform.position.z);
					}
					speedDepart += accDepart;
				}

				// IF TRAIN HAS LEFT
				if (speedDepart >= 5f) {
					isDeparting = false;
					Debug.Log("isDeparting");
					nextArriveTime = Time.time + Random.Range(10f, 15f);
				}

				yield return new WaitForSeconds(0.2f);
			}
		}
	}
}
