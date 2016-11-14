//
//  MyScrollView.m
//  ScrollView
//
//  Created by Matthew Mauro on 2016-11-14.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panView:)];
        [self addGestureRecognizer:pan];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)panView:(UIPanGestureRecognizer *)sender {
    
//    CGPoint start;
//    CGPoint end;
//    CGFloat yScroll;
//    if(sender.state == UIGestureRecognizerStateBegan)
//    {
//        start = [sender translationInView:self];
//    }
//    if(sender.state == UIGestureRecognizerStateChanged)
//    {
//        end = [sender translationInView:self];
//        yScroll = end.y - start.y;
//        [self setFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y+yScroll, self.bounds.size.width, self.bounds.size.height)];
//    }
    
    CGPoint translationInView = [sender translationInView:self];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self];
    
}

@end
