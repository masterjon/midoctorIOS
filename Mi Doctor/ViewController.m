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

@end
