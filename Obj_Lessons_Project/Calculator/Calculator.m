//
//  Calculator.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 10.02.21.
//

#import "Calculator.h"

@implementation Calculator

+ (NSNumber *)calculate:(metod)metod with:(NSNumber *)value1 and:(NSNumber *)value2 {
    
    switch (metod) {
        case Sum:
            NSLog(@"%@ + %@ = %@", value1, value2, sum(value1, value2));
            break;
        case Subtraction:
            NSLog(@"%@ - %@ = %@", value1, value2, subtraction(value1, value2));
            break;
        case Multiplication:
            NSLog(@"%@ * %@ = %@", value1, value2, multiplication(value1, value2));
            break;
        case Division:
            if (value2 == 0) {
                NSLog(@"Error! You can't divide by 0!");
                break;
            } else {
                NSLog(@"%@ / %@ = %@", value1, value2, division(value1, value2));
                break;
            }
            break;
        case RemainderOfDivision:
            NSLog(@"%@ %s %@ = %@", value1, "%", value2, remainderOfDivision(value1, value2));
            break;
    }
    return 0;
}

CalculatorBlock sum = ^(NSNumber *value1, NSNumber *value2) {
        return [NSNumber numberWithDouble: (value1.doubleValue + value2.doubleValue)];
};

CalculatorBlock subtraction = ^(NSNumber *value1, NSNumber *value2) {
    return [NSNumber numberWithDouble: (value1.doubleValue - value2.doubleValue)];
};

CalculatorBlock multiplication = ^(NSNumber *value1, NSNumber *value2) {
    return [NSNumber numberWithDouble: (value1.doubleValue * value2.doubleValue)];
};

CalculatorBlock division = ^(NSNumber *value1, NSNumber *value2) {
    return [NSNumber numberWithDouble: (value1.doubleValue / value2.doubleValue)];
};

CalculatorBlock remainderOfDivision = ^(NSNumber *value1, NSNumber *value2) {
    return [NSNumber numberWithInteger: (value1.integerValue % value2.integerValue)];
};



@end
