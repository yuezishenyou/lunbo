//
//  TYCycleCarTypeCell.m
//  ydx_lunbo
//
//  Created by maoziyue on 2018/4/17.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "TYCycleCarTypeCell.h"

@interface TYCycleCarTypeCell ()



@end

@implementation TYCycleCarTypeCell

- (void)awakeFromNib {
    [super awakeFromNib];

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
