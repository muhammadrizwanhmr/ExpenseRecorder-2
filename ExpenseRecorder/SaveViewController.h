//
//  SaveViewController.h
//  ExpenseRecorder
//
//  Created by BSA univ 5 on 05/02/14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SaveViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *Id_textbox;
@property (weak, nonatomic) IBOutlet UITextField *catname_textbox;
@property (weak, nonatomic) IBOutlet UILabel *display_lable;

- (IBAction)addcat_button:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *id2_textbox;
@property (weak, nonatomic) IBOutlet UITextField *amount_textbox;
@property (weak, nonatomic) IBOutlet UITextField *username_textbox;
- (IBAction)save_button:(id)sender;


@end
