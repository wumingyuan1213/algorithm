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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MergeSortUtil *mergeSort = [[MergeSortUtil alloc]init] ;
        NSArray *array = [mergeSort mergeSort:@[@100,@7,@10,@19,@200,@25,@12,@17,@31,@30,@48]] ;
        NSLog(@"%@",array) ;
        NSLog(@"Hello, World!");
        
    }
    return 0;
}



