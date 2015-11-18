
//
//  DetalleLaboratoriosViewController.m
//  Tu Doctor
//
//  Created by Jonathan Horta on 11/8/15.
//  Copyright © 2015 Iddeas Design. All rights reserved.
//

#import "DetalleLaboratoriosViewController.h"
#import "MapViewController.h"
@interface DetalleLaboratoriosViewController ()
@property (strong, nonatomic) IBOutlet KIImagePager *_imagePager;

@end


@implementation DetalleLaboratoriosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self._imagePager.imageCounterDisabled=YES;
    self.nameLabel.text = self.name;
    self.websiteLabel.text = self.website;
    self.uiImagesArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in self.doctorImages) {
        UIImage *img =[UIImage imageNamed:imageName];
        NSLog(@"%@",imageName);
        if (img){
            [self.uiImagesArray addObject:img];
        }
    }
    // Do any additional setup after loading the view.
}

-(void) viewDidLayoutSubviews{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    switch ((int) screenBounds.size.width) {
        case 320:
            NSLog(@"--5--");
            //480
            //568
            
            if( (int) screenBounds.size.height <= 480){
                self.imageHeight.constant = 480;
                self.leftMargin.constant = 20;
                self.rightMargin.constant = 20;
                
            }
            else{
                self.imageHeight.constant = 320;
            }
            
            break;
        case 375:
            NSLog(@"--6--");
            self.imageHeight.constant = 300;
            break;
        case 414:
            NSLog(@"--6+--");
            self.imageHeight.constant = 300;
            break;
        case 768:
            NSLog(@"--Ipad Portrait");
            self.leftMargin.constant = 60;
            self.rightMargin.constant = 60;
            break;
        case 1024:
            NSLog(@"--Ipad Landscape");
            
            break;
        default:
            self.imageHeight.constant = 300;
            break;
            
    }
    [self.view layoutIfNeeded];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self._imagePager.pageControl.pageIndicatorTintColor = [UIColor blackColor];
    self._imagePager.slideshowTimeInterval = 0.0f;
    self._imagePager.slideshowShouldCallScrollToDelegate = YES;
}
- (NSArray *) arrayWithImages:(KIImagePager*)pager
{
    
    return self.uiImagesArray;
}

- (UIViewContentMode) contentModeForImage:(NSUInteger)image inPager:(KIImagePager *)pager
{
    return UIViewContentModeScaleAspectFill;
}


#pragma mark - KIImagePager Delegate
- (void) imagePager:(KIImagePager *)imagePager didScrollToIndex:(NSUInteger)index
{
    NSLog(@"%s %lu", __PRETTY_FUNCTION__, (unsigned long)index);
}

- (void) imagePager:(KIImagePager *)imagePager didSelectImageAtIndex:(NSUInteger)index
{
    NSLog(@"%s %lu", __PRETTY_FUNCTION__, (unsigned long)index);
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MapViewController *View = [[MapViewController alloc] init];
    View = [segue destinationViewController];
    NSString *coordinateStr=self.map;
    NSArray *coordParts = [coordinateStr componentsSeparatedByString:@","];
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake([coordParts[0] floatValue], [coordParts[1] floatValue]);
    MKPointAnnotation *placemark = [[MKPointAnnotation   alloc] init ];
    placemark.coordinate = coord;
    placemark.title = self.name;
    View.pinpoint = placemark;
    
}

- (IBAction)call:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@",self.phone]]];
}

- (IBAction)sendMail:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto:%@",self.email]]];
}
@end
