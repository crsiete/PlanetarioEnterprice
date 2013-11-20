//
//  ViewController.m
//  Planetario
//
//  Created by Miguel  on 19/11/13.
//  Copyright (c) 2013 Miguel . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
@synthesize capa,tierra, nave;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [super didReceiveMemoryWarning];
    capa = [CALayer layer];
    capa.bounds = CGRectMake(0,0, 200, 200);
    capa.position = self.view.center;
    //capa.backgroundColor = [UIColor whiteColor].CGColor;
    capa.cornerRadius = 100;
    capa.borderWidth =1.5;
    capa.borderColor = [UIColor whiteColor].CGColor;
    
    
    tierra = [CALayer layer];
    tierra.bounds= CGRectMake(0, 0, 50, 50);
    tierra.position= CGPointMake(100, 0);
    tierra.backgroundColor= [UIColor blueColor].CGColor;
    tierra.cornerRadius= 25;
    
    CALayer *luna = [CALayer layer];
    luna.bounds= CGRectMake(0, 0, 10, 10);
    luna.position= CGPointMake(5, -25);
    luna.backgroundColor = [UIColor grayColor].CGColor;
    luna.cornerRadius = 5;
    
    nave =[CALayer layer];
    nave.bounds = CGRectMake(0, 0, 50, 50);
    nave.contents = (id) [UIImage imageNamed:@"enterpreice1.png"].CGImage;
    nave.position = CGPointMake(-25, 250);
    
    
    [self.view.layer addSublayer:capa];
    [capa addSublayer:tierra];
    [tierra addSublayer:luna];
    [self.view.layer addSublayer:nave];
}

- (void)didReceiveMemoryWarning
{
    
}

- (IBAction)animar:(id)sender
{
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    float angulo = 3*360*M_PI/180;
    rotationAnimation.toValue =[NSNumber numberWithFloat:angulo];
    rotationAnimation.duration = 10;
    
    CABasicAnimation *traslation =[CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    traslation.fromValue = [NSNumber numberWithFloat:-10];
    traslation.toValue= [NSNumber numberWithFloat:600];
    traslation.duration= 2;
    traslation.cumulative = NO;
    traslation.repeatCount= 1.0;
     traslation.removedOnCompletion = YES;
    traslation.fillMode = kCAFillModeForwards;
    
    [tierra addAnimation:rotationAnimation forKey:@"animacion"];
    [capa addAnimation:rotationAnimation forKey:@"animacion"];
    [nave addAnimation:traslation forKey:@"transform.translation.x"];
    
    
    
}
@end
