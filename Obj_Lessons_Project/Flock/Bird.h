//
//  Bird.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 11.02.21.
//

#import <Foundation/Foundation.h>
#import "Wing.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (instancetype)initWithBreed:(NSString *)breed andWing:(Wing *)wing;

@property (nonatomic, strong) Wing *wing;
@property (nonatomic, strong) NSString *breed;

- (void)aboutBird;

@end

NS_ASSUME_NONNULL_END
