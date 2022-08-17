//
//  Person.m
//  ocBasics_property
//
//  Created by mt on 2022/7/31.
//

#import "Person.h"

@implementation Person

- (void) setName:(NSString *)name{
    _name = name;
}

- (void)setAge:(int)age{
    _age = age;
}

- (int)age{
    return _age;
}

-(NSString *)name{
    return _name;
}


@end
