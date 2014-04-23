//
//  SyncanoProtocolCollections.h
//  Syncano
//
//  Created by Syncano Inc. on 23/12/13.
//  Copyright (c) 2013 Syncano Inc. All rights reserved.
//

#ifndef Syncano_SyncanoProtocolCollections_h
#define Syncano_SyncanoProtocolCollections_h

#import "SyncanoParameters_Collections.h"
#import "SyncanoResponse_Collections.h"

/**
 SyncanoProtocolCollections is used to transmit information about SyncanoCollection objects
 
 @note All `SyncanoProtocol*` protocols define method signatures used by objects (i.e. Syncano, SyncanoSyncServer communicating with Syncano API.
 */
@protocol SyncanoProtocolCollections <NSObject>
@required

#pragma mark - Synchronized

///-
/// @name Synchronous requests
///-

/**
 Create new collection
 
 @param params Parameters of new collection
 
 @return Response for creation of new collection
 */
- (SyncanoResponse_Collections_New *)collectionNew:(SyncanoParameters_Collections_New *)params;
/**
 Get collection list
 
 @param params Collection list parameters
 
 @return Response for collection list
 */
- (SyncanoResponse_Collections_Get *)collectionGet:(SyncanoParameters_Collections_Get *)params;
/**
 Get one collection
 
 @param params Single collection getter parameters
 
 @return Response for single collection
 */
- (SyncanoResponse_Collections_GetOne *)collectionGetOne:(SyncanoParameters_Collections_GetOne *)params;
/**
 Activate collection
 
 @param params Activate collection parameters
 
 @return Reponse to collection activation
 */
- (SyncanoResponse *)collectionActivate:(SyncanoParameters_Collections_Activate *)params;
/**
 Deactivate collection
 
 @param params Deactivate collection parameters
 
 @return Reponse to collection deactivation
 */
- (SyncanoResponse *)collectionDeactivate:(SyncanoParameters_Collections_Deactivate *)params;
/**
 Update existing collection
 
 @param params Update collection parameters
 
 @return Reponse to existing collection update
 */
- (SyncanoResponse_Collections_Update *)collectionUpdate:(SyncanoParameters_Collections_Update *)params;
/**
 Delete existing collection
 
 @param params Delete collection parameters
 
 @return Reponse to existing collection deletion
 */
- (SyncanoResponse *)collectionDelete:(SyncanoParameters_Collections_Delete *)params;
/**
 Add tag to existing collection
 
 @param params Add tag to collection parameters
 
 @return Reponse to tag addition
 */
- (SyncanoResponse *)collectionAddTag:(SyncanoParameters_Collections_AddTag *)params;
/**
 Remove tag of existing collection
 
 @param params Remove tag of collection parameters
 
 @return Reponse to tag deletion
 */
- (SyncanoResponse *)collectionDeleteTag:(SyncanoParameters_Collections_DeleteTag *)params;

#pragma mark - Asynchronized

///-
/// @name Asynchronous requests
///-

/**
 Create new collection
 
 @param params Parameters of new collection
 */
- (void)collectionNew:(SyncanoParameters_Collections_New *)params callback:(void (^)(SyncanoResponse_Collections_New *response))callback;
/**
 Get collection list
 
 @param params Collection list parameters
 */
- (void)collectionGet:(SyncanoParameters_Collections_Get *)params callback:(void (^)(SyncanoResponse_Collections_Get *response))callback;
/**
 Get one collection
 
 @param params Single collection getter parameters
 */
- (void)collectionGetOne:(SyncanoParameters_Collections_GetOne *)params callback:(void (^)(SyncanoResponse_Collections_GetOne *response))callback;
/**
 Activate collection
 
 @param params Activate collection parameters
 */
- (void)collectionActivate:(SyncanoParameters_Collections_Activate *)params callback:(void (^)(SyncanoResponse *response))callback;
/**
 Deactivate collection
 
 @param params Deactivate collection parameters
 */
- (void)collectionDeactivate:(SyncanoParameters_Collections_Deactivate *)params callback:(void (^)(SyncanoResponse *response))callback;
/**
 Update existing collection
 
 @param params Update collection parameters
 */
- (void)collectionUpdate:(SyncanoParameters_Collections_Update *)params callback:(void (^)(SyncanoResponse_Collections_Update *response))callback;
/**
 Delete existing collection
 
 @param params Delete collection parameters
 */
- (void)collectionDelete:(SyncanoParameters_Collections_Delete *)params callback:(void (^)(SyncanoResponse *response))callback;
/**
 Add tag to existing collection
 
 @param params Add tag to collection parameters
 */
- (void)collectionAddTag:(SyncanoParameters_Collections_AddTag *)params callback:(void (^)(SyncanoResponse *response))callback;
/**
 Remove tag of existing collection
 
 @param params Remove tag of collection parameters
 */
- (void)collectionDeleteTag:(SyncanoParameters_Collections_DeleteTag *)params callback:(void (^)(SyncanoResponse *response))callback;

@end

#endif
