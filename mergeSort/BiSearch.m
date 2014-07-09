//
//  BiSearch.m
//  mergeSort
//
//  Created by robbie on 14-7-9.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "BiSearch.h"

@implementation BiSearch

-(NSInteger)biSearch:(NSArray *)array withObject:(NSNumber *)number
{
    return [self biSearch:array start:0 end:[array count] withObject:number] ;
}


-(NSInteger)biSearch:(NSArray *)array start:(NSInteger)start end:(NSInteger)end withObject:(NSNumber *)number
{
    NSInteger mid = [array count]/2 ;
    
    if (number == array[mid])
        return mid;
    if (start > end)
        return -1;
    if (number > array[mid])
        return [self biSearch:array start:mid+1 end:end withObject:number ];
    else
        return [self biSearch:array start:start end:mid-1 withObject:number ];
}






@end
