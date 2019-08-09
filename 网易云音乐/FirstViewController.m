//
//  FirstViewController.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/26.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:nil tag:101];
    tarBarItem.image = [[UIImage imageNamed:@"1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"a1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    //[self.view addSubview:tarBarItem] ;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
