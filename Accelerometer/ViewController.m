//
//  ViewController.m
//  Accelerometer
//
//  Created by Nagam Pawan on 10/28/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSOperationQueue *operationQue = [[NSOperationQueue alloc]init];
    //_data = [[CMAccelerometerData alloc]init];
    _manager = [[CMMotionManager alloc]init];
    self.manager.accelerometerUpdateInterval = .2;
    [_manager startAccelerometerUpdatesToQueue:operationQue withHandler:^(CMAccelerometerData *accelerometerData, NSError * error) {
        
        [self outputAccelerationData:accelerometerData.acceleration];
//        _data = _manager.accelerometerData;
//        [self.xLabel setText:[NSString stringWithFormat:@"%f", _manager.accelerometerData.acceleration.x]];
//        [self.yLabel setText:[NSString stringWithFormat:@"%f", _manager.accelerometerData.acceleration.y]];
//        [self.zLabel setText:[NSString stringWithFormat:@"%f", _manager.accelerometerData.acceleration.z]];
//        
    }];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)outputAccelerationData:(CMAcceleration)acceleration{
    
    self.xLabel.text = [NSString stringWithFormat:@"%.2fg", acceleration.x];
    self.yLabel.text = [NSString stringWithFormat:@"%.2fg", acceleration.y];
    self.zLabel.text = [NSString stringWithFormat:@"%.2fg", acceleration.z];
}


@end
