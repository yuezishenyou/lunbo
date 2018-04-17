//
//  TYCycleCarTypeCell.h
//  ydx_lunbo
//
//  Created by maoziyue on 2018/4/17.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYCycleCarTypeCell : UICollectionViewCell

@property (nonatomic, copy) NSString *money;

@property (nonatomic, copy) NSString *imageName;

@property (nonatomic, copy) NSString *carType;


@property (weak, nonatomic) IBOutlet UILabel *carTypeLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;





@end
