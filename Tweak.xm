#import <UIKit/UIKit.h>

%hook GameViewController

- (void)viewDidLoad {
    %orig;
    
    UIButton *cheatButton = [UIButton buttonWithType:UIButtonTypeSystem];
    cheatButton.frame = CGRectMake(10, 10, 100, 50);
    cheatButton.backgroundColor = [UIColor redColor];
    [cheatButton setTitle:@"Cheat Menu" forState:UIControlStateNormal];
    [cheatButton addTarget:self action:@selector(showCheatMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cheatButton];
}

%new
- (void)showCheatMenu {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Cheat Menu" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *unlimitedCoins = [UIAlertAction actionWithTitle:@"Unlimited Coins" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        // Implement unlimited coins cheat here
    }];
    [alert addAction:unlimitedCoins];
    
    UIAlertAction *perfectAim = [UIAlertAction actionWithTitle:@"Perfect Aim" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        // Implement perfect aim cheat here
    }];
    [alert addAction:perfectAim];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}

%end
