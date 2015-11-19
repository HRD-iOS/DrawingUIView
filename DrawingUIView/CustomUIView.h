//
//  CustomUIView.h
//  DrawingUIView
//
//  Created by Yin Kokpheng on 11/19/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomUIViewDelegate <NSObject>

@required

-(void)setText:(NSString *)textTitle;

@end

@interface CustomUIView : UIView

@property (nonatomic, weak) id<CustomUIViewDelegate> delegate;
@end
