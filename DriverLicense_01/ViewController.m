//
//  ViewController.m
//  DriverLicense_01
//
//  Created by 付小宁 on 16/2/3.
//  Copyright © 2016年 Maizi. All rights reserved.
//

#import "ViewController.h"
#import "SelectView.h"
@interface ViewController ()
{
    SelectView * _selectView;
    
    __weak IBOutlet UIButton *selectBtn;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _selectView = [[SelectView alloc]initWithFrame:self.view.frame andBtn:selectBtn];
    _selectView.alpha = 0;
    
    [self.view addSubview:_selectView];
}
- (IBAction)clickBtn:(UIButton *)sender {
    [UIView animateWithDuration:0 animations:^{
        _selectView.alpha = 1;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
