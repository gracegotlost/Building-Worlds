using UnityEngine;
using System.Collections;

public class turn02 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		collision.rigidbody.AddForce (-40, 100, -40); 
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
