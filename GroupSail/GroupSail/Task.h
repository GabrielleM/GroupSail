//
//  Task.h
//  GroupSail
//
//  Created by ENTY on 13-01-19.
//  Copyright (c) 2013 GroupSail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Milestone, Student;

@interface Task : NSManagedObject

@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) Milestone *milestone;
@property (nonatomic, retain) Student *student;

@end
