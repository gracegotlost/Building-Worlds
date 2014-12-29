using UnityEngine;
using System.Collections;

public class trainMove2 : MonoBehaviour {

	public float speedArrive = 0.5f;
	public float speedDepart = 0.1f;
	
	public float accArrive = -0.005f;
	public float accDepart = 0.005f;

	public bool isArriving = false;
	public bool isWaiting = false;
	public bool isDeparting = false;

	bool isWalking1 = false;
	bool isWalking2 = false;
	bool isWalking3 = false;
	
	float nextArriveTime;
	float waitingTime;
	float alpha = 1.0f;
	
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

	Vector3 peoplePos1;
	Vector3 peoplePos2;
	Vector3 peoplePos3;

	Color armColor = new Color(0, 0, 0);	
	Color legColor = new Color(0, 0, 0);
	Color headColor = new Color(0, 0, 0);
	
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
						switch(Random.Range(0, 3)){
						case 0:
							headColor = new Color(246f/255f, 238f/255f, 195f/255f);
							break;
						case 1:
							headColor = new Color(255f/255f, 176f/255f, 201f/255f);
							break;
						case 2:
							headColor = new Color(39f/255f, 14f/255f, 14f/255f);
							break;
						}
						head.transform.renderer.material.color = headColor;
						head.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
					}
					foreach (GameObject body in bodies){
						body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), alpha);
						body.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
					}
					
					armColor = new Color(211f/255f, 218f/255f, 157f/255f);	
					legColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), alpha);
					foreach (GameObject arm in arms){
						arm.transform.renderer.material.color = armColor;
						arm.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
					}
					foreach (GameObject leg in legs){
						leg.transform.renderer.material.color = legColor;
						leg.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
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

					// GET ORIGINAL POS
					peoplePos1 = people1.transform.position;
					peoplePos2 = people2.transform.position;
					peoplePos3 = people3.transform.position;
				}

				// PEOPLE GETTING DOWN THE TRAIN
				if (Time.time > waitingTime - 28f && !isWalking1) {
					// PEOPLE1
					isWalking1 = true;
					StartCoroutine (MovePeople1());
				}

				if (Time.time > waitingTime - 23f && !isWalking2) {
					// PEOPLE2
					isWalking2 = true;
					StartCoroutine (MovePeople2());
				}

				if (Time.time > waitingTime - 18f && !isWalking3) {
					// PEOPLE3
					isWalking3 = true;
					StartCoroutine (MovePeople3());
				}

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

					// INIT PEOPLE
					people1.transform.position = peoplePos1;
					people2.transform.position = peoplePos2;
					people3.transform.position = peoplePos3;
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
							switch(Random.Range(0, 3)){
							case 0:
								headColor = new Color(246f/255f, 238f/255f, 195f/255f);
								break;
							case 1:
								headColor = new Color(255f/255f, 176f/255f, 201f/255f);
								break;
							case 2:
								headColor = new Color(39f/255f, 14f/255f, 14f/255f);
								break;
							}
							head.transform.renderer.material.color = headColor;
							head.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
						}
						foreach (GameObject body in bodies){
							body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), alpha);
							body.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
						}
						
						armColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), alpha);	
						legColor = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), alpha);
						foreach (GameObject arm in arms){
							arm.transform.renderer.material.color = armColor;
							arm.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
						}
						foreach (GameObject leg in legs){
							leg.transform.renderer.material.color = legColor;
							leg.renderer.material.shader = Shader.Find( "Transparent/Diffuse" );
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
					isWalking1 = false;
					isWalking2 = false;
					isWalking3 = false;

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

	IEnumerator MovePeople1(){
		while(true){
			// LEFT
			people1left.transform.Rotate(20f, 0, 0);
			people1right.transform.Rotate(-20f, 0, 0);
			people1.transform.position += new Vector3(-0.05f * 0.5f, 0, -0.1f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);
			
			// RIGHT
			people1left.transform.Rotate(-20f, 0, 0);
			people1right.transform.Rotate(20f, 0, 0);
			people1.transform.position += new Vector3(-0.05f * 0.5f, 0, -0.1f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);

			if (Time.time >= waitingTime){
				yield break;
			}
		}
	}

	IEnumerator MovePeople2(){
		while(true){
			// LEFT
			people2left.transform.Rotate(20f, 0, 0);
			people2right.transform.Rotate(-20f, 0, 0);
			people2.transform.position += new Vector3(0.021f * 0.5f, 0, -0.1f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);
			
			// RIGHT
			people2left.transform.Rotate(-20f, 0, 0);
			people2right.transform.Rotate(20f, 0, 0);
			people2.transform.position += new Vector3(0.021f * 0.5f, 0, -0.1f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);

			if (Time.time >= waitingTime){
				yield break;
			}
		}
	}

	IEnumerator MovePeople3(){
		while(true){
			// LEFT
			people3left.transform.Rotate(20f, 0, 0);
			people3right.transform.Rotate(-20f, 0, 0);
			people3.transform.position += new Vector3(0, 0, -0.12f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);
			
			// RIGHT
			people3left.transform.Rotate(-20f, 0, 0);
			people3right.transform.Rotate(20f, 0, 0);
			people3.transform.position += new Vector3(0, 0, -0.12f * 0.5f);
			
			yield return new WaitForSeconds (0.3f);

			if (Time.time >= waitingTime){
				yield break;
			}
		}
	}
}
