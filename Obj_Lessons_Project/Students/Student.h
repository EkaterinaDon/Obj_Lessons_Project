//
//  Student.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 7.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <NSCoding>

- (instancetype)initWithName: (NSString *) name surname: (NSString *) surname age: (NSInteger) age;
- (NSString *)fullName;
- (void)incrAge: (NSInteger) incr;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, readonly) NSInteger age;



@end

NS_ASSUME_NONNULL_END
