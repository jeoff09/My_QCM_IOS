//
//  Question.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Media.h"
#import "Mcq.h"
@interface Question : NSObject
{
    NSString* que;
    Media* media;
    NSArray* answers;
    Mcq* mcq;
    NSDate* created_at;
    NSDate* updated_at;
}
@property(nonatomic,strong)NSString* que;
@property(nonatomic,strong)Media* media;
@property(nonatomic,strong)NSArray* answers;
@property(nonatomic,strong)Mcq* mcq;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;
@end