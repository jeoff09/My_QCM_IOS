//
//  AnswerSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Answer.h"
#import "AppDelegate.h"

@interface AnswerSQLiteAdapter : NSObject
- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) answer;
- (void)update:(NSManagedObject*) managedObject withAnswer:(Answer*) answer;
- (void)remove:(Answer*) answer;
@end
