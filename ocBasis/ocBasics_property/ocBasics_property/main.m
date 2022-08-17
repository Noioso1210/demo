//
//  main.m
//  ocBasics_property
//
//  Created by mt on 2022/7/31.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.age = 19;
        p.name = @"academicDog";
        NSLog(@"%@ 's age is %d", p.name, p.age);
    }
    return 0;
}
