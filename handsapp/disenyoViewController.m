//
//  disenyoViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 12/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "disenyoViewController.h"
#import <pop/POP.h>
#import "homeViewController.h"
#import "inputsViewController.h"
#import "tipografiasViewController.h"
#import "buttonsViewController.h"
#import "checkboxesViewController.h"
#import "iconsViewController.h"

@interface disenyoViewController ()

@property (weak, nonatomic) IBOutlet UIButton *volver_button;
@property (weak, nonatomic) IBOutlet UIButton *iconos_button;
@property (weak, nonatomic) IBOutlet UIButton *inputs_button;
@property (weak, nonatomic) IBOutlet UIButton *tipografias_button;
@property (weak, nonatomic) IBOutlet UIButton *buttons_button;
@property (weak, nonatomic) IBOutlet UIButton *checkboxes_button;

@property (weak, nonatomic) IBOutlet UILabel *label_disenyo;
@property (weak, nonatomic) IBOutlet UITextView *explicacion;
@property (weak, nonatomic) IBOutlet UIImageView *pencil_image;
@property (weak, nonatomic) IBOutlet UIView *sidebar;
@end

@implementation disenyoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Customizamos las fuentes
    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    
    _iconos_button.titleLabel.font = customFont;
    _inputs_button.titleLabel.font = customFont;
    _tipografias_button.titleLabel.font = customFont;
    _buttons_button.titleLabel.font = customFont;
    _checkboxes_button.titleLabel.font = customFont;
    _explicacion.font = customFont;
    
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _volver_button.titleLabel.font = customFont2;
    UIFont *customFont3 = [UIFont fontWithName:@"Yonna" size:37];
    _label_disenyo.font = customFont3;
    
    //Animaciones para el menu
    
    POPSpringAnimation *onscreenAnimation2 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation2.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimation2.springSpeed = 2.f;
    [self.inputs_button.layer pop_addAnimation:onscreenAnimation2 forKey:@"onscreenAnimation2"];
    POPSpringAnimation *onscreenAnimation3 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation3.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimation3.springSpeed = 1.5f;
    [self.tipografias_button.layer pop_addAnimation:onscreenAnimation3 forKey:@"onscreenAnimation3"];
    POPSpringAnimation *onscreenAnimation4 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation4.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimation4.springSpeed = 1.2f;
    [self.buttons_button.layer pop_addAnimation:onscreenAnimation4 forKey:@"onscreenAnimation4"];
    POPSpringAnimation *onscreenAnimation5 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation5.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimation5.springSpeed = 1.f;
    [self.checkboxes_button.layer pop_addAnimation:onscreenAnimation5 forKey:@"onscreenAnimation5"];
    POPSpringAnimation *onscreenAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimation.springSpeed = 0.8f;
    [self.iconos_button.layer pop_addAnimation:onscreenAnimation forKey:@"onscreenAnimation"];
    
    //Animaciones para el sidebar
    CGFloat toValue = CGRectGetMidX(self.sidebar.bounds);
    POPSpringAnimation *onscreenAnimation6 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimation6.toValue = @(toValue);
    onscreenAnimation6.springBounciness= 0.f;
    onscreenAnimation6.springSpeed = 1.7f;
    [self.label_disenyo.layer pop_addAnimation:onscreenAnimation6 forKey:@"onscreenAnimation6"];
    
    POPSpringAnimation *onscreenAnimation7 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimation7.toValue = [NSValue valueWithCGRect:CGRectMake(169, 0, 0, 0)];
    onscreenAnimation7.springBounciness= 0.f;
    onscreenAnimation7.springSpeed = 1.7f;
    [self.pencil_image.layer pop_addAnimation:onscreenAnimation7 forKey:@"onscreenAnimation7"];
    
    POPSpringAnimation *onscreenAnimation8 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimation8.toValue = [NSValue valueWithCGRect:CGRectMake(399, 0, 0, 0)];
    onscreenAnimation8.springBounciness= 0.f;
    onscreenAnimation8.springSpeed = 1.7f;
    [self.explicacion.layer pop_addAnimation:onscreenAnimation8 forKey:@"onscreenAnimation8"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)volver:(id)sender {
    homeViewController *controller = [[homeViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)inputs:(id)sender {
    inputsViewController *controller = [[inputsViewController alloc] init];
    [self presentViewController:controller animated:NO completion:nil];
}
- (IBAction)tipografias:(id)sender {
    tipografiasViewController *controller = [[tipografiasViewController alloc] init];
    [self presentViewController:controller animated:NO completion:nil];
}
- (IBAction)buttons:(id)sender {
    buttonsViewController *controller = [[buttonsViewController alloc] init];
    [self presentViewController:controller animated:NO completion:nil];
}
- (IBAction)checkboxes:(id)sender {
    checkboxesViewController *controller = [[checkboxesViewController alloc] init];
    [self presentViewController:controller animated:NO completion:nil];
}
- (IBAction)iconos:(id)sender {
    iconsViewController *controller = [[iconsViewController alloc] init];
    [self presentViewController:controller animated:NO completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
