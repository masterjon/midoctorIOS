//
//  DetalleEspecialidadPediatricaViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 5/2/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleEspecialidadPediatricaViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;
@property (weak, nonatomic) IBOutlet UITextView *textInfo;
@property (weak, nonatomic) IBOutlet UITableView *doctorsTable;

@property (strong,nonatomic) NSString *speciality;
@property (strong,nonatomic) NSString *itemDescription;
@property (strong,nonatomic) NSString *label;

@property (strong,nonatomic) NSMutableArray *doctorsArray;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomTextSpace;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)callButton:(id)sender;
- (IBAction)emailButton:(id)sender;
@end
