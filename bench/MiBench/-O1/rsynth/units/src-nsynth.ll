; ModuleID = 'src/nsynth.c'
source_filename = "src/nsynth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [63 x i8] c"$Id: nsynth.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@nsynth_id = dso_local local_unnamed_addr global ptr @.str, align 8
@time_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"F0hz10\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AVdb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"F1hz\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"B1hz\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"F2hz\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"B2hz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"F3hz\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"B3hz\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"F4hz\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"B4hz\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"F5hz\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"B5hz\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"F6hz\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"B6hz\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"FNZhz\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"BNZhz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"FNPhz\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BNPhz\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Kopen\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Aturb\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"TLTdb\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Kskew\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"B1phz\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"B2phz\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"B3phz\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"B4phz\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"B5phz\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"B6phz\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ANP\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"AVpdb\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Gain0\00", align 1
@par_name = dso_local local_unnamed_addr global [40 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 16
@show_parms.names = internal unnamed_addr global i32 0, align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@parwave.seed = internal unnamed_addr global i64 5, align 8
@nlast = internal unnamed_addr global float 0.000000e+00, align 4
@nper = internal unnamed_addr global i64 0, align 8
@nmod = internal unnamed_addr global i64 0, align 8
@amp_frica = internal unnamed_addr global float 0.000000e+00, align 4
@T0 = internal unnamed_addr global i64 0, align 8
@rlp.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.4 = internal unnamed_addr global float 0.000000e+00, align 8
@onemd = internal unnamed_addr global float 0.000000e+00, align 4
@vlast = internal unnamed_addr global float 0.000000e+00, align 4
@decay = internal unnamed_addr global float 0.000000e+00, align 4
@nopen = internal unnamed_addr global i64 0, align 8
@amp_breth = internal unnamed_addr global float 0.000000e+00, align 4
@amp_voice = internal unnamed_addr global float 0.000000e+00, align 4
@amp_aspir = internal unnamed_addr global float 0.000000e+00, align 4
@rnz.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.4 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@glotlast = internal unnamed_addr global float 0.000000e+00, align 4
@r6p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.1 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.3 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@amp_bypas = internal unnamed_addr global float 0.000000e+00, align 4
@rout.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.4 = internal unnamed_addr global float 0.000000e+00, align 8
@minus_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@two_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@rgl.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.1 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.3 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.4 = internal unnamed_addr global float 0.000000e+00, align 8
@warnsw = internal unnamed_addr global i1 false, align 4
@F0hz10 = internal unnamed_addr global i64 0, align 8
@AVdb = internal unnamed_addr global i64 0, align 8
@Kskew = internal unnamed_addr global i64 0, align 8
@.str.44 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal unnamed_addr constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@impulsive_source.doublet = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@vwave = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_b = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_a = internal unnamed_addr global float 0.000000e+00, align 4
@.str.47 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal unnamed_addr constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@.str.48 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal unnamed_addr global i64 0, align 8
@.str.67 = private unnamed_addr constant [17 x i8] c"\0A* * * WARNING: \00", align 1
@.str.68 = private unnamed_addr constant [59 x i8] c" Signal at output of synthesizer (+%3.1f dB) exceeds 0 dB\0A\00", align 1
@str = private unnamed_addr constant [57 x i8] c"Warning: glottal open period cannot exceed T0, truncated\00", align 1
@str.71 = private unnamed_addr constant [52 x i8] c"Warning: minimum glottal open period is 10 samples.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @show_parms(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @show_parms.names, align 4, !tbaa !5
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @show_parms.names, align 4, !tbaa !5
  %5 = and i32 %3, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef %10)
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 40
  br i1 %13, label %14, label %7, !llvm.loop !11

14:                                               ; preds = %7
  %15 = tail call i32 @putchar(i32 10)
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %16, %17
  %18 = phi i64 [ %26, %17 ], [ 0, %16 ]
  %19 = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds i32, ptr %1, i64 %18
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %22, i32 noundef %24)
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 40
  br i1 %27, label %28, label %17, !llvm.loop !13

28:                                               ; preds = %17
  %29 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @parwave(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8, !tbaa !14
  store i64 %4, ptr @F0hz10, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !18
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 7)
  %8 = add nsw i64 %7, -7
  store i64 %8, ptr @AVdb, align 8
  %9 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 18
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = icmp sgt i64 %10, 87
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %10)
  br label %20

20:                                               ; preds = %18, %14, %12, %3
  %21 = phi i64 [ %10, %12 ], [ 0, %3 ], [ 87, %18 ], [ 87, %14 ]
  %22 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !22
  %24 = fpext float %23 to double
  %25 = fmul double %24, 1.000000e-03
  %26 = fptrunc double %25 to float
  %27 = fpext float %26 to double
  %28 = fmul double %27, 5.000000e-02
  %29 = fptrunc double %28 to float
  store float %29, ptr @amp_aspir, align 4, !tbaa !22
  %30 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 22
  %31 = load i64, ptr %30, align 8, !tbaa !24
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %20
  %34 = icmp sgt i64 %31, 87
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %31)
  br label %41

41:                                               ; preds = %39, %35, %33, %20
  %42 = phi i64 [ %31, %33 ], [ 0, %20 ], [ 87, %39 ], [ 87, %35 ]
  %43 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !22
  %45 = fpext float %44 to double
  %46 = fmul double %45, 1.000000e-03
  %47 = fptrunc double %46 to float
  %48 = fmul float %47, 2.500000e-01
  store float %48, ptr @amp_frica, align 4, !tbaa !22
  %49 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 23
  %50 = load i64, ptr %49, align 8, !tbaa !25
  store i64 %50, ptr @Kskew, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 38
  %52 = load i64, ptr %51, align 8, !tbaa !26
  %53 = icmp sgt i64 %52, 87
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %52)
  br label %60

60:                                               ; preds = %58, %54, %41
  %61 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 24
  %62 = load i64, ptr %61, align 8, !tbaa !27
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i64 %62, 87
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %62)
  br label %72

72:                                               ; preds = %70, %66, %64, %60
  %73 = phi i64 [ %62, %64 ], [ 0, %60 ], [ 87, %70 ], [ 87, %66 ]
  %74 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !22
  %76 = fpext float %75 to double
  %77 = fmul double %76, 1.000000e-03
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 26
  %80 = load i64, ptr %79, align 8, !tbaa !28
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %72
  %83 = icmp sgt i64 %80, 87
  br i1 %83, label %84, label %90

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %80)
  br label %90

90:                                               ; preds = %88, %84, %82, %72
  %91 = phi i64 [ %80, %82 ], [ 0, %72 ], [ 87, %88 ], [ 87, %84 ]
  %92 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !22
  %94 = fpext float %93 to double
  %95 = fmul double %94, 1.000000e-03
  %96 = fptrunc double %95 to float
  %97 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 28
  %98 = load i64, ptr %97, align 8, !tbaa !29
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %90
  %101 = icmp sgt i64 %98, 87
  br i1 %101, label %102, label %108

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !20
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %98)
  br label %108

108:                                              ; preds = %106, %102, %100, %90
  %109 = phi i64 [ %98, %100 ], [ 0, %90 ], [ 87, %106 ], [ 87, %102 ]
  %110 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !22
  %112 = fpext float %111 to double
  %113 = fmul double %112, 1.000000e-03
  %114 = fptrunc double %113 to float
  %115 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 30
  %116 = load i64, ptr %115, align 8, !tbaa !30
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %108
  %119 = icmp sgt i64 %116, 87
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %116)
  br label %126

126:                                              ; preds = %124, %120, %118, %108
  %127 = phi i64 [ %116, %118 ], [ 0, %108 ], [ 87, %124 ], [ 87, %120 ]
  %128 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !22
  %130 = fpext float %129 to double
  %131 = fmul double %130, 1.000000e-03
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 32
  %134 = load i64, ptr %133, align 8, !tbaa !31
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %126
  %137 = icmp sgt i64 %134, 87
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !20
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %134)
  br label %144

144:                                              ; preds = %142, %138, %136, %126
  %145 = phi i64 [ %134, %136 ], [ 0, %126 ], [ 87, %142 ], [ 87, %138 ]
  %146 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !22
  %148 = fpext float %147 to double
  %149 = fmul double %148, 1.000000e-03
  %150 = fptrunc double %149 to float
  %151 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 34
  %152 = load i64, ptr %151, align 8, !tbaa !32
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %144
  %155 = icmp sgt i64 %152, 87
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !20
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %152)
  br label %162

162:                                              ; preds = %160, %156, %154, %144
  %163 = phi i64 [ %152, %154 ], [ 0, %144 ], [ 87, %160 ], [ 87, %156 ]
  %164 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !22
  %166 = fpext float %165 to double
  %167 = fmul double %166, 1.000000e-03
  %168 = fptrunc double %167 to float
  %169 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 36
  %170 = load i64, ptr %169, align 8, !tbaa !33
  %171 = icmp sgt i64 %170, 87
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !20
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %170)
  br label %178

178:                                              ; preds = %176, %172, %162
  %179 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 37
  %180 = load i64, ptr %179, align 8, !tbaa !34
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = icmp sgt i64 %180, 87
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !20
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %180)
  br label %190

190:                                              ; preds = %188, %184, %182, %178
  %191 = phi i64 [ %180, %182 ], [ 0, %178 ], [ 87, %188 ], [ 87, %184 ]
  %192 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !22
  %194 = fpext float %193 to double
  %195 = fmul double %194, 1.000000e-03
  %196 = fptrunc double %195 to float
  %197 = fpext float %196 to double
  %198 = fmul double %197, 5.000000e-02
  %199 = fptrunc double %198 to float
  store float %199, ptr @amp_bypas, align 4, !tbaa !22
  %200 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 5
  %201 = load i64, ptr %200, align 8, !tbaa !35
  %202 = icmp sgt i64 %201, 7
  br i1 %202, label %203, label %230

