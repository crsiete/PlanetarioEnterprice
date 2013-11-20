//
//  ViewController.h
//  Planetario
//
//  Created by Miguel  on 19/11/13.
//  Copyright (c) 2013 Miguel . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) CALayer * capa;
@property (strong, nonatomic) CALayer * tierra;
@property (strong, nonatomic) CALayer * nave;

- (IBAction)animar:(id)sender;
@end
