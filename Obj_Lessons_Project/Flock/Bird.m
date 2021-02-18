//
//  Bird.m
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 11.02.21.
//

#import "Bird.h"
#import "Wing.h"

@implementation Bird

- (instancetype)init {
     self = [super init];
     if (self) {
         NSLog(@"Bird init");
     }
     return self;
 }

- (instancetype)initWithBreed:(NSString *)breed andWing:(Wing *)wing {
     self = [super init];
     if (self) {
         [wing retain];
         [wing release];
         self.wing = wing;
         NSLog(@"Wings add");

         [breed retain];
         [breed release];
         self.breed = breed;
     }
     return self;
 }

- (void)aboutBird {
    NSLog(@"Breed - %@; Wings count - %@", self.breed, [self.wing number]);
 }

 - (void)dealloc {
     NSLog(@"Dealloc Breed - %@", self.breed);
     [self.breed release];
     [self.wing release];
     [super dealloc];
 }

@end
