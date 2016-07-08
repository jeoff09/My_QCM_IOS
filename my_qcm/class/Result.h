//
//  Result.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Mcq.h"

@interface Result : NSObject
{
    int* score;
    Mcq* mcq;
    BOOL* isCompleted;
    User* user;
    NSDate* created_at;
    NSDate* updated_at;
}

@property(nonatomic)int* score;
@property(nonatomic)BOOL* isCompleted;
@property(nonatomic,strong)User* user;
@property(nonatomic,strong)Mcq* mcq;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;

@end
