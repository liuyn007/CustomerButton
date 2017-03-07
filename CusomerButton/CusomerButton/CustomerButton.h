//
//  CustomerButton.h
//  ButtonTest
//
//  Created by 杨俊飞 on 2017/3/7.
//  Copyright © 2017年 teemax. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, CustomerButtonType) {
    CustomerButtonTypeDefault,
    CustomerButtonTypeLeftRight,
    CustomerButtonTypeUpDown
};

@interface CustomerButton : UIButton
//标题
@property (nonatomic,copy) NSString * customerTitle;
//图片
@property (nonatomic,copy) NSString * customerImage;
//图片和标题的间距
@property (nonatomic,assign) NSInteger border;
//类型
@property (nonatomic,assign) CustomerButtonType customerButtonType;

@end
