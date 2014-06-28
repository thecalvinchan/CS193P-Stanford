//
//  CardDeckPlayingCardDeck.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckPlayingCardDeck.h"
#import "CardDeckPlayingCard.h"

@implementation CardDeckPlayingCardDeck
- (instancetype)init {
    self = [super init];
    if (self) {
        for (NSString *suit in [CardDeckPlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [CardDeckPlayingCard maxRank]; rank++) {
                CardDeckPlayingCard *card = [[CardDeckPlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
        
    }
    return self;
}
@end
