using UnityEngine;
using System.Collections;

public class keyControl : MonoBehaviour {

	public float offsetMove = 10.0f;
	public float offsetRotate = 1.0f;


	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.A) ) {
			transform.Rotate(0, -offsetRotate, 0);
		} else if (Input.GetKey (KeyCode.D) ) {
			transform.Rotate(0, offsetRotate, 0);
		} else if (Input.GetKey (KeyCode.W) ) {
			rigidbody.AddForce(transform.forward * offsetMove);
		} else if (Input.GetKey (KeyCode.S) ) {
			rigidbody.AddForce(-transform.forward * offsetMove);
		}
	}
}
