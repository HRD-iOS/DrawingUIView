//
//  ViewController.m
//  DrawingUIView
//
//  Created by Yin Kokpheng on 11/19/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    CustomUIView *rect = [[CustomUIView alloc]initWithFrame:CGRectMake(50, 50, 90, 90)];
    rect.delegate = self;
    
    
    
    [self setText:@"hello1"];
    [self.view addSubview:rect];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark CustomUIViewController Delegate
-(void)setText:(NSString *)textTitle{
    NSLog(textTitle);
}



@end
