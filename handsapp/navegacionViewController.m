//
//  navegacionViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 12/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "navegacionViewController.h"
#import <pop/POP.h>
#import "homeViewController.h"
#import "radialMenuViewController.h"
#import "sideMenuRootViewController.h"
#import "sideMenuLeftViewController.h"
#import "sideMenuRightViewController.h"
#import "dropdownMenuViewController.h"

@interface navegacionViewController ()

@property (weak, nonatomic) IBOutlet UIButton *volver_button;
@property (weak, nonatomic) IBOutlet UIButton *radial_menu_button;

@property (weak, nonatomic) IBOutlet UIButton *side_menu_button;
@property (weak, nonatomic) IBOutlet UIButton *dropdown_menu_button;
@property (weak, nonatomic) IBOutlet UIButton *tabbar_menu_button;

@property (weak, nonatomic) IBOutlet UILabel *label_navegacion;
@property (weak, nonatomic) IBOutlet UITextView *explicacion;
@property (weak, nonatomic) IBOutlet UIImageView *paper_plane_image;
@property (weak, nonatomic) IBOutlet UIView *sidebar;
@end

@implementation navegacionViewController

#pragma mark - View Lifecycle

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Animaciones para el menu
    
    POPSpringAnimation *onscreenAnimationRMB = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationRMB.toValue = [NSValue valueWithCGRect:CGRectMake(244, 0, 0, 0)];
    onscreenAnimationRMB.springSpeed = 2.f;
    [self.radial_menu_button.layer pop_addAnimation:onscreenAnimationRMB forKey:@"onscreenAnimationRMB"];
    
    POPSpringAnimation *onscreenAnimationSMB = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationSMB.toValue = [NSValue valueWithCGRect:CGRectMake(244, 0, 0, 0)];
    onscreenAnimationSMB.springSpeed = 1.8f;
    [self.side_menu_button.layer pop_addAnimation:onscreenAnimationSMB forKey:@"onscreenAnimationSMB"];
    
    POPSpringAnimation *onscreenAnimationDMB = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationDMB.toValue = [NSValue valueWithCGRect:CGRectMake(244, 0, 0, 0)];
    onscreenAnimationDMB.springSpeed = 1.6f;
    [self.dropdown_menu_button.layer pop_addAnimation:onscreenAnimationDMB forKey:@"onscreenAnimationDMB"];
    
    POPSpringAnimation *onscreenAnimationTBM = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationTBM.toValue = [NSValue valueWithCGRect:CGRectMake(244, 0, 0, 0)];
    onscreenAnimationTBM.springSpeed = 1.4f;
    [self.tabbar_menu_button.layer pop_addAnimation:onscreenAnimationTBM forKey:@"onscreenAnimationTBM"];
    
    
    // Animaciones para el sidebar
    
    CGFloat toValue = CGRectGetMidX(self.sidebar.bounds);
    POPSpringAnimation *onscreenAnimationLN = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationLN.toValue = @(toValue);
    onscreenAnimationLN.springBounciness = 0.f;
    onscreenAnimationLN.springSpeed = 1.7f;
    [self.label_navegacion.layer pop_addAnimation:onscreenAnimationLN forKey:@"onscreenAnimationLN"];
    
    
    POPSpringAnimation *onscreenAnimationPPI = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimationPPI.toValue = [NSValue valueWithCGRect:CGRectMake(169, 0, 0, 0)];
    onscreenAnimationPPI.springBounciness= 0.f;
    onscreenAnimationPPI.springSpeed = 1.7f;
    [self.paper_plane_image.layer pop_addAnimation:onscreenAnimationPPI forKey:@"onscreenAnimationPPI"];
    
    
    POPSpringAnimation *onscreenAnimationE = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimationE.toValue = [NSValue valueWithCGRect:CGRectMake(399, 0, 0, 0)];
    onscreenAnimationE.springBounciness= 0.f;
    onscreenAnimationE.springSpeed = 1.7f;
    [self.explicacion.layer pop_addAnimation:onscreenAnimationE forKey:@"onscreenAnimation8"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Customizamos las fuentes
    
    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    _radial_menu_button.titleLabel.font = customFont;
    _side_menu_button.titleLabel.font = customFont;
    _dropdown_menu_button.titleLabel.font = customFont;
    _tabbar_menu_button.titleLabel.font = customFont;
    _explicacion.font = customFont;
    
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _volver_button.titleLabel.font = customFont2;
    
    UIFont *customFont3 = [UIFont fontWithName:@"Yonna" size:25];
    _label_navegacion.font = customFont3;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)radialMenu:(id)sender {
    radialMenuViewController *controller = [[radialMenuViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
    
}

- (IBAction)tabbarMenu:(id)sender {
    
    // Create the tabbar
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    
    // Create three VC examples
    UIViewController *vc1 = [[UIViewController alloc] init];
    [vc1.tabBarItem setImage:[UIImage imageNamed:@"IconProfile"]];
    [vc1.tabBarItem setTitle:@"Perfil"];
    vc1.view.backgroundColor = [UIColor whiteColor];
    // Label for VC1
    UILabel *labelVc1 = [[UILabel alloc] init];
    labelVc1.text = @"Perfil";
    labelVc1.textColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    labelVc1.textAlignment = NSTextAlignmentCenter;
    [labelVc1 sizeToFit];
    [vc1.view addSubview: labelVc1];
    labelVc1.center = vc1.view.center;
    
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    [vc2.tabBarItem setImage:[UIImage imageNamed:@"IconHome"]];
    [vc2.tabBarItem setTitle:@"Home"];
    vc2.view.backgroundColor = [UIColor whiteColor];
    // Label for VC2
    UILabel *labelVc2 = [[UILabel alloc] init];
    labelVc2.text = @"Home";
    labelVc2.textColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    labelVc2.textAlignment = NSTextAlignmentCenter;
    [labelVc2 sizeToFit];
    [vc2.view addSubview: labelVc2];
    labelVc2.center = vc2.view.center;
    
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    [vc3.tabBarItem setImage:[UIImage imageNamed:@"IconCalendar"]];
    [vc3.tabBarItem setTitle:@"Calendario"];
    vc3.view.backgroundColor = [UIColor whiteColor];
    // Label for VC3
    UILabel *labelVc3 = [[UILabel alloc] init];
    labelVc3.text = @"Calendario";
    labelVc3.textColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    labelVc3.textAlignment = NSTextAlignmentCenter;
    [labelVc3 sizeToFit];
    [vc3.view addSubview: labelVc3];
    labelVc3.center = vc3.view.center;
    
    
    UIViewController *vc4 = [[UIViewController alloc] init];
    [vc4.tabBarItem setImage:[UIImage imageNamed:@"IconSettings"]];
    [vc4.tabBarItem setTitle:@"Opciones"];
    vc4.view.backgroundColor = [UIColor whiteColor];
    // Label for VC4
    UILabel *labelVc4 = [[UILabel alloc] init];
    labelVc4.text = @"Calendario";
    labelVc4.textColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    labelVc4.textAlignment = NSTextAlignmentCenter;
    [labelVc4 sizeToFit];
    [vc4.view addSubview: labelVc4];
    labelVc4.center = vc4.view.center;
    
    // Add a button for comming back in VC4
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:@"Volver a Navegación" forState:UIControlStateNormal];
    backButton.titleLabel.font = [UIFont fontWithName:@"Static" size:20];
    [backButton setContentEdgeInsets:UIEdgeInsetsMake(4, 8, 4, 8)];
    [backButton sizeToFit];
    backButton.layer.cornerRadius = 5;
    backButton.layer.borderWidth = 1;
    backButton.layer.borderColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f].CGColor;
    backButton.backgroundColor = [UIColor whiteColor];
    [backButton setTitleColor:[UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f]
                     forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(volverNavegacion) forControlEvents:UIControlEventTouchUpInside];
    // get screen size
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width ;
    CGFloat screenHeight = screenSize.height;
    backButton.center = CGPointMake((screenWidth)/2, screenHeight - 150);
    [vc4.view addSubview:backButton];
    
    
    [tabVC setViewControllers:@[vc1,vc2,vc3,vc4]];
    tabVC.tabBar.tintColor = [UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f];
    [self presentViewController:tabVC animated:YES completion:nil];
    
}

