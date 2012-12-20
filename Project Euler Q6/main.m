//
//  main.m
//  Project Euler Q6
//
//  Created by Joshua Fisher on 9/8/12.
//  Copyright (c) 2012 Joshua Fisher. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int sumOfSquares=0, squareOfSums=0, difference = 0;
        
        for (int i=1; i <= 100; i++) {
            sumOfSquares += (i*i);
            NSLog(@"Sum of Squares: %d", sumOfSquares);
        }
        
        for (int i=1; i <= 100; i++) {
            squareOfSums += i;
            NSLog(@"Square of Sums: %d", squareOfSums);
        }
        squareOfSums = squareOfSums * squareOfSums;
        NSLog(@"Square of Sums: %d", squareOfSums);        
        
        
        // I suspect that there's a proof out there that suggests that the square of sums will always be greater than the sum of squares of some numbers 1-n. But I don't have time to prove it, or look for one, thus:
        if (squareOfSums > sumOfSquares)
        {
            difference = squareOfSums - sumOfSquares;
        }
        else 
        {
            difference = sumOfSquares - squareOfSums;
        }
        NSLog(@"%d", difference);
        
    }
    return 0;
}

