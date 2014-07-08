//
//  MainViewController.m
//  Week4Lesson
//
//  Created by Andrew Janich on 7/8/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIView *canvasView;
@property (atomic) float *selection;

- (IBAction)onCanvasDoubleTap:(UITapGestureRecognizer *)sender;
- (IBAction)onInstaTap:(UITapGestureRecognizer *)sender;


@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCanvasDoubleTap:(UITapGestureRecognizer *)tapGestureRecognizer {
    
    
    CGPoint point = [tapGestureRecognizer locationInView:self.view];
    //CGPoint velocity = [panGestureRecognizer velocityInView:self.view];

    NSLog(@"I double tapped");
    if (self.selection == 0) {
        
        UIView *basketball = [[UIView alloc] initWithFrame:(CGRectMake(self.canvasView.center.x, self.canvasView.center.y,66, 66))];
        
        //basketball.backgroundColor = [UIColor blueColor];
        basketball.center = point;
        
        UIImage *dribbbleImage = [UIImage imageNamed:@"instagram.png"];
        UIImageView *dribbbleImageView = [[UIImageView alloc] initWithImage:dribbbleImage];
        
        [basketball addSubview:dribbbleImageView];
        [self.canvasView addSubview:basketball];
    }
    
    
 
    
   
//    UIView *basketball = [[UIView alloc] initWithFrame:(CGRectMake(self.canvasView.center.x, self.canvasView.center.y, 60,60))];
//    UIImageView *dribbble = [[UIImageView alloc] initWithImage:@"dribbble.png"];
//    [self.basketball addSubview:(dribbble)];
//    [self.canvasView addSubview:(basketball)];
    
}

- (IBAction)onInstaTap:(UITapGestureRecognizer *)sender {
    
    NSLog(@"Selection Engaged");
    self.selection = 0;
    
    
}
@end
