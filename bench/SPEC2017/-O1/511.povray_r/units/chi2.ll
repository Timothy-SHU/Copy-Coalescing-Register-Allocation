; ModuleID = 'chi2.cpp'
source_filename = "chi2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Illegal values fd=%f and y=%f in chdtri().\00", align 1
@_ZN3povL2P0E = internal unnamed_addr constant [5 x double] [double 0xC04DFB4F0E5E142D, double 0x405880119EA1EDD9, double 0xC04C56908806DBBA, double 0x402BDCCE3BD7C1FD, double 0xBFF3D39F8EF6CA7E], align 16
@_ZN3povL2Q0E = internal unnamed_addr constant [8 x double] [double 0x3FFF4595D22074F9, double 0x4012B4828417E5B6, double 0x4055970E350B81D4, double 0xC06C2ECE56C2365F, double 0x40690853A8E9CBFF, double 0xC0548261E78DB7D9, double 0x402FCFADC1047563, double 0xBFF2EEDCFABFCDD5], align 16
@_ZN3povL2P1E = internal unnamed_addr constant [9 x double] [double 0x401038C79A3C8EDB, double 0x403F866D92D57982, double 0x404C94D742A67FBF, double 0x40460A4E10EE1BA9, double 0x402D5EB293FF463E, double 0x40017E397A6CBFA1, double 0xBFC1F3E9448D9677, double 0xBFA1F115EE6341C7, double 0xBF4C18DE6CCBE78F], align 16
@_ZN3povL2Q1E = internal unnamed_addr constant [8 x double] [double 0x402F8F5AA13BD41B, double 0x4046B20489EE296F, double 0x4044A89A228C461C, double 0x402E15C79D87D845, double 0x40040985A83CBA20, double 0xBFC2330CCDDB0232, double 0xBFA37F4E456DB31D, double 0xBF4E94BF797D061E], align 16
@_ZN3povL2P2E = internal unnamed_addr constant [9 x double] [double 0x4009E6E8E793D574, double 0x401BA931C327780B, double 0x400F82AEF32BB0AC, double 0x3FF5541C18E79A0C, double 0x3FC9CA45F35E2651, double 0x3F8956509069354D, double 0x3F33C3B2E8CE1812, double 0x3EC64C294C0C2234, double 0x3E3ACCAC30588FF9], align 16
@_ZN3povL2Q2E = internal unnamed_addr constant [8 x double] [double 0x401818DA568BE828, double 0x400D704DAAD23816, double 0x3FF608472AAF6200, double 0x3FCBADA75FD63C9B, double 0x3F8B7C27ADB6C78B, double 0x3F357F2B65FF2903, double 0x3EC8438CF3F6CCF7, double 0x3E3D29E5B8766B3D], align 16
@_ZN3povL6sgngamE = internal unnamed_addr global i32 0, align 4
@_ZN3povL1BE = internal unnamed_addr constant [6 x double] [double 0xC09589018FF36761, double 0xC0E2F234355BB93E, double 0xC1143D73F89089E5, double 0xC131BC82F994DB51, double 0xC13A45890219F20B, double 0xC12A0C675418055E], align 16
@_ZN3povL1CE = internal unnamed_addr constant [7 x double] [double 1.000000e+00, double 0xC075FD0D1CF312B2, double 0xC0D0AA0D7B89D757, double 0xC10AEB84B9744C9B, double 0xC131628671950043, double 0xC1435255892FF34C, double 0xC13ECE4B6A11E14A], align 16
@_ZN3povL1AE = internal unnamed_addr constant [5 x double] [double 0x3F4A985027336661, double 0xBF437FBDB580E943, double 0x3F4A019F20DC5EBB, double 0xBF66C16C16B0A5A1, double 0x3FB555555555554B], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov6chdtriEdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt double %1, 0.000000e+00
  %4 = fcmp ogt double %1, 1.000000e+00
  %5 = or i1 %3, %4
  %6 = fcmp olt double %0, 1.000000e+00
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str, double noundef %0, double noundef %1)
  br label %149

