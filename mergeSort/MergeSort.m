//
//  MergeSort.m
//  mergeSort
//
//  Created by robbie on 14-7-2.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "MergeSort.h"

@interface MergeSort()
{
    @private
    int _index1 ;
    int _index2 ;
}

@property(strong,nonatomic)NSMutableArray *finalArray ;
@property(strong,nonatomic)NSArray *array1 ;
@property(strong,nonatomic)NSArray *array2 ;




@end

@implementation MergeSort

-(id)init
{
    self = [super init] ;
    if(self)
    {
        
    }
    return self ;
}

-(id)initWithArray:(NSMutableArray *)array
{
    self = [super init] ;
    if(self)
    {
        self.sortArray = array ;
    }
    return self ;
}




//========================================================
- (NSArray *)mergeArray:(NSArray *)arrayA
               andArray:(NSArray *)arrayB
{
    if (![arrayA count])
    {
        return arrayB;
    }
    if (![arrayB count])
    {
        return arrayA;
    }
    
    NSLog(@"@====>merage<===@\n\n") ;
    
    if ([arrayA[0] intValue] < [arrayB[0] intValue])
    {
        NSRange range;
        range.location = 1;
        range.length = [arrayA count] - 1;
        return [@[arrayA[0]] arrayByAddingObjectsFromArray:[self mergeArray:[arrayA subarrayWithRange:range] andArray:arrayB]];
    }
    else
    {
        NSRange range;
        range.location = 1;
        range.length = [arrayB count] - 1;
        return [@[arrayB[0]] arrayByAddingObjectsFromArray:[self mergeArray:arrayA andArray:[arrayB subarrayWithRange:range]]];
    }
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
    NSLog(@"====>array==%@\n\n",array) ;
    return [self mergeArray:[self mergeSort:leftArray] andArray:[self mergeSort:rightArray]];
}


@end
