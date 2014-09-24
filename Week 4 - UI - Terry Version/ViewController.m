//
//  ViewController.m
//  Week 4 - UI - Terry Version
//
//  Created by Aditya Narayan on 9/24/14.
//  Copyright (c) 2014 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createLabel];
    [self createButton];
    [self createSegment];
    [self createImageView];
    [self createRelativeLabel];
    
    [self.relativeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.myImageView setTranslatesAutoresizingMaskIntoConstraints:NO];

    // Width constraint, half of parent view width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.relativeLabel
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.1
                                                           constant:0]];
    
    // Height constraint, half of parent view height
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.relativeLabel
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.1
                                                           constant:0]];

    // Stick red box to the right
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.relativeLabel
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Stick red box to the bottom
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.relativeLabel
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];

    // Stick pikachu to the left
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.myImageView
                                                          attribute:NSLayoutAttributeLeft
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeLeft
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Stick pikachu to the bottom
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.myImageView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    
}


-(void)createLabel
{
    self.headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 0, 200, 200)];
    self.headerLabel.textColor = [UIColor blackColor];
    self.headerLabel.font = [UIFont fontWithName:@"Arial" size:22];
    self.headerLabel.text = @"HELLO WORLD";
    self.headerLabel.backgroundColor = [UIColor greenColor];
    self.headerLabel.numberOfLines = 0;
    [self.view addSubview:self.headerLabel];
}

-(void)createRelativeLabel {
    self.relativeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50,50)];
    self.relativeLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview: self.relativeLabel];
}


-(IBAction)sampleButtonAction {
    self.headerLabel.text = @"User Clicked on Dynamic Button";
    [self.myImageView setImage:[UIImage imageNamed:@"pikachu.png"]];
}
//order seems to matter for declaring this action

-(void)createButton
{
    UIButton *sampleButton = [[UIButton alloc]initWithFrame:CGRectMake(5, 30, 150, 30)];
    [sampleButton setBackgroundColor:[UIColor blackColor]];
    [sampleButton setTitle:@"Dynamic Button" forState:UIControlStateNormal];
    [sampleButton addTarget:self action:@selector(sampleButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sampleButton];
}


-(void)createSegment
{
    UISegmentedControl *segmentCtrl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height/2, 50, 60) ] initWithItems:[NSArray arrayWithObjects:@"Jamba",@"Chipotle", nil]];
    [segmentCtrl setBackgroundColor:[UIColor blueColor]];
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                [UIFont boldSystemFontOfSize:17], NSFontAttributeName,
                                [UIColor whiteColor], NSForegroundColorAttributeName,
                                nil];
    [segmentCtrl setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
    [segmentCtrl addTarget:self action:@selector(pushSegmentControl:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmentCtrl];
}

-(IBAction)pushSegmentControl:(id)sender{
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            
            //Label Change
            self.headerLabel.text = @"You click the Jamba";
            self.headerLabel.backgroundColor = [UIColor redColor];
            self.headerLabel.textColor = [UIColor blackColor];
            
            //Image Display
            self.myImageView.image = [UIImage imageNamed:@"jamba.jpeg"];
            
            break;
            
        case 1:
            
            self.headerLabel.text = @"You click the Chipotle";
            self.headerLabel.backgroundColor = [UIColor whiteColor];
            
            self.myImageView.image = [UIImage imageNamed:@"bulbasaur.png"];
            
            break;
            
        default:
            break;
    }
}




-(void)createImageView {
    self.myImageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    self.myImageView.image = [UIImage imageNamed:@"pikachu.png"];
    [self.view addSubview:self.myImageView];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
