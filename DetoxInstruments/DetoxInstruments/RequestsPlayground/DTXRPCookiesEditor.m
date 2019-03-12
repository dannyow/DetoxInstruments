//
//  DTXRPCookiesEditor.m
//  DetoxInstruments
//
//  Created by Leo Natan (Wix) on 3/3/19.
//  Copyright © 2017-2019 Wix. All rights reserved.
//

#import "DTXRPCookiesEditor.h"

@interface _DTXRPEditorView : NSView @end
@implementation _DTXRPEditorView

- (NSInteger)tag
{
	return 100;
}

@end

@interface DTXRPCookiesEditor ()

@end

@implementation DTXRPCookiesEditor

- (void)setCookies:(NSDictionary<NSString *,NSString *> *)cookies
{
	self.plistEditor.propertyList = cookies;
}

- (NSDictionary<NSString *,NSString *> *)cookies
{
	return (id)self.plistEditor.propertyList;
}

#pragma mark LNPropertyListEditorDelegate

- (id)propertyListEditor:(LNPropertyListEditor *)editor defaultPropertyListForAddingInNode:(LNPropertyListNode*)node
{
	LNPropertyListNode* rv = [[LNPropertyListNode alloc] initWithPropertyList:@"Value"];
	rv.key = @"Cookie";
	
	return rv;
}

@end
