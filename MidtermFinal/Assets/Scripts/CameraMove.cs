using UnityEngine;
using System.Collections;

public class CameraMove : MonoBehaviour {

	public float offsetMove = 10.0f;

	// MOUSE LOOK
	public bool isMoving = false;
	
	public enum RotationAxes { MouseXAndY = 0, MouseX = 1, MouseY = 2 }
	public RotationAxes axes = RotationAxes.MouseXAndY;
	public float sensitivityX;
	public float sensitivityY;
	
	public float minimumX;
	public float maximumX;
	
	public float minimumY;
	public float maximumY;
	
	float rotationY = 0F;
	// END OF MOUSE LOOK

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		// ARROW KEY
		if (Input.GetKey (KeyCode.A) ) {
			if (transform.position.x > 998f) {
				rigidbody.AddForce(-transform.right * offsetMove);
			}
		} else if (Input.GetKey (KeyCode.D) ) {
			if (transform.position.x < 1000f) {
				rigidbody.AddForce(transform.right * offsetMove);
			}
		} else if (Input.GetKey (KeyCode.W) ) {
			if (transform.position.z < 509.4f) {
				rigidbody.AddForce(transform.forward * offsetMove);
			}
		} else if (Input.GetKey (KeyCode.S) ) {
			if (transform.position.z > 508.4f) {
				rigidbody.AddForce(-transform.forward * offsetMove);
			}
		}
		// END OF ARROW KEY

		// RAYCASTING
		// generate a ray based on camera position + mouse cursor screen coordinate
		Ray ray = Camera.main.ScreenPointToRay ( Input.mousePosition );

		// reserve space for info about where the raycast hit a thing, what it hit, etc.
		RaycastHit rayHit = new RaycastHit(); // initialize forensics data container
		
		// actually shoot the raycast
		if (Physics.Raycast (ray, out rayHit, 1000f) 
						&& Input.GetMouseButton (0) 
		    			&& rayHit.collider.CompareTag ("PullUp") ) {
						isMoving = false;
						//Debug.Log ("Can't Move!");
				} else if (Input.GetMouseButton (0)) {
						isMoving = true;	
						//Debug.Log ("Can Move!");
				} else {
			isMoving = false;
			//Debug.Log("Can't Move!");
		}
		// END OF RAYCASTING

		// MOUSE LOOK
		// Wrap bool in if statement so can set to false when GUI screen pops up
		if (isMoving == true) {
			
			if (axes == RotationAxes.MouseXAndY) {
				float rotationX = transform.localEulerAngles.y + Input.GetAxis ("Mouse X") * sensitivityX;
				
				rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
				rotationY = Mathf.Clamp (rotationY, minimumY, maximumY);
				
				transform.localEulerAngles = new Vector3 (-rotationY, rotationX, 0);
			} else if (axes == RotationAxes.MouseX) {
				transform.Rotate (0, Input.GetAxis ("Mouse X") * sensitivityX, 0);
			} else {
				rotationY += Input.GetAxis ("Mouse Y") * sensitivityY;
				rotationY = Mathf.Clamp (rotationY, minimumY, maximumY);
				
				transform.localEulerAngles = new Vector3 (-rotationY, transform.localEulerAngles.y, 0);
			}
		}
		// END OF MOUSE LOOK

	}
	
}
