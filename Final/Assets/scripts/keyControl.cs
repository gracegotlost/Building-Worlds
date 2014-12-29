using UnityEngine;
using System.Collections;

public class keyControl : MonoBehaviour {

	public float offsetMove = 10.0f;

	private trainMove2 train;

	public AudioSource[] players;
	public AudioSource player;
	public AudioSource player2;
	public AudioSource player3;

	float TimeToDie = 0f;
	float PosMin = -12.26f;
	float PosMax = -7.45f;

	bool hasDied = false;
	bool isIn = false;

	// Use this for initialization
	void Start () {
		train = FindObjectOfType (typeof(trainMove2)) as trainMove2;
		players = GetComponents<AudioSource> ();
		player  = players [2];
		player2 = players [3];
		player3 = players [4];
	}
	
	// Update is called once per frame
	void Update () {
		// TO DIE OR NOT TO DIE
		if (train.isArriving) {
			if (transform.position.z > -8.8f && !player.isPlaying && !player2.isPlaying && !hasDied) {
				player.Play ();
				player2.Play ();
				hasDied = true;
				TimeToDie = Time.time + 2f;
			} else if (hasDied && Time.time < TimeToDie) {
				rigidbody.useGravity = true;
				rigidbody.drag = 10f;
			}
			//Debug.Log("isArriving");
		} else if (train.isWaiting) {
			if (transform.position.z > -8f && !player3.isPlaying && !isIn) {
				player3.Play ();
				isIn = true;
			}
			//Debug.Log("isWaiting");
		} else if (train.isDeparting) {
			if (transform.position.z > -8.8f && !player.isPlaying && !player2.isPlaying && !hasDied) {
				player.Play ();
				player2.Play ();
				hasDied = true;
				TimeToDie = Time.time + 2f;
			} else if (hasDied && Time.time < TimeToDie) {
				rigidbody.useGravity = true;
				rigidbody.drag = 10f;
			}
			//Debug.Log("isDeparting");
		} else {
			if (transform.position.z > -8.8f && !player.isPlaying) {
				rigidbody.useGravity = true;
				rigidbody.drag = 7f;
				player.Play ();
			}
			//Debug.Log("You are waiting...");
		}

		if (transform.position.y < -0.9f || (Time.time > TimeToDie && hasDied) || (isIn && train.isDeparting)) {
			Application.LoadLevel(0);
		}

		// KEY CONTROL
		if (Input.GetKey (KeyCode.W) && !hasDied && transform.position.z < PosMax) {
			rigidbody.AddForce(transform.forward * offsetMove);
		} else if (Input.GetKey (KeyCode.S) && !hasDied && transform.position.z > PosMin) {
			rigidbody.AddForce(-transform.forward * offsetMove);
		}
	}
	
}
