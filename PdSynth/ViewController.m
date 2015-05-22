//
//  ViewController.m
//  PdSynth
//
//  Created by kztskawamu on 2015/05/21.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [PdBase openFile:@"Synthesizer.pd" path:[[NSBundle mainBundle] resourcePath]];
    if (![PdBase openFile:@"Synthesizer.pd" path:[[NSBundle mainBundle] resourcePath]]) {
        NSLog(@"Failed to open patch!");
    }
    [PdBase sendFloat:56.0 toReceiver:@"pitch"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bang:(id)sender {
    [PdBase sendBangToReceiver:@"bang"];
}

@end
