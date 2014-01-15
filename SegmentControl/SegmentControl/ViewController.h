//
//  ViewController.h
//  SegmentControl
//
//  Created by Aditya Narayan on 1/14/14.
//  Copyright (c) 2014 Evan and Anar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int i;
}


@property (weak, nonatomic) IBOutlet UIButton *donaldDuckButton;
@property (weak, nonatomic) IBOutlet UILabel *sapLabel;
@property (weak, nonatomic) IBOutlet UIButton *lennysButton;
@property (weak, nonatomic) IBOutlet UILabel *flatironLabel;
@property (weak, nonatomic) IBOutlet UISwitch *fancySwitch;
@property (weak, nonatomic) IBOutlet UILabel *wiggumLabel;

@property (nonatomic, retain) NSMutableDictionary *screensDictionary;

- (IBAction)segmentSwitch:(id)sender;



@end
