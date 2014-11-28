//
//  City.m
//  Challenge2
//
//  Created by Hugo on 11/28/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithParameters:(NSString *)name state:(NSString *)state{
    self = [super init];
    
    self.name = name;
    self.state = state;
    
    return self;
}

@end
