//
//  main.m
//  Word Effects
//
//  Created by Frank Chen on 2019-04-29.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {

        // 255 unit long array of characters
        char inputChars[255];
        char inputNumber[255];
            NSString *finalString = [[NSString alloc]init];
            
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        NSLog(@"%s",inputChars);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
            
        printf("Input a number:");
        fgets(inputNumber, 255, stdin);
        NSLog(@"%s", inputNumber);
            
        printf("Your number is %s\n", inputNumber);
        
        // convert char array to an NSString object
        NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];
        NSMutableString *inputNumberString = [NSMutableString stringWithUTF8String:inputNumber];
            NSString *newString = [[NSString alloc]init];
            
            int value = 0 ;
            
            int num = [inputNumberString intValue];
        switch (num) {
            case 1:
                finalString = [inputString uppercaseString];
                break;
            case 2:
                finalString = [inputString lowercaseString];
                break;
            case 3 :
                value = [inputString intValue];
                finalString = [NSString stringWithFormat:@"%d", value];
                NSLog(@"final number is %@", finalString);
                break;
            case 4:
                finalString = [inputString stringByAppendingString:@"eh?"];
                break;
            case 5:
                newString = [inputString substringToIndex:[inputString length] - 1];
                if ([newString hasSuffix:@"?"]){
                    NSLog(@"has question");
                    finalString = @"I don't know";
                } else if ([newString hasSuffix:@"!"]){
                    finalString = @"Whoa, calm down!";
                }
                break;
            case 6:
                finalString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                break;
            case 7:
                newString = [inputString substringToIndex:[inputString length] - 1];
                for (int i = 0; i < [newString length]; i++) {
                    finalString = [finalString stringByAppendingString:@"🥛"];
                }
                break;
            default:
                break;
        }
            
        // print NSString object
        NSLog(@"Manipulated string is: %@", finalString);
        }
        
    }
    return 0;
}
