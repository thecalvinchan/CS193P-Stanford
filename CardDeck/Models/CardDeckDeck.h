//
//  CardDeckDeck.h
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardDeckCard.h"

@interface CardDeckDeck : NSObject
- (void)addCard:(CardDeckCard *)card atTop:(BOOL)atTop;
- (void)addCard:(CardDeckCard *)card;
- (CardDeckCard *)drawRandomCard;
@end
