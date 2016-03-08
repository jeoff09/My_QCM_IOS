//
//  TypSQLiteAdapter.m
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import "TypSQLiteAdapter.h"


@implementation TypSQLiteAdapter

- (void)insert:(Typ *)typ{

    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    //Get Table
    NSManagedObject *type = [NSEntityDescription  insertNewObjectForEntityForName:@"Typ" inManagedObjectContext:context];
    
    //insert Table
    [type setValue:typ.name forKey:@"name"];
    [type setValue:typ.medias forKey:@"medias"];
    [type setValue:typ.created_at forKey:@"created_at"];
    [type setValue:typ.updated_at forKey:@"updated_at"];
    
    
    //request DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription  entityForName:@"Typ" inManagedObjectContext:context];
    
    [appDelegate saveContext];
}
- (NSArray*)getAll{
    
    NSArray* typs = [NSArray new];
    
    //DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    // REQUEST DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    // get table
    fetchRequest.entity =[NSEntityDescription entityForName:@"Typ"inManagedObjectContext:context];
    
    // get All typ
    
    typs = [context executeFetchRequest:fetchRequest error:nil];
    
    
    return typs;

}
- (NSManagedObject*)getById:(NSManagedObject*) typ{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    NSManagedObject *object = [context objectWithID:typ.objectID];
    return object;

}
- (void)update:(NSManagedObject*) managedObject withTyp:(Typ*) typ{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    //update Table
    [managedObject setValue:typ.name forKey:@"name"];
    [managedObject setValue:typ.medias forKey:@"medias"];
    [managedObject setValue:typ.updated_at forKey:@"updated_at"];
    [appDelegate saveContext];
    
}
- (void)remove:(NSManagedObject*) typ{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    [context deleteObject:typ];
}

@end
