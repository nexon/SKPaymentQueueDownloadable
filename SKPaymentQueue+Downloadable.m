//
//  SKPaymentQueue+Downloadable.m
//  JR-ear-training
//
//  Created by Alberto Lagos on 12-11-13.
//  Copyright (c) 2013 wizdommusic. All rights reserved.
//

#import "SKPaymentQueue+Downloadable.h"

@implementation SKPaymentQueue (Downloadable)

- (BOOL) hasDownloadableContent {
    __block BOOL value = NO;
    [self.transactions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        SKPaymentTransaction *transaction = obj;
        if(transaction.downloads) {
            value = YES;
            *stop = YES;
        }
        
    }];
    return value;
}

@end
