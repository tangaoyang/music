//
//  oViewController.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/27.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "oViewController.h"

@interface oViewController ()

@end

@implementation oViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:@"mmm.jpg"] ;
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image] ;
    imageView.frame = CGRectMake(0, 200, 414, 250) ;
    [self.view addSubview:imageView] ;
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
