```
#import <UIKit/UIKit.h>

%hook AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    %orig;

    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor = [UIColor blackColor];
    window.windowLevel = UIWindowLevelAlert + 1;
    window.hidden = NO;

    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor clearColor];

    UIView *menuView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 300)];
    menuView.backgroundColor = [UIColor darkGrayColor];
    menuView.layer.cornerRadius = 10;
    [vc.view addSubview:menuView];

    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 180, 30)];
    titleLabel.text = @"8 Ball Pool Cheat";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [menuView addSubview:titleLabel];

    UIButton *unlimitedCoinsButton = [UIButton buttonWithType:UIButtonTypeSystem];
    unlimitedCoinsButton.frame = CGRectMake(10, 50, 180, 40);
    [unlimitedCoinsButton setTitle:@"Unlimited Coins" forState:UIControlStateNormal];
    [unlimitedCoinsButton addTarget:self action:@selector(unlimitedCoinsAction) forControlEvents:UIControlEventTouchUpInside];
    [menuView addSubview:unlimitedCoinsButton];

    UIButton *unlimitedCashButton = [UIButton buttonWithType:UIButtonTypeSystem];
    unlimitedCashButton.frame = CGRectMake(10, 100, 180, 40);
    [unlimitedCashButton setTitle:@"Unlimited Cash" forState:UIControlStateNormal];
    [unlimitedCashButton addTarget:self action:@selector(unlimitedCashAction) forControlEvents:UIControlEventTouchUpInside];
    [menuView addSubview:unlimitedCashButton];

    UIButton *aimAssistButton = [UIButton buttonWithType:UIButtonTypeSystem];
    aimAssistButton.frame = CGRectMake(10, 150, 180, 40);
    [aimAssistButton setTitle:@"Aim Assist" forState:UIControlStateNormal];
    [aimAssistButton addTarget:self action:@selector(aimAssistAction) forControlEvents:UIControlEventTouchUpInside];
    [menuView addSubview:aimAssistButton];

    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    closeButton.frame = CGRectMake(10, 250, 180, 40);
    [closeButton setTitle:@"Close Menu" forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeMenuAction) forControlEvents:UIControlEventTouchUpInside];
    [menuView addSubview:closeButton];

    window.rootViewController = vc;
    [window makeKeyAndVisible];

    return YES;
}

%new
- (void)unlimitedCoinsAction {
    // AMD code for unlimited coins
}

%new
- (void)unlimitedCashAction {
    // AMD code for unlimited cash
}

%new
- (void)aimAssistAction {
    // AMD code for aim assist
}

%new
- (void)closeMenuAction {
    [[UIApplication sharedApplication].windows.lastObject setHidden:YES];
}

%end