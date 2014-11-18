//
//  InterfaceController.m
//  AppleWatchTest WatchKit Extension
//
//  Created by Ivan Ornes on 18/11/14.
//  Copyright (c) 2014 ivanornes. All rights reserved.
//

#import "InterfaceController.h"
#import "MyRowController.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);

    [self loadTodoItems];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


- (void)loadTodoItems {
    // Fetch the to-do items
    NSArray* items = @[@"1",@"2",@"3",@"4",@"5",@"6"];
    
    // Configure the table object (self.todoItems) and get the row controllers
    [self.tableView setNumberOfRows:items.count withRowType:@"row"];
    NSInteger rowCount = self.tableView.numberOfRows;
    
    // Iterate over the rows and set the label for each one.
    for (NSInteger i = 0; i < rowCount; i++) {
        // Get the to-do item data.
        NSString* itemText = items[i];
        
        // Assign the text to the row's label.
        MyRowController* row = [self.tableView rowControllerAtIndex:i];
        [row.myButton setTitle:itemText];
    }
}

@end



