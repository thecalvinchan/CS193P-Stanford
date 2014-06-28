//
//  CardDeckViewController.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckViewController.h"

@interface CardDeckViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardDeckViewController

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}
- (IBAction)cardFlip:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"BackCard"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];

    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"FrontCard"] forState:UIControlStateNormal];
        [sender setTitle:@"A♠︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}


@end
