//
//  EspecialidadesViewController.m
//  Mi Doctor
//
//  Created by Jonathan Horta on 4/13/15.
//  Copyright (c) 2015 Iddeas Design. All rights reserved.
//

#import "EspecialidadesViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "DetalleEspecialidadViewController.h"
@interface EspecialidadesViewController ()

@end

@implementation EspecialidadesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.pediatraButton.layer setCornerRadius:10];
//    self.pediatraButton.clipsToBounds=YES;
    self.pickerView.transform= CGAffineTransformMakeScale(1.2, 1.2);
    self.TableData = [[NSMutableArray alloc] initWithObjects:
                      @{
                        @"title":@"Selecciona:"
                        },
                      @{
                        @"title":@"Pediatra"
                        },

                      @{
                        @"title":@"Alergólogo",
                        @"image":@"mascota_alergologo",
                        @"description":@"Es el médico especializado en el diagnóstico y tratamiento de las enfermedades  alérgicas, así como alergia a medicamentos y alimentos. Enfermedades que trata: Rinitis alérgica, asma, urticaria. Dermatitis alérgica, alergia a insectos.",
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
                        @"title":@"Audiólogo",
                        @"image":@"mascota_audiologo",
                        @"description":@"Es el médico especializado en el tratamiento, diagnóstico y rehabilitación de los problemas y discapacidades auditivas. \n Enfermedades que trata:  otitis media, zumbido de oídos, perdida de la audición, vértigo, mareo.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Cardiólogo",
                        @"image":@"mascota_cardio",
                        @"description":@"El cardiólogo es el especialista médico encargado de atender las enfermedades relacionadas con el corazón y el aparato circulatorio. Enfermedades que trata: hipertensión arterial, insuficiencia cardiaca, pericarditis, endocarditis.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Cirujano",
                        @"image":@"mascota_cirujano",
                        @"description":@"Médico especialista  en  prevenir,  diagnosticar y curar diversos padecimientos a través de la realización de cirugías.\n Padecimientos quirúrgicos: Dependiendo del aparato ó sistema afectado es el especialista en realizar cirugías.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Dermatólogo",
                        @"image":@"mascota_dermatologo",
                        @"description":@"Es el médico especializado en los padecimientos de la piel, ofrece diagnóstico, prevención y tratamiento.\n Enfermedades que trata:  acné, dermatitis, comezón.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Endocrinólogo",
                        @"image":@"mascota_endocrinologo",
                        @"description":@"Es el médico especializado en las enfermedades hormonales, del metabolismo y de los problemas alimenticios o de nutrición. Enfermedades que trata: diabetes, menopausia, obesidad.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Gastroenterólogo",
                        @"image":@"mascota_gastro",
                        @"description":@"Médico especialista en tratar  y prevenir enfermedades  de tubo digestivo. Enfermedades que trata: Gastritis, esofagitis, colon irritable, problemas del hígado , problemas de digestión.",
                        @"label":@"Conoce a nuestros gastroenterólogos:",
                        @"doctors":@[
                                @{
                                    @"name":@"Dr. Raúl Barragán Parrao",
                                    @"speciality":@"Gastroenterólogo",
                                    @"logo":@"logo_raul",
                                    @"images":@[@"BarraganParrao-Slide1",@"barragan_slide2"],
                                    @"phone":@"9988980801",
                                    @"email":@"raulbapa@hotmail.com",
                                    @"map_coord":@"21.13655,-86.827488",
                                    @"address":@"Av Tulum Lote 1 mza 1  consultorio  315      SM 12 Hospital Galenia CP. 77505",
                                    @"services":@"",
                                    @"website":@"www.gastroenterologiacancun.com"
                                    }
                                ]
                      },
                      @{
                        @"title":@"Ginecólogo",
                        @"image":@"mascota_ginecologo",
                        @"description":@"Gineco-obstetra: es el especialista médico encargado del proceso del embarazo, del parto, del puerperio y del tiempo posterior al parto. Enfermedades que trata: enfermedades del adolescente, mujer adulta, y todos aspectos de la salud femenina.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Hematólogo",
                        @"image":@"mascota_hematologo",
                        @"description":@"Es el especializado médico encargado del diagnóstico y tratamiento de las enfermedades y trastornos de la sangre. Enfermedades que trata: leucemia, anemia, linfomas, trastornos hemorrágicos.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Inmunólogo",
                        @"image":@"mascota_inmunologo",
                        @"description":@"Es el médico especializado en estudiar el sistema inmunitario, es decir todo lo relacionado con las defensas de nuestro organismo.\n Enfermedades que trata: lupus, artritis ,vasculitis, anemia.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Neurocirujano",
                        @"image":@"mascota_neurocirujano",
                        @"description":@"Es el profesional especializado en la cirugía del cerebro y la columna vertebral. Enfermedades que trata: neurocisticercosis, tumores cebarles, hernias de disco.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Neumólogo",
                        @"image":@"mascota_neumologo",
                        @"description":@"Es el médico especializado en el estudio de las enfermedades del aparato respiratorio. Enfermedades que trata: bronquitis, enfisema pulmonar, neumonía, fibrosis quística.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Neurólogo",
                        @"image":@"mascota_neurologo",
                        @"description":@"Es el especialista médico encargado de monitorizar y tratar los trastornos del sistema nervioso. Enfermedades que trata: cefalea (dolor de cabeza), alzheimer, trastornos de aprendizaje.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Nutriólogo",
                        @"image":@"mascota_gastroenterologo",
                        @"description":@"Es el profesional de la salud, dedicado al estudio de la alimentación del ser humano y nos brinda las herramientas para tener una buena alimentación. Enfermedades que trata: personas sanas que desean tener una alimentación balanceada, obesidad, desnutrición.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Odontólogo",
                        @"image":@"mascota_odontologo",
                        @"description":@"Rama de la ciencia de la salud dedicada a la prevención ,diagnóstico y tratamiento  de dientes y encías. Enfermedades que trata : caries , mal oclusión , limpieza dental , corrección de superposición de dientes.",
                        @"label":@"",
//                        @"label":@"Conoce a nuestros odontólogos:",
//                        @"doctors":@[
//                                @{
//                                    @"name":@"Dra. Mónica Callejo",
//                                    @"speciality":@"Cirujana Dentista",
//                                    @"logo":@"logo_monica_callejo",
//                                    @"images":@[@"logo_monica_callejo_big"],
//                                    @"phone":@"",
//                                    @"email":@"monica_callejo@hotmail.com",
//                                    @"map_coord":@"21.136610,86.827509",
//                                    @"address":@"Hospital Galenia consultorio 203-2 Av. tulum  mz 01 lote 01 SM 12 Cancún, Quintana Roo. CP. 77505",
//                                    @"services":@"ODONTOLOGIA ESTETICA Y PREVENTIVA \n FACULTAD DE ODONTOLOGIA UNAM \n CEDULA PROFESIONAL 2163854 \n CERTIFICADA ADM E.C-0403-01/1 \n *odontologia preventiva \n *odontologia estetica \n *implantes dentales \n *emergencias dentales \n twitter @CdMonica \n facebook: Dra. Monica Callejo Mi dentista Cancun"
//                                    }
//                                ]
                        },
                      @{
                        @"title":@"Oncólogo",
                        @"image":@"mascota_oncologo",
                        @"description":@"Es el especialista médico encargado del análisis, diagnóstico y tratamiento del cáncer. Enfermedades que trata: cáncer de mama, cáncer de pulmón, cáncer de colon.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Ortopedista",
                        @"image":@"mascota_ortopedista",
                        @"description":@"Es el médico especializado en la prevención y tratamiento de las afecciones o traumas de huesos y músculos. Enfermedades que trata:  fracturas, artritis, tendosinovitis estenosante, distensión muscular.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Otorrinolaringólogo",
                        @"image":@"mascota_otorrino",
                        @"description":@"médico especialista enfocado a las enfermedades de oídos, nariz y garganta. Enfermedades que trata: otitis , rinitis, laringitis , traqueítis, desviación septal, pólipos nasales.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Psicólogo",
                        @"image":@"mascota_psicologo",
                        @"description":@"Es el profesional médico especializado en la salud mental. Enfermedades que trata: anorexia, apatía, demencia, depresión.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Reumatólogo",
                        @"image":@"mascota_reumatologo",
                        @"description":@"El reumatólogo es el médico especialista encargado del diagnóstico y atención de las enfermedades relacionadas con el aparato locomotor es decir con cualquier malestar del cuerpo. Enfermedades que trata: artritis, osteoporosis, fibromialgia entre otras.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Terapia Intensiva Pediátrica",
                        @"image":@"mascota_terapia_intensiva",
                        @"description":@"Pediatra especialista en atender a todo niño en estado de terapia intensiva.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Urgencias Pediátricas",
                        @"image":@"mascota_urgencias_pediatricas",
                        @"description":@"Pediatra especialista en atender a todo niño que llegue a  cualquier servicio de urgencias.",
                        @"label":@"",
                      },
                      @{
                        @"title":@"Urólogo",
                        @"image":@"mascota_urologo",
                        @"description":@"Es el médico especializado en el estudio de las vías urinarias, ofrece tratamiento, prevención y diagnóstico a pacientes de todas las edades. Enfermedades que trata: infección de vías urinarias y enfermedades de transmisión sexual.",
                        @"label":@"",
                      },
                      nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 1;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return [self.TableData count];
//}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    // Configure the cell...
//    static NSString *simpleTableIdentifier = @"mycc";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//
//    if (cell == nil) {
//        
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//        
//    }
//    UILabel *label;
//    
//    label = (UILabel *)[cell viewWithTag:3];
//    NSDictionary *mydict;
//    mydict=[self.TableData objectAtIndex:indexPath.row];
//    label.text = mydict[@"title"];
//
//    [label.layer setCornerRadius:10];
//    label.clipsToBounds=YES;
//    return cell;
//}
//-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    if ([segue.identifier isEqualToString:@"doctorSegue"]) {
//        DetalleEspecialidadViewController *View = [[DetalleEspecialidadViewController alloc] init];
//        View = [segue destinationViewController];
//        NSArray *arrayOfIndexPaths = [self.myTable  indexPathsForSelectedRows];
//        NSIndexPath *path = [arrayOfIndexPaths firstObject];
//        NSDictionary *itemdictionary = [self.TableData objectAtIndex:path.row];
//
//        View.itemTitle=itemdictionary[@"title"];
//        View.itemImageName=itemdictionary[@"image"];
//        View.itemDescription=itemdictionary[@"description"];
//        View.label= itemdictionary[@"label"];
//        View.doctorsArray=itemdictionary[@"doctors"];
//    }
//    else if ([segue.identifier isEqualToString:@"pediatraSegue"]){
//    }
//}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if([self.TableData[row][@"title"] isEqualToString:@"Selecciona:"]){
        
    }
    else if ([self.TableData[row][@"title"] isEqualToString:@"Pediatra"]){
        EspecialidadesViewController *View = [self.storyboard instantiateViewControllerWithIdentifier:@"DetalleEspecialidadPediatricaView"];
        [self.navigationController pushViewController:View animated:YES];
    }
    else{
        
        DetalleEspecialidadViewController *View = [self.storyboard instantiateViewControllerWithIdentifier:@"DetalleEspecialidadView"];

        NSDictionary *itemdictionary = [self.TableData objectAtIndex:row];
        
        View.itemTitle=itemdictionary[@"title"];
        View.itemImageName=itemdictionary[@"image"];
        View.itemDescription=itemdictionary[@"description"];
        View.label= itemdictionary[@"label"];
        View.doctorsArray=itemdictionary[@"doctors"];
        

        [self.navigationController pushViewController:View animated:YES];
    }
}
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.TableData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.TableData[row][@"title"];
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
