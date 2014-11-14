//
//  ExpandoButton.h
//  Google Button
//
//  Created by App Partner on 11/13/14.
//  Copyright (c) 2014 App Partner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpandoButton : UIControl

@property (nonatomic, strong) NSMutableArray *buttonTitles;

@property (nonatomic, strong) IBOutlet NSLayoutConstraint *buttonHeight;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *buttonWidth;

@end
