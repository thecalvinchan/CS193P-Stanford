//
//  CardDeckCardMatchingGame.h
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardDeckPlayingCardDeck.h"

@interface CardDeckCardMatchingGame : NSObject
- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(CardDeckDeck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;
- (CardDeckCard *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
