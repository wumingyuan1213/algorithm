//
//  MergeSortUtil.m
//  mergeSort
//
//  Created by robbie on 14-7-7.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "MergeSortUtil.h"

@implementation MergeSortUtil

- (NSArray *)mergeArray:(NSArray *)arrayA
               andArray:(NSArray *)arrayB
{
    NSMutableArray *array = [NSMutableArray array] ;
    int index =0 ;
    int aIndex=0, bIndex = 0 ;
    while (aIndex< [arrayA count] && bIndex < [arrayB count])
    {
        if(arrayA[aIndex]<arrayB[bIndex])
        {
            array[index] =  arrayA[aIndex];
            index ++ ;
            aIndex ++ ;
        }else
        {
            array[index] =  arrayB[bIndex];
            index ++ ;
            bIndex ++ ;
        }
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

- (NSArray *) mergeSort:(NSArray *)array
{
    if ([array count] == 1)
    {
        return array;
    }
    int middle = (int)([array count] / 2);
    NSRange leftRange = NSMakeRange(0, middle);
    NSRange rightRange = NSMakeRange(middle, ([array count] - middle));
    NSArray *leftArray = [array subarrayWithRange:leftRange];
    NSArray *rightArray = [array subarrayWithRange:rightRange];
    return [self mergeArray:[self mergeSort:leftArray] andArray:[self mergeSort:rightArray]];
}

@end