203:                                              ; preds = %190
  %204 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %205 = load i64, ptr %204, align 8, !tbaa !36
  %206 = icmp sgt i64 %205, 15999
  br i1 %206, label %207, label %229

207:                                              ; preds = %203
  %208 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %209 = fmul float %208, 6.000000e+02
  %210 = fpext float %209 to double
  %211 = tail call double @exp(double noundef %210) #9
  %212 = fptrunc double %211 to float
  %213 = fneg float %212
  %214 = fmul float %213, %212
  store float %214, ptr @r8c.2, align 8, !tbaa !37
  %215 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %216 = fmul float %215, 7.500000e+03
  %217 = fpext float %216 to double
  %218 = fpext float %212 to double
  %219 = tail call double @cos(double noundef %217) #9
  %220 = fmul double %219, %218
  %221 = fmul double %220, 2.000000e+00
  %222 = fptrunc double %221 to float
  store float %222, ptr @r8c.1, align 8, !tbaa !39
  %223 = fpext float %222 to double
  %224 = fsub double 1.000000e+00, %223
  %225 = load float, ptr @r8c.2, align 8, !tbaa !37
  %226 = fpext float %225 to double
  %227 = fsub double %224, %226
  %228 = fptrunc double %227 to float
  store float %228, ptr @r8c.0, align 8, !tbaa !40
  br label %230

229:                                              ; preds = %203
  store i64 6, ptr %200, align 8, !tbaa !35
  br label %230

230:                                              ; preds = %229, %207, %190
  %231 = load i64, ptr %200, align 8, !tbaa !35
  %232 = icmp sgt i64 %231, 6
  br i1 %232, label %233, label %260

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %235 = load i64, ptr %234, align 8, !tbaa !36
  %236 = icmp sgt i64 %235, 15999
  br i1 %236, label %237, label %259

237:                                              ; preds = %233
  %238 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %239 = fmul float %238, 5.000000e+02
  %240 = fpext float %239 to double
  %241 = tail call double @exp(double noundef %240) #9
  %242 = fptrunc double %241 to float
  %243 = fneg float %242
  %244 = fmul float %243, %242
  store float %244, ptr @r7c.2, align 8, !tbaa !37
  %245 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %246 = fmul float %245, 6.500000e+03
  %247 = fpext float %246 to double
  %248 = fpext float %242 to double
  %249 = tail call double @cos(double noundef %247) #9
  %250 = fmul double %249, %248
  %251 = fmul double %250, 2.000000e+00
  %252 = fptrunc double %251 to float
  store float %252, ptr @r7c.1, align 8, !tbaa !39
  %253 = fpext float %252 to double
  %254 = fsub double 1.000000e+00, %253
  %255 = load float, ptr @r7c.2, align 8, !tbaa !37
  %256 = fpext float %255 to double
  %257 = fsub double %254, %256
  %258 = fptrunc double %257 to float
  store float %258, ptr @r7c.0, align 8, !tbaa !40
  br label %260

259:                                              ; preds = %233
  store i64 6, ptr %200, align 8, !tbaa !35
  br label %260

260:                                              ; preds = %259, %237, %230
  %261 = load i64, ptr %200, align 8, !tbaa !35
  %262 = icmp sgt i64 %261, 5
  br i1 %262, label %263, label %291

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 12
  %265 = load i64, ptr %264, align 8, !tbaa !41
  %266 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 13
  %267 = load i64, ptr %266, align 8, !tbaa !42
  %268 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %269 = sitofp i64 %267 to float
  %270 = fmul float %268, %269
  %271 = fpext float %270 to double
  %272 = tail call double @exp(double noundef %271) #9
  %273 = fptrunc double %272 to float
  %274 = fneg float %273
  %275 = fmul float %274, %273
  store float %275, ptr @r6c.2, align 8, !tbaa !37
  %276 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %277 = sitofp i64 %265 to float
  %278 = fmul float %276, %277
  %279 = fpext float %278 to double
  %280 = fpext float %273 to double
  %281 = tail call double @cos(double noundef %279) #9
  %282 = fmul double %281, %280
  %283 = fmul double %282, 2.000000e+00
  %284 = fptrunc double %283 to float
  store float %284, ptr @r6c.1, align 8, !tbaa !39
  %285 = fpext float %284 to double
  %286 = fsub double 1.000000e+00, %285
  %287 = load float, ptr @r6c.2, align 8, !tbaa !37
  %288 = fpext float %287 to double
  %289 = fsub double %286, %288
  %290 = fptrunc double %289 to float
  store float %290, ptr @r6c.0, align 8, !tbaa !40
  br label %291

291:                                              ; preds = %263, %260
  %292 = load i64, ptr %200, align 8, !tbaa !35
  %293 = icmp sgt i64 %292, 4
  br i1 %293, label %294, label %322

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 10
  %296 = load i64, ptr %295, align 8, !tbaa !43
  %297 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 11
  %298 = load i64, ptr %297, align 8, !tbaa !44
  %299 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %300 = sitofp i64 %298 to float
  %301 = fmul float %299, %300
  %302 = fpext float %301 to double
  %303 = tail call double @exp(double noundef %302) #9
  %304 = fptrunc double %303 to float
  %305 = fneg float %304
  %306 = fmul float %305, %304
  store float %306, ptr @r5c.2, align 8, !tbaa !37
  %307 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %308 = sitofp i64 %296 to float
  %309 = fmul float %307, %308
  %310 = fpext float %309 to double
  %311 = fpext float %304 to double
  %312 = tail call double @cos(double noundef %310) #9
  %313 = fmul double %312, %311
  %314 = fmul double %313, 2.000000e+00
  %315 = fptrunc double %314 to float
  store float %315, ptr @r5c.1, align 8, !tbaa !39
  %316 = fpext float %315 to double
  %317 = fsub double 1.000000e+00, %316
  %318 = load float, ptr @r5c.2, align 8, !tbaa !37
  %319 = fpext float %318 to double
  %320 = fsub double %317, %319
  %321 = fptrunc double %320 to float
  store float %321, ptr @r5c.0, align 8, !tbaa !40
  br label %322

