//
//  Team.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject
{
    NSArray* mcqs;
    NSString* name;
    NSArray* users;
    NSDate* created_at;
    NSDate* updated_at;
}
@property(nonatomic,strong)NSArray* mcqs;
@property(nonatomic,strong)NSString* name;
@property(nonatomic,strong)NSArray* users;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;
@end
