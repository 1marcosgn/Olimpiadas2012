//
//  MapasViewController.h
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 18/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapasViewController : UIViewController{
    
    IBOutlet MKMapView *mapaLondres;
    
    IBOutlet UIScrollView *scrollMapas;
    
    IBOutlet UILabel *labelPrueba;
    
}

@end
