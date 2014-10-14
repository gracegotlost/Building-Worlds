using UnityEngine;
using System.Collections;

public class ball : MonoBehaviour {
	int count;

	void OnCollisionStay(Collision collision) {
		if (rigidbody)
			rigidbody.useGravity = true;
		if (count < 10) {
			collision.transform.renderer.material.color = new Color (0.09f, 0.43f, 0.93f);
			count++;
		}
		transform.renderer.material.color = new Color ( 0.09f, 0.43f, 0.93f );
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
