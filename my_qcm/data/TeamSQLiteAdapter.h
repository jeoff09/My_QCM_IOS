//
//  TeamSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Team.h"
#import "AppDelegate.h"


@interface TeamSQLiteAdapter : NSObject

- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) team;
- (void)update:(NSManagedObject*) managedObject withTeam:(Team*) team;
- (void)remove:(Team*) team;

@end
