using UnityEngine;
using System.Collections;

public class PullUp : MonoBehaviour {

	public float offset;

	float pmouseY;
	GameObject pullup;
	GameObject pole;
	GameObject basePole;
	GameObject topPole;

	// Use this for initialization
	void Start () {
		pullup = GameObject.Find ("/PullUp");
		pole = GameObject.Find ("/Pole");
		basePole = GameObject.Find("/PoleHiddenBase");
		topPole = GameObject.Find ("/PullUp/PoleHiddenTop");
	}
	
	// Update is called once per frame
	void Update () {
		pmouseY = Input.mousePosition.y;
	}

	void OnMouseDrag() {
		float temp = (topPole.transform.position.y + basePole.transform.position.y) * 0.5f;
		float tempScale = Mathf.Sqrt((temp - 2.76f) * 10f);

		if (temp >= 3f && temp <= 4.4f){
			pullup.transform.position += new Vector3 (0,( Input.mousePosition.y - pmouseY ) * Time.deltaTime * offset, 0);

			pole.transform.position = new Vector3 (pole.transform.position.x, 
			                                       temp, 
			                                       pole.transform.position.z);
			pole.transform.localScale = new Vector3 ( tempScale, 
			                                         pole.transform.localScale.y, 
			                                         pole.transform.localScale.z);
			//Debug.Log (pole.transform.localScale.x);
			//Debug.Log (Input.mousePosition.y - pmouseY);
			//Debug.Log ("Is dragging!");
		} else if (temp < 3f) {
			pullup.transform.position = new Vector3 (pullup.transform.position.x, 
			                                         4.44f,
			                                         pullup.transform.position.z);
		} else if (temp > 4.4f) {
			pullup.transform.position = new Vector3 (pullup.transform.position.x, 
			                                          7.24f,
			                                          pullup.transform.position.z);
		}
	}
}
