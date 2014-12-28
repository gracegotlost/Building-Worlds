using UnityEngine;
using System.Collections;

public class walkingWhite : MonoBehaviour {

	float rightPos = 2.4f;
	float leftPos = -6.22f;
	float velX = -0.2f;
	
	GameObject left;
	GameObject right;
	
	// Use this for initialization
	void Start () {
		left = GameObject.Find ("/WalkingWhite/LeftLeg");
		right = GameObject.Find ("/WalkingWhite/RightLeg");
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
			
			yield return new WaitForSeconds (0.2f);
			
			// RIGHT
			left.transform.Rotate(-20f, 0, 0);
			right.transform.Rotate(20f, 0, 0);
			transform.position += new Vector3(velX * 0.5f, 0, 0);
			
			yield return new WaitForSeconds (0.2f);
		}
	}
}
