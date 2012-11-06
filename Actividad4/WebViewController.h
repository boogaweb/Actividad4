//
//  WebViewController.h
//  Actividad4
//
//  Created by Joaquin Serrano Torres on 05/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController{

    UIWebView *webView;
    NSURL *cargarURL;

}

@property(nonatomic,retain) IBOutlet UIWebView *webView;
@property(nonatomic,retain) NSURL *cargarURL;

- (IBAction) info;

@end
