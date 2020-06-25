//
//  TabBarController.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "TabBarController.h"
#import "Colors.h"
#import "TabBarInfo.h"
#import "TabBarGallery.h"
#import "TabBarHome.h"

@interface TabBarController ()
@property (nonatomic, strong) TabBarInfo *tabBarInfo;
@property (nonatomic, strong) TabBarGallery *tabBarGallery;
@property (nonatomic, strong) TabBarHome *tabBarHome;

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.delegate = self;
    
    TabBarInfo *infoVC = [TabBarInfo new];
    infoVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"info_unselected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:0];
    infoVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"info_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarInfo = infoVC;
    
    TabBarGallery *galleryVC = [TabBarGallery new];
    galleryVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"gallery_unselected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:0];
    galleryVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"gallery_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarGallery = galleryVC;
    
    TabBarHome *homeVC = [TabBarHome new];
    homeVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"home_unselected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:0];
    homeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarHome = homeVC;
    
    self.viewControllers = @[infoVC, galleryVC, homeVC];
    [self setSelectedIndex:1];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationItem.title = @"Gallery";
    self.navigationItem.backBarButtonItem = nil;
    self.navigationItem.hidesBackButton = YES;
    self.navigationController.navigationBar.barTintColor = [UIColor rsschoolYellowColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{ NSFontAttributeName: [UIFont systemFontOfSize:18.0f weight:UIFontWeightSemibold], NSForegroundColorAttributeName: [UIColor rsschoolBlackColor] }];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if ([viewController isKindOfClass:[TabBarInfo class]]) {
        self.navigationItem.title = @"Info";
    }
    if ([viewController isKindOfClass:[TabBarGallery class]]) {
        self.navigationItem.title = @"Gallery";
    }
    if ([viewController isKindOfClass:[TabBarHome class]]) {
        self.navigationItem.title = @"RSSchool Task 6";
    }
}

@end
