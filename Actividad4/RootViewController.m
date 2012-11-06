//
//  RootViewController.m
//  Actividad4
//
//  Created by Joaquin Serrano Torres on 05/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "WebViewController.h"

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //Cuando se ha cargado la vista del tipo RootViewController, le ponemos el título:
   
   
}


- (IBAction) cargarVista{
    
    //Instanciamos un objeto webviewGoogle de la clase WebViewController y le 
    //reservamos memoria:
    
    WebViewController *webView = [[WebViewController alloc] init];
    
    //Utilizamos una property creada por nosotros (cargarURL) para pasarle la
    //dirección web:
    
    webView.cargarURL = [NSURL URLWithString:@"http://www.lamarinaalta.net/"];
                                        
    //Le ponemos el título para que se vea en la barra de navegación:
    
    //webView.title = @"La Guía del Turista";
    
    //Lanzamos la vista webViewGoogle llamando a la propiedad 
    //navigationController de RootViewController y le decimos que
    //haga un pushViewController de la vista webViewGoogle
    
    [webView setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];

    [self presentModalViewController:webView animated:YES];
                                        
    //[self.navigationController pushViewController:webView animated:YES];
    
    //Liberamos la vista que hemos creado
    
    [webView release];

}


- (void) dealloc {

    [super dealloc];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
