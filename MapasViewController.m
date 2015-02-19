//
//  MapasViewController.m
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 18/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "MapasViewController.h"
#import "mapAnnotation.h"

@interface MapasViewController ()

@end

@implementation MapasViewController

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
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor purpleColor];
    self.navigationItem.backBarButtonItem = backButton;
    
    
    [scrollMapas setScrollEnabled:YES];
    [scrollMapas setContentSize:CGSizeMake(50, 620)];
    
    if ([labelPrueba.text isEqualToString:@"01"]) {
        [self PonerAnotacion];
    }
    if ([labelPrueba.text isEqualToString:@"02"]) {
        [self AnotacionAquatic];
    }
    if ([labelPrueba.text isEqualToString:@"03"]) {
        [self AnotacionExcel];
    }
    if ([labelPrueba.text isEqualToString:@"04"]) {
        [self AnotacionTheMall];
    }
    if ([labelPrueba.text isEqualToString:@"05"]) {
        [self AnotacionWembley];
    }
    
    
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

-(void)PonerAnotacion{
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=51.543893;
    regionHolidayInn.center.longitude= -0.014226;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaLondres setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"Olympic Park";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLondres addAnnotation:annHolidayInn];  
    
        
}

-(void)AnotacionAquatic{
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=51.531761;
    regionHolidayInn.center.longitude= -0.033903;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaLondres setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"Aquatic Center";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLondres addAnnotation:annHolidayInn];  
    
    
}

-(void)AnotacionExcel{
    

    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=51.508101;
    regionHolidayInn.center.longitude= 0.026779;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaLondres setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"Excel";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLondres addAnnotation:annHolidayInn];  
    
}

-(void)AnotacionTheMall{

    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=51.503641;
    regionHolidayInn.center.longitude= -0.135999;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaLondres setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"The Mall";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLondres addAnnotation:annHolidayInn];  
    
}

-(void)AnotacionWembley{
    
    
    MKCoordinateRegion regionHolidayInn;
    regionHolidayInn.center.latitude=51.556369;
    regionHolidayInn.center.longitude= -0.278478;
    regionHolidayInn.span.longitudeDelta=0.01;
    regionHolidayInn.span.latitudeDelta=0.01;
    [mapaLondres setRegion:regionHolidayInn animated:YES];
    
    mapAnnotation *annHolidayInn=[[mapAnnotation alloc]init];
    annHolidayInn.title=@"Wembley Stadium";
    annHolidayInn.subtitle=@"";
    annHolidayInn.coordinate=regionHolidayInn.center;
    [mapaLondres addAnnotation:annHolidayInn];  
    
}

@end
