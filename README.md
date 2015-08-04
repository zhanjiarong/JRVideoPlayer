# JRVideoPlayer

![JRVideoPlayer](http://# "JRVideoPlayer")

## Overview

**JRVideoPlayer**, 是一个基于AVFoundation框架的视频播放器，支持常见视频格式和HTTP Live Streaming视频流。播放器是根据苹果官方文档《AVFoundation Programming Guide》写的。


## 使用方法

```
1.将JRVideoPlayerViewController文件夹放到工程中，导入"JRPlayerViewController.h"
 
2.播放本地视频
JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithLocalMediaURL:url];
 
3.播放HTTPLiveStreaming视频
JRPlayerViewController *playerVC = [[JRPlayerViewController alloc] initWithHTTPLiveStreamingMediaURL:url];

```

详情看Demo，可以结合《AVFoundation Programming Guide》来看。