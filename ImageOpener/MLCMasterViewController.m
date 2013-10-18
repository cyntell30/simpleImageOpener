//
//  MLCMasterViewController.m
//  ImageOpener
//
//  Created by Roberto Osorio on 10/18/13.
//  Copyright (c) 2013 Malloc Media LLC. All rights reserved.
//

#import "MLCMasterViewController.h"

@interface MLCMasterViewController ()

@property (nonatomic, strong) NSImageView *imageView;

@end

@implementation MLCMasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

static NSArray * openFiles()
{
    NSOpenPanel * panel = [NSOpenPanel openPanel];
    [panel setAllowsMultipleSelection:NO];
    [panel setCanChooseDirectories:NO];
    [panel setCanChooseFiles:YES];
    [panel setFloatingPanel:YES];
    NSInteger result = [panel runModal];
    if(result == NSOKButton)
    {
        return [panel URLs];
    }
    return nil;
}

- (IBAction)openImage:(id)sender
{
    NSArray * paths = openFiles();
    
    if(paths)
    {
        NSImage * aimage = [[NSImage alloc] initWithContentsOfURL:[paths objectAtIndex:0]];
        if (self.imageView) {
            [self.imageView setImage:nil];
            self.imageView = nil;
        }
        self.imageView = [[NSImageView alloc] initWithFrame:CGRectMake(0, 0, aimage.size.width, aimage.size.height)];
        [self.imageView setImage:aimage];
        [self.view addSubview:self.imageView];
    }
}

@end
