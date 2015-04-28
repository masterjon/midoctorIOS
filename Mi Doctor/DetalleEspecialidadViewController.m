//
//  DetalleEspecialidadViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/26/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "DetalleEspecialidadViewController.h"

@interface DetalleEspecialidadViewController ()

@end

@implementation DetalleEspecialidadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *viewTitle = [[UILabel alloc] init];
    viewTitle.textColor = [UIColor whiteColor];
    viewTitle.text=self.itemTitle;
    
    
    self.navigationItem.titleView=viewTitle;
    [viewTitle sizeToFit];

    [self.titleView setText:self.itemTitle];
    [self.textView setText:self.itemDescription];
    [self.imageView setImage:[UIImage imageNamed:self.itemImageName]];
    
    [self.textView.layer setCornerRadius:10];
    self.textView.clipsToBounds=YES;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
