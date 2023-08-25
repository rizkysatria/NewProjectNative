//
//  NewProjectModule.m
//  NewProjectNative
//
//  Created by PT Phincon on 25/08/23.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(NewProjectBridgeManager, NSObject)
RCT_EXTERN_METHOD(updateTitle: (NSString *)newTitle)
RCT_EXTERN_METHOD(test)
@end
