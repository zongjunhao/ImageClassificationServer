e:
cd E:\IdeaProjects\ImageClassificationServer\target\ImageClassificationServer\
python train.py
copy /y labels.txt E:\Android-workspace\ClassifyWithTFLite\app\src\main\assets\labels.txt
copy /y model.tflite E:\Android-workspace\ClassifyWithTFLite\app\src\main\assets\model.tflite
cd E:\Android-workspace\ClassifyWithTFLite
gradlew assembleRelease
copy /y app\build\outputs\apk\release\app-release.apk E:\IdeaProjects\ImageClassificationServer\target\ImageClassificationServer\app-release.apk
pause