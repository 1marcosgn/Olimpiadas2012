//
//  videosViewController.m
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 13/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "videosViewController.h"

@interface videosViewController ()

@end

@implementation videosViewController

@synthesize videoURL,videoHTML,videoView;

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
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO; 
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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


-(IBAction)video01:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/g9RHGG8DGsU";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
}

-(IBAction)video02:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/IMb1a-eFHWg";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}

-(IBAction)video03:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/ZDP4PbeLmNM";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}

-(IBAction)video04:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/9prmF994Ja4";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}

-(IBAction)video05:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/HgLB0A-LZ3A";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}

-(void) embedYouTube{
    
    
    videoHTML = [NSString stringWithFormat:@"\
                 <html>\
                 <head>\
                 <style type=\"text/css\">\
                 iframe {position:absolute; top:50%%; margin-top:-130px;}\
                 body {background-color:#000; margin:0;}\
                 </style>\
                 </head>\
                 <body>\
                 <iframe width=\"100%%\" height=\"240px\" src=\"%@\" frameborder=\"0\" allowfullscreen></iframe>\
                 </body>\
                 </html>", videoURL];
    
    [videoView loadHTMLString:videoHTML baseURL:nil];
    
    
}




@end
