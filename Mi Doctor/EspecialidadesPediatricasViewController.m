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
                        @"doctors":@[
                                @{
                                    @"name":@"Dra. Eunice May Narvaez",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"logo_eunice_may",
                                    @"image":@"logo_eunice_may_big",
                                    @"phone":@"8864631",
                                    @"email":@"nichemn01@hotmail.com",
                                    @"map_coord":@"21.15869000614639,-86.85727299999996",
                                    @"address":@"Av López portillo num 872 y 874 consultorio 101 \nPrimer piso SM 59 Quirúrgica del Sur./nUnidad Morelos Cancún Quintana Roo",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. José Carlos Balmaceda L.",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"doctor",
                                    @"image":@"risa",
                                    @"phone":@"8844005",
                                    @"email":@"jocabalo45@hotmail.com",
                                    @"map_coord":@"21.135900006139135,-86.82763299999999",
                                    @"address":@"Av. Tulum Lote 1 mza 1 consultorio 322 Sm 12\nHospital Galenia. cancún Quintana Roo CP 77505",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. Raúl Medina Chávez",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"doctor",
                                    @"image":@"doctor_bg",
                                    @"phone":@"8482946",
                                    @"email":@"raulmedina1956@hotmail.com",
                                    @"map_coord":@"21.1514541,-86.8414688",
                                    @"address":@"Av. Andrés Quintana Roo  157  SM 45 Cancún Quintana Roo",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dra. Genny Santamaría Berrón",
                                    @"speciality":@"Pediatra",
                                    @"logo":@"logo_geny",
                                    @"image":@"logo_geny_big",
                                    @"phone":@"8482946",
                                    @"email":@"genny_pasitos@hotmail.com",
                                    @"map_coord":@"21.149954,-86.848554",
                                    @"address":@"Av Andrés Quintana Roo num 157 Sm 45\nPasitos.Cancún Quintana Roo  CP 77500",
                                    @"services":@""
                                    },
                                ]
                        },
                      @{
                        @"title":@"Alergólogo",
                        @"image":@"boton_alergologo",
                        @"description":@"El alergólogo es un médico experto en el diagnóstico y tratamiento de las alergias, asma y enfermedades relacionadas con el sistema de defensa, por ejemplo rinitis alérgica, urticarial y eczema.",
                        @"speciality":@"Alergólogo",
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Francisco Navarrete Suárez",
                                    @"speciality":@"Alergólogo",
                                    @"logo":@"logo_navarrete",
                                    @"image":@"logo_navarrete_big",
                                    @"phone":@"8981927",
                                    @"email":@"alergiadecancun@yahoo.com.mx",
                                    @"map_coord":@"21.13655,-86.827488",
                                    @"address":@"Av. Tulum Lote 1 mza 1 consultorio 203  SM 12 Hospital Galenia. CP 77505",
                                    @"services":@"Servicios: Pacientes con alergias, pruebas de alergia, espirometrias, vacunas para alergia y vacunas complementarias de la cartilla de vacunacion."
                                    },
                                @{
                                    @"name":@"Dra. Aurora Meza Morales",
                                    @"speciality":@"Alergólogo",
                                    @"logo":@"logo_aurora",
                                    @"image":@"logo_aurora_big",
                                    @"phone":@"8981927",
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
                        @"doctors":@[
                                @{
                                    @"name":@"Dra. Miriam Campos Rebolledo",
                                    @"speciality":@"Neonatólogo",
                                    @"logo":@"doctora",
                                    @"image":@"risa",
                                    @"phone":@"2063549",
                                    @"email":@"micamre@hotmail.com",
                                    @"map_coord":@"21.150147,-86.848776",
                                    @"address":@"Av. Andrés Quinatan Roo mza 1  Consultorio 1  SM45   Edificio Roberth Koch",
                                    @"services":@""
                                    },
                                @{
                                    @"name":@"Dr. Horacio Nolasco Martínez",
                                    @"speciality":@"Neonatólogo",
                                    @"logo":@"doctor",
                                    @"image":@"risa",
                                    @"phone":@"8492299",
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
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Mauricio Peña Párraga",
                                    @"speciality":@"Odontopediatra",
                                    @"logo":@"logo_mauricio_pena",
                                    @"image":@"logo_mauricio_axayacatl_big",
                                    @"phone":@"8021582",
                                    @"email":@"pena@teleton-qroo.org.mx",
                                    @"map_coord":@"21.150147,-86.848776",
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
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Omar Ernesto  Rojas Pacheco",
                                    @"speciality":@"Reumatólogo",
                                    @"logo":@"logo_omar_ernesto_rojas",
                                    @"image":@"logo_omar_ernesto_rojas_big",
                                    @"phone":@"8981927",
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
    return [self.TableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    static NSString *simpleTableIdentifier = @"mycell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    UIView *backgroundView;
    UIImageView *myImage;
    myImage = (UIImageView *)[cell viewWithTag:1];
    backgroundView = (UIView *)[cell viewWithTag:2];
    [backgroundView.layer setCornerRadius:10];
    backgroundView.clipsToBounds=YES;
    NSDictionary *mydict;
    mydict=[self.TableData objectAtIndex:indexPath.row];

    [myImage setImage:[UIImage imageNamed:mydict[@"image"]]];
    
    
    //[label.layer setCornerRadius:10];
    //label.clipsToBounds=YES;
    return cell;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetalleEspecialidadPediatricaViewController *View = [[DetalleEspecialidadPediatricaViewController alloc] init];
    View = [segue destinationViewController];
    NSArray *arrayOfIndexPaths = [self.myTable  indexPathsForSelectedRows];
    NSIndexPath *path = [arrayOfIndexPaths firstObject];
    NSDictionary *itemdictionary = [self.TableData objectAtIndex:path.row];
    
    View.speciality=itemdictionary[@"speciality"];
    View.itemDescription=itemdictionary[@"description"];
    View.doctorsArray=itemdictionary[@"doctors"];
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