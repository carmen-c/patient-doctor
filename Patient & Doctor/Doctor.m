//
//  Doctor.m
//  Patient & Doctor
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor ()
@property (nonatomic) NSMutableSet *acceptedPatients;
@property (nonatomic) NSDictionary *medications;
@property (nonatomic) NSString *info;
@property (nonatomic) NSMutableSet *treatmentLog;
@end

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization: (NSString *)spec {
    if (self = [super init]){
        
        _doctorName = name;
        _specialization = spec;
        _acceptedPatients = [[NSMutableSet alloc]init];
        _treatmentLog = [[NSMutableSet alloc]init];
        _medications = @{@"cough":@"coughmedicine", @"B":@"2", @"C":@"3", @"D":@"4", @"E":@"5", @"F":@"6"};
        
    }
    return self;
}

//-(return type) functionNameParamater: (Data Type) parameterVarName(){

-(void) acceptPatient: (Patient*) visitor{
    [self.acceptedPatients addObject: visitor];
    NSLog (@"Welcome %@!", visitor.name);
}

-(void) patientRequest: (Patient*) patient{
    //check if patient has been accepted
    if ([self.acceptedPatients containsObject:patient]){
        
        NSString *treatment = [self.medications objectForKey:patient.symptoms];
        NSLog(@"%@ is cure by %@", patient.symptoms, treatment);
        [self.treatmentLog addObject: treatment];
        NSLog(@"%@", self.treatmentLog);
        
    }
    else {
        NSLog(@"the doctor can't cure %@", patient.symptoms);
    }

}


@end


