; ModuleID = 'chi2.cpp'
source_filename = "chi2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Illegal values fd=%f and y=%f in chdtri().\00", align 1
@_ZN3povL2P0E = internal constant [5 x double] [double 0xC04DFB4F0E5E142D, double 0x405880119EA1EDD9, double 0xC04C56908806DBBA, double 0x402BDCCE3BD7C1FD, double 0xBFF3D39F8EF6CA7E], align 16
@_ZN3povL2Q0E = internal constant [8 x double] [double 0x3FFF4595D22074F9, double 0x4012B4828417E5B6, double 0x4055970E350B81D4, double 0xC06C2ECE56C2365F, double 0x40690853A8E9CBFF, double 0xC0548261E78DB7D9, double 0x402FCFADC1047563, double 0xBFF2EEDCFABFCDD5], align 16
@_ZN3povL2P1E = internal constant [9 x double] [double 0x401038C79A3C8EDB, double 0x403F866D92D57982, double 0x404C94D742A67FBF, double 0x40460A4E10EE1BA9, double 0x402D5EB293FF463E, double 0x40017E397A6CBFA1, double 0xBFC1F3E9448D9677, double 0xBFA1F115EE6341C7, double 0xBF4C18DE6CCBE78F], align 16
@_ZN3povL2Q1E = internal constant [8 x double] [double 0x402F8F5AA13BD41B, double 0x4046B20489EE296F, double 0x4044A89A228C461C, double 0x402E15C79D87D845, double 0x40040985A83CBA20, double 0xBFC2330CCDDB0232, double 0xBFA37F4E456DB31D, double 0xBF4E94BF797D061E], align 16
@_ZN3povL2P2E = internal constant [9 x double] [double 0x4009E6E8E793D574, double 0x401BA931C327780B, double 0x400F82AEF32BB0AC, double 0x3FF5541C18E79A0C, double 0x3FC9CA45F35E2651, double 0x3F8956509069354D, double 0x3F33C3B2E8CE1812, double 0x3EC64C294C0C2234, double 0x3E3ACCAC30588FF9], align 16
@_ZN3povL2Q2E = internal constant [8 x double] [double 0x401818DA568BE828, double 0x400D704DAAD23816, double 0x3FF608472AAF6200, double 0x3FCBADA75FD63C9B, double 0x3F8B7C27ADB6C78B, double 0x3F357F2B65FF2903, double 0x3EC8438CF3F6CCF7, double 0x3E3D29E5B8766B3D], align 16
@_ZN3povL6sgngamE = internal unnamed_addr global i32 0, align 4
@_ZN3povL1BE = internal constant [6 x double] [double 0xC09589018FF36761, double 0xC0E2F234355BB93E, double 0xC1143D73F89089E5, double 0xC131BC82F994DB51, double 0xC13A45890219F20B, double 0xC12A0C675418055E], align 16
@_ZN3povL1CE = internal constant [7 x double] [double 1.000000e+00, double 0xC075FD0D1CF312B2, double 0xC0D0AA0D7B89D757, double 0xC10AEB84B9744C9B, double 0xC131628671950043, double 0xC1435255892FF34C, double 0xC13ECE4B6A11E14A], align 16
@_ZN3povL1AE = internal constant [5 x double] [double 0x3F4A985027336661, double 0xBF437FBDB580E943, double 0x3F4A019F20DC5EBB, double 0xBF66C16C16B0A5A1, double 0x3FB555555555554B], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov6chdtriEdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt double %1, 0.000000e+00
  %4 = fcmp ogt double %1, 1.000000e+00
  %5 = or i1 %3, %4
  %6 = fcmp olt double %0, 1.000000e+00
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str, double noundef %0, double noundef %1) #8
  br label %14

10:                                               ; preds = %2
  %11 = fmul double %0, 5.000000e-01
  %12 = tail call fastcc noundef double @_ZN3povL5igamiEdd(double noundef %11, double noundef %1) #8
  %13 = fmul double %12, 2.000000e+00
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi double [ 0.000000e+00, %8 ], [ %13, %10 ]
  ret double %15
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL5igamiEdd(double noundef %0, double noundef %1) unnamed_addr #2 !PGOFuncName !34 {
  %3 = fmul double %0, 9.000000e+00
  %4 = fdiv double 1.000000e+00, %3
  %5 = fsub double 1.000000e+00, %4
  %6 = tail call fastcc noundef double @_ZN3povL5ndtriEd(double noundef %1) #8
  %7 = tail call double @sqrt(double noundef %4) #9
  %8 = fneg double %6
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %7, double %5)
  %10 = fmul double %9, %0
  %11 = fmul double %9, %10
  %12 = fmul double %9, %11
  %13 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %0) #8
  %14 = fadd double %0, -1.000000e+00
  %15 = fcmp ugt double %12, 0.000000e+00
  br i1 %15, label %16, label %43

