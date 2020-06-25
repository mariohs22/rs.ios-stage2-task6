//
//  TabBarHome.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "TabBarHome.h"
#import "Colors.h"

@interface TabBarHome ()
@property (nonatomic, strong) UIStackView *topContainer;
@end

@implementation TabBarHome

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topContainer = [UIStackView new];
    UIImageView *logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"apple"]];
    UITextView *devContainer = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 200, 70)];
    [self.topContainer addArrangedSubview:logo];
    [self.topContainer addArrangedSubview:devContainer];
    [self.topContainer setDistribution:UIStackViewDistributionEqualCentering];
    [self.view addSubview:self.topContainer];

    self.topContainer.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints: @[
         [self.topContainer.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-120.0],
         [self.topContainer.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:50.0],
         [self.topContainer.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-50.0],
     ]];

    devContainer.textColor = [UIColor rsschoolBlackColor];
    devContainer.editable = false;
    

    UIDevice *device = [UIDevice currentDevice];
    devContainer.text = device.name;
    
    NSLog(@"DEVICE: %@, MODEL: %@, SYSTEM: %@, VERSION: %@", device.name, device.localizedModel, device.systemName, device.systemVersion);
    
    
    
    [devContainer sizeToFit];


}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationItem.title = @"Home";
}

@end