322:                                              ; preds = %294, %291
  %323 = fpext float %168 to double
  %324 = fmul double %323, 3.000000e-02
  %325 = fptrunc double %324 to float
  %326 = fpext float %150 to double
  %327 = fmul double %326, 2.200000e-02
  %328 = fptrunc double %327 to float
  %329 = fpext float %132 to double
  %330 = fmul double %329, 4.000000e-02
  %331 = fptrunc double %330 to float
  %332 = fpext float %114 to double
  %333 = fmul double %332, 6.000000e-02
  %334 = fptrunc double %333 to float
  %335 = fpext float %96 to double
  %336 = fmul double %335, 1.500000e-01
  %337 = fptrunc double %336 to float
  %338 = fpext float %78 to double
  %339 = fmul double %338, 4.000000e-01
  %340 = fptrunc double %339 to float
  %341 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 8
  %342 = load i64, ptr %341, align 8, !tbaa !45
  %343 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 9
  %344 = load i64, ptr %343, align 8, !tbaa !46
  %345 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %346 = sitofp i64 %344 to float
  %347 = fmul float %345, %346
  %348 = fpext float %347 to double
  %349 = tail call double @exp(double noundef %348) #9
  %350 = fptrunc double %349 to float
  %351 = fneg float %350
  %352 = fmul float %351, %350
  store float %352, ptr @r4c.2, align 8, !tbaa !37
  %353 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %354 = sitofp i64 %342 to float
  %355 = fmul float %353, %354
  %356 = fpext float %355 to double
  %357 = fpext float %350 to double
  %358 = tail call double @cos(double noundef %356) #9
  %359 = fmul double %358, %357
  %360 = fmul double %359, 2.000000e+00
  %361 = fptrunc double %360 to float
  store float %361, ptr @r4c.1, align 8, !tbaa !39
  %362 = fpext float %361 to double
  %363 = fsub double 1.000000e+00, %362
  %364 = load float, ptr @r4c.2, align 8, !tbaa !37
  %365 = fpext float %364 to double
  %366 = fsub double %363, %365
  %367 = fptrunc double %366 to float
  store float %367, ptr @r4c.0, align 8, !tbaa !40
  %368 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 6
  %369 = load i64, ptr %368, align 8, !tbaa !47
  %370 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 7
  %371 = load i64, ptr %370, align 8, !tbaa !48
  %372 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %373 = sitofp i64 %371 to float
  %374 = fmul float %372, %373
  %375 = fpext float %374 to double
  %376 = tail call double @exp(double noundef %375) #9
  %377 = fptrunc double %376 to float
  %378 = fneg float %377
  %379 = fmul float %378, %377
  store float %379, ptr @r3c.2, align 8, !tbaa !37
  %380 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %381 = sitofp i64 %369 to float
  %382 = fmul float %380, %381
  %383 = fpext float %382 to double
  %384 = fpext float %377 to double
  %385 = tail call double @cos(double noundef %383) #9
  %386 = fmul double %385, %384
  %387 = fmul double %386, 2.000000e+00
  %388 = fptrunc double %387 to float
  store float %388, ptr @r3c.1, align 8, !tbaa !39
  %389 = fpext float %388 to double
  %390 = fsub double 1.000000e+00, %389
  %391 = load float, ptr @r3c.2, align 8, !tbaa !37
  %392 = fpext float %391 to double
  %393 = fsub double %390, %392
  %394 = fptrunc double %393 to float
  store float %394, ptr @r3c.0, align 8, !tbaa !40
  %395 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 4
  %396 = load i64, ptr %395, align 8, !tbaa !49
  %397 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 5
  %398 = load i64, ptr %397, align 8, !tbaa !50
  %399 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %400 = sitofp i64 %398 to float
  %401 = fmul float %399, %400
  %402 = fpext float %401 to double
  %403 = tail call double @exp(double noundef %402) #9
  %404 = fptrunc double %403 to float
  %405 = fneg float %404
  %406 = fmul float %405, %404
  store float %406, ptr @r2c.2, align 8, !tbaa !37
  %407 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %408 = sitofp i64 %396 to float
  %409 = fmul float %407, %408
  %410 = fpext float %409 to double
  %411 = fpext float %404 to double
  %412 = tail call double @cos(double noundef %410) #9
  %413 = fmul double %412, %411
  %414 = fmul double %413, 2.000000e+00
  %415 = fptrunc double %414 to float
  store float %415, ptr @r2c.1, align 8, !tbaa !39
  %416 = fpext float %415 to double
  %417 = fsub double 1.000000e+00, %416
  %418 = load float, ptr @r2c.2, align 8, !tbaa !37
  %419 = fpext float %418 to double
  %420 = fsub double %417, %419
  %421 = fptrunc double %420 to float
  store float %421, ptr @r2c.0, align 8, !tbaa !40
  %422 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 2
  %423 = load i64, ptr %422, align 8, !tbaa !51
  %424 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 3
  %425 = load i64, ptr %424, align 8, !tbaa !52
  %426 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %427 = sitofp i64 %425 to float
  %428 = fmul float %426, %427
  %429 = fpext float %428 to double
  %430 = tail call double @exp(double noundef %429) #9
  %431 = fptrunc double %430 to float
  %432 = fneg float %431
  %433 = fmul float %432, %431
  store float %433, ptr @r1c.2, align 8, !tbaa !37
  %434 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %435 = sitofp i64 %423 to float
  %436 = fmul float %434, %435
  %437 = fpext float %436 to double
  %438 = fpext float %431 to double
  %439 = tail call double @cos(double noundef %437) #9
  %440 = fmul double %439, %438
  %441 = fmul double %440, 2.000000e+00
  %442 = fptrunc double %441 to float
  store float %442, ptr @r1c.1, align 8, !tbaa !39
  %443 = fpext float %442 to double
  %444 = fsub double 1.000000e+00, %443
  %445 = load float, ptr @r1c.2, align 8, !tbaa !37
  %446 = fpext float %445 to double
  %447 = fsub double %444, %446
  %448 = fptrunc double %447 to float
  store float %448, ptr @r1c.0, align 8, !tbaa !40
  %449 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 16
  %450 = load i64, ptr %449, align 8, !tbaa !53
  %451 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 17
  %452 = load i64, ptr %451, align 8, !tbaa !54
  %453 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %454 = sitofp i64 %452 to float
  %455 = fmul float %453, %454
  %456 = fpext float %455 to double
  %457 = tail call double @exp(double noundef %456) #9
  %458 = fptrunc double %457 to float
  %459 = fneg float %458
  %460 = fmul float %459, %458
  store float %460, ptr @rnpc.2, align 8, !tbaa !37
  %461 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %462 = sitofp i64 %450 to float
  %463 = fmul float %461, %462
  %464 = fpext float %463 to double
  %465 = fpext float %458 to double
  %466 = tail call double @cos(double noundef %464) #9
  %467 = fmul double %466, %465
  %468 = fmul double %467, 2.000000e+00
  %469 = fptrunc double %468 to float
  store float %469, ptr @rnpc.1, align 8, !tbaa !39
  %470 = fpext float %469 to double
  %471 = fsub double 1.000000e+00, %470
  %472 = load float, ptr @rnpc.2, align 8, !tbaa !37
  %473 = fpext float %472 to double
  %474 = fsub double %471, %473
  %475 = fptrunc double %474 to float
  store float %475, ptr @rnpc.0, align 8, !tbaa !40
  %476 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 14
  %477 = load i64, ptr %476, align 8, !tbaa !55
  %478 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 15
  %479 = load i64, ptr %478, align 8, !tbaa !56
  %480 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %481 = sitofp i64 %479 to float
  %482 = fmul float %480, %481
  %483 = fpext float %482 to double
  %484 = tail call double @exp(double noundef %483) #9
  %485 = fptrunc double %484 to float
  %486 = fneg float %485
  %487 = fmul float %486, %485
  store float %487, ptr @rnz.2, align 8, !tbaa !37
  %488 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %489 = sitofp i64 %477 to float
  %490 = fmul float %488, %489
  %491 = fpext float %490 to double
  %492 = fpext float %485 to double
  %493 = tail call double @cos(double noundef %491) #9
  %494 = fmul double %493, %492
  %495 = fmul double %494, 2.000000e+00
  %496 = fptrunc double %495 to float
  store float %496, ptr @rnz.1, align 8, !tbaa !39
  %497 = fpext float %496 to double
  %498 = fsub double 1.000000e+00, %497
  %499 = load float, ptr @rnz.2, align 8, !tbaa !37
  %500 = fpext float %499 to double
  %501 = fsub double %498, %500
  %502 = fptrunc double %501 to float
  %503 = fdiv float 1.000000e+00, %502
  store float %503, ptr @rnz.0, align 8, !tbaa !40
  %504 = fneg float %503
  %505 = fmul float %496, %504
  store float %505, ptr @rnz.1, align 8, !tbaa !39
  %506 = fmul float %499, %504
  store float %506, ptr @rnz.2, align 8, !tbaa !37
  %507 = load i64, ptr %422, align 8, !tbaa !51
  %508 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 25
  %509 = load i64, ptr %508, align 8, !tbaa !57
  %510 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %511 = sitofp i64 %509 to float
  %512 = fmul float %510, %511
  %513 = fpext float %512 to double
  %514 = tail call double @exp(double noundef %513) #9
  %515 = fptrunc double %514 to float
  %516 = fneg float %515
  %517 = fmul float %516, %515
  store float %517, ptr @r1p.2, align 8, !tbaa !37
  %518 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %519 = sitofp i64 %507 to float
  %520 = fmul float %518, %519
  %521 = fpext float %520 to double
  %522 = fpext float %515 to double
  %523 = tail call double @cos(double noundef %521) #9
  %524 = fmul double %523, %522
  %525 = fmul double %524, 2.000000e+00
  %526 = fptrunc double %525 to float
  store float %526, ptr @r1p.1, align 8, !tbaa !39
  %527 = fpext float %526 to double
  %528 = fsub double 1.000000e+00, %527
  %529 = load float, ptr @r1p.2, align 8, !tbaa !37
  %530 = fpext float %529 to double
  %531 = fsub double %528, %530
  %532 = fptrunc double %531 to float
  %533 = fmul float %340, %532
  store float %533, ptr @r1p.0, align 8, !tbaa !40
  %534 = load i64, ptr %449, align 8, !tbaa !53
  %535 = load i64, ptr %451, align 8, !tbaa !54
  %536 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %537 = sitofp i64 %535 to float
  %538 = fmul float %536, %537
  %539 = fpext float %538 to double
  %540 = tail call double @exp(double noundef %539) #9
  %541 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %542 = sitofp i64 %534 to float
  %543 = fmul float %541, %542
  %544 = fpext float %543 to double
  %545 = tail call double @cos(double noundef %544) #9
  %546 = load i64, ptr %395, align 8, !tbaa !49
  %547 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 27
  %548 = load i64, ptr %547, align 8, !tbaa !58
  %549 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %550 = sitofp i64 %548 to float
  %551 = fmul float %549, %550
  %552 = fpext float %551 to double
  %553 = tail call double @exp(double noundef %552) #9
  %554 = fptrunc double %553 to float
  %555 = fneg float %554
  %556 = fmul float %555, %554
  store float %556, ptr @r2p.2, align 8, !tbaa !37
  %557 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %558 = sitofp i64 %546 to float
  %559 = fmul float %557, %558
  %560 = fpext float %559 to double
  %561 = fpext float %554 to double
  %562 = tail call double @cos(double noundef %560) #9
  %563 = fmul double %562, %561
  %564 = fmul double %563, 2.000000e+00
  %565 = fptrunc double %564 to float
  store float %565, ptr @r2p.1, align 8, !tbaa !39
  %566 = fpext float %565 to double
  %567 = fsub double 1.000000e+00, %566
  %568 = load float, ptr @r2p.2, align 8, !tbaa !37
  %569 = fpext float %568 to double
  %570 = fsub double %567, %569
  %571 = fptrunc double %570 to float
  %572 = fmul float %337, %571
  store float %572, ptr @r2p.0, align 8, !tbaa !40
  %573 = load i64, ptr %368, align 8, !tbaa !47
  %574 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 29
  %575 = load i64, ptr %574, align 8, !tbaa !59
  %576 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %577 = sitofp i64 %575 to float
  %578 = fmul float %576, %577
  %579 = fpext float %578 to double
  %580 = tail call double @exp(double noundef %579) #9
  %581 = fptrunc double %580 to float
  %582 = fneg float %581
  %583 = fmul float %582, %581
  store float %583, ptr @r3p.2, align 8, !tbaa !37
  %584 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %585 = sitofp i64 %573 to float
  %586 = fmul float %584, %585
  %587 = fpext float %586 to double
  %588 = fpext float %581 to double
  %589 = tail call double @cos(double noundef %587) #9
  %590 = fmul double %589, %588
  %591 = fmul double %590, 2.000000e+00
  %592 = fptrunc double %591 to float
  store float %592, ptr @r3p.1, align 8, !tbaa !39
  %593 = fpext float %592 to double
  %594 = fsub double 1.000000e+00, %593
  %595 = load float, ptr @r3p.2, align 8, !tbaa !37
  %596 = fpext float %595 to double
  %597 = fsub double %594, %596
  %598 = fptrunc double %597 to float
  %599 = fmul float %334, %598
  store float %599, ptr @r3p.0, align 8, !tbaa !40
  %600 = load i64, ptr %341, align 8, !tbaa !45
  %601 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 31
  %602 = load i64, ptr %601, align 8, !tbaa !60
  %603 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %604 = sitofp i64 %602 to float
  %605 = fmul float %603, %604
  %606 = fpext float %605 to double
  %607 = tail call double @exp(double noundef %606) #9
  %608 = fptrunc double %607 to float
  %609 = fneg float %608
  %610 = fmul float %609, %608
  store float %610, ptr @r4p.2, align 8, !tbaa !37
  %611 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %612 = sitofp i64 %600 to float
  %613 = fmul float %611, %612
  %614 = fpext float %613 to double
  %615 = fpext float %608 to double
  %616 = tail call double @cos(double noundef %614) #9
  %617 = fmul double %616, %615
  %618 = fmul double %617, 2.000000e+00
  %619 = fptrunc double %618 to float
  store float %619, ptr @r4p.1, align 8, !tbaa !39
  %620 = fpext float %619 to double
  %621 = fsub double 1.000000e+00, %620
  %622 = load float, ptr @r4p.2, align 8, !tbaa !37
  %623 = fpext float %622 to double
  %624 = fsub double %621, %623
  %625 = fptrunc double %624 to float
  %626 = fmul float %331, %625
  store float %626, ptr @r4p.0, align 8, !tbaa !40
  %627 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 10
  %628 = load i64, ptr %627, align 8, !tbaa !43
  %629 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 33
  %630 = load i64, ptr %629, align 8, !tbaa !61
  %631 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %632 = sitofp i64 %630 to float
  %633 = fmul float %631, %632
  %634 = fpext float %633 to double
  %635 = tail call double @exp(double noundef %634) #9
  %636 = fptrunc double %635 to float
  %637 = fneg float %636
  %638 = fmul float %637, %636
  store float %638, ptr @r5p.2, align 8, !tbaa !37
  %639 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %640 = sitofp i64 %628 to float
  %641 = fmul float %639, %640
  %642 = fpext float %641 to double
  %643 = fpext float %636 to double
  %644 = tail call double @cos(double noundef %642) #9
  %645 = fmul double %644, %643
  %646 = fmul double %645, 2.000000e+00
  %647 = fptrunc double %646 to float
  store float %647, ptr @r5p.1, align 8, !tbaa !39
  %648 = fpext float %647 to double
  %649 = fsub double 1.000000e+00, %648
  %650 = load float, ptr @r5p.2, align 8, !tbaa !37
  %651 = fpext float %650 to double
  %652 = fsub double %649, %651
  %653 = fptrunc double %652 to float
  %654 = fmul float %328, %653
  store float %654, ptr @r5p.0, align 8, !tbaa !40
  %655 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 12
  %656 = load i64, ptr %655, align 8, !tbaa !41
  %657 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 35
  %658 = load i64, ptr %657, align 8, !tbaa !62
  %659 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %660 = sitofp i64 %658 to float
  %661 = fmul float %659, %660
  %662 = fpext float %661 to double
  %663 = tail call double @exp(double noundef %662) #9
  %664 = fptrunc double %663 to float
  %665 = fneg float %664
  %666 = fmul float %665, %664
  store float %666, ptr @r6p.2, align 8, !tbaa !37
  %667 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %668 = sitofp i64 %656 to float
  %669 = fmul float %667, %668
  %670 = fpext float %669 to double
  %671 = fpext float %664 to double
  %672 = tail call double @cos(double noundef %670) #9
  %673 = fmul double %672, %671
  %674 = fmul double %673, 2.000000e+00
  %675 = fptrunc double %674 to float
  store float %675, ptr @r6p.1, align 8, !tbaa !39
  %676 = fpext float %675 to double
  %677 = fsub double 1.000000e+00, %676
  %678 = load float, ptr @r6p.2, align 8, !tbaa !37
  %679 = fpext float %678 to double
  %680 = fsub double %677, %679
  %681 = fptrunc double %680 to float
  %682 = fmul float %325, %681
  store float %682, ptr @r6p.0, align 8, !tbaa !40
  %683 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 39
  %684 = load i64, ptr %683, align 8, !tbaa !63
  %685 = add nsw i64 %684, -3
  %686 = icmp slt i64 %684, 4
  %687 = select i1 %686, i64 57, i64 %685
  %688 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %689 = load i64, ptr %688, align 8, !tbaa !36
  %690 = icmp slt i64 %687, 0
  br i1 %690, label %699, label %691

