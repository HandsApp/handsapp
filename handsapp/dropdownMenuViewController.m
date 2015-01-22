//
//  dropdownMenuViewController.m
//  handsapp
//
//  Created by David Perálvarez Fernández on 19/1/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "dropdownMenuViewController.h"
#import <RWDropdownMenu/RWDropdownMenu.h>
#import "navegacionViewController.h"

@interface dropdownMenuViewController ()

@property (nonatomic, strong) NSArray *menuItems;
@property (nonatomic, assign) RWDropdownMenuStyle menuStyle;

@end

@implementation dropdownMenuViewController

#pragma mark - Initialize
-(NSArray *)menuItems{
    if(!_menuItems){
            _menuItems =
        @[
          [RWDropdownMenuItem itemWithText:@"Twitter" image:[UIImage imageNamed:@"share_twitter"] action:nil],
          [RWDropdownMenuItem itemWithText:@"Facebook" image:[UIImage imageNamed:@"share_facebook"] action:nil],
          [RWDropdownMenuItem itemWithText:@"Email" image:[UIImage imageNamed:@"share_sms"] action:nil],
          [RWDropdownMenuItem itemWithText:@"Guardar en el Álbum" image:[UIImage imageNamed:@"album"] action:nil]
          ];
    }
    return _menuItems;
}

#pragma mark - Utils RWDropdownMenu
-(void) presentMenuFromNav:(id)sender{
    RWDropdownMenuCellAlignment aligment = RWDropdownMenuCellAlignmentRight;
    if(sender == self.navigationItem.leftBarButtonItem){
        aligment = RWDropdownMenuCellAlignmentLeft;
    }
    
    [RWDropdownMenu presentFromViewController:self withItems:self.menuItems align:aligment style:self.menuStyle navBarImage:[sender image] completion:nil];
}

-(void)presentMenuInPopover:(id)sender{
    [RWDropdownMenu presentInPopoverFromBarButtonItem:sender withItems:self.menuItems completion:nil];
}

-(void)presentStyleMenu:(id)sender{
    NSArray *styleItems =
    @[
      [RWDropdownMenuItem itemWithText:@"Estilo gradiente negro" image:nil action:^{
          self.menuStyle = RWDropdownMenuStyleBlackGradient;
      }],
      [RWDropdownMenuItem itemWithText:@"Estilo translúcido" image:nil action:^{
          self.menuStyle = RWDropdownMenuStyleTranslucent;
      }]
      ];
    [RWDropdownMenu presentFromViewController:self withItems:styleItems align:RWDropdownMenuCellAlignmentCenter style:self.menuStyle navBarImage:nil completion:nil];
}

#pragma mark - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"menu"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] style:UIBarButtonItemStylePlain target:self action:@selector(presentMenuFromNav:)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"share"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] style:UIBarButtonItemStylePlain target:self action:@selector(presentMenuFromNav:)];
    
    self.toolbarItems = @[[[UIBarButtonItem alloc] initWithTitle:@"Mostrar en Popover" style:UIBarButtonItemStylePlain target:self action:@selector(presentMenuInPopover:)]];
    
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [titleButton setImage:[[UIImage imageNamed:@"nav_down"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    [titleButton setTitle:@"Estilo del Menú" forState:UIControlStateNormal];
    [titleButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
    [titleButton addTarget:self action:@selector(presentStyleMenu:) forControlEvents:UIControlEventTouchUpInside];
    [titleButton sizeToFit];
    titleButton.titleLabel.font = [UIFont fontWithName:@"Static" size:23];
    
    self.navigationItem.titleView = titleButton;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        [self.navigationController setToolbarHidden:NO];
    }
    
    // Change navigation bar color
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:106/255.f green:194/255.f blue:154/255.f alpha:1.f]];
    [self.navigationController.navigationBar setTranslucent:NO];
    
    // Change navigation bar item color
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
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
