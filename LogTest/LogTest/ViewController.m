//
//  ViewController.m
//  LogTest
//
//  Created by andylau on 15/10/12.
//  Copyright © 2015年 andylau. All rights reserved.
//

#import "ViewController.h"
#import "SaveLog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"日志记录";
}

- (IBAction)add1:(id)sender {
    [SaveLog  saveLog:@"第一篇日志，14:05开始记录" txtName:@"NO.1.txt"];
    [SaveLog  saveLog:@"第一篇日志，14:06开始记录" txtName:@"NO.1.txt"];
}

- (IBAction)add2:(id)sender {
    [SaveLog  saveLog:@"第一篇日志，14:08开始记录" txtName:@"NO.1.txt"];
    [SaveLog  saveLog:@"第二篇日志，14:07开始记录" txtName:@"NO.2.txt"];
    [SaveLog  saveLog:@"第三篇日志，14:09开始记录" txtName:@"NO.3.txt"];
}
- (IBAction)add3:(id)sender {
    [SaveLog  saveLog:@"第一篇日志，14:10开始记录" txtName:@"NO.1.txt"];
    [SaveLog  saveLog:@"第二篇日志，14:11开始记录" txtName:@"NO.2.txt"];
    [SaveLog  saveLog:@"第二篇日志，14:12开始记录" txtName:@"NO.2.txt"];
    [SaveLog  saveLog:@"第三篇日志，14:13开始记录" txtName:@"NO.3.txt"];
    [SaveLog  saveLog:@"第四篇日志，14:14开始记录" txtName:@"NO.4.txt"];
}

- (IBAction)add4:(id)sender {
    [SaveLog  saveLog:@"第一篇日志，14:16开始记录" txtName:@"NO.1.txt"];
    [SaveLog  saveLog:@"第四篇日志，14:15开始记录" txtName:@"NO.4.txt"];
    [SaveLog  saveLog:@"第三篇日志，14:17开始记录" txtName:@"NO.3.txt"];

}
@end
