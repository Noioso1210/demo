//
//  selectSort.m
//  ocBasis_sorting
//
//  Created by mt on 2022/8/18.
//


#import "selectSort.h"

@implementation selectSort

- (void)selectionSort:(NSMutableArray *)array {
    for (int i = 0; i < array.count; i++) {
            int min = i;
            int a = [array[i] intValue];
            for (int j = i + 1; j < array.count; j++) {
                if ([array[j] intValue]<a) {
                    min = j;
                    a = [array[j] intValue];
                }
            }
            [array exchangeObjectAtIndex:i withObjectAtIndex:min];
        }
}

@end
