using UnityEngine;
using System.Collections;

public class Rotate : MonoBehaviour {

	public float speedRotate;
	public float speedForce;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate (Vector3.forward * Time.deltaTime * speedRotate, Space.World);
		transform.position -= new Vector3 ( Time.deltaTime * speedForce, 0, 0);

	}
}
