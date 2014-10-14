using UnityEngine;
using System.Collections;

public class collide2 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		collision.transform.renderer.material.color = new Color ( 0.855f, 0.275f, 0.19f ); //Red
		transform.renderer.material.color = new Color ( 0.855f, 0.275f, 0.19f ); //Red
		collision.rigidbody.AddForce (40, 200, 0); 
		audio.Play ();
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
