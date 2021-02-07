//
//  ViewController.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 31.01.21.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *president44 = [[Student alloc] initWithName:@"Barack" surname:@"Obama" age:59];
    Student *president45 = [[Student alloc] initWithName:@"Donald" surname:@"Trump" age:74];
    Student *president46 = [[Student alloc] initWithName:@"Joe" surname:@"Biden" age:78];
    
    NSMutableArray *allStudents = [NSMutableArray arrayWithObjects:president44, president45, president46, nil];
    
    [president45 incrAge:1];
    
    for (Student *student in allStudents) {
        NSLog(@"%@", student.description);
    }
    
    president44 = nil;
    president45 = nil;
    president46 = nil;
}


@end


//1. Создать программу, которая будет выводить список студентов. Для этого необходимо создать класс Студент, а значения свойств устанавливать, используя собственный конструктор.
//2. У студента должно быть свойство age (возраст), оно должно быть только для чтения
//3. У студента должны быть свойства name, surname и fullName. Первые два должны быть обычными свойствами, а fullName должно возвращать строку состоящую из склеенных name и surname.
//4. Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
//5. Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения).



