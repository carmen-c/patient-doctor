//
//  main.m
//  Patient & Doctor
//
//  Created by carmen cheng on 2016-11-03.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc]initWithName:@"John" andSpecialization: @"Nutrition"];
        NSLog(@"Doctor: %@  Specialization: %@", doctor.doctorName, doctor.specialization);
        
        Patient *patient = [[Patient alloc]initWithName:@"Pam" andAge:23 andHasValidHealthCard:YES andSymptoms:@"cough"];
        NSLog(@"Patient: %@", patient.name);
        
        [patient visitDoctor : (Doctor *) doctor];
        
        [doctor patientRequest: (Patient *) patient];
        
    }
    return 0;
}
