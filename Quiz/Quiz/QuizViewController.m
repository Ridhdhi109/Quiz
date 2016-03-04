
//  QuizViewController.m
//  Quiz
//
//  Created by Ridhdhi Desai on 2/29/16.
//  Copyright © 2016 Ridhdhi Desai. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //call init mention implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //Create two arrays filled with Questions and answers
        //and make the pointers to point them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    //return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender {
    
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    
    if (self.currentQuestionIndex == [self.questions count]) {
        
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }
    //Get the string at that index in question array
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answerLabel.text = @"???";
    
}
-(IBAction)showAnswer:(id)sender {
    
    //What is the answer to the current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display answer in answer label
    self.answerLabel.text = answer;    
    
}


@end
