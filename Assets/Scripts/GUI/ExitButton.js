#pragma strict
var exitNormal : Texture2D;
var exitHover : Texture2D;
var txtToPrint="bla";

function Start () {

}

function OnMouseEnter () {

	guiTexture.texture = exitHover;

}

function OnMouseExit () {

	guiTexture.texture = exitNormal;

}

function OnMouseDown () {

	Application.Quit();
	Debug.Log(txtToPrint);
}