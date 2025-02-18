; ModuleID = 'blender/source/blender/blenkernel/intern/unit.c'
source_filename = "blender/source/blender/blenkernel/intern/unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bUnitCollection = type { ptr, i32, i32, i32 }
%struct.bUnitDef = type { ptr, ptr, ptr, ptr, ptr, double, double, i32 }

@buDummyCollection = internal global %struct.bUnitCollection { ptr @buDummyDef, i32 0, i32 0, i32 128 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%s)*%.9g\00", align 1
@bUnitSystems = internal unnamed_addr constant [4 x [10 x ptr]] [[10 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr @buNaturalRotCollection, ptr @buNaturalTimeCollection, ptr null, ptr null, ptr null], [10 x ptr] [ptr null, ptr @buMetricLenCollection, ptr @buMetricAreaCollection, ptr @buMetricVolCollection, ptr @buMetricMassCollection, ptr @buNaturalRotCollection, ptr @buNaturalTimeCollection, ptr @buMetricVelCollection, ptr @buMetricAclCollection, ptr @buCameraLenCollection], [10 x ptr] [ptr null, ptr @buImperialLenCollection, ptr @buImperialAreaCollection, ptr @buImperialVolCollection, ptr @buImperialMassCollection, ptr @buNaturalRotCollection, ptr @buNaturalTimeCollection, ptr @buImperialVelCollection, ptr @buImperialAclCollection, ptr @buCameraLenCollection], [10 x ptr] zeroinitializer], align 16
@buNaturalRotCollection = internal global %struct.bUnitCollection { ptr @buNaturalRotDef, i32 0, i32 0, i32 5 }, align 8
@buNaturalTimeCollection = internal global %struct.bUnitCollection { ptr @buNaturalTimeDef, i32 3, i32 0, i32 7 }, align 8
@buMetricLenCollection = internal global %struct.bUnitCollection { ptr @buMetricLenDef, i32 3, i32 0, i32 9 }, align 8
@buMetricAreaCollection = internal global %struct.bUnitCollection { ptr @buMetricAreaDef, i32 3, i32 0, i32 9 }, align 8
@buMetricVolCollection = internal global %struct.bUnitCollection { ptr @buMetricVolDef, i32 3, i32 0, i32 9 }, align 8
@buMetricMassCollection = internal global %struct.bUnitCollection { ptr @buMetricMassDef, i32 2, i32 0, i32 8 }, align 8
@buMetricVelCollection = internal global %struct.bUnitCollection { ptr @buMetricVelDef, i32 0, i32 0, i32 3 }, align 8
@buMetricAclCollection = internal global %struct.bUnitCollection { ptr @buMetricAclDef, i32 0, i32 0, i32 2 }, align 8
@buCameraLenCollection = internal global %struct.bUnitCollection { ptr @buCameraLenDef, i32 3, i32 0, i32 6 }, align 8
@buImperialLenCollection = internal global %struct.bUnitCollection { ptr @buImperialLenDef, i32 4, i32 0, i32 8 }, align 8
@buImperialAreaCollection = internal global %struct.bUnitCollection { ptr @buImperialAreaDef, i32 4, i32 0, i32 8 }, align 8
@buImperialVolCollection = internal global %struct.bUnitCollection { ptr @buImperialVolDef, i32 4, i32 0, i32 8 }, align 8
@buImperialMassCollection = internal global %struct.bUnitCollection { ptr @buImperialMassDef, i32 3, i32 0, i32 6 }, align 8
@buImperialVelCollection = internal global %struct.bUnitCollection { ptr @buImperialVelDef, i32 0, i32 0, i32 3 }, align 8
@buImperialAclCollection = internal global %struct.bUnitCollection { ptr @buImperialAclDef, i32 0, i32 0, i32 2 }, align 8
@buNaturalRotDef = internal global [5 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, double 0x3F91DF46A2529D39, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null, ptr @.str.9, double 0x3F33104B57CF96A3, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr null, ptr @.str.13, double 0x3ED455A5B2FF8F9D, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr @.str.17, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"degree\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"degrees\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\C2\B0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Degrees\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"arcminute\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"arcminutes\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Arcminutes\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"arcsecond\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"arcseconds\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Arcseconds\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"radian\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"radians\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Radians\00", align 1
@buNaturalTimeDef = internal global [7 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr null, ptr @.str.20, double 9.000000e+04, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, double 3.600000e+03, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, double 6.000000e+01, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null, ptr @.str.39, double 1.000000e-03, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, double 0x3EB0C6F7A0B5ED8D, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"days\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Days\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"hours\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"hr\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Hours\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Minutes\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Seconds\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"millisecond\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"milliseconds\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Milliseconds\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"microsecond\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"microseconds\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"\C2\B5s\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Microseconds\00", align 1
@buMetricLenDef = internal global [9 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null, ptr @.str.48, double 1.000000e+03, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null, ptr @.str.52, double 1.000000e+02, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null, ptr @.str.56, double 1.000000e+01, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.57, ptr @.str.58, ptr @.str.29, ptr null, ptr @.str.59, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null, ptr @.str.63, double 0x3FB99999A0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr null, ptr @.str.67, double 0x3F847AE140000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr null, ptr @.str.71, double 0x3F50624DE0000000, double 0.000000e+00, i32 2 }, %struct.bUnitDef { ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, double 0x3EB0C6F7A0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [10 x i8] c"kilometer\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"kilometers\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"km\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Kilometers\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"hectometer\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"hectometers\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"hm\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"100 Meters\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"dekameter\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"dekameters\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"dam\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"10 Meters\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"meter\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"meters\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Meters\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"decimeter\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"decimeters\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"10 Centimeters\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"centimeter\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"centimeters\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Centimeters\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"millimeter\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"millimeters\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"Millimeters\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"micrometer\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"micrometers\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"\C2\B5m\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"um\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Micrometers\00", align 1
@buMetricAreaDef = internal global [9 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, double 1.000000e+06, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, double 1.000000e+04, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, double 1.000000e+02, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, double 0x3F847AE160000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, double 0x3F1A36E2E0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, double 0x3EB0C6F7C0000000, double 0.000000e+00, i32 2 }, %struct.bUnitDef { ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, double 0x3D71979980000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [17 x i8] c"square kilometer\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"square kilometers\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"km\C2\B2\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"km2\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"Square Kilometers\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"square hectometer\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"square hectometers\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"hm\C2\B2\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"hm2\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"Square Hectometers\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"square dekameter\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"square dekameters\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"dam\C2\B2\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"dam2\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Square Dekameters\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"square meter\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"square meters\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"m\C2\B2\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"Square Meters\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"square decimeter\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"square decimetees\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"dm\C2\B2\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"dm2\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"Square Decimeters\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"square centimeter\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"square centimeters\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"cm\C2\B2\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"cm2\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"Square Centimeters\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"square millimeter\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"square millimeters\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"mm\C2\B2\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"mm2\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"Square Millimeters\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"square micrometer\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"square micrometers\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"\C2\B5m\C2\B2\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"um2\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"Square Micrometers\00", align 1
@buMetricVolDef = internal global [9 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, double 1.000000e+09, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, double 1.000000e+06, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, double 1.000000e+03, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, double 0x3F50624DE0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, double 0x3EB0C6F7A0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, double 0x3E112E0C20000000, double 0.000000e+00, i32 2 }, %struct.bUnitDef { ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, double 0x3C32725DC0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.117 = private unnamed_addr constant [16 x i8] c"cubic kilometer\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"cubic kilometers\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"km\C2\B3\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"km3\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"Cubic Kilometers\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"cubic hectometer\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"cubic hectometers\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"hm\C2\B3\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"hm3\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"Cubic Hectometers\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"cubic dekameter\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"cubic dekameters\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"dam\C2\B3\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"dam3\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"Cubic Dekameters\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"cubic meter\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"cubic meters\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"m\C2\B3\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"Cubic Meters\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"cubic decimeter\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"cubic decimeters\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"dm\C2\B3\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"dm3\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"Cubic Decimeters\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"cubic centimeter\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"cubic centimeters\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"cm\C2\B3\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"cm3\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"Cubic Centimeters\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"cubic millimeter\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"cubic millimeters\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"mm\C2\B3\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"mm3\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"Cubic Millimeters\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"cubic micrometer\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"cubic micrometers\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"\C2\B5m\C2\B3\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"um3\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"Cubic Micrometers\00", align 1
@buMetricMassDef = internal global [8 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.157, ptr @.str.158, ptr @.str.157, ptr @.str.159, ptr @.str.160, double 1.000000e+03, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, double 1.000000e+02, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr null, ptr @.str.169, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr null, ptr @.str.173, double 0x3FB99999A0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr null, ptr @.str.177, double 0x3F847AE140000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr null, ptr @.str.181, double 0x3F50624DE0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr null, ptr @.str.185, double 0x3EB0C6F7A0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.157 = private unnamed_addr constant [4 x i8] c"ton\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"tonnes\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"1000 Kilograms\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"quintal\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"quintals\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"ql\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"100 Kilograms\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"kilogram\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"kilograms\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"kg\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"Kilograms\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"hectogram\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"hectograms\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"hg\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"Hectograms\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"dekagram\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"dekagrams\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"dag\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"10 Grams\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"gram\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"grams\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"Grams\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"milligram\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"milligrams\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"mg\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"Milligrams\00", align 1
@buMetricVelDef = internal global [3 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr null, ptr @.str.189, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr null, ptr @.str.193, double 0x3FD1C71C80000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef zeroinitializer], align 16
@.str.186 = private unnamed_addr constant [17 x i8] c"meter per second\00", align 1
@.str.187 = private unnamed_addr constant [18 x i8] c"meters per second\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"m/s\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"Meters per second\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"kilometer per hour\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"kilometers per hour\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"km/h\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"Kilometers per hour\00", align 1
@buMetricAclDef = internal global [2 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.194 = private unnamed_addr constant [25 x i8] c"meter per second squared\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"meters per second squared\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"m/s\C2\B2\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"m/s2\00", align 1
@.str.198 = private unnamed_addr constant [26 x i8] c"Meters per second squared\00", align 1
@buCameraLenDef = internal global [6 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.57, ptr @.str.58, ptr @.str.29, ptr null, ptr @.str.59, double 1.000000e+03, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null, ptr @.str.63, double 1.000000e+02, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr null, ptr @.str.67, double 1.000000e+01, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr null, ptr @.str.71, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, double 0x3F50624DE0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef zeroinitializer], align 16
@buImperialLenDef = internal global [8 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.29, ptr @.str.202, double 0x4099256040000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr null, ptr @.str.206, double 0x4069256040000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr null, ptr @.str.210, double 0x40341DE6A0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr null, ptr @.str.214, double 0x3FED42C3C0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.215, ptr @.str.216, ptr @.str.8, ptr @.str.217, ptr @.str.218, double 0x3FD381D7E0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.219, ptr @.str.220, ptr @.str.12, ptr @.str.221, ptr @.str.222, double 0x3F9A027520000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.223, ptr @.str.223, ptr @.str.223, ptr @.str.224, ptr @.str.225, double 0x3EFAA242C0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.199 = private unnamed_addr constant [5 x i8] c"mile\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"miles\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Miles\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"furlong\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"furlongs\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"fur\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"Furlongs\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"chains\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"Chains\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"yard\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"yards\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"yd\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"Yards\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"foot\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"feet\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"Feet\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"inch\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"inches\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"Inches\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"thou\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"mil\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"Thou\00", align 1
@buImperialAreaDef = internal global [8 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, double 0x4143C29200000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr null, ptr @.str.234, double 0x40E3C29200000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null, ptr @.str.238, double 0x40794AF880000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr null, ptr @.str.242, double 0x3FEAC18E20000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr null, ptr @.str.246, double 0x3FB7C87E60000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr null, ptr @.str.250, double 0x3F4523FE80000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr null, ptr @.str.254, double 0x3E062AE340000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.226 = private unnamed_addr constant [12 x i8] c"square mile\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"square miles\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"sq mi\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"sq m\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"Square Miles\00", align 1
@.str.231 = private unnamed_addr constant [15 x i8] c"square furlong\00", align 1
@.str.232 = private unnamed_addr constant [16 x i8] c"square furlongs\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"sq fur\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"Square Furlongs\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"square chain\00", align 1
@.str.236 = private unnamed_addr constant [14 x i8] c"square chains\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"sq ch\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"Square Chains\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"square yard\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"square yards\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"sq yd\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"Square Yards\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"square foot\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"square feet\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"sq ft\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"Square Feet\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"square inch\00", align 1
@.str.248 = private unnamed_addr constant [14 x i8] c"square inches\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"sq in\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"Square Inches\00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"square thou\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"square thous\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"sq mil\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"Square Thous\00", align 1
@buImperialVolDef = internal global [8 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, double 0x41EF0E2D00000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr null, ptr @.str.263, double 8.140980e+06, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr null, ptr @.str.267, double 0x40BFCCFB20000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef { ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr null, ptr @.str.271, double 0x3FE8773BA0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr null, ptr @.str.275, double 0x3F9CFF1760000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr null, ptr @.str.279, double 0x3EF12EDE60000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr null, ptr @.str.283, double 0x3D12734000000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.255 = private unnamed_addr constant [11 x i8] c"cubic mile\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"cubic miles\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"cu mi\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"cu m\00", align 1
@.str.259 = private unnamed_addr constant [12 x i8] c"Cubic Miles\00", align 1
@.str.260 = private unnamed_addr constant [14 x i8] c"cubic furlong\00", align 1
@.str.261 = private unnamed_addr constant [15 x i8] c"cubic furlongs\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"cu fur\00", align 1
@.str.263 = private unnamed_addr constant [15 x i8] c"Cubic Furlongs\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"cubic chain\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"cubic chains\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"cu ch\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"Cubic Chains\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"cubic yard\00", align 1
@.str.269 = private unnamed_addr constant [12 x i8] c"cubic yards\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"cu yd\00", align 1
@.str.271 = private unnamed_addr constant [12 x i8] c"Cubic Yards\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"cubic foot\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"cubic feet\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"cu ft\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"Cubic Feet\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"cubic inch\00", align 1
@.str.277 = private unnamed_addr constant [13 x i8] c"cubic inches\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"cu in\00", align 1
@.str.279 = private unnamed_addr constant [13 x i8] c"Cubic Inches\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"cubic thou\00", align 1
@.str.281 = private unnamed_addr constant [12 x i8] c"cubic thous\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"cu mil\00", align 1
@.str.283 = private unnamed_addr constant [12 x i8] c"Cubic Thous\00", align 1
@buImperialMassDef = internal global [6 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.157, ptr @.str.158, ptr @.str.157, ptr @.str.159, ptr @.str.284, double 0x408C597A60000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr null, ptr @.str.288, double 0x4046ADFB80000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr null, ptr @.str.292, double 0x401966B340000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr null, ptr @.str.296, double 0x3FDD07A840000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr null, ptr @.str.300, double 0x3F9D07A840000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.284 = private unnamed_addr constant [7 x i8] c"Tonnes\00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"centum weight\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"centum weights\00", align 1
@.str.287 = private unnamed_addr constant [4 x i8] c"cwt\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"Centum weights\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"stone\00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"stones\00", align 1
@.str.291 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"Stones\00", align 1
@.str.293 = private unnamed_addr constant [6 x i8] c"pound\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"pounds\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"Pounds\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"ounce\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"ounces\00", align 1
@.str.299 = private unnamed_addr constant [3 x i8] c"oz\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"Ounces\00", align 1
@buImperialVelDef = internal global [3 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, double 0x3FD381D7E0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef { ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr null, ptr @.str.309, double 0x3FDC9C4DA0000000, double 0.000000e+00, i32 1 }, %struct.bUnitDef zeroinitializer], align 16
@.str.301 = private unnamed_addr constant [16 x i8] c"foot per second\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"feet per second\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"ft/s\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.305 = private unnamed_addr constant [16 x i8] c"Feet per second\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"mile per hour\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"miles per hour\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"mph\00", align 1
@.str.309 = private unnamed_addr constant [15 x i8] c"Miles per hour\00", align 1
@buImperialAclDef = internal global [2 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, double 0x3FD381D7E0000000, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.310 = private unnamed_addr constant [24 x i8] c"foot per second squared\00", align 1
@.str.311 = private unnamed_addr constant [24 x i8] c"feet per second squared\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"ft/s\C2\B2\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"ft/s2\00", align 1
@.str.314 = private unnamed_addr constant [24 x i8] c"Feet per second squared\00", align 1
@buDummyDef = internal global [2 x %struct.bUnitDef] [%struct.bUnitDef { ptr @.str.315, ptr null, ptr @.str.315, ptr null, ptr null, double 1.000000e+00, double 0.000000e+00, i32 0 }, %struct.bUnitDef zeroinitializer], align 16
@.str.315 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.316 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"*%.9g#\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @bUnit_AsString(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = sext i32 %4 to i64
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !38
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %8
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi ptr [ @buDummyCollection, %18 ], [ %12, %14 ]
  %21 = icmp eq i8 %6, 0
  br i1 %21, label %167, label %22

22:                                               ; preds = %19
  switch i32 %5, label %167 [
    i32 9, label %23
    i32 6, label %23
    i32 4, label %23
    i32 1, label %23
  ]

23:                                               ; preds = %22, %22, %22, %22
  %24 = fcmp ogt double %2, 0.000000e+00
  %25 = fneg double %2
  %26 = select i1 %24, double %2, double %25
  %27 = load ptr, ptr %20, align 8, !tbaa !38
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %23, %47
  %31 = phi ptr [ %48, %47 ], [ %27, %23 ]
  %32 = getelementptr inbounds %struct.bUnitDef, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !44
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = and i32 %33, 2
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.bUnitDef, ptr %31, i64 0, i32 5
  %40 = load double, ptr %39, align 8, !tbaa !45
  br i1 %38, label %44, label %41

41:                                               ; preds = %36
  %42 = fmul double %40, 0x3FB998F1D3ED527F
  %43 = fcmp ult double %26, %42
  br i1 %43, label %47, label %56

44:                                               ; preds = %36
  %45 = fmul double %40, 9.999900e-01
  %46 = fcmp ult double %26, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %41, %30
  %48 = getelementptr inbounds %struct.bUnitDef, ptr %31, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !41
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %30, !llvm.loop !46

51:                                               ; preds = %47, %23
  %52 = getelementptr inbounds %struct.bUnitCollection, ptr %20, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !49
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bUnitDef, ptr %27, i64 %54
  br label %56

56:                                               ; preds = %41, %44, %51
  %57 = phi ptr [ %55, %51 ], [ %31, %44 ], [ %31, %41 ]
  %58 = fcmp olt double %2, 0.000000e+00
  %59 = select i1 %58, ptr @ceil, ptr @floor
  %60 = getelementptr inbounds %struct.bUnitDef, ptr %57, i64 0, i32 5
  %61 = load double, ptr %60, align 8, !tbaa !45
  %62 = fdiv double %2, %61
  %63 = tail call double %59(double noundef %62) #13, !callees !50
  %64 = load double, ptr %60, align 8, !tbaa !45
  %65 = fmul double %63, %64
  %66 = fsub double %2, %65
  %67 = fcmp ogt double %66, 0.000000e+00
  %68 = fneg double %66
  %69 = select i1 %67, double %66, double %68
  %70 = load ptr, ptr %57, align 8, !tbaa !41
  %71 = icmp eq ptr %70, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %56, %89
  %73 = phi ptr [ %90, %89 ], [ %57, %56 ]
  %74 = getelementptr inbounds %struct.bUnitDef, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !44
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = and i32 %75, 2
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.bUnitDef, ptr %73, i64 0, i32 5
  %82 = load double, ptr %81, align 8, !tbaa !45
  br i1 %80, label %86, label %83

83:                                               ; preds = %78
  %84 = fmul double %82, 0x3FB998F1D3ED527F
  %85 = fcmp ult double %69, %84
  br i1 %85, label %89, label %99

86:                                               ; preds = %78
  %87 = fmul double %82, 9.999900e-01
  %88 = fcmp ult double %69, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %86, %83, %72
  %90 = getelementptr inbounds %struct.bUnitDef, ptr %73, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !41
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %72, !llvm.loop !46

93:                                               ; preds = %89, %56
  %94 = load ptr, ptr %20, align 8, !tbaa !38
  %95 = getelementptr inbounds %struct.bUnitCollection, ptr %20, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !49
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bUnitDef, ptr %94, i64 %97
  br label %99

99:                                               ; preds = %83, %86, %93
  %100 = phi ptr [ %98, %93 ], [ %73, %86 ], [ %73, %83 ]
  %101 = icmp ugt ptr %100, %57
  br i1 %101, label %102, label %165

102:                                              ; preds = %99
  %103 = tail call fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %65, i32 noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %57, i8 noundef zeroext 0)
  %104 = add i64 %103, 2
  %105 = sext i32 %1 to i64
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %165

107:                                              ; preds = %102
  %108 = add i64 %103, 1
  %109 = getelementptr inbounds i8, ptr %0, i64 %103
  store i8 32, ptr %109, align 1, !tbaa !51
  %110 = getelementptr inbounds i8, ptr %0, i64 %108
  %111 = trunc i64 %108 to i32
  %112 = sub i32 %1, %111
  %113 = icmp ne i32 %3, 0
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.bUnitDef, ptr %100, i64 0, i32 5
  %116 = load double, ptr %115, align 8, !tbaa !45
  %117 = fdiv double %66, %116
  %118 = sext i32 %112 to i64
  %119 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %110, i64 noundef %118, ptr noundef nonnull @.str.316, i32 noundef %114, double noundef %117) #13
  %120 = tail call i64 @llvm.umin.i64(i64 %119, i64 %118)
  %121 = add i64 %120, -1
  br i1 %113, label %122, label %133

122:                                              ; preds = %107
  %123 = icmp eq i64 %121, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %122, %128
  %125 = phi i64 [ %129, %128 ], [ %121, %122 ]
  %126 = getelementptr inbounds i8, ptr %110, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !51
  switch i8 %127, label %133 [
    i8 48, label %128
    i8 46, label %131
  ]

128:                                              ; preds = %124
  %129 = add i64 %125, -1
  store i8 0, ptr %126, align 1, !tbaa !51
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %133, label %124, !llvm.loop !52

131:                                              ; preds = %124
  %132 = add i64 %125, -1
  store i8 0, ptr %126, align 1, !tbaa !51
  br label %133

133:                                              ; preds = %128, %124, %131, %122, %107
  %134 = phi i64 [ %132, %131 ], [ %121, %107 ], [ 0, %122 ], [ %125, %124 ], [ 0, %128 ]
  %135 = icmp ult i64 %134, %118
  br i1 %135, label %136, label %157

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.bUnitDef, ptr %100, i64 0, i32 2
  %138 = add nuw i64 %134, 1
  %139 = load ptr, ptr %137, align 8, !tbaa !53
  %140 = load i8, ptr %139, align 1, !tbaa !51
  %141 = icmp ne i8 %140, 0
  %142 = icmp ult i64 %138, %118
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %157

144:                                              ; preds = %136, %144
  %145 = phi i64 [ %148, %144 ], [ 0, %136 ]
  %146 = phi i8 [ %153, %144 ], [ %140, %136 ]
  %147 = phi i64 [ %150, %144 ], [ %138, %136 ]
  %148 = add nuw nsw i64 %145, 1
  %149 = getelementptr inbounds i8, ptr %110, i64 %147
  store i8 %146, ptr %149, align 1, !tbaa !51
  %150 = add nuw i64 %147, 1
  %151 = load ptr, ptr %137, align 8, !tbaa !53
  %152 = getelementptr inbounds i8, ptr %151, i64 %148
  %153 = load i8, ptr %152, align 1, !tbaa !51
  %154 = icmp ne i8 %153, 0
  %155 = icmp ult i64 %150, %118
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %144, label %157, !llvm.loop !54

157:                                              ; preds = %144, %133, %136
  %158 = phi i64 [ %134, %133 ], [ %138, %136 ], [ %150, %144 ]
  %159 = icmp ult i64 %158, %118
  %160 = add nsw i32 %112, -1
  %161 = sext i32 %160 to i64
  %162 = select i1 %159, i64 %158, i64 %161
  %163 = getelementptr inbounds i8, ptr %110, i64 %162
  store i8 0, ptr %163, align 1, !tbaa !51
  %164 = add i64 %162, %108
  br label %165

165:                                              ; preds = %99, %102, %157
  %166 = phi i64 [ %164, %157 ], [ %103, %102 ], [ undef, %99 ]
  br i1 %101, label %171, label %167

167:                                              ; preds = %22, %165, %19
  %168 = icmp eq i8 %7, 0
  %169 = select i1 %168, i8 0, i8 32
  %170 = tail call fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %20, ptr noundef null, i8 noundef zeroext %169)
  br label %171

171:                                              ; preds = %165, %167
  %172 = phi i64 [ %170, %167 ], [ %166, %165 ]
  ret i64 %172
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %7
  %10 = fcmp oeq double %2, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  br label %41

13:                                               ; preds = %9
  %14 = fcmp ogt double %2, 0.000000e+00
  %15 = fneg double %2
  %16 = select i1 %14, double %2, double %15
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %13, %37
  %21 = phi ptr [ %38, %37 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = and i32 %23, 2
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !45
  br i1 %28, label %34, label %31

31:                                               ; preds = %26
  %32 = fmul double %30, 0x3FB998F1D3ED527F
  %33 = fcmp ult double %16, %32
  br i1 %33, label %37, label %47

34:                                               ; preds = %26
  %35 = fmul double %30, 9.999900e-01
  %36 = fcmp ult double %16, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %31, %20
  %38 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !46

41:                                               ; preds = %37, %13, %11
  %42 = phi ptr [ %12, %11 ], [ %17, %13 ], [ %17, %37 ]
  %43 = getelementptr inbounds %struct.bUnitCollection, ptr %4, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bUnitDef, ptr %42, i64 %45
  br label %47

47:                                               ; preds = %34, %31, %41, %7
  %48 = phi ptr [ %5, %7 ], [ %46, %41 ], [ %21, %31 ], [ %21, %34 ]
  %49 = getelementptr inbounds %struct.bUnitDef, ptr %48, i64 0, i32 5
  %50 = load double, ptr %49, align 8, !tbaa !45
  %51 = fdiv double %2, %50
  %52 = sext i32 %1 to i64
  %53 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %52, ptr noundef nonnull @.str.316, i32 noundef %3, double noundef %51) #13
  %54 = tail call i64 @llvm.umin.i64(i64 %53, i64 %52)
  %55 = add i64 %54, -1
  %56 = icmp sgt i32 %3, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = icmp eq i64 %55, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %57, %63
  %60 = phi i64 [ %64, %63 ], [ %55, %57 ]
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !51
  switch i8 %62, label %68 [
    i8 48, label %63
    i8 46, label %66
  ]

63:                                               ; preds = %59
  %64 = add i64 %60, -1
  store i8 %6, ptr %61, align 1, !tbaa !51
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %68, label %59, !llvm.loop !52

66:                                               ; preds = %59
  %67 = add i64 %60, -1
  store i8 %6, ptr %61, align 1, !tbaa !51
  br label %68

68:                                               ; preds = %63, %59, %57, %66, %47
  %69 = phi i64 [ %67, %66 ], [ %55, %47 ], [ 0, %57 ], [ %60, %59 ], [ 0, %63 ]
  %70 = icmp ult i64 %69, %52
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.bUnitDef, ptr %48, i64 0, i32 2
  %73 = add nuw i64 %69, 1
  %74 = load ptr, ptr %72, align 8, !tbaa !53
  %75 = load i8, ptr %74, align 1, !tbaa !51
  %76 = icmp ne i8 %75, 0
  %77 = icmp ult i64 %73, %52
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %92

79:                                               ; preds = %71, %79
  %80 = phi i64 [ %83, %79 ], [ 0, %71 ]
  %81 = phi i8 [ %88, %79 ], [ %75, %71 ]
  %82 = phi i64 [ %85, %79 ], [ %73, %71 ]
  %83 = add nuw nsw i64 %80, 1
  %84 = getelementptr inbounds i8, ptr %0, i64 %82
  store i8 %81, ptr %84, align 1, !tbaa !51
  %85 = add nuw i64 %82, 1
  %86 = load ptr, ptr %72, align 8, !tbaa !53
  %87 = getelementptr inbounds i8, ptr %86, i64 %83
  %88 = load i8, ptr %87, align 1, !tbaa !51
  %89 = icmp ne i8 %88, 0
  %90 = icmp ult i64 %85, %52
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %79, label %92, !llvm.loop !54

92:                                               ; preds = %79, %71, %68
  %93 = phi i64 [ %69, %68 ], [ %73, %71 ], [ %85, %79 ]
  %94 = icmp ult i64 %93, %52
  %95 = add nsw i32 %1, -1
  %96 = sext i32 %95 to i64
  %97 = select i1 %94, i64 %93, i64 %96
  %98 = getelementptr inbounds i8, ptr %0, i64 %97
  store i8 0, ptr %98, align 1, !tbaa !51
  ret i64 %97
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bUnit_ReplaceString(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [256 x i8], align 16
  %8 = sext i32 %4 to i64
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %223, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !38
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %223, label %17

17:                                               ; preds = %13
  %18 = sext i32 %1 to i64
  tail call void @BLI_ascii_strtolower(ptr noundef %0, i64 noundef %18) #13
  %19 = load ptr, ptr %11, align 8, !tbaa !38
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %17, %46
  %23 = phi ptr [ %47, %46 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.bUnitDef, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.bUnitDef, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %30)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bUnitDef, ptr %23, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %35)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load ptr, ptr %23, align 8, !tbaa !41
  %40 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %39)
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %22, %28, %33, %38
  %44 = phi i8 [ 1, %22 ], [ 1, %28 ], [ 1, %33 ], [ %42, %38 ]
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bUnitDef, ptr %23, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %22, !llvm.loop !57

50:                                               ; preds = %46, %43, %17
  %51 = phi ptr [ %19, %17 ], [ %47, %46 ], [ %23, %43 ]
  %52 = icmp eq ptr %2, null
  br i1 %52, label %88, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %51, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %88

56:                                               ; preds = %53
  %57 = load ptr, ptr %11, align 8, !tbaa !38
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = icmp eq ptr %58, null
  br i1 %59, label %88, label %60

60:                                               ; preds = %56, %84
  %61 = phi ptr [ %85, %84 ], [ %57, %56 ]
  %62 = getelementptr inbounds %struct.bUnitDef, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  %64 = tail call fastcc ptr @unit_find_str(ptr noundef nonnull %2, ptr noundef %63)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.bUnitDef, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  %69 = tail call fastcc ptr @unit_find_str(ptr noundef nonnull %2, ptr noundef %68)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.bUnitDef, ptr %61, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = tail call fastcc ptr @unit_find_str(ptr noundef nonnull %2, ptr noundef %73)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load ptr, ptr %61, align 8, !tbaa !41
  %78 = tail call fastcc ptr @unit_find_str(ptr noundef nonnull %2, ptr noundef %77)
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %60, %66, %71, %76
  %82 = phi i8 [ 1, %60 ], [ 1, %66 ], [ 1, %71 ], [ %80, %76 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.bUnitDef, ptr %61, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !41
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %60, !llvm.loop !58

88:                                               ; preds = %84, %81, %56, %53, %50
  %89 = phi ptr [ %51, %53 ], [ %51, %50 ], [ %57, %56 ], [ %61, %81 ], [ %85, %84 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !41
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load ptr, ptr %11, align 8, !tbaa !38
  %94 = getelementptr inbounds %struct.bUnitCollection, ptr %11, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !49
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.bUnitDef, ptr %93, i64 %96
  br label %98

98:                                               ; preds = %88, %92
  %99 = phi ptr [ %97, %92 ], [ %89, %88 ]
  %100 = getelementptr inbounds %struct.bUnitDef, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !45
  %102 = fmul double %101, %3
  %103 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 256, ptr noundef nonnull @.str, ptr noundef %0, double noundef %101) #13
  %104 = icmp ult i64 %103, 256
  br i1 %104, label %105, label %223

105:                                              ; preds = %98
  %106 = call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %18) #13
  %107 = load ptr, ptr %11, align 8, !tbaa !38
  %108 = load ptr, ptr %107, align 8, !tbaa !41
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105, %142
  %111 = phi i8 [ %120, %142 ], [ 0, %105 ]
  %112 = phi ptr [ %143, %142 ], [ %107, %105 ]
  %113 = getelementptr inbounds %struct.bUnitDef, ptr %112, i64 0, i32 2
  %114 = getelementptr inbounds %struct.bUnitDef, ptr %112, i64 0, i32 1
  %115 = getelementptr inbounds %struct.bUnitDef, ptr %112, i64 0, i32 3
  br label %119

116:                                              ; preds = %142, %105
  %117 = phi i8 [ 0, %105 ], [ %120, %142 ]
  %118 = zext i32 %4 to i64
  br label %149

119:                                              ; preds = %110, %119
  %120 = phi i8 [ 1, %119 ], [ %111, %110 ]
  %121 = load ptr, ptr %113, align 8, !tbaa !53
  %122 = call fastcc i32 @unit_scale_str(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %112, ptr noundef %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %0, i64 %123
  %125 = sub nsw i32 %1, %122
  %126 = load ptr, ptr %114, align 8, !tbaa !55
  %127 = call fastcc i32 @unit_scale_str(ptr noundef %124, i32 noundef %125, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %112, ptr noundef %126)
  %128 = add nsw i32 %127, %122
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %0, i64 %129
  %131 = sub nsw i32 %1, %128
  %132 = load ptr, ptr %115, align 8, !tbaa !56
  %133 = call fastcc i32 @unit_scale_str(ptr noundef %130, i32 noundef %131, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %112, ptr noundef %132)
  %134 = add nsw i32 %133, %128
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %0, i64 %135
  %137 = sub nsw i32 %1, %134
  %138 = load ptr, ptr %112, align 8, !tbaa !41
  %139 = call fastcc i32 @unit_scale_str(ptr noundef %136, i32 noundef %137, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %112, ptr noundef %138)
  %140 = sub i32 0, %134
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %119, !llvm.loop !59

142:                                              ; preds = %119
  %143 = getelementptr inbounds %struct.bUnitDef, ptr %112, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !41
  %145 = icmp eq ptr %144, null
  br i1 %145, label %116, label %110, !llvm.loop !60

146:                                              ; preds = %198
  %147 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 35) #14
  %148 = icmp eq ptr %147, null
  br i1 %148, label %223, label %202

149:                                              ; preds = %116, %198
  %150 = phi i64 [ 0, %116 ], [ %200, %198 ]
  %151 = phi i8 [ %117, %116 ], [ %199, %198 ]
  %152 = icmp eq i64 %150, %118
  br i1 %152, label %198, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %150, i64 %9
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = icmp eq ptr %155, null
  br i1 %156, label %198, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %155, align 8, !tbaa !38
  %159 = load ptr, ptr %158, align 8, !tbaa !41
  %160 = icmp eq ptr %159, null
  br i1 %160, label %198, label %161

161:                                              ; preds = %157, %194
  %162 = phi i8 [ %168, %194 ], [ %151, %157 ]
  %163 = phi ptr [ %195, %194 ], [ %158, %157 ]
  %164 = getelementptr inbounds %struct.bUnitDef, ptr %163, i64 0, i32 2
  %165 = getelementptr inbounds %struct.bUnitDef, ptr %163, i64 0, i32 1
  %166 = getelementptr inbounds %struct.bUnitDef, ptr %163, i64 0, i32 3
  br label %167

167:                                              ; preds = %161, %167
  %168 = phi i8 [ 1, %167 ], [ %162, %161 ]
  %169 = phi i32 [ %192, %167 ], [ 0, %161 ]
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = sub nsw i32 %1, %169
  %173 = load ptr, ptr %164, align 8, !tbaa !53
  %174 = call fastcc i32 @unit_scale_str(ptr noundef %171, i32 noundef %172, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %163, ptr noundef %173)
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %171, i64 %175
  %177 = sub nsw i32 %172, %174
  %178 = load ptr, ptr %165, align 8, !tbaa !55
  %179 = call fastcc i32 @unit_scale_str(ptr noundef %176, i32 noundef %177, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %163, ptr noundef %178)
  %180 = add nsw i32 %179, %174
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, ptr %171, i64 %181
  %183 = sub nsw i32 %172, %180
  %184 = load ptr, ptr %166, align 8, !tbaa !56
  %185 = call fastcc i32 @unit_scale_str(ptr noundef %182, i32 noundef %183, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %163, ptr noundef %184)
  %186 = add nsw i32 %185, %180
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %171, i64 %187
  %189 = sub nsw i32 %172, %186
  %190 = load ptr, ptr %163, align 8, !tbaa !41
  %191 = call fastcc i32 @unit_scale_str(ptr noundef %188, i32 noundef %189, ptr noundef nonnull %7, double noundef %102, ptr noundef nonnull %163, ptr noundef %190)
  %192 = add nsw i32 %191, %186
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %167, !llvm.loop !61

194:                                              ; preds = %167
  %195 = getelementptr inbounds %struct.bUnitDef, ptr %163, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !41
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %161, !llvm.loop !62

198:                                              ; preds = %194, %157, %149, %153
  %199 = phi i8 [ %151, %153 ], [ %151, %149 ], [ %151, %157 ], [ %168, %194 ]
  %200 = add nuw nsw i64 %150, 1
  %201 = icmp eq i64 %200, 3
  br i1 %201, label %146, label %149, !llvm.loop !63

202:                                              ; preds = %146, %217
  %203 = phi ptr [ %221, %217 ], [ %147, %146 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  br label %205

205:                                              ; preds = %215, %202
  %206 = phi ptr [ %204, %202 ], [ %216, %215 ]
  %207 = load i8, ptr %206, align 1, !tbaa !51
  switch i8 %207, label %208 [
    i8 0, label %217
    i8 32, label %215
    i8 9, label %215
    i8 43, label %212
    i8 45, label %212
    i8 42, label %212
    i8 47, label %212
    i8 124, label %212
    i8 38, label %212
    i8 126, label %212
    i8 60, label %212
    i8 62, label %212
    i8 94, label %212
    i8 33, label %212
    i8 61, label %212
    i8 37, label %212
  ]

208:                                              ; preds = %205
  %209 = icmp eq i8 %207, 44
  %210 = icmp eq i8 %207, 41
  %211 = or i1 %209, %210
  br label %212

212:                                              ; preds = %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %205, %208
  %213 = phi i1 [ %211, %208 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ], [ true, %205 ]
  %214 = zext i1 %213 to i32
  br label %217

215:                                              ; preds = %205, %205
  %216 = getelementptr inbounds i8, ptr %206, i64 1
  br label %205, !llvm.loop !64

217:                                              ; preds = %205, %212
  %218 = phi i32 [ %214, %212 ], [ 0, %205 ]
  %219 = icmp eq i32 %218, 0
  %220 = select i1 %219, i8 43, i8 32
  store i8 %220, ptr %203, align 1, !tbaa !51
  %221 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %204, i32 noundef 35) #14
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %202, !llvm.loop !65

223:                                              ; preds = %217, %146, %98, %6, %13
  %224 = phi i8 [ 0, %13 ], [ 0, %6 ], [ 0, %98 ], [ %199, %146 ], [ %199, %217 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #13
  ret i8 %224
}

declare void @BLI_ascii_strtolower(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @bUnit_ToUnitAltName(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %3 to i64
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.bUnitCollection, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bUnitDef, ptr %10, i64 %13
  %15 = load ptr, ptr %10, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %5, %60
  %18 = phi ptr [ %63, %60 ], [ %0, %5 ]
  %19 = phi i32 [ %62, %60 ], [ %1, %5 ]
  %20 = phi ptr [ %61, %60 ], [ %2, %5 ]
  %21 = phi ptr [ %64, %60 ], [ %10, %5 ]
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp ne ptr %25, null
  %27 = icmp eq ptr %21, %14
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = tail call fastcc ptr @unit_find_str(ptr noundef %20, ptr noundef %31)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %29
  %35 = ptrtoint ptr %32 to i64
  %36 = ptrtoint ptr %20 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = tail call i32 @llvm.smin.i32(i32 %19, i32 %38)
  %40 = sext i32 %39 to i64
  %41 = tail call ptr @strncpy(ptr noundef %18, ptr noundef %20, i64 noundef %40) #13
  %42 = getelementptr inbounds i8, ptr %18, i64 %40
  %43 = load ptr, ptr %30, align 8, !tbaa !53
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #14
  %45 = add i64 %44, %40
  %46 = getelementptr inbounds i8, ptr %20, i64 %45
  %47 = sub nsw i32 %19, %39
  %48 = load ptr, ptr %24, align 8, !tbaa !56
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %34
  %51 = sext i32 %47 to i64
  %52 = tail call i64 @BLI_strncpy_rlen(ptr noundef %42, ptr noundef nonnull %48, i64 noundef %51) #13
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %34, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %34 ]
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 %47)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %42, i64 %57
  %59 = sub nsw i32 %47, %56
  br label %60

60:                                               ; preds = %29, %54, %23, %17
  %61 = phi ptr [ %20, %17 ], [ %20, %23 ], [ %46, %54 ], [ %20, %29 ]
  %62 = phi i32 [ %19, %17 ], [ %19, %23 ], [ %59, %54 ], [ %19, %29 ]
  %63 = phi ptr [ %18, %17 ], [ %18, %23 ], [ %58, %54 ], [ %18, %29 ]
  %64 = getelementptr inbounds %struct.bUnitDef, ptr %21, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %17, !llvm.loop !66

67:                                               ; preds = %60, %5
  %68 = phi ptr [ %2, %5 ], [ %61, %60 ]
  %69 = phi i32 [ %1, %5 ], [ %62, %60 ]
  %70 = phi ptr [ %0, %5 ], [ %63, %60 ]
  %71 = sext i32 %69 to i64
  %72 = tail call ptr @strncpy(ptr noundef %70, ptr noundef %68, i64 noundef %71) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !51
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %8) #13
  %14 = load i8, ptr %13, align 1, !tbaa !51
  %15 = icmp slt i8 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @__ctype_b_loc() #15
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = zext nneg i8 %14 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !67
  %22 = and i16 %21, 1024
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %16, %10
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %8, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !51
  %30 = icmp slt i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @__ctype_b_loc() #15
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = zext nneg i8 %29 to i64
  %35 = getelementptr inbounds i16, ptr %33, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !67
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %24, %12, %7, %31, %16, %4, %2
  br label %40

40:                                               ; preds = %31, %39
  %41 = phi ptr [ null, %39 ], [ %8, %31 ]
  ret ptr %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_ClosestScalar(double noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = sext i32 %1 to i64
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = fcmp ogt double %0, 0.000000e+00
  %11 = fneg double %0
  %12 = select i1 %10, double %0, double %11
  %13 = load ptr, ptr %7, align 8, !tbaa !38
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %9, %33
  %17 = phi ptr [ %34, %33 ], [ %13, %9 ]
  %18 = getelementptr inbounds %struct.bUnitDef, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = and i32 %19, 2
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.bUnitDef, ptr %17, i64 0, i32 5
  %26 = load double, ptr %25, align 8, !tbaa !45
  br i1 %24, label %30, label %27

27:                                               ; preds = %22
  %28 = fmul double %26, 0x3FB998F1D3ED527F
  %29 = fcmp ult double %12, %28
  br i1 %29, label %33, label %42

30:                                               ; preds = %22
  %31 = fmul double %26, 9.999900e-01
  %32 = fcmp ult double %12, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %27, %16
  %34 = getelementptr inbounds %struct.bUnitDef, ptr %17, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !46

37:                                               ; preds = %33, %9
  %38 = getelementptr inbounds %struct.bUnitCollection, ptr %7, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !49
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bUnitDef, ptr %13, i64 %40
  br label %42

42:                                               ; preds = %30, %27, %37
  %43 = phi ptr [ %41, %37 ], [ %17, %27 ], [ %17, %30 ]
  %44 = getelementptr inbounds %struct.bUnitDef, ptr %43, i64 0, i32 5
  %45 = load double, ptr %44, align 8, !tbaa !45
  br label %46

46:                                               ; preds = %3, %42
  %47 = phi double [ %45, %42 ], [ -1.000000e+00, %3 ]
  ret double %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_BaseScalar(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.bUnitCollection, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bUnitDef, ptr %7, i64 %10, i32 5
  %12 = load double, ptr %11, align 8, !tbaa !45
  ret double %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @bUnit_IsValid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp ult i32 %0, 4
  %4 = icmp ult i32 %1, 11
  %5 = and i1 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bUnit_GetSystem(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = sext i32 %2 to i64
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bUnitCollection, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !69
  br label %13

13:                                               ; preds = %4, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %4 ]
  store i32 %14, ptr %1, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @bUnit_GetBaseUnit(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.bUnitCollection, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !49
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bUnit_GetName(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bUnit_GetNameDisplay(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_GetScaler(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4, i32 5
  %6 = load double, ptr %5, align 8, !tbaa !45
  ret double %6
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @ceil(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @floor(double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unit_scale_str(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, 1
  %21 = add i32 %15, %19
  %22 = sub i32 %20, %21
  %23 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 5
  %24 = load double, ptr %23, align 8, !tbaa !45
  %25 = fdiv double %24, %3
  %26 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.317, double noundef %25) #13
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %1)
  %29 = add nsw i32 %28, %15
  %30 = add nsw i32 %29, %22
  %31 = icmp sgt i32 %30, %1
  %32 = sub i32 %1, %30
  %33 = select i1 %31, i32 %32, i32 0
  %34 = add i32 %33, %22
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = sext i32 %28 to i64
  %38 = getelementptr inbounds i8, ptr %9, i64 %37
  %39 = shl i64 %18, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds i8, ptr %9, i64 %40
  %42 = zext nneg i32 %34 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %38, ptr nonnull align 1 %41, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %36, %11
  %44 = icmp sgt i32 %29, %1
  %45 = sub i32 %1, %29
  %46 = select i1 %44, i32 %45, i32 0
  %47 = add i32 %46, %28
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = zext nneg i32 %47 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %2, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %49, %43
  %52 = zext nneg i32 %1 to i64
  %53 = getelementptr i8, ptr %0, i64 %52
  %54 = getelementptr i8, ptr %53, i64 -1
  store i8 0, ptr %54, align 1, !tbaa !51
  %55 = add nsw i32 %47, %15
  br label %56

56:                                               ; preds = %6, %8, %51
  %57 = phi i32 [ %55, %51 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"bUnitCollection", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !35, i64 0}
!42 = !{!"bUnitDef", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !43, i64 40, !43, i64 48, !40, i64 56}
!43 = !{!"double", !36, i64 0}
!44 = !{!42, !40, i64 56}
!45 = !{!42, !43, i64 40}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!39, !40, i64 8}
!50 = !{ptr @ceil, ptr @floor}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !47, !48}
!53 = !{!42, !35, i64 16}
!54 = distinct !{!54, !47, !48}
!55 = !{!42, !35, i64 8}
!56 = !{!42, !35, i64 24}
!57 = distinct !{!57, !47, !48}
!58 = distinct !{!58, !47, !48}
!59 = distinct !{!59, !47, !48}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !36, i64 0}
!69 = !{!39, !40, i64 16}
!70 = !{!40, !40, i64 0}
!71 = !{!42, !35, i64 32}
