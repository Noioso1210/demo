//
//  quickSort.m
//  ocBasis_sorting
//
//  Created by mt on 2022/8/18.
//


#import "quickSort.h"

@implementation quickSort

-(void)quickSort:(NSMutableArray *)arr andleft:(int)left andright:(int)right
{
    if (left >= right) {//如果数组长度为0或1时返回
            return ;
        }
        int key = [arr[left] intValue];
        int i = left;
        int j = right;
        
        while (i<j){
            while (i < j&&[arr[j] intValue] >= key) {
                j--;
            }
            arr[i] = arr[j];
            
            while (i < j&&[arr[i] intValue] <= key) {
                i++;
            }
            arr[j] = arr[i];
        }
        arr[i] = [NSString stringWithFormat:@"%d",key];
        [self quickSort:arr andleft:left andright:i - 1];
        [self quickSort:arr andleft:i + 1 andright:right];
}

@end
