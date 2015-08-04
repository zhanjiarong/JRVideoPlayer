//
//  JRPlayerView.m
//  JRVideoPlayer
//
//  Created by 湛家荣 on 15/5/8.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//

#import "JRPlayerView.h"
#import <AVFoundation/AVFoundation.h>

@interface JRPlayerView ()

@end

@implementation JRPlayerView

// 使PlayerView的layer为AVPlayerLayer类型
+ (Class)layerClass {
    return [AVPlayerLayer class];
}

- (AVPlayer *)player {
    return [(AVPlayerLayer *)[self layer] player];
}

- (void)setPlayer:(AVPlayer *)player {
    [(AVPlayerLayer *)[self layer] setPlayer:player];
}

- (void)dealloc
{
    self.player = nil;
}

@end
