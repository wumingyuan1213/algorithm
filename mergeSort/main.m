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
        NSArray *array = [mergeSort mergeSort:@[@100,@7,@10,@19,@200,@25,@12,@17,@31,@30,@48]] ;
        NSLog(@"%@",array) ;
        
        QuickSortUtil *quickSort = [[QuickSortUtil alloc]init] ;
        NSMutableArray *arrays = [NSMutableArray arrayWithArray:@[@9,@3,@6,@7,@4,@5]] ;
//        NSLog(@"origin = array===>%@",arrays) ;
        [quickSort quickSortAnArray:arrays] ;
//        NSLog(@"%@",arrays) ;
        
        
        //========
        NSMutableArray *array1 = [NSMutableArray arrayWithArray:@[@1,@4,@5,@7,@9,@88,@100,@2,@6,@13]] ;
        [quickSort quickSortAnArray:array1] ;
        NSMutableArray *array2 = [NSMutableArray arrayWithArray:@[@2,@3,@6,@7,@8,@88,@90,@1000,@108,@1,@40]] ;
        [quickSort quickSortAnArray:array2] ;
        
        RemoveDuplicate *removeDuplicate = [[RemoveDuplicate alloc]init] ;
        NSArray *arraysss = [removeDuplicate removeDuplicate2WithArray1:array1 array2:array2] ;
        NSLog(@"arrayss== %@",arraysss) ;
    }
    return 0;
}



