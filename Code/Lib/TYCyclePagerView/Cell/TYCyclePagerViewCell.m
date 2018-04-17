//
//  TYCyclePagerViewCell.m
//  TYCyclePagerViewDemo
//
//  Created by tany on 2017/6/14.
//  Copyright © 2017年 tany. All rights reserved.
//

#import "TYCyclePagerViewCell.h"

@interface TYCyclePagerViewCell ()

@property (nonatomic, strong) UILabel *carTypeLabel;

@property (nonatomic, strong) UILabel *moneyLabel;

@property (nonatomic, strong) UIImageView *imageV;

@end

@implementation TYCyclePagerViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.backgroundColor = [UIColor clearColor];
        [self setupUI];
    }
    return self;
}


- (void)setupUI
{
    //图片
    self.imageV = [[UIImageView alloc] init];
    self.imageV.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.imageV];
    
    //车型
    self.carTypeLabel = [[UILabel alloc] init];
    self.carTypeLabel.textAlignment = NSTextAlignmentCenter;
    self.carTypeLabel.textColor = [UIColor whiteColor];
    self.carTypeLabel.font = [UIFont systemFontOfSize:18];
    [self addSubview:self.carTypeLabel];
    
    //金额
    self.moneyLabel = [[UILabel alloc] init];
    self.moneyLabel.textAlignment = NSTextAlignmentCenter;
    self.moneyLabel.textColor = [UIColor whiteColor];
    self.moneyLabel.font = [UIFont systemFontOfSize:18];
    [self addSubview:self.moneyLabel];
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat selfWidth = self.bounds.size.width;
    CGFloat selfHeight = self.bounds.size.height;
    
    self.imageV.frame = self.bounds;
    
    self.carTypeLabel.frame = CGRectMake(0, 0, selfWidth, 20);
    
    self.moneyLabel.frame = CGRectMake(0, selfHeight, selfWidth, 20);
}






- (void)setImageName:(NSString *)imageName
{
    _imageName = imageName;
    
    self.imageV.image = [UIImage imageNamed:imageName];
    
}

- (void)setCarType:(NSString *)carType
{
    _carType = carType;
    self.carTypeLabel.text = carType;
}


- (void)setMoney:(NSString *)money
{
    _money = money;
    
    self.moneyLabel.text = [NSString stringWithFormat:@"%@元",money];
}






@end
