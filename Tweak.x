#import <UIKit/UIKit.h>
/*
QNBUAFeedVideoAdBlockViewModelV3
QNBUAAdFeedVideoBaseBlockViewModelV3
QNBUAAdBaseBlockModelV3
*/ 

/*
QNBUAFeedImageAdBlockViewModelV3
QNBUAAdBaseBlockModelV3
*/

/*
QLVMChannelCollectionView: VBListCollectionView: UICollectionView
dataSource: VBListAdapter
delegate: VFPMultipleDelegates
*/

@interface NJMethodSet

- (void)skipAdClick;
- (void)basicModeSkipAdClick;
- (void)rightButtonClick:(id)click;
- (id)rightButton;
- (void)onClickCloseBtn;

@end

// 首页列表
%hook QNBUAAdBaseBlockModelV3

- (id)initWithBlockData:(id)data sectionModel:(id)model optional:(_Bool)optional {
	return nil;
}


%end

// 视频详情页
%hook QMTADFrameView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end


%hook QADVideoTopMutableTimeSkipView

- (void)updateRemainPlayTime:(long long)time {
	NSLog(@"cxzcxz:%@-%s-%lld", NSStringFromClass([self class]), __FUNCTION__, time);
	%orig(0);
	[self skipAdClick];
}

%end

// 全屏广告
%hook QADVideoTopViewDefault 

- (void)updateRemainPlayTime:(long long)time {
	NSLog(@"cxzcxz:%@-%s-%lld", NSStringFromClass([self class]), __FUNCTION__, time);
	%orig(0);
	[self rightButtonClick:[self rightButton]];
}

%end

%hook QADHalfWebDetailViewController

- (id)initWithUrl:(id)url oid:(id)oid shareItem:(id)item landingViewItem:(id)item1 style:(long long)style innerDelegate:(id)delegate {
	return nil;
}

%end


/*
// 数组add nil异常
%hook QMTADVideoViewModel

- (id)initWithPluginInfo:(id)info eventProxy:(id)proxy viewIdentifer:(id)identifer customDefaultViewClass:(Class)_class {
	NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
	return nil;
}

%end

// 还有视频播放声音
%hook QMTADVideoView

- (id)initWithFrame:(CGRect)frame {
	NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
	return nil;
}

%end

*/

// 登录条
%hook QLLoginMiniBarView

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