16:                                               ; preds = %2, %40
  %17 = phi double [ %32, %40 ], [ %12, %2 ]
  %18 = phi i32 [ %41, %40 ], [ 0, %2 ]
  %19 = tail call fastcc noundef double @_ZN3povL5igamcEdd(double noundef %0, double noundef %17) #8
  %20 = tail call double @log(double noundef %17) #9
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %14, double %20, double %21)
  %23 = fsub double %22, %13
  %24 = fcmp olt double %23, 0xC05601E678FC457B
  br i1 %24, label %43, label %25

25:                                               ; preds = %16
  %26 = tail call double @exp(double noundef %23) #9
  %27 = fcmp oeq double %26, 0.000000e+00
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = fneg double %26
  %30 = fsub double %19, %1
  %31 = fdiv double %30, %29
  %32 = fsub double %17, %31
  %33 = icmp ult i32 %18, 3
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = fdiv double %31, %32
  %36 = tail call double @llvm.fabs.f64(double %35)
  %37 = fcmp uge double %36, 0x3C80000000000000
  %38 = icmp ult i32 %18, 9
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %43

40:                                               ; preds = %28, %34
  %41 = add nuw nsw i32 %18, 1
  %42 = fcmp ugt double %32, 0.000000e+00
  br i1 %42, label %16, label %43, !llvm.loop !35

43:                                               ; preds = %40, %34, %25, %16, %2
  %44 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %40 ], [ %32, %34 ], [ %17, %25 ], [ %17, %16 ]
  ret double %44
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL5ndtriEd(double noundef %0) unnamed_addr #3 !PGOFuncName !37 {
  %2 = fcmp ugt double %0, 0.000000e+00
  br i1 %2, label %3, label %42

3:                                                ; preds = %1
  %4 = fcmp ult double %0, 1.000000e+00
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = fcmp ogt double %0, 0x3FEBAB5557101F8D
  %7 = fsub double 1.000000e+00, %0
  %8 = select i1 %6, double %7, double %0
  %9 = fcmp ogt double %8, 0x3FC152AAA3BF81CC
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = fadd double %8, -5.000000e-01
  %12 = fmul double %11, %11
  %13 = tail call fastcc noundef double @_ZN3povL6polevlEdPKdi(double noundef %12, ptr noundef nonnull @_ZN3povL2P0E, i32 noundef 4) #8
  %14 = fmul double %12, %13
  %15 = tail call fastcc noundef double @_ZN3povL5p1evlEdPKdi(double noundef %12, ptr noundef nonnull @_ZN3povL2Q0E, i32 noundef 8) #8
  %16 = fdiv double %14, %15
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %16, double %11)
  %18 = fmul double %17, 0x40040D931FF62706
  br label %42

19:                                               ; preds = %5
  %20 = tail call double @log(double noundef %8) #9
  %21 = fmul double %20, -2.000000e+00
  %22 = tail call double @sqrt(double noundef %21) #9
  %23 = tail call double @log(double noundef %22) #9
  %24 = fcmp olt double %22, 8.000000e+00
  %25 = select i1 %24, ptr @_ZN3povL2P1E, ptr @_ZN3povL2P2E
  %26 = select i1 %24, ptr @_ZN3povL2Q1E, ptr @_ZN3povL2Q2E
  %27 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %23, i64 0
  %28 = insertelement <2 x double> poison, double %22, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = fdiv <2 x double> %27, %29
  %31 = extractelement <2 x double> %30, i64 1
  %32 = tail call fastcc noundef double @_ZN3povL6polevlEdPKdi(double noundef %31, ptr noundef nonnull %25, i32 noundef 8) #8
  %33 = tail call fastcc noundef double @_ZN3povL5p1evlEdPKdi(double noundef %31, ptr noundef nonnull %26, i32 noundef 8) #8
  %34 = extractelement <2 x double> %30, i64 1
  %35 = fmul double %32, %34
  %36 = fdiv double %35, %33
  %37 = extractelement <2 x double> %30, i64 0
  %38 = fsub double %22, %37
  %39 = fsub double %38, %36
  %40 = fneg double %39
  %41 = select i1 %6, double %39, double %40
  br label %42

