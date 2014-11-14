//
//  ViewController.m
//  Google Button
//
//  Created by App Partner on 11/13/14.
//  Copyright (c) 2014 App Partner. All rights reserved.
//

#import "ViewController.h"
#import "ExpandoButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonWidth;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *secondTopToFirstTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *thirdTopToSecondTop;

@property (nonatomic, strong) NSMutableArray *buttonTitles;
@property (weak, nonatomic) IBOutlet ExpandoButton *firstButton;
@property (weak, nonatomic) IBOutlet UILabel *firstButtonLabel;
@property (weak, nonatomic) IBOutlet ExpandoButton *secondButton;
@property (weak, nonatomic) IBOutlet UILabel *secondButtonLabel;
@property (weak, nonatomic) IBOutlet ExpandoButton *thirdButton;
@property (weak, nonatomic) IBOutlet UILabel *thirdButtonLabel;

@end

const CGFloat BUTTON_HEIGHT = 40.0f;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.buttonTitles = @[ @"FEDERAL", @"STATE", @"LOCAL" ].mutableCopy;
    //    self.button.titles = self.buttonTitles;
    //    self.firstButton.selected = NO;
    [self updateButtonTitles];
}

- (void)updateButtonTitles
{
    self.firstButtonLabel.text = self.buttonTitles.firstObject;
    self.secondButtonLabel.text = self.buttonTitles[1];
    self.thirdButtonLabel.text = self.buttonTitles[2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchUpInside:(id)sender
{
    UIControl *button = (UIControl *)sender;
    NSString *selectedButtonTitle;
    if (button == self.firstButton)
    {
        selectedButtonTitle = self.firstButtonLabel.text;
    }
    else if (button == self.secondButton)
    {
        NSString *selectedTitle = self.secondButtonLabel.text;
        //        NSString *titleToBeReplaced = self.firstButtonLabel.text;
        [self.buttonTitles removeObject:selectedTitle];
        [self.buttonTitles insertObject:selectedTitle atIndex:0];
        selectedButtonTitle = selectedTitle;
    }
    else
    {
        NSString *selectedTitle = self.thirdButtonLabel.text;
        //        NSString *titleToBeReplaced = self.firstButtonLabel.text;
        [self.buttonTitles removeObject:selectedTitle];
        [self.buttonTitles insertObject:selectedTitle atIndex:0];
        selectedButtonTitle = selectedTitle;
    }

    if ([self.firstButton isSelected])
    {
        self.secondTopToFirstTop.constant += self.buttonHeight.constant;
        self.thirdTopToSecondTop.constant += self.buttonHeight.constant;
        self.firstButton.selected = NO;
        NSLog(@"Selected: %@", selectedButtonTitle);
    }
    else
    {
        self.secondTopToFirstTop.constant -= self.buttonHeight.constant;
        self.thirdTopToSecondTop.constant -= self.buttonHeight.constant;
        self.firstButton.selected = YES;
    }

    [UIView animateWithDuration:0.25f animations:^{
        [self.view layoutIfNeeded];
        //        [self updateButtonTitles];
    } completion:^(BOOL finished) {
                if (finished) [self updateButtonTitles];
    }];
}

@end
