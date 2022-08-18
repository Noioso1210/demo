//
//  main.m
//  ocBasis_block
//
//  Created by mt on 2022/8/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //数组遍历
        __block NSInteger count = 0;
        NSArray<NSNumber *> *array = @[@0, @1, @2, @3, @4, @5];
        NSRange range = NSMakeRange(0, array.count);
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:range] options:NSEnumerationReverse usingBlock:^(NSNumber * _Nonnull number, NSUInteger idx, BOOL * _Nonnull stop) {
            if (number.integerValue >= 2) {
                ++count;
            }
        }];
        NSLog(@"%ld", count);
        
    }
    return 0;
}
