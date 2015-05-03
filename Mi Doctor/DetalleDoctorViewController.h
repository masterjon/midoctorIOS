//
//  DetalleDoctorViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/28/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleDoctorViewController : UIViewController
@property (strong,nonatomic) NSString *doctorName;
@property (strong,nonatomic) NSString *doctorImage;
@property (strong,nonatomic) NSString *doctorPhone;
@property (strong,nonatomic) NSString *doctorEmail;
@property (strong,nonatomic) NSString *doctorAddress;
@property (strong,nonatomic) NSString *doctorServices;
@property (strong,nonatomic) NSString *doctorSpeciality;
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *bigImage;
@property (weak, nonatomic) IBOutlet UITextView *textInfo;

@end