691:                                              ; preds = %322
  %692 = icmp sgt i64 %687, 87
  br i1 %692, label %693, label %699

693:                                              ; preds = %691
  %694 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %695 = load i32, ptr %694, align 4, !tbaa !20
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %699

697:                                              ; preds = %693
  %698 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %687)
  br label %699

699:                                              ; preds = %322, %691, %693, %697
  %700 = phi i64 [ %687, %691 ], [ 0, %322 ], [ 87, %697 ], [ 87, %693 ]
  %701 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %700
  %702 = load float, ptr %701, align 4, !tbaa !22
  %703 = fpext float %702 to double
  %704 = fmul double %703, 1.000000e-03
  %705 = fptrunc double %704 to float
  %706 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %707 = sitofp i64 %689 to float
  %708 = fmul float %706, %707
  %709 = fpext float %708 to double
  %710 = tail call double @exp(double noundef %709) #9
  %711 = fptrunc double %710 to float
  %712 = fneg float %711
  %713 = fmul float %712, %711
  store float %713, ptr @rout.2, align 8, !tbaa !37
  %714 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %715 = fmul float %714, 0.000000e+00
  %716 = fpext float %715 to double
  %717 = fpext float %711 to double
  %718 = tail call double @cos(double noundef %716) #9
  %719 = fmul double %718, %717
  %720 = fmul double %719, 2.000000e+00
  %721 = fptrunc double %720 to float
  store float %721, ptr @rout.1, align 8, !tbaa !39
  %722 = fpext float %721 to double
  %723 = fsub double 1.000000e+00, %722
  %724 = load float, ptr @rout.2, align 8, !tbaa !37
  %725 = fpext float %724 to double
  %726 = fsub double %723, %725
  %727 = fptrunc double %726 to float
  %728 = fmul float %705, %727
  store float %728, ptr @rout.0, align 8, !tbaa !40
  %729 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 2
  %730 = load i32, ptr %729, align 8, !tbaa !64
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %760, label %732

732:                                              ; preds = %699
  %733 = load i32, ptr @time_count, align 4, !tbaa !5
  %734 = add nsw i32 %733, 1
  store i32 %734, ptr @time_count, align 4, !tbaa !5
  %735 = load i64, ptr %1, align 8, !tbaa !14
  %736 = sdiv i64 %735, 10
  %737 = sitofp i32 %730 to double
  %738 = fdiv double %737, 5.000000e+01
  %739 = sitofp i64 %736 to double
  %740 = fdiv double %739, 1.000000e+02
  %741 = sitofp i32 %734 to double
  %742 = fmul double %741, 0x4053F2F91CA1765C
  %743 = tail call double @sin(double noundef %742) #9
  %744 = load i32, ptr @time_count, align 4, !tbaa !5
  %745 = sitofp i32 %744 to double
  %746 = fmul double %745, 0x40464E28AD1D5A02
  %747 = tail call double @sin(double noundef %746) #9
  %748 = load i32, ptr @time_count, align 4, !tbaa !5
  %749 = sitofp i32 %748 to double
  %750 = fmul double %749, 0x403D87EDBD883645
  %751 = tail call double @sin(double noundef %750) #9
  %752 = fmul double %738, %740
  %753 = fadd double %743, %747
  %754 = fadd double %753, %751
  %755 = fmul double %752, %754
  %756 = fmul double %755, 1.000000e+01
  %757 = fptosi double %756 to i64
  %758 = load i64, ptr @F0hz10, align 8, !tbaa !17
  %759 = add nsw i64 %758, %757
  store i64 %759, ptr @F0hz10, align 8, !tbaa !17
  br label %760

760:                                              ; preds = %732, %699
  %761 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 7
  %762 = load i64, ptr %761, align 8, !tbaa !65
  %763 = icmp sgt i64 %762, 0
  br i1 %763, label %764, label %1217

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 6
  %766 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %767 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 20
  %768 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %769 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 19
  %770 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %771 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %772 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %773 = getelementptr inbounds %struct.klatt_frame_t, ptr %1, i64 0, i32 21
  %774 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  %775 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 1
  br label %776

