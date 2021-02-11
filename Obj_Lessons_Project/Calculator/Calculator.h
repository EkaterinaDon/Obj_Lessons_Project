//
//  Calculator.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 10.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum Metod {
    Sum,
    Subtraction,
    Multiplication,
    Division
};

typedef enum Metod metod;

@interface Calculator : NSObject

@property (nonatomic, strong) NSNumber *value1;
@property (nonatomic, strong) NSNumber *value2;

- (NSNumber *)calculate:(metod)metod with:(NSNumber *)value1 and:(NSNumber *)value2;

@end

NS_ASSUME_NONNULL_END
