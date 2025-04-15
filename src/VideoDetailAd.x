// 视频详情页广告

#import <UIKit/UIKit.h>

// 视频广告
%hook QADPlayVideoAdInfo

- (id)init {
	return nil;
}

%end

// 视频暂停广告
%hook QMTADFrameView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end

// VIP活动入口
%hook QNBUAOutsideBelowPlayerVIPActivityEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

