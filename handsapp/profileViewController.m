//
//  profileViewController.m
//  handsapp
//
//  Created by David Perálvarez Fernández on 15/1/15.
//  Copyright (c) 2015 handsapp. All rights reserved.
//

#import "profileViewController.h"
#import "sistemaUsuariosViewController.h"
#import <RKCardView/RKCardView.h>

@interface profileViewController ()
@property (weak, nonatomic) IBOutlet UIButton *comeBackButton;

@end

@implementation profileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Configure fonts
    UIFont *customFont2 = [UIFont fontWithName:@"Static" size:23];
    _comeBackButton.titleLabel.font = customFont2;


    // add profile card
    [self configureCardView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Utils

-(void) configureCardView{
    
    // get screen size
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width ;
    CGFloat screenHeight = screenSize.height;
    
    RKCardView* cardView= [[RKCardView alloc]initWithFrame:CGRectMake(20, 80, screenWidth - 40, screenHeight  - 100)];
    
    cardView.coverImageView.image = [UIImage imageNamed:@"profileCoverPhoto"];
    cardView.profileImageView.image = [UIImage imageNamed:@"profilePicture"];
    cardView.titleLabel.text = @"Martina Fowler";
    cardView.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
    //[cardView addBlur]; // comment this out if you don't want blur
    [cardView addShadow]; // comment this out if you don't want a shadow

    // add profession
    UILabel *city = [[UILabel alloc] init];
    [city setFrame: CGRectMake(0, screenHeight - 360, screenWidth - 55, 15)];
    city.text = @"Palo Alto, California";
    city.textAlignment = NSTextAlignmentRight;
    city.textColor = [UIColor grayColor];
    city.font = [UIFont systemFontOfSize: 13];
    [cardView addSubview:city];
    
    
    // add score
    UIImageView *score = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"score"]];
    score.center = CGPointMake((screenSize.width-40)/2, screenSize.height - 300);
    [cardView addSubview:score];
    UILabel *numReview = [[UILabel alloc] init];
    [numReview setFrame: CGRectMake(0, screenHeight - 280, screenWidth - 40, 20)];
    numReview.text = @"(781 puntos)";
    numReview.textAlignment = NSTextAlignmentCenter;
    numReview.textColor = [UIColor grayColor];
    [cardView addSubview:numReview];
    
    // add quote
    UITextView *quote = [[UITextView alloc] initWithFrame:CGRectMake(0, screenHeight - 250, screenWidth - 40, 45)];
    quote.font = [UIFont fontWithName:@"HelveticaNeue-Italic" size:15];
    quote.text = @"\"You need to convice people to dream the same dream that you do\"";
    quote.textAlignment = NSTextAlignmentCenter;
    quote.textColor = [UIColor colorWithRed:149/255.f green:165/255.f blue:166/255.f alpha:1.f];
    [cardView addSubview:quote];
    
    
    // add a button
    UIButton *followButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [followButton setTitle:@"Seguir a Martina" forState:UIControlStateNormal];
    followButton.titleLabel.font = [UIFont systemFontOfSize: 20];
    [followButton setContentEdgeInsets:UIEdgeInsetsMake(2, 6, 2, 6)];
    [followButton sizeToFit];
    followButton.layer.cornerRadius = 5;
    followButton.layer.borderWidth = 1;
    followButton.layer.borderColor = [UIColor colorWithRed:225/255.f green:79/255.f blue:100/255.f alpha:1.f].CGColor;
    [followButton setTitleColor:[UIColor colorWithRed:225/255.f green:79/255.f blue:100/255.f alpha:1.f]
                       forState:UIControlStateNormal];
    followButton.center = CGPointMake((screenSize.width-40)/2, screenSize.height - 150);
    [cardView addSubview:followButton];
    
    [self.view addSubview:cardView];
}

#pragma mark - Actions
- (IBAction)volver:(id)sender {
    sistemaUsuariosViewController *controller = [[sistemaUsuariosViewController alloc] init];
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
