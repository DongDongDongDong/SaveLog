//
//  SaveLog.h
//  LogTest
//
//  Created by andylau on 15/10/12.
//  Copyright © 2015年 andylau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaveLog : NSObject

/**
 *  写日志，存文件
 *
 *  @param log     日志内容
 *  @param txtName 日志文件名
 */
+ (void)saveLog:(NSString *)log txtName:(NSString*)txtName;




@end
