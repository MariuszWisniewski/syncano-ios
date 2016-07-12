//
//  SCPushPlease.m
//  syncano-ios
//
//  Created by Jan Lipmann on 8/07/16.
//  Copyright © 2016 Syncano. All rights reserved.
//

#import "SCPushPlease.h"
#import "Syncano.h"
#import "SCAPIClient.h"


@implementation SCPushPlease
+ (SCPushPlease *)pleaseForSyncano:(Syncano *)syncano environment:(SCPushPleaseEnvironment)environment {
    SCPushPlease *please = [SCPushPlease new];
    please.syncano = syncano;
    please.environment = environment;
    return please;
}

- (void)sendMessage:(NSString *)message completion:(SCCompletionBlock)completion {
    
}
@end
