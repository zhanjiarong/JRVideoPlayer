//
//  ViewController.m
//  JRVideoPlayer
//
//  Created by 湛家荣 on 15/8/4.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//


/** 说明
 将JRVideoPlayerViewController文件夹放到工程中，导入"JRPlayerViewController.h"
 
 播放本地视频
 JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithLocalMediaURL:url];
 
 播放HTTPLiveStreaming视频
 JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithHTTPLiveStreamingMediaURL:url];
 */

#import "ViewController.h"
#import "JRPlayerViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *URLTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - 播放视频

// 本地视频
- (IBAction)playLocalVideo:(id)sender {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"test" withExtension:@"mp4"];
    JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithLocalMediaURL:url];
    playerVC.mediaTitle = @"老男孩";
    [self presentViewController:playerVC animated:YES completion:nil];
}

// HTTPLiveStreaming视频流
- (IBAction)playHTTPLiveStreamingVideo:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://devimages.apple.com/iphone/samples/bipbop/gear1/prog_index.m3u8"];
    JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithHTTPLiveStreamingMediaURL:url];
    playerVC.mediaTitle = @"prog_index";
    [self presentViewController:playerVC animated:YES completion:nil];
}

// 播放输入的地址
- (IBAction)playUrl:(UIButton *)sender {
    if (self.URLTextField.text != nil && ![self.URLTextField.text isEqualToString:@""]) {
        
        NSString *str = [self.URLTextField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        NSURL *url = [NSURL URLWithString:str];
        
        JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithHTTPLiveStreamingMediaURL:url];
        
        playerVC.mediaTitle = @"HTTP Live Streaming";
        
        [self presentViewController:playerVC animated:YES completion:nil];
    }
}

- (IBAction)hideKeyboard:(UITapGestureRecognizer *)sender {
    [self.URLTextField resignFirstResponder];
}


- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
