using UnityEngine;
using System.Collections;

public class machine : MonoBehaviour {

	// Declare each part of the body
	GameObject face;
	GameObject leftarm;
	GameObject rightarm;
	GameObject leftup;
	GameObject leftdown;
	GameObject rightup;
	GameObject rightdown;

	// Random side
	int side;

	void Start () {
		// Initialization
		face = GameObject.Find ("/PsyMachine");
		leftarm = GameObject.Find ("/PsyMachine/leftarm");
		rightarm = GameObject.Find ("/PsyMachine/rightarm");
		leftup = GameObject.Find ("/PsyMachine/leftup");
		leftdown = GameObject.Find ("/PsyMachine/leftdown");
		rightup = GameObject.Find ("/PsyMachine/rightup");
		rightdown = GameObject.Find ("/PsyMachine/rightdown");

		StartCoroutine ( Dance() );
	}
	
	// COROUTINE
	IEnumerator Dance () {
		while ( true ) { 

			// Dance
			// Dong
			side = Random.Range(0, 2);
			// Up
			face.transform.position += new Vector3( 0, 1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, 0.2f, 0);
			rightarm.transform.position += new Vector3( 0, 0.2f, 0);

			if ( side == 0 ){
				leftup.transform.Rotate(0, 0, -20);
				leftdown.transform.position += new Vector3(-0.2f, 0.1f, 0);
				leftdown.transform.Rotate(0, 0, -20);
			} else {
				rightup.transform.Rotate(0, 0, 20);
				rightdown.transform.position += new Vector3(0.3f, 0.1f, 0);
				rightdown.transform.Rotate(0, 0, 20);
			}
			yield return new WaitForSeconds(0.05f);
			// Down
			face.transform.position += new Vector3( 0, -1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, -0.2f, 0);
			rightarm.transform.position += new Vector3( 0, -0.2f, 0);

			if ( side == 0 ) {
				leftup.transform.Rotate(0, 0, 20);
				leftdown.transform.position += new Vector3(0.2f, -0.1f, 0);
				leftdown.transform.Rotate(0, 0, 20);
			} else {
				rightup.transform.Rotate(0, 0, -20);
				rightdown.transform.position += new Vector3(-0.3f, -0.1f, 0);
				rightdown.transform.Rotate(0, 0, -20);
			}
			yield return new WaitForSeconds(0.20f);

			// Dong
			side = Random.Range(0, 2);
			// Up
			face.transform.position += new Vector3( 0, 1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, 0.2f, 0);
			rightarm.transform.position += new Vector3( 0, 0.2f, 0);

			if ( side == 0 ){
				leftup.transform.Rotate(0, 0, -20);
				leftdown.transform.position += new Vector3(-0.2f, 0.1f, 0);
				leftdown.transform.Rotate(0, 0, -20);
			} else {
				rightup.transform.Rotate(0, 0, 20);
				rightdown.transform.position += new Vector3(0.3f, 0.1f, 0);
				rightdown.transform.Rotate(0, 0, 20);
			}
			yield return new WaitForSeconds(0.05f);
			// Down
			face.transform.position += new Vector3( 0, -1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, -0.2f, 0);
			rightarm.transform.position += new Vector3( 0, -0.2f, 0);

			if ( side == 0 ) {
				leftup.transform.Rotate(0, 0, 20);
				leftdown.transform.position += new Vector3(0.2f, -0.1f, 0);
				leftdown.transform.Rotate(0, 0, 20);
			} else {
				rightup.transform.Rotate(0, 0, -20);
				rightdown.transform.position += new Vector3(-0.3f, -0.1f, 0);
				rightdown.transform.Rotate(0, 0, -20);
			}
			yield return new WaitForSeconds(0.20f);

			// Da
			side = Random.Range(0, 2);
			// Up
			face.transform.position += new Vector3( 0, 1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, 0.2f, 0);
			rightarm.transform.position += new Vector3( 0, 0.2f, 0);

			if ( side == 0 ){
				leftup.transform.Rotate(0, 0, -20);
				leftdown.transform.position += new Vector3(-0.2f, 0.1f, 0);
				leftdown.transform.Rotate(0, 0, -20);
			} else {
				rightup.transform.Rotate(0, 0, 20);
				rightdown.transform.position += new Vector3(0.3f, 0.1f, 0);
				rightdown.transform.Rotate(0, 0, 20);
			}
			yield return new WaitForSeconds(0.05f);
			// Down
			face.transform.position += new Vector3( 0, -1f, 0);
			yield return new WaitForSeconds(0.05f);
			leftarm.transform.position += new Vector3( 0, -0.2f, 0);
			rightarm.transform.position += new Vector3( 0, -0.2f, 0);

			if ( side == 0 ) {
				leftup.transform.Rotate(0, 0, 20);
				leftdown.transform.position += new Vector3(0.2f, -0.1f, 0);
				leftdown.transform.Rotate(0, 0, 20);
			} else {
				rightup.transform.Rotate(0, 0, -20);
				rightdown.transform.position += new Vector3(-0.3f, -0.1f, 0);
				rightdown.transform.Rotate(0, 0, -20);
			}
			yield return new WaitForSeconds(0.85f);

		}
	}

}