- (IBAction)dropdownMenu:(id)sender {
    dropdownMenuViewController *vc = [[dropdownMenuViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}


- (IBAction)sideMenu:(id)sender {
    
    // Side Menu
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[sideMenuRootViewController alloc] init]];
    sideMenuLeftViewController *leftMenuViewController = [[sideMenuLeftViewController alloc] init];
    sideMenuRightViewController *rightMenuViewController = [[sideMenuRightViewController alloc] init];
    
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:navigationController
                                                                    leftMenuViewController:leftMenuViewController
                                                                   rightMenuViewController:rightMenuViewController];
    sideMenuViewController.backgroundImage = [UIImage imageNamed:@"Stars"];
    sideMenuViewController.menuPreferredStatusBarStyle = 1; // UIStatusBarStyleLightContent
    sideMenuViewController.delegate = self;
    sideMenuViewController.contentViewShadowColor = [UIColor blackColor];
    sideMenuViewController.contentViewShadowOffset = CGSizeMake(0, 0);
    sideMenuViewController.contentViewShadowOpacity = 0.6;
    sideMenuViewController.contentViewShadowRadius = 12;
    sideMenuViewController.contentViewShadowEnabled = YES;
    [self presentViewController:sideMenuViewController animated:YES completion:nil];
    
}

#pragma mark - Utils

- (IBAction)volver:(id)sender {
    homeViewController *controller = [[homeViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

-(void)volverNavegacion{
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