10:                                               ; preds = %2
  %11 = fmul double %0, 5.000000e-01
  %12 = fmul double %11, 9.000000e+00
  %13 = fdiv double 1.000000e+00, %12
  %14 = fsub double 1.000000e+00, %13
  %15 = fcmp ugt double %1, 0.000000e+00
  br i1 %15, label %16, label %108

16:                                               ; preds = %10
  %17 = fcmp ult double %1, 1.000000e+00
  br i1 %17, label %18, label %108

18:                                               ; preds = %16
  %19 = fcmp ogt double %1, 0x3FEBAB5557101F8D
  %20 = fsub double 1.000000e+00, %1
  %21 = select i1 %19, double %20, double %1
  %22 = fcmp ogt double %21, 0x3FC152AAA3BF81CC
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = fadd double %21, -5.000000e-01
  %25 = fmul double %24, %24
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi double [ 0xC04DFB4F0E5E142D, %23 ], [ %32, %26 ]
  %28 = phi i32 [ 4, %23 ], [ %33, %26 ]
  %29 = phi ptr [ @_ZN3povL2P0E, %23 ], [ %30, %26 ]
  %30 = getelementptr inbounds double, ptr %29, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !34
  %32 = tail call double @llvm.fmuladd.f64(double %27, double %25, double %31)
  %33 = add nsw i32 %28, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26, !llvm.loop !38

35:                                               ; preds = %26
  %36 = fadd double %25, 0x3FFF4595D22074F9
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi double [ %36, %35 ], [ %43, %37 ]
  %39 = phi ptr [ @_ZN3povL2Q0E, %35 ], [ %41, %37 ]
  %40 = phi i32 [ 7, %35 ], [ %44, %37 ]
  %41 = getelementptr inbounds double, ptr %39, i64 1
  %42 = load double, ptr %41, align 8, !tbaa !34
  %43 = tail call double @llvm.fmuladd.f64(double %38, double %25, double %42)
  %44 = add nsw i32 %40, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %37, !llvm.loop !41

46:                                               ; preds = %37
  %47 = fmul double %25, %32
  %48 = fdiv double %47, %43
  %49 = tail call double @llvm.fmuladd.f64(double %24, double %48, double %24)
  %50 = fmul double %49, 0x40040D931FF62706
  br label %108

51:                                               ; preds = %18
  %52 = tail call double @log(double noundef %21) #6
  %53 = fmul double %52, -2.000000e+00
  %54 = tail call double @sqrt(double noundef %53) #6
  %55 = tail call double @log(double noundef %54) #6
  %56 = fdiv double %55, %54
  %57 = fsub double %54, %56
  %58 = fdiv double 1.000000e+00, %54
  %59 = fcmp olt double %54, 8.000000e+00
  br i1 %59, label %60, label %80

60:                                               ; preds = %51, %60
  %61 = phi double [ %66, %60 ], [ 0x401038C79A3C8EDB, %51 ]
  %62 = phi i32 [ %67, %60 ], [ 8, %51 ]
  %63 = phi ptr [ %64, %60 ], [ @_ZN3povL2P1E, %51 ]
  %64 = getelementptr inbounds double, ptr %63, i64 1
  %65 = load double, ptr %64, align 8, !tbaa !34
  %66 = tail call double @llvm.fmuladd.f64(double %61, double %58, double %65)
  %67 = add nsw i32 %62, -1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %60, !llvm.loop !38

69:                                               ; preds = %60
  %70 = fadd double %58, 0x402F8F5AA13BD41B
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi double [ %70, %69 ], [ %77, %71 ]
  %73 = phi ptr [ @_ZN3povL2Q1E, %69 ], [ %75, %71 ]
  %74 = phi i32 [ 7, %69 ], [ %78, %71 ]
  %75 = getelementptr inbounds double, ptr %73, i64 1
  %76 = load double, ptr %75, align 8, !tbaa !34
  %77 = tail call double @llvm.fmuladd.f64(double %72, double %58, double %76)
  %78 = add nsw i32 %74, -1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %71, !llvm.loop !41

