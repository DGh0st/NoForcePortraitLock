@interface SBOrientationLockManager : NSObject
-(void)lock:(UIInterfaceOrientation)orientation; // iOS 4 - 12
@end

@interface UIApplication (NoForcePortraitLockPrivate)
-(UIInterfaceOrientation)activeInterfaceOrientation;
@end

%hook SBOrientationLockManager
-(void)lock {
	[self lock:[[UIApplication sharedApplication] activeInterfaceOrientation]];
}
%end
