//
//  TAY2TableViewCell.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/26.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAY2TableViewCell.h"

@implementation TAY2TableViewCell

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
    
    self.imageView1 = [[UIImageView alloc] init] ;
    [self.contentView addSubview:_imageView1] ;
    
    self.imageView2 = [[UIImageView alloc] init] ;
    [self.contentView addSubview:_imageView2] ;
    
    self.imageView3 = [[UIImageView alloc] init] ;
    [self.contentView addSubview:_imageView3] ;
    
    self.label = [[UILabel alloc] init] ;
    [self.contentView addSubview:_label] ;
    
    self.scroll = [[UIScrollView alloc] init] ;
    [self.contentView addSubview:_scroll] ;
    
    self.label1 = [[UILabel alloc] init] ;
    [self.contentView addSubview:_label1] ;
    
    self.label2 = [[UILabel alloc] init] ;
    [self.contentView addSubview:_label2] ;
    
    self.arrayLabel = [[NSMutableArray alloc] init] ;
    self.arrayLabel2 = [[NSMutableArray alloc] init] ;
    self.arrayImage = [[NSMutableArray alloc] init] ;
    self.arraySwitch = [[NSMutableArray alloc] init] ;
    self.arrayBtn = [[NSMutableArray alloc] init] ;
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews] ;
    
    _imageView1.frame = CGRectMake(10, 10, 20, 20) ;
    
    _imageView2.frame = CGRectMake(10, 10, 70, 70) ;
    
    _imageView3.frame = CGRectMake(335, 15, 30, 30) ;
    
    _label.frame = CGRectMake(40, 10, 300, 20) ;
    
    _scroll.frame = CGRectMake(10, 10, 414, 70) ;
    _scroll.contentSize = CGSizeMake(414, 40) ;
    
    
}

@end
