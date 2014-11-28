//
//  City.h
//  Challenge2
//
//  Created by Hugo on 11/28/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *name;

@property NSString *state;

-(instancetype) initWithParameters:(NSString *)name state:(NSString *)state;

@end
