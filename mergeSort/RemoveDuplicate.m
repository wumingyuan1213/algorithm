//
//  RemoveDuplicate.m
//  mergeSort
//
//  Created by robbie on 14-7-8.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "RemoveDuplicate.h"

@implementation RemoveDuplicate

/*
 * 一般方式
 */
-(NSArray *)removeDuplicateWithArray1:(NSMutableArray *)array1
                               array2:(NSMutableArray *)array2
{
    
    NSMutableArray *array = [NSMutableArray array] ;
    while ([array1 count]>0)
    {
        while ([array2 count]>0)
        {
            if(array1[0]<array2[0])
            {
                [array addObject:array1[0]] ;
                break ;
            }else if(array1[0]>array2[0])
            {
                [array addObject:array2[0]] ;
                [array2 removeObjectAtIndex:0] ;
            }else
            {
                [array addObject:array2[0]] ;
                [array2 removeObjectAtIndex:0] ;
                break ;
            }
        }
        if([array2 count]==0)
        {
            [array addObject:array1[0]] ;
        }
        [array1 removeObjectAtIndex:0] ;
    }
    
    if([array1 count]==0&&array2>0)
    {
        [array addObjectsFromArray:array2] ;
    }
    return array ;
}



/*
 * 如果两个数组已经排好顺序 则只需要o(n)次 去重
 *
 *  A-> 1 4 5 7 9
 *  B-> 2 3 6 7 8
 *  那么merge一遍，每次都拿A和B的头来比较：
 *  如果A头和B头相等，那么就找到了一次重复，
 *
 *  如果A头和B头不相等，那么必定有一个数是较小的。我们现在假设A头是比较小的，因为A数组是有序的，
 *  于是A头是整个A数组中最小的。而B数组也是有序的，B头是B数组最小的，
 *  A头比B头还小，那么A头就是所有数据中最小的了，那么这个最小值是肯定没有重复的了。
 *
 *
 */
- (NSArray *)removeDuplicate2WithArray1:(NSArray *)arrayA
                                 array2:(NSArray *)arrayB
{
    NSMutableArray *array = [NSMutableArray array] ;
    int index =0 ;
    int aIndex=0, bIndex = 0 ;
    while (aIndex< [arrayA count] && bIndex < [arrayB count])
    {
        if(arrayA[aIndex]==arrayB[bIndex])
        {
            array[index] =  arrayA[aIndex];
            bIndex ++;
            aIndex ++ ;
        }else if(arrayA[aIndex]<arrayB[bIndex])
        {
            array[index] =  arrayA[aIndex];
            aIndex ++ ;
        }else
        {
            array[index] =  arrayB[bIndex];
            bIndex ++ ;
        }
        index ++ ;
    }
    while (aIndex< [arrayA count])
    {
        array[index++] =  arrayA[aIndex++];
    }
    
    while (bIndex< [arrayB count])
    {
        array[index++] =  arrayB[bIndex++];
    }
    return array ;
}





@end
