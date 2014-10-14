using UnityEngine;
using System.Collections;

public class turn01 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		collision.rigidbody.AddForce (-30, 100, 10); 
		collision.transform.renderer.material.color = new Color (0.09f, 0.43f, 0.93f);
		transform.renderer.material.color = new Color ( 0.09f, 0.43f, 0.93f );
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
