//
//  GlobalVars.m
//  TrueCallerDemo
//
//  Created by Doan Van Vu on 7/24/17.
//  Copyright © 2017 Doan Van Vu. All rights reserved.
//

#import "GlobalVars.h"
#import "Constants.h"

@interface GlobalVars ()

@end

@implementation GlobalVars

+ (GlobalVars *)sharedInstance {
    
    static dispatch_once_t onceToken;
    static GlobalVars* instance = nil;
    
    dispatch_once(&onceToken, ^{
        
        instance = [[GlobalVars alloc] init];
    });
    
    return instance;
}

- (id)init {
    
    self = [super init];
    
    if (self) {
        
        _contactEntityList = [[NSArray alloc] init];
    }
    
    return self;
}

@end
