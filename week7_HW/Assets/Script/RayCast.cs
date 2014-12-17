using UnityEngine;
using System.Collections;

public class RayCast : MonoBehaviour {

	public Transform blueprint; // assign in inspector
	
	// Update is called once per frame
	void Update () {
		// generate a ray based on camera position + mouse cursor screen coordinate
		Ray ray = Camera.main.ScreenPointToRay ( Input.mousePosition );
		
		// reserve space for info about where the raycast hit a thing, what it hit, etc.
		RaycastHit rayHit = new RaycastHit(); // initialize forensics data container
		
		// actually shoot the raycast
		if ( Physics.Raycast ( ray, out rayHit, 1000f ) && Input.GetMouseButtonDown (0) 
		    && rayHit.collider.CompareTag("Floor")) {
			//transform.LookAt ( rayHit.point ); // make this object "look at" the raycast hit position
			Instantiate ( blueprint, new Vector3(rayHit.point.x, rayHit.point.y + 2.0f, rayHit.point.z), Random.rotation ); // make a new clone at raycast hit position
		}
		
	}
}
