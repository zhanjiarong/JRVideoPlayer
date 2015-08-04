# JRVideoPlayer

![JRVideoPlayer](https://github.com/zhanjiarong/JRVideoPlayer/blob/master/iOS%20Simulator%20Screen%20Shot%202015_8_4_4.27.48.png?raw=true "JRVideoPlayer")

![JRVideoPlayer](https://github.com/zhanjiarong/JRVideoPlayer/blob/master/iOS%20Simulator%20Screen%20Shot%202015_8_4_4.28.14.png?raw=true "JRVideoPlayer")

## Overview

**JRVideoPlayer**, 是一个基于AVFoundation框架的视频播放器，支持常见视频格式和HTTP Live Streaming视频流。播放器是根据苹果官方文档《AVFoundation Programming Guide》写的。

代码控制了默认只允许横屏播放。

上下滑动屏幕左1/3是调亮度，下下滑动屏幕右1/3是调音量，但是只有在真机下才有效果。左右滑动中间1/3是快进快退。


## 使用方法

```
1.将JRVideoPlayerViewController文件夹放到工程中，导入"JRPlayerViewController.h"
 
2.播放本地视频
JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithLocalMediaURL:url];
 
3.播放HTTPLiveStreaming视频
JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithHTTPLiveStreamingMediaURL:url];

```

详情看Demo，可以结合《AVFoundation Programming Guide》来看。