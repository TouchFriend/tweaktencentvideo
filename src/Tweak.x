#import <UIKit/UIKit.h>

@interface NJMethodSet


@end

/*
QMTADVideoView -> QNBUAVideoDetailViewController
QMTADFrameView -> QNBUAVideoDetailViewController
QNBUADetailPlayerContainerView -> QNBUAVideoDetailViewController

*/


// 视频详情页
// 视频暂停广告
%hook QMTADFrameView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end


%hook QADPlayVideoAdInfo

- (id)init {
	return nil;
}

%end


// 全屏广告

// 未成年人弹窗
%hook VBTeenGuardianNewStyleAlertView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end

%ctor {
	NSLog(@"cxzcxz-------------ctor---------------");
}

%dtor {
	NSLog(@"cxzcxz-------------dtor---------------");
}