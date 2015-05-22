//
//  AppDelegate.h
//  PdSynth
//
//  Created by kztskawamu on 2015/05/21.
//  Copyright (c) 2015年 cazcawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PdAudioController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic, readonly) PdAudioController *audioController;


@end

