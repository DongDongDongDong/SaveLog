//
//  SaveLog.m
//  LogTest
//
//  Created by andylau on 15/10/12.
//  Copyright © 2015年 andylau. All rights reserved.
//

#import "SaveLog.h"

@implementation SaveLog



+ (void)saveLog:(NSString *)log txtName:(NSString*)txtName{

    NSString *path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"ChakeLog"];
    BOOL bo = [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    NSAssert(bo,@"创建目录ChakeLog失败");
    
    BOOL isExist = NO;
    NSArray *txtArray = [self getAllFileNames];
    for (NSString *name in txtArray) {
        NSLog(@"%@",name);
        isExist = [txtName isEqualToString:name];
        if (isExist) {
            break;
        }
    }
    
    NSString *txtPath = [path stringByAppendingPathComponent:txtName];
    if (isExist) {
        // 文件已存在
        NSString *oldStr=[NSString stringWithContentsOfFile:txtPath encoding:NSUTF8StringEncoding error:nil];
        oldStr = [oldStr stringByAppendingString:@"\n"];
        NSString *newStr = [oldStr stringByAppendingString:log];
        if (![newStr writeToFile:txtPath atomically:YES encoding:NSUTF8StringEncoding error:nil]) {
            NSLog(@"Write Log %@ Failed",txtName);
        }
    }else{
        // 文件不存在
        if (![log writeToFile:txtPath atomically:YES encoding:NSUTF8StringEncoding error:nil]) {
            NSLog(@"Write Log %@ Failed",txtName);
        }
    }
    
}


+ (NSArray *) getAllFileNames
{
    NSString *fileDirectory = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"ChakeLog"];
    NSArray *files = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:fileDirectory error:nil];
    return files;
}


@end
