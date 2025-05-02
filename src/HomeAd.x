// 首页广告

#import <UIKit/UIKit.h>

// 首页列表
%hook QNBUAAdBaseBlockModelV3

- (id)initWithBlockData:(id)data sectionModel:(id)model optional:(_Bool)optional {
	return nil;
}

%end

// 登录条
%hook QLLoginMiniBarView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end

// 未成年人弹窗
%hook VBTeenGuardianNewStyleAlertView

- (id)initWithFrame:(CGRect)frame {
	return nil;
}

%end

// 流量卡全屏弹窗
%hook QNBUAFloatRootViewController

- (id)init {
	return nil;
}

%end

// App升级弹窗
%hook QLAppUpgradeAlertView

- (id)initWithTxt:(id)txt cancelblock:(id)cancelblock confirmblock:(id)confirmblock {
	return nil;
}

%end
