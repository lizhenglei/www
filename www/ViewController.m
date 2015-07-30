//
//  ViewController.m
//  www
//
//  Created by 李正雷 on 15/7/1.
//  Copyright (c) 2015年 LZL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
    UITableView *_tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITextField *ff = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    ff.backgroundColor = [UIColor redColor];
    ff.delegate = self;
    ff.tag = 100;
    [self.view addSubview:ff];
    UITextField *ff1 = [[UITextField alloc]initWithFrame:CGRectMake(100, 300, 100, 30)];
    ff1.backgroundColor = [UIColor redColor];
    ff1.delegate = self;
    ff1.tag = 101;
    [self.view addSubview:ff1];
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view];
    NSString *aa = @"aa";
    NSString *bb = [NSString stringWithFormat:@"%@",aa,NULL];
    
    
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField.tag ==100) {
        NSLog(@"ggiergg");
        return NO;
    }
    NSLog(@"44444");
    return YES;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
