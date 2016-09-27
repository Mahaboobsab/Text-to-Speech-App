//
//  ViewController.m
//  Text To Speech
//
//  Created by Mahaboobsab Nadaf on 26/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

#import <AVFoundation/AVFoundation.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)speck:(id)sender {
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:self.myTextField.text];
    [utterance setRate:0.2f];
    [synthesizer speakUtterance:utterance];
}
@end
