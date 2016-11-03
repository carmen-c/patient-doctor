//
//  Patient.h
//  Patient & Doctor
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic) NSInteger age;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *healthCard;
@property (nonatomic) BOOL hasValidHealthCard;
@property (nonatomic) NSSet *symptoms;
@property (nonatomic) NSSet *prescriptions;

-(instancetype)initWithName:(NSString *)name andAge: (NSInteger *)age andHasValidHealthCard:(BOOL)hasValidHealthCard andSymptoms: (NSSet *)symptoms;

- (void) visitDoctor : (Doctor *) thisDoctor ;

@end
