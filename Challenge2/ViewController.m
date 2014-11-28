//
//  ViewController.m
//  Challenge2
//
//  Created by Hugo on 11/28/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import "ViewController.h"
#import "City.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *cities;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    City *c1 = [[City alloc] initWithParameters:@"Guadalajara" state:@"Jalisco"];
    City *c2 = [[City alloc] initWithParameters:@"Los Angeles" state:@"California"];
    City *c3 = [[City alloc] initWithParameters:@"Monterrey" state:@"Nuevoleon"];
    City *c4 = [[City alloc] initWithParameters:@"Huoston" state:@"Texas"];
    
    self.cities = [NSMutableArray arrayWithObjects:c1,c2,c3,c4, nil];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryNone) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        [self.cities addObject:cell.textLabel.text];
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
        [self.cities removeObject:cell.textLabel.text];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    City *c = [self.cities objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    
    cell.textLabel.text = c.name;
    
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cities.count;
}
@end
