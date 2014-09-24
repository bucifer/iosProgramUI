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
}

-(void)createLabel
{
    self.headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 0, 200, 200)];
    self.headerLabel.textColor = [UIColor blackColor];
    self.headerLabel.font = [UIFont fontWithName:@"Arial" size:22];
    self.headerLabel.text = @"HELLO WORLD";
    self.headerLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.headerLabel];
}

-(void)createButton
{
    UIButton *sampleButton = [[UIButton alloc]initWithFrame:CGRectMake(5, 30, 150, 30)];
    [sampleButton setBackgroundColor:[UIColor blackColor]];
    [sampleButton setTitle:@"Dynamic Button" forState:UIControlStateNormal];
    [self.view addSubview:sampleButton];
}

-(void)createSegment
{
    UISegmentedControl *segmentCtrl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(15, 350, 320, 60) ] initWithItems:[NSArray arrayWithObjects:@"TurnToTech",@"Qcd", nil]];
    [segmentCtrl setBackgroundColor:[UIColor blackColor]];
    
    [self.view addSubview:segmentCtrl];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
