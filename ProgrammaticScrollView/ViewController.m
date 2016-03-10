//
//  ViewController.m
//  ProgrammaticScrollView
//
//  Created by Romy on 3/9/16.
//  Copyright © 2016 Romy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView = [[UIScrollView alloc] init];
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.scrollView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.scrollView];
    
    self.contentView = [[UIView alloc] init];
    self.contentView.backgroundColor = [UIColor redColor];
    self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:self.contentView];
    
    // add constraints for contentView and ScrollView
    NSDictionary *tmpViewsDict = @{ @"scrollView" : self.scrollView,
                                    @"contentView" : self.contentView };
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(0)-[scrollView]-(0)-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:tmpViewsDict]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(0)-[scrollView]-(0)-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:tmpViewsDict]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(0)-[contentView]-(0)-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:tmpViewsDict]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(0)-[contentView]-(0)-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:tmpViewsDict]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.contentView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1 constant:0]];
    
    [self addContentSubviews];
    
}

- (void)addContentSubviews {
    self.topLabel = [[UILabel alloc] init];
    self.topLabel.numberOfLines = 0;
    self.topLabel.textAlignment = NSTextAlignmentCenter;
    self.topLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.topLabel.text = @"Some text that may have several lines\nand then there are more text\nand then even more";
    self.topLabel.backgroundColor = [UIColor whiteColor];
    self.topLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:self.topLabel];
    
    self.boxView = [[UIView alloc] init];
    self.boxView.backgroundColor = [UIColor yellowColor];
    self.boxView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:self.boxView];
    
    self.bottomLabel = [[UILabel alloc] init];
    self.bottomLabel.backgroundColor = [UIColor redColor];
    self.bottomLabel.numberOfLines = 0;
    self.bottomLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.bottomLabel.textAlignment = NSTextAlignmentCenter;
    self.bottomLabel.text = [self bottomLabelText];
    self.bottomLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:self.bottomLabel];
    
    [self addContentSubViewConstraints];
}

-(NSString *)bottomLabelText  {
    return @"Put in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\nPut in a massive string of your own here to see the scrolling in action\n";
}

- (void)addContentSubViewConstraints {
    NSDictionary *contentViewsDict = @{ @"topLabel" : self.topLabel,
                                        @"boxView" : self.boxView,
                                        @"bottomLabel" : self.bottomLabel };
    // here
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(60)-[topLabel]-[boxView(86)]-[bottomLabel]-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:contentViewsDict]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[topLabel]-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:contentViewsDict]];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[bottomLabel]-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:contentViewsDict]];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[boxView]-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:contentViewsDict]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.contentView
                                                                 attribute:NSLayoutAttributeCenterX
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.boxView
                                                                 attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
