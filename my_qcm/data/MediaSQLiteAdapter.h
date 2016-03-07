//
//  MediaSQLiteAdapter.h
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Media.h"
#import "AppDelegate.h"

@interface MediaSQLiteAdapter : NSObject

- (NSArray*)getAll;
- (NSManagedObject*)getById:(NSManagedObject*) media;
- (void)update:(NSManagedObject*) managedObject withMedia:(Media*) media;
- (void)remove:(Media*) media;

@end
