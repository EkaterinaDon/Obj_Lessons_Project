//
//  ViewController.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 31.01.21.
//

#import "ViewController.h"


@interface ViewController ()

@end

typedef enum Metod metod;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//1. Создать программу, которая будет сохранять введенные данные и считывать их с применением списков свойств.
    Student *student = [[Student alloc] initWithName:@"Ivan" surname:@"Ivanov" age:28];
    
    [self writeStudent: student];
    student = nil;
    [self printStudent: student];
    
    student = [self readStudent];
    [self printStudent: student];
    
}

//NSString* directory() {
//    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/student.txt"];
//}

- (NSString *)directory {
    return self.directory = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/student.txt"];
}
    
- (void)writeStudent:(Student *)student {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:student requiringSecureCoding:NO error:nil];
    [data writeToFile:self.directory atomically:YES];
    NSLog(@"Сохранено!");
}

- (Student*)readStudent {
    NSLog(@"Прочитано!");
    return [NSKeyedUnarchiver unarchiveObjectWithFile:self.directory];
}

- (void)printStudent:(Student *)student {
    NSLog(@"name - %@, surname - %@", student.name, student.surname);
}



@end





