//
//  main.m
//  mergeSort
//
//  Created by robbie on 14-7-2.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"
#import "MergeSortUtil.h"
#import "QuickSortUtil.h"
#import "RemoveDuplicate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MergeSortUtil *mergeSort = [[MergeSortUtil alloc]init] ;
        NSArray *array = [mergeSort mergeSort:@[@1,@1,@2]] ;
        NSLog(@"%@",array) ;
        
        QuickSortUtil *quickSort = [[QuickSortUtil alloc]init] ;
        NSMutableArray *arrays = [NSMutableArray arrayWithArray:@[@1,@2,@1]] ;
//        NSLog(@"origin = array===>%@",arrays) ;
        [quickSort quickSort:arrays] ;
        NSLog(@"%@",arrays) ;
        
        
        //========
//        NSMutableArray *array1 = [NSMutableArray arrayWithArray:@[@1,@2,@1]] ;
//        [quickSort quickSort:array1] ;
//        NSMutableArray *array2 = [NSMutableArray arrayWithArray:@[@2,@3]] ;
//        [quickSort quickSort:array2] ;
        
        /*
         test code
         1、A为空，B为空
         2、A无重复，B为空
         3、A有重复，B为空 x
         4、A无重复，B无重复
         5、A有重复，B无重复 x
         6、A有重复，B有重复，且重复内容不一样 x
         7、A有重复，B有重复，且重复内容有一样的 x
         */
        
//        RemoveDuplicate *removeDuplicate = [[RemoveDuplicate alloc]init] ;
//        NSArray *arraysss = [removeDuplicate removeDuplicate2WithArray1:array1 array2:array2] ;
//        NSLog(@"arrayss== %@",arraysss) ;
        
        
        
        NSArray *resultArray = [array sortedArrayUsingSelector:@selector(compare:)];
        
    }
    return 0;
}



