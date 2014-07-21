//
//  LRCViewController.m
//  PassingDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/20/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCViewController.h"
#import "LRCDetailViewController.h"

@interface LRCViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *textFromTextField;

@end

@implementation LRCViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.textField.delegate = self;

    
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    // get text from textfield and assign it to textFromTextField
    self.textFromTextField = textField.text;
    [textField resignFirstResponder];

    
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"" message:@"Click on next on the top right corner, or enter different text" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alertview show];
    
    return YES;
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIBarButtonItem class]]){
        NSLog(@"it is a uibarbuttonitem class");
        if ([segue.destinationViewController isKindOfClass:[LRCDetailViewController class]])
        {
            NSLog(@"it is lrcdetailviewcontroller class");
            LRCDetailViewController *nextViewController = segue.destinationViewController;
            nextViewController.textFromTextField = self.textFromTextField;
            NSLog(@"%@", nextViewController.textFromTextField);
            
            
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
