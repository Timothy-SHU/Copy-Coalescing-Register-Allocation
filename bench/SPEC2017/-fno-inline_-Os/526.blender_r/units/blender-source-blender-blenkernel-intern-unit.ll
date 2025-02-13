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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @bUnit_AsString(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = tail call fastcc ptr @unit_get_system(i32 noundef %4, i32 noundef %5) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %13, align 8, !tbaa !34
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi ptr [ @buDummyCollection, %19 ], [ %13, %15 ]
  %22 = icmp eq i8 %6, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  switch i32 %5, label %48 [
    i32 9, label %24
    i32 6, label %24
    i32 4, label %24
    i32 1, label %24
  ]

24:                                               ; preds = %23, %23, %23, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  call fastcc void @unit_dual_convert(double noundef %2, ptr noundef nonnull %21, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  %25 = load ptr, ptr %10, align 8, !tbaa !43
  %26 = load ptr, ptr %9, align 8, !tbaa !43
  %27 = icmp ugt ptr %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load double, ptr %11, align 8, !tbaa !44
  %30 = tail call fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %29, i32 noundef %3, ptr noundef nonnull %21, ptr noundef %26, i8 noundef zeroext 0) #14
  %31 = add i64 %30, 2
  %32 = sext i32 %1 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = add i64 %30, 1
  %36 = getelementptr inbounds i8, ptr %0, i64 %30
  store i8 32, ptr %36, align 1, !tbaa !45
  %37 = getelementptr inbounds i8, ptr %0, i64 %35
  %38 = trunc i64 %35 to i32
  %39 = sub i32 %1, %38
  %40 = load double, ptr %12, align 8, !tbaa !44
  %41 = icmp ne i32 %3, 0
  %42 = zext i1 %41 to i32
  %43 = tail call fastcc i64 @unit_as_string(ptr noundef %37, i32 noundef %39, double noundef %40, i32 noundef %42, ptr noundef nonnull %21, ptr noundef nonnull %25, i8 noundef zeroext 0) #14
  %44 = add i64 %43, %35
  br label %45

45:                                               ; preds = %28, %34
  %46 = phi i64 [ %30, %28 ], [ %44, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %52

47:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %48

48:                                               ; preds = %47, %23, %20
  %49 = icmp eq i8 %7, 0
  %50 = select i1 %49, i8 0, i8 32
  %51 = tail call fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, ptr noundef nonnull %21, ptr noundef null, i8 noundef zeroext %50) #14
  br label %52

52:                                               ; preds = %45, %48
  %53 = phi i64 [ %51, %48 ], [ %46, %45 ]
  ret i64 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @unit_get_system(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !46 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [4 x [10 x ptr]], ptr @bUnitSystems, i64 0, i64 %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unit_dual_convert(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !PGOFuncName !47 {
  %7 = tail call fastcc ptr @unit_best_fit(double noundef %0, ptr noundef %1, ptr noundef null) #14
  %8 = fcmp olt double %0, 0.000000e+00
  %9 = select i1 %8, ptr @ceil, ptr @floor
  %10 = getelementptr inbounds %struct.bUnitDef, ptr %7, i64 0, i32 5
  %11 = load double, ptr %10, align 8, !tbaa !48
  %12 = fdiv double %0, %11
  %13 = tail call double %9(double noundef %12) #16, !callees !49
  %14 = load double, ptr %10, align 8, !tbaa !48
  %15 = fmul double %13, %14
  store double %15, ptr %4, align 8, !tbaa !44
  %16 = fsub double %0, %15
  store double %16, ptr %5, align 8, !tbaa !44
  store ptr %7, ptr %2, align 8, !tbaa !43
  %17 = tail call fastcc ptr @unit_best_fit(double noundef %16, ptr noundef %1, ptr noundef %7) #14
  store ptr %17, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @unit_as_string(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !50 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = fcmp oeq double %2, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @unit_default(ptr noundef %4) #14
  br label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @unit_best_fit(double noundef %2, ptr noundef %4, ptr noundef null) #14
  br label %15

15:                                               ; preds = %11, %13, %7
  %16 = phi ptr [ %5, %7 ], [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.bUnitDef, ptr %16, i64 0, i32 5
  %18 = load double, ptr %17, align 8, !tbaa !48
  %19 = fdiv double %2, %18
  %20 = sext i32 %1 to i64
  %21 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef %20, ptr noundef nonnull @.str.316, i32 noundef %3, double noundef %19) #16
  %22 = tail call i64 @llvm.umin.i64(i64 %21, i64 %20)
  %23 = add i64 %22, -1
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %25, %31
  %28 = phi i64 [ %32, %31 ], [ %23, %25 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !45
  switch i8 %30, label %36 [
    i8 48, label %31
    i8 46, label %34
  ]

31:                                               ; preds = %27
  %32 = add i64 %28, -1
  store i8 %6, ptr %29, align 1, !tbaa !45
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %36, label %27, !llvm.loop !51

34:                                               ; preds = %27
  %35 = add i64 %28, -1
  store i8 %6, ptr %29, align 1, !tbaa !45
  br label %36

36:                                               ; preds = %31, %27, %25, %34, %15
  %37 = phi i64 [ %35, %34 ], [ %23, %15 ], [ 0, %25 ], [ 0, %31 ], [ %28, %27 ]
  %38 = icmp ult i64 %37, %20
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bUnitDef, ptr %16, i64 0, i32 2
  %41 = add nuw i64 %37, 1
  %42 = load ptr, ptr %40, align 8, !tbaa !53
  %43 = load i8, ptr %42, align 1, !tbaa !45
  %44 = icmp ne i8 %43, 0
  %45 = icmp ult i64 %41, %20
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %60

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %51, %47 ], [ 0, %39 ]
  %49 = phi i8 [ %56, %47 ], [ %43, %39 ]
  %50 = phi i64 [ %53, %47 ], [ %41, %39 ]
  %51 = add nuw nsw i64 %48, 1
  %52 = getelementptr inbounds i8, ptr %0, i64 %50
  store i8 %49, ptr %52, align 1, !tbaa !45
  %53 = add nuw i64 %50, 1
  %54 = load ptr, ptr %40, align 8, !tbaa !53
  %55 = getelementptr inbounds i8, ptr %54, i64 %51
  %56 = load i8, ptr %55, align 1, !tbaa !45
  %57 = icmp ne i8 %56, 0
  %58 = icmp ult i64 %53, %20
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %47, label %60, !llvm.loop !54

60:                                               ; preds = %47, %39, %36
  %61 = phi i64 [ %37, %36 ], [ %41, %39 ], [ %53, %47 ]
  %62 = icmp ult i64 %61, %20
  %63 = add nsw i32 %1, -1
  %64 = sext i32 %63 to i64
  %65 = select i1 %62, i64 %61, i64 %64
  %66 = getelementptr inbounds i8, ptr %0, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !45
  ret i64 %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @bUnit_ReplaceString(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [256 x i8], align 16
  %8 = tail call fastcc ptr @unit_get_system(i32 noundef %4, i32 noundef %5) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %93, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = sext i32 %1 to i64
  tail call void @BLI_ascii_strtolower(ptr noundef %0, i64 noundef %15) #16
  %16 = tail call fastcc ptr @unit_detect_from_str(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %2) #14
  %17 = getelementptr inbounds %struct.bUnitDef, ptr %16, i64 0, i32 5
  %18 = load double, ptr %17, align 8, !tbaa !48
  %19 = fmul double %18, %3
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 256, ptr noundef nonnull @.str, ptr noundef %0, double noundef %18) #16
  %21 = icmp ult i64 %20, 256
  br i1 %21, label %22, label %93

22:                                               ; preds = %14
  %23 = call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %15) #16
  %24 = load ptr, ptr %8, align 8, !tbaa !34
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %36, %22
  %28 = phi i8 [ 0, %22 ], [ %33, %36 ]
  br label %43

29:                                               ; preds = %22, %36
  %30 = phi i8 [ %33, %36 ], [ 0, %22 ]
  %31 = phi ptr [ %37, %36 ], [ %24, %22 ]
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i8 [ 1, %32 ], [ %30, %29 ]
  %34 = call fastcc i32 @unit_replace(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, double noundef %19, ptr noundef nonnull %31) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32, !llvm.loop !55

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bUnitDef, ptr %31, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = icmp eq ptr %38, null
  br i1 %39, label %27, label %29, !llvm.loop !56

40:                                               ; preds = %69
  %41 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 35) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %93, label %73

43:                                               ; preds = %27, %69
  %44 = phi i32 [ %71, %69 ], [ 0, %27 ]
  %45 = phi i8 [ %70, %69 ], [ %28, %27 ]
  %46 = icmp eq i32 %44, %4
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = call fastcc ptr @unit_get_system(i32 noundef %44, i32 noundef %5) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !34
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50, %65
  %55 = phi i8 [ %58, %65 ], [ %45, %50 ]
  %56 = phi ptr [ %66, %65 ], [ %51, %50 ]
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i8 [ 1, %57 ], [ %55, %54 ]
  %59 = phi i32 [ %63, %57 ], [ 0, %54 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = sub nsw i32 %1, %59
  %63 = call fastcc i32 @unit_replace(ptr noundef %61, i32 noundef %62, ptr noundef nonnull %7, double noundef %19, ptr noundef nonnull %56) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %57, !llvm.loop !57

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.bUnitDef, ptr %56, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !40
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %54, !llvm.loop !58

69:                                               ; preds = %65, %50, %43, %47
  %70 = phi i8 [ %45, %47 ], [ %45, %43 ], [ %45, %50 ], [ %58, %65 ]
  %71 = add nuw nsw i32 %44, 1
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %40, label %43, !llvm.loop !59

73:                                               ; preds = %40, %89
  %74 = phi ptr [ %91, %89 ], [ %41, %40 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  br label %76

76:                                               ; preds = %82, %73
  %77 = phi ptr [ %75, %73 ], [ %83, %82 ]
  %78 = load i8, ptr %77, align 1, !tbaa !45
  switch i8 %78, label %79 [
    i8 0, label %89
    i8 32, label %82
    i8 9, label %82
  ]

79:                                               ; preds = %76
  %80 = call fastcc zeroext i8 @ch_is_op(i8 noundef zeroext %78) #14, !range !60
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %89

82:                                               ; preds = %76, %76
  %83 = getelementptr inbounds i8, ptr %77, i64 1
  br label %76, !llvm.loop !61

84:                                               ; preds = %79
  %85 = icmp eq i8 %78, 44
  %86 = icmp eq i8 %78, 41
  %87 = or i1 %85, %86
  %88 = select i1 %87, i8 32, i8 43
  br label %89

89:                                               ; preds = %76, %84, %79
  %90 = phi i8 [ 32, %79 ], [ %88, %84 ], [ 43, %76 ]
  store i8 %90, ptr %74, align 1, !tbaa !45
  %91 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %75, i32 noundef 35) #17
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %73, !llvm.loop !62

93:                                               ; preds = %89, %40, %14, %6, %10
  %94 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %14 ], [ %70, %40 ], [ %70, %89 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #15
  ret i8 %94
}

; Function Attrs: optsize
declare void @BLI_ascii_strtolower(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unit_detect_from_str(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !63 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %11
  %8 = phi ptr [ %12, %11 ], [ %4, %3 ]
  %9 = tail call fastcc zeroext i8 @unit_find(ptr noundef %1, ptr noundef nonnull %8) #14, !range !60
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bUnitDef, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !64

15:                                               ; preds = %11, %7, %3
  %16 = phi ptr [ %4, %3 ], [ %8, %7 ], [ %12, %11 ]
  %17 = icmp eq ptr %2, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %29
  %26 = phi ptr [ %30, %29 ], [ %22, %21 ]
  %27 = tail call fastcc zeroext i8 @unit_find(ptr noundef nonnull %2, ptr noundef nonnull %26) #14, !range !60
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bUnitDef, ptr %26, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %25, !llvm.loop !65

33:                                               ; preds = %25, %15
  %34 = phi ptr [ %16, %15 ], [ %26, %25 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29, %21, %33
  %38 = tail call fastcc ptr @unit_default(ptr noundef nonnull %0) #14
  br label %39

39:                                               ; preds = %18, %37, %33
  %40 = phi ptr [ %38, %37 ], [ %34, %33 ], [ %16, %18 ]
  ret ptr %40
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unit_replace(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !66 {
  %6 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = tail call fastcc i32 @unit_scale_str(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4, ptr noundef %7) #14
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = sub nsw i32 %1, %8
  %12 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = tail call fastcc i32 @unit_scale_str(ptr noundef %10, i32 noundef %11, ptr noundef %2, double noundef %3, ptr noundef %4, ptr noundef %13) #14
  %15 = add nsw i32 %14, %8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = sub nsw i32 %1, %15
  %19 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = tail call fastcc i32 @unit_scale_str(ptr noundef %17, i32 noundef %18, ptr noundef %2, double noundef %3, ptr noundef %4, ptr noundef %20) #14
  %22 = add nsw i32 %21, %15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = sub nsw i32 %1, %22
  %26 = load ptr, ptr %4, align 8, !tbaa !40
  %27 = tail call fastcc i32 @unit_scale_str(ptr noundef %24, i32 noundef %25, ptr noundef %2, double noundef %3, ptr noundef nonnull %4, ptr noundef %26) #14
  %28 = add nsw i32 %27, %22
  ret i32 %28
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ch_is_op(i8 noundef zeroext %0) unnamed_addr #2 !PGOFuncName !69 {
  switch i8 %0, label %2 [
    i8 43, label %3
    i8 45, label %3
    i8 42, label %3
    i8 47, label %3
    i8 124, label %3
    i8 38, label %3
    i8 126, label %3
    i8 60, label %3
    i8 62, label %3
    i8 94, label %3
    i8 33, label %3
    i8 61, label %3
    i8 37, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i8 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bUnit_ToUnitAltName(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @unit_get_system(i32 noundef %3, i32 noundef %4) #14
  %7 = tail call fastcc ptr @unit_default(ptr noundef %6) #14
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %5, %54
  %12 = phi ptr [ %57, %54 ], [ %0, %5 ]
  %13 = phi i32 [ %56, %54 ], [ %1, %5 ]
  %14 = phi ptr [ %55, %54 ], [ %2, %5 ]
  %15 = phi ptr [ %58, %54 ], [ %8, %5 ]
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = icmp ne ptr %19, null
  %21 = icmp eq ptr %15, %7
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = tail call fastcc ptr @unit_find_str(ptr noundef %14, ptr noundef %25) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %23
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %14 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 @llvm.smin.i32(i32 %13, i32 %32)
  %34 = sext i32 %33 to i64
  %35 = tail call ptr @strncpy(ptr noundef %12, ptr noundef %14, i64 noundef %34) #16
  %36 = getelementptr inbounds i8, ptr %12, i64 %34
  %37 = load ptr, ptr %24, align 8, !tbaa !53
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #17
  %39 = add i64 %38, %34
  %40 = getelementptr inbounds i8, ptr %14, i64 %39
  %41 = sub nsw i32 %13, %33
  %42 = load ptr, ptr %18, align 8, !tbaa !68
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = sext i32 %41 to i64
  %46 = tail call i64 @BLI_strncpy_rlen(ptr noundef %36, ptr noundef nonnull %42, i64 noundef %45) #16
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %28, %44
  %49 = phi i32 [ %47, %44 ], [ 0, %28 ]
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 %41)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %36, i64 %51
  %53 = sub nsw i32 %41, %50
  br label %54

54:                                               ; preds = %23, %48, %17, %11
  %55 = phi ptr [ %14, %11 ], [ %14, %17 ], [ %40, %48 ], [ %14, %23 ]
  %56 = phi i32 [ %13, %11 ], [ %13, %17 ], [ %53, %48 ], [ %13, %23 ]
  %57 = phi ptr [ %12, %11 ], [ %12, %17 ], [ %52, %48 ], [ %12, %23 ]
  %58 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !40
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %11, !llvm.loop !70

61:                                               ; preds = %54, %5
  %62 = phi ptr [ %2, %5 ], [ %55, %54 ]
  %63 = phi i32 [ %1, %5 ], [ %56, %54 ]
  %64 = phi ptr [ %0, %5 ], [ %57, %54 ]
  %65 = sext i32 %63 to i64
  %66 = tail call ptr @strncpy(ptr noundef %64, ptr noundef %62, i64 noundef %65) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @unit_default(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.bUnitCollection, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.bUnitDef, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !45
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %8) #16
  %14 = load i8, ptr %13, align 1, !tbaa !45
  %15 = zext i8 %14 to i32
  %16 = tail call fastcc zeroext i8 @isalpha_or_utf8(i32 noundef %15) #14, !range !60
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %10
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %20 = shl i64 %19, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i8, ptr %8, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = zext i8 %23 to i32
  %25 = tail call fastcc zeroext i8 @isalpha_or_utf8(i32 noundef %24) #14, !range !60
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7, %18, %12, %4, %2
  br label %28

28:                                               ; preds = %18, %27
  %29 = phi ptr [ null, %27 ], [ %8, %18 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_ClosestScalar(double noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call fastcc ptr @unit_get_system(i32 noundef %1, i32 noundef %2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @unit_best_fit(double noundef %0, ptr noundef nonnull %4, ptr noundef null) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bUnitDef, ptr %7, i64 0, i32 5
  %11 = load double, ptr %10, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %6, %3, %9
  %13 = phi double [ %11, %9 ], [ -1.000000e+00, %3 ], [ -1.000000e+00, %6 ]
  ret double %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @unit_best_fit(double noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #7 !PGOFuncName !74 {
  %4 = fcmp ogt double %0, 0.000000e+00
  %5 = fneg double %0
  %6 = select i1 %4, double %0, double %5
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ %2, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10, %31
  %15 = phi ptr [ %32, %31 ], [ %11, %10 ]
  %16 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 0, i32 5
  %24 = load double, ptr %23, align 8, !tbaa !48
  br i1 %22, label %28, label %25

25:                                               ; preds = %20
  %26 = fmul double %24, 0x3FB998F1D3ED527F
  %27 = fcmp ult double %6, %26
  br i1 %27, label %31, label %37

28:                                               ; preds = %20
  %29 = fmul double %24, 9.999900e-01
  %30 = fcmp ult double %6, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %28, %14
  %32 = getelementptr inbounds %struct.bUnitDef, ptr %15, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %14, !llvm.loop !76

35:                                               ; preds = %31, %10
  %36 = tail call fastcc ptr @unit_default(ptr noundef %1) #14
  br label %37

37:                                               ; preds = %28, %25, %35
  %38 = phi ptr [ %36, %35 ], [ %15, %25 ], [ %15, %28 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_BaseScalar(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = tail call fastcc ptr @unit_get_system(i32 noundef %0, i32 noundef %1) #14
  %4 = tail call fastcc ptr @unit_default(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 5
  %6 = load double, ptr %5, align 8, !tbaa !48
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @bUnit_IsValid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ult i32 %0, 4
  %4 = icmp ult i32 %1, 11
  %5 = and i1 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bUnit_GetSystem(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = tail call fastcc ptr @unit_get_system(i32 noundef %2, i32 noundef %3) #14
  store ptr %5, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bUnitCollection, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !77
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %4 ]
  store i32 %11, ptr %1, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @bUnit_GetBaseUnit(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.bUnitCollection, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !72
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bUnit_GetName(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @bUnit_GetNameDisplay(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local double @bUnit_GetScaler(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bUnitDef, ptr %3, i64 %4, i32 5
  %6 = load double, ptr %5, align 8, !tbaa !48
  ret double %6
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare double @ceil(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare double @floor(double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @unit_find(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.bUnitDef, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bUnitDef, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bUnitDef, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %14) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !40
  %19 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %18) #14
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %17, %12, %7, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %7 ], [ 1, %12 ], [ %21, %17 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unit_scale_str(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !81 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @unit_find_str(ptr noundef %0, ptr noundef %5) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %17 = trunc i64 %16 to i32
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %19 = trunc i64 %18 to i32
  %20 = add i32 %17, 1
  %21 = add i32 %15, %19
  %22 = sub i32 %20, %21
  %23 = getelementptr inbounds %struct.bUnitDef, ptr %4, i64 0, i32 5
  %24 = load double, ptr %23, align 8, !tbaa !48
  %25 = fdiv double %24, %3
  %26 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.317, double noundef %25) #16
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
  store i8 0, ptr %54, align 1, !tbaa !45
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @isalpha_or_utf8(i32 noundef %0) unnamed_addr #12 !PGOFuncName !82 {
  %2 = icmp sgt i32 %0, 127
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @__ctype_b_loc() #18
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds i16, ptr %5, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !83
  %9 = lshr i16 %8, 10
  %10 = trunc i16 %9 to i8
  %11 = and i8 %10, 1
  br label %12

12:                                               ; preds = %3, %1
  %13 = phi i8 [ 1, %1 ], [ %11, %3 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"bUnitCollection", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 0}
!41 = !{!"bUnitDef", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !42, i64 48, !39, i64 56}
!42 = !{!"double", !37, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!42, !42, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!"unit.c:unit_get_system"}
!47 = !{!"unit.c:unit_dual_convert"}
!48 = !{!41, !42, i64 40}
!49 = !{ptr @ceil, ptr @floor}
!50 = !{!"unit.c:unit_as_string"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!41, !36, i64 16}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = !{i8 0, i8 2}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !52}
!63 = !{!"unit.c:unit_detect_from_str"}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!"unit.c:unit_replace"}
!67 = !{!41, !36, i64 8}
!68 = !{!41, !36, i64 24}
!69 = !{!"unit.c:ch_is_op"}
!70 = distinct !{!70, !52}
!71 = !{!"unit.c:unit_default"}
!72 = !{!35, !39, i64 8}
!73 = !{!"unit.c:unit_find_str"}
!74 = !{!"unit.c:unit_best_fit"}
!75 = !{!41, !39, i64 56}
!76 = distinct !{!76, !52}
!77 = !{!35, !39, i64 16}
!78 = !{!39, !39, i64 0}
!79 = !{!41, !36, i64 32}
!80 = !{!"unit.c:unit_find"}
!81 = !{!"unit.c:unit_scale_str"}
!82 = !{!"unit.c:isalpha_or_utf8"}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !37, i64 0}
