//
//  MapViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 5/2/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.mapView.showsUserLocation = YES;
    [self.mapView addAnnotation:self.pinpoint];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(self.pinpoint.coordinate, 3500,3500);
    [self.mapView setRegion:region animated:true];
    // Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
