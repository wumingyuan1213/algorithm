//
//  MergeSort.h
//  mergeSort
//
//  Created by robbie on 14-7-2.
//  Copyright (c) 2014年 wenri365. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MergeSort : NSObject

@property(strong,nonatomic)NSArray *sortArray ;

-(id)initWithArray:(NSMutableArray *)array ;

-(NSArray *)mergeSort:(NSArray *)array ;

@end
