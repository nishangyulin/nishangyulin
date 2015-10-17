//
//  ViewController.m
//  xinjian
//
//  Created by mac on 15/10/12.
//  Copyright (c) 2015年 ss. All rights reserved.
//

#import "ViewController.h"
#import "myView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    myView *myview = [[myView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
    myview.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:myview];
}





@end
