//
//  TypSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Typ.h"
#import "AppDelegate.h"

@interface TypSQLiteAdapter : NSObject
- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) typ;
- (void)update:(NSManagedObject*) managedObject withTyp:(Typ*) typ;
- (void)remove:(Typ*) typ;
@end
