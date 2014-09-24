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
    
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.headerLabel attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:10.f];
    
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:self.headerLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:10.f];
    
    [self.view addConstraint:constraint];
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter] addObserver:self  selector:@selector(orientationChanged:)  name:UIDeviceOrientationDidChangeNotification  object:nil];
}

- (void)orientationChanged:(NSNotification *)notification{
    [self handleOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (void) handleOrientation:(UIInterfaceOrientation) orientation {
    
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        NSLog(@"Portrait view");
    }
    else if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight)
    {
        NSLog(@"Landscape view");
        
    }
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
    self.relativeLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, self.view.frame.size.height-50,  50,50)];
    self.relativeLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview: self.relativeLabel];
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
    UISegmentedControl *segmentCtrl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height/2, 50, 60) ] initWithItems:[NSArray arrayWithObjects:@"Jamba",@"Chipotle", nil]];
    [segmentCtrl setBackgroundColor:[UIColor blueColor]];
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                [UIFont boldSystemFontOfSize:17], NSFontAttributeName,
                                [UIColor whiteColor], NSForegroundColorAttributeName,
                                nil];
    [segmentCtrl setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
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
