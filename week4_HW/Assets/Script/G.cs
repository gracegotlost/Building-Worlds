using UnityEngine;
using System.Collections;

public class G : MonoBehaviour {

	void OnCollisionStay(Collision collision) {
		transform.renderer.material.color = new Color ( 0.09f, 0.43f, 0.93f );
		rigidbody.isKinematic = false;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
