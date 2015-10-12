//
//  ViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/12/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(BOOL)prefersStatusBarHidden{
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self._pickerData = @[@"Selecciona tu ciudad:", @"Cancún", @"Playa del Carmen", @"Chetumal", @"Mérida"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self._pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self._pickerData[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
  
    if([self._pickerData[row] isEqualToString:@"Selecciona tu ciudad:"]){
        
    }
    else if ([self._pickerData[row] isEqualToString:@"Cancún"]){
        ViewController *viewC = [self.storyboard instantiateViewControllerWithIdentifier:@"CategoryView"];
        [self.navigationController pushViewController:viewC animated:YES];
    }
    else{
    ViewController *viewC = [self.storyboard instantiateViewControllerWithIdentifier:@"CommingSoonView"];
        [self.navigationController pushViewController:viewC animated:YES];
    }
}

- (IBAction)fbButton:(id)sender {
    NSString *fbLink = @"fb://profile/1620294414875328";
    if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:fbLink]]) {
        fbLink = @"https://www.facebook.com/TuDoctor";
    }
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:fbLink]];

}

- (IBAction)twButton:(id)sender {
    NSString *twLink = @"twitter://user?screen_name=TuDoctor_";
    
    if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:twLink]]) {
        twLink = @"https://twitter.com/TuDoctor_";
        
    }
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:twLink]];
}

- (IBAction)docotorizateButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.tudoctor.net/doctorizate/"]];
}
-(void) viewDidLayoutSubviews{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    switch ((int) screenBounds.size.width) {
        case 320:
            NSLog(@"--4--");
            //480
            //568
            
            if( (int) screenBounds.size.height <= 480){
                self.logoHeight.constant = 100;
            }
           
            
            break;
            
    }
    
    
}
@end
