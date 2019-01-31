//
//  PullMenuCell.m
//  PullMenuDemo
//
//  Created by 丁巍巍 on 2019/1/30.
//  Copyright © 2019年 丁巍巍. All rights reserved.
//

#import "PullMenuCell.h"

@interface PullMenuCell ()

//@property (weak, nonatomic) IBOutlet NSLayoutConstraint *menuImageWidth;
@property (nonatomic, strong) UIView *selectedBgView;
/**
 *  line color
 */
@property (nonatomic, strong) UIColor *lineColor;

@end

@implementation PullMenuCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.lineColor = [UIColor whiteColor];
        self.selectedBgView = [[UIView alloc] initWithFrame:self.bounds];
        self.selectedBackgroundView = self.selectedBgView;
        [self setupSubViews];
    }
    return self;
}

-(void)setupSubViews
{
    [self addSubview:self.menuImageView];
    [self addSubview:self.menuTitleLab];
}

-(void)setMenuModel:(PullMenuModel *)menuModel{
    _menuModel = menuModel;
    if (menuModel.imageName.length) {
        self.menuImageView.image = [UIImage imageNamed:menuModel.imageName];
    }
    self.menuTitleLab.text = menuModel.title;
}

-(void)setPullMenuStyle:(PullMenuStyle)pullMenuStyle
{
    _pullMenuStyle = pullMenuStyle;
    switch (pullMenuStyle) {
        case PullMenuDarkStyle:
        {
            self.selectedBgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
            self.menuTitleLab.textColor = [UIColor whiteColor];
            self.lineColor = [UIColor whiteColor];
        }
            break;
        case PullMenuLightStyle:
        {
            self.selectedBgView.backgroundColor = [UIColor groupTableViewBackgroundColor];
            self.menuTitleLab.textColor = [UIColor blackColor];
            self.lineColor = [UIColor lightGrayColor];
        }
            break;
        default:
            break;
    }
}


- (void)drawLineSep{
    CAShapeLayer *lineLayer = [CAShapeLayer new];
    lineLayer.strokeColor = self.lineColor.CGColor;
    lineLayer.frame = self.bounds;
    lineLayer.lineWidth = 0.5;
    UIBezierPath *sepline = [UIBezierPath bezierPath];
    [sepline moveToPoint:CGPointMake(15, self.bounds.size.height-0.5)];
    [sepline addLineToPoint:CGPointMake(self.bounds.size.width-15, self.bounds.size.height-0.5)];
    lineLayer.path = sepline.CGPath;
    [self.layer addSublayer:lineLayer];
}
- (void)setLineColor:(UIColor *)lineColor{
    _lineColor = lineColor;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
    if (!_isFinalCell) {
        [self drawLineSep];
    }
    
    if (!self.menuModel.imageName.length) {
        self.menuImageView.hidden = YES;
        self.menuTitleLab.frame = CGRectMake(15, (self.frame.size.height - 30)/2, self.frame.size.width - 30, 30);
    }else{
        self.menuImageView.hidden = NO;
        self.menuImageView.frame = CGRectMake(15, (self.frame.size.height - 30)/2, 30, 30);
        self.menuTitleLab.frame = CGRectMake(15 + 30 + 10, (self.frame.size.height - 30)/2, self.frame.size.width - 15 - (self.frame.size.height - 30)/2, 30);
    }

}

-(UIImageView *)menuImageView
{
    if (!_menuImageView) {
        _menuImageView = [UIImageView new];
        
    }
    return _menuImageView;
}


-(UILabel *)menuTitleLab
{
    if (!_menuTitleLab) {
        _menuTitleLab = [UILabel new];
        
    }
    return _menuTitleLab;
}

@end
