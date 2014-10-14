using UnityEngine;
using System.Collections;

public class temp : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		if (collision.rigidbody)
			collision.rigidbody.useGravity = true;
		collision.transform.renderer.material.color = new Color ( 1, 0.73f, 0.0078f ); //Yellow
		transform.renderer.material.color = new Color ( 1, 0.73f, 0.0078f ); //Yellow
		
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
