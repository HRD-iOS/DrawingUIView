//
//  ViewController.h
//  DrawingUIView
//
//  Created by Yin Kokpheng on 11/19/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LableTextDelegate <NSObject>

@required
-(void)setText:(NSString *)textTitle;

@end

@interface ViewController : UIViewController
@property (nonatomic, weak) id<LableTextDelegate> delegate;
@property (weak, nonatomic) UILabel* title;
@end

