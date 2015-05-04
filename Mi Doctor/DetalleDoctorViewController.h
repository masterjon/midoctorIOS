//
//  DetalleDoctorViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/28/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KIImagePager.h"
@interface DetalleDoctorViewController : UIViewController
@property (strong,nonatomic) NSString *doctorName;
@property (strong,nonatomic) NSMutableArray *doctorImages;
@property (strong,nonatomic) NSString *doctorPhone;
@property (strong,nonatomic) NSString *doctorEmail;
@property (strong,nonatomic) NSString *doctorAddress;
@property (strong,nonatomic) NSString *doctorServices;
@property (strong,nonatomic) NSString *doctorSpeciality;
@property (strong,nonatomic) NSMutableArray *uiImagesArray;
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *textInfo;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeight;

@end
