# Project Plan


The idea behind this project is to create a tool that will take as input a video of a person singing, and output a video of a collage of images that have been matched frame by frame to the source video.

The output video should map the matched face to the proportions and location of the original face in each frame, but without removing the background, etc. The idea here isn't to create a deepfake, but the impression that a lot of individual people are singing the song.

## Components
* A script that will take a video file and slice it into individual frames
* A large dataset with pictures of people (instagram would be ideal)
* A face detection job that will record the co-ordinates of a the face in each frame from the source video

