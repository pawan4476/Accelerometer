//
//  ViewController.h
//  Accelerometer
//
//  Created by Nagam Pawan on 10/28/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *zLabel;

@property (strong, nonatomic) CMAccelerometerData *data;
@property (strong, nonatomic) CMMotionManager *manager;
@end

