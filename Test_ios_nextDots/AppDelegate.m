//
//  AppDelegate.m
//  Test_ios_nextDots
//
//  Created by LTSSetup on 2/7/17.
//  Copyright © 2017 BrunoCardenasTorres. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSArray *arrPlacesInitial =
  @[@{@"id":@"0",@"nombre":@"SuiteSheraton",@"Precio":@"USD100.0",@"Tipo":@"Matrimonial",@"favorite":@"NO",@"latitude":@"-12.051078",@"longitude":@"-77.045156"},
  @{@"id":@"1",@"nombre":@"Punta Cana",@"Precio":@"USD 150.0",@"Tipo":@"Normal",@"favorite":@"NO",@"latitude":@"-12.048455",@"longitude":@"-77.052130"},
  @{@"id":@"2",@"nombre":@"Casa matusita",@"Precio":@"USD 1000.0",@"Tipo":@"Casual",@"favorite":@"NO",@"latitude":@"-12.055209",@"longitude":@"-77.052226"},
  @{@"id":@"3",@"nombre":@"Place test",@"Precio":@"USD 100.0",@"Tipo":@"Matrimonial",@"favorite":@"NO",@"latitude":@"-12.099511",@"longitude":@"-77.007122"},
  @{@"id":@"4",@"nombre":@"Place test 2",@"Precio":@"USD 100.0",@"Tipo":@"Normal",@"favorite":@"NO",@"latitude":@"-12.077354",@"longitude":@"-77.074070"},
  @{@"id":@"5",@"nombre":@"Place test",@"Precio":@"USD 100.0",@"Tipo":@"Matrimonial",@"favorite":@"NO",@"latitude":@"-12.078697",@"longitude":@"-77.060680"},
  @{@"id":@"6",@"nombre":@"Place test 3",@"Precio":@"USD 100.0",@"Tipo":@"Normal",@"favorite":@"NO",@"latitude":@"-12.086083",@"longitude":@"-77.053127"}];
    
    [[NSUserDefaults standardUserDefaults] setObject:arrPlacesInitial forKey:@"arrPlaces"];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
