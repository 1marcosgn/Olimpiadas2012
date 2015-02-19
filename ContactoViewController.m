//
//  ContactoViewController.m
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 16/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

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
	
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"London 12" message:@"All names and logos that appear in this app are owned and property of their respective owners." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)EnviarCorreo:(id)sender{
    
    [self mailIt];
    
}

-(void)mailIt{MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
     if ([MFMailComposeViewController canSendMail]) {
         
         picker.mailComposeDelegate = self;
         [picker setSubject:@"App - London 2012"];
         
         NSArray *aReceptores=[NSArray arrayWithObjects:@"aplicaciones@fipade.info", nil];
         [picker setToRecipients:aReceptores];
         
         
         
         
         NSString *msj = [NSString stringWithFormat:@""];
         
         NSString *emailBody = msj;
         [picker setMessageBody:emailBody isHTML:YES];
         
         [self presentModalViewController:picker animated:YES];
    
    
     }
     else {
         UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Error!" message:@"Your device must be configured to send emails" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
         
         [alert show];

     }
    
    
    
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}



@end
