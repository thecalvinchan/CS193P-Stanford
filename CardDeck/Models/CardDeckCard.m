//
//  CardDeckCard.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckCard.h"

@interface CardDeckCard()

@end

@implementation CardDeckCard

- (int)match:(NSArray *)otherCards {
    int score = 0;
    for (CardDeckCard *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
