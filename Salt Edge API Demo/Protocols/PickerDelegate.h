//
//  PickerDelegate.h
//  SaltEdge API Demo
//
//  Created by nemesis on 7/23/14.
//  Copyright (c) 2016 Salt Edge. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^PickerCompletionBlock)(id);

@protocol PickerDelegate <NSObject>

- (void)presentPickerWithOptions:(NSArray*)options withCompletionBlock:(PickerCompletionBlock)completionBlock;

@end
