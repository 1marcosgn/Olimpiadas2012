//
//  MedalViewController.m
//  Olimpiadas 2012
//
//  Created by Claudia Oliva on 12/07/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "MedalViewController.h"
#import "TBXML.h"

#import "TestFlight.h"

@interface MedalViewController ()

@end

@implementation MedalViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    
    [self MetodoPrincipal];
        

    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor purpleColor];
    self.navigationItem.backBarButtonItem = backButton;
    
    
}

//Variables Globales - Obtienen el nombre de cada pais de acuerdo a su posicion en el medallero..
NSString *place01;
NSString *place02;
NSString *place03;
NSString *place04;
NSString *place05;
NSString *place06;
NSString *place07;
NSString *place08;
NSString *place09;
NSString *place10;
NSString *place11;
NSString *place12;
NSString *place13;
NSString *place14;
NSString *place15;
NSString *place16;
NSString *place17;
NSString *place18;
NSString *place19;
NSString *place20;


-(IBAction)Refrescar:(id)sender{
    
    [TestFlight openFeedbackView];
        
    [self MetodoPrincipal];
    
}


-(void)MetodoPrincipal{
    
    //Acceso Local..
    //NSString *direccionURL =  @"file:///Users/marcosgn1/Desktop/Pruebas/Galileo/Olimpiadas%202012/validarJuegos.xml";  
    
    //Cadena Login
    NSString *direccionURL = [NSString stringWithFormat:@"http://fipade.com/fipade/images/servicios/validarjuegos.xml"];
    
    TBXML * xml = [TBXML tbxmlWithURL:[NSURL URLWithString:direccionURL]];
    
    //Indicamos el Nodo Raiz..
    int resp = [self CargarDatos:@"ComenzaronLosJuegos" xml:xml];
    
    //NSLog([NSString stringWithFormat:@"%d", resp]);
    
    //IF - LOS JUEGOS AUN NO COMIENZAN
    if (resp == 0) {
        
        labelTotal01.text = [self SumaTotal:labelOro01.text plata:labelPlata01.text bronze:labelBronce01.text];
        labelTotal02.text = [self SumaTotal:labelOro02.text plata:labelPlata02.text bronze:labelBronce02.text];
        labelTotal03.text = [self SumaTotal:labelOro03.text plata:labelPlata03.text bronze:labelBronce03.text];
        labelTotal04.text = [self SumaTotal:labelOro04.text plata:labelPlata04.text bronze:labelBronce04.text];
        labelTotal05.text = [self SumaTotal:labelOro05.text plata:labelPlata05.text bronze:labelBronce05.text];
        labelTotal06.text = [self SumaTotal:labelOro06.text plata:labelPlata06.text bronze:labelBronce06.text];
        labelTotal07.text = [self SumaTotal:labelOro07.text plata:labelPlata07.text bronze:labelBronce07.text];
        labelTotal08.text = [self SumaTotal:labelOro08.text plata:labelPlata08.text bronze:labelBronce08.text];
        labelTotal09.text = [self SumaTotal:labelOro09.text plata:labelPlata09.text bronze:labelBronce09.text];
        labelTotal10.text = [self SumaTotal:labelOro10.text plata:labelPlata10.text bronze:labelBronce10.text];
        
        labelTotal11.text = [self SumaTotal:labelOro11.text plata:labelPlata11.text bronze:labelBronce11.text];
        labelTotal12.text = [self SumaTotal:labelOro12.text plata:labelPlata12.text bronze:labelBronce12.text];
        labelTotal13.text = [self SumaTotal:labelOro13.text plata:labelPlata13.text bronze:labelBronce13.text];
        labelTotal14.text = [self SumaTotal:labelOro14.text plata:labelPlata14.text bronze:labelBronce14.text];
        labelTotal15.text = [self SumaTotal:labelOro15.text plata:labelPlata15.text bronze:labelBronce15.text];
        labelTotal16.text = [self SumaTotal:labelOro16.text plata:labelPlata16.text bronze:labelBronce16.text];
        labelTotal17.text = [self SumaTotal:labelOro17.text plata:labelPlata17.text bronze:labelBronce17.text];
        labelTotal18.text = [self SumaTotal:labelOro18.text plata:labelPlata18.text bronze:labelBronce18.text];
        labelTotal19.text = [self SumaTotal:labelOro19.text plata:labelPlata19.text bronze:labelBronce19.text];
        labelTotal20.text = [self SumaTotal:labelOro20.text plata:labelPlata20.text bronze:labelBronce20.text];
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"London 12" message:@"The games don´t start yet, but you can see the medal Beijing 2008 Olympic´s count, when London 2012 begins this medal count will be updated constantly." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [alert show];
        
        
    }
    //ELSE - LOS JUEGOS HAN COMENZADO
    else {
        
        //Carga los datos desde un servidor, consume un XML.
        //NSString *direccionURL =  @"file:///Users/marcosgn1/Desktop/Pruebas/Galileo/Olimpiadas%202012/londres.xml";  
        
        NSString *direccionURL =  @"http://fipade.com/fipade/images/servicios/londres.xml"; 
        
        TBXML * xmlMedals = [TBXML tbxmlWithURL:[NSURL URLWithString:direccionURL]];
        
        //Consulta Resultados En linea
        labelPais01.text = [self ObtenerPais:@"Posicion01" xml:xmlMedals];
        labelOro01.text = [self ObtenerMedallas:@"Posicion01" xml:xmlMedals medalla:@"oro"];
        labelPlata01.text = [self ObtenerMedallas:@"Posicion01" xml:xmlMedals medalla:@"plata"];
        labelBronce01.text = [self ObtenerMedallas:@"Posicion01" xml:xmlMedals medalla:@"bronze"];
        labelTotal01.text = [self SumaTotal:labelOro01.text plata:labelPlata01.text bronze:labelBronce01.text];
        //Obtenemos el nombre del primer sitio..
        place01 = [self ObtenerPais:@"Posicion01" xml:xmlMedals];
        [self MetodoCargarBandera:place01 imagen:imagen01];
        
        
        labelPais02.text = [self ObtenerPais:@"Posicion02" xml:xmlMedals];
        labelOro02.text = [self ObtenerMedallas:@"Posicion02" xml:xmlMedals medalla:@"oro"];
        labelPlata02.text = [self ObtenerMedallas:@"Posicion02" xml:xmlMedals medalla:@"plata"];
        labelBronce02.text = [self ObtenerMedallas:@"Posicion02" xml:xmlMedals medalla:@"bronze"];
        labelTotal02.text = [self SumaTotal:labelOro02.text plata:labelPlata02.text bronze:labelBronce02.text];
        place02 = [self ObtenerPais:@"Posicion02" xml:xmlMedals];
        [self MetodoCargarBandera:place02 imagen:imagen02];
        
        labelPais03.text = [self ObtenerPais:@"Posicion03" xml:xmlMedals];
        labelOro03.text = [self ObtenerMedallas:@"Posicion03" xml:xmlMedals medalla:@"oro"];
        labelPlata03.text = [self ObtenerMedallas:@"Posicion03" xml:xmlMedals medalla:@"plata"];
        labelBronce03.text = [self ObtenerMedallas:@"Posicion03" xml:xmlMedals medalla:@"bronze"];
        labelTotal03.text = [self SumaTotal:labelOro03.text plata:labelPlata03.text bronze:labelBronce03.text];
        place03 = [self ObtenerPais:@"Posicion03" xml:xmlMedals];
        [self MetodoCargarBandera:place03 imagen:imagen03];
        
        labelPais04.text = [self ObtenerPais:@"Posicion04" xml:xmlMedals];
        labelOro04.text = [self ObtenerMedallas:@"Posicion04" xml:xmlMedals medalla:@"oro"];
        labelPlata04.text = [self ObtenerMedallas:@"Posicion04" xml:xmlMedals medalla:@"plata"];
        labelBronce04.text = [self ObtenerMedallas:@"Posicion04" xml:xmlMedals medalla:@"bronze"];
        labelTotal04.text = [self SumaTotal:labelOro04.text plata:labelPlata04.text bronze:labelBronce04.text];
        place04 = [self ObtenerPais:@"Posicion04" xml:xmlMedals];
        [self MetodoCargarBandera:place04 imagen:imagen04];
        
        labelPais05.text = [self ObtenerPais:@"Posicion05" xml:xmlMedals];
        labelOro05.text = [self ObtenerMedallas:@"Posicion05" xml:xmlMedals medalla:@"oro"];
        labelPlata05.text = [self ObtenerMedallas:@"Posicion05" xml:xmlMedals medalla:@"plata"];
        labelBronce05.text = [self ObtenerMedallas:@"Posicion05" xml:xmlMedals medalla:@"bronze"];
        labelTotal05.text = [self SumaTotal:labelOro05.text plata:labelPlata05.text bronze:labelBronce05.text];
        place05 = [self ObtenerPais:@"Posicion05" xml:xmlMedals];
        [self MetodoCargarBandera:place05 imagen:imagen05];
        
        labelPais06.text = [self ObtenerPais:@"Posicion06" xml:xmlMedals];
        labelOro06.text = [self ObtenerMedallas:@"Posicion06" xml:xmlMedals medalla:@"oro"];
        labelPlata06.text = [self ObtenerMedallas:@"Posicion06" xml:xmlMedals medalla:@"plata"];
        labelBronce06.text = [self ObtenerMedallas:@"Posicion06" xml:xmlMedals medalla:@"bronze"];
        labelTotal06.text = [self SumaTotal:labelOro06.text plata:labelPlata06.text bronze:labelBronce06.text];
        place06 = [self ObtenerPais:@"Posicion06" xml:xmlMedals];
        [self MetodoCargarBandera:place06 imagen:imagen06];
        
        labelPais07.text = [self ObtenerPais:@"Posicion07" xml:xmlMedals];
        labelOro07.text = [self ObtenerMedallas:@"Posicion07" xml:xmlMedals medalla:@"oro"];
        labelPlata07.text = [self ObtenerMedallas:@"Posicion07" xml:xmlMedals medalla:@"plata"];
        labelBronce07.text = [self ObtenerMedallas:@"Posicion07" xml:xmlMedals medalla:@"bronze"];
        labelTotal07.text = [self SumaTotal:labelOro07.text plata:labelPlata07.text bronze:labelBronce07.text];
        place07 = [self ObtenerPais:@"Posicion07" xml:xmlMedals];
        [self MetodoCargarBandera:place07 imagen:imagen07];
    
        labelPais08.text = [self ObtenerPais:@"Posicion08" xml:xmlMedals];
        labelOro08.text = [self ObtenerMedallas:@"Posicion08" xml:xmlMedals medalla:@"oro"];
        labelPlata08.text = [self ObtenerMedallas:@"Posicion08" xml:xmlMedals medalla:@"plata"];
        labelBronce08.text = [self ObtenerMedallas:@"Posicion08" xml:xmlMedals medalla:@"bronze"];
        labelTotal08.text = [self SumaTotal:labelOro08.text plata:labelPlata08.text bronze:labelBronce08.text];
        place08 = [self ObtenerPais:@"Posicion08" xml:xmlMedals];
        [self MetodoCargarBandera:place08 imagen:imagen08];
        
        labelPais09.text = [self ObtenerPais:@"Posicion09" xml:xmlMedals];
        labelOro09.text = [self ObtenerMedallas:@"Posicion09" xml:xmlMedals medalla:@"oro"];
        labelPlata09.text = [self ObtenerMedallas:@"Posicion09" xml:xmlMedals medalla:@"plata"];
        labelBronce09.text = [self ObtenerMedallas:@"Posicion09" xml:xmlMedals medalla:@"bronze"];
        labelTotal09.text = [self SumaTotal:labelOro09.text plata:labelPlata09.text bronze:labelBronce09.text];
        place09 = [self ObtenerPais:@"Posicion09" xml:xmlMedals];
        [self MetodoCargarBandera:place09 imagen:imagen09];
        
        labelPais10.text = [self ObtenerPais:@"Posicion10" xml:xmlMedals];
        labelOro10.text = [self ObtenerMedallas:@"Posicion10" xml:xmlMedals medalla:@"oro"];
        labelPlata10.text = [self ObtenerMedallas:@"Posicion10" xml:xmlMedals medalla:@"plata"];
        labelBronce10.text = [self ObtenerMedallas:@"Posicion10" xml:xmlMedals medalla:@"bronze"];
        labelTotal10.text = [self SumaTotal:labelOro10.text plata:labelPlata10.text bronze:labelBronce10.text];
        place10 = [self ObtenerPais:@"Posicion10" xml:xmlMedals];
        [self MetodoCargarBandera:place10 imagen:imagen10];
        
        labelPais11.text = [self ObtenerPais:@"Posicion11" xml:xmlMedals];
        labelOro11.text = [self ObtenerMedallas:@"Posicion11" xml:xmlMedals medalla:@"oro"];
        labelPlata11.text = [self ObtenerMedallas:@"Posicion11" xml:xmlMedals medalla:@"plata"];
        labelBronce11.text = [self ObtenerMedallas:@"Posicion11" xml:xmlMedals medalla:@"bronze"];
        labelTotal11.text = [self SumaTotal:labelOro11.text plata:labelPlata11.text bronze:labelBronce11.text];
        place11 = [self ObtenerPais:@"Posicion11" xml:xmlMedals];
        [self MetodoCargarBandera:place11 imagen:imagen11];
        
        labelPais12.text = [self ObtenerPais:@"Posicion12" xml:xmlMedals];
        labelOro12.text = [self ObtenerMedallas:@"Posicion12" xml:xmlMedals medalla:@"oro"];
        labelPlata12.text = [self ObtenerMedallas:@"Posicion12" xml:xmlMedals medalla:@"plata"];
        labelBronce12.text = [self ObtenerMedallas:@"Posicion12" xml:xmlMedals medalla:@"bronze"];
        labelTotal12.text = [self SumaTotal:labelOro12.text plata:labelPlata12.text bronze:labelBronce12.text];
        place12 = [self ObtenerPais:@"Posicion12" xml:xmlMedals];
        [self MetodoCargarBandera:place12 imagen:imagen12];
        
        labelPais13.text = [self ObtenerPais:@"Posicion13" xml:xmlMedals];
        labelOro13.text = [self ObtenerMedallas:@"Posicion13" xml:xmlMedals medalla:@"oro"];
        labelPlata13.text = [self ObtenerMedallas:@"Posicion13" xml:xmlMedals medalla:@"plata"];
        labelBronce13.text = [self ObtenerMedallas:@"Posicion13" xml:xmlMedals medalla:@"bronze"];
        labelTotal13.text = [self SumaTotal:labelOro13.text plata:labelPlata13.text bronze:labelBronce13.text];
        place13 = [self ObtenerPais:@"Posicion13" xml:xmlMedals];
        [self MetodoCargarBandera:place13 imagen:imagen13];
        
        labelPais14.text = [self ObtenerPais:@"Posicion14" xml:xmlMedals];
        labelOro14.text = [self ObtenerMedallas:@"Posicion14" xml:xmlMedals medalla:@"oro"];
        labelPlata14.text = [self ObtenerMedallas:@"Posicion14" xml:xmlMedals medalla:@"plata"];
        labelBronce14.text = [self ObtenerMedallas:@"Posicion14" xml:xmlMedals medalla:@"bronze"];
        labelTotal14.text = [self SumaTotal:labelOro14.text plata:labelPlata14.text bronze:labelBronce14.text];
        place14 = [self ObtenerPais:@"Posicion14" xml:xmlMedals];
        [self MetodoCargarBandera:place14 imagen:imagen14];
        
        labelPais15.text = [self ObtenerPais:@"Posicion15" xml:xmlMedals];
        labelOro15.text = [self ObtenerMedallas:@"Posicion15" xml:xmlMedals medalla:@"oro"];
        labelPlata15.text = [self ObtenerMedallas:@"Posicion15" xml:xmlMedals medalla:@"plata"];
        labelBronce15.text = [self ObtenerMedallas:@"Posicion15" xml:xmlMedals medalla:@"bronze"];
        labelTotal15.text = [self SumaTotal:labelOro15.text plata:labelPlata15.text bronze:labelBronce15.text];
        place15 = [self ObtenerPais:@"Posicion15" xml:xmlMedals];
        [self MetodoCargarBandera:place15 imagen:imagen15];
        
        labelPais16.text = [self ObtenerPais:@"Posicion16" xml:xmlMedals];
        labelOro16.text = [self ObtenerMedallas:@"Posicion16" xml:xmlMedals medalla:@"oro"];
        labelPlata16.text = [self ObtenerMedallas:@"Posicion16" xml:xmlMedals medalla:@"plata"];
        labelBronce16.text = [self ObtenerMedallas:@"Posicion16" xml:xmlMedals medalla:@"bronze"];
        labelTotal16.text = [self SumaTotal:labelOro16.text plata:labelPlata16.text bronze:labelBronce16.text];
        place16 = [self ObtenerPais:@"Posicion16" xml:xmlMedals];
        [self MetodoCargarBandera:place16 imagen:imagen16];
        
        labelPais17.text = [self ObtenerPais:@"Posicion17" xml:xmlMedals];
        labelOro17.text = [self ObtenerMedallas:@"Posicion17" xml:xmlMedals medalla:@"oro"];
        labelPlata17.text = [self ObtenerMedallas:@"Posicion17" xml:xmlMedals medalla:@"plata"];
        labelBronce17.text = [self ObtenerMedallas:@"Posicion17" xml:xmlMedals medalla:@"bronze"];
        labelTotal17.text = [self SumaTotal:labelOro17.text plata:labelPlata17.text bronze:labelBronce17.text];
        place17 = [self ObtenerPais:@"Posicion17" xml:xmlMedals];
        [self MetodoCargarBandera:place17 imagen:imagen17];
        
        labelPais18.text = [self ObtenerPais:@"Posicion18" xml:xmlMedals];
        labelOro18.text = [self ObtenerMedallas:@"Posicion18" xml:xmlMedals medalla:@"oro"];
        labelPlata18.text = [self ObtenerMedallas:@"Posicion18" xml:xmlMedals medalla:@"plata"];
        labelBronce18.text = [self ObtenerMedallas:@"Posicion18" xml:xmlMedals medalla:@"bronze"];
        labelTotal18.text = [self SumaTotal:labelOro18.text plata:labelPlata18.text bronze:labelBronce18.text];
        place18 = [self ObtenerPais:@"Posicion18" xml:xmlMedals];
        [self MetodoCargarBandera:place18 imagen:imagen18];
        
        labelPais19.text = [self ObtenerPais:@"Posicion19" xml:xmlMedals];
        labelOro19.text = [self ObtenerMedallas:@"Posicion19" xml:xmlMedals medalla:@"oro"];
        labelPlata19.text = [self ObtenerMedallas:@"Posicion19" xml:xmlMedals medalla:@"plata"];
        labelBronce19.text = [self ObtenerMedallas:@"Posicion19" xml:xmlMedals medalla:@"bronze"];
        labelTotal19.text = [self SumaTotal:labelOro19.text plata:labelPlata19.text bronze:labelBronce19.text];
        place19 = [self ObtenerPais:@"Posicion19" xml:xmlMedals];
        [self MetodoCargarBandera:place19 imagen:imagen19];
        
        labelPais20.text = [self ObtenerPais:@"Posicion20" xml:xmlMedals];
        labelOro20.text = [self ObtenerMedallas:@"Posicion20" xml:xmlMedals medalla:@"oro"];
        labelPlata20.text = [self ObtenerMedallas:@"Posicion20" xml:xmlMedals medalla:@"plata"];
        labelBronce20.text = [self ObtenerMedallas:@"Posicion20" xml:xmlMedals medalla:@"bronze"];
        labelTotal20.text = [self SumaTotal:labelOro20.text plata:labelPlata20.text bronze:labelBronce20.text];
        place20 = [self ObtenerPais:@"Posicion20" xml:xmlMedals];
        [self MetodoCargarBandera:place20 imagen:imagen20];
        
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//Obtiene la bandera de los paises
-(void)MetodoCargarBandera:(NSString *)pais imagen:(UIImageView *)imagen{
    
    int cuenta = 0;
    
    if ([pais isEqualToString:@"GER"]) {
        cuenta = 1;
    }
    if ([pais isEqualToString:@"AUS"]) {
        cuenta = 2;
    }
    if ([pais isEqualToString:@"BLR"]) {
        cuenta = 3;
    }
    if ([pais isEqualToString:@"BRA"]) {
        cuenta = 4;
    }
    if ([pais isEqualToString:@"CAN"]) {
        cuenta = 5;
    }
    if ([pais isEqualToString:@"CHN"]) {
        cuenta = 6;
    }
    if ([pais isEqualToString:@"CUB"]) {
        cuenta = 7;
    }
    if ([pais isEqualToString:@"ESP"]) {
        cuenta = 8;
    }
    if ([pais isEqualToString:@"ETH"]) {
        cuenta = 9;
    }
    if ([pais isEqualToString:@"FRA"]) {
        cuenta = 10;
    }
    if ([pais isEqualToString:@"GRE"]) {
        cuenta = 11;
    }
    if ([pais isEqualToString:@"NED"]) {
        cuenta = 12;
    }
    if ([pais isEqualToString:@"HUN"]) {
        cuenta = 13;
    }
    if ([pais isEqualToString:@"ITA"]) {
        cuenta = 14;
    }
    if ([pais isEqualToString:@"JAM"]) {
        cuenta = 15;
    }
    if ([pais isEqualToString:@"JPN"]) {
        cuenta = 16;
    }
    if ([pais isEqualToString:@"KEN"]) {
        cuenta = 17;
    }
    if ([pais isEqualToString:@"KOR"]) {
        cuenta = 18;
    }
    if ([pais isEqualToString:@"NOR"]) {
        cuenta = 19;
    }
    if ([pais isEqualToString:@"POL"]) {
        cuenta = 20;
    }
    if ([pais isEqualToString:@"GBR"]) {
        cuenta = 21;
    }
    if ([pais isEqualToString:@"ROU"]) {
        cuenta = 22;
    }
    if ([pais isEqualToString:@"RUS"]) {
        cuenta = 23;
    }
    if ([pais isEqualToString:@"SWE"]) {
        cuenta = 24;
    }
    if ([pais isEqualToString:@"UKR"]) {
        cuenta = 25;
    }
    if ([pais isEqualToString:@"USA"]) {
        cuenta = 26;
    }
//    else {
//        cuenta = 0;
//    }
        
    
    NSString *url = @"";
    
    switch (cuenta) {
        case 0:
            //Carga una bandera nula
            url = @"------------------------";
            //Mensaje de alerta
            break;
        case 1:
            url = @"http://fipade.com/fipade/images/londres/alemaniaband.png";
            break;
        case 2:
            url = @"http://fipade.com/fipade/images/londres/australiaband.png";
            break;
        case 3:
            url = @"http://fipade.com/fipade/images/londres/belarusband.png";
            break;
        case 4:
            url = @"http://fipade.com/fipade/images/londres/brazilband.png";
            break;
        case 5:
            url = @"http://fipade.com/fipade/images/londres/canadaband.png";
            break;
        case 6:
            url = @"http://fipade.com/fipade/images/londres/chinaband.png";
            break;
        case 7:
            url = @"http://fipade.com/fipade/images/londres/cubaband.png";
            break;
        case 8:
            url = @"http://fipade.com/fipade/images/londres/espaniaband.png";
            break;
        case 9:
            url = @"http://fipade.com/fipade/images/londres/ethiopiaband.png";
            break;
        case 10:
            url = @"http://fipade.com/fipade/images/londres/franciaband.png";
            break;
        case 11:
            url = @"http://fipade.com/fipade/images/londres/greciaband.png";
            break;
        case 12:
            url = @"http://fipade.com/fipade/images/londres/holandaband.png";
            break;
        case 13:
            url = @"http://fipade.com/fipade/images/londres/hungriaband.png";
            break;
        case 14:
            url = @"http://fipade.com/fipade/images/londres/italiaband.png";
            break;
        case 15:
            url = @"http://fipade.com/fipade/images/londres/jamaicaband.png";
            break;
        case 16:
            url = @"http://fipade.com/fipade/images/londres/japonband.png";
            break;
        case 17:
            url = @"http://fipade.com/fipade/images/londres/kenyaband.png";
            break;
        case 18:
            url = @"http://fipade.com/fipade/images/londres/koreaband.png";
            break;
        case 19:
            url = @"http://fipade.com/fipade/images/londres/noruegaband.png";
            break;
        case 20:
            url = @"http://fipade.com/fipade/images/londres/poloniaband.png";
            break;
        case 21:
            url = @"http://fipade.com/fipade/images/londres/reinounidoband.png";
            break;
        case 22:
            url = @"http://fipade.com/fipade/images/londres/rumaniaband.png";
            break;
        case 23:
            url = @"http://fipade.com/fipade/images/londres/rusiaband.png";
            break;
        case 24:
            url = @"http://fipade.com/fipade/images/londres/sueciaband.png";
            break;
        case 25:
            url = @"http://fipade.com/fipade/images/londres/ucraniaband.png";
            break; 
        case 26:
            url = @"http://fipade.com/fipade/images/londres/usaband.png";
            break; 
            
        default:
            break;
    }
            
                
    NSURL *urlone= [NSURL URLWithString:url];
    
    NSData *new=[NSData dataWithContentsOfURL:urlone];
    
    [imagen setImage:[UIImage imageWithData:new]];
            
    
}

//Metodo que recibe como parametro la Raiz del elemento XML y Carga los datos
-(int)CargarDatos:(NSString *)nombreElemento xml:(TBXML *)xml{
    
    
    TBXMLElement *rootXMLElement = xml.rootXMLElement;
    
    rootXMLElement = [TBXML childElementNamed:nombreElemento parentElement:rootXMLElement];
    
    //Seleccionamos los Nodos Hijos
    NSString *respuesta = [TBXML textForElement:[TBXML childElementNamed:@"Afirmativo" parentElement:rootXMLElement]];
    
        
    return [respuesta intValue];
    
}

//Obtiene las medallas de un lugar predeterminado
-(NSString *)ObtenerMedallas:(NSString *)nombreElemento xml:(TBXML *)xml medalla:(NSString *)medalla{
    
    TBXMLElement *rootXMLElement = xml.rootXMLElement;
    
    rootXMLElement = [TBXML childElementNamed:nombreElemento parentElement:rootXMLElement];
    
    //Seleccionamos los Nodos Hijos
    NSString *respuesta = [TBXML textForElement:[TBXML childElementNamed:medalla parentElement:rootXMLElement]];
    
    return respuesta;
    
}


//Obtiene el nombre del Pais
-(NSString *)ObtenerPais:(NSString *)nombreElemento xml:(TBXML *)xml{
    
    TBXMLElement *rootXMLElement = xml.rootXMLElement;
    
    rootXMLElement = [TBXML childElementNamed:nombreElemento parentElement:rootXMLElement];
    
    //Seleccionamos los Nodos Hijos
    NSString *pais = [TBXML textForElement:[TBXML childElementNamed:@"nombre" parentElement:rootXMLElement]];
    
    return pais;
    
    
}


#pragma mark - Table view data source

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    return cell;
}
 */

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

-(NSString *)SumaTotal:(NSString *)oro plata:(NSString *)plata bronze:(NSString *)bronze{
    
    int oroVal = [oro intValue];
    int plataVal = [plata intValue];
    int bronzeVal = [bronze intValue];
    
    int suma = oroVal + plataVal + bronzeVal;
    
    NSString *total = [NSString stringWithFormat:@"%d", suma];
    
    return total;
    
}





@end
