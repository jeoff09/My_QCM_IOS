//
//  McqSQLiteAdapter.m
//  my_qcm
//
//  Created by jeoffrey on 07/03/2016.
//  Copyright © 2016 jeoffrey. All rights reserved.
//

#import "McqSQLiteAdapter.h"

@implementation McqSQLiteAdapter

- (void)insert:(Mcq *)mcq{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    //Get Table
    NSManagedObject *qcm = [NSEntityDescription  insertNewObjectForEntityForName:@"Mcq" inManagedObjectContext:context];
    
    //insert Table
    [qcm setValue:mcq.name forKey:@"name"];
    [qcm setValue:mcq.dateEnd forKey:@"dateEnd"];
    [qcm setValue:mcq.dateStart forKey:@"dateStart"];
    [qcm setValue:[NSNumber numberWithInteger:*(mcq.duration)]forKey:@"duration"];
    [qcm setValue:mcq.categ forKey:@"Categ"];
    [qcm setValue:mcq.teams forKey:@"teams"];
    [qcm setValue:mcq.users forKey:@"users"];
    [qcm setValue:mcq.results forKey:@"results"];
    [qcm setValue:mcq.questions forKey:@"Questions"];
    [qcm setValue:mcq.created_at forKey:@"created_at"];
    [qcm setValue:mcq.updated_at forKey:@"updated_at"];
    
    
    //request DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    fetchRequest.entity = [NSEntityDescription  entityForName:@"Mcq" inManagedObjectContext:context];
    
    [appDelegate saveContext];
}
- (NSArray*)getAll{
    
    NSArray* mcqs = [NSArray new];
    
    //DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    
    // REQUEST DB
    NSFetchRequest *fetchRequest = [NSFetchRequest new];
    
    // get table
    fetchRequest.entity =[NSEntityDescription entityForName:@"Mcq"inManagedObjectContext:context];
    
    // get All Categs
    mcqs = [context executeFetchRequest:fetchRequest error:nil];
    
    
    return mcqs;

}
- (NSManagedObject*)getById:(NSManagedObject*) mcq{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    NSManagedObject *object = [context objectWithID:mcq.objectID];
    return object;
}
- (void)update:(NSManagedObject*) managedObject withMcq:(Mcq*) mcq{
    
    // DB INST
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    //update Table
    [managedObject setValue:mcq.name forKey:@"name"];
    [managedObject setValue:mcq.updated_at forKey:@"updated_at"];
    [appDelegate saveContext];
}
- (void)remove:(NSManagedObject*) mcq{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = appDelegate.managedObjectContext;
    [context deleteObject:mcq];
}


- (NSArray*)getAllMcqWithCateg:(Categ*) categ{
    
    //Send list
    NSArray* allMcqWithCateg = [NSArray new];
    
    //Mutable List of QCM with Categ
    NSMutableArray* mcqsWithCateg = [NSMutableArray new];
    
    //get MCQ list
    NSArray* arrayQCM = self.getAll;
    
    for (Mcq* managedObjectMCQ in arrayQCM) {
    
        if([managedObjectMCQ.categ.name isEqualToString:categ.name])
        {
            [mcqsWithCateg addObject:managedObjectMCQ];
        }
    }
    
    allMcqWithCateg = mcqsWithCateg;
    
    return  allMcqWithCateg;
}

@end
