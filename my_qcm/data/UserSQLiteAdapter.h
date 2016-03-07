//
//  UserSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "AppDelegate.h"
@interface UserSQLiteAdapter : NSObject
- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) user;
- (void)update:(NSManagedObject*) managedObject withUser:(User*) user;
- (void)remove:(User*) user;
@end
