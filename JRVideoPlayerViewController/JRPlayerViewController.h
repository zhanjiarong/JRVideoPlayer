//
//  JRPlayerViewController.h
//  JRVideoPlayer
//
//  Created by 湛家荣 on 15/5/8.
//  Copyright (c) 2015年 Zhan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JRPlayerViewController : UIViewController

@property (nonatomic, strong) NSString *mediaTitle;

- (instancetype)initWithHTTPLiveStreamingMediaURL:(NSURL *)url;
- (instancetype)initWithLocalMediaURL:(NSURL *)url;

@end
