//
//  InPlainViewAppDelegate.h
//  InPlainView
//
//  Created by Dirk-Willem van Gulik on 10-09-10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InPlainViewViewController;

@interface InPlainViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    InPlainViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet InPlainViewViewController *viewController;

@end

