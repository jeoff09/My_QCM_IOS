//
//  QuestionSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "AppDelegate.h"

@interface QuestionSQLiteAdapter : NSObject

- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) question;
- (void)update:(NSManagedObject*) managedObject withQuestion:(Question*) question;
- (void)remove:(Question*) question;

@end
