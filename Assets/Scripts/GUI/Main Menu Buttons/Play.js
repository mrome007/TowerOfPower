#pragma strict
@script RequireComponent(AudioSource)

var sound : AudioClip;
var playNormal : Texture2D;
var playHover : Texture2D;

function Start () {

}

function OnMouseEnter () {

	guiTexture.texture = playHover;

}

function OnMouseExit () {

	guiTexture.texture = playNormal;

}

function OnMouseDown () {
	audio.PlayOneShot(sound,1);
	Application.LoadLevel("TheGameNoRed");

}