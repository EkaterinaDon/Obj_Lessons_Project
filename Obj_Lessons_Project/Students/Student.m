//
//  Student.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 7.02.21.
//

#import "Student.h"

@implementation Student


- (instancetype)initWithName: (NSString *) name surname: (NSString *) surname age: (NSInteger) age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        _age = age;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.surname = [aDecoder decodeObjectForKey:@"surname"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
}


- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

- (void)incrAge: (NSInteger) incr {
    _age += incr;
}

@end

