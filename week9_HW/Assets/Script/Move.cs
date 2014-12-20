using UnityEngine;
using System.Collections;

public class Move : MonoBehaviour {

	public float moveSpeed;

	bool turnLeft = false;
	bool turnRight = false;
	float rotateY = 0f;

	void Start () {
		StartCoroutine ( Plane() );
	}

	void Update () {
		rigidbody.AddForce ( transform.forward * Time.deltaTime * moveSpeed );
	}

	IEnumerator Plane () {

		while (true) {

			if (Physics.Raycast ( transform.position, transform.forward, 20f ) == true) {
				if (Physics.Raycast ( transform.position, transform.right, 20f ) == true) {
					turnLeft = true;
				} else {
					turnRight = true;
				}
			} else if (Physics.Raycast ( transform.position, transform.forward, 30f ) == false) {
				turnLeft = false;
				turnRight = false;
			}

			if (turnLeft) {
				rotateY -= 20f;
			} else if (turnRight) {
				rotateY += 20f;
			} else {
				rotateY = 0f;
			}

			transform.Rotate (0f, rotateY, 0f );

			if (rotateY == 0f) {
				yield return new WaitForSeconds(0.01f);
			} else {
				yield return new WaitForSeconds(0.2f);
			}
		}
	}
}
