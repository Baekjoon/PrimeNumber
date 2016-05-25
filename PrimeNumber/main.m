//
//  main.m
//  PrimeNumber
//
//  Created by Baekjoon Choi on 5/25/16.
//  Copyright © 2016 Startlink. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger limit = 100000;
        // Check가 YES면 소수(지워지지 않음)이다, NO면 소수가 아니다 (지워짐)
        NSMutableArray *check = [NSMutableArray arrayWithCapacity:limit+1];
        for (NSInteger i=0; i<=limit; i++) {
            [check addObject:@(YES)];
            //[check addObject:[NSNumber numberWithBool:NO]];
        }
        NSLog(@"%tu",[check count]);
        NSMutableArray *primes = [@[] mutableCopy];
        for (NSInteger i = 2; i <= limit; i++) {
            if ([check[i] boolValue] == YES) {
                [primes addObject:@(i)];
                for (NSInteger j = i*i; j<=limit; j+=i) {
                    check[j] = @(NO);
                }
            }
        }
        NSLog(@"%tu", primes.count);
    }
    return 0;
}
