using UnityEngine;
using System.Collections;

public class ball00 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		transform.renderer.material.color = new Color ( 0.09f, 0.43f, 0.93f );// Blue
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
