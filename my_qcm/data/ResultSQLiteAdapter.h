//
//  ResultSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Result.h"
#import "AppDelegate.h"
@interface ResultSQLiteAdapter : NSObject

- (void)insert:(Result *)result;
- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) result;
- (void)update:(NSManagedObject*) managedObject withResult:(Result*) result;
- (void)remove:(Result*) result;

@end
