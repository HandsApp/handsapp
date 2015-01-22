//
//  sideMenuRootViewController.m
//  handsapp
//
//  Created by David Perálvarez Fernández on 16/1/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "sideMenuRootViewController.h"
#import "navegacionViewController.h"

@interface sideMenuRootViewController ()

@end

@implementation sideMenuRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.title = @"Principal";
    
    // Define navigation items
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(presentLeftMenuViewController:)];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(presentRightMenuViewController:)];

    // Change navigation bar color
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f]];
    [self.navigationController.navigationBar setTranslucent:NO];
    
    // Change navigation bar item color
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];

    // Change navigation bar title color and font
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor],
                              NSFontAttributeName: [UIFont fontWithName:@"Static" size:23]}];

    // Add an image background
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.image = [UIImage imageNamed:@"sea"];
    [self.view addSubview:imageView];
    
    // Add a button for comming back
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:@"Volver a Navegación" forState:UIControlStateNormal];
    backButton.titleLabel.font = [UIFont fontWithName:@"Static" size:20];
    [backButton setContentEdgeInsets:UIEdgeInsetsMake(4, 8, 4, 8)];
    [backButton sizeToFit];
    backButton.layer.cornerRadius = 5;
    backButton.layer.borderWidth = 1;
    backButton.layer.borderColor = [UIColor whiteColor].CGColor;
    backButton.backgroundColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    [backButton setTitleColor:[UIColor whiteColor]
                       forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(volver) forControlEvents:UIControlEventTouchUpInside];
    
    // get screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width ;
    CGFloat screenHeight = screenSize.height;
    backButton.center = CGPointMake((screenWidth)/2, screenHeight - 150);
    [self.view addSubview:backButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions
- (void)volver{
    navegacionViewController *controller = [[navegacionViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}


@end
