//
//  LRCDetailViewController.h
//  PassingDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/21/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LRCDetailViewControllerDelegate <NSObject>

@required
- (void) didUpdateText:(NSString *)text;

@end

@interface LRCDetailViewController : UIViewController

@property (weak, nonatomic) id <LRCDetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) NSString *textFromTextField;


@end
