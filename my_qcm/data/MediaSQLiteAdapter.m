//
//  MediaSQLiteAdapter.m
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import "MediaSQLiteAdapter.h"

@implementation MediaSQLiteAdapter
- (void)insert:(Media *)media{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    //Get Table
    NSManagedObject *Tmedia = [NSEntityDescription  insertNewObjectForEntityForName:@"Media" inManagedObjectContext:context];
    
    //insert Table
    [Tmedia setValue:media.name forKey:@"name"];
    [Tmedia setValue:media.url forKey:@"url"];
    [Tmedia setValue:media.typ forKey:@"typ"];
    [Tmedia setValue:media.created_at forKey:@"created_at"];
    [Tmedia setValue:media.updated_at forKey:@"updated_at"];
    
    
    //request DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription  entityForName:@"Mcq" inManagedObjectContext:context];
    
    [appDelegate saveContext];
}
- (NSArray*)getAll{
    return nil;
}
- (NSManagedObject*)getById:(NSManagedObject*) media{
    return nil;
}
- (void)update:(NSManagedObject*) managedObject withMedia:(Media*) media{
    
}
- (void)remove:(NSManagedObject*) media{
    
}

@end
