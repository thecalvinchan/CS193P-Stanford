//
//  CardDeckViewController.m
//  CardDeck
//
//  Created by Calvin on 6/28/14.
//  Copyright (c) 2014 com.vzy. All rights reserved.
//

#import "CardDeckViewController.h"
#import "CardDeckPlayingCardDeck.h"
#import "CardDeckCardMatchingGame.h"

@interface CardDeckViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (strong, nonatomic) CardDeckCardMatchingGame *game;
@end

@implementation CardDeckViewController

- (CardDeckCardMatchingGame *)game {
    if (!_game) {
        _game = [[CardDeckCardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}

- (IBAction)cardFlip:(UIButton *)sender {
    
    int chosenCardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenCardIndex];
    [self updateUI];
}

- (CardDeckDeck *)createDeck {
    return [[CardDeckPlayingCardDeck alloc] init];
}

- (void)updateUI {
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        CardDeckCard *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.score.text = [NSString stringWithFormat:@"Score: %d",self.game.score];
    }
}

- (NSString *)titleForCard:(CardDeckCard *)card {
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(CardDeckCard *)card {
    return [UIImage imageNamed:card.isChosen ? @"FrontCard" : @ "BackCard"];
}

@end
