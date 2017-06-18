//
//  SOGenerateRandomString.m
//  Paperboy Assistant
//
//  Created by Justin Proulx on 2017-02-05.
//
//  Based on this StackOverflow post
//  http://stackoverflow.com/questions/2633801/generate-a-random-alphanumeric-string-in-cocoa
//
//  How to use:
//  SOGenerateRandomString *random = [[SOGenerateRandomString alloc] init];
//  NSString *randomString = [random randomStringWithLength:30];

#import "SOGenerateRandomString.h"


@implementation SOGenerateRandomString

-(NSString *) randomStringWithLength: (int) len
{
    
    NSString *characters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i < len; i++) {
        [randomString appendFormat: @"%C", [characters characterAtIndex:arc4random_uniform([characters length])]];
    }
    
    return randomString;
}

@end
