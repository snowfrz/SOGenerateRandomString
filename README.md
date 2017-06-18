# SOGenerateRandomString
Generates random strings of a given length on iOS. Based on [this StackOverflow post](https://stackoverflow.com/questions/2633801/generate-a-random-alphanumeric-string-in-cocoa). 

# How to use
    GenerateRandomString *random = [[GenerateRandomString alloc] init];
    NSString *randomString = [random randomStringWithLength:30];
