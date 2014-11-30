//
//  City.h
//  Challenge2
//
//  Created by Hugo on 11/28/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface City : NSObject

@property NSString *name;

@property NSString *state;

@property NSString *pageWikipedia;

@property UIImage *img;

-(instancetype) initWithParameters:(NSString *)name state:(NSString *)state page:(NSString *)page image:(UIImage *)img;

@end