776:                                              ; preds = %764, %1210
  %777 = phi ptr [ %2, %764 ], [ %1213, %1210 ]
  %778 = phi i64 [ 0, %764 ], [ %1214, %1210 ]
  %779 = load i64, ptr @parwave.seed, align 8, !tbaa !17
  %780 = mul nuw nsw i64 %779, 1664525
  %781 = add nuw nsw i64 %780, 1
  %782 = and i64 %781, 4294967295
  store i64 %782, ptr @parwave.seed, align 8, !tbaa !17
  %783 = shl nuw i64 %782, 32
  %784 = ashr i64 %783, 50
  %785 = sitofp i64 %784 to double
  %786 = load float, ptr @nlast, align 4, !tbaa !22
  %787 = fpext float %786 to double
  %788 = tail call double @llvm.fmuladd.f64(double %787, double 7.500000e-01, double %785)
  %789 = fptrunc double %788 to float
  store float %789, ptr @nlast, align 4, !tbaa !22
  %790 = load i64, ptr @nper, align 8, !tbaa !17
  %791 = load i64, ptr @nmod, align 8, !tbaa !17
  %792 = fmul float %789, 5.000000e-01
  %793 = load float, ptr @amp_frica, align 4, !tbaa !22
  %794 = icmp eq i64 %778, 0
  br label %795

795:                                              ; preds = %776, %980
  %796 = phi i32 [ 0, %776 ], [ %991, %980 ]
  %797 = load i64, ptr %765, align 8, !tbaa !66
  %798 = icmp eq i64 %797, 1
  %799 = load i64, ptr @nper, align 8, !tbaa !17
  br i1 %798, label %800, label %815

800:                                              ; preds = %795
  %801 = icmp slt i64 %799, 3
  br i1 %801, label %802, label %805

802:                                              ; preds = %800
  %803 = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %799
  %804 = load float, ptr %803, align 4, !tbaa !22
  br label %805

805:                                              ; preds = %800, %802
  %806 = phi float [ %804, %802 ], [ 0.000000e+00, %800 ]
  store float %806, ptr @vwave, align 4, !tbaa !22
  %807 = load float, ptr @rgl.0, align 8, !tbaa !40
  %808 = load float, ptr @rgl.1, align 8, !tbaa !39
  %809 = load float, ptr @rgl.3, align 8, !tbaa !67
  %810 = fmul float %808, %809
  %811 = tail call float @llvm.fmuladd.f32(float %807, float %806, float %810)
  %812 = load float, ptr @rgl.2, align 8, !tbaa !37
  %813 = load float, ptr @rgl.4, align 8, !tbaa !68
  %814 = tail call float @llvm.fmuladd.f32(float %812, float %813, float %811)
  store float %809, ptr @rgl.4, align 8, !tbaa !68
  store float %814, ptr @rgl.3, align 8, !tbaa !67
  br label %828

815:                                              ; preds = %795
  %816 = load i64, ptr @nopen, align 8, !tbaa !17
  %817 = icmp sgt i64 %816, %799
  br i1 %817, label %818, label %827

818:                                              ; preds = %815
  %819 = load float, ptr @natglot_b, align 4, !tbaa !22
  %820 = load float, ptr @natglot_a, align 4, !tbaa !22
  %821 = fsub float %820, %819
  store float %821, ptr @natglot_a, align 4, !tbaa !22
  %822 = load float, ptr @vwave, align 4, !tbaa !22
  %823 = fadd float %821, %822
  store float %823, ptr @vwave, align 4, !tbaa !22
  %824 = fpext float %823 to double
  %825 = fmul double %824, 2.800000e-02
  %826 = fptrunc double %825 to float
  br label %828

827:                                              ; preds = %815
  store float 0.000000e+00, ptr @vwave, align 4, !tbaa !22
  br label %828

828:                                              ; preds = %827, %818, %805
  %829 = phi float [ %814, %805 ], [ %826, %818 ], [ 0.000000e+00, %827 ]
  %830 = load i64, ptr @nper, align 8, !tbaa !17
  %831 = load i64, ptr @T0, align 8, !tbaa !17
  %832 = icmp slt i64 %830, %831
  br i1 %832, label %980, label %833

833:                                              ; preds = %828
  store i64 0, ptr @nper, align 8, !tbaa !17
  %834 = load i64, ptr @F0hz10, align 8, !tbaa !17
  %835 = icmp sgt i64 %834, 0
  br i1 %835, label %836, label %967

836:                                              ; preds = %833
  %837 = load i64, ptr %688, align 8, !tbaa !36
  %838 = mul nsw i64 %837, 40
  %839 = sdiv i64 %838, %834
  store i64 %839, ptr @T0, align 8, !tbaa !17
  %840 = load i64, ptr @AVdb, align 8, !tbaa !17
  %841 = icmp slt i64 %840, 0
  br i1 %841, label %849, label %842

842:                                              ; preds = %836
  %843 = icmp sgt i64 %840, 87
  br i1 %843, label %844, label %849

844:                                              ; preds = %842
  %845 = load i32, ptr %766, align 4, !tbaa !20
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %849

847:                                              ; preds = %844
  %848 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %840)
  br label %849

849:                                              ; preds = %847, %844, %842, %836
  %850 = phi i64 [ %840, %842 ], [ 0, %836 ], [ 87, %847 ], [ 87, %844 ]
  %851 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %850
  %852 = load float, ptr %851, align 4, !tbaa !22
  %853 = fpext float %852 to double
  %854 = fmul double %853, 1.000000e-03
  %855 = fptrunc double %854 to float
  store float %855, ptr @amp_voice, align 4, !tbaa !22
  %856 = load i64, ptr @T0, align 8, !tbaa !17
  store i64 %856, ptr @nmod, align 8, !tbaa !17
  %857 = load i64, ptr @AVdb, align 8, !tbaa !17
  %858 = icmp sgt i64 %857, 0
  br i1 %858, label %859, label %861

859:                                              ; preds = %849
  %860 = ashr i64 %856, 1
  store i64 %860, ptr @nmod, align 8, !tbaa !17
  br label %861

861:                                              ; preds = %859, %849
  %862 = load i64, ptr %767, align 8, !tbaa !69
  %863 = icmp slt i64 %862, 0
  br i1 %863, label %871, label %864

864:                                              ; preds = %861
  %865 = icmp sgt i64 %862, 87
  br i1 %865, label %866, label %871

866:                                              ; preds = %864
  %867 = load i32, ptr %768, align 4, !tbaa !20
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %871

869:                                              ; preds = %866
  %870 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %862)
  br label %871

871:                                              ; preds = %869, %866, %864, %861
  %872 = phi i64 [ %862, %864 ], [ 0, %861 ], [ 87, %869 ], [ 87, %866 ]
  %873 = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %872
  %874 = load float, ptr %873, align 4, !tbaa !22
  %875 = fpext float %874 to double
  %876 = fmul double %875, 1.000000e-03
  %877 = fptrunc double %876 to float
  %878 = fpext float %877 to double
  %879 = fmul double %878, 1.000000e-01
  %880 = fptrunc double %879 to float
  store float %880, ptr @amp_breth, align 4, !tbaa !22
  %881 = load i64, ptr %769, align 8, !tbaa !70
  %882 = shl nsw i64 %881, 2
  store i64 %882, ptr @nopen, align 8, !tbaa !17
  %883 = load i64, ptr %765, align 8, !tbaa !66
  %884 = icmp eq i64 %883, 1
  %885 = icmp sgt i64 %881, 65
  %886 = select i1 %884, i1 %885, i1 false
  %887 = select i1 %886, i64 263, i64 %882
  store i64 %887, ptr @nopen, align 8
  %888 = load i64, ptr @T0, align 8, !tbaa !17
  %889 = add nsw i64 %888, -1
  %890 = icmp slt i64 %887, %889
  br i1 %890, label %897, label %891

891:                                              ; preds = %871
  %892 = add nsw i64 %888, -2
  store i64 %892, ptr @nopen, align 8, !tbaa !17
  %893 = load i32, ptr %770, align 4, !tbaa !20
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %897

895:                                              ; preds = %891
  %896 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %897

897:                                              ; preds = %895, %891, %871
  %898 = load i64, ptr @nopen, align 8, !tbaa !17
  %899 = icmp slt i64 %898, 40
  br i1 %899, label %900, label %907

900:                                              ; preds = %897
  store i64 40, ptr @nopen, align 8, !tbaa !17
  %901 = load i32, ptr %771, align 4, !tbaa !20
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %907

903:                                              ; preds = %900
  %904 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.71)
  %905 = load i64, ptr @nopen, align 8, !tbaa !17
  %906 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %905)
  br label %907

907:                                              ; preds = %903, %900, %897
  %908 = load i64, ptr @nopen, align 8, !tbaa !17
  %909 = add nsw i64 %908, -40
  %910 = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !71
  %912 = sitofp i16 %911 to float
  store float %912, ptr @natglot_b, align 4, !tbaa !22
  %913 = sitofp i64 %908 to float
  %914 = fmul float %913, %912
  %915 = fpext float %914 to double
  %916 = fmul double %915, 3.330000e-01
  %917 = fptrunc double %916 to float
  store float %917, ptr @natglot_a, align 4, !tbaa !22
  %918 = load i64, ptr %688, align 8, !tbaa !36
  %919 = sdiv i64 %918, %908
  %920 = load float, ptr @minus_pi_t, align 4, !tbaa !22
  %921 = sitofp i64 %919 to float
  %922 = fmul float %920, %921
  %923 = fpext float %922 to double
  %924 = tail call double @exp(double noundef %923) #9
  %925 = fptrunc double %924 to float
  %926 = fneg float %925
  %927 = fmul float %926, %925
  store float %927, ptr @rgl.2, align 8, !tbaa !37
  %928 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %929 = fmul float %928, 0.000000e+00
  %930 = fpext float %929 to double
  %931 = fpext float %925 to double
  %932 = tail call double @cos(double noundef %930) #9
  %933 = fmul double %932, %931
  %934 = fmul double %933, 2.000000e+00
  %935 = fptrunc double %934 to float
  store float %935, ptr @rgl.1, align 8, !tbaa !39
  %936 = fpext float %935 to double
  %937 = fsub double 1.000000e+00, %936
  %938 = load float, ptr @rgl.2, align 8, !tbaa !37
  %939 = fpext float %938 to double
  %940 = fsub double %937, %939
  %941 = fptrunc double %940 to float
  store float %941, ptr @rgl.0, align 8, !tbaa !40
  %942 = load i64, ptr @nopen, align 8, !tbaa !17
  %943 = sitofp i64 %942 to double
  %944 = fmul double %943, 8.330000e-03
  %945 = fptrunc double %944 to float
  %946 = fmul float %945, %945
  %947 = fmul float %946, %941
  store float %947, ptr @rgl.0, align 8, !tbaa !40
  %948 = load i64, ptr @T0, align 8, !tbaa !17
  %949 = sub nsw i64 %948, %942
  %950 = load i64, ptr @Kskew, align 8, !tbaa !17
  %951 = icmp sgt i64 %950, %949
  br i1 %951, label %952, label %958

