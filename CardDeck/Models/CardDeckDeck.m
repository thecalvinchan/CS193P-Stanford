//
//  CardDeckDeck.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckDeck.h"

@interface CardDeckDeck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation CardDeckDeck

- (NSMutableArray *) cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(CardDeckCard *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(CardDeckCard *)card {
    [self addCard:card atTop:NO];
}

- (CardDeckCard *)drawRandomCard {
    CardDeckCard *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
