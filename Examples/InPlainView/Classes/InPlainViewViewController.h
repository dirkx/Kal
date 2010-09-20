//
//  InPlainViewViewController.h
//  InPlainView
//
//  Created by Dirk-Willem van Gulik on 10-09-10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "kal.h"

@interface InPlainViewViewController : UIViewController <KalViewDelegate, UITableViewDelegate> {
	UILabel * topLabel;
	UILabel * bottomLabel;
	UIView * kalView;
}

@property (retain) IBOutlet UILabel * topLabel;
@property (retain) IBOutlet UILabel * bottomLabel;
@property (retain) IBOutlet UIView * kalView;

- (void)showPreviousMonth;
- (void)showFollowingMonth;
- (void)didSelectDate:(KalDate *)date;
@end

