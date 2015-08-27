//
//  EspecialidadesPediatricasViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 5/2/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EspecialidadesPediatricasViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property (strong, nonatomic) IBOutlet NSMutableArray *TableData;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomTextSpace;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *iconHeight;
@property (weak, nonatomic) IBOutlet UICollectionView *myCollection;

@end
