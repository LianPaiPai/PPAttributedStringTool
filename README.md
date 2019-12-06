# PPAttributedStringTool
iOS富文本编辑器，功能简单易用的富文本编写，链式编程，类似masonry的使用方法。自己练手使用的工具类

NSAttributedString *attrString = [PPAttributedStringTool makeAttributedString:^(PPAttributedStringTool *attrString) {
        attrString.addString(@"这是第一句 ").font([UIFont boldSystemFontOfSize:12]).color([UIColor redColor]);
        attrString.addString(@"这是第二句 ").color([UIColor blueColor]).font([UIFont boldSystemFontOfSize:14]);
//        attrString.addImg([UIImage imageNamed:@""], CGRectMake(0, 2, 26, 16));
        attrString.addString(@"¥").font([UIFont boldSystemFontOfSize:14]).color([UIColor redColor]);
        attrString.addString(@"180 ").font([UIFont boldSystemFontOfSize:14]).color([UIColor blueColor]);
        attrString.addString(@"这是第四句").underLine([UIColor greenColor]);
    }];