952:                                              ; preds = %907
  %953 = load i32, ptr %772, align 4, !tbaa !20
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %957

955:                                              ; preds = %952
  %956 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %950, i64 noundef %949)
  br label %957

957:                                              ; preds = %955, %952
  store i64 %949, ptr @Kskew, align 8, !tbaa !17
  br label %958

958:                                              ; preds = %957, %907
  %959 = load i64, ptr @skew, align 8, !tbaa !17
  %960 = load i64, ptr @Kskew, align 8
  %961 = sub nsw i64 0, %960
  %962 = icmp slt i64 %959, 0
  %963 = select i1 %962, i64 %961, i64 %960
  store i64 %963, ptr @skew, align 8, !tbaa !17
  %964 = load i64, ptr @T0, align 8, !tbaa !17
  %965 = add nsw i64 %964, %963
  store i64 %965, ptr @T0, align 8, !tbaa !17
  %966 = sub nsw i64 0, %963
  store i64 %966, ptr @skew, align 8, !tbaa !17
  br label %968

967:                                              ; preds = %833
  store i64 4, ptr @T0, align 8, !tbaa !17
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !22
  store i64 4, ptr @nmod, align 8, !tbaa !17
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !22
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !22
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !22
  br label %968

968:                                              ; preds = %967, %958
  %969 = load i64, ptr @T0, align 8, !tbaa !17
  %970 = icmp ne i64 %969, 4
  %971 = or i1 %794, %970
  br i1 %971, label %972, label %980

972:                                              ; preds = %968
  %973 = load i64, ptr %773, align 8, !tbaa !73
  %974 = sitofp i64 %973 to double
  %975 = fmul double %974, 3.300000e-02
  %976 = fptrunc double %975 to float
  store float %976, ptr @decay, align 4, !tbaa !22
  %977 = fcmp ogt float %976, 0.000000e+00
  %978 = fsub float 1.000000e+00, %976
  %979 = select i1 %977, float %978, float 1.000000e+00
  store float %979, ptr @onemd, align 4, !tbaa !22
  br label %980

980:                                              ; preds = %972, %968, %828
  %981 = load float, ptr @rlp.0, align 8, !tbaa !40
  %982 = load float, ptr @rlp.1, align 8, !tbaa !39
  %983 = load float, ptr @rlp.3, align 8, !tbaa !67
  %984 = fmul float %982, %983
  %985 = tail call float @llvm.fmuladd.f32(float %981, float %829, float %984)
  %986 = load float, ptr @rlp.2, align 8, !tbaa !37
  %987 = load float, ptr @rlp.4, align 8, !tbaa !68
  %988 = tail call float @llvm.fmuladd.f32(float %986, float %987, float %985)
  store float %983, ptr @rlp.4, align 8, !tbaa !68
  store float %988, ptr @rlp.3, align 8, !tbaa !67
  %989 = load i64, ptr @nper, align 8, !tbaa !17
  %990 = add nsw i64 %989, 1
  store i64 %990, ptr @nper, align 8, !tbaa !17
  %991 = add nuw nsw i32 %796, 1
  %992 = icmp eq i32 %991, 4
  br i1 %992, label %993, label %795, !llvm.loop !74

993:                                              ; preds = %980
  %994 = icmp sgt i64 %790, %791
  %995 = select i1 %994, float %792, float %789
  %996 = fmul float %793, %995
  %997 = load float, ptr @onemd, align 4, !tbaa !22
  %998 = load float, ptr @vlast, align 4, !tbaa !22
  %999 = load float, ptr @decay, align 4, !tbaa !22
  %1000 = fmul float %998, %999
  %1001 = tail call float @llvm.fmuladd.f32(float %988, float %997, float %1000)
  store float %1001, ptr @vlast, align 4, !tbaa !22
  %1002 = load i64, ptr @nper, align 8, !tbaa !17
  %1003 = load i64, ptr @nopen, align 8, !tbaa !17
  %1004 = icmp slt i64 %1002, %1003
  %1005 = load float, ptr @amp_breth, align 4
  %1006 = sitofp i64 %784 to float
  %1007 = tail call float @llvm.fmuladd.f32(float %1005, float %1006, float %1001)
  %1008 = select i1 %1004, float %1007, float %1001
  %1009 = load float, ptr @amp_voice, align 4, !tbaa !22
  %1010 = fmul float %1009, %1008
  %1011 = load float, ptr @amp_aspir, align 4, !tbaa !22
  %1012 = fmul float %995, %1011
  %1013 = fadd float %1010, %1012
  %1014 = load i32, ptr %0, align 8, !tbaa !75
  %1015 = icmp eq i32 %1014, 2
  %1016 = load float, ptr @rnz.0, align 8, !tbaa !40
  %1017 = load float, ptr @rnz.1, align 8, !tbaa !39
  %1018 = load float, ptr @rnz.3, align 8, !tbaa !67
  %1019 = fmul float %1017, %1018
  %1020 = tail call float @llvm.fmuladd.f32(float %1016, float %1013, float %1019)
  %1021 = load float, ptr @rnz.2, align 8, !tbaa !37
  %1022 = load float, ptr @rnz.4, align 8, !tbaa !68
  %1023 = tail call float @llvm.fmuladd.f32(float %1021, float %1022, float %1020)
  store float %1018, ptr @rnz.4, align 8, !tbaa !68
  store float %1013, ptr @rnz.3, align 8, !tbaa !67
  %1024 = load float, ptr @rnpc.0, align 8, !tbaa !40
  %1025 = load float, ptr @rnpc.1, align 8, !tbaa !39
  %1026 = load float, ptr @rnpc.3, align 8, !tbaa !67
  %1027 = fmul float %1025, %1026
  %1028 = tail call float @llvm.fmuladd.f32(float %1024, float %1023, float %1027)
  %1029 = load float, ptr @rnpc.2, align 8, !tbaa !37
  %1030 = load float, ptr @rnpc.4, align 8, !tbaa !68
  %1031 = tail call float @llvm.fmuladd.f32(float %1029, float %1030, float %1028)
  store float %1026, ptr @rnpc.4, align 8, !tbaa !68
  store float %1031, ptr @rnpc.3, align 8, !tbaa !67
  br i1 %1015, label %1113, label %1032

1032:                                             ; preds = %993
  %1033 = load i64, ptr %200, align 8, !tbaa !35
  switch i64 %1033, label %1125 [
    i64 8, label %1034
    i64 7, label %1043
    i64 6, label %1053
    i64 5, label %1063
    i64 4, label %1073
    i64 3, label %1083
    i64 2, label %1093
    i64 1, label %1103
  ]

1034:                                             ; preds = %1032
  %1035 = load float, ptr @r8c.0, align 8, !tbaa !40
  %1036 = load float, ptr @r8c.1, align 8, !tbaa !39
  %1037 = load float, ptr @r8c.3, align 8, !tbaa !67
  %1038 = fmul float %1036, %1037
  %1039 = tail call float @llvm.fmuladd.f32(float %1035, float %1031, float %1038)
  %1040 = load float, ptr @r8c.2, align 8, !tbaa !37
  %1041 = load float, ptr @r8c.4, align 8, !tbaa !68
  %1042 = tail call float @llvm.fmuladd.f32(float %1040, float %1041, float %1039)
  store float %1037, ptr @r8c.4, align 8, !tbaa !68
  store float %1042, ptr @r8c.3, align 8, !tbaa !67
  br label %1043

1043:                                             ; preds = %1032, %1034
  %1044 = phi float [ %1031, %1032 ], [ %1042, %1034 ]
  %1045 = load float, ptr @r7c.0, align 8, !tbaa !40
  %1046 = load float, ptr @r7c.1, align 8, !tbaa !39
  %1047 = load float, ptr @r7c.3, align 8, !tbaa !67
  %1048 = fmul float %1046, %1047
  %1049 = tail call float @llvm.fmuladd.f32(float %1045, float %1044, float %1048)
  %1050 = load float, ptr @r7c.2, align 8, !tbaa !37
  %1051 = load float, ptr @r7c.4, align 8, !tbaa !68
  %1052 = tail call float @llvm.fmuladd.f32(float %1050, float %1051, float %1049)
  store float %1047, ptr @r7c.4, align 8, !tbaa !68
  store float %1052, ptr @r7c.3, align 8, !tbaa !67
  br label %1053

