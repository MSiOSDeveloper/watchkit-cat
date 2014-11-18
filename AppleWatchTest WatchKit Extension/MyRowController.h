//
//  MyRowController.h
//  AppleWatchTest
//
//  Created by Ivan Ornes on 18/11/14.
//  Copyright (c) 2014 ivanornes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface MyRowController : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage *myImage;
@property (weak, nonatomic) IBOutlet WKInterfaceButton *myButton;

@end
