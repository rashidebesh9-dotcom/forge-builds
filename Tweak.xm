```objc
#import <UIKit/UIKit.h>

%hook GameViewController 

- (void)someMethod {
    %orig;
    
    // Legg til cheat menu knapp
    UIButton *cheatButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [cheatButton setTitle:@"Cheat Menu" forState:UIControlStateNormal];
    [cheatButton addTarget:self action:@selector(showCheatMenu) forControlEvents:UIControlEventTouchUpInside];
    cheatButton.frame = CGRectMake(10, 50, 120, 40);
    [self.view addSubview:cheatButton];
}

%new
- (void)showCheatMenu {
    // Vis cheat menyn her
    // Legg til funksjonalitet for å endre poeng, låse kulør, osv.
}

%end