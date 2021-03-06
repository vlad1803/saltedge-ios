//
//  SELogin.m
//
//  Copyright (c) 2016 Salt Edge. https://saltedge.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "SELogin.h"

static NSString* const kLoginLastAttemptKey = @"last_attempt";

@implementation SELogin

+ (instancetype)objectFromDictionary:(NSDictionary *)dictionary
{
    SELogin* object = [super objectFromDictionary:dictionary];
    object.lastAttempt = [SELoginAttempt objectFromDictionary:dictionary[kLoginLastAttemptKey]];
    return object;
}

- (NSString*)stage
{
    return self.lastAttempt.lastStage.name;
}

- (NSString*)lastFailMessage
{
    return self.lastAttempt.failMessage;
}

- (BOOL)isEqualToLogin:(SELogin*)login
{
    return ([self.id integerValue] == [login.id integerValue]);
}

- (BOOL)isEqual:(id)object
{
    if (self == object) {
        return YES;
    }

    if (![object isKindOfClass:[self class]]) {
        return NO;
    }

    return [self isEqualToLogin:object];
}

- (NSUInteger)hash
{
    return self.id.unsignedIntegerValue;
}

@end
