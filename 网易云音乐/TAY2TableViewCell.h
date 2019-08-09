//
//  TAY2TableViewCell.h
//  网易云音乐
//
//  Created by cinderella on 2019/7/26.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TAY2TableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) UIImageView *imageView2;
@property (nonatomic, strong) UIImageView *imageView3;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) NSMutableArray *arrayLabel;
@property (nonatomic, strong) NSMutableArray *arrayLabel2;
@property (nonatomic, strong) NSMutableArray *arrayImage;
@property (nonatomic, strong) NSMutableArray *arraySwitch;
@property (nonatomic, strong) NSMutableArray *arrayBtn;


@end

NS_ASSUME_NONNULL_END
