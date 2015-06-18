//
//  RZLineHeightCell.m
//  BonMot
//
//  Created by Zev Eisenberg on 4/20/15.
//  Copyright (c) 2015 Zev Eisenberg. All rights reserved.
//

#import "RZLineHeightCell.h"

#import <BonMot/BONChainLink.h>

@interface RZLineHeightCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation RZLineHeightCell

+ (NSString *)title
{
    return @"Line Height";
}

- (void)awakeFromNib
{
    [super awakeFromNib];

    NSString *quote = @"I used to love correcting people’s grammar until I realized what I loved more was having friends.\n—Mara Wilson";
    NSAttributedString *attributedString = RZCursive.fontNameAndSize(@"AmericanTypewriter", 17.0f).lineHeightMultiple(1.8f).string(quote).attributedString;

    self.label.attributedText = attributedString;

    [self.label layoutIfNeeded]; // For auto-sizing cells
}

@end
