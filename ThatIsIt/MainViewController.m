//
//  MainViewController.m
//  ThatIsIt
//
//  Created by Zlien on 12/17/15.
//  Copyright © 2015 朱江. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UILabel *poetry;

@end

@implementation MainViewController
-(void)viewDidLoad
{
    [super viewDidLoad];

    NSString *poetryAccessibilityLabel;
    NSString *poetryInfo = @"这是一首诗, 诗的内容是:";
    NSString *poetryContent = self.poetry.accessibilityValue;
    poetryAccessibilityLabel = [NSString stringWithFormat:@"%@: %@", poetryInfo, poetryContent];
    self.poetry.accessibilityLabel = poetryAccessibilityLabel;
}

@end
