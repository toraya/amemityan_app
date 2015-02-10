//
//  ViewController.m
//  amemityan
//
//  Created by Rina.Ohnuma on 2014/11/07.
//  Copyright (c) 2014年 rina.ohnuma. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "HowToPlay.h"

@interface ViewController ()

@property UIImageView *background_image;
@property UIImageView *amemi;
@property UIImageView *hert;
@property IBOutlet UIImageView *titlename;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self back_ground];
    [self amemityan];
    [self tembin];
    [self title_name];
    [self bottan];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)back_ground
{
    //背景描画
    CGRect rect = CGRectMake(0, 0, 600,350);
    _background_image = [[UIImageView alloc] initWithFrame:rect];
    _background_image.image = [UIImage imageNamed:@"haikei.png"];
    [self.view addSubview:_background_image];
    _background_image.userInteractionEnabled = YES;
}

-(void)bottan{
    
    //スタート、遊び方ボタンの描画
    
    UIImage *start_image = [UIImage imageNamed:@"start.png"]; //imageの追加
    UIButton *start_botton = [[UIButton alloc] initWithFrame:CGRectMake(0,250,150,70)]; //ボタンの生成、配置
    [start_botton setBackgroundImage:start_image forState:UIControlStateNormal]; //ボタンに画像を挿入
     start_botton.userInteractionEnabled = YES; //タッチイベントを有効
    [start_botton addTarget:self
            action:@selector(start:) forControlEvents:UIControlEventTouchUpInside]; //タッチイベントの処理
    
    [self.view addSubview:start_botton]; //ボタンの描画
    
    
    UIImage *howtoplay_image = [UIImage imageNamed:@"howtoplay"];
    UIButton *howtoplay_botton = [[UIButton alloc] initWithFrame:CGRectMake(145,250,150,70)]; //ボタンの生成、配置
    [howtoplay_botton setBackgroundImage:howtoplay_image forState:UIControlStateNormal]; //ボタンに画像を挿入
    howtoplay_botton.userInteractionEnabled = YES; //タッチイベントを有効
    [howtoplay_botton addTarget:self
            action:@selector(howtoplay:) forControlEvents:UIControlEventTouchUpInside]; //タッチイベントの処理
    
    [self.view addSubview:howtoplay_botton]; //ボタンの描画
    
    
 /*
    //アニメーションのオプション
    UIViewAnimationOptions animeOption =
    
    UIViewAnimationOptionCurveEaseInOut         //イーズインアウト
        | UIViewAnimationOptionAutoreverse      //自動逆再生
        | UIViewAnimationOptionRepeat;          //繰り返し
    
    //アニメーションの開始
    [UIView animateWithDuration:1.0
                          delay:0.0
                        options:animeOption
                     animations:^{
                         btn.center = CGPointMake(75, 280);
                     }
                     completion:nil];
    
    [UIView animateWithDuration:2.0
                          delay:1.0
                        options:animeOption
                     animations:^{
                         _howtopley.center = CGPointMake(sx + 220, xy + 280);
                     }
                     completion:nil];
   */
}

-(void)start:(id)sender{
    NSLog(@"start_botton");
    UIViewController *secondViewController = [[SecondViewController alloc] init];
    secondViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:secondViewController animated:YES completion:nil];
}

-(void)howtoplay:(id)sender{
    NSLog(@"howtoplay_botton");
    UIViewController *howtoplay = [[HowToPlay alloc] init];
    howtoplay.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:howtoplay animated:YES completion:nil];
}

-(void)amemityan
{
    CGRect amemi = CGRectMake(190, 0, 380, 320);
    
    _amemi = [[UIImageView alloc] initWithFrame:amemi];
    _amemi.image = [UIImage imageNamed:@"amemichan01.png"];
    [self.view addSubview:_amemi];
    _amemi.userInteractionEnabled = YES;
    
    //アニメーションのオプション
    UIViewAnimationOptions animeOption =
    
    UIViewAnimationOptionCurveEaseInOut         //イーズインアウト
    | UIViewAnimationOptionAutoreverse      //自動逆再生
    | UIViewAnimationOptionRepeat;          //繰り返し
    
    //アニメーションの開始
    [UIView animateWithDuration:3.0
                          delay:0.0
                        options:animeOption
                     animations:^{
                         _amemi.transform = CGAffineTransformMakeScale(1.03, 1.03);
                     }
                     completion:nil];
    [UIView commitAnimations];
    
    
}

-(void)tembin{
    CGRect tembin = CGRectMake( -20, -20, 270, 270);
    
    CGFloat bx = _hert.center.x;
    CGFloat by = _hert.center.y;
    
    _hert = [[UIImageView alloc] initWithFrame:tembin];
    _hert.image = [UIImage imageNamed:@"heartstart.png"];
    [self.view addSubview:_hert];
    _hert.userInteractionEnabled = YES;
    
    //アニメーションのオプション
    UIViewAnimationOptions animeOption =
    
    UIViewAnimationOptionCurveEaseInOut         //イーズインアウト
    | UIViewAnimationOptionAutoreverse      //自動逆再生
    | UIViewAnimationOptionRepeat;          //繰り返し
    
    //アニメーションの開始
    [UIView animateWithDuration:2.0
                          delay:0.0
                        options:animeOption
                     animations:^{
                         _hert.center = CGPointMake(bx + 120, by + 100);
                     }
                     completion:nil];

    
    
}

-(void)title_name{
    CGRect title = CGRectMake(0, 8, 300, 100);
    
    _titlename = [[UIImageView alloc] initWithFrame:title];
    _titlename.image = [UIImage imageNamed:@"rogo.png"];
    [self.view addSubview:_titlename];
    _titlename.userInteractionEnabled = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
