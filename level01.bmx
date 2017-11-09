
Rem
	A minimalistic scene inheriting from TScene to work with TComposer
	by: Michael Binder Nov-2017

End Rem

Type Level01 Extends TScene

	' Code to create the scene goes here (eg. loading images/sounds etc.)
	Function Create()
		Local scene:Level01 = New Level01
		' name must be set and unique, as the composer identifies each scene by it's name
		' because a scene can be called by it's name through the TComposer.(see TComposer.goToScene)
		scene.name = "level01"
	End Function
	
	' Code to show the scene goes here (eg. drawing images, playing sounds, game logic etc.)
	Method show()
		DrawText("Level 01", 200, 200)
	End Method
	
	' When another scene is going to be shown, this method will automaticly be called by the composer
	' So code to prepare the scene to be hidden goes here (eg. stop playing sounds of this scene etc.)
	Method hide()
	End Method
End Type

' Call the create function to create an instance of this scene
' The composer holds the reference to each scene
' Don't call this in the Class file if memory is a problem,
' because calling it here will load all scenes at once into memory when the game starts
Level01.Create()