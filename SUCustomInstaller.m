//
//  SUCustomInstaller.m
//  Sparkle
//
//  Created by Jeff Seibert on 1/26/11.
//  Copyright 2011 Box.net, Inc. All rights reserved.
//

#import "SUCustomInstaller.h"


@implementation SUCustomInstaller

+ (void)performInstallationWithPath:(NSString *)path 
							   host:(SUHost *)host delegate:delegate 
					  synchronously:(BOOL)synchronously 
				  versionComparator:(id <SUVersionComparison>)comparator
{
	[NSTask launchedTaskWithLaunchPath:[[NSBundle bundleWithPath:path] executablePath] 
							 arguments:[NSArray arrayWithObject:@"--automatic"]];
	
	// Never call finish. Assume this installer app will terminate us shortly.
}

@end
