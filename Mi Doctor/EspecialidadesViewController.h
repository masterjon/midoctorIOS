//
//  EspecialidadesViewController.h
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/13/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EspecialidadesViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTable;
@property (strong, nonatomic) IBOutlet NSMutableArray *TableData;

@end
