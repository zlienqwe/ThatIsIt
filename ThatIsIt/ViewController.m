//
//  ViewController.m
//  ThatIsIt
//
//  Created by 朱江 on 15/12/16.
//  Copyright © 2015年 朱江. All rights reserved.
//

#import "ViewController.h"
static NSString *rememberPasswordSwitchAccessibilityLabel = @"点击两次记住密码";
static NSString *notRememberPasswordSwitchAccessibilityLabel = @"点击两次不要记住密码";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextfield;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
@property (weak, nonatomic) IBOutlet UISwitch *rememberPasswordSwitch;
- (IBAction)rememberPasswordSwitch:(id)sender;

- (IBAction)loginButton:(id)sender;
- (IBAction)signupButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];

    NSString *usernameTextFieldAccessibilityLabel = @"点击两次屏幕输入用户名";
    NSString *usernameLabelAccessibilityLabel = @"用户名输入框框在你的右面";
    NSString *usernameTextFieldAccessibilityHint = @"如果要输入用户名,就点击两侧屏幕";

    NSString *passwordTextFeildAccessibilityLabel = @"点击两次屏幕输入密码，输入框框右下方有记住密码开关，勾选以后下次就不用输入密码了哦";
    NSString *passwordLabelAccessibilityLabel = @"密码输入框框在你的右面";

    NSString *loginButtonAccessibilityLabel = @"点击两次屏幕登录";
    NSString *signupButtonAccessibilityLabel = @"点击两次屏幕注册";

    _usernameLabel.accessibilityLabel = usernameLabelAccessibilityLabel;
    _usernameTextfield.accessibilityLabel = usernameTextFieldAccessibilityLabel;
    _usernameTextfield.accessibilityHint = usernameTextFieldAccessibilityHint;
    _usernameTextfield.accessibilityTraits = UIAccessibilityTraitNone;

    _passwordLabel.accessibilityLabel = passwordLabelAccessibilityLabel;
    _passwordTextfield.accessibilityLabel = passwordTextFeildAccessibilityLabel;
    _passwordTextfield.accessibilityTraits = UIAccessibilityTraitNone;

    _loginButton.accessibilityLabel = loginButtonAccessibilityLabel;
    _signupButton.accessibilityLabel = signupButtonAccessibilityLabel;

    [_rememberPasswordSwitch setOn:NO];
    _rememberPasswordSwitch.accessibilityLabel = rememberPasswordSwitchAccessibilityLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)rememberPasswordSwitch:(id)sender
{
    if (self.rememberPasswordSwitch.on == NO)
    {
        self.rememberPasswordSwitch.accessibilityLabel = rememberPasswordSwitchAccessibilityLabel;
    }
    else
    {
        self.rememberPasswordSwitch.accessibilityLabel = notRememberPasswordSwitchAccessibilityLabel;
    }
}

- (IBAction)loginButton:(id)sender
{
}
- (IBAction)signupButton:(id)sender
{
}
@end
