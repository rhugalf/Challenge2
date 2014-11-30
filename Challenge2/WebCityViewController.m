//
//  WebCityViewController.m
//  Challenge2
//
//  Created by GLB-MXM0004 on 29/11/14.
//  Copyright (c) 2014 Hugo. All rights reserved.
//

#import "WebCityViewController.h"

@interface WebCityViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation WebCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadPageUrl:self.city.pageWikipedia];
    
    self.navigationItem.title = self.city.name;
}


-(void)webViewDidFinishLoad:(UIWebView *)webView{
//    [self.activityIndicator stopAnimating];
}

-(void)loadPageUrl:(NSString *)urlData{
    NSURL *url = [NSURL URLWithString:urlData];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];

    [self.webView loadRequest:urlRequest];
}


@end
