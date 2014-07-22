//
//  LRCDetailViewController.m
//  PassingDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/21/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCDetailViewController.h"

@interface LRCDetailViewController () <UITextFieldDelegate> 


@end

@implementation LRCDetailViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.textFromTextField)
        self.label.text = self.textFromTextField;
    
    self.textField.delegate = self;
}


- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    self.label.text = textField.text;
    [self.delegate didUpdateText:self.textField.text];
    
    self.textField.text = @""; 
    
    [textField resignFirstResponder];
    
    return YES;
}




@end
