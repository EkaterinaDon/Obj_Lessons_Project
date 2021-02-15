//
//  Wing.h
//  Obj_Lessons_Project
//
//  Created by Ekaterina on 11.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wing : NSObject

@property(nonatomic, strong) NSNumber *number;
-(instancetype)initWithNumber:(NSNumber *)number;

@end

NS_ASSUME_NONNULL_END
