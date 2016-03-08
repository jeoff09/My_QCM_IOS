//
//  AnswerSQLiteAdapter.m
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import "AnswerSQLiteAdapter.h"

@implementation AnswerSQLiteAdapter

- (void)insert:(Answer *)answer{
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    //Get Table
    NSManagedObject *type = [NSEntityDescription  insertNewObjectForEntityForName:@"Answer" inManagedObjectContext:context];
    
    //insert Table
    [type setValue:answer.ans forKey:@"ans"];
    [type setValue:answer.question forKey:@"question"];
    [type setValue:[NSNumber numberWithBool:answer.isTrue]forKey:@"isTrue"];
    [type setValue:answer.created_at forKey:@"created_at"];
    [type setValue:answer.updated_at forKey:@"updated_at"];
    
    
    //request DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription  entityForName:@"Answer" inManagedObjectContext:context];
    
    [appDelegate saveContext];
}
- (NSArray*)getAll{
    
    NSArray* answers = [NSArray new];
    
    //DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    // REQUEST DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    // get table
    fetchRequest.entity =[NSEntityDescription entityForName:@"Answer"inManagedObjectContext:context];
    
    // get All typ
    
    answers = [context executeFetchRequest:fetchRequest error:nil];
    
    
    return answers;

}
- (NSManagedObject*)getById:(NSManagedObject*) answer{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    NSManagedObject *object = [context objectWithID:answer.objectID];
    return object;

}
- (void)update:(NSManagedObject*) managedObject withAnswer:(Answer*) answer{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    //update Table
    [managedObject setValue:answer.ans forKey:@"ans"];
    [managedObject setValue:[NSNumber numberWithBool:answer.isTrue] forKey:@"isTrue"];
    [managedObject setValue:answer.created_at forKey:@"created_at"];
    [managedObject setValue:answer.updated_at forKey:@"updated_at"];
    [appDelegate saveContext];
}
- (void)remove:(NSManagedObject*) answer{
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    [context deleteObject:answer];
}

@end
