//
//  InputCollector.m
//  contactList1
//
//  Created by Alex Quigley on 2017-10-31.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    // Show promptString
    NSLog(@"%@", promptString);
    
    // Collect input with fgets 
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    // Return input as NSString
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

@end

