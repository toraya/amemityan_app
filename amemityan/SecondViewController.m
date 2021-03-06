//
//  SecondViewController.m
//  amemityan
//
//  Created by Rina.Ohnuma on 2014/12/22.
//  Copyright (c) 2014年 rina.ohnuma. All rights reserved.
//

#import "SecondViewController.h"
#import "GameOver.h"

@interface SecondViewController()

@property UIImageView *bg_img;
@property (nonatomic) int time;
@property (nonatomic, strong) NSTimer *count_timer;
@property UILabel *timelabel;
@property UIImageView *character;

@end

@implementation SecondViewController

-(void)viewDidLoad
{
    CGRect rect = CGRectMake(80, 0, 100, 100);
    _timelabel = [[UILabel alloc]initWithFrame:rect];
    [super viewDidLoad];
    [self back_ground];
    [self contact];
    [self createTimer];
    
}

-(void)back_ground
{
    _bg_img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 600, 350)];
    _bg_img.image = [UIImage imageNamed:@"haikei.png"];
    [self.view addSubview:_bg_img];
    
    _character = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    _character.image = [UIImage imageNamed:@"raion1.png"];
    [self.view addSubview:_character];
    
    
}

-(void)contact
{
            for (int i = 0; i < 4; i++) {
            int n = random() %  4 + 1;
            UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            bt.center = CGPointMake(430, 40 + i * 75);
            bt.backgroundColor = [UIColor whiteColor];
            bt.userInteractionEnabled = YES; //タッチイベントを有効
            [bt addTarget:self
                   action:@selector(bt:) forControlEvents:UIControlEventTouchUpInside]; //タッチイベントの処理
                

                
                switch (n) {
                    case 1:
                        [bt setTitle:@"　セリフ１　" forState:UIControlStateNormal];
                        [bt sizeToFit];
                        [self.view addSubview:bt];
                        break;
                    case 2:
                        [bt setTitle:@"　セリフ２　" forState:UIControlStateNormal];
                        [bt sizeToFit];
                        [self.view addSubview:bt];
                        break;
                        
                    case 3:
                        [bt setTitle:@"　セリフ３　" forState:UIControlStateNormal];
                        [bt sizeToFit];
                        [self.view addSubview:bt];
                        break;
                        
                    case 4:
                        [bt setTitle:@"　セリフ４　" forState:UIControlStateNormal];
                        [bt sizeToFit];
                        [self.view addSubview:bt];
                        break;

                    default:
                        break;
                }
                
            }
}


-(void)bt:(id)sender
{
    NSLog(@"touch");
}


-(void)createTimer
{
    _count_timer = [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(dotime:)
                                   userInfo:nil
                                    repeats:YES];
    _time = 20;
    [_count_timer fire];
}

-(void)dotime:(NSTimer *)timer
{
    if (_time <= 0.0){
        [_count_timer invalidate];
        UIViewController *gameover = [[GameOver alloc] init];
        gameover.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:gameover animated:YES completion:nil];
        
    } else {
        _time--;
    }
    
    /*
    timerCount = timerCount - 0.01f; //0.01秒ずつ足してゆく
    float second = fmodf(timerCount, 60);
    */
    //int minute = timerCount / 60;
    int hour = _time / 60;
   // NSLog(@"%2d:%2d", hour,_time);
    
    _timelabel.text = [NSString stringWithFormat:@"timer %d:%02d", hour, _time];
    [self.view addSubview:_timelabel];
    /*
    NSString *a = [NSString stringWithFormat:@"%02d:%02d:%05.2f",hour ,minute ,second];
    NSLog(@"%@", a);
    //self.label名.text = a;
     */
}

@end
