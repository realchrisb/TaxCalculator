//
//  ViewController.m
//  TaxCalculator
//
//  Created by Christopher Benavides on 5/22/16.
//  Copyright © 2016 Christopher Benavides. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double sfTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .08875;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredText = self.priceTextField.text;
    int enteredValue = enteredText.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0){
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
    self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    } else {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    }
        }


@end
