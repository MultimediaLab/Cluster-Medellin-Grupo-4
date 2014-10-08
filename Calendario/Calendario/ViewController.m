//
//  ViewController.m
//  Calendario
//
//  Created by Profesor on 6/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"
#import "CalendarViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _modelo = [[Model alloc] init];
    
    _page = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationVertical options:nil];
    
    _page.delegate = self;
    _page.dataSource = _modelo;
    
    CalendarViewController * enero = [_modelo viewControllerAtIndex:0 storyboard:self.storyboard];
    
    NSArray * mesesVCs = [NSArray arrayWithObject:enero];
    
    [_page setViewControllers:mesesVCs direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    [self addChildViewController:_page];
    [self.view addSubview:_page.view];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
