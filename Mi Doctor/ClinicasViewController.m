//
//  ClinicasViewController.m
//  Tu Doctor
//
//  Created by Jonathan Horta on 11/8/15.
//  Copyright © 2015 Iddeas Design. All rights reserved.
//

#import "ClinicasViewController.h"
#import "DetalleClinicasViewController.h"
@interface ClinicasViewController ()

@end

@implementation ClinicasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.menuItems = [[NSMutableArray alloc] init];
    NSArray *menu = @[
                      @{
                         @"name":@"Pediatric Center",
                         @"image":@"BotonPediatricCenter",
                         @"phone":@"(998) 844 77 11",
                         @"email":@"contacto@pediatric-center.com.mx",
                         @"map_coord":@"21.1361105,-86.8277757",
                         @"website":@"http://www.pediatric-center.com.mx/",
                         @"images":@[@"Pediatric-1",@"Pediatric-2",@"Pediatric-3"],
                          },
                      
                      
                      ];
    for (NSArray *dataDictionary in menu){
        [self.menuItems addObject:dataDictionary];
        
    }

    // Do any additional setup after loading the view.
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.menuItems count];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    UIImageView *menuImage = (UIImageView *) [cell viewWithTag:10];
    if([self.menuItems count] > 0){
        NSDictionary *cellDictionary = [self.menuItems objectAtIndex:indexPath.row];
        NSString *imageItem = [cellDictionary objectForKey:@"image"];
        menuImage.image = [UIImage imageNamed:imageItem];
    }

    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetalleClinicasViewController *View = [[DetalleClinicasViewController alloc] init];
    View = [segue destinationViewController];
    NSArray *arrayOfIndexPaths = [self.collectionView indexPathsForSelectedItems];
    NSIndexPath *path = [arrayOfIndexPaths firstObject];
    NSDictionary *itemdictionary = [self.menuItems objectAtIndex:path.row];
    View.doctorImages=itemdictionary[@"images"];
    View.name=itemdictionary[@"name"];
    View.phone=itemdictionary[@"phone"];
    View.email=itemdictionary[@"email"];
    View.map=itemdictionary[@"map_coord"];
    View.website=itemdictionary[@"website"];

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
