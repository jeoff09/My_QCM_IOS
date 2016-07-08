//
//  Categ.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Categ : NSObject
{
    NSString* name;
    NSArray *mcqs;
    NSDate* created_at;
    NSDate* updated_at;
}
@property(nonatomic,strong)NSString* name;
@property(nonatomic,strong)NSArray* mcqs;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;
@end
