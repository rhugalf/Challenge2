//
//  ViewController.m
//  Challenge2
//
//  Created by Hugo on 11/28/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "DetailViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *cities;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    City *c1 = [[City alloc] initWithParameters:@"Guadalajara" state:@"Jalisco" page:@"http://es.wikipedia.org/wiki/Guadalajara_%28M%C3%A9xico%29" image:[UIImage imageNamed:@"gdl"   ]];
    City *c2 = [[City alloc] initWithParameters:@"Los Angeles" state:@"California" page:@"http://es.wikipedia.org/wiki/Los_%C3%81ngeles" image:[UIImage imageNamed:@"LA"]];
    City *c3 = [[City alloc] initWithParameters:@"Leon" state:@"Guanajuato" page:@"http://es.wikipedia.org/wiki/Le%C3%B3n_%28Guanajuato%29" image:[UIImage imageNamed:@"LeonGto"]];
    City *c4 = [[City alloc] initWithParameters:@"Houston" state:@"Texas" page:@"http://es.wikipedia.org/wiki/Houston" image:[UIImage imageNamed:@"Houston_Texans"]];
    
    self.cities = [NSMutableArray arrayWithObjects:c1,c2,c3,c4, nil];
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    City *deleted_city = self.cities[indexPath.row];
    [self.cities removeObject:deleted_city];
    [self.tableView reloadData];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)senderCell{
    if ([segue.identifier isEqualToString:@"citySelected"]) {
        DetailViewController *detailController = segue.destinationViewController;
        detailController.detailedCity = [self.cities objectAtIndex:[self.tableView indexPathForCell:senderCell].row];
        
    }
}

/*
 
 
 -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender{
 
 //    EnterAdjectiveViewController destinationViewController =
 
 if ([segue.identifier isEqualToString:@"ShowCreatureSegue"]) {
 CreatureViewController *creatureController = segue.destinationViewController;
 
 creatureController.name = sender.textLabel.text;
 
 NSLog(@"%@", segue.identifier);
 }
 
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
*/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    City *c = [self.cities objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    
    cell.textLabel.text = c.name;
    
    cell.imageView.image = c.img;
   
    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cities.count;
}

@end
