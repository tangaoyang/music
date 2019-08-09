//
//  TAYTableViewCell.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/25.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAYTableViewCell.h"

@implementation TAYTableViewCell{
    UIImageView *_imageView;
}

@synthesize imageView = _imageView ;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier] ;
    
    self.scroll = [[UIScrollView  alloc] init] ;
    [self.contentView addSubview:_scroll] ;
    
    self.imageView = [[UIImageView alloc] init] ;
    [self.contentView addSubview: _imageView];
    
    self.label = [[UILabel alloc] init] ;
    [self.contentView addSubview: _label] ;
    
    self.arrayImage = [[NSMutableArray alloc] init] ;
    
    self.arrayLabel = [[NSMutableArray alloc] init] ;
    
    return  self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews] ;
    
    _imageView.frame = CGRectMake(10, 10, 30, 30) ;
    
    _label.frame = CGRectMake(50, 0, 300, 55) ;
    
    _scroll.frame = CGRectMake(10, 10, 414, 120) ;
}

@end
