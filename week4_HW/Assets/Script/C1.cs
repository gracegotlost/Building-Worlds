using UnityEngine;
using System.Collections;

public class C1 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		transform.renderer.material.color = new Color ( 0, 0.61f, 0.34f ); //Green
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
