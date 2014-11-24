//
//  TGPhotoViewer.h
//  Telegram
//
//  Created by keepcoder on 10.11.14.
//  Copyright (c) 2014 keepcoder. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TGPVContainer.h"
#import "TGPhotoViewerItem.h"
#import "TGPVBehavior.h"
@interface TGPhotoViewer : NSPanel


-(void)show:(PreviewObject *)item conversation:(TL_conversation *)conversation;
-(void)show:(PreviewObject *)item user:(TLUser *)user;
-(void)show:(PreviewObject *)item;

-(void)prepareUser:(TLUser *)user;


+(id<TGPVBehavior>)behavior;

-(void)hide;

+(TGPhotoViewer *)viewer;

+(TGPhotoViewerItem *)currentItem;

+(void)nextItem;
+(void)prevItem;

+(BOOL)isVisibility;

@end
