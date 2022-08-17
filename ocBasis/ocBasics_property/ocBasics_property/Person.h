//
//  Person.h
//  ocBasics_property
//
//  Created by mt on 2022/7/31.
//

#import <Foundation/Foundation.h>
#import "Money.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PersonDelegate <NSObject>

- (void) WithdrawMoney;

@end


@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
    
@property(nonatomic, strong) Money *money;

@property int age;
@property(nonatomic, copy)NSString *name;

@property(nonatomic, weak)id<PersonDelegate> delegate;



@end

NS_ASSUME_NONNULL_END
