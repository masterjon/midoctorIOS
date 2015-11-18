//
//  DetalleLaboratoriosViewController.h
//  Tu Doctor
//
//  Created by Jonathan Horta on 11/8/15.
//  Copyright © 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KIImagePager.h"
@interface DetalleLaboratoriosViewController : UIViewController
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *phone;
@property (strong,nonatomic) NSString *email;
@property (strong,nonatomic) NSString *map;
@property (strong,nonatomic) NSString *website;
@property (strong,nonatomic) NSMutableArray *doctorImages;
@property (strong,nonatomic) NSMutableArray *uiImagesArray;

- (IBAction)call:(UIButton *)sender;
- (IBAction)sendMail:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextView *websiteLabel;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *imageHeight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftMargin;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightMargin;

@end
