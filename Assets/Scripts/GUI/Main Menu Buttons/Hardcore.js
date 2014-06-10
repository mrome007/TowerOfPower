#pragma strict
@script RequireComponent(AudioSource)

var sound : AudioClip;
var hardcoreNormal : Texture2D;
var hardcoreHover : Texture2D;

function Start () {

}

function OnMouseEnter () {

	guiTexture.texture = hardcoreHover;

}

function OnMouseExit () {

	guiTexture.texture = hardcoreNormal;

}

function OnMouseDown () {
	audio.PlayOneShot(sound,1);
	Application.LoadLevel("TheGameHardcore");

}