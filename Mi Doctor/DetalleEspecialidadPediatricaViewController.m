//
//  DetalleEspecialidadPediatricaViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 5/2/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "DetalleEspecialidadPediatricaViewController.h"
#import "DetalleDoctorViewController.h"
#import "MapViewController.h"
@interface DetalleEspecialidadPediatricaViewController ()

@end

@implementation DetalleEspecialidadPediatricaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textInfo.layer setCornerRadius:10];
    self.textInfo.clipsToBounds=YES;

    [self.textInfo setText:self.itemDescription];
    [self.myLabel setText:self.label];
    if ([self.speciality isEqualToString:@"Pediatra"]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_peidatra"]];
    }
    else if ([self.speciality isEqualToString:@"Neonatólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_neonatologo"]];
    }
    else if ([self.speciality isEqualToString:@"Reumatólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_reumatologo"]];
    }
    else if ([self.speciality isEqualToString:@"Odontopediatra"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_odontologo"]];
    }
    else if ([self.speciality isEqualToString:@"Alergólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_alergologo"]];
    }


    // Do any additional setup after loading the view.
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell setBackgroundColor:[UIColor clearColor]];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.doctorsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    static NSString *simpleTableIdentifier = @"mycell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    UILabel *name;
    UILabel *speciality;
    UIImageView *logo;
    name = (UILabel *)[cell viewWithTag:1];
    speciality = (UILabel *)[cell viewWithTag:2];
    logo = (UIImageView *)[cell viewWithTag:3];
    NSDictionary *mydict;
    mydict=[self.doctorsArray objectAtIndex:indexPath.row];
    name.text = mydict[@"name"];
    speciality.text = mydict[@"speciality"];
    [logo setImage:[UIImage imageNamed:mydict[@"logo"]]];
    
    
    //[label.layer setCornerRadius:10];
    //label.clipsToBounds=YES;
    return cell;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
        DetalleDoctorViewController *View = [[DetalleDoctorViewController alloc] init];
        View = [segue destinationViewController];
        NSArray *arrayOfIndexPaths = [self.doctorsTable  indexPathsForSelectedRows];
        NSIndexPath *path = [arrayOfIndexPaths firstObject];
        NSDictionary *itemdictionary = [self.doctorsArray objectAtIndex:path.row];
        
        View.doctorName=itemdictionary[@"name"];
        View.doctorImages=itemdictionary[@"images"];
        View.doctorPhone=itemdictionary[@"phone"];
        View.doctorEmail=itemdictionary[@"email"];
        View.doctorAddress=itemdictionary[@"address"];
        View.doctorServices=itemdictionary[@"services"];
        View.doctorSpeciality=itemdictionary[@"speciality"];
        View.doctorWebsite=itemdictionary[@"website"];
    }
    else if ([segue.identifier isEqualToString:@"mapViewSegue"]){
        MapViewController *View = [[MapViewController alloc] init];
        View = [segue destinationViewController];
        View = [segue destinationViewController];
        CGPoint touchPoint = [sender convertPoint:CGPointZero toView:self.doctorsTable]; //
        NSIndexPath *clickedButtonIndexPath = [self.doctorsTable indexPathForRowAtPoint:touchPoint];
        NSDictionary *itemdictionary = [self.doctorsArray objectAtIndex:clickedButtonIndexPath.row];
        NSLog(@"%@",itemdictionary[@"map_coord"]);
        NSString *coordinateStr=itemdictionary[@"map_coord"];
        NSArray *coordParts = [coordinateStr componentsSeparatedByString:@","];
        CLLocationCoordinate2D coord = CLLocationCoordinate2DMake([coordParts[0] floatValue], [coordParts[1] floatValue]);
        MKPointAnnotation *placemark = [[MKPointAnnotation   alloc] init ];
        placemark.coordinate = coord;
        placemark.title = itemdictionary[@"name"];
        View.pinpoint = placemark;
        //agregamos marcadores en cada punto
        
        
    }
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)callButton:(id)sender {
    CGPoint touchPoint = [sender convertPoint:CGPointZero toView:self.doctorsTable];
    NSIndexPath *clickedButtonIndexPath = [self.doctorsTable indexPathForRowAtPoint:touchPoint];

//    NSArray *arrayOfIndexPaths = [self.doctorsTable  indexPathForSelectedRow];
  //  NSIndexPath *path = [arrayOfIndexPaths objectAtIndex:0];
    NSDictionary *itemdictionary = [self.doctorsArray objectAtIndex:clickedButtonIndexPath.row];
    
    NSLog(@"%@",itemdictionary[@"phone"]);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",itemdictionary[@"phone"]]]];
}

- (IBAction)emailButton:(id)sender {
    CGPoint touchPoint = [sender convertPoint:CGPointZero toView:self.doctorsTable]; //
    NSIndexPath *clickedButtonIndexPath = [self.doctorsTable indexPathForRowAtPoint:touchPoint];
    NSDictionary *itemdictionary = [self.doctorsArray objectAtIndex:clickedButtonIndexPath.row];
    NSLog(@"%@",itemdictionary[@"email"]);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto:%@",itemdictionary[@"email"]]]];
}

-(void) viewDidLayoutSubviews{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    switch ((int) screenBounds.size.width) {
        case 320:
            NSLog(@"--5--");
            //480
            //568
            
            if( (int) screenBounds.size.height <= 480){
                self.bottomTextSpace.constant = 190;
            }
            else{
                self.bottomTextSpace.constant = 280;
            }
            
            break;
        case 375:
            NSLog(@"--6--");
            self.bottomTextSpace.constant = 380;
            break;
        case 414:
            NSLog(@"--6+--");
            self.bottomTextSpace.constant = 400;
            break;
        case 768:
            NSLog(@"--Ipad Portrait");
            self.bottomTextSpace.constant = 650;
            break;
        case 1024:
            NSLog(@"--Ipad Landscape");
            
            break;
        default:
            self.bottomTextSpace.constant = 330;
            break;
            
    }
    [self.view layoutIfNeeded];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
