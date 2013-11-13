//
//  SKPaymentQueue+Downloadable.h
//  
//
//  Created by Alberto Lagos on 12-11-13.
//  Copyright (c) 2013 nosze. All rights reserved.
//

#import <StoreKit/StoreKit.h>

@interface SKPaymentQueue (Downloadable)
- (BOOL) hasDownloadableContent;
@end
