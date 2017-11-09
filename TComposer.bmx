
Rem
	Class for manageing scenes
	
	required: TScene.bmx
	
	by: Michael Binder Nov-2017

End Rem

Type TComposer
	
	Global sceneList:TList = New TList
	Field _currentScene:TScene
	Field _lastScene:TScene
	
	
	Method goToScene(sceneName:String)
		For Local scene:TScene = EachIn sceneList
			' If a scene with name "sceneName" exist set it as current scene to show
			If scene.name = sceneName
				_lastScene = _currentScene
				_currentScene = scene
				Exit
			EndIf
		Next
	End Method
	
	Method showCurrentScene()
		If _currentScene <> Null
			' If lastScene exist -> hide it before showing the new one
			If _lastScene <> Null
				_lastScene.hide()
			EndIf
			_currentScene.show()
		Else
			DrawText("Scene does not exist!", 10, 10)
			DrawText("Scenes loaded: " + sceneList.count(), 10, 20)
		EndIf
	End Method
	
	Method currentScene:String()
		Return _currentScene.name
	End Method
	
	Method lastScene:String()
		Return _currentScene.name
	End Method
	
	Method removeScene(sceneName:String)
		For Local scene:TScene = EachIn sceneList
			' If a scene with name "sceneName" exist then remove it from the list
			If scene.name = sceneName
				' make sure it's not the current shown scene
				If _currentScene = scene
					Print(scene.name + " is the current shown scene, so it cant be deleted")
				Else
					' remove the scene from the list
					sceneList.Remove(scene)
					' also make sure if it was the last shown scene, set _lastScene to Null
					If _lastScene = scene
						_lastScene = Null
					EndIf
				EndIf
				
				Exit
			EndIf
		Next
	End Method
	
	Method removeLastScene()
		For Local scene:TScene = EachIn sceneList
			' If a scene _lastScene exist then remove it from the list
			If scene = _lastScene
				' make sure it's not the current shown scene
				If _currentScene = scene
					Print(scene.name + " is the current shown scene, so it can't be deleted")
				Else
					' remove the scene from the list
					sceneList.Remove(scene)
					' also make sure to set _lastScene to Null
					If _lastScene = scene
						_lastScene = Null
					EndIf
				EndIf
				
				Exit
			EndIf
		Next
	End Method
End Type













