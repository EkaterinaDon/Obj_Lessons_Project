//
//  Calculator.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 10.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSNumber * _Null_unspecified (^CalculatorBlock) (NSNumber *value1, NSNumber *value2);

enum Metod {
    Sum,
    Subtraction,
    Multiplication,
    Division,
    RemainderOfDivision
};

typedef enum Metod metod;

@interface Calculator : NSObject

+ (NSNumber *)calculate:(metod)metod with:(NSNumber *)value1 and:(NSNumber *)value2;

@end

NS_ASSUME_NONNULL_END
