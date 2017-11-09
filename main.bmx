
Rem
	Simple example of setting up a game with proper scene management via TComposer and TScene
	by: Michael Binder Nov-2017


End Rem


SuperStrict

' Including the composer and scene class
Include "TComposer.bmx"
Include "TScene.bmx"

' Including scenes
Include "titlescreen.bmx"
Include "mainmenu.bmx"
Include "level01.bmx"

' Set the graphics mode
Graphics 1024, 768


' Create a new composer instance
Local composer:TComposer = New TComposer

' manually create a scene on demand (delete the Create command in the Class file if the Create command is called somewhere else)
' this can be made, on bigger projects if memory is not enough
'Level01.Create()	' <-- this call must happen before calling the scene through the composer (composer.goToScene("level01")

' set the first scene
composer.goToScene("titlescreen")


While Not AppTerminate()
	
	' determine what seen has to be shown
	If KeyHit(KEY_1)
		composer.goToScene("titlescreen")
	ElseIf KeyHit(KEY_2)
		composer.goToScene("mainmenu")
	ElseIf KeyHit(KEY_3)
		composer.goToScene("level01")
	EndIf
	
	' Remove a scene from memory
	' "composer.removeLastScene()" is equivalent to the below statement, except it automatlically removes the last loaded scene
	If KeyHit(KEY_SPACE)
		composer.removeScene("level01")
	EndIf
	
	' show the scene
	composer.showCurrentScene()
	
	Flip();Cls()
Wend



