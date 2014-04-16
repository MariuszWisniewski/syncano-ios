//
//  SyncanoParameters_Users.m
//  Syncano
//
//  Created by Syncano Inc. on 07/01/14.
//  Copyright (c) 2014 Syncano Inc. All rights reserved.
//

#import "SyncanoParameters_Users.h"
#import "SyncanoParameters_Private.h"
#import "SyncanoResponse_Users.h"

@implementation SyncanoParameters_Users : SyncanoParameters

- (SyncanoParameters_Users *)initWithUserName:(NSString *)userName {
    self = [super init];
    if (self) {
        self.userName = userName;
        [self validateSpecialParameters:@[@"userName"]];
    }
    return self;
}

- (SyncanoParameters_Users *)initWithUserId:(NSString *)userId {
    self = [super init];
    if (self) {
        self.userId = userId;
        [self validateSpecialParameters:@[@"userId"]];
    }
    return self;
}

- (NSArray *)initalizeSelectorNamesArray {
    return @[@"initWithUserName:", @"initWithUserId:"];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"userName" : @"user_name",
                                  @"userId" : @"user_id"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

@end

@implementation SyncanoParameters_Users_New : SyncanoParameters

- (SyncanoParameters_Users_New *)initWithUserName:(NSString *)userName {
    self = [super init];
    if (self) {
        self.userName = userName;
        [self validateParameters];
    }
    return self;
}

- (SEL)initalizeSelector {
    return @selector(initWithUserName:);
}

- (NSArray*)requiredParametersNames {
    return @[@"userName"];
}

- (NSString *)methodName {
	return @"user.new";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_New responseFromJSON:json];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"userName" : @"user_name",
                                  @"nick" : @"nick",
                                  @"avatar" : @"avatar"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

@end

@implementation SyncanoParameters_Users_GetAll : SyncanoParameters

- (NSString *)methodName {
	return @"user.get_all";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_GetAll responseFromJSON:json];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"sinceId" : @"since_id",
                                  @"folders" : @"folder"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

@end

@implementation SyncanoParameters_Users_Get

- (NSString *)methodName {
	return @"user.get";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_Get responseFromJSON:json];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"state" : @"state",
                                  @"folders" : @"folder",
                                  @"filter" : @"filter"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

- (void)setFilter:(NSString *)filter {
    NSArray * acceptedValues = [self acceptedFilterValues];
    if ([acceptedValues containsObject:[filter lowercaseString]]) {
        _filter = filter;
    } else {
        [NSException raise:@"Wrong parameter value" format:@"Allowed values for filter parameter: %@ (use kSyncanoParametersFilter constans)", acceptedValues];
    }
}

- (NSArray*)acceptedFilterValues {
    return @[kSyncanoParametersFilterImage,kSyncanoParametersFilterText];
}

@end

@implementation SyncanoParameters_Users_GetOne

- (NSString *)methodName {
	return @"user.get_one";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_GetOne responseFromJSON:json];
}

@end

@implementation SyncanoParameters_Users_Update

- (NSString *)methodName {
	return @"user.update";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_Update responseFromJSON:json];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"nick" : @"nick",
                                  @"avatar" : @"avatar"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

@end

@implementation SyncanoParameters_Users_Count : SyncanoParameters

- (NSString *)methodName {
	return @"user.count";
}

- (id)responseFromJSON:(NSDictionary *)json {
	return [SyncanoResponse_Users_Count responseFromJSON:json];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary * parameters = @{@"projectId" : @"project_id",
                                  @"collectionId" : @"collection_id",
                                  @"collectionKey" : @"collection_key",
                                  @"state" : @"state",
                                  @"folders" : @"folders",
                                  @"filter" : @"filter"};
    return [SyncanoParameters mergeSuperParameters:[super JSONKeyPathsByPropertyKey] parameters:parameters];
}

- (void)setFilter:(NSString *)filter {
    NSArray * acceptedValues = [self acceptedFilterValues];
    if ([acceptedValues containsObject:[filter lowercaseString]]) {
        _filter = filter;
    } else {
        [NSException raise:@"Wrong parameter value" format:@"Allowed values for filter parameter: %@ (use kSyncanoParametersFilter constans)", acceptedValues];
    }
}

- (NSArray*)acceptedFilterValues {
    return @[kSyncanoParametersFilterImage,kSyncanoParametersFilterText];
}


@end

@implementation SyncanoParameters_Users_Delete

- (NSString *)methodName {
	return @"user.delete";
}

@end
