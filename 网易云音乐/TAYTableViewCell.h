//
//  TAYTableViewCell.h
//  网易云音乐
//
//  Created by cinderella on 2019/7/25.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TAYTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) NSMutableArray *arrayImage;
@property (nonatomic, strong) NSMutableArray *arrayLabel;


@end

NS_ASSUME_NONNULL_END
