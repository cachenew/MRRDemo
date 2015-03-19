//
//  ViewController.m
//  MRRDemo
//
//  Created by Krunal on 3/19/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import "ViewController.h"
#import "CarStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    [array addObject:@"Honda Amaze"];
    
    
    NSLog(@"%@", array);
    CarStore *superstore = [CarStore carStore];
    [superstore setInventory:array];
    [array release];
    
    // do other stuff...
    
    NSLog(@"%@", [superstore inventory]);
    
    //[superstore release];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
