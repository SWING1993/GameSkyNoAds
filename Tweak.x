#import <Foundation/Foundation.h>


%hook AdTroopBannerAd

- (void)loadAdData {
	%log;
}

- (id)initWithSlotID:(id)arg1 rootViewController:(id)arg2 adSize:(id)arg3 {
	%log;
	return nil;
}

%end

%hook AdTroopSDKManager
+ (void)registerAppID:(id)arg1 {
	%log;
}
%end

%hook AdTroopSplashAd

- (id)initWithSlotID:(id)arg1 {
	%log;
	return nil;
}

- (_Bool)isAdValid {
	%log;
	return false;
}

- (void)loadAdData {
	%log;
}

- (void)showAdWithViewController:(id)arg1 bottomView:(id)arg2 {
	%log;
}

%end

%hook BaiduMobAdView

- (void)start  {
	%log;
}

- (id)initWithFrame:(id)arg1 {
	%log;
	return nil;
}
%end

%hook BaiduMobAdUtils

+ (void)initialize {
	%log;
}
%end

%hook BaiduMobAdSplash

- (id)init {
	%log;
	return nil;
}
%end

%hook BUAdSDKManager
+ (void)startWithSyncCompletionHandler:(id)arg1 {
	%log;
}
+ (void)startWithAsyncCompletionHandler:(id)arg1 {
	%log;
}
+ (id)sharedInstance {
	%log;
	return nil;
}
%end

%hook CSJAdSDKManager

- (id)init {
	%log;
	return nil;
}
%end


%hook GDTAdManager

+ (id)defaultManager {
	%log;
	return nil;
}
+ (id)instanceWithAppId:(id)arg1 {
	%log;
	return nil;
}
+ (void)load {
	%log;
}

- (void)initLj16fa0  {
	%log;
}
- (id)init {
	%log;
	return nil;
}

%end

%hook GSAppConfig

+ (void)startDownloadPreloadAdVideos {
	%log;
}
+ (id)shared {
	%log;
	return nil;
}

%end

%hook GSLaunchAd
+ (id)init {
	%log;
	return nil;
}
%end


%hook SFAdSDKManager
+ (id)init {
	%log;
	return nil;
}
+ (id)defaultManager {
	%log;
	return nil;
}

+ (void)load {
	%log;
}

+ (void)requestAD:(id)arg1 {
	%log;
}

%end
