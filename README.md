VolumeView
==========

Custom Volume View for iOS

![Screenshot](https://raw.github.com/jsanchezsierra/VolumeView/master/screenshots/screenshot1.jpg)

## Overview

The VolumeView Class allows you to set a custom volume view with the following configurable properties:

* Size of the volume view
* Number of bars of the volumen view
* Bar colors of the volume view 

You need to create an Audio Session to use the VolumeView (See 'Creating an Audio Session' section below) 


## Installation

1.- Add the MediaPlayer.framework to your project

    Go to your target -> Build Phases -> Link Binay with Libraries, and add the MediaPlayer.framework

2.- Add the following files to your project:

* VolumeView.h
* VolumeView.m  

3.- Create an instance of the Class with the size of the volume view ( frame )

    VolumeView *volumeView= [[VolumeView alloc] initWithFrame:CGRectMake(175, 335, 110, 55 )  ];

4.- Add the volumenView to the view

    [self.view addSubview:volumeView];

5.- Set 'number of bars' and 'bar colors' (optional)

    [volumeView setNumberOfBars:7];
    [volumeView setBarsColorMin:[UIColor greenColor]];
    [volumeView setBarsColorMax:[UIColor redColor]];
    
## Creating an Audio Session

You need to create an Audio Session to use the VolumeView class. Follow these steps:

1.- Add the AVFoundation.framework to your project

    Go to your target -> Build Phases -> Link Binay with Libraries, and add the AVFoundation framework

2.- Import the framework 

    #import <AVFoundation/AVFoundation.h>

3.- Create the audio session

    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setDelegate: self];
    [session setCategory: AVAudioSessionCategoryPlayback error: nil];
    [session setActive: YES error: nil];

3.- Add the AVAudioSessionDelegate on your controller header file:

    ...
    
    @interface ViewController : UIViewController <AVAudioSessionDelegate>
    
    ...
    ...


## Sample Code

You can find an Xcode project 'CustomVolumenView.xcodeproj' with an example of use of the VolumeView Class



