//
//  CardDeckPlayingCard.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckPlayingCard.h"

@implementation CardDeckPlayingCard : CardDeckCard

// Override ParentClass method

- (NSString *)contents {
    NSArray *rankStrings = [CardDeckPlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (int)match:(NSArray *)otherCards {
    int score = 0;
    if ([otherCards count] == 1) {
        CardDeckPlayingCard *otherCard = [otherCards firstObject];
        if (otherCard.rank == self.rank ) {
            score = 4;
        } else if ([otherCard.suit isEqualToString:self.suit]) {
            score = 1;
        }
    }
    return score;
}

// Static class methods

+ (NSArray *)validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank {
    return [[CardDeckPlayingCard rankStrings] count] - 1;
}

// Getters and Setters

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit {
    if ([[CardDeckPlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank {
    if (rank <= [CardDeckPlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
