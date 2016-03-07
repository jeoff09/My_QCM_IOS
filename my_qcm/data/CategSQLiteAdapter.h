//
//  CategSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Categ.h"
#import "AppDelegate.h"

@interface CategSQLiteAdapter : NSObject
- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) categ;
- (void)update:(NSManagedObject*) managedObject withCateg:(Categ*) categ;
- (void)remove:(Categ*) categ;
@end