42:                                               ; preds = %3, %1, %19, %10
  %43 = phi double [ %18, %10 ], [ %41, %19 ], [ 0xC7E0000000000000, %1 ], [ 0x47E0000000000000, %3 ]
  ret double %43
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL4lgamEd(double noundef %0) unnamed_addr #2 !PGOFuncName !38 {
  store i32 1, ptr @_ZN3povL6sgngamE, align 4, !tbaa !39
  %2 = fcmp olt double %0, -3.400000e+01
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %4 = fneg double %0
  %5 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %4) #8
  %6 = tail call double @llvm.floor.f64(double %4)
  %7 = fcmp oeq double %6, %4
  br i1 %7, label %68, label %8

8:                                                ; preds = %3
  %9 = fptosi double %6 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -1, i32 1
  store i32 %12, ptr @_ZN3povL6sgngamE, align 4, !tbaa !39
  %13 = fsub double %4, %6
  %14 = fcmp ogt double %13, 5.000000e-01
  %15 = fadd double %6, 1.000000e+00
  %16 = fadd double %15, %0
  %17 = select i1 %14, double %16, double %13
  %18 = fmul double %17, 0x400921FB54442D18
  %19 = tail call double @sin(double noundef %18) #9
  %20 = fmul double %19, %4
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %68, label %22

22:                                               ; preds = %8
  %23 = tail call double @log(double noundef %20) #9
  %24 = fsub double 0x3FF250D048E7A1BD, %23
  %25 = fsub double %24, %5
  br label %92

26:                                               ; preds = %1
  %27 = fcmp olt double %0, 1.300000e+01
  br i1 %27, label %28, label %66

28:                                               ; preds = %26
  %29 = fcmp ult double %0, 3.000000e+00
  br i1 %29, label %30, label %34

30:                                               ; preds = %34, %28
  %31 = phi double [ %0, %28 ], [ %37, %34 ]
  %32 = phi double [ 1.000000e+00, %28 ], [ %38, %34 ]
  %33 = fcmp olt double %31, 2.000000e+00
  br i1 %33, label %40, label %48

34:                                               ; preds = %28, %34
  %35 = phi double [ %38, %34 ], [ 1.000000e+00, %28 ]
  %36 = phi double [ %37, %34 ], [ %0, %28 ]
  %37 = fadd double %36, -1.000000e+00
  %38 = fmul double %35, %37
  %39 = fcmp ult double %37, 3.000000e+00
  br i1 %39, label %30, label %34, !llvm.loop !43

40:                                               ; preds = %30, %44
  %41 = phi double [ %45, %44 ], [ %32, %30 ]
  %42 = phi double [ %46, %44 ], [ %31, %30 ]
  %43 = fcmp oeq double %42, 0.000000e+00
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = fdiv double %41, %42
  %46 = fadd double %42, 1.000000e+00
  %47 = fcmp olt double %46, 2.000000e+00
  br i1 %47, label %40, label %48, !llvm.loop !44

48:                                               ; preds = %44, %30
  %49 = phi double [ %31, %30 ], [ %46, %44 ]
  %50 = phi double [ %32, %30 ], [ %45, %44 ]
  %51 = fcmp olt double %50, 0.000000e+00
  %52 = fneg double %50
  %53 = select i1 %51, i32 -1, i32 1
  %54 = select i1 %51, double %52, double %50
  store i32 %53, ptr @_ZN3povL6sgngamE, align 4
  %55 = fcmp oeq double %49, 2.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = tail call double @log(double noundef %54) #9
  br label %92

58:                                               ; preds = %48
  %59 = fadd double %49, -2.000000e+00
  %60 = tail call fastcc noundef double @_ZN3povL6polevlEdPKdi(double noundef %59, ptr noundef nonnull @_ZN3povL1BE, i32 noundef 5) #8
  %61 = fmul double %59, %60
  %62 = tail call fastcc noundef double @_ZN3povL5p1evlEdPKdi(double noundef %59, ptr noundef nonnull @_ZN3povL1CE, i32 noundef 6) #8
  %63 = fdiv double %61, %62
  %64 = tail call double @log(double noundef %54) #9
  %65 = fadd double %64, %63
  br label %92

66:                                               ; preds = %26
  %67 = fcmp ogt double %0, 0x7F574C5DD06D2516
  br i1 %67, label %68, label %72

68:                                               ; preds = %40, %66, %8, %3
  %69 = load i32, ptr @_ZN3povL6sgngamE, align 4, !tbaa !39
  %70 = sitofp i32 %69 to double
  %71 = fmul double %70, 0x47E0000000000000
  br label %92

