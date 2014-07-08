//
//  NSArray+BuddleSort.m
//  mergeSort
//
//  Created by robbie on 14-7-9.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "NSArray+BuddleSort.h"

@implementation NSArray (BuddleSort)

-(NSArray *)sortedArrayUsingComparatorss:(BuddleComparator)cmptr
{
    NSMutableArray *array = [NSMutableArray arrayWithArray:self] ;
    
    for (int i = 0 ; i< [array count]-1; i++)
    {
        for(int j = 0 ; j <([array count]-i-1) ;j++)
        {
            BuddleComparisonResult result = cmptr(array[j],array[j+1]) ;
            switch (result)
            {
                case BuddleOrderedAscending:
                {
                    
                }
                    break;
                    
                case BuddleOrderedDescending:
                {
                    NSNumber *number = array[j] ;
                    array[j] = array[j+1] ;
                    array[j+1] = number ;
                }
                    break;

                    
                default:
                    break;
            }
        }
    }
    return array ;
}

@end
