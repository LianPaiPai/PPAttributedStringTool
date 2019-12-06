//
//  ViewController.m
//  PPAttributedStringTool
//
//  Created by 拍拍 on 2019/12/6.
//  Copyright © 2019 PaiPai Lian. All rights reserved.
//

#import "ViewController.h"

#import "PPAttributedStringTool.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *demoLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSAttributedString *attrString = [PPAttributedStringTool makeAttributedString:^(PPAttributedStringTool *attrString) {
        attrString.addString(@"这是第一句 ").font([UIFont boldSystemFontOfSize:12]).color([UIColor redColor]);
        attrString.addString(@"这是第二句 ").color([UIColor blueColor]).font([UIFont boldSystemFontOfSize:14]);
//        attrString.addImg([UIImage imageNamed:@""], CGRectMake(0, 2, 26, 16));
        attrString.addString(@"¥").font([UIFont boldSystemFontOfSize:14]).color([UIColor redColor]);
        attrString.addString(@"180 ").font([UIFont boldSystemFontOfSize:14]).color([UIColor blueColor]);
        attrString.addString(@"这是第四句").underLine([UIColor greenColor]);
    }];
    _demoLabel.attributedText = attrString;
}


@end
