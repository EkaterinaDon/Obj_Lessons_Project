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
    
    //1. Изменить созданный калькулятор из предыдущих уроков на ручное управление памятью.
    Calculator *calculator = [[Calculator alloc] init];
    NSNumber *value1 = [[NSNumber alloc] initWithDouble:(CGFloat)5];
    NSNumber *value2 = [[NSNumber alloc] initWithDouble:(CGFloat)2];
    
    NSNumber *divide = [calculator calculate:Division with:value1 and:value2];
    [calculator release];
    [divide release];
    
    //2. Смоделировать и разработать программу для стаи птиц (на основе практического задания) с применением ручного управления памятью.
    Flock *flock = [[Flock alloc] init];
    
    Wing *eagleWings = [[Wing alloc] initWithNumber:@2];
    Bird *eagle = [[Bird alloc] initWithBreed:@"Eagle" andWing:eagleWings];
    
    Wing *crowWings = [[Wing alloc] initWithNumber:@2];
    Bird *crow = [[Bird alloc] initWithBreed:@"Crow" andWing:crowWings];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:eagle, crow, nil];
    [flock configure: birds];
    
    [flock release];
    
    
    
}

    



@end





