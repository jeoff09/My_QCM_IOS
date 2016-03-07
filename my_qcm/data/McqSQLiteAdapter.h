//
//  McqSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mcq.h"
#import "AppDelegate.h"

@interface McqSQLiteAdapter : NSObject

- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) mcq;
- (void)update:(NSManagedObject*) managedObject withMcq:(Mcq*) mcq;
- (void)remove:(Mcq*) mcq;

@end
