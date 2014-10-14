using UnityEngine;
using System.Collections;

public class collide : MonoBehaviour {

	void OnTriggerStay(Collider other) {
		other.rigidbody.AddForce (23, 100, -10); 
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