72:                                               ; preds = %66
  %73 = fadd double %0, -5.000000e-01
  %74 = tail call double @log(double noundef %0) #9
  %75 = fneg double %0
  %76 = tail call double @llvm.fmuladd.f64(double %73, double %74, double %75)
  %77 = fadd double %76, 0x3FED67F1C864BEB5
  %78 = fcmp ogt double %0, 1.000000e+08
  br i1 %78, label %92, label %79

79:                                               ; preds = %72
  %80 = fmul double %0, %0
  %81 = fdiv double 1.000000e+00, %80
  %82 = fcmp ult double %0, 1.000000e+03
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = tail call double @llvm.fmuladd.f64(double %81, double 0x3F4A01A01A01A01A, double 0xBF66C16C16C16C17)
  %85 = tail call double @llvm.fmuladd.f64(double %84, double %81, double 0x3FB5555555555555)
  br label %88

86:                                               ; preds = %79
  %87 = tail call fastcc noundef double @_ZN3povL6polevlEdPKdi(double noundef %81, ptr noundef nonnull @_ZN3povL1AE, i32 noundef 4) #8
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi double [ %85, %83 ], [ %87, %86 ]
  %90 = fdiv double %89, %0
  %91 = fadd double %77, %90
  br label %92

92:                                               ; preds = %72, %88, %68, %58, %56, %22
  %93 = phi double [ %71, %68 ], [ %25, %22 ], [ %57, %56 ], [ %65, %58 ], [ %91, %88 ], [ %77, %72 ]
  ret double %93
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL5igamcEdd(double noundef %0, double noundef %1) unnamed_addr #2 !PGOFuncName !45 {
  %3 = fcmp ole double %1, 0.000000e+00
  %4 = fcmp ole double %0, 0.000000e+00
  %5 = or i1 %4, %3
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = fcmp olt double %1, 1.000000e+00
  %8 = fcmp olt double %1, %0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call fastcc noundef double @_ZN3povL4igamEdd(double noundef %0, double noundef %1) #8
  %12 = fsub double 1.000000e+00, %11
  br label %70

13:                                               ; preds = %6
  %14 = tail call double @log(double noundef %1) #9
  %15 = fneg double %1
  %16 = tail call double @llvm.fmuladd.f64(double %0, double %14, double %15)
  %17 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %0) #8
  %18 = fsub double %16, %17
  %19 = fcmp olt double %18, 0xC05601E678FC457B
  br i1 %19, label %70, label %20

20:                                               ; preds = %13
  %21 = tail call double @exp(double noundef %18) #9
  %22 = fsub double 1.000000e+00, %0
  %23 = fadd double %22, %1
  %24 = fadd double %23, 1.000000e+00
  %25 = fadd double %1, 1.000000e+00
  %26 = fmul double %24, %1
  %27 = fdiv double %25, %26
  %28 = insertelement <2 x double> poison, double %25, i64 0
  %29 = insertelement <2 x double> %28, double %26, i64 1
  %30 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %1, i64 1
  %31 = insertelement <2 x double> poison, double %24, i64 0
  %32 = insertelement <2 x double> %31, double %22, i64 1
  br label %33

33:                                               ; preds = %57, %20
  %34 = phi double [ 0.000000e+00, %20 ], [ %39, %57 ]
  %35 = phi double [ %27, %20 ], [ %58, %57 ]
  %36 = phi <2 x double> [ %29, %20 ], [ %65, %57 ]
  %37 = phi <2 x double> [ %30, %20 ], [ %66, %57 ]
  %38 = phi <2 x double> [ %32, %20 ], [ %40, %57 ]
  %39 = fadd double %34, 1.000000e+00
  %40 = fadd <2 x double> %38, <double 2.000000e+00, double 1.000000e+00>
  %41 = extractelement <2 x double> %40, i64 1
  %42 = fmul double %41, %39
  %43 = fneg <2 x double> %37
  %44 = insertelement <2 x double> poison, double %42, i64 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x double> %45, %43
  %47 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %47, <2 x double> %46)
  %49 = extractelement <2 x double> %48, i64 1
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %51, label %57

51:                                               ; preds = %33
  %52 = extractelement <2 x double> %48, i64 0
  %53 = fdiv double %52, %49
  %54 = fsub double %35, %53
  %55 = fdiv double %54, %53
  %56 = tail call double @llvm.fabs.f64(double %55)
  br label %57

