//
//  BuddleSortUtil.m
//  mergeSort
//
//  Created by robbie on 14-7-8.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "BuddleSortUtil.h"

@implementation BuddleSortUtil

-(void)buddleSort:(NSMutableArray *)array
{
    for (int i = 0 ; i< [array count]-1; i++)
    {
        for(int j = 0 ; j <([array count]-i-1) ;j++)
        {
            if(array[j]>array[j+1])
            {
                NSNumber *number = array[j] ;
                array[j] = array[j+1] ;
                array[j+1] = number ;
            }
        }
    }
}


@end
