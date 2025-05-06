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

// 跟随吊坠广告（类似小耳朵）
%hook QADFollowHeartPendantView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 精选二创广告
%hook QNBUAFeedImageAdBlockViewModel

- (id)initWithBlockData:(id)data sectionModel:(id)model optional:(_Bool)optional viewControleller:(id)controleller {
	return nil;
}

- (id)initWithBlockData:(id)data sectionModel:(id)model optional:(_Bool)optional {
	return nil;
}

%end