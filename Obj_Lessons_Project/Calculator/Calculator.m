//
//  Calculator.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 10.02.21.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Calculators init");
    }
    return self;
}

- (NSNumber *)calculate:(metod)metod with:(NSNumber *)value1 and:(NSNumber *)value2 {
    
    [value1 retain];
    [value1 release];
    self.value1 = value1;
    
    [value2 retain];
    [value2 release];
    self.value2 = value2;
    
    switch (metod) {
        case Sum:
            NSLog(@"%@ + %@ = %@", value1, value2, [self sum: value1 and: value2]);
            break;
        case Subtraction:
            NSLog(@"%@ - %@ = %@", value1, value2, [self subtraction: value1 and: value2]);
            break;
        case Multiplication:
            NSLog(@"%@ * %@ = %@", value1, value2, [self multiplication: value1 and: value2]);
            break;
        case Division:
            if (value2 == 0) {
                NSLog(@"Error! You can't divide by 0!");
                break;
            } else {
                NSLog(@"%@ / %@ = %@", value1, value2, [self division: value1 and: value2]);
                break;
            }
            break;
    }
    return 0;
}

- (void)remove {
    [self.value1 release];
    [self.value2 release];
    NSLog(@"value1 and value2 were released");
}

- (void)dealloc {
    [self remove];
    NSLog(@"Calculators dealloc");
    [super dealloc];
}

- (NSNumber *)sum:(NSNumber *)value1 and:(NSNumber *)value2 {
    return [NSNumber numberWithDouble: (value1.doubleValue+value2.doubleValue)];
}

- (NSNumber *)subtraction:(NSNumber *)value1 and:(NSNumber *)value2 {
    return [NSNumber numberWithDouble: (value1.doubleValue-value2.doubleValue)];
}

- (NSNumber *)multiplication:(NSNumber *)value1 and:(NSNumber *)value2 {
    return [NSNumber numberWithDouble: (value1.doubleValue*value2.doubleValue)];
}

- (NSNumber *)division:(NSNumber *)value1 and:(NSNumber *)value2 {
    return [NSNumber numberWithDouble: (value1.doubleValue/value2.doubleValue)];
}


@end
