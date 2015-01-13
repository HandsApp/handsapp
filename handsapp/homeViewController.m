//
//  homeViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 12/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "homeViewController.h"
#import <pop/POP.h>
#import "disenyoViewController.h"
#import "sistemaUsuariosViewController.h"
#import "animacionesViewController.h"
#import "socialViewController.h"
#import "navegacionViewController.h"
#import "mediaViewController.h"
#import "pluginsViewController.h"
#import "pushViewController.h"

@interface homeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *media_button;
@property (weak, nonatomic) IBOutlet UIButton *push_button;
@property (weak, nonatomic) IBOutlet UIButton *animaciones_button;
@property (weak, nonatomic) IBOutlet UIButton *social_button;
@property (weak, nonatomic) IBOutlet UIButton *navegacion_button;
@property (weak, nonatomic) IBOutlet UIButton *plugins_button;
@property (weak, nonatomic) IBOutlet UIButton *sistema_usuarios_button;
@property (weak, nonatomic) IBOutlet UIButton *disenyo_button;
@end

@implementation homeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    _media_button.titleLabel.font = customFont;
    _push_button.titleLabel.font = customFont;
    _animaciones_button.titleLabel.font = customFont;
    _social_button.titleLabel.font = customFont;
    _navegacion_button.titleLabel.font = customFont;
    _plugins_button.titleLabel.font = customFont;
    _sistema_usuarios_button.titleLabel.font = customFont;
    _disenyo_button.titleLabel.font = customFont;
    _media_button.alpha=0.0;
    _plugins_button.alpha=0.0;
    _animaciones_button.alpha=0.0;
    _social_button.alpha=0.0;
    _navegacion_button.alpha=0.0;
    _plugins_button.alpha=0.0;
    _sistema_usuarios_button.alpha=0.0;
    _disenyo_button.alpha=0.0;
    _push_button.alpha=0.0;
    // Do any additional setup after loading the view from its nib.
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = @(1.0);
    anim.duration = 0.6;
    [_disenyo_button pop_addAnimation:anim forKey:@"fade"];
    POPBasicAnimation *anim2 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim2.toValue = @(1.0);
    anim2.duration = 0.8;
    [_sistema_usuarios_button pop_addAnimation:anim2 forKey:@"fade2"];
    POPBasicAnimation *anim3 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim3.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim3.toValue = @(1.0);
    anim3.duration = 1.0;
    [_social_button pop_addAnimation:anim3 forKey:@"fade3"];
    POPBasicAnimation *anim4 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim4.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim4.toValue = @(1.0);
    anim4.duration = 1.2;
    [_animaciones_button pop_addAnimation:anim4 forKey:@"fade4"];
    POPBasicAnimation *anim5 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim5.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim5.toValue = @(1.0);
    anim5.duration = 1.4;
    [_navegacion_button pop_addAnimation:anim5 forKey:@"fade5"];
    POPBasicAnimation *anim6 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim6.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim6.toValue = @(1.0);
    anim6.duration = 1.6;
    [_media_button pop_addAnimation:anim6 forKey:@"fade6"];
    POPBasicAnimation *anim7 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim7.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim7.toValue = @(1.0);
    anim7.duration = 1.8;
    [_push_button pop_addAnimation:anim7 forKey:@"fade7"];
    POPBasicAnimation *anim8 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim8.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim8.toValue = @(1.0);
    anim8.duration = 2.0;
    [_plugins_button pop_addAnimation:anim8 forKey:@"fade8"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)media:(id)sender {
    mediaViewController *controller = [[mediaViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)push:(id)sender {
    pushViewController *controller = [[pushViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];}

- (IBAction)animaciones:(id)sender {
    animacionesViewController *controller = [[animacionesViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)social:(id)sender {
    socialViewController *controller = [[socialViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)navegacion:(id)sender {
    navegacionViewController *controller = [[navegacionViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)plugins:(id)sender {
    pluginsViewController *controller = [[pluginsViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)sistemaUsuarios:(id)sender {
    sistemaUsuariosViewController *controller = [[sistemaUsuariosViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)disenyo:(id)sender {
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
