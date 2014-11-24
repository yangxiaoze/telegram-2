//
//  SelectUserItem.m
//  Messenger for Telegram
//
//  Created by keepcoder on 21.05.14.
//  Copyright (c) 2014 keepcoder. All rights reserved.
//

#import "SelectUserItem.h"
#import "TLUserCategory.h"
@implementation SelectUserItem

- (id)initWithObject:(TLContact *)object {
    if(self = [super initWithObject:object]) {
        self.title = [[NSMutableAttributedString alloc] init];
        self.lastSeen = [[NSMutableAttributedString alloc] init];
        
        self.contact = object;
        self.titleSize = NSZeroSize;
        self.lastSeenSize = NSMakeSize(200, 20);
        
        self.avatarPoint = NSMakePoint(50, (50 - 36) / 2);
        
        
        self.rightBorderMargin = 23;
        
        self.titlePoint = NSMakePoint(97, 25);
        self.lastSeenPoint = NSMakePoint(97, 8);
        
        self.noSelectTitlePoint = NSMakePoint(67, 26);
        self.noSelectLastSeenPoint = NSMakePoint(67, 8);
        self.noSelectAvatarPoint = NSMakePoint(23, (50 - 36) / 2);
        
    }
    return self;
}


-(id)copy {
    return [[SelectUserItem alloc] initWithObject:self.contact];
}

- (NSObject *)itemForHash {
    return self.contact;
}

+ (NSUInteger) hash:(TLContact *)object {
    return object.user_id;
}

@end
