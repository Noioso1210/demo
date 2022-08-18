//
//  heapSort.m
//  ocBasis_sorting
//
//  Created by mt on 2022/8/18.
//

#import "heapSort.h"

@implementation heapSort

- (void)heapSort:(NSMutableArray *)list
{
    NSInteger i ,size;
    size = list.count;
    //找出最大的元素放到堆顶
    for (i= list.count/2; i>=0; i--) {
        [self createBiggesHeap:list withSize:size beIndex:i];
    }
    
    while(size > 0){
        [list exchangeObjectAtIndex:size-1 withObjectAtIndex:0]; //将根(最大) 与数组最末交换
        size -- ;//树大小减小
        [self createBiggesHeap:list withSize:size beIndex:0];
    }
    NSLog(@"%@",list);
}

- (void)createBiggesHeap:(NSMutableArray *)list withSize:(NSInteger) size beIndex:(NSInteger)element
{
    NSInteger lchild = element *2 + 1,rchild = lchild+1; //左右子树
    while (rchild < size) { //子树均在范围内
        if (list[element]>=list[lchild] && list[element]>=list[rchild]) return; //如果比左右子树都大，完成整理
        if (list[lchild] > list[rchild]) { //如果左边最大
            [list exchangeObjectAtIndex:element withObjectAtIndex:lchild]; //把左面的提到上面
            element = lchild; //循环时整理子树
        }else{//否则右面最大
            [list exchangeObjectAtIndex:element withObjectAtIndex:rchild];
            element = rchild;
        }
        
        lchild = element * 2 +1;
        rchild = lchild + 1; //重新计算子树位置
    }
    //只有左子树且子树大于自己
    if (lchild < size && list[lchild] > list[element]) {
        [list exchangeObjectAtIndex:lchild withObjectAtIndex:element];
    }
}

@end
