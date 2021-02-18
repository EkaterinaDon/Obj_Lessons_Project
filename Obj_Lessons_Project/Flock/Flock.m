//
//  Flock.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 11.02.21.
//

#import "Flock.h"
#import "Bird.h"

@implementation Flock

- (instancetype)init {
     self = [super init];
     if (self) {
         NSLog(@"Flock init");
     }
     return self;
 }

 - (void)configure:(NSArray *)birds {
     [birds retain];
     [birds release];
     _birds = birds;
     for (Bird *bird in birds) {
         NSLog(@"Add new bird");
         [bird aboutBird];
     }
 }

 - (void)remove {
     NSLog(@"Remove Flock");
     for (Bird *bird in _birds) {
         [bird release];
     }
     [self.birds release];
 }

 - (void)dealloc {
     [self remove];
     NSLog(@"Dealloc Flock");
     [super dealloc];
 }

@end
