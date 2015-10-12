//
//  EspecialidadesPediatricasViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 5/2/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "EspecialidadesPediatricasViewController.h"
#import "DetalleEspecialidadPediatricaViewController.h"
@interface EspecialidadesPediatricasViewController ()

@end

@implementation EspecialidadesPediatricasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textView.layer setCornerRadius:10];
    self.textView.clipsToBounds=YES;
    self.TableData = [[NSMutableArray alloc] initWithObjects:

                      @{
                        @"title":@"Pediatra General",
                        @"image":@"boton_pediatra",
                        @"description":@"Especialidad Médica dedicada a cuidar la salud de niños y niñas desde los prematuros o recién nacidos hasta los adolescentes. Mantiene con sus revisiones continuas la integridad biológica del paciente y lo re-dirige a los especialistas cuando lo considera necesario.",
                        @"speciality":@"Pediatra",
                        @"label":@"Conoce a nuestros pediatras generales:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dra. Eunice May Narvaez",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"logo_eunice_may",
                                    @"images":@[@"EuniceMay-Slide1"],
                                    @"phone":@"9988864631",
                                    @"email":@"nichemn01@hotmail.com",
                                    @"map_coord":@"21.15869000614639,-86.85727299999996",
                                    @"address":@"Av López portillo num 872 y 874 consultorio 101 \nPrimer piso SM 59 Quirúrgica del Sur./nUnidad Morelos Cancún Quintana Roo",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. José Carlos Balmaceda L.",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"doctor",
                                    @"images":@[@"JoseCarlosBalmaceda-Slide1"],
                                    @"phone":@"9988844005",
                                    @"email":@"jocabalo45@hotmail.com",
                                    @"map_coord":@"21.135900006139135,-86.82763299999999",
                                    @"address":@"Av. Tulum Lote 1 mza 1 consultorio 322 Sm 12\nHospital Galenia. cancún Quintana Roo CP 77505",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. Raúl Medina Chávez",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"doctor",
                                    @"images":@[@"Raul-Medina-Slide1"],
                                    @"phone":@"9988482946",
                                    @"email":@"raulmedina1956@hotmail.com",
                                    @"map_coord":@"21.149954,-86.848554",
                                    @"address":@"Av. Andrés Quintana Roo  157  SM 45 Cancún Quintana Roo",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dra. Genny Santamaría Berrón",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"logo_geny",
                                    @"images":@[@"DraGeny-Slide1",@"DraGeny-Slide2"],
                                    @"phone":@"9988482946",
                                    @"email":@"genny_pasitos@hotmail.com",
                                    @"map_coord":@"21.149954,-86.848554",
                                    @"address":@"Av Andrés Quintana Roo num 157 Sm 45\nPasitos.Cancún Quintana Roo  CP 77500",
                                    @"services":@"",
                                    @"website":@"www.pasitos.mx"
                                    },
                                ]
                        },
                      @{
                        @"title":@"Alergólogo",
                        @"image":@"boton_alergologo",
                        @"description":@"El alergólogo es un médico experto en el diagnóstico y tratamiento de las alergias, asma y enfermedades relacionadas con el sistema de defensa, por ejemplo rinitis alérgica, urticarial y eczema.",
                        @"speciality":@"Alergólogo",
                        @"label":@"Conoce a nuestros alergólogos:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Francisco Navarrete Suárez",
                                    @"speciality":@"Alergólogo",
                                    @"logo":@"logo_navarrete",
                                    @"images":@[@"FranciscoN-Slide1",@"FranciscoN-Slide2",@"FranciscoN-Slide3",@"FranciscoN-Slide4"],
                                    @"phone":@"9988981927",
                                    @"email":@"alergiadecancun@yahoo.com.mx",
                                    @"map_coord":@"21.13655,-86.827488",
                                    @"address":@"Av. Tulum Lote 1 mza 1 consultorio 203  SM 12 Hospital Galenia. CP 77505",
                                    @"services":@"Servicios: Pacientes con alergias, pruebas de alergia, espirometrias, vacunas para alergia y vacunas complementarias de la cartilla de vacunacion."
                                    },
                                @{
                                    @"name":@"Dra. Aurora Meza Morales",
                                    @"speciality":@"Alergólogo",
                                    @"logo":@"logo_aurora",
                                    @"images":@[@"AuroraMeza-Slide1",@"AuroraMeza-Slide2",@"AuroraMeza-Slide3"],
                                    @"phone":@"9988981927",
                                    @"email":@"alergiaypediatria@yahoo.com.mx",
                                    @"map_coord":@"21.13655,-86.827488",
                                    @"address":@"Av. Tulum lote 1 mza 1 consultorio 203 SM 12  Hospital Galenia. CP 77505",
                                    @"services":@""
                                    },

                                ]
                        },
                      @{
                        @"title":@"Neonatólogo",
                        @"image":@"boton_neonatologo",
                        @"description":@"Especialidad Médica dedicada a cuidar la salud de niños y niñas desde los prematuros o recién nacidos hasta los adolescentes. Mantiene con sus revisiones continuas la integridad biológica del paciente y lo re-dirige a los especialistas cuando lo considera necesario.",
                        @"speciality":@"Neonatólogo",
                        @"label":@"Conoce a nuestros neonatólogos:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dra. Miriam Campos Rebolledo",
                                    @"speciality":@"Neonatólogo",
                                    @"logo":@"doctora",
                                    @"images":@[@"MiriamCampos-Rebolledo-Slide1",@"miriamcampos_slide2"],
                                    @"phone":@"9982063549",
                                    @"email":@"micamre@hotmail.com",
                                    @"map_coord":@"21.150147,-86.848776",
                                    @"address":@"Av. Andrés Quinatan Roo mza 1  Consultorio 1  SM45   Edificio Roberth Koch",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. Horacio Nolasco Martínez",
                                    @"speciality":@"Neonatólogo",
                                    @"logo":@"doctor",
                                    @"images":@[@"NolascoHoracio-Slide1"],
                                    @"phone":@"9988492299",
                                    @"email":@"drhoracionolasco@hotmail.com",
                                    @"map_coord":@"21.1454079,-86.8445853",
                                    @"address":@"Av. La luna num 23 mza 14  SM 43   Pedregal del Bosque. CP. 77500",
                                    @"services":@""
                                    },
                                ]
                        },
                      @{
                        @"title":@"Odontopediatra",
                        @"image":@"boton_odontopediatra",
                        @"description":@"La odontopediatría es la rama de la odontología encargada de tratar a los niños o recién nacidos hasta los adolescentes. Tratamiento de caries en dientes temporales o de leche.",
                        @"speciality":@"Odontopediatra",
                        @"label":@"Conoce a nuestros odontopediatras:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Mauricio Peña Párraga",
                                    @"speciality":@"Odontopediatra",
                                    @"logo":@"logo_mauricio_pena",
                                    @"images":@[@"MauricoPena-Slide1"],
                                    @"phone":@"9988021582",
                                    @"email":@"pena@teleton-qroo.org.mx",
                                    @"map_coord":@"21.1435915,-86.8290708",
                                    @"address":@"Av. Nichupte 22  Pabellón Caribe  Local 10 grupo médico integral",
                                    @"services":@""
                                    },
                                ]
                        },
                      @{
                        @"title":@"Reumatólogo",
                        @"image":@"boton_reumatologo",
                        @"description":@"Experto en diagnosticar, tratar y controlar a niños y adolescentes con enfermedades complejas en articulaciones, músculos huesos y órganos como riñones, pulmones, vasos sanguíneos y cerebro.",
                        @"speciality":@"Reumatólogo",
                        @"label":@"Conoce a nuestros reumatólogos:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Omar Ernesto  Rojas Pacheco",
                                    @"speciality":@"Reumatólogo",
                                    @"logo":@"logo_omar_ernesto_rojas",
                                    @"images":@[@"OmarRojas-Slide1",@"OmarRojas-Slide2"],
                                    @"phone":@"9988981927",
                                    @"email":@"dr_rojas_@hotmail.com",
                                    @"map_coord":@"21.13655,-86.827488",
                                    @"address":@"Av. Tulum Lote 1 mza 1 consultorio 203  SM 12  Hospital Galenia. CP 77505",
                                    @"services":@""
                                    },
                                ]
                        },

                      nil];

    // Do any additional setup after loading the view.
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetalleEspecialidadPediatricaViewController *View = [[DetalleEspecialidadPediatricaViewController alloc] init];
    View = [segue destinationViewController];
    NSArray *arrayOfIndexPaths = [self.myCollection  indexPathsForSelectedItems];
    NSIndexPath *path = [arrayOfIndexPaths firstObject];
    NSDictionary *itemdictionary = [self.TableData objectAtIndex:path.row];
    
    View.speciality=itemdictionary[@"speciality"];
    View.itemDescription=itemdictionary[@"description"];
    View.label = itemdictionary[@"label"];
    View.doctorsArray=itemdictionary[@"doctors"];
}

