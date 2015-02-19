//
//  SedesViewController.h
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 14/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface SedesViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate>{
    
    IBOutlet UIImageView *imagen;
    
    UIPopoverController *popoverController;
   
    BOOL newMedia;
    
}

@property (nonatomic, retain) UIPopoverController *popoverController;

- (IBAction)showTweetSheet;

-(IBAction)takePicture:(id)sender;

@end
