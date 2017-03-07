//
//  CustomerButton.m
//  ButtonTest
//
//  Created by 杨俊飞 on 2017/3/7.
//  Copyright © 2017年 teemax. All rights reserved.
//

#import "CustomerButton.h"

@implementation CustomerButton

- (void)modifyButtonEdgeInsets{
    [self setBackgroundColor:[UIColor blackColor]];    
    CGSize  buttonTitleSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}];
    CGSize  buttonImageSize = [self imageForState:UIControlStateSelected].size;
    switch (self.customerButtonType) {
        case CustomerButtonTypeDefault:
            self.imageEdgeInsets = UIEdgeInsetsZero;
            self.titleEdgeInsets = UIEdgeInsetsZero;
            break;
            
        case CustomerButtonTypeLeftRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, buttonTitleSize.width+self.border,0, -buttonTitleSize.width-self.border);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -buttonImageSize.width,0, buttonImageSize.width);
            break;
            
        case CustomerButtonTypeUpDown:
            self.imageEdgeInsets=UIEdgeInsetsMake(-buttonTitleSize.height/2,buttonTitleSize.width/2, buttonTitleSize.height/2, -buttonTitleSize.width/2);
            
            self.titleEdgeInsets=UIEdgeInsetsMake(buttonImageSize.height/2+self.border, -buttonImageSize.width/2, -buttonImageSize.height/2-self.border, buttonImageSize.width/2);
            break;
            
        default:
            break;
    }
    
    
}

- (void)refreshView{
    [self modifyButtonEdgeInsets];
}

- (void)setCustomerImage:(NSString *)customerImage{
    _customerImage = [customerImage copy];
    [self setImage:[UIImage imageNamed:_customerImage] forState:UIControlStateNormal];
    [self refreshView];
}

- (void)setCustomerTitle:(NSString *)customerTitle{
    _customerTitle = [customerTitle copy];
    [self setTitle:_customerTitle forState:UIControlStateNormal];
    [self refreshView];
}

- (void)setBorder:(NSInteger)border{
    _border = border;
    [self refreshView];
}

- (void)setCustomerButtonType:(CustomerButtonType)customerButtonType{
    _customerButtonType = customerButtonType;
    [self refreshView];
}
@end
