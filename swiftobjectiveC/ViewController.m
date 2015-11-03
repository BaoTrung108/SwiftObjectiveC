//
//  ViewController.m
//  swiftobjectiveC
//
//  Created by trung bao on 03/11/2015.
//  Copyright © 2015 baotrung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *screen;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *onoffoutlet;
@property (weak, nonatomic) IBOutlet UISlider *chinhmauoutlet;
@property (weak, nonatomic) IBOutlet UISlider *xoayoutlet;
@property (weak, nonatomic) IBOutlet UISlider *scaleoutlet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     self.screen.backgroundColor=[UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ONOFF:(id)sender {
    int n = self.onoffoutlet.on;
    self.screen.hidden=!n;
}
- (IBAction)chinhMau:(id)sender {
    self.screen.alpha= self.chinhmauoutlet.value;
}
- (IBAction)xoayAnh:(id)sender {
    self.screen.layer.transform=CATransform3DMakeRotation(self.xoayoutlet.value, 0.0, 0.0, 0.1);
}
- (IBAction)scareAnh:(id)sender {
    self.screen.transform=CGAffineTransformMakeScale(self.scaleoutlet.value, self.scaleoutlet.value);
}
- (IBAction)chonMau:(id)sender {
    long n=[self.segmentOutlet selectedSegmentIndex];
    switch (n) {
        case 0:
            self.screen.backgroundColor=[UIColor blackColor];
            break;
            case 1:
            self.screen.backgroundColor=[UIColor redColor];
            break;
            case 2:
            self.screen.backgroundColor=[UIColor blueColor];
            break;
            case 3:
            self.screen.backgroundColor=[UIColor greenColor];
            break;
        default:
            break;
    }
}

@end
