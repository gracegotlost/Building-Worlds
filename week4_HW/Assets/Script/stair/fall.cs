using UnityEngine;
using System.Collections;

public class fall : MonoBehaviour {

	public Texture texture;

	void OnCollisionStay(Collision collision) {
		renderer.material.mainTexture = texture;
		rigidbody.isKinematic = false;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