80:                                               ; preds = %51, %80
  %81 = phi double [ %86, %80 ], [ 0x4009E6E8E793D574, %51 ]
  %82 = phi i32 [ %87, %80 ], [ 8, %51 ]
  %83 = phi ptr [ %84, %80 ], [ @_ZN3povL2P2E, %51 ]
  %84 = getelementptr inbounds double, ptr %83, i64 1
  %85 = load double, ptr %84, align 8, !tbaa !34
  %86 = tail call double @llvm.fmuladd.f64(double %81, double %58, double %85)
  %87 = add nsw i32 %82, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %80, !llvm.loop !38

89:                                               ; preds = %80
  %90 = fadd double %58, 0x401818DA568BE828
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi double [ %90, %89 ], [ %97, %91 ]
  %93 = phi ptr [ @_ZN3povL2Q2E, %89 ], [ %95, %91 ]
  %94 = phi i32 [ 7, %89 ], [ %98, %91 ]
  %95 = getelementptr inbounds double, ptr %93, i64 1
  %96 = load double, ptr %95, align 8, !tbaa !34
  %97 = tail call double @llvm.fmuladd.f64(double %92, double %58, double %96)
  %98 = add nsw i32 %94, -1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %91, !llvm.loop !41

100:                                              ; preds = %91, %71
  %101 = phi double [ %66, %71 ], [ %86, %91 ]
  %102 = phi double [ %77, %71 ], [ %97, %91 ]
  %103 = fmul double %58, %101
  %104 = fdiv double %103, %102
  %105 = fsub double %57, %104
  %106 = fneg double %105
  %107 = select i1 %19, double %105, double %106
  br label %108

108:                                              ; preds = %100, %46, %16, %10
  %109 = phi double [ %50, %46 ], [ %107, %100 ], [ 0xC7E0000000000000, %10 ], [ 0x47E0000000000000, %16 ]
  %110 = tail call double @sqrt(double noundef %13) #6
  %111 = fneg double %109
  %112 = tail call double @llvm.fmuladd.f64(double %111, double %110, double %14)
  %113 = fmul double %11, %112
  %114 = fmul double %112, %113
  %115 = fmul double %112, %114
  %116 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %11)
  %117 = fadd double %11, -1.000000e+00
  %118 = fcmp ugt double %115, 0.000000e+00
  br i1 %118, label %119, label %149

119:                                              ; preds = %108, %143
  %120 = phi double [ %135, %143 ], [ %115, %108 ]
  %121 = phi i32 [ %144, %143 ], [ 0, %108 ]
  %122 = tail call fastcc noundef double @_ZN3povL5igamcEdd(double noundef %11, double noundef %120)
  %123 = tail call double @log(double noundef %120) #6
  %124 = fneg double %120
  %125 = tail call double @llvm.fmuladd.f64(double %117, double %123, double %124)
  %126 = fsub double %125, %116
  %127 = fcmp olt double %126, 0xC05601E678FC457B
  br i1 %127, label %146, label %128

128:                                              ; preds = %119
  %129 = tail call double @exp(double noundef %126) #6
  %130 = fcmp oeq double %129, 0.000000e+00
  br i1 %130, label %146, label %131

131:                                              ; preds = %128
  %132 = fneg double %129
  %133 = fsub double %122, %1
  %134 = fdiv double %133, %132
  %135 = fsub double %120, %134
  %136 = icmp ult i32 %121, 3
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = fdiv double %134, %135
  %139 = tail call double @llvm.fabs.f64(double %138)
  %140 = fcmp uge double %139, 0x3C80000000000000
  %141 = icmp ult i32 %121, 9
  %142 = select i1 %140, i1 %141, i1 false
  br i1 %142, label %143, label %146

143:                                              ; preds = %131, %137
  %144 = add nuw nsw i32 %121, 1
  %145 = fcmp ugt double %135, 0.000000e+00
  br i1 %145, label %119, label %146, !llvm.loop !42

146:                                              ; preds = %143, %119, %128, %137
  %147 = phi double [ %135, %137 ], [ %120, %128 ], [ %120, %119 ], [ 0.000000e+00, %143 ]
  %148 = fmul double %147, 2.000000e+00
  br label %149

