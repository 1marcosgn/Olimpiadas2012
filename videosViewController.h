//
//  videosViewController.h
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 13/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface videosViewController : UIViewController{
    
    NSString *videoURL;
    
    IBOutlet UIWebView *videoView;
    
    NSString *videoHTML;
    
    IBOutlet UIImageView *imagen;
    
}

@property (nonatomic, retain) NSString *videoURL;

@property (nonatomic, retain) IBOutlet UIWebView *videoView;

@property (nonatomic, retain) NSString *videoHTML;


-(IBAction)video01:(id)sender;

-(IBAction)video02:(id)sender;

-(IBAction)video03:(id)sender;

-(IBAction)video04:(id)sender;

-(IBAction)video05:(id)sender;

@end
