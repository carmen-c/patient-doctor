//
//  Doctor.h
//  Patient & Doctor
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *doctorName;
@property (nonatomic) NSString *specialization;

-(void) patientRequest: (Patient *) patient;

-(void) acceptPatient: (Patient*) visitor;

-(instancetype)initWithName:(NSString *)name andSpecialization: (NSString *)spec;

@end
