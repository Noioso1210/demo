//
//  Account.h
//  ocBasics_property
//
//  Created by mt on 2022/7/31.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Account :Person <PersonDelegate>

@property (nonatomic, strong) Person *accountHolder;

- (void) WithdrawMoney;

@end

NS_ASSUME_NONNULL_END
