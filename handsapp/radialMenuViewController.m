//
//  radialMenuViewController.m
//  handsapp
//
//  Created by David Perálvarez Fernández on 14/1/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "radialMenuViewController.h"
#import "navegacionViewController.h"
#import <DCPathButton/DCPathButton.h>


@interface radialMenuViewController () <DCPathButtonDelegate>
@property (weak, nonatomic) IBOutlet UIButton *comeBackButton;
@property (weak, nonatomic) IBOutlet UITextView *tipTextView;

@end

@implementation radialMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Configure fonts
    UIFont *customFont = [UIFont fontWithName:@"Static" size:18];
    _tipTextView.font = customFont;
    
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _comeBackButton.titleLabel.font = customFont2;

    // Add Path Like Button
    [self ConfigureDCPathButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Utils
- (void)ConfigureDCPathButton
{
    // Configure center button

    DCPathButton *dcPathButton = [[DCPathButton alloc]initWithCenterImage:[UIImage imageNamed:@"chooser-button-tab"]
                                                           hilightedImage:[UIImage imageNamed:@"chooser-button-tab-highlighted"]];
    dcPathButton.delegate = self;
    
    // Configure item buttons

    DCPathItemButton *itemButton_1 = [[DCPathItemButton alloc]initWithImage:[UIImage imageNamed:@"chooser-moment-icon-music"]
                                                           highlightedImage:[UIImage imageNamed:@"chooser-moment-icon-music-highlighted"]
                                                            backgroundImage:[UIImage imageNamed:@"chooser-moment-button"]
                                                 backgroundHighlightedImage:[UIImage imageNamed:@"chooser-moment-button-highlighted"]];
    
    DCPathItemButton *itemButton_2 = [[DCPathItemButton alloc]initWithImage:[UIImage imageNamed:@"chooser-moment-icon-place"]
                                                           highlightedImage:[UIImage imageNamed:@"chooser-moment-icon-place-highlighted"]
                                                            backgroundImage:[UIImage imageNamed:@"chooser-moment-button"]
                                                 backgroundHighlightedImage:[UIImage imageNamed:@"chooser-moment-button-highlighted"]];
    
    DCPathItemButton *itemButton_3 = [[DCPathItemButton alloc]initWithImage:[UIImage imageNamed:@"chooser-moment-icon-camera"]
                                                           highlightedImage:[UIImage imageNamed:@"chooser-moment-icon-camera-highlighted"]
                                                            backgroundImage:[UIImage imageNamed:@"chooser-moment-button"]
                                                 backgroundHighlightedImage:[UIImage imageNamed:@"chooser-moment-button-highlighted"]];
    
    DCPathItemButton *itemButton_4 = [[DCPathItemButton alloc]initWithImage:[UIImage imageNamed:@"chooser-moment-icon-thought"]
                                                           highlightedImage:[UIImage imageNamed:@"chooser-moment-icon-thought-highlighted"]
                                                            backgroundImage:[UIImage imageNamed:@"chooser-moment-button"]
                                                 backgroundHighlightedImage:[UIImage imageNamed:@"chooser-moment-button-highlighted"]];
    
    DCPathItemButton *itemButton_5 = [[DCPathItemButton alloc]initWithImage:[UIImage imageNamed:@"chooser-moment-icon-sleep"]
                                                           highlightedImage:[UIImage imageNamed:@"chooser-moment-icon-sleep-highlighted"]
                                                            backgroundImage:[UIImage imageNamed:@"chooser-moment-button"]
                                                 backgroundHighlightedImage:[UIImage imageNamed:@"chooser-moment-button-highlighted"]];
    
    // Add the item button into the center button
    
    [dcPathButton addPathItems:@[itemButton_1, itemButton_2, itemButton_3, itemButton_4, itemButton_5]];
    
    // Change the bloom radius
    
    dcPathButton.bloomRadius = 120.0f;
    
    // Change the DCButton's center
    
    dcPathButton.dcButtonCenter = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height - 25.5f);
    
    [self.view addSubview:dcPathButton];
    
}

#pragma mark - Actions

- (IBAction)volver:(id)sender {
    navegacionViewController *controller = [[navegacionViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

#pragma mark - DCPathButtonDelegate
- (void)itemButtonTappedAtIndex:(NSUInteger)index
{
    NSLog(@"You tap");
}

@end