-(void) viewDidLayoutSubviews{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    switch ((int) screenBounds.size.width) {
        case 320:
            NSLog(@"--5--");
            //480
            //568
            
            self.iconHeight.constant = 0;
            
            if( (int) screenBounds.size.height <= 480){
                self.bottomTextSpace.constant = 230;
            }
            else{
                self.bottomTextSpace.constant = 325;
            }
            
            break;
        case 375:
            NSLog(@"--6--");
            self.bottomTextSpace.constant = 330;
            self.iconHeight.constant = 125;
            break;
        case 414:
            NSLog(@"--6+--");
            self.bottomTextSpace.constant = 400;
            self.iconHeight.constant = 125;
            break;
        case 768:
            NSLog(@"--Ipad Portrait");
            self.bottomTextSpace.constant = 700;
            self.iconHeight.constant = 125;
            break;
        case 1024:
            NSLog(@"--Ipad Landscape");
            
            break;
        default:
            self.bottomTextSpace.constant = 330;
            self.iconHeight.constant = 125;
            break;
            
    }
    [self.view layoutIfNeeded];
    
    
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
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.TableData count];
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"menuCell" forIndexPath:indexPath];
    UIView *backgroundView;
    UIImageView *myImage;
    myImage = (UIImageView *)[cell viewWithTag:1];
    backgroundView = (UIView *)[cell viewWithTag:2];
    [backgroundView.layer setCornerRadius:10];
    backgroundView.clipsToBounds=YES;
    NSDictionary *cellDictionary = [self.TableData objectAtIndex:indexPath.row];
    NSString *imageItem = [cellDictionary objectForKey:@"image"];
    myImage.image = [UIImage imageNamed:imageItem];
    
    return cell;
}
-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *menuItemDictionary = [self.TableData objectAtIndex:indexPath.row];
    
