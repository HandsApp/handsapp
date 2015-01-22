//
//  sistemaUsuariosViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 12/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "sistemaUsuariosViewController.h"
#import <pop/POP.h>
#import "homeViewController.h"
#import "profileViewController.h"



@interface sistemaUsuariosViewController ()
@property (weak, nonatomic) IBOutlet UIButton *volver_button;
@property (weak, nonatomic) IBOutlet UIButton *profile_button;
@property (weak, nonatomic) IBOutlet UIButton *signup_button;

@property (weak, nonatomic) IBOutlet UILabel *label_sistema_usuarios;
@property (weak, nonatomic) IBOutlet UITextView *explicacion;
@property (weak, nonatomic) IBOutlet UIImageView *user_image;
@property (weak, nonatomic) IBOutlet UIView *sidebar;
@end

@implementation sistemaUsuariosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Customizamos las fuentes
    
    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    _profile_button.titleLabel.font = customFont;
    _signup_button.titleLabel.font = customFont;
    _explicacion.font = customFont;
    
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _volver_button.titleLabel.font = customFont2;
    
    UIFont *customFont3 = [UIFont fontWithName:@"Yonna" size:24];
    _label_sistema_usuarios.font = customFont3;
    // permitir varias lineas en el UILabel
    _label_sistema_usuarios.lineBreakMode = NSLineBreakByWordWrapping;
    _label_sistema_usuarios.numberOfLines = 0;
    
    // Animaciones para el menu
    
    POPSpringAnimation *onscreenAnimationPB = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationPB.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimationPB.springSpeed = 2.f;
    [self.profile_button.layer pop_addAnimation:onscreenAnimationPB forKey:@"onscreenAnimationPB"];
    
    POPSpringAnimation *onscreenAnimationSB = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationSB.toValue = [NSValue valueWithCGRect:CGRectMake(246, 0, 0, 0)];
    onscreenAnimationSB.springSpeed = 1.8f;
    [self.signup_button.layer pop_addAnimation:onscreenAnimationSB forKey:@"onscreenAnimationSB"];
    
    // Animaciones para el sidebar
    
    CGFloat toValue = CGRectGetMidX(self.sidebar.bounds);
    POPSpringAnimation *onscreenAnimationLSU = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionX];
    onscreenAnimationLSU.toValue = @(toValue);
    onscreenAnimationLSU.springBounciness = 0.f;
    onscreenAnimationLSU.springSpeed = 1.7f;
    [self.label_sistema_usuarios.layer pop_addAnimation:onscreenAnimationLSU forKey:@"onscreenAnimationLSU"];
    
    
    POPSpringAnimation *onscreenAnimationUI = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimationUI.toValue = [NSValue valueWithCGRect:CGRectMake(169, 0, 0, 0)];
    onscreenAnimationUI.springBounciness= 0.f;
    onscreenAnimationUI.springSpeed = 1.7f;
    [self.user_image.layer pop_addAnimation:onscreenAnimationUI forKey:@"onscreenAnimationUI"];
    
    
    POPSpringAnimation *onscreenAnimationE = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    onscreenAnimationE.toValue = [NSValue valueWithCGRect:CGRectMake(399, 0, 0, 0)];
    onscreenAnimationE.springBounciness= 0.f;
    onscreenAnimationE.springSpeed = 1.7f;
    [self.explicacion.layer pop_addAnimation:onscreenAnimationE forKey:@"onscreenAnimation8"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)profile:(id)sender {
    profileViewController *controller = [[profileViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
    
}

- (IBAction)signup:(id)sender {
}


- (IBAction)volver:(id)sender {
    homeViewController *controller = [[homeViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
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
