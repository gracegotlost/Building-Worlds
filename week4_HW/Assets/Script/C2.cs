using UnityEngine;
using System.Collections;

public class C2 : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		transform.renderer.material.color = new Color ( 0, 0.82f, 0.46f ); //Light Green
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
