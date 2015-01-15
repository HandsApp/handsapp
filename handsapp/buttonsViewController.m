//
//  buttonsViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 13/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "buttonsViewController.h"
#import "disenyoViewController.h"
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"
#import <pop/POP.h>

@interface buttonsViewController (){
    UIPopoverController *_popoverController;
}
@property (weak, nonatomic) IBOutlet UIButton *volver_button;
@property (weak, nonatomic) IBOutlet FUIButton *alertViewButton;
@property (weak, nonatomic) IBOutlet FUIButton *boton;
@property (weak, nonatomic) IBOutlet FUIButton *boton2;
@property (weak, nonatomic) IBOutlet FUIButton *boton3;
@property (weak, nonatomic) IBOutlet FUIButton *boton4;
@property (weak, nonatomic) IBOutlet FUIButton *boton5;
@property (weak, nonatomic) IBOutlet FUIButton *boton6;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *titulo;
@property (weak, nonatomic) IBOutlet FUIButton *boton7;


@end

@implementation buttonsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cloudsColor];
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _volver_button.titleLabel.font = customFont2;
    
    UIFont *fontTitle = [UIFont fontWithName:@"Yonna" size:30];
    self.titulo.font = fontTitle;
    self.titulo.textColor = [UIColor wetAsphaltColor];
    
    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    
    self.boton.titleLabel.font = customFont;
    self.boton.buttonColor = [UIColor turquoiseColor];
    self.boton.shadowColor = [UIColor greenSeaColor];
    self.boton.shadowHeight = .0f;
    self.boton.cornerRadius = .0f;
    [self.boton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.boton2.titleLabel.font = customFont;
    self.boton2.buttonColor = [UIColor carrotColor];
    self.boton2.shadowColor = [UIColor pumpkinColor];
    self.boton2.shadowHeight = 6.0f;
    self.boton2.cornerRadius = 10.0f;
    [self.boton2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.boton3.titleLabel.font = customFont;
    self.boton3.buttonColor = [UIColor alizarinColor];
    self.boton3.shadowColor = [UIColor pomegranateColor];
    self.boton3.shadowHeight = 10.0f;
    self.boton3.cornerRadius = 6.0f;
    [self.boton3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton3 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    UIFont *customFontButton4 = [UIFont fontWithName:@"SeasideResortNF" size:18];
    self.boton4.titleLabel.font = customFontButton4;
    self.boton4.buttonColor = [UIColor wetAsphaltColor];
    self.boton4.shadowColor = [UIColor midnightBlueColor];
    self.boton4.shadowHeight = 12.0f;
    self.boton4.cornerRadius = 8.0f;
    [self.boton4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton4 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    UIFont *customFontButton5 = [UIFont fontWithName:@"Yonna" size:23];
    self.boton5.titleLabel.font = customFontButton5;
    self.boton5.buttonColor = [UIColor amethystColor];
    self.boton5.shadowColor = [UIColor wisteriaColor];
    self.boton5.shadowHeight = 1.0f;
    self.boton5.cornerRadius = 1.0f;
    [self.boton5 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton5 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.boton6.titleLabel.font = customFont;
    self.boton6.buttonColor = [UIColor greenSeaColor];
    self.boton6.shadowColor = [UIColor nephritisColor];
    self.boton6.shadowHeight = 1.0f;
    self.boton6.cornerRadius = 20.0f;
    [self.boton6 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton6 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    UIFont *customFontButton7 = [UIFont fontWithName:@"Static" size:14];
    self.boton7.titleLabel.font = customFontButton7;
    self.boton7.buttonColor = [UIColor wetAsphaltColor];
    self.boton7.shadowColor = [UIColor midnightBlueColor];
    self.boton7.shadowHeight = 1.0f;
    self.boton7.cornerRadius = 1.0f;
    [self.boton7 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.boton7 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.alertViewButton.buttonColor = [UIColor colorWithRed:235.0/255.0 green:72.0/255.0 blue:72.0/255.0 alpha:0.85];
    self.alertViewButton.shadowColor = [UIColor colorWithRed:157.0/255.0 green:48.0/255.0 blue:50.0/255.0 alpha:1];
    self.alertViewButton.shadowHeight = 3.0f;
    self.alertViewButton.cornerRadius = 6.0f;
    self.alertViewButton.titleLabel.font = [UIFont boldFlatFontOfSize:18];
    [self.alertViewButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.alertViewButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
}

- (IBAction)showAlertView:(id)sender {
    FUIAlertView *alertView = [[FUIAlertView alloc] initWithTitle:@"Hola, ¿qué tal?" message:@"Esto es un alert, mola eh? ;)" delegate:nil cancelButtonTitle:@"Cancela" otherButtonTitles:@"Haz algo", nil];
    alertView.alertViewStyle = FUIAlertViewStylePlainTextInput;
    [@[[alertView textFieldAtIndex:0], [alertView textFieldAtIndex:1]] enumerateObjectsUsingBlock:^(FUITextField *textField, NSUInteger idx, BOOL *stop) {
        [textField setTextFieldColor:[UIColor cloudsColor]];
        [textField setBorderColor:[UIColor asbestosColor]];
        [textField setCornerRadius:4];
        [textField setFont:[UIFont flatFontOfSize:14]];
        [textField setTextColor:[UIColor midnightBlueColor]];
    }];
    [[alertView textFieldAtIndex:0] setPlaceholder:@"Texto"];
    
    alertView.delegate = self;
    alertView.titleLabel.textColor = [UIColor cloudsColor];
    alertView.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    alertView.messageLabel.textColor = [UIColor cloudsColor];
    alertView.messageLabel.font = [UIFont flatFontOfSize:14];
    alertView.backgroundOverlay.backgroundColor = [[UIColor cloudsColor] colorWithAlphaComponent:0.8];
    alertView.alertContainer.backgroundColor = [UIColor midnightBlueColor];
    alertView.defaultButtonColor = [UIColor cloudsColor];
    alertView.defaultButtonShadowColor = [UIColor asbestosColor];
    alertView.defaultButtonFont = [UIFont boldFlatFontOfSize:16];
    alertView.defaultButtonTitleColor = [UIColor asbestosColor];
    [alertView show];
}

- (IBAction)cambioBK:(id)sender {
    
}

- (IBAction)efectos:(id)sender {
    POPBasicAnimation *rot = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationX];
    rot.duration = 1.0;
    rot.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    _boton3.layer.anchorPoint = CGPointMake(0.5, 0.5);
    rot.toValue = @(3*M_PI);
    [_boton3.layer pop_addAnimation:rot forKey:@"popRotationX"];
    
    
    POPSpringAnimation *scaleD = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerSize];
    scaleD.beginTime = CACurrentMediaTime()+0.5;
    scaleD.toValue = [NSValue valueWithCGSize:CGSizeMake(_boton3.frame.size.width, _boton3.frame.size.height)];
    scaleD.springSpeed = 4;
    scaleD.springBounciness = 8;
    [_boton3.layer pop_addAnimation:scaleD forKey:@"popScaleD"];
}

- (IBAction)efectos2:(id)sender {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotationY];
    anim.duration = 1.0;
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    _boton5.layer.anchorPoint = CGPointMake(0.5, 0.5);
    anim.toValue = @(2*M_PI);
    [_boton5.layer pop_addAnimation:anim forKey:@"popRotationY"];
    
}

- (IBAction)efecto3:(id)sender {
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
    CGFloat amount = 80.0;
    if (CGRectGetHeight(_boton7.frame) == CGRectGetWidth(_boton7.frame)) {
        anim.toValue = [NSValue valueWithCGRect:CGRectInset(_boton7.frame, -amount, 0)];
        anim.springBounciness = 18;
    } else {
        anim.toValue = [NSValue valueWithCGRect:CGRectMake(720, 180, 80, 80)];
    }
    
    anim.springSpeed = 10;
    [_boton7.layer pop_addAnimation:anim forKey:@"popBounds"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)volver:(id)sender {
    disenyoViewController *controller = [[disenyoViewController alloc] init];
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