149:                                              ; preds = %108, %146, %8
  %150 = phi double [ 0.000000e+00, %8 ], [ 0.000000e+00, %108 ], [ %148, %146 ]
  ret double %150
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL4lgamEd(double noundef %0) unnamed_addr #4 {
  store i32 1, ptr @_ZN3povL6sgngamE, align 4, !tbaa !43
  %2 = fcmp olt double %0, -3.400000e+01
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %4 = fneg double %0
  %5 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %4)
  %6 = tail call double @llvm.floor.f64(double %4)
  %7 = fcmp oeq double %6, %4
  br i1 %7, label %89, label %8

8:                                                ; preds = %3
  %9 = fptosi double %6 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -1, i32 1
  store i32 %12, ptr @_ZN3povL6sgngamE, align 4, !tbaa !43
  %13 = fsub double %4, %6
  %14 = fcmp ogt double %13, 5.000000e-01
  %15 = fadd double %6, 1.000000e+00
  %16 = fadd double %15, %0
  %17 = select i1 %14, double %16, double %13
  %18 = fmul double %17, 0x400921FB54442D18
  %19 = tail call double @sin(double noundef %18) #6
  %20 = fmul double %19, %4
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %89, label %22

22:                                               ; preds = %8
  %23 = tail call double @log(double noundef %20) #6
  %24 = fsub double 0x3FF250D048E7A1BD, %23
  %25 = fsub double %24, %5
  br label %120

26:                                               ; preds = %1
  %27 = fcmp olt double %0, 1.300000e+01
  br i1 %27, label %28, label %87

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
  br i1 %39, label %30, label %34, !llvm.loop !45

40:                                               ; preds = %30, %44
  %41 = phi double [ %45, %44 ], [ %32, %30 ]
  %42 = phi double [ %46, %44 ], [ %31, %30 ]
  %43 = fcmp oeq double %42, 0.000000e+00
  br i1 %43, label %89, label %44

44:                                               ; preds = %40
  %45 = fdiv double %41, %42
  %46 = fadd double %42, 1.000000e+00
  %47 = fcmp olt double %46, 2.000000e+00
  br i1 %47, label %40, label %48, !llvm.loop !46

48:                                               ; preds = %44, %30
  %49 = phi double [ %31, %30 ], [ %46, %44 ]
  %50 = phi double [ %32, %30 ], [ %45, %44 ]
  %51 = fcmp olt double %50, 0.000000e+00
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  store i32 -1, ptr @_ZN3povL6sgngamE, align 4, !tbaa !43
  %53 = fneg double %50
  br label %55

54:                                               ; preds = %48
  store i32 1, ptr @_ZN3povL6sgngamE, align 4, !tbaa !43
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi double [ %53, %52 ], [ %50, %54 ]
  %57 = fcmp oeq double %49, 2.000000e+00
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call double @log(double noundef %56) #6
  br label %120

60:                                               ; preds = %55
  %61 = fadd double %49, -2.000000e+00
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi double [ 0xC09589018FF36761, %60 ], [ %68, %62 ]
  %64 = phi i32 [ 5, %60 ], [ %69, %62 ]
  %65 = phi ptr [ @_ZN3povL1BE, %60 ], [ %66, %62 ]
  %66 = getelementptr inbounds double, ptr %65, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !34
  %68 = tail call double @llvm.fmuladd.f64(double %63, double %61, double %67)
  %69 = add nsw i32 %64, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %62, !llvm.loop !38

71:                                               ; preds = %62
  %72 = fadd double %61, 1.000000e+00
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi double [ %72, %71 ], [ %79, %73 ]
  %75 = phi ptr [ @_ZN3povL1CE, %71 ], [ %77, %73 ]
  %76 = phi i32 [ 5, %71 ], [ %80, %73 ]
  %77 = getelementptr inbounds double, ptr %75, i64 1
  %78 = load double, ptr %77, align 8, !tbaa !34
  %79 = tail call double @llvm.fmuladd.f64(double %74, double %61, double %78)
  %80 = add nsw i32 %76, -1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %73, !llvm.loop !41

82:                                               ; preds = %73
  %83 = fmul double %61, %68
  %84 = fdiv double %83, %79
  %85 = tail call double @log(double noundef %56) #6
  %86 = fadd double %84, %85
  br label %120

