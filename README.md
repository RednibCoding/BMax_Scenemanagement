# BMax_Scenemanagement
This project makes it possible to have kind of a scene like management in BMax.
Classes:
 - TComposer
 - TScene

The code should be commented enough to get a basic understanding of how it works.

Otherwise for a quick tutorial in german on how to use them, visit: https://www.blitzforum.de/forum/viewtopic.php?t=40847

Basically create a TComposer instance and call the "goToScene(sceneName:String)" method to switch scenes.

Each scene you are creating must inherit from TScene.
Each scene must have a unique name in order to call it via "goToScene(sceneName:String)".

Just look at the working example:
- main.bmx
- mainmenu.bmx
- titlescreen.bmx
- level01.bmx


