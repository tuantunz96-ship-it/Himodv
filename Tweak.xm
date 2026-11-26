#import <UIKit/UIKit.h>

static void ShowWelcomeAlert(void) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIWindow *keyWindow = nil;
        for (UIScene *scene in [UIApplication sharedApplication].connectedScenes) {
            if (scene.activationState == UISceneActivationStateForegroundActive && [scene isKindOfClass:[UIWindowScene class]]) {
                UIWindowScene *windowScene = (UIWindowScene *)scene;
                for (UIWindow *window in windowScene.windows) {
                    if (window.isKeyWindow) {
                        keyWindow = window;
                        break;
                    }
                }
            }
        }
        
        if (!keyWindow) {
            keyWindow = [UIApplication sharedApplication].keyWindow;
        }
        
        UIViewController *topVC = keyWindow.rootViewController;
        while (topVC.presentedViewController) {
            topVC = topVC.presentedViewController;
        }
        
        if (!topVC) return;

        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"TUẤN MOD AOV"
                                                                       message:@"Chào mừng bạn đến với TUẤN MOD AOV chúc ae trải nghiệm vui vẻ"
                                                                preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"Đóng"
                                                              style:UIAlertActionStyleDefault
                                                            handler:nil];

        [alert addAction:closeAction];
        [topVC presentViewController:alert animated:YES completion:nil];
    });
}

__attribute__((constructor))
static void InitializePopup(void) {
    ShowWelcomeAlert();
}
