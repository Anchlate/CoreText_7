//
//  ViewController.m
//  CoreText
//
//  Created by Qianrun on 16/12/15.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "ViewController.h"
#import "CTView.h"
#import "Masonry.h"
#import "ANMarkupParser.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet CTView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"txt"];
    NSString* text = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    ANMarkupParser* p = [[ANMarkupParser alloc] init];
    NSAttributedString* attString = [p attrStringFromMarkup: text];
    [self.myView setAttString:attString];
    [self.myView buildFrames];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
