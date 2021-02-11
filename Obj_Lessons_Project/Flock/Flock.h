//
//  Flock.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 11.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSArray *birds;

- (void)configure:(NSArray *)birds;

@end

NS_ASSUME_NONNULL_END
