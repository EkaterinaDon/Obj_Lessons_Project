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
   
   // 1. Попрактиковаться с применением блоков и создать любую программу с ними (минимум 6 блоков).
    
    [Calculator calculate:Division with:[NSNumber numberWithInteger:10] and:[NSNumber numberWithInteger:3]];
    
    [Calculator calculate:RemainderOfDivision with:[NSNumber numberWithInteger:10] and:[NSNumber numberWithInteger:3]];
    
//     2. Добавить выполнение блоков в различные очереди: как с применением GCD, так и с помощью NSOperationQueue
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t slow = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    dispatch_queue_t fast = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_queue_t queue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    
    dispatch_sync(slow, ^{
        [Calculator calculate:Division with:[NSNumber numberWithInteger:30] and:[NSNumber numberWithInteger:3]];
    });
    
    dispatch_sync(fast, ^{
        [Calculator calculate:Multiplication with:[NSNumber numberWithInteger:30] and:[NSNumber numberWithInteger:3]];
    });
    
    dispatch_group_async(group, queue, ^{
        [Calculator calculate:Sum with:[NSNumber numberWithInteger:30] and:[NSNumber numberWithInteger:3]];
    });
    
    dispatch_group_async(group, queue, ^{
        [Calculator calculate:Subtraction with:[NSNumber numberWithInteger:30] and:[NSNumber numberWithInteger:3]];
    });
    
    NSOperationQueue *current = [NSOperationQueue currentQueue];
    NSOperationQueue *main = [NSOperationQueue mainQueue];
    
    [current addOperationWithBlock:^{
        [Calculator calculate:Division with:[NSNumber numberWithInteger:50] and:[NSNumber numberWithInteger:5]];
    }];  // если таким способом добавлять в очередь зависимость сделать не получится?
    
    [main addOperationWithBlock:^{
        [Calculator calculate:Subtraction with:[NSNumber numberWithInteger:50] and:[NSNumber numberWithInteger:5]];
    }];
    
}

    



@end





