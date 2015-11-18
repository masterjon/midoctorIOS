//
//  ClinicasViewController.h
//  Tu Doctor
//
//  Created by Jonathan Horta on 11/8/15.
//  Copyright © 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClinicasViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
    @property (strong,nonatomic) NSMutableArray *menuItems;
@end
