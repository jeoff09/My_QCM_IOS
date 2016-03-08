//
//  Mcq.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Categ.h"
@interface Mcq : NSObject
{
    NSString* name;
    NSDate* dateEnd;
    NSDate* dateStart;
    NSInteger* duration;
    Categ* categ;
    NSArray* question;
    NSArray* results;
    NSDate* created_at;
    NSDate* updated_at;
}
@property(nonatomic,strong)NSString* name;
@property(nonatomic,strong)NSDate* dateEnd;
@property(nonatomic,strong)NSDate* dateStart;
@property(nonatomic)NSInteger* duration;
@property(nonatomic,strong)Categ* categ;
@property(nonatomic,strong)NSArray* question;
@property(nonatomic,strong)NSArray* results;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;
@end
