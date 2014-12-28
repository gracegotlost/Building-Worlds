using UnityEngine;
using System.Collections;

public class trainMove2 : MonoBehaviour {

	public float speedArrive = 0.5f;
	public float speedDepart = 0.1f;
	
	public float accArrive = -0.005f;
	public float accDepart = 0.005f;
	
	bool isArriving = false;
	bool isWaiting = false;
	bool isDeparting = false;
	
	float nextArriveTime;
	float waitingTime;
	
	GameObject train;
	GameObject train2;

	GameObject[] heads;
	GameObject[] bodies;
	GameObject[] arms;
	GameObject[] legs;

	GameObject leftDoor;
	GameObject rightDoor;

	GameObject people1;
	GameObject people2;
	GameObject people3;
	GameObject people1left;
	GameObject people1right;
	GameObject people2left;
	GameObject people2right;
	GameObject people3left;
	GameObject people3right;

	Color armColor = new Color(0, 0, 0);	
	Color legColor = new Color(0, 0, 0);
	
	// Use this for initialization
	void Start () {
		nextArriveTime = Time.time + 20f;
		//nextArriveTime = Time.time + 0f;

		// FIND GAMEOBJECTS
		train = GameObject.Find ("/Train2");
		train2 = GameObject.Find ("/Train1");
		heads = GameObject.FindGameObjectsWithTag ("head2");
		bodies = GameObject.FindGameObjectsWithTag ("body2");
		arms = GameObject.FindGameObjectsWithTag ("arm2");
		legs = GameObject.FindGameObjectsWithTag ("leg2");
		leftDoor = GameObject.Find ("/Train2/LeftDoor");
		rightDoor = GameObject.Find ("/Train2/RightDoor");	
		people1 = GameObject.Find ("/Train2/PeopleOut1");
		people2 = GameObject.Find ("/Train2/PeopleOut2");
		people3 = GameObject.Find ("/Train2/PeopleOut3");
		people1left = GameObject.Find ("/Train2/PeopleOut1/LeftLeg");
		people2left = GameObject.Find ("/Train2/PeopleOut2/LeftLeg");
		people3left = GameObject.Find ("/Train2/PeopleOut3/LeftLeg");
		people1right = GameObject.Find ("/Train2/PeopleOut1/RightLeg");
		people2right = GameObject.Find ("/Train2/PeopleOut2/RightLeg");
		people3right = GameObject.Find ("/Train2/PeopleOut3/RightLeg");
	}
	
	// Update is called once per frame
	void Update () {
		
		if (Time.time > nextArriveTime 
		    && (!isArriving && !isWaiting && !isDeparting)) {
			isArriving = true;
			
			// INIT
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
					speedArrive += accArrive;
				} else {
					train.transform.position = new Vector3 ( train2.transform.position.x - 5f, train.transform.position.y, train.transform.position.z);
				
					// CHANGE CLOTHES COLOR
					foreach (GameObject head in heads){
						head.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
					}
					foreach (GameObject body in bodies){
						body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
					}
					
					armColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);	
					legColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
					foreach (GameObject arm in arms){
						arm.transform.renderer.material.color = armColor;
					}
					foreach (GameObject leg in legs){
						leg.transform.renderer.material.color = legColor;
					}
				}
				
				// IF TRAIN HAS STOPPED
				if (speedArrive <= 0f) {
					isArriving = false;
					isWaiting = true;
					waitingTime = Time.time + Random.Range(32f, 32f);
					//waitingTime = Time.time + Random.Range(2f, 2f);
				}
				
				//Debug.Log("isArriving");
				yield return new WaitForSeconds(0.1f);
			}
			
			if (isWaiting) {
				
				// ADD TRAIN WAITING CODE HERE

//				// DOOR OPEN
//				if (Time.time > waitingTime - 30f && Time.time < waitingTime - 29f) {
//					leftDoor.transform.position += new Vector3(-0.05f, 0, 0);
//					rightDoor.transform.position += new Vector3(+0.05f, 0, 0);
//					//Debug.Log("OPEN");
//				}
//
//				// DOOR CLOSE
//				if (Time.time >= waitingTime - 6.5f && Time.time < waitingTime - 5.5f) {
//					leftDoor.transform.position += new Vector3(+0.05f, 0, 0);
//					rightDoor.transform.position += new Vector3(-0.05f, 0, 0);
//					//Debug.Log("CLOSE");
//				}

				// DOOR OPEN
				if (Time.time > waitingTime - 30f && Time.time < waitingTime - 6.5f
				    && Vector3.Distance(leftDoor.transform.position, rightDoor.transform.position) < 1.28f) {
					leftDoor.transform.position += new Vector3(-0.05f, 0, 0);
					rightDoor.transform.position += new Vector3(+0.05f, 0, 0);
					//Debug.Log("OPEN");
				}

				// PEOPLE GETTING DOWN THE TRAIN


				// END OF PEOPLE GETTING DOWN THE TRAIN
				
				// DOOR CLOSE
				if (Time.time >= waitingTime - 6.5f && Time.time < waitingTime
				    && Vector3.Distance(leftDoor.transform.position, rightDoor.transform.position) > 0.46) {
					leftDoor.transform.position += new Vector3(+0.05f, 0, 0);
					rightDoor.transform.position += new Vector3(-0.05f, 0, 0);
					//Debug.Log("CLOSE");
				}
				
				// IF TRAIN IS TIME TO GO
				if (Time.time >= waitingTime) {
					isWaiting = false;
					isDeparting = true;
				}
				
				//Debug.Log("isWaiting");
				yield return new WaitForSeconds(0.1f);
			}
			
			if (isDeparting) {
				
				// ADD TRAIN DEPARTING CODE HERE
				if (speedDepart <= 0.8f) {
					if (train.transform.position.x < 5f) {
						train.transform.position += new Vector3 (speedDepart, 0, 0);
					} else {
						train.transform.position = new Vector3 ( train2.transform.position.x - 5f, train.transform.position.y, train.transform.position.z);
					
						// CHANGE CLOTHES COLOR
						foreach (GameObject head in heads){
							head.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
						}
						foreach (GameObject body in bodies){
							body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
						}
						
						armColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);	
						legColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
						foreach (GameObject arm in arms){
							arm.transform.renderer.material.color = armColor;
						}
						foreach (GameObject leg in legs){
							leg.transform.renderer.material.color = legColor;
						}
					}
				}
				
				if (speedDepart > 0.8f && speedDepart < 1.0f) {
					train.transform.position += new Vector3 (speedDepart, 0, 0);
				}
				
				speedDepart += accDepart;
				
				// IF TRAIN HAS LEFT
				if (speedDepart >= 1.0f) {
					isDeparting = false;

					// INIT
					train.transform.position = new Vector3 (-15f, train.transform.position.y, train.transform.position.z);
					people1.transform.position = new Vector3 (0.462f, -0.431f, people1.transform.position.z);
					people2.transform.position = new Vector3 (-0.087f, -0.282f, people2.transform.position.z);
					people3.transform.position = new Vector3 (0.262f, -0.024f, people3.transform.position.z);
					nextArriveTime = Time.time + Random.Range(41f, 41f);
					//nextArriveTime = Time.time + Random.Range(2f, 2f);
					//Debug.Log("Has Left");
					yield break;
				}
				
				//Debug.Log("isDeparting");
				yield return new WaitForSeconds(0.1f);
			}
		}
	}
}
