using UnityEngine;
using System.Collections;

public class trainMove : MonoBehaviour {

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

	Color armColor = new Color(0, 0, 0);	
	Color legColor = new Color(0, 0, 0);
	Color headColor = new Color(0, 0, 0);

	// Use this for initialization
	void Start () {
		nextArriveTime = Time.time + 20f;
		//nextArriveTime = Time.time + 0f;
		train = GameObject.Find ("/Train1");
		train2= GameObject.Find ("/Train2");
		heads = GameObject.FindGameObjectsWithTag ("head1");
		bodies = GameObject.FindGameObjectsWithTag ("body1");
		arms = GameObject.FindGameObjectsWithTag ("arm1");
		legs = GameObject.FindGameObjectsWithTag ("leg1");
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
					train.transform.position = new Vector3 ( train2.transform.position.x  - 5f, train.transform.position.y, train.transform.position.z);

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
					}
					foreach (GameObject body in bodies){
						body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
					}
					
					armColor = new Color(211f/255f, 218f/255f, 157f/255f);	
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


				// IF TRAIN IS TIME TO GO
				if (Time.time > waitingTime) {
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
						}
						foreach (GameObject body in bodies){
							body.transform.renderer.material.color = new Color(Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), Random.Range(0.1f, 0.9f), 0.8f);
						}
						
						armColor = new Color(211f/255f, 218f/255f, 157f/255f);	
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
					train.transform.position = new Vector3 (-10f, train.transform.position.y, train.transform.position.z);
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
