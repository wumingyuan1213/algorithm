//
//  QuickSortUtil.m
//  mergeSort
//
//  Created by robbie on 14-7-7.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import "QuickSortUtil.h"

@implementation QuickSortUtil

-(void)quickArrayMake2:(NSMutableArray *)array
        withStartIndex:(NSUInteger)low
         withLastIndex:(NSUInteger)high
{
    if(low>=high)
    {
        return;
    }
    NSUInteger first=low;
    NSUInteger last=high;
    NSNumber *k = array[first];/*用字表的第一个记录作为枢轴*/
    while(first<last)
    {
        while(first<last&&array[last]>=k)
            --last;
        array[first]=array[last];/*将比第一个小的移到低端*/
        while(first<last&&array[first]<=k)
            ++first;
        array[last]=array[first];/*将比第一个大的移到高端*/
    }
    array[first]=k;/*枢轴记录到位*/
    
    [self quickArrayMake2:array withStartIndex:low withLastIndex:first-1] ;
    [self quickArrayMake2:array withStartIndex:last+1 withLastIndex:high] ;
    
}

-(int)quickArrayMake3:(NSMutableArray *)s
       withStartIndex:(int)ll
        withLastIndex:(int)rr
{
    
    int i = ll, j = rr;
	NSNumber *number = s[ll]; //s[l]即s[i]就是第一个坑
	while (i < j)
	{
		// 从右向左找小于x的数来填s[i]
		while(i < j && [s[j]intValue] >= [number intValue])
			j--;
		if(i < j)
		{
			s[i] = s[j]; //将s[j]填到s[i]中，s[j]就形成了一个新的坑
			i++;
		}
        
		// 从左向右找大于或等于x的数来填s[j]
		while(i < j && [s[i] intValue]< [number intValue])
			i++;
		if(i < j)
		{
			s[j] = s[i]; //将s[i]填到s[j]中，s[i]就形成了一个新的坑
			j--;
		}
	}
	//退出时，i等于j。将x填到这个坑中。
	s[i] = number;
    
	return i;
}



-(int)quickArrayMake1:(NSMutableArray *)array
       withStartIndex:(int)ll
        withLastIndex:(int)rr
{
    
    int left = ll, right = rr;
    NSNumber *k = array[ll] ;
    while (left<right)
    {
        
        while (left<right &&[array[right] intValue]>= [k intValue])
        {
            right-- ;
        }
        
        if(left < right)
		{
            array[left] = array[right] ;
			left ++;
		}
        while (left<right &&[array[left] intValue] <= [k intValue])
        {
            left ++ ;
        }
        if(left < right)
		{
            array[right] = array[left] ;
			right--;
		}
    }
    array[left] = k ;
    return left ;
}

-(NSUInteger)quickArrayMake:(NSMutableArray *)array
             withStartIndex:(NSUInteger)startIndex
              withLastIndex:(NSUInteger)lastIndex
{
    NSNumber *k = array[startIndex] ;
    NSInteger iTraversal = startIndex;
    
    for (NSUInteger i = startIndex ;i<lastIndex ;i++)
    {
        if([array[i] intValue]<[k intValue])
        {
            iTraversal ++ ;
            [array exchangeObjectAtIndex:i withObjectAtIndex:iTraversal] ;
        }
    }
    [array exchangeObjectAtIndex:startIndex withObjectAtIndex:iTraversal] ;
    
    return [array indexOfObject:k] ;
}


-(void)quickSort:(NSMutableArray *)array
  withStartIndex:(int)i
   withLastIndex:(int)j
{
    if(i<j)
    {
        NSUInteger index = [self quickArrayMake1:array withStartIndex:i withLastIndex:j] ;
        [self quickSort:array withStartIndex:i withLastIndex:index-1] ;
        [self quickSort:array withStartIndex:index+1 withLastIndex:j] ;
    }
}

-(void)quickSort:(NSMutableArray *)array
{
    NSUInteger index = [array count];
    [self quickSort:array withStartIndex:0 withLastIndex:index-1] ;
}


-(void)quickSort2:(NSMutableArray *)array
{
    NSUInteger index = [array count];
    [self quickArrayMake2:array withStartIndex:0 withLastIndex:index-1] ;
}


//=================
-(void)quickSortAnArray:(NSMutableArray*) theArray
{
    [self quickSortWithArray:theArray withLeft:0 withRight:(theArray.count)];
}

-(void) quickSortWithArray:(NSMutableArray*) theArray withLeft: (NSInteger) left withRight: (NSInteger) right
{
    if (left < right) {
        NSInteger pivotIndex = [self partitionWithArray:theArray Left:left andRight:right];
        //        NSLog(@"=======================1=======================") ;
        [self printArray:theArray] ;
        [self quickSortWithArray:theArray withLeft:left withRight:pivotIndex];
        //        NSLog(@"======================2=======================") ;
        [self printArray:theArray] ;
        [self quickSortWithArray:theArray withLeft:pivotIndex+1 withRight:right];
        //        NSLog(@"=======================3=======================") ;
        [self printArray:theArray] ;
    }
}

-(NSInteger) partitionWithArray:(NSMutableArray*) theArray Left: (NSInteger) left andRight: (NSInteger) right
{
    NSNumber *pivot = theArray[left];
    NSInteger leftTraversal = left;
    for (NSInteger i=left; i<right; i++) {
        if ([theArray[i] intValue] < [pivot intValue]) {
            leftTraversal++;
            [theArray exchangeObjectAtIndex:i withObjectAtIndex:leftTraversal];
        }
    }
    [theArray exchangeObjectAtIndex:left withObjectAtIndex:leftTraversal];
    return [theArray indexOfObject:pivot];
}



-(void)printArray:(NSMutableArray*)theArray
{
    //    NSLog(@"==================================") ;
    for (int i=0;i<theArray.count;i++) {
        //        NSLog(@"index %d: %d",i,[[theArray objectAtIndex:i]  intValue]);
    }
}

@end
