#pragma strict
@script RequireComponent(AudioSource)

var sound : AudioClip;
var exitNormal : Texture2D;
var exitHover : Texture2D;

function Start () {

}

function OnMouseEnter () {

	guiTexture.texture = exitHover;

}

function OnMouseExit () {

	guiTexture.texture = exitNormal;

}

function OnMouseDown () {

	audio.PlayOneShot(sound,1);
	Application.Quit();
	
}