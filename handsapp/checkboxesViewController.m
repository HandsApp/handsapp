//
//  checkboxesViewController.m
//  handsapp
//
//  Created by Tito Español Gamón on 13/01/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "checkboxesViewController.h"
#import "disenyoViewController.h"

@interface checkboxesViewController ()
@property (weak, nonatomic) IBOutlet UIButton *volver_button;

@end

@implementation checkboxesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _volver_button.titleLabel.font = customFont2;
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