1053:                                             ; preds = %1032, %1043
  %1054 = phi float [ %1031, %1032 ], [ %1052, %1043 ]
  %1055 = load float, ptr @r6c.0, align 8, !tbaa !40
  %1056 = load float, ptr @r6c.1, align 8, !tbaa !39
  %1057 = load float, ptr @r6c.3, align 8, !tbaa !67
  %1058 = fmul float %1056, %1057
  %1059 = tail call float @llvm.fmuladd.f32(float %1055, float %1054, float %1058)
  %1060 = load float, ptr @r6c.2, align 8, !tbaa !37
  %1061 = load float, ptr @r6c.4, align 8, !tbaa !68
  %1062 = tail call float @llvm.fmuladd.f32(float %1060, float %1061, float %1059)
  store float %1057, ptr @r6c.4, align 8, !tbaa !68
  store float %1062, ptr @r6c.3, align 8, !tbaa !67
  br label %1063

1063:                                             ; preds = %1032, %1053
  %1064 = phi float [ %1031, %1032 ], [ %1062, %1053 ]
  %1065 = load float, ptr @r5c.0, align 8, !tbaa !40
  %1066 = load float, ptr @r5c.1, align 8, !tbaa !39
  %1067 = load float, ptr @r5c.3, align 8, !tbaa !67
  %1068 = fmul float %1066, %1067
  %1069 = tail call float @llvm.fmuladd.f32(float %1065, float %1064, float %1068)
  %1070 = load float, ptr @r5c.2, align 8, !tbaa !37
  %1071 = load float, ptr @r5c.4, align 8, !tbaa !68
  %1072 = tail call float @llvm.fmuladd.f32(float %1070, float %1071, float %1069)
  store float %1067, ptr @r5c.4, align 8, !tbaa !68
  store float %1072, ptr @r5c.3, align 8, !tbaa !67
  br label %1073

1073:                                             ; preds = %1032, %1063
  %1074 = phi float [ %1031, %1032 ], [ %1072, %1063 ]
  %1075 = load float, ptr @r4c.0, align 8, !tbaa !40
  %1076 = load float, ptr @r4c.1, align 8, !tbaa !39
  %1077 = load float, ptr @r4c.3, align 8, !tbaa !67
  %1078 = fmul float %1076, %1077
  %1079 = tail call float @llvm.fmuladd.f32(float %1075, float %1074, float %1078)
  %1080 = load float, ptr @r4c.2, align 8, !tbaa !37
  %1081 = load float, ptr @r4c.4, align 8, !tbaa !68
  %1082 = tail call float @llvm.fmuladd.f32(float %1080, float %1081, float %1079)
  store float %1077, ptr @r4c.4, align 8, !tbaa !68
  store float %1082, ptr @r4c.3, align 8, !tbaa !67
  br label %1083

1083:                                             ; preds = %1032, %1073
  %1084 = phi float [ %1031, %1032 ], [ %1082, %1073 ]
  %1085 = load float, ptr @r3c.0, align 8, !tbaa !40
  %1086 = load float, ptr @r3c.1, align 8, !tbaa !39
  %1087 = load float, ptr @r3c.3, align 8, !tbaa !67
  %1088 = fmul float %1086, %1087
  %1089 = tail call float @llvm.fmuladd.f32(float %1085, float %1084, float %1088)
  %1090 = load float, ptr @r3c.2, align 8, !tbaa !37
  %1091 = load float, ptr @r3c.4, align 8, !tbaa !68
  %1092 = tail call float @llvm.fmuladd.f32(float %1090, float %1091, float %1089)
  store float %1087, ptr @r3c.4, align 8, !tbaa !68
  store float %1092, ptr @r3c.3, align 8, !tbaa !67
  br label %1093

1093:                                             ; preds = %1032, %1083
  %1094 = phi float [ %1031, %1032 ], [ %1092, %1083 ]
  %1095 = load float, ptr @r2c.0, align 8, !tbaa !40
  %1096 = load float, ptr @r2c.1, align 8, !tbaa !39
  %1097 = load float, ptr @r2c.3, align 8, !tbaa !67
  %1098 = fmul float %1096, %1097
  %1099 = tail call float @llvm.fmuladd.f32(float %1095, float %1094, float %1098)
  %1100 = load float, ptr @r2c.2, align 8, !tbaa !37
  %1101 = load float, ptr @r2c.4, align 8, !tbaa !68
  %1102 = tail call float @llvm.fmuladd.f32(float %1100, float %1101, float %1099)
  store float %1097, ptr @r2c.4, align 8, !tbaa !68
  store float %1102, ptr @r2c.3, align 8, !tbaa !67
  br label %1103

1103:                                             ; preds = %1032, %1093
  %1104 = phi float [ %1031, %1032 ], [ %1102, %1093 ]
  %1105 = load float, ptr @r1c.0, align 8, !tbaa !40
  %1106 = load float, ptr @r1c.1, align 8, !tbaa !39
  %1107 = load float, ptr @r1c.3, align 8, !tbaa !67
  %1108 = fmul float %1106, %1107
  %1109 = tail call float @llvm.fmuladd.f32(float %1105, float %1104, float %1108)
  %1110 = load float, ptr @r1c.2, align 8, !tbaa !37
  %1111 = load float, ptr @r1c.4, align 8, !tbaa !68
  %1112 = tail call float @llvm.fmuladd.f32(float %1110, float %1111, float %1109)
  store float %1107, ptr @r1c.4, align 8, !tbaa !68
  store float %1112, ptr @r1c.3, align 8, !tbaa !67
  br label %1125

1113:                                             ; preds = %993
  %1114 = load float, ptr @r1p.0, align 8, !tbaa !40
  %1115 = load float, ptr @r1p.1, align 8, !tbaa !39
  %1116 = load float, ptr @r1p.3, align 8, !tbaa !67
  %1117 = fmul float %1115, %1116
  %1118 = tail call float @llvm.fmuladd.f32(float %1114, float %1031, float %1117)
  %1119 = load float, ptr @r1p.2, align 8, !tbaa !37
  %1120 = load float, ptr @r1p.4, align 8, !tbaa !68
  %1121 = tail call float @llvm.fmuladd.f32(float %1119, float %1120, float %1118)
  store float %1116, ptr @r1p.4, align 8, !tbaa !68
  store float %1121, ptr @r1p.3, align 8, !tbaa !67
  %1122 = load float, ptr @glotlast, align 4, !tbaa !22
  %1123 = fsub float %1031, %1122
  %1124 = fadd float %996, %1123
  store float %1031, ptr @glotlast, align 4, !tbaa !22
  br label %1125

1125:                                             ; preds = %1103, %1032, %1113
  %1126 = phi float [ %1124, %1113 ], [ %996, %1032 ], [ %996, %1103 ]
  %1127 = phi float [ %1121, %1113 ], [ 0.000000e+00, %1032 ], [ %1112, %1103 ]
  %1128 = load float, ptr @r6p.0, align 8, !tbaa !40
  %1129 = load float, ptr @r6p.1, align 8, !tbaa !39
  %1130 = load float, ptr @r6p.3, align 8, !tbaa !67
  %1131 = fmul float %1129, %1130
  %1132 = tail call float @llvm.fmuladd.f32(float %1128, float %1126, float %1131)
  %1133 = load float, ptr @r6p.2, align 8, !tbaa !37
  %1134 = load float, ptr @r6p.4, align 8, !tbaa !68
  %1135 = tail call float @llvm.fmuladd.f32(float %1133, float %1134, float %1132)
  store float %1130, ptr @r6p.4, align 8, !tbaa !68
  store float %1135, ptr @r6p.3, align 8, !tbaa !67
  %1136 = fsub float %1135, %1127
  %1137 = load float, ptr @r5p.0, align 8, !tbaa !40
  %1138 = load float, ptr @r5p.1, align 8, !tbaa !39
  %1139 = load float, ptr @r5p.3, align 8, !tbaa !67
  %1140 = fmul float %1138, %1139
  %1141 = tail call float @llvm.fmuladd.f32(float %1137, float %1126, float %1140)
  %1142 = load float, ptr @r5p.2, align 8, !tbaa !37
  %1143 = load float, ptr @r5p.4, align 8, !tbaa !68
  %1144 = tail call float @llvm.fmuladd.f32(float %1142, float %1143, float %1141)
  store float %1139, ptr @r5p.4, align 8, !tbaa !68
  store float %1144, ptr @r5p.3, align 8, !tbaa !67
  %1145 = fsub float %1144, %1136
  %1146 = load float, ptr @r4p.0, align 8, !tbaa !40
  %1147 = load float, ptr @r4p.1, align 8, !tbaa !39
  %1148 = load float, ptr @r4p.3, align 8, !tbaa !67
  %1149 = fmul float %1147, %1148
  %1150 = tail call float @llvm.fmuladd.f32(float %1146, float %1126, float %1149)
  %1151 = load float, ptr @r4p.2, align 8, !tbaa !37
  %1152 = load float, ptr @r4p.4, align 8, !tbaa !68
  %1153 = tail call float @llvm.fmuladd.f32(float %1151, float %1152, float %1150)
  store float %1148, ptr @r4p.4, align 8, !tbaa !68
  store float %1153, ptr @r4p.3, align 8, !tbaa !67
  %1154 = fsub float %1153, %1145
  %1155 = load float, ptr @r3p.0, align 8, !tbaa !40
  %1156 = load float, ptr @r3p.1, align 8, !tbaa !39
  %1157 = load float, ptr @r3p.3, align 8, !tbaa !67
  %1158 = fmul float %1156, %1157
  %1159 = tail call float @llvm.fmuladd.f32(float %1155, float %1126, float %1158)
  %1160 = load float, ptr @r3p.2, align 8, !tbaa !37
  %1161 = load float, ptr @r3p.4, align 8, !tbaa !68
  %1162 = tail call float @llvm.fmuladd.f32(float %1160, float %1161, float %1159)
  store float %1157, ptr @r3p.4, align 8, !tbaa !68
  store float %1162, ptr @r3p.3, align 8, !tbaa !67
  %1163 = fsub float %1162, %1154
  %1164 = load float, ptr @r2p.0, align 8, !tbaa !40
  %1165 = load float, ptr @r2p.1, align 8, !tbaa !39
  %1166 = load float, ptr @r2p.3, align 8, !tbaa !67
  %1167 = fmul float %1165, %1166
  %1168 = tail call float @llvm.fmuladd.f32(float %1164, float %1126, float %1167)
  %1169 = load float, ptr @r2p.2, align 8, !tbaa !37
  %1170 = load float, ptr @r2p.4, align 8, !tbaa !68
  %1171 = tail call float @llvm.fmuladd.f32(float %1169, float %1170, float %1168)
  store float %1166, ptr @r2p.4, align 8, !tbaa !68
  store float %1171, ptr @r2p.3, align 8, !tbaa !67
  %1172 = fsub float %1171, %1163
  %1173 = load float, ptr @amp_bypas, align 4, !tbaa !22
  %1174 = fneg float %1172
  %1175 = tail call float @llvm.fmuladd.f32(float %1173, float %1126, float %1174)
  %1176 = load float, ptr @rout.0, align 8, !tbaa !40
  %1177 = load float, ptr @rout.1, align 8, !tbaa !39
  %1178 = load float, ptr @rout.3, align 8, !tbaa !67
  %1179 = fmul float %1177, %1178
  %1180 = tail call float @llvm.fmuladd.f32(float %1176, float %1175, float %1179)
  %1181 = load float, ptr @rout.2, align 8, !tbaa !37
  %1182 = load float, ptr @rout.4, align 8, !tbaa !68
  %1183 = tail call float @llvm.fmuladd.f32(float %1181, float %1182, float %1180)
  store float %1178, ptr @rout.4, align 8, !tbaa !68
  store float %1183, ptr @rout.3, align 8, !tbaa !67
  %1184 = fptosi float %1183 to i64
  %1185 = icmp slt i64 %1184, -32767
  br i1 %1185, label %1186, label %1192

