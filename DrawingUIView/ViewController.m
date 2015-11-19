//
//  ViewController.m
//  DrawingUIView
//
//  Created by Yin Kokpheng on 11/19/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "ViewController.h"
#import "CustomUIView.h"

@interface ViewController()<LableTextDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CustomUIView *rect = [[CustomUIView alloc]initWithFrame:CGRectMake(50, 50, 90, 90)];
    [self setText:@"asdf"];
    [self.view addSubview:self.title];
    
    [self.view addSubview:rect];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setText:(NSString *)textTitle{
    self.title.text = textTitle;
}

@end
