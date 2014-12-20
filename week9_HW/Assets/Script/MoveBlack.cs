using UnityEngine;
using System.Collections;

public class MoveBlack : MonoBehaviour {

	public float moveSpeed; 
	GameObject left;
	GameObject right;
	float rotateZ = 6f;
	int countLeft = 15;
	int countRight;
	
	// Didn't work using FindWithTag; Had to use Find instead;
	// Which means had to use three different scripts for three objects with same tag :(
	
	void Start () {
		//Walk
		countRight = countLeft * 2;
		left = GameObject.Find ("/Head2/LeftLeg");
		right = GameObject.Find ("/Head2/RightLeg");
		
		//Rotate
		transform.Rotate (0f, Mathf.Sign ( Random.Range (-1f, 1f) ) * 90f, 0f );
		//StartCoroutine (step());
	}
	
	// Update is called once per frame
	void Update () {
		//Walk
		if (Time.frameCount % countRight == 0) {
			// right
			left.transform.Rotate(0, 0, rotateZ);
			right.transform.Rotate(0, 0, - rotateZ);
			Debug.Log("Right White");
		} else if (Time.frameCount % countLeft == 0) {
			// left
			left.transform.Rotate(0, 0, - rotateZ);
			right.transform.Rotate(0, 0, rotateZ);
			Debug.Log("Left White");
		} 
		//Debug.Log (Time.frameCount);
		
		rigidbody.AddForce ( - transform.right * Time.deltaTime * moveSpeed );
		
		//Rotate
		if (Physics.Raycast ( transform.position, - transform.right, 6f ) ) {
			transform.Rotate (0f, Mathf.Sign ( Random.Range (-1f, 1f) ) * 90f, 0f );
		}
		
	}
	
	// IEnumerator didn't work in Instantiate
	// Had to change back to Update()
	/*
	IEnumerator step() {
		while (true) {
			// left
			left.transform.Rotate(0, 0, - rotateZ);
			right.transform.Rotate(0, 0, rotateZ);
			yield return new WaitForSeconds(0.4f);

			// right
			left.transform.Rotate(0, 0, rotateZ);
			right.transform.Rotate(0, 0, - rotateZ);
			yield return new WaitForSeconds(0.4f);
		}
	}
	*/
}
