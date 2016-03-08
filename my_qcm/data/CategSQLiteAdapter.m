//
//  CategSQLiteAdapter.m
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import "CategSQLiteAdapter.h"

@implementation CategSQLiteAdapter
- (void)insert:(Categ *)categ{
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    //Get Table
    NSManagedObject *categorie = [NSEntityDescription  insertNewObjectForEntityForName:@"Categ" inManagedObjectContext:context];
    
    //insert Table
    [categorie setValue:categ.name forKey:@"name"];
    [categorie setValue:categ.created_at forKey:@"created_at"];
    [categorie setValue:categ.updated_at forKey:@"updated_at"];
    
    
    //request DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription  entityForName:@"Categ" inManagedObjectContext:context];
    
    [appDelegate saveContext];

}
- (NSArray*)getAll{
    
    NSArray* categs = [NSArray new];
    
    //DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    // REQUEST DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    // get table
    fetchRequest.entity =[NSEntityDescription entityForName:@"Categ"inManagedObjectContext:context];
    
    // get All Categs
    categs = [context executeFetchRequest:fetchRequest error:nil];
    
    
    return categs;
}
- (NSManagedObject*)getById:(NSManagedObject*) categ{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    NSManagedObject *object = [context objectWithID:categ.objectID];
    return object;
    
}
- (void)update:(NSManagedObject*) managedObject withCateg:(Categ*) categ{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    //update Table
    [managedObject setValue:categ.name forKey:@"name"];
    [managedObject setValue:categ.updated_at forKey:@"updated_at"];
    [appDelegate saveContext];
    
}
- (void)remove:(NSManagedObject*) categ{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    [context deleteObject:categ];
}

@end
