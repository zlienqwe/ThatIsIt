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
    self.view.backgroundColor = [UIColor redColor];

    
    
    NSString *usernameAccessibilityLabel = @"点击两次屏幕输入用户名";
    NSString *passwordAccessibilityLabel = @"点击两次屏幕输入密码，输入框右下方有记住密码标志，勾选以后下次就不用输入密码了哦";

    NSString *loginButtonAccessibilityLabel = @"点击两次屏幕进行登录";
    NSString *signupButtonAccessibilityLabel = @"点击两次屏幕进行注册";
    

    
    
    self.usernameLabel.accessibilityFrame = self.usernameTextfield.frame;
    self.usernameLabel.accessibilityLabel = usernameAccessibilityLabel;
    self.usernameTextfield.accessibilityLabel = usernameAccessibilityLabel;
    
    self.passwordLabel.accessibilityFrame = self.passwordTextfield.frame;
    self.passwordLabel.accessibilityLabel = passwordAccessibilityLabel;
    self.passwordTextfield.accessibilityLabel = passwordAccessibilityLabel;
    
    self.loginButton.accessibilityLabel = loginButtonAccessibilityLabel;
    self.signupButton.accessibilityLabel = signupButtonAccessibilityLabel;

    [self.rememberPasswordSwitch setOn:NO];
    self.rememberPasswordSwitch.accessibilityLabel = rememberPasswordSwitchAccessibilityLabel;
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
