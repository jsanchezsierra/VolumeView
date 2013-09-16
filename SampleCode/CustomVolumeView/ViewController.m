//
//  ViewController.m
//  CustomVolumeView
//
//  Created by Javier Sanchez on 9/16/13.
//  Copyright (c) 2013 Javier Sanchez. All rights reserved.
//

#import "ViewController.h"
#import "VolumeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    VolumeView *volumeView= [[VolumeView alloc] initWithFrame:CGRectMake(175, 335, 110, 55 )  ];
    [self.view addSubview:volumeView];

    [volumeView setNumberOfBars:7];
    [volumeView setBarsColorMin:[UIColor greenColor]];
    [volumeView setBarsColorMax:[UIColor redColor]];

    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setDelegate: self];
    [session setCategory: AVAudioSessionCategoryPlayback error: nil];
    [session setActive: YES error: nil];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