1186:                                             ; preds = %1125
  %1187 = load i1, ptr @warnsw, align 4
  br i1 %1187, label %1210, label %1188

1188:                                             ; preds = %1186
  %1189 = sub nsw i64 0, %1184
  store i1 true, ptr @warnsw, align 4
  %1190 = load i32, ptr %775, align 4, !tbaa !20
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1199, label %1210

1192:                                             ; preds = %1125
  %1193 = icmp sgt i64 %1184, 32767
  br i1 %1193, label %1194, label %1210

1194:                                             ; preds = %1192
  %1195 = load i1, ptr @warnsw, align 4
  br i1 %1195, label %1210, label %1196

1196:                                             ; preds = %1194
  store i1 true, ptr @warnsw, align 4
  %1197 = load i32, ptr %774, align 4, !tbaa !20
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1210

1199:                                             ; preds = %1196, %1188
  %1200 = phi i64 [ %1189, %1188 ], [ %1184, %1196 ]
  %1201 = phi i64 [ -32767, %1188 ], [ 32767, %1196 ]
  %1202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67)
  %1203 = sitofp i64 %1200 to double
  %1204 = fdiv double %1203, 3.276700e+04
  %1205 = tail call double @log10(double noundef %1204) #9
  %1206 = fmul double %1205, 2.000000e+01
  %1207 = fptrunc double %1206 to float
  %1208 = fpext float %1207 to double
  %1209 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, double noundef %1208)
  br label %1210

1210:                                             ; preds = %1199, %1186, %1188, %1192, %1194, %1196
  %1211 = phi i64 [ %1184, %1192 ], [ -32767, %1186 ], [ -32767, %1188 ], [ 32767, %1194 ], [ 32767, %1196 ], [ %1201, %1199 ]
  %1212 = trunc i64 %1211 to i16
  %1213 = getelementptr inbounds i16, ptr %777, i64 1
  store i16 %1212, ptr %777, align 2, !tbaa !71
  %1214 = add nuw nsw i64 %778, 1
  %1215 = load i64, ptr %761, align 8, !tbaa !65
  %1216 = icmp slt i64 %1214, %1215
  br i1 %1216, label %776, label %1217, !llvm.loop !76

1217:                                             ; preds = %1210, %760
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @parwave_init(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.klatt_global_t, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = mul nsw i64 %3, 950
  %5 = sdiv i64 %4, 10000
  %6 = mul nsw i64 %3, 630
  %7 = sdiv i64 %6, 10000
  %8 = sitofp i64 %3 to double
  %9 = fdiv double 0xC00921FB5A7ED197, %8
  %10 = fptrunc double %9 to float
  store float %10, ptr @minus_pi_t, align 4, !tbaa !22
  %11 = fmul float %10, -2.000000e+00
  store float %11, ptr @two_pi_t, align 4, !tbaa !22
  %12 = sitofp i64 %7 to float
  %13 = fmul float %10, %12
  %14 = fpext float %13 to double
  %15 = tail call double @exp(double noundef %14) #9
  %16 = fptrunc double %15 to float
  %17 = fneg float %16
  %18 = fmul float %17, %16
  store float %18, ptr @rlp.2, align 8, !tbaa !37
  %19 = load float, ptr @two_pi_t, align 4, !tbaa !22
  %20 = sitofp i64 %5 to float
  %21 = fmul float %19, %20
  %22 = fpext float %21 to double
  %23 = fpext float %16 to double
  %24 = tail call double @cos(double noundef %22) #9
  %25 = fmul double %24, %23
  %26 = fmul double %25, 2.000000e+00
  %27 = fptrunc double %26 to float
  store float %27, ptr @rlp.1, align 8, !tbaa !39
  %28 = fpext float %27 to double
  %29 = fsub double 1.000000e+00, %28
  %30 = load float, ptr @rlp.2, align 8, !tbaa !37
  %31 = fpext float %30 to double
  %32 = fsub double %29, %31
  %33 = fptrunc double %32 to float
  store float %33, ptr @rlp.0, align 8, !tbaa !40
  store i64 0, ptr @nper, align 8, !tbaa !17
  store i64 0, ptr @T0, align 8, !tbaa !17
  store float 0.000000e+00, ptr @r1p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r1p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r2p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r2p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r3p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r3p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r4p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r4p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r5p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r5p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r6p.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r6p.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r1c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r1c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r2c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r2c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r3c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r3c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r4c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r4c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r5c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r5c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r6c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r6c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r7c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r7c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @r8c.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @r8c.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @rnpc.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @rnpc.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @rnz.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @rnz.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @rgl.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @rgl.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @rlp.3, align 8, !tbaa !67
  store float 0.000000e+00, ptr @rlp.4, align 8, !tbaa !68
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !22
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !22
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !22
  store i1 false, ptr @warnsw, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = !{!15, !16, i64 0}
!15 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312}
!16 = !{!"long", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!15, !16, i64 8}
!19 = !{!15, !16, i64 144}
!20 = !{!21, !6, i64 4}
!21 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !7, i64 0}
!24 = !{!15, !16, i64 176}
!25 = !{!15, !16, i64 184}
!26 = !{!15, !16, i64 304}
!27 = !{!15, !16, i64 192}
!28 = !{!15, !16, i64 208}
!29 = !{!15, !16, i64 224}
!30 = !{!15, !16, i64 240}
!31 = !{!15, !16, i64 256}
!32 = !{!15, !16, i64 272}
!33 = !{!15, !16, i64 288}
!34 = !{!15, !16, i64 296}
!35 = !{!21, !16, i64 24}
!36 = !{!21, !16, i64 16}
!37 = !{!38, !23, i64 16}
!38 = !{!"", !10, i64 0, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24}
!39 = !{!38, !23, i64 12}
!40 = !{!38, !23, i64 8}
!41 = !{!15, !16, i64 96}
!42 = !{!15, !16, i64 104}
!43 = !{!15, !16, i64 80}
!44 = !{!15, !16, i64 88}
!45 = !{!15, !16, i64 64}
!46 = !{!15, !16, i64 72}
!47 = !{!15, !16, i64 48}
!48 = !{!15, !16, i64 56}
!49 = !{!15, !16, i64 32}
!50 = !{!15, !16, i64 40}
!51 = !{!15, !16, i64 16}
!52 = !{!15, !16, i64 24}
!53 = !{!15, !16, i64 128}
!54 = !{!15, !16, i64 136}
!55 = !{!15, !16, i64 112}
!56 = !{!15, !16, i64 120}
!57 = !{!15, !16, i64 200}
!58 = !{!15, !16, i64 216}
!59 = !{!15, !16, i64 232}
!60 = !{!15, !16, i64 248}
!61 = !{!15, !16, i64 264}
!62 = !{!15, !16, i64 280}
!63 = !{!15, !16, i64 312}
!64 = !{!21, !6, i64 8}
!65 = !{!21, !16, i64 40}
!66 = !{!21, !16, i64 32}
!67 = !{!38, !23, i64 20}
!68 = !{!38, !23, i64 24}
!69 = !{!15, !16, i64 160}
!70 = !{!15, !16, i64 152}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !7, i64 0}
!73 = !{!15, !16, i64 168}
!74 = distinct !{!74, !12}
!75 = !{!21, !6, i64 0}
!76 = distinct !{!76, !12}
