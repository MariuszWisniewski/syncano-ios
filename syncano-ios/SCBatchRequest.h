//
//  SCBatchRequest.h
//  syncano-ios
//
//  Created by Jan Lipmann on 01/08/16.
//  Copyright © 2016 Syncano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCConstants.h"

@interface SCBatchRequest : NSObject
@property (nonatomic,retain) NSString *identifier;
@property (nonatomic) SCRequestMethod method;
@property (nonatomic,retain) NSDictionary *payload;
@property (nonatomic) id callback;
@end
