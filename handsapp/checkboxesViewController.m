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

@end

@implementation checkboxesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
