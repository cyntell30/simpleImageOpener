//
//  MLCAppDelegate.h
//  ImageOpener
//
//  Created by Roberto Osorio on 10/18/13.
//  Copyright (c) 2013 Malloc Media LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MLCMasterViewController.h"

@interface MLCAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, strong) MLCMasterViewController *masterViewController;

@end
