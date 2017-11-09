
Rem 
	Class for a scene
	Required: TComposer
	by: Michael Binder Nov-2017


	A scene can be the "title menue", the "game over" screen, different levels in a game etc.
	Each scene must inherit from this class in order to work with the composer class
	Each scene can be created in it's class file after the class definition, however, be aware of memory,
	as it loads all scenes into memory at once at the start of the game
	example:
	Type MainMenu extends TScene
	...
	...
	End Type
	MainMenu.Create()

	The composer holds the reference to each scene, so there is no need to do it manually

End Rem

Type TScene
	' name must unique
	Field name:String
	
	Method New()
		' Register this scene, so the composer knows of it's existence
		TComposer.sceneList.Addlast(Self)
	End Method
	
	' Code to create the scene goes here (eg. loading images/sounds etc.)
	' This function must be called after the inheriting class definition (see example above)
	Function Create() Abstract
	
	' Code to show the scene goes here (eg. drawing images, playing sounds, game logic etc.)
	Method show() Abstract
	
	' When another scene is going to be shown, this method will automaticly be called by the composer, so this method should NOT be called manually
	' Code to prepare the scene to be hidden goes here (eg. stop playing sounds of this scene etc.)
	Method hide() Abstract
End Type












