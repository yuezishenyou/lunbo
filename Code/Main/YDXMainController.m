//
//  YDXMainController.m
//  ydx_lunbo
//
//  Created by maoziyue on 2018/4/16.
//  Copyright © 2018年 maoziyue. All rights reserved.
//

#import "YDXMainController.h"
#import "TYCyclePagerView.h"
#import "TYCyclePagerViewCell.h"
#import "TYCycleCarTypeCell.h"


@interface YDXMainController ()<TYCyclePagerViewDataSource, TYCyclePagerViewDelegate>

@property (weak, nonatomic) IBOutlet TYCyclePagerView *scrollV;

@property (nonatomic, strong) NSMutableArray *dataSource;



@end

@implementation YDXMainController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self initData];
    
    [self initSubViews];
    
}



- (void)initData
{
    self.dataSource = [[NSMutableArray alloc] init];
    
    for (int i = 0; i< 5; i++)
    {
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        
        [dict setObject:[NSString stringWithFormat:@"car%d",i] forKey:@"imageUrl"];
        [dict setObject:[NSString stringWithFormat:@"车%d",i] forKey:@"carType"];
        [dict setObject:@"45" forKey:@"money"];
        
        [self.dataSource addObject:dict];
    }
    
    
}



- (void)initSubViews
{
    self.scrollV.isInfiniteLoop = YES;
    //self.scrollV.autoScrollInterval = 3.f;
    self.scrollV.dataSource = self;
    self.scrollV.delegate = self;
    
    self.scrollV.layout.layoutType = TYCyclePagerTransformLayoutLinear;
    [self.scrollV setNeedUpdateLayout];
    
    [self.scrollV registerNib:[UINib nibWithNibName:@"TYCycleCarTypeCell" bundle:nil] forCellWithReuseIdentifier:@"cellId"];
    //[self.scrollV registerClass:[TYCyclePagerViewCell class] forCellWithReuseIdentifier:@"cellId"];

    
//    if (sender.tag == 0) {
//        _pagerView.layout.itemSize = CGSizeMake(CGRectGetWidth(_pagerView.frame)*sender.value, CGRectGetHeight(_pagerView.frame)*sender.value);
//        [_pagerView setNeedUpdateLayout];
//    }else if (sender.tag == 1) {
//        _pagerView.layout.itemSpacing = 30*sender.value;
//        [_pagerView setNeedUpdateLayout];
//    }
    
}


























#pragma mark - TYCyclePagerViewDataSource

- (NSInteger)numberOfItemsInPagerView:(TYCyclePagerView *)pageView {
    return self.dataSource.count;
}

- (UICollectionViewCell *)pagerView:(TYCyclePagerView *)pagerView cellForItemAtIndex:(NSInteger)index {
    
    TYCycleCarTypeCell *cell = [pagerView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndex:index];
    
    NSDictionary *dict = self.dataSource[index];

    cell.imageName = dict[@"imageUrl"];

    cell.money = dict[@"money"];

    cell.carType = dict[@"carType"];
    
    
    
    
    
//    TYCyclePagerViewCell *cell = [pagerView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndex:index];
//
//    NSDictionary *dict = self.dataSource[index];
//
//    cell.imageName = dict[@"imageUrl"];
//
//    cell.money = dict[@"money"];
//
//    cell.carType = dict[@"carType"];
    
    
    return cell;
}

- (TYCyclePagerViewLayout *)layoutForPagerView:(TYCyclePagerView *)pageView {
    TYCyclePagerViewLayout *layout = [[TYCyclePagerViewLayout alloc]init];
    layout.itemSize = CGSizeMake(CGRectGetWidth(pageView.frame)*0.8, CGRectGetHeight(pageView.frame)*0.8);
    layout.itemSpacing = 15;
    //layout.minimumAlpha = 0.3;
    layout.itemHorizontalCenter = YES;
    return layout;
}

- (void)pagerView:(TYCyclePagerView *)pageView didScrollFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex {
    //_pageControl.currentPage = toIndex;
    //[_pageControl setCurrentPage:newIndex animate:YES];
    NSLog(@"%ld ->  %ld",fromIndex,toIndex);
}


















//#pragma mark - action
//
//- (IBAction)switchValueChangeAction:(UISwitch *)sender {
//    if (sender.tag == 0) {
//        _pagerView.isInfiniteLoop = sender.isOn;
//        [_pagerView updateData];
//    }else if (sender.tag == 1) {
//        _pagerView.autoScrollInterval = sender.isOn ? 3.0:0;
//    }else if (sender.tag == 2) {
//        _pagerView.layout.itemHorizontalCenter = sender.isOn;
//        [UIView animateWithDuration:0.3 animations:^{
//            [_pagerView setNeedUpdateLayout];
//        }];
//    }
//}
//
//- (IBAction)sliderValueChangeAction:(UISlider *)sender {
//    if (sender.tag == 0) {
//        _pagerView.layout.itemSize = CGSizeMake(CGRectGetWidth(_pagerView.frame)*sender.value, CGRectGetHeight(_pagerView.frame)*sender.value);
//        [_pagerView setNeedUpdateLayout];
//    }else if (sender.tag == 1) {
//        _pagerView.layout.itemSpacing = 30*sender.value;
//        [_pagerView setNeedUpdateLayout];
//    }else if (sender.tag == 2) {
//        _pageControl.pageIndicatorSize = CGSizeMake(6*(1+sender.value), 6*(1+sender.value));
//        _pageControl.currentPageIndicatorSize = CGSizeMake(8*(1+sender.value), 8*(1+sender.value));
//        _pageControl.pageIndicatorSpaing = (1+sender.value)*10;
//    }
//}
//
//- (IBAction)buttonAction:(UIButton *)sender {
//    _pagerView.layout.layoutType = sender.tag;
//    [_pagerView setNeedUpdateLayout];
//}
//
//- (void)pageControlValueChangeAction:(TYPageControl *)sender {
//    NSLog(@"pageControlValueChangeAction: %ld",sender.currentPage);
//}















@end