87:                                               ; preds = %26
  %88 = fcmp ogt double %0, 0x7F574C5DD06D2516
  br i1 %88, label %89, label %93

89:                                               ; preds = %40, %87, %8, %3
  %90 = load i32, ptr @_ZN3povL6sgngamE, align 4, !tbaa !43
  %91 = sitofp i32 %90 to double
  %92 = fmul double %91, 0x47E0000000000000
  br label %120

93:                                               ; preds = %87
  %94 = fadd double %0, -5.000000e-01
  %95 = tail call double @log(double noundef %0) #6
  %96 = fneg double %0
  %97 = tail call double @llvm.fmuladd.f64(double %94, double %95, double %96)
  %98 = fadd double %97, 0x3FED67F1C864BEB5
  %99 = fcmp ogt double %0, 1.000000e+08
  br i1 %99, label %120, label %100

100:                                              ; preds = %93
  %101 = fmul double %0, %0
  %102 = fdiv double 1.000000e+00, %101
  %103 = fcmp ult double %0, 1.000000e+03
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call double @llvm.fmuladd.f64(double %102, double 0x3F4A01A01A01A01A, double 0xBF66C16C16C16C17)
  %106 = tail call double @llvm.fmuladd.f64(double %105, double %102, double 0x3FB5555555555555)
  br label %116

107:                                              ; preds = %100, %107
  %108 = phi double [ %113, %107 ], [ 0x3F4A985027336661, %100 ]
  %109 = phi i32 [ %114, %107 ], [ 4, %100 ]
  %110 = phi ptr [ %111, %107 ], [ @_ZN3povL1AE, %100 ]
  %111 = getelementptr inbounds double, ptr %110, i64 1
  %112 = load double, ptr %111, align 8, !tbaa !34
  %113 = tail call double @llvm.fmuladd.f64(double %108, double %102, double %112)
  %114 = add nsw i32 %109, -1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %107, !llvm.loop !38

116:                                              ; preds = %107, %104
  %117 = phi double [ %106, %104 ], [ %113, %107 ]
  %118 = fdiv double %117, %0
  %119 = fadd double %98, %118
  br label %120

120:                                              ; preds = %93, %116, %89, %82, %58, %22
  %121 = phi double [ %92, %89 ], [ %25, %22 ], [ %59, %58 ], [ %86, %82 ], [ %119, %116 ], [ %98, %93 ]
  ret double %121
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef double @_ZN3povL5igamcEdd(double noundef %0, double noundef %1) unnamed_addr #5 {
  %3 = fcmp ole double %1, 0.000000e+00
  %4 = fcmp ole double %0, 0.000000e+00
  %5 = or i1 %4, %3
  br i1 %5, label %100, label %6

6:                                                ; preds = %2
  %7 = fcmp olt double %1, 1.000000e+00
  %8 = fcmp olt double %1, %0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = fcmp ogt double %1, 1.000000e+00
  %12 = fcmp ogt double %1, %0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call fastcc noundef double @_ZN3povL5igamcEdd(double noundef %0, double noundef %1)
  %16 = fsub double 1.000000e+00, %15
  br label %39

17:                                               ; preds = %10
  %18 = tail call double @log(double noundef %1) #6
  %19 = fneg double %1
  %20 = tail call double @llvm.fmuladd.f64(double %0, double %18, double %19)
  %21 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %0)
  %22 = fsub double %20, %21
  %23 = fcmp olt double %22, 0xC05601E678FC457B
  br i1 %23, label %39, label %24

24:                                               ; preds = %17
  %25 = tail call double @exp(double noundef %22) #6
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi double [ 1.000000e+00, %24 ], [ %33, %26 ]
  %28 = phi double [ 1.000000e+00, %24 ], [ %32, %26 ]
  %29 = phi double [ %0, %24 ], [ %30, %26 ]
  %30 = fadd double %29, 1.000000e+00
  %31 = fdiv double %1, %30
  %32 = fmul double %28, %31
  %33 = fadd double %27, %32
  %34 = fdiv double %32, %33
  %35 = fcmp ogt double %34, 0x3C70000000000000
  br i1 %35, label %26, label %36, !llvm.loop !47

