using UnityEngine;
using System.Collections;

public class rotate : MonoBehaviour {

	void OnCollisionStay(Collision collision) {		
		collision.transform.renderer.material.color = new Color ( 0.6f, 0.94f, 0.79f ); //Light Green
		transform.renderer.material.color = new Color ( 0.6f, 0.94f, 0.79f ); //Light Green
	}

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate(Vector3.forward * 20 * Time.deltaTime);
	}
}
