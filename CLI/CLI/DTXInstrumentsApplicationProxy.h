//
//  DTXInstrumentsApplicationProxy.h
//  CLI
//
//  Created by Leo Natan (Wix) on 1/8/19.
//  Copyright © 2017-2019 Wix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTXInstrumentsApplicationProxy : NSObject

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)sharedApplication;

- (NSURL*)URL;
- (NSString*)applicationVersion;

- (NSArray<NSBundle*>*)bundlesForObjectModel;

@end
