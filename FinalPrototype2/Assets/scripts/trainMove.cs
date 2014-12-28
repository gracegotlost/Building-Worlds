using UnityEngine;
using System.Collections;

public class trainMove : MonoBehaviour {

	float speedArrive = 0.5f;
	float speedDepart = 0.1f;

	float accArrive = -0.005f;
	float accDepart = 0.005f;

	bool isArriving = false;
	bool isWaiting = false;
	bool isDeparting = false;

	float nextArriveTime;
	float waitingTime;

	GameObject train;

	// Use this for initialization
	void Start () {
		nextArriveTime = Time.time + 18f;
		train = GameObject.Find ("/Train");
	}
	
	// Update is called once per frame
	void Update () {

		if (Time.time > nextArriveTime 
		    && (!isArriving && !isWaiting && !isDeparting)) {
			isArriving = true;
			speedArrive = 0.5f;
			speedDepart = 0.1f;
			StartCoroutine (Move());
		}

	}

	IEnumerator Move () {
		while (true) {
			if (isArriving) {

				// ADD TRAIN ARRIVING CODE HERE
				if (train.transform.position.x < 5f) {
					train.transform.position += new Vector3 (speedArrive, 0, 0);
				} else {
					train.transform.position = new Vector3 (0f, train.transform.position.y, train.transform.position.z);
				}
				speedArrive += accArrive;

				// IF TRAIN HAS STOPPED
				if (speedArrive <= 0f) {
					isArriving = false;
					isWaiting = true;
					waitingTime = Time.time + Random.Range(30f, 32f);
				}

				Debug.Log("isArriving");
				yield return new WaitForSeconds(0.1f);
			}
			
			if (isWaiting) {

				// ADD TRAIN WAITING CODE HERE


				// IF TRAIN IS TIME TO GO
				if (Time.time > waitingTime) {
					isWaiting = false;
					isDeparting = true;
				}

				Debug.Log("isWaiting");
				yield return new WaitForSeconds(0.1f);
			}
			
			if (isDeparting) {

				// ADD TRAIN DEPARTING CODE HERE
				if (speedDepart <= 0.8f) {
					if (train.transform.position.x < 5f) {
						train.transform.position += new Vector3 (speedDepart, 0, 0);
					} else {
						train.transform.position = new Vector3 (0f, train.transform.position.y, train.transform.position.z);
					}
				}

				if (speedDepart > 0.8f && speedDepart < 1.0f) {
					train.transform.position += new Vector3 (speedDepart, 0, 0);
				}

				speedDepart += accDepart;

				// IF TRAIN HAS LEFT
				if (speedDepart >= 1.0f) {
					isDeparting = false;
					train.transform.position = new Vector3 (-10f, train.transform.position.y, train.transform.position.z);
					nextArriveTime = Time.time + Random.Range(10f, 15f);
					Debug.Log("Has Left");
					yield break;
				}

				Debug.Log("isDeparting");
				yield return new WaitForSeconds(0.1f);
			}
		}
	}
}
