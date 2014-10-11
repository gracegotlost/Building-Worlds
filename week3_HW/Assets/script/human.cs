using UnityEngine;
using System.Collections;

public class human : MonoBehaviour {

	// Declare each part of the body
	GameObject face;
	GameObject leftarm;
	GameObject rightarm;
	GameObject leftup;
	GameObject leftdown;
	GameObject rightup;
	GameObject rightdown;

	void Start () {
		// Initialization
		face = GameObject.Find ("/PsyHuman");
		leftarm = GameObject.Find ("/PsyHuman/leftarm");
		rightarm = GameObject.Find ("/PsyHuman/rightarm");
		leftup = GameObject.Find ("/PsyHuman/leftup");
		leftdown = GameObject.Find ("/PsyHuman/leftdown");
		rightup = GameObject.Find ("/PsyHuman/rightup");
		rightdown = GameObject.Find ("/PsyHuman/rightdown");

	}

	void Update () {
		if (Input.GetKeyDown (KeyCode.LeftArrow)) {
			StartCoroutine ( DanceLeft() );
		}
		if (Input.GetKeyDown (KeyCode.RightArrow)) {
			StartCoroutine ( DanceRight() );
		}
	}

	IEnumerator DanceLeft () {
		// Up
		face.transform.position += new Vector3( 0, 1f, 0);
		yield return new WaitForSeconds(0.05f);
		leftarm.transform.position += new Vector3( 0, 0.2f, 0);
		rightarm.transform.position += new Vector3( 0, 0.2f, 0);
		leftup.transform.Rotate(0, 0, -20);
		leftdown.transform.position += new Vector3(-0.2f, 0.1f, 0);
		leftdown.transform.Rotate(0, 0, -20);
		yield return new WaitForSeconds(0.05f);
		// Down
		face.transform.position += new Vector3( 0, -1f, 0);
		yield return new WaitForSeconds(0.05f);
		leftarm.transform.position += new Vector3( 0, -0.2f, 0);
		rightarm.transform.position += new Vector3( 0, -0.2f, 0);
		leftup.transform.Rotate(0, 0, 20);
		leftdown.transform.position += new Vector3(0.2f, -0.1f, 0);
		leftdown.transform.Rotate(0, 0, 20);
	}

	IEnumerator DanceRight () {
		// Up
		face.transform.position += new Vector3( 0, 1f, 0);
		yield return new WaitForSeconds(0.05f);
		leftarm.transform.position += new Vector3( 0, 0.2f, 0);
		rightarm.transform.position += new Vector3( 0, 0.2f, 0);
		rightup.transform.Rotate(0, 0, 20);
		rightdown.transform.position += new Vector3(0.3f, 0.1f, 0);
		rightdown.transform.Rotate(0, 0, 20);
		yield return new WaitForSeconds(0.05f);
		// Down
		face.transform.position += new Vector3( 0, -1f, 0);
		yield return new WaitForSeconds(0.05f);
		leftarm.transform.position += new Vector3( 0, -0.2f, 0);
		rightarm.transform.position += new Vector3( 0, -0.2f, 0);
		rightup.transform.Rotate(0, 0, -20);
		rightdown.transform.position += new Vector3(-0.3f, -0.1f, 0);
		rightdown.transform.Rotate(0, 0, -20);
	}

}
