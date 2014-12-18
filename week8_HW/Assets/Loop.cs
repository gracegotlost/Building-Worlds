using UnityEngine;
using System.Collections;

public class Loop : MonoBehaviour {

	public Transform white;
	public Transform yellow;
	public Transform black;
	public Vector3 current;

	public float countX;
	public float countY;
	public float countZ;
	public float intervalX;
	public float intervalY;
	public float intervalZ;

	float initX;
	float initY;

	// Use this for initialization
	void Start () {
		initX = current.x;
		initY = current.y;

		StartCoroutine ( Head() );
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.R)) {
			Application.LoadLevel(0);
		}
	}

	IEnumerator Head(){
		while (true) {
			//Debug.Log(Random.Range(0, 3));

			if (current.z > countZ) {
				switch(Random.Range(0, 3)) {
				case 0:
					Instantiate (white, current, Quaternion.identity);
					break;
				case 1:
					Instantiate (yellow, current, Quaternion.identity);
					break;
				case 2:
					Instantiate (black, current, Quaternion.identity);
					break;
				default:
					break;
				}
			}

			current.y += intervalY;
			if (current.y > countY) {
				current.y = initY;
				current.x -= intervalX;
				if (current.x < countX) {
					current.x = initX;
					current.z -= intervalZ;
				}
			}

			yield return new WaitForSeconds(1.0f);
		}
	}
}
