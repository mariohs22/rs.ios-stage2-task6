//
//  StartScreen.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "StartScreen.h"
#import "Colors.h"
#import "Circle.h"
#import "Square.h"
#import "Triangle.h"
#import "TabBarController.h"

@interface StartScreen ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIStackView *figuresContainer;
@property (nonatomic, strong) UIButton *startBtn;
@property (nonatomic, strong) TabBarController *tabBarController;
@end

@implementation StartScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // MARK: Label
    self.label = [UILabel new];
    self.label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:24];
    self.label.textColor = [UIColor rsschoolBlackColor];
    self.label.text = @"Are you ready?";
    [self.view addSubview:self.label];
    
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
        [self.label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-110.0],
        [self.label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor]
    ]];
    
    // MARK: Figures container
    Circle *circle = [Circle new];
    Square *square = [Square new];
    Triangle *triangle = [Triangle new];
    
    self.figuresContainer = [UIStackView new];
    [self.figuresContainer addArrangedSubview:circle];
    [self.figuresContainer addArrangedSubview:square];
    [self.figuresContainer addArrangedSubview:triangle];
    [self.figuresContainer setDistribution:UIStackViewDistributionEqualCentering];
    [self.view addSubview:self.figuresContainer];

    self.figuresContainer.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
         [self.figuresContainer.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
         [self.figuresContainer.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:50.0],
         [self.figuresContainer.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-50.0],
         [circle.heightAnchor constraintEqualToConstant:70.0],
         [circle.widthAnchor constraintEqualToConstant:70.0],
         [square.heightAnchor constraintEqualToConstant:70.0],
         [square.widthAnchor constraintEqualToConstant:70.0],
         [triangle.heightAnchor constraintEqualToConstant:70.0],
         [triangle.widthAnchor constraintEqualToConstant:70.0]
     ]];
    
    // MARK: Button
    self.startBtn = [UIButton new];
    [self.startBtn setTitleColor:[UIColor rsschoolBlackColor] forState:UIControlStateNormal];
    [self.startBtn setTitle:@"START" forState:UIControlStateNormal];
    self.startBtn.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:20];
    self.startBtn.layer.cornerRadius = 55/2;
    self.startBtn.backgroundColor = [UIColor rsschoolYellowColor];
    [self.view addSubview:self.startBtn];
    
    self.startBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [self.startBtn.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.startBtn.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant: 110.0],
        [self.startBtn.heightAnchor constraintEqualToConstant:55.0],
        [self.startBtn.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-100.0]
    ]];
    
    [self.startBtn addTarget:self action:@selector(startBtnTapped) forControlEvents:UIControlEventTouchUpInside];

    // MARK: Animation
    [circle animate];
    [square animate];
    [triangle animate];

    self.tabBarController = [TabBarController new];
}

- (void) startBtnTapped {
    [self.navigationController pushViewController:self.tabBarController animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

@end
