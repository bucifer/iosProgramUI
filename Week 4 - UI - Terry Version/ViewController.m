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


-(IBAction)sampleButtonAction {
    self.headerLabel.text = @"User Clicked on Dynamic Button";
    [self.myImageView setImage:nil];
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
    UISegmentedControl *segmentCtrl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(15, 350, 320, 60) ] initWithItems:[NSArray arrayWithObjects:@"TurnToTech",@"Qcd", nil]];
    [segmentCtrl setBackgroundColor:[UIColor blackColor]];
    
    [self.view addSubview:segmentCtrl];
}

-(void)createImageView {
    self.myImageView = [[UIImageView alloc]initWithFrame:CGRectMake(400, 70, 100, 50)];
    [self.view addSubview:self.myImageView];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
