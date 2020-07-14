//
//  ViewController.m
//  UIScrollView
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //定义并且创建一个滚动视图
    //可以对视图内容进行滚屏查看功能
    UIScrollView* sv = [[UIScrollView alloc] init];
    //设置滚动视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    //是否按照整页来滚动视图
    //YES:停在整页
    //NO:停在任意位置
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般要大于frame的大小
    //承载面积大小
    sv.contentSize = CGSizeMake(320 * 5, 576);
    //是否有边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    //是否显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    //设置背景颜色
    sv.backgroundColor = [UIColor yellowColor];
    
    //使用循环创建5张图片视图
    for(int i = 0; i < 5; i++){
        NSString* strName = [NSString stringWithFormat:@"%d.jpg", i+1 ];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(320 * i, 0, 320 , 576);
        
        [sv addSubview:iView];
        
        
    }
    
    
    [self.view addSubview:sv];
    
}


@end
