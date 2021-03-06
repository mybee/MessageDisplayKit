//
//  XHLocationServiceTableViewCell.m
//  MessageDisplayExample
//
//  Created by 曾 宪华 on 14-5-25.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHLocationServiceTableViewCell.h"

@interface XHLocationServiceTableViewCell ()

@property (nonatomic, strong) UIImageView *avatarImageView;

@property (nonatomic, strong) UILabel *userNameLabel;
@property (nonatomic, strong) UIImageView *userSexImageView;

@property (nonatomic, strong) UILabel *distanseLabel;
@property (nonatomic, strong) UIImageView *albumImageView;

@property (nonatomic, strong) UILabel *introductionLabel;

@end

@implementation XHLocationServiceTableViewCell

- (void)configureCellWithItem:(id)item atIndexPath:(NSIndexPath *)indexPath {
    self.distanseLabel.text = @"10米以内";
    if (indexPath.row % 2) {
        self.userNameLabel.text = @"杨仁捷";
        self.introductionLabel.text = @"杨仁捷是UI/UE设计师，也是我的好拍档，有着编程功底，绝对是一个好设计师，UI设计可以帮程序员节省一大堆代码，这才是真正的设计师";
    } else {
        self.userNameLabel.text = @"吴盛潮";
        self.introductionLabel.text = @"吴盛潮是iOS开发者，也是我的好伙伴，iOS大神，找大神，找大神，一直会以技术支持的角色，所以你们不比害怕问题解决不了！";
    }
}

#pragma mark - Propertys

- (UIImageView *)avatarImageView {
    if (!_avatarImageView) {
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(kXHNearAvatarSpacing, kXHNearAvatarSpacing, kXHNearAvatarSize, kXHNearAvatarSize)];
        _avatarImageView.image = [UIImage imageNamed:@"avatar"];
    }
    return _avatarImageView;
}

- (UILabel *)userNameLabel {
    if (!_userNameLabel) {
        _userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.avatarImageView.frame) + kXHNearAvatarSpacing, kXHNearAvatarSpacing, 55, 30)];
        _userNameLabel.backgroundColor = [UIColor clearColor];
        _userNameLabel.textColor = [UIColor blackColor];
        _userNameLabel.font = [UIFont boldSystemFontOfSize:17];
    }
    return _userNameLabel;
}
- (UIImageView *)userSexImageView {
    if (!_userSexImageView) {
        _userSexImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Contact_Male"]];
        CGRect userSexImageViewFrame = _userSexImageView.frame;
        userSexImageViewFrame.origin.x = CGRectGetMaxX(self.userNameLabel.frame);
        userSexImageViewFrame.origin.y = CGRectGetMidY(self.userNameLabel.frame) - CGRectGetHeight(userSexImageViewFrame) / 2.0;
        _userSexImageView.frame = userSexImageViewFrame;
    }
    return _userSexImageView;
}

- (UILabel *)distanseLabel {
    if (!_distanseLabel) {
        _distanseLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(self.userNameLabel.frame), CGRectGetMaxY(self.userNameLabel.frame), 50, 15)];
        _distanseLabel.font = [UIFont systemFontOfSize:12];
        _distanseLabel.backgroundColor = [UIColor clearColor];
        _distanseLabel.textColor = [UIColor grayColor];
    }
    return _distanseLabel;
}
- (UIImageView *)albumImageView {
    if (!_albumImageView) {
        _albumImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AlbumFlagMark"]];
        CGRect albumImageViewFrame = _albumImageView.frame;
        albumImageViewFrame.origin.x = CGRectGetMaxX(self.distanseLabel.frame);
        albumImageViewFrame.origin.y = CGRectGetMinY(self.distanseLabel.frame);
        _albumImageView.frame = albumImageViewFrame;
    }
    return _albumImageView;
}

- (UILabel *)introductionLabel {
    if (!_introductionLabel) {
        _introductionLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetWidth([[UIScreen mainScreen] bounds]) - kXHNearAvatarSpacing - 160, kXHNearAvatarSpacing, 160, kXHNearAvatarSize)];
        _introductionLabel.font = [UIFont systemFontOfSize:10];
        _introductionLabel.backgroundColor = [UIColor clearColor];
        _introductionLabel.textColor = [UIColor colorWithRed:0.097 green:0.633 blue:1.000 alpha:1.000];
        _introductionLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _introductionLabel.numberOfLines = 0;
    }
    return _introductionLabel;
}

#pragma mark - Life Cycle

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.userNameLabel];
        [self.contentView addSubview:self.userSexImageView];
        [self.contentView addSubview:self.distanseLabel];
        [self.contentView addSubview:self.albumImageView];
        [self.contentView addSubview:self.introductionLabel];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
