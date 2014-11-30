//
//  DetailViewController.m
//  Challenge2
//
//  Created by GLB-MXM0004 on 29/11/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import "DetailViewController.h"
#import "WebCityViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

@property (strong, nonatomic) IBOutlet UILabel *pageCity;
@property (strong, nonatomic) IBOutlet UIImageView *imageCity;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = [NSString stringWithFormat:@"Name City: %@",self.detailedCity.name];
    
    self.stateLabel.text = [NSString stringWithFormat:@"State: %@",self.detailedCity.state];
    self.pageCity.text =[NSString stringWithFormat:@"Wikipedia "];
    
    self.imageCity.image = self.detailedCity.img;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITapGestureRecognizer *)sender{
    WebCityViewController *webPage = segue.destinationViewController;
    webPage.city = self.detailedCity;
    
}


@end
