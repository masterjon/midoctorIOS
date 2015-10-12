//
//  DetalleDoctorViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/28/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "DetalleDoctorViewController.h"

@interface DetalleDoctorViewController ()  <KIImagePagerDelegate, KIImagePagerDataSource>
@property (weak, nonatomic) IBOutlet KIImagePager *_imagePager;

@end

@implementation DetalleDoctorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //__imagePager.delegate = self;
   // __imagePager.dataSource = self;
     self._imagePager.imageCounterDisabled=YES;
    [self.nameLabel setText:self.doctorName];
    [self.website setText:self.doctorWebsite];
    self.uiImagesArray = [[NSMutableArray alloc] init];
    for (NSString *imageName in self.doctorImages) {
        UIImage *img =[UIImage imageNamed:imageName];
        NSLog(@"%@",imageName);
        if (img){
        [self.uiImagesArray addObject:img];
        }
    }
    
    NSString *text = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",self.doctorAddress,self.doctorEmail,self.doctorPhone,self.doctorServices];
    [self.textInfo setText:text];
    if ([self.doctorSpeciality isEqualToString:@"Pediatra"]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_peidatra"]];
    }
    if ([self.doctorSpeciality isEqualToString:@"Alergólogo"]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_alergologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@"Gastroenterólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_gastroenterologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@"Neonatólogo"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_neonatologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@"Odontopediatra"] || [self.doctorSpeciality isEqualToString:@"Cirujana Dentista"]){
        [self.headerImage setImage:[UIImage imageNamed:@"header_odontologo"]];
    }
    else if ([self.doctorSpeciality isEqualToString:@"Reumatólogo"]) {
        [self.headerImage setImage:[UIImage imageNamed:@"header_reumatologo"]];
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
                self.left_margin.constant = 20;
                self.right_margin.constant = 20;
                
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
            self.left_margin.constant = 60;
            self.right_margin.constant = 60;
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

@end
