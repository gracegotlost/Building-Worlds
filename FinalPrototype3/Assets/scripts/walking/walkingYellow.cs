using UnityEngine;
using System.Collections;

public class walkingYellow : MonoBehaviour {

	float rightPos = -2.4f;
	float leftPos = -3.415f;
	float velX = -0.1f;
	
	GameObject left;
	GameObject right;
	
	// Use this for initialization
	void Start () {
		left = GameObject.Find ("/WalkingYellow/LeftLeg");
		right = GameObject.Find ("/WalkingYellow/RightLeg");
		StartCoroutine (MoveBlack());
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	IEnumerator MoveBlack(){
		while (true) {
			if (transform.position.x > rightPos || transform.position.x < leftPos) {
				transform.Rotate (0, 180f, 0);	
				velX *= -1.0f;
			}
			
			// LEFT
			left.transform.Rotate(20f, 0, 0);
			right.transform.Rotate(-20f, 0, 0);
			transform.position += new Vector3(velX * 0.5f, 0, 0);
			
			yield return new WaitForSeconds (0.4f);
			
			// RIGHT
			left.transform.Rotate(-20f, 0, 0);
			right.transform.Rotate(20f, 0, 0);
			transform.position += new Vector3(velX * 0.5f, 0, 0);
			
			yield return new WaitForSeconds (0.4f);
		}
	}
}
