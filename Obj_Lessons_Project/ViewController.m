//
//  ViewController.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 31.01.21.
//

#import "ViewController.h"

enum Metod {
    Sum,
    Subtraction,
    Multiplication,
    Division
};

typedef enum Metod metod;

//3. Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gander”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.

enum Gender {
    male,
    female,
    thirdGender
};

typedef enum Gender gender;

struct Human {
    NSString *name;
    NSInteger age;
    enum Gender gender;
};

typedef struct Human Human;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self printArray];
    [self calculate:Division with:5.0 and:10.0];
    
    Human Mike;
    Mike.name = @"Mike";
    Mike.age = 30;
    Mike.gender = male;
    NSLog(@"Human: \n name: %@, \n age: %ld, \n gender: %@", Mike.name, (long)Mike.age, [self convertToString:Mike.gender] );
    
    Human Ann;
    Ann.name = @"Ann";
    Ann.age = 25;
    Ann.gender = female;
    NSLog(@"Human: \n name: %@, \n age: %ld, \n gender: %@", Ann.name, (long)Ann.age, [self convertToString:Ann.gender] );
    
    Human Ron;
    Ron.name = @"Ron";
    Ron.age = 35;
    Ron.gender = thirdGender;
    NSLog(@"Human: \n name: %@, \n age: %ld, \n gender: %@", Ron.name, (long)Ron.age, [self convertToString:Ron.gender] );
}

//1. Создать массив строк и вывести его в консоль используя цикл.
- (void) printArray {
    NSMutableArray *arrayOfStrings = [NSMutableArray arrayWithObjects:@"one", @"two", @"tree", @"four", @"five", nil];
    for (NSString *string in arrayOfStrings) {
        NSLog(@"%@", string);
    }
}

//2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния;

- (CGFloat)calculate:(metod)metod with:(CGFloat)value1 and:(CGFloat)value2 {
    switch (metod) {
        case Sum:
            NSLog(@"%f + %f = %f", value1, value2, [self sum: value1 and: value2]);
            break;
        case Subtraction:
            NSLog(@"%f - %f = %f", value1, value2, [self subtraction: value1 and: value2]);
            break;
        case Multiplication:
            NSLog(@"%f * %f = %f", value1, value2, [self multiplication: value1 and: value2]);
            break;
        case Division:
            if (value2 == 0) {
                NSLog(@"Error! You can't divide by 0!");
                break;
            } else {
                NSLog(@"%f / %f = %f", value1, value2, [self division: value1 and: value2]);
                break;
            }
            break;
    }
    
    return 0;
}

- (CGFloat)sum:(CGFloat)value1 and:(CGFloat)value2 {
    return value1+value2;
}

- (CGFloat)subtraction:(CGFloat)value1 and:(CGFloat)value2 {
    return value1-value2;
}

- (CGFloat)multiplication:(CGFloat)value1 and:(CGFloat)value2 {
    return value1*value2;
}

- (CGFloat)division:(CGFloat)value1 and:(CGFloat)value2 {
    return value1/value2;
}

- (NSString*)convertToString:(gender)gender {
    NSString *result = nil;
    switch (gender) {
        case male:
            result = @"male";
            break;
        case female:
            result = @"female";
            break;
        case thirdGender:
            result = @"thirdGender";
            break;
    }
    return result;
}

@end





