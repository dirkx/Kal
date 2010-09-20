//
//  InPlainViewViewController.m
//  InPlainView
//
//  Created by Dirk-Willem van Gulik on 10-09-10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "InPlainViewViewController.h"
#import "Kal.h"

@implementation InPlainViewViewController

@synthesize topLabel, bottomLabel, kalView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
//
- (void)viewDidLoad {
    [super viewDidLoad];
	
	CGSize kalViewSize = kalView.bounds.size;
		
	NSDate * today = [NSDate date];
	
	KalPlainViewController * kal = [[KalPlainViewController alloc] initWithSelectedDate:today 
																			   withSize:kalViewSize];
	kal.dataSource = nil;
	kal.delegate = self;

	[kalView addSubview:kal.view];
	
	topLabel.text = [NSString stringWithFormat:@"%.0f x %.0f View", 
					 kalView.frame.size.width,
					 kalView.frame.size.height];
	
    // Confirm what we are actually showing (in case of illegal dates, 
    // limited ranges, etc.
	//
    [self didSelectDate:((KalView *) kal.view).selectedDate];
}

// Override to allow orientations other than the default portrait orientation.
//
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	
#ifdef UI_USER_INTERFACE_IDIOM
	// On the iPad - we allow any orientation.
	//
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
		return YES;
#endif
	
	// On the iPhone - we limit our UI to vertical only. Just like the normal
	// Apple app. does.
	//
    return ((interfaceOrientation != UIInterfaceOrientationLandscapeRight) && 
			(interfaceOrientation != UIInterfaceOrientationLandscapeLeft));
	
}

#pragma mark Delegates for the KalViewController

-(void) didSelectDate:(KalDate *)selectedDate {
	NSLog(@"didSelectDate %@ arrivbed\n", selectedDate);
	bottomLabel.text = [selectedDate description];
}

- (void)showPreviousMonth {
	NSLog(@"showPreviousMonth");
}
- (void)showFollowingMonth {
	NSLog(@"showFollowingMonth");
}


#pragma mark Memory and cleanup

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
