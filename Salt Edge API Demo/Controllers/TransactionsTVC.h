//
//  TransactionsTVC.h 
//  SaltEdge API Demo
//
//  Created by nemesis on 7/21/14.
//  Copyright (c) 2016 Salt Edge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransactionsTVC : UITableViewController

@property (nonatomic, strong) NSNumber* accountId;
@property (nonatomic, strong) NSString* loginSecret;

@end
