//
//  Answer.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AppDelegate.h"

@interface Answer : NSObject
{
    NSString* ans;
    Question *question;
    Boolean* isTrue;
    NSDate* created_at;
    NSDate* updated_at;
    NSManagedObjectID* identifiant;
}
@property(nonatomic,strong)NSString* ans;
@property(nonatomic,strong)Question* question;
@property(nonatomic)Boolean* isTrue;
@property(nonatomic,strong)NSDate* created_at;
@property(nonatomic,strong)NSDate* updated_at;

@property(nonatomic, readonly, strong) NSManagedObjectID *objectID;
@end
