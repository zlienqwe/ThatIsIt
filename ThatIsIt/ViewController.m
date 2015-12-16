//
//  ViewController.m
//  ThatIsIt
//
//  Created by 朱江 on 15/12/16.
//  Copyright © 2015年 朱江. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextfield;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

    NSString *usernameAccessibilityLabel = @"双击输入用户名";
    NSString *passwordAccessibilityLabel = @"双击输入密码";

    self.usernameLabel.accessibilityFrame = self.usernameTextfield.frame;
    self.usernameLabel.accessibilityLabel = usernameAccessibilityLabel;
    self.usernameTextfield.accessibilityLabel = usernameAccessibilityLabel;
    
    self.passwordLabel.accessibilityFrame = self.passwordTextfield.frame;
    self.passwordLabel.accessibilityLabel = passwordAccessibilityLabel;
    self.passwordTextfield.accessibilityLabel = passwordAccessibilityLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
