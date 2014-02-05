//
//  ExpenseViewController.m
//  ExpenseRecorder
//
//  Created by BSA univ 5 on 05/02/14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "ExpenseViewController.h"
#import "SaveViewController.h"
#import "ExpenseRecorderAppDelegate.h"


@interface ExpenseViewController ()
{
    NSManagedObjectContext *context;
}


@end

@implementation ExpenseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save_button:(id)sender {
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Expense_table" inManagedObjectContext:context];
    NSManagedObject *newexpense=[[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
    [newexpense setValue:self.id_textbox.text forKey:@"category_id"];
    [newexpense setValue:self.amount_textbox.text forKey:@"amount"];
    [newexpense setValue:self.amount_textbox.text forKey:@"username"];

    NSError *error;
    [context save:&error];
    self.display_lable.text=@"category added";
}
@end
