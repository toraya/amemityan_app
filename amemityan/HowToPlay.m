//
//  HowToPlay.m
//  amemityan
//
//  Created by Rina.Ohnuma on 2014/12/25.
//  Copyright (c) 2014年 rina.ohnuma. All rights reserved.
//

#import "ViewController.h"
#import "HowToPlay.h"

@interface HowToPlay()

@property UIImageView *bg_img;
@property UIImageView *first;
@property UIImageView *second;
@property UIImageView *third;
@property (nonatomic) int count;
@property UIImageView *back;
@property UILabel *how;

@end

@implementation HowToPlay

-(void)viewDidLoad
{
    _count = 0;
    
    [super viewDidLoad];
    [self back_ground];
    [self first_image];
    
    _first.userInteractionEnabled = YES;
    _first.tag = 100;
    
    _bg_img.userInteractionEnabled = YES;
    _bg_img.tag = 110;
    
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(view_Tapped:)];
    
    // ビューにジェスチャーを追加
    [self.view addGestureRecognizer:tapGesture];

}

-(void)back_ground
{
    _bg_img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 600, 330)];
    _bg_img.image = [UIImage imageNamed:@"haikei_2.png"];
    [self.view addSubview:_bg_img];
    
    _back = [[UIImageView alloc] initWithFrame:CGRectMake(300, 0, 100, 100)];
    _back.image = [UIImage imageNamed:@""];
    [self.view addSubview:_back];

}


-(void)view_Tapped:(UITapGestureRecognizer *)sender
{
    _count++;
    
    
}


-(void)first_image
{
    _first = [[UIImageView alloc] initWithFrame:CGRectMake(100, 150, 100, 100)];
    _first.image = [UIImage imageNamed:@"raion1.png"];
    [self.view addSubview:_first];
};

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    if (touch.view.tag == _first.tag) {
        [self clickCommand:_first];
    } else if (touch.view.tag == _bg_img.tag){
        [self clickCommand:_bg_img];
    }
}

-(IBAction)clickCommand:(id)sender
{
    NSLog(@"in clilckCommand");
}



@end
