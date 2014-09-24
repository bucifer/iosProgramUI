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


-(void)createLabel
{
    self.headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.headerLabel.textColor = [UIColor blackColor];
    
    self.headerLabel.font = [UIFont fontWithName:@"Arial" size:22];
    self.headerLabel.text = @"Created at THE TIME IS NOW";
    self.headerLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.headerLabel];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self createLabel];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