36:                                               ; preds = %26
  %37 = fmul double %25, %33
  %38 = fdiv double %37, %0
  br label %39

39:                                               ; preds = %14, %17, %36
  %40 = phi double [ %16, %14 ], [ %38, %36 ], [ 0.000000e+00, %17 ]
  %41 = fsub double 1.000000e+00, %40
  br label %100

42:                                               ; preds = %6
  %43 = tail call double @log(double noundef %1) #6
  %44 = fneg double %1
  %45 = tail call double @llvm.fmuladd.f64(double %0, double %43, double %44)
  %46 = tail call fastcc noundef double @_ZN3povL4lgamEd(double noundef %0)
  %47 = fsub double %45, %46
  %48 = fcmp olt double %47, 0xC05601E678FC457B
  br i1 %48, label %100, label %49

49:                                               ; preds = %42
  %50 = tail call double @exp(double noundef %47) #6
  %51 = fsub double 1.000000e+00, %0
  %52 = fadd double %51, %1
  %53 = fadd double %52, 1.000000e+00
  %54 = fadd double %1, 1.000000e+00
  %55 = fmul double %53, %1
  %56 = fdiv double %54, %55
  br label %57

57:                                               ; preds = %92, %49
  %58 = phi double [ %51, %49 ], [ %67, %92 ]
  %59 = phi double [ %53, %49 ], [ %68, %92 ]
  %60 = phi double [ 0.000000e+00, %49 ], [ %66, %92 ]
  %61 = phi double [ %54, %49 ], [ %93, %92 ]
  %62 = phi double [ 1.000000e+00, %49 ], [ %94, %92 ]
  %63 = phi double [ %56, %49 ], [ %83, %92 ]
  %64 = phi double [ %55, %49 ], [ %95, %92 ]
  %65 = phi double [ %1, %49 ], [ %96, %92 ]
  %66 = fadd double %60, 1.000000e+00
  %67 = fadd double %58, 1.000000e+00
  %68 = fadd double %59, 2.000000e+00
  %69 = fmul double %67, %66
  %70 = fneg double %62
  %71 = fmul double %69, %70
  %72 = tail call double @llvm.fmuladd.f64(double %61, double %68, double %71)
  %73 = fneg double %65
  %74 = fmul double %69, %73
  %75 = tail call double @llvm.fmuladd.f64(double %64, double %68, double %74)
  %76 = fcmp une double %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %57
  %78 = fdiv double %72, %75
  %79 = fsub double %63, %78
  %80 = fdiv double %79, %78
  %81 = tail call double @llvm.fabs.f64(double %80)
  br label %82

82:                                               ; preds = %57, %77
  %83 = phi double [ %78, %77 ], [ %63, %57 ]
  %84 = phi double [ %81, %77 ], [ 1.000000e+00, %57 ]
  %85 = tail call double @llvm.fabs.f64(double %72)
  %86 = fcmp ogt double %85, 0x4380000000000000
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = fmul double %61, 0x3C60000000000000
  %89 = fmul double %72, 0x3C60000000000000
  %90 = fmul double %64, 0x3C60000000000000
  %91 = fmul double %75, 0x3C60000000000000
  br label %92

92:                                               ; preds = %82, %87
  %93 = phi double [ %89, %87 ], [ %72, %82 ]
  %94 = phi double [ %88, %87 ], [ %61, %82 ]
  %95 = phi double [ %91, %87 ], [ %75, %82 ]
  %96 = phi double [ %90, %87 ], [ %64, %82 ]
  %97 = fcmp ogt double %84, 0x3C70000000000000
  br i1 %97, label %57, label %98, !llvm.loop !48

98:                                               ; preds = %92
  %99 = fmul double %50, %83
  br label %100

100:                                              ; preds = %42, %2, %98, %39
  %101 = phi double [ %41, %39 ], [ %99, %98 ], [ 1.000000e+00, %2 ], [ 0.000000e+00, %42 ]
  ret double %101
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !36, i64 0}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
