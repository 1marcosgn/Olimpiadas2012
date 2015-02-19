//
//  ContactoViewController.h
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 16/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUi.h>

@interface ContactoViewController : UIViewController <MFMailComposeViewControllerDelegate>

-(IBAction)EnviarCorreo:(id)sender;

@end
