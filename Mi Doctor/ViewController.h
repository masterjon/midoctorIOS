//
//  ViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/12/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) NSArray *_pickerData;
- (IBAction)fbButton:(id)sender;
- (IBAction)twButton:(id)sender;
- (IBAction)docotorizateButton:(id)sender;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *logoHeight;

@end

