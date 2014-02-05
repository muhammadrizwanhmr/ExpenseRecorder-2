//
//  SaveViewController.m
//  ExpenseRecorder
//
//  Created by BSA univ 5 on 05/02/14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "SaveViewController.h"
#import "ExpenseRecorderAppDelegate.h"

@interface SaveViewController ()
{
    NSManagedObjectContext *context;
}
@end

@implementation SaveViewController

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
    ExpenseRecorderAppDelegate *appdelegate=[[UIApplication sharedApplication]delegate];
    context=[appdelegate managedObjectContext];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addcat_button:(id)sender {
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"Category_table" inManagedObjectContext:context];
    NSManagedObject *newcategory=[[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
    [newcategory setValue:self.Id_textbox.text forKey:@"category_id"];
    [newcategory setValue:self.catname_textbox.text forKey:@"category_name"];
    NSError *error;
    [context save:&error];
    self.display_lable.text=@"category added";

}
- (IBAction)save_button:(id)sender {
    NSEntityDescription *entity1=[NSEntityDescription entityForName:@"Expense_table" inManagedObjectContext:context];
    NSManagedObject *newexpense=[[NSManagedObject alloc]initWithEntity:entity1 insertIntoManagedObjectContext:context];
    [newexpense setValue:self.id2_textbox.text forKey:@"category_id"];
    [newexpense setValue:[NSDate date] forKey:@"date"];
    [newexpense setValue:self.amount_textbox.text forKey:@"amount"];
    [newexpense setValue:self.username_textbox.text forKey:@"username"];
    
    NSError *error;
    [context save:&error];
    self.display_lable.text=@"expense saved";

}
@end
