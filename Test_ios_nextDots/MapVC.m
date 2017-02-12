//
//  MapVC.m
//  Test_ios_nextDots
//
//  Created by LTSSetup on 2/7/17.
//  Copyright © 2017 BrunoCardenasTorres. All rights reserved.
//

#import "MapVC.h"


@interface MapVC ()
@property (weak, nonatomic) IBOutlet MKMapView *mapKit;


@end

@implementation MapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapKit.delegate = self;
    
   
    CLLocationCoordinate2D startCoord = CLLocationCoordinate2DMake(-12.059561, -77.053471);
    MKCoordinateRegion adjustedRegion = [_mapKit regionThatFits:MKCoordinateRegionMakeWithDistance(startCoord, 4500, 4500)];
    [_mapKit setRegion:adjustedRegion animated:YES];
    
    
    NSArray *arrPlacesAll = [[NSUserDefaults standardUserDefaults] objectForKey:@"arrPlaces"];

    for (int i=0; i<[arrPlacesAll count]; i++) {
        
        MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
        double latitude = [[[arrPlacesAll objectAtIndex:i] objectForKey:@"latitude"] doubleValue];
        double longitude = [[[arrPlacesAll objectAtIndex:i] objectForKey:@"longitude"] doubleValue];
        
        point.coordinate = CLLocationCoordinate2DMake(latitude, longitude);
        point.title = [[arrPlacesAll objectAtIndex:i] objectForKey:@"nombre"] ;
        [self.mapKit addAnnotation:point];

    }

    
}



@end
