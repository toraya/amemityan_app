//
//  GameOver.m
//  amemityan
//
//  Created by Rina.Ohnuma on 2014/12/23.
//  Copyright (c) 2014年 rina.ohnuma. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "GameOver.h"

@interface GameOver()

@property UILabel *gameover;
@property UIImageView *bg_img;

@end

@implementation GameOver

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self back_ground];
    
    CGRect rect = CGRectMake(200, 100, 200,100);
    _gameover = [[UILabel alloc]initWithFrame:rect];
    _gameover.text = @"Game Over";
    _gameover.font = [UIFont fontWithName:@"Helvetica" size:30];
    _gameover.textColor = [UIColor blackColor];
    [self.view addSubview:_gameover];
 
   
    
    UIButton *retry_button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    retry_button.center = CGPointMake(150,200);
    //retry_button.backgroundColor = [UIColor whiteColor];
    retry_button.userInteractionEnabled = YES;
    [retry_button setTitle:@"Retry" forState: UIControlStateNormal];
    [retry_button sizeToFit];
    [retry_button addTarget:self
                  action:@selector(retry:)
                  forControlEvents:UIControlEventTouchUpInside];
   
    [self.view addSubview:retry_button];
    
    UIButton *top_button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    top_button.center = CGPointMake(360,200);
    //top_button.backgroundColor = [UIColor whiteColor];
    top_button.userInteractionEnabled = YES;
    [top_button setTitle:@"Top" forState: UIControlStateNormal];
    [top_button sizeToFit];
    [top_button addTarget:self
                     action:@selector(top:)
           forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:top_button];
    
}

-(void)retry:(id)sender
{
    UIViewController *second_view = [[SecondViewController alloc] init];
    second_view.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:second_view animated:YES completion:nil];
}

-(void)top:(id)sender
{
    UIViewController *top_view = [[ViewController alloc] init];
    top_view.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:top_view animated:YES completion:nil];
}


-(void)back_ground
{
    _bg_img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 600, 350)];
    _bg_img.image = [UIImage imageNamed:@"haikei.png"];
    [self.view addSubview:_bg_img];
}

@end
