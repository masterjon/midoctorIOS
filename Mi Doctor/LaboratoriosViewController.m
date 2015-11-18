//
//  LaboratoriosViewController.m
//  Tu Doctor
//
//  Created by Jonathan Horta on 11/8/15.
//  Copyright © 2015 Iddeas Design. All rights reserved.
//

#import "LaboratoriosViewController.h"
#import "DetalleLaboratoriosViewController.h"
@interface LaboratoriosViewController ()

@end

@implementation LaboratoriosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.menuItems = [[NSMutableArray alloc] init];
    NSArray *menu = @[
                      @{
                          @"name":@"Laboratorios Torre",
                          @"image":@"BotonLaboratoriosTorre",
                          @"phone":@"(998) 155 80 03",
                          @"email":@"info@laboratoriostorre.com",
                          @"map_coord":@"21.1465677,-86.8491535",
                          @"website":@"http://www.laboratoriostorre.com",
                          @"images":@[@"TLabs-1",@"TLabs-2",@"TLabs-3"],
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
    DetalleLaboratoriosViewController *View = [[DetalleLaboratoriosViewController alloc] init];
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