//    ViewController *viewC = [self.storyboard instantiateViewControllerWithIdentifier:menuItemDictionary[@"target"]];
//    [self.navigationController pushViewController:viewC animated:YES];
    
    
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    int top = 10;
    int left = 0;
    int bottom = 10;
    int right = 0;
    NSLog(@"%i",(int)screenBounds.size.width);
    switch ((int) screenBounds.size.width) {
        case 320:
            NSLog(@"--5--");
            left = 5;
            right = 5;
            break;
        case 375:
            NSLog(@"--6--");
            left = 20;
            right = 20;
            break;
        case 414:
            NSLog(@"--6+--");
            left = 30;
            right = 30;
            break;
        case 768:
            NSLog(@"--Ipad Portrait");
            left = 50;
            right = 50;
            top = 50;
            break;
        case 1024:
            NSLog(@"--Ipad Landscape");
            left = 50;
            right = 50;
            top = 50;
            break;
        default:
            left = 5;
            right = 5;
            break;
            
    }
    return UIEdgeInsetsMake(top, left, bottom, right);
}
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    // Adjust cell size for orientation
    int screenSize = (int) screenBounds.size.width;
    //Size of cells for ipad
    if(screenSize == 768 || screenSize == 1024){
        return CGSizeMake(282.f, 282.f);
    }
    
    //Size of cells for iphones
    return CGSizeMake(150.f,152.f);
    
}

@end
