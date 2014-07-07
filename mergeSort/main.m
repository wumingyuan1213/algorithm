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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MergeSortUtil *mergeSort = [[MergeSortUtil alloc]init] ;
        NSArray *array = [mergeSort mergeSort:@[@100,@7,@10,@19,@200,@25,@12,@17,@31,@30,@48]] ;
        NSLog(@"%@",array) ;
        
        QuickSortUtil *quickSort = [[QuickSortUtil alloc]init] ;
        NSMutableArray *arrays = [NSMutableArray arrayWithArray:@[@6,@2,@7,@3,@8,@9]] ;
        NSLog(@"origin = array===>%@",arrays) ;
        [quickSort quickSort:arrays] ;
        NSLog(@"%@",arrays) ;
        
    }
    return 0;
}



