//
//  ViewController.m
//  SegmentControl
//
//  Created by Aditya Narayan on 1/14/14.
//  Copyright (c) 2014 Evan and Anar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    i = 0;
    
    self.screensDictionary = [[NSMutableDictionary alloc] init ];
    
    [self segmentSwitch:0];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentSwitch:(id)sender {
    
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            self.donaldDuckButton.hidden = NO;
            self.sapLabel.hidden = NO;
            self.lennysButton.hidden = YES;
            self.flatironLabel.hidden = YES;
            self.fancySwitch.hidden = YES;
            self.wiggumLabel.hidden = YES;
            [self recordScreen];
            break;
        case 1:
            self.donaldDuckButton.hidden = YES;
            self.sapLabel.hidden = YES;
            self.lennysButton.hidden = NO;
            self.flatironLabel.hidden = NO;
            self.fancySwitch.hidden = YES;
            self.wiggumLabel.hidden = YES;
            [self recordScreen];
            break;
        case 2:
            self.donaldDuckButton.hidden = YES;
            self.sapLabel.hidden = YES;
            self.lennysButton.hidden = YES;
            self.flatironLabel.hidden = YES;
            self.fancySwitch.hidden = NO;
            self.wiggumLabel.hidden = NO;
            [self recordScreen];
        default:
            break;
    }
    
}

//Adding test comment for git

//First commit

//Second commit

-(void)recordScreen {
    
    BOOL screenWasFound = NO;
    
    //create unhiddenSubviews array to add subviews of view that are unhidden
    
    NSMutableArray *unhiddenSubviews = [[NSMutableArray alloc] init];
    
    
    
    // use for loop to go through all subviews of current view
    
    for (UIView *subview in self.view.subviews) {
        
    //if subview is NOT hidden, add to array
        
        if (!subview.hidden) {
            [unhiddenSubviews addObject:subview];
        }
    }

    
    for (id key in self.screensDictionary) {
        
       //if subviews have already been added to screensDictionary
        
        
        if ([unhiddenSubviews isEqual:[self.screensDictionary objectForKey:key]]) {
            NSLog(@"You are on %@", key);
            
            screenWasFound = YES;
        }
        
    }
    
    // if screen was not found
    
    
    if (!screenWasFound) {
        i += 1;
        
        // if subview is NOT hidden, add subview to screensDictionary
        
            
        [self.screensDictionary setObject:unhiddenSubviews forKey:[NSString stringWithFormat:@"Screen%i", i]];

        
        //[self.screensDictionary setObject:[self.view.subviews copy] forKey:[NSString stringWithFormat:@"Screen%i", i]];
        NSLog(@"%@ was added", [NSString stringWithFormat:@"Screen%i", i]);
    }
    
}
@end
