using UnityEngine;
using System.Collections;

public class textBehavior : MonoBehaviour {

	string currentRoom = "Home";
	bool hasClothes = true;
	bool foundCash = false;
	bool hasGirl = false;

	void Start () {
	
	}

	void Update () {
		string textBuffer = "You are currently at: " + currentRoom;
		
		if ( currentRoom == "Home" ) {
			textBuffer += "\n";
			// Display text
			if(!hasGirl) {
				if (hasClothes) { //Initial scene
					textBuffer += "\nIt's 2pm now. You wake up in your apartment in Chinatown.";
					textBuffer += "\nYou look around. There is nothing but dirty clothes all over your room.";
					textBuffer += "\nYou recall the cruel fact that you are still single.";
					textBuffer += "\nYou decide to find someone in the event this afternoon.";
					textBuffer += "\n";
					textBuffer += "\nPress [D] to attend tonight's Dorkshop Event: Intro to Unity3D.";
					textBuffer += "\nPress [S] to pack dirty clothes and go to the laundry.";

					// Keyboard control
					if ( Input.GetKeyDown (KeyCode.D) ) { 
						currentRoom = "D12";
					} else if ( Input.GetKeyDown (KeyCode.S) ) {
						currentRoom = "Laundry";
					}
				}

				if (!hasClothes) { //Go back home with dirty clothes
					textBuffer += "\nYou searched everywhere inside out. But you didn't find any cash.";
					textBuffer += "\nFinally 5 dollar bill dropped from one of your dirty shirts.";
					textBuffer += "\nYou feel speechless and tired.";
					textBuffer += "\nThen you feel really hungry. You don't want to wash these clothes anymore, ";
					textBuffer += "\ninstead, you want to spend this money on LAMB KEBAB.";
					textBuffer += "\n";
					textBuffer += "\nPress [W] to throw away the dirty clothes and then";
					textBuffer += "\nget some lamb kabab before going to the Dorkshop.";
					textBuffer += "\nPress [A] to still go to the laundry";
					textBuffer += "\nbefore going to the Dorkshop.";
					foundCash = true;

					// Keyboard control
					if ( Input.GetKeyDown (KeyCode.W) ) {
						currentRoom = "D12";
						hasClothes = true;
					} else if ( Input.GetKeyDown (KeyCode.A) ) {
						currentRoom = "D12";
						hasClothes = false;
					}
				}

			} else {

				if (hasClothes) { // Bring the girl back home but has dirty clothes
					textBuffer += "\nThe girl accepted your invitation and you happily took her home.";
					textBuffer += "\nBut when you opened your door,";
					textBuffer += "\nDIRTY CLOTHES and the smell were all over your room.";
					textBuffer += "\nYou feel so regreted not to wash these clothes during the day.";
					textBuffer += "\n";
					textBuffer += "\nThe girl left without notice and you never saw her again from that day.";
					textBuffer += "\n";
					textBuffer += "\nPress [B] to time travel to the beginning of this day or close the tab.";
					
					// Keyboard control
					if (Input.GetKeyDown (KeyCode.B) ) {
						currentRoom = "Home";
						hasClothes = true;
						foundCash = false;
						hasGirl = false;
					}
				}

				if (!hasClothes) { // Bring the girl back home with clean room
					textBuffer += "\nThe girl accepted your invitation and you happily took her home.";
					textBuffer += "\nWhen you opened the door, everything was clean and tidy.";
					textBuffer += "\nThe girl seemed very happy, and you two studied until late night.";
					textBuffer += "\nYou sent the girl back home, and picked up the clothes on the way back.";
					textBuffer += "\n";
					textBuffer += "\nYou two were since then hanging out at D12 all the time.";
					textBuffer += "\nYou feel everything is worthy.";
					textBuffer += "\n";
					textBuffer += "\nPress [B] to relive this day or close the tab.";
					
					// Keyboard control
					if (Input.GetKeyDown (KeyCode.B) ) {
						currentRoom = "Home";
						hasClothes = true;
						foundCash = false;
						hasGirl = false;
					}
				}

			}

		} else if ( currentRoom == "D12" ) {
			textBuffer += "\n";

			// Display text
			if ( hasClothes && !foundCash ) {
				textBuffer += "\nIt's too early. Noboday's here yet.";
				textBuffer += "\n";
				textBuffer += "\nPress [B] to say hello to friends in D12 and go back home.";

				// Keyboard control
				if ( Input.GetKeyDown (KeyCode.B) ) { 
					currentRoom = "Home";
				}
			} 

			if ( !hasClothes && !foundCash) {
				textBuffer += "\nWhat is WRONG with you? It's not time yet.";
				textBuffer += "\nWhat are you doing here with your dirty and smelly clothes?";
				textBuffer += "\n";
				textBuffer += "\nPress [B] to go back home without saying hello to ANYONE.";

				// Keyboard control
				if ( Input.GetKeyDown (KeyCode.B) ) { 
					currentRoom = "Home";
				}
			}

			if ( hasClothes && foundCash) { // Bring lamb kebab to the dorkshop
				textBuffer += "\nThe dorkshop has finally began. You sit next to a pretty girl.";
				textBuffer += "\nYou two had a nice chat and you gave out two lamb kebabs to the girl.";
				textBuffer += "\n2 hours is really fast. You barely learnt anything about Unity3D, but";
				textBuffer += "\nyou really enjoyed talking to the girl next to you.";
				textBuffer += "\nNow it's time to go back home.";
				textBuffer += "\n";
				textBuffer += "\nPress [P] to send the girl back home.";
				textBuffer += "\nPress [B] to invite the girl to your home to study Unity3D.";

				// Keyboard control
				if ( Input.GetKeyDown (KeyCode.B) ) { 
					currentRoom = "Home";
					hasGirl = true;
				} else if ( Input.GetKeyDown (KeyCode.P) ) {
					currentRoom = "Dead End";
				}
			}

			if ( !hasClothes && foundCash) { // Wash dirty clothes before dorkshop
				textBuffer += "\nThe dorkshop has finally began. You sit next to a pretty girl.";
				textBuffer += "\nYou really want to talk to her but you are too tired and hungry.";
				textBuffer += "\nLuckily you learnt very fast, so you helped her figure out terrain system.";
				textBuffer += "\nAt the end of dorkshop, she even asked for your further help in the future.";
				textBuffer += "\nNow it's time to go back home.";
				textBuffer += "\n";
				textBuffer += "\nPress [P] to send the girl back home.";
				textBuffer += "\nPress [B] to invite the girl to your home to study Unity3D.";
				
				// Keyboard control
				if ( Input.GetKeyDown (KeyCode.B) ) { 
					currentRoom = "Home";
					hasGirl = true;
				} else if ( Input.GetKeyDown (KeyCode.P) ) {
					currentRoom = "Dead End";
				}
			} 

		} else if ( currentRoom == "Laundry" ) {
			textBuffer += "\n";

			// Display text
			if (!foundCash) {
				textBuffer += "\nOops... You forgot to bring cash to wash your dirty clothes.";
				textBuffer += "\n";
				textBuffer += "\nPress [B] to go back home and get some cash.";
				textBuffer += "\nPress [D] to attend Dorkshop directly.";
				hasClothes = false;
			} 

			// Keyboard control
			if (Input.GetKeyDown (KeyCode.B) ) {
				currentRoom = "Home";
			} else if (Input.GetKeyDown (KeyCode.D) ) {
				currentRoom = "D12";
			}

		} else if ( currentRoom == "Dead End") {
			textBuffer += "\n";

			// Display text
			textBuffer += "\nYou safely sent her back home. You are so nice and gentle.";
			textBuffer += "\nThe girl thanked you for everything you did and said goodbye to you.";
			textBuffer += "\n";
			textBuffer += "\nYou never saw her again in D12 from that day.";
			textBuffer += "\n";
			textBuffer += "\nPress [B] to time travel to the beginning of this day or close the tab.";

			// Keyboard control
			if (Input.GetKeyDown (KeyCode.B) ) {
				currentRoom = "Home";
				hasClothes = true;
				foundCash = false;
				hasGirl = false;
			}

		}

		GetComponent<TextMesh>().text = textBuffer;
	}
}
