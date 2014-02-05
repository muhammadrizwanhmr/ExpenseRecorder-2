//
//  ExpenseViewController.h
//  ExpenseRecorder
//
//  Created by BSA univ 5 on 05/02/14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpenseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *id_textbox;
@property (weak, nonatomic) IBOutlet UITextField *amount_textbox;
@property (weak, nonatomic) IBOutlet UITextField *username_textbox;
- (IBAction)save_button:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *display_lable;

@end
