//
//  ViewController.h
//  ProgrammaticScrollView
//
//  Created by Romy on 3/9/16.
//  Copyright © 2016 Romy. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  Source: NSCOOKBOOK
 * http://nscookbook.com/2015/06/ios-programming-recipe-36-a-fixed-width-dynamic-height-scrollview-in-autolayout/
 */
@interface ViewController : UIViewController

@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UILabel *topLabel;
@property (strong, nonatomic) UILabel *bottomLabel;

@property (strong, nonatomic) UIView *boxView;



@end

