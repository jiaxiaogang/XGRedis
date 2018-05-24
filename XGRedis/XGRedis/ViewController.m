//
//  ViewController.m
//  XGRedis
//
//  Created by iMac on 2018/5/24.
//  Copyright © 2018年 iMac. All rights reserved.
//

#import "ViewController.h"
#import "XGRedis.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testRedis];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) testRedis{
    XGRedis *redis = [[XGRedis alloc] init];
    
    [redis setObject:@"test1" forKey:@"key1"];
    NSObject *v1 = [redis objectForKey:@"key1"];
    [redis setObject:@"test2" forKey:@"key2" time:5];
    [redis setObject:@"test3" forKey:@"key3" time:10];
    [redis setObject:@"test3" forKey:@"key3" time:40];
}

@end
