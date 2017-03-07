//
//  ViewController.m
//  Gestures
//
//  Created by Student-002 on 17/10/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //TAp gesture
//    _lbl1.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    tap.numberOfTapsRequired=2;
    [_lbl1 addGestureRecognizer:tap];
    
    //LAong Press Gesture
    _lbl2.userInteractionEnabled=YES;
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longclick)];
    longpress.minimumPressDuration=3;
    [_lbl2 addGestureRecognizer:longpress];
    
    
    //Image swipe
    _imageview.userInteractionEnabled=YES;
    UISwipeGestureRecognizer *s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    s1.direction=UISwipeGestureRecognizerDirectionLeft;
    [_imageview addGestureRecognizer:s1];
    
    
    UISwipeGestureRecognizer *s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    s2.direction=UISwipeGestureRecognizerDirectionRight;
    [_imageview addGestureRecognizer:s2];
    
    
    UISwipeGestureRecognizer *s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    s3.direction=UISwipeGestureRecognizerDirectionUp;
    [_imageview addGestureRecognizer:s3];
    
    
    UISwipeGestureRecognizer *s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    s4.direction=UISwipeGestureRecognizerDirectionDown;
    [_imageview addGestureRecognizer:s4];
    
    
}
    //Image swipe

-(void)swipe: (UISwipeGestureRecognizer *)sender
{
 if(sender.direction==UISwipeGestureRecognizerDirectionLeft)
     _imageview.image=[UIImage imageNamed:@"1"];
 else  if(sender.direction==UISwipeGestureRecognizerDirectionRight)
     _imageview.image=[UIImage imageNamed:@"2"];
 else  if(sender.direction==UISwipeGestureRecognizerDirectionUp)
     _imageview.image=[UIImage imageNamed:@"3"];
else
    _imageview.image=[UIImage imageNamed:@"4"];
}

//TAp gesture
-(void)tap
{
    self.view.backgroundColor=[UIColor greenColor];
}
    //LAong Press Gesture
-(void)longclick
{
    self.view.backgroundColor=[UIColor redColor];
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    CGPoint points=[touch locationInView:self.view];
//    NSLog(@"Start at %.f  %.f",points.x,points.y);
//}
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    CGPoint points=[touch locationInView:self.view];
//    NSLog(@"End at %.f  %.f",points.x,points.y);
//}
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    CGPoint points=[touch locationInView:self.view];
//    NSLog(@"Moved at %.f  %.f",points.x,points.y);
//
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
