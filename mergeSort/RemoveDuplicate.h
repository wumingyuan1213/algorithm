//
//  RemoveDuplicate.h
//  mergeSort
//
//  Created by robbie on 14-7-8.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RemoveDuplicate : NSObject

-(NSArray *)removeDuplicateWithArray1:(NSMutableArray *)array1
                               array2:(NSMutableArray *)array2 ;
/*
 test code
 1、A为空，B为空
 2、A无重复，B为空
 3、A有重复，B为空
 4、A无重复，B无重复
 5、A有重复，B无重复
 6、A有重复，B有重复，且重复内容不一样
 7、A有重复，B有重复，且重复内容有一样的
 */

-(NSArray *)removeDuplicate2WithArray1:(NSMutableArray *)array1
                               array2:(NSMutableArray *)array2 ;

@end
