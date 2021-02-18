//
//  Category.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 7.02.21.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Student (description);


@end

@implementation Student (description)

- (NSString *)description {
    NSString *description = [NSString stringWithFormat:@"name: %@, surname: %@, fullname: %@, age: %ld", self.name, self.surname, self.fullName, (long)self.age];
    return description;
}

@end
