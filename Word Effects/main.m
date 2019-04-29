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
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        NSLog(@"%s",inputChars);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
            
        printf("Input a number:");
        fgets(inputNumber, 255, stdin);
        NSLog(@"%s", inputNumber);
            
        printf("Your string is %s\n", inputNumber);
            
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSString *inputNumberString = [NSString stringWithUTF8String:inputNumber];
        // print NSString object
        NSLog(@"Input was: %@", inputString);
            NSLog(@"Input was: %@", inputNumberString);
        }
        
    }
    return 0;
}
