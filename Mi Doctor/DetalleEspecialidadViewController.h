//
//  DetalleEspecialidadViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/26/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleEspecialidadViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong,nonatomic) NSString *itemTitle;
@property (strong,nonatomic) NSString *itemDescription;
@property (strong,nonatomic) NSString *itemImageName;
@property (weak, nonatomic) IBOutlet UILabel *titleView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITableView *doctorsTable;
@property (weak,nonatomic)  NSMutableArray *doctorsArray;
- (IBAction)callButton:(id)sender;
- (IBAction)emailButton:(id)sender;
- (IBAction)locationButton:(id)sender;
@end
