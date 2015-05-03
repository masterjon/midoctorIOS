//
//  DetalleDoctorViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/28/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "DetalleDoctorViewController.h"

@interface DetalleDoctorViewController ()

@end

@implementation DetalleDoctorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nameLabel setText:self.doctorName];
    [self.bigImage setImage:[UIImage imageNamed:self.doctorImage]];
    
    NSString *text = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",self.doctorAddress,self.doctorEmail,self.doctorPhone,self.doctorServices];
    [self.textInfo setText:text];
    
    if ([self.doctorSpeciality isEqualToString:@"Alergólogo"]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_alergologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@"Gastroenterólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_gastroenterologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@""]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_neonatologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@""]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_odontologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@""]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_peidatra"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@""]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_reumatologo"]];
    }
    
    
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