57:                                               ; preds = %33, %51
  %58 = phi double [ %53, %51 ], [ %35, %33 ]
  %59 = phi double [ %56, %51 ], [ 1.000000e+00, %33 ]
  %60 = extractelement <2 x double> %48, i64 0
  %61 = tail call double @llvm.fabs.f64(double %60)
  %62 = fcmp ogt double %61, 0x4380000000000000
  %63 = fmul <2 x double> %36, <double 0x3C60000000000000, double 0x3C60000000000000>
  %64 = fmul <2 x double> %48, <double 0x3C60000000000000, double 0x3C60000000000000>
  %65 = select i1 %62, <2 x double> %64, <2 x double> %48
  %66 = select i1 %62, <2 x double> %63, <2 x double> %36
  %67 = fcmp ogt double %59, 0x3C70000000000000
  br i1 %67, label %33, label %68, !llvm.loop !46

68:                                               ; preds = %57
  %69 = fmul double %21, %58
  br label %70

70:                                               ; preds = %13, %2, %68, %10
  %71 = phi double [ %12, %10 ], [ %69, %68 ], [ 1.000000e+00, %2 ], [ 0.000000e+00, %13 ]
  ret double %71
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef double @_ZN3povL6polevlEdPKdi(double noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !47 {
  %4 = load double, ptr %1, align 8, !tbaa !48
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi double [ %4, %3 ], [ %11, %5 ]
  %7 = phi i32 [ %2, %3 ], [ %12, %5 ]
  %8 = phi ptr [ %1, %3 ], [ %9, %5 ]
  %9 = getelementptr inbounds double, ptr %8, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = tail call double @llvm.fmuladd.f64(double %6, double %0, double %10)
  %12 = add nsw i32 %7, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !50

14:                                               ; preds = %5
  ret double %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef double @_ZN3povL5p1evlEdPKdi(double noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !51 {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = fadd double %4, %0
  %6 = add nsw i32 %2, -1
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi double [ %5, %3 ], [ %13, %7 ]
  %9 = phi ptr [ %1, %3 ], [ %11, %7 ]
  %10 = phi i32 [ %6, %3 ], [ %14, %7 ]
  %11 = getelementptr inbounds double, ptr %9, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !48
  %13 = tail call double @llvm.fmuladd.f64(double %8, double %0, double %12)
  %14 = add nsw i32 %10, -1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7, !llvm.loop !52

16:                                               ; preds = %7
  ret double %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL4igamEdd(double noundef %0, double noundef %1) unnamed_addr #2 !PGOFuncName !53 {
  %3 = fcmp ole double %1, 0.000000e+00
  %4 = fcmp ole double %0, 0.000000e+00
  %5 = or i1 %4, %3
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt double %1, 1.000000e+00
  %8 = fcmp ogt double %1, %0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call fastcc noundef double @_ZN3povL5igamcEdd(double noundef %0, double noundef %1) #8
  %12 = fsub double 1.000000e+00, %11
  br label %35

13:                                               ; preds = %6
  %14 = tail call double @log(double noundef %1) #9
  %15 = fneg double %1
  %16 = tail call double @llvm.fmuladd.f64(double %0, double %14, double %15)
  %17 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %0) #8
  %18 = fsub double %16, %17
  %19 = fcmp olt double %18, 0xC05601E678FC457B
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = tail call double @exp(double noundef %18) #9
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi double [ 1.000000e+00, %20 ], [ %29, %22 ]
  %24 = phi double [ 1.000000e+00, %20 ], [ %28, %22 ]
  %25 = phi double [ %0, %20 ], [ %26, %22 ]
  %26 = fadd double %25, 1.000000e+00
  %27 = fdiv double %1, %26
  %28 = fmul double %24, %27
  %29 = fadd double %23, %28
  %30 = fdiv double %28, %29
  %31 = fcmp ogt double %30, 0x3C70000000000000
  br i1 %31, label %22, label %32, !llvm.loop !54

32:                                               ; preds = %22
  %33 = fmul double %21, %29
  %34 = fdiv double %33, %0
  br label %35

35:                                               ; preds = %13, %2, %32, %10
  %36 = phi double [ %12, %10 ], [ %34, %32 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %13 ]
  ret double %36
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"chi2.cpp:_ZN3povL5igamiEdd"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"chi2.cpp:_ZN3povL5ndtriEd"}
!38 = !{!"chi2.cpp:_ZN3povL4lgamEd"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = !{!"chi2.cpp:_ZN3povL5igamcEdd"}
!46 = distinct !{!46, !36}
!47 = !{!"chi2.cpp:_ZN3povL6polevlEdPKdi"}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !41, i64 0}
!50 = distinct !{!50, !36}
!51 = !{!"chi2.cpp:_ZN3povL5p1evlEdPKdi"}
!52 = distinct !{!52, !36}
!53 = !{!"chi2.cpp:_ZN3povL4igamEdd"}
!54 = distinct !{!54, !36}
