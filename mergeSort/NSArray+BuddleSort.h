//
//  NSArray+BuddleSort.h
//  mergeSort
//
//  Created by robbie on 14-7-9.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BuddleComparisonResult)
{
    BuddleOrderedAscending = -1L,
    BuddleOrderedSame,
    BuddleOrderedDescending
};

typedef BuddleComparisonResult (^BuddleComparator)(id obj1, id obj2);

@interface NSArray (BuddleSort)

-(NSArray *)sortedArrayUsingComparatorss:(BuddleComparator)cmptr ;

@end
