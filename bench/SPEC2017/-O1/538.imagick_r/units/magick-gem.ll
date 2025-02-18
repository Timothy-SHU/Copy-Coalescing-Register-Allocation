; ModuleID = 'magick/gem.c'
source_filename = "magick/gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._AffineMatrix = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"magick/gem.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertHCLToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #11
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fadd double %39, %44
  %46 = fmul double %45, 6.553500e+04
  %47 = fptrunc double %46 to float
  %48 = fcmp ugt float %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = fcmp ult float %47, 6.553500e+04
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = fadd float %47, 5.000000e-01
  %53 = fptoui float %52 to i16
  br label %54

54:                                               ; preds = %37, %49, %51
  %55 = phi i16 [ %53, %51 ], [ 0, %37 ], [ -1, %49 ]
  store i16 %55, ptr %3, align 2, !tbaa !34
  %56 = fadd double %38, %44
  %57 = fmul double %56, 6.553500e+04
  %58 = fptrunc double %57 to float
  %59 = fcmp ugt float %58, 0.000000e+00
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = fcmp ult float %58, 6.553500e+04
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = fadd float %58, 5.000000e-01
  %64 = fptoui float %63 to i16
  br label %65

65:                                               ; preds = %54, %60, %62
  %66 = phi i16 [ %64, %62 ], [ 0, %54 ], [ -1, %60 ]
  store i16 %66, ptr %4, align 2, !tbaa !34
  %67 = fadd double %40, %44
  %68 = fmul double %67, 6.553500e+04
  %69 = fptrunc double %68 to float
  %70 = fcmp ugt float %69, 0.000000e+00
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = fcmp ult float %69, 6.553500e+04
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = fadd float %69, 5.000000e-01
  %75 = fptoui float %74 to i16
  br label %76

76:                                               ; preds = %65, %71, %73
  %77 = phi i16 [ %75, %73 ], [ 0, %65 ], [ -1, %71 ]
  store i16 %77, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertHCLpToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 6.000000e+00
  %8 = tail call double @fmod(double noundef %7, double noundef 2.000000e+00) #11
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fmul double %11, %1
  %13 = fcmp oge double %7, 0.000000e+00
  %14 = fcmp olt double %7, 1.000000e+00
  %15 = and i1 %13, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = fcmp oge double %7, 1.000000e+00
  %18 = fcmp olt double %7, 2.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = fcmp oge double %7, 2.000000e+00
  %22 = fcmp olt double %7, 3.000000e+00
  %23 = and i1 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %7, 3.000000e+00
  %26 = fcmp olt double %7, 4.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = fcmp oge double %7, 4.000000e+00
  %30 = fcmp olt double %7, 5.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = fcmp oge double %7, 5.000000e+00
  %34 = fcmp olt double %7, 6.000000e+00
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %28, %24, %20, %16, %6, %32, %36
  %38 = phi double [ 0.000000e+00, %36 ], [ 0.000000e+00, %32 ], [ %12, %6 ], [ %1, %16 ], [ %1, %20 ], [ %12, %24 ], [ 0.000000e+00, %28 ]
  %39 = phi double [ %1, %36 ], [ 0.000000e+00, %32 ], [ %1, %6 ], [ %12, %16 ], [ 0.000000e+00, %20 ], [ 0.000000e+00, %24 ], [ %12, %28 ]
  %40 = phi double [ %12, %36 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %16 ], [ %12, %20 ], [ %1, %24 ], [ %1, %28 ]
  %41 = fmul double %38, 5.868110e-01
  %42 = tail call double @llvm.fmuladd.f64(double %39, double 2.988390e-01, double %41)
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 1.143500e-01, double %42)
  %44 = fsub double %2, %43
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = fsub double %2, %44
  %48 = fdiv double %2, %47
  br label %58

49:                                               ; preds = %37
  %50 = fadd double %44, %1
  %51 = fcmp ogt double %50, 1.000000e+00
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = fsub double 1.000000e+00, %2
  %54 = fsub double %50, %2
  %55 = fdiv double %53, %54
  %56 = fneg double %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %1, double 1.000000e+00)
  br label %58

58:                                               ; preds = %49, %52, %46
  %59 = phi double [ 0.000000e+00, %46 ], [ %57, %52 ], [ %44, %49 ]
  %60 = phi double [ %48, %46 ], [ %55, %52 ], [ 1.000000e+00, %49 ]
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %39, double %59)
  %62 = fmul double %61, 6.553500e+04
  %63 = fptrunc double %62 to float
  %64 = fcmp ugt float %63, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = fcmp ult float %63, 6.553500e+04
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = fadd float %63, 5.000000e-01
  %69 = fptoui float %68 to i16
  br label %70

70:                                               ; preds = %58, %65, %67
  %71 = phi i16 [ %69, %67 ], [ 0, %58 ], [ -1, %65 ]
  store i16 %71, ptr %3, align 2, !tbaa !34
  %72 = tail call double @llvm.fmuladd.f64(double %60, double %38, double %59)
  %73 = fmul double %72, 6.553500e+04
  %74 = fptrunc double %73 to float
  %75 = fcmp ugt float %74, 0.000000e+00
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = fcmp ult float %74, 6.553500e+04
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = fadd float %74, 5.000000e-01
  %80 = fptoui float %79 to i16
  br label %81

81:                                               ; preds = %70, %76, %78
  %82 = phi i16 [ %80, %78 ], [ 0, %70 ], [ -1, %76 ]
  store i16 %82, ptr %4, align 2, !tbaa !34
  %83 = tail call double @llvm.fmuladd.f64(double %60, double %40, double %59)
  %84 = fmul double %83, 6.553500e+04
  %85 = fptrunc double %84 to float
  %86 = fcmp ugt float %85, 0.000000e+00
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = fcmp ult float %85, 6.553500e+04
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = fadd float %85, 5.000000e-01
  %91 = fptoui float %90 to i16
  br label %92

92:                                               ; preds = %81, %87, %89
  %93 = phi i16 [ %91, %89 ], [ 0, %81 ], [ -1, %87 ]
  store i16 %93, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertHSBToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = fcmp oeq double %1, 0.000000e+00
  br i1 %7, label %8, label %20

8:                                                ; preds = %6
  %9 = fmul double %2, 6.553500e+04
  %10 = fptrunc double %9 to float
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = fcmp ult float %10, 6.553500e+04
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = fadd float %10, 5.000000e-01
  %16 = fptoui float %15 to i16
  br label %17

17:                                               ; preds = %8, %12, %14
  %18 = phi i16 [ %16, %14 ], [ 0, %8 ], [ -1, %12 ]
  store i16 %18, ptr %3, align 2, !tbaa !34
  store i16 %18, ptr %4, align 2, !tbaa !34
  %19 = load i16, ptr %3, align 2, !tbaa !34
  br label %209

20:                                               ; preds = %6
  %21 = tail call double @llvm.floor.f64(double %0)
  %22 = fsub double %0, %21
  %23 = fmul double %22, 6.000000e+00
  %24 = tail call double @llvm.floor.f64(double %23)
  %25 = fsub double %23, %24
  %26 = fsub double 1.000000e+00, %1
  %27 = fmul double %26, %2
  %28 = fneg double %1
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %25, double 1.000000e+00)
  %30 = fmul double %29, %2
  %31 = fsub double 1.000000e+00, %25
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %31, double 1.000000e+00)
  %33 = fmul double %32, %2
  %34 = fptosi double %23 to i32
  switch i32 %34, label %35 [
    i32 5, label %180
    i32 1, label %64
    i32 2, label %93
    i32 3, label %122
    i32 4, label %151
  ]

35:                                               ; preds = %20
  %36 = fmul double %2, 6.553500e+04
  %37 = fptrunc double %36 to float
  %38 = fcmp ugt float %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = fcmp ult float %37, 6.553500e+04
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = fadd float %37, 5.000000e-01
  %43 = fptoui float %42 to i16
  br label %44

44:                                               ; preds = %35, %39, %41
  %45 = phi i16 [ %43, %41 ], [ 0, %35 ], [ -1, %39 ]
  store i16 %45, ptr %3, align 2, !tbaa !34
  %46 = fmul double %33, 6.553500e+04
  %47 = fptrunc double %46 to float
  %48 = fcmp ugt float %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = fcmp ult float %47, 6.553500e+04
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = fadd float %47, 5.000000e-01
  %53 = fptoui float %52 to i16
  br label %54

54:                                               ; preds = %44, %49, %51
  %55 = phi i16 [ %53, %51 ], [ 0, %44 ], [ -1, %49 ]
  store i16 %55, ptr %4, align 2, !tbaa !34
  %56 = fmul double %27, 6.553500e+04
  %57 = fptrunc double %56 to float
  %58 = fcmp ugt float %57, 0.000000e+00
  br i1 %58, label %59, label %209

59:                                               ; preds = %54
  %60 = fcmp ult float %57, 6.553500e+04
  br i1 %60, label %61, label %209

61:                                               ; preds = %59
  %62 = fadd float %57, 5.000000e-01
  %63 = fptoui float %62 to i16
  br label %209

64:                                               ; preds = %20
  %65 = fmul double %30, 6.553500e+04
  %66 = fptrunc double %65 to float
  %67 = fcmp ugt float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = fcmp ult float %66, 6.553500e+04
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = fadd float %66, 5.000000e-01
  %72 = fptoui float %71 to i16
  br label %73

73:                                               ; preds = %64, %68, %70
  %74 = phi i16 [ %72, %70 ], [ 0, %64 ], [ -1, %68 ]
  store i16 %74, ptr %3, align 2, !tbaa !34
  %75 = fmul double %2, 6.553500e+04
  %76 = fptrunc double %75 to float
  %77 = fcmp ugt float %76, 0.000000e+00
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = fcmp ult float %76, 6.553500e+04
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = fadd float %76, 5.000000e-01
  %82 = fptoui float %81 to i16
  br label %83

83:                                               ; preds = %73, %78, %80
  %84 = phi i16 [ %82, %80 ], [ 0, %73 ], [ -1, %78 ]
  store i16 %84, ptr %4, align 2, !tbaa !34
  %85 = fmul double %27, 6.553500e+04
  %86 = fptrunc double %85 to float
  %87 = fcmp ugt float %86, 0.000000e+00
  br i1 %87, label %88, label %209

88:                                               ; preds = %83
  %89 = fcmp ult float %86, 6.553500e+04
  br i1 %89, label %90, label %209

90:                                               ; preds = %88
  %91 = fadd float %86, 5.000000e-01
  %92 = fptoui float %91 to i16
  br label %209

93:                                               ; preds = %20
  %94 = fmul double %27, 6.553500e+04
  %95 = fptrunc double %94 to float
  %96 = fcmp ugt float %95, 0.000000e+00
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = fcmp ult float %95, 6.553500e+04
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = fadd float %95, 5.000000e-01
  %101 = fptoui float %100 to i16
  br label %102

102:                                              ; preds = %93, %97, %99
  %103 = phi i16 [ %101, %99 ], [ 0, %93 ], [ -1, %97 ]
  store i16 %103, ptr %3, align 2, !tbaa !34
  %104 = fmul double %2, 6.553500e+04
  %105 = fptrunc double %104 to float
  %106 = fcmp ugt float %105, 0.000000e+00
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = fcmp ult float %105, 6.553500e+04
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = fadd float %105, 5.000000e-01
  %111 = fptoui float %110 to i16
  br label %112

112:                                              ; preds = %102, %107, %109
  %113 = phi i16 [ %111, %109 ], [ 0, %102 ], [ -1, %107 ]
  store i16 %113, ptr %4, align 2, !tbaa !34
  %114 = fmul double %33, 6.553500e+04
  %115 = fptrunc double %114 to float
  %116 = fcmp ugt float %115, 0.000000e+00
  br i1 %116, label %117, label %209

117:                                              ; preds = %112
  %118 = fcmp ult float %115, 6.553500e+04
  br i1 %118, label %119, label %209

119:                                              ; preds = %117
  %120 = fadd float %115, 5.000000e-01
  %121 = fptoui float %120 to i16
  br label %209

122:                                              ; preds = %20
  %123 = fmul double %27, 6.553500e+04
  %124 = fptrunc double %123 to float
  %125 = fcmp ugt float %124, 0.000000e+00
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = fcmp ult float %124, 6.553500e+04
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = fadd float %124, 5.000000e-01
  %130 = fptoui float %129 to i16
  br label %131

131:                                              ; preds = %122, %126, %128
  %132 = phi i16 [ %130, %128 ], [ 0, %122 ], [ -1, %126 ]
  store i16 %132, ptr %3, align 2, !tbaa !34
  %133 = fmul double %30, 6.553500e+04
  %134 = fptrunc double %133 to float
  %135 = fcmp ugt float %134, 0.000000e+00
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = fcmp ult float %134, 6.553500e+04
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = fadd float %134, 5.000000e-01
  %140 = fptoui float %139 to i16
  br label %141

141:                                              ; preds = %131, %136, %138
  %142 = phi i16 [ %140, %138 ], [ 0, %131 ], [ -1, %136 ]
  store i16 %142, ptr %4, align 2, !tbaa !34
  %143 = fmul double %2, 6.553500e+04
  %144 = fptrunc double %143 to float
  %145 = fcmp ugt float %144, 0.000000e+00
  br i1 %145, label %146, label %209

146:                                              ; preds = %141
  %147 = fcmp ult float %144, 6.553500e+04
  br i1 %147, label %148, label %209

148:                                              ; preds = %146
  %149 = fadd float %144, 5.000000e-01
  %150 = fptoui float %149 to i16
  br label %209

151:                                              ; preds = %20
  %152 = fmul double %33, 6.553500e+04
  %153 = fptrunc double %152 to float
  %154 = fcmp ugt float %153, 0.000000e+00
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = fcmp ult float %153, 6.553500e+04
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = fadd float %153, 5.000000e-01
  %159 = fptoui float %158 to i16
  br label %160

160:                                              ; preds = %151, %155, %157
  %161 = phi i16 [ %159, %157 ], [ 0, %151 ], [ -1, %155 ]
  store i16 %161, ptr %3, align 2, !tbaa !34
  %162 = fmul double %27, 6.553500e+04
  %163 = fptrunc double %162 to float
  %164 = fcmp ugt float %163, 0.000000e+00
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = fcmp ult float %163, 6.553500e+04
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = fadd float %163, 5.000000e-01
  %169 = fptoui float %168 to i16
  br label %170

170:                                              ; preds = %160, %165, %167
  %171 = phi i16 [ %169, %167 ], [ 0, %160 ], [ -1, %165 ]
  store i16 %171, ptr %4, align 2, !tbaa !34
  %172 = fmul double %2, 6.553500e+04
  %173 = fptrunc double %172 to float
  %174 = fcmp ugt float %173, 0.000000e+00
  br i1 %174, label %175, label %209

175:                                              ; preds = %170
  %176 = fcmp ult float %173, 6.553500e+04
  br i1 %176, label %177, label %209

177:                                              ; preds = %175
  %178 = fadd float %173, 5.000000e-01
  %179 = fptoui float %178 to i16
  br label %209

180:                                              ; preds = %20
  %181 = fmul double %2, 6.553500e+04
  %182 = fptrunc double %181 to float
  %183 = fcmp ugt float %182, 0.000000e+00
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = fcmp ult float %182, 6.553500e+04
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = fadd float %182, 5.000000e-01
  %188 = fptoui float %187 to i16
  br label %189

189:                                              ; preds = %180, %184, %186
  %190 = phi i16 [ %188, %186 ], [ 0, %180 ], [ -1, %184 ]
  store i16 %190, ptr %3, align 2, !tbaa !34
  %191 = fmul double %27, 6.553500e+04
  %192 = fptrunc double %191 to float
  %193 = fcmp ugt float %192, 0.000000e+00
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = fcmp ult float %192, 6.553500e+04
  br i1 %195, label %196, label %199

196:                                              ; preds = %194
  %197 = fadd float %192, 5.000000e-01
  %198 = fptoui float %197 to i16
  br label %199

199:                                              ; preds = %189, %194, %196
  %200 = phi i16 [ %198, %196 ], [ 0, %189 ], [ -1, %194 ]
  store i16 %200, ptr %4, align 2, !tbaa !34
  %201 = fmul double %30, 6.553500e+04
  %202 = fptrunc double %201 to float
  %203 = fcmp ugt float %202, 0.000000e+00
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = fcmp ult float %202, 6.553500e+04
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = fadd float %202, 5.000000e-01
  %208 = fptoui float %207 to i16
  br label %209

209:                                              ; preds = %206, %204, %199, %177, %175, %170, %148, %146, %141, %119, %117, %112, %90, %88, %83, %61, %59, %54, %17
  %210 = phi i16 [ %19, %17 ], [ %63, %61 ], [ 0, %54 ], [ -1, %59 ], [ %92, %90 ], [ 0, %83 ], [ -1, %88 ], [ %121, %119 ], [ 0, %112 ], [ -1, %117 ], [ %150, %148 ], [ 0, %141 ], [ -1, %146 ], [ %179, %177 ], [ 0, %170 ], [ -1, %175 ], [ %208, %206 ], [ 0, %199 ], [ -1, %204 ]
  store i16 %210, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertHSIToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fdiv double %7, 3.600000e+02
  %9 = tail call double @llvm.floor.f64(double %8)
  %10 = tail call double @llvm.fmuladd.f64(double %9, double -3.600000e+02, double %7)
  %11 = fcmp olt double %10, 1.200000e+02
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = fsub double 1.000000e+00, %1
  %14 = fmul double %13, %2
  %15 = fmul double %10, 0x3F91DF46A2529D39
  %16 = tail call double @cos(double noundef %15) #11
  %17 = fmul double %16, %1
  %18 = fsub double 6.000000e+01, %10
  %19 = fmul double %18, 0x3F91DF46A2529D39
  %20 = tail call double @cos(double noundef %19) #11
  %21 = fdiv double %17, %20
  %22 = fadd double %21, 1.000000e+00
  %23 = fmul double %22, %2
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double %24)
  %26 = fsub double %25, %14
  br label %57

27:                                               ; preds = %6
  %28 = fcmp olt double %10, 2.400000e+02
  %29 = fsub double 1.000000e+00, %1
  %30 = fmul double %29, %2
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double %31)
  br i1 %28, label %33, label %45

33:                                               ; preds = %27
  %34 = fadd double %10, -1.200000e+02
  %35 = fmul double %34, 0x3F91DF46A2529D39
  %36 = tail call double @cos(double noundef %35) #11
  %37 = fmul double %36, %1
  %38 = fsub double 6.000000e+01, %34
  %39 = fmul double %38, 0x3F91DF46A2529D39
  %40 = tail call double @cos(double noundef %39) #11
  %41 = fdiv double %37, %40
  %42 = fadd double %41, 1.000000e+00
  %43 = fmul double %42, %2
  %44 = fsub double %32, %43
  br label %57

45:                                               ; preds = %27
  %46 = fadd double %10, -2.400000e+02
  %47 = fmul double %46, 0x3F91DF46A2529D39
  %48 = tail call double @cos(double noundef %47) #11
  %49 = fmul double %48, %1
  %50 = fsub double 6.000000e+01, %46
  %51 = fmul double %50, 0x3F91DF46A2529D39
  %52 = tail call double @cos(double noundef %51) #11
  %53 = fdiv double %49, %52
  %54 = fadd double %53, 1.000000e+00
  %55 = fmul double %54, %2
  %56 = fsub double %32, %55
  br label %57

57:                                               ; preds = %33, %45, %12
  %58 = phi double [ %14, %12 ], [ %44, %33 ], [ %55, %45 ]
  %59 = phi double [ %26, %12 ], [ %43, %33 ], [ %30, %45 ]
  %60 = phi double [ %23, %12 ], [ %30, %33 ], [ %56, %45 ]
  %61 = fmul double %60, 6.553500e+04
  %62 = fptrunc double %61 to float
  %63 = fcmp ugt float %62, 0.000000e+00
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = fcmp ult float %62, 6.553500e+04
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = fadd float %62, 5.000000e-01
  %68 = fptoui float %67 to i16
  br label %69

69:                                               ; preds = %57, %64, %66
  %70 = phi i16 [ %68, %66 ], [ 0, %57 ], [ -1, %64 ]
  store i16 %70, ptr %3, align 2, !tbaa !34
  %71 = fmul double %59, 6.553500e+04
  %72 = fptrunc double %71 to float
  %73 = fcmp ugt float %72, 0.000000e+00
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = fcmp ult float %72, 6.553500e+04
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = fadd float %72, 5.000000e-01
  %78 = fptoui float %77 to i16
  br label %79

79:                                               ; preds = %69, %74, %76
  %80 = phi i16 [ %78, %76 ], [ 0, %69 ], [ -1, %74 ]
  store i16 %80, ptr %4, align 2, !tbaa !34
  %81 = fmul double %58, 6.553500e+04
  %82 = fptrunc double %81 to float
  %83 = fcmp ugt float %82, 0.000000e+00
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = fcmp ult float %82, 6.553500e+04
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = fadd float %82, 5.000000e-01
  %88 = fptoui float %87 to i16
  br label %89

89:                                               ; preds = %79, %84, %86
  %90 = phi i16 [ %88, %86 ], [ 0, %79 ], [ -1, %84 ]
  store i16 %90, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHSLToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fcmp ugt double %2, 5.000000e-01
  %9 = fmul double %2, 2.000000e+00
  %10 = tail call double @llvm.fmuladd.f64(double %2, double -2.000000e+00, double 2.000000e+00)
  %11 = select i1 %8, double %10, double %9
  %12 = fmul double %11, %1
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -5.000000e-01, double %2)
  %14 = fdiv double %7, 3.600000e+02
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double -3.600000e+02, double %7)
  %17 = fdiv double %16, 6.000000e+01
  %18 = fmul double %17, 5.000000e-01
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double -2.000000e+00, double %17)
  %21 = fadd double %20, -1.000000e+00
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fsub double 1.000000e+00, %22
  %24 = fmul double %12, %23
  %25 = tail call double @llvm.floor.f64(double %17)
  %26 = fptosi double %25 to i32
  switch i32 %26, label %45 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
    i32 4, label %39
    i32 5, label %42
  ]

27:                                               ; preds = %6
  %28 = fadd double %12, %13
  %29 = fadd double %13, %24
  br label %45

30:                                               ; preds = %6
  %31 = fadd double %13, %24
  %32 = fadd double %12, %13
  br label %45

33:                                               ; preds = %6
  %34 = fadd double %12, %13
  %35 = fadd double %13, %24
  br label %45

36:                                               ; preds = %6
  %37 = fadd double %13, %24
  %38 = fadd double %12, %13
  br label %45

39:                                               ; preds = %6
  %40 = fadd double %13, %24
  %41 = fadd double %12, %13
  br label %45

42:                                               ; preds = %6
  %43 = fadd double %12, %13
  %44 = fadd double %13, %24
  br label %45

45:                                               ; preds = %6, %42, %39, %36, %33, %30, %27
  %46 = phi double [ %13, %42 ], [ %13, %39 ], [ %37, %36 ], [ %34, %33 ], [ %32, %30 ], [ %29, %27 ], [ 0.000000e+00, %6 ]
  %47 = phi double [ %43, %42 ], [ %40, %39 ], [ %13, %36 ], [ %13, %33 ], [ %31, %30 ], [ %28, %27 ], [ 0.000000e+00, %6 ]
  %48 = phi double [ %44, %42 ], [ %41, %39 ], [ %38, %36 ], [ %35, %33 ], [ %13, %30 ], [ %13, %27 ], [ 0.000000e+00, %6 ]
  %49 = fmul double %47, 6.553500e+04
  %50 = fptrunc double %49 to float
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = fcmp ult float %50, 6.553500e+04
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = fadd float %50, 5.000000e-01
  %56 = fptoui float %55 to i16
  br label %57

57:                                               ; preds = %45, %52, %54
  %58 = phi i16 [ %56, %54 ], [ 0, %45 ], [ -1, %52 ]
  store i16 %58, ptr %3, align 2, !tbaa !34
  %59 = fmul double %46, 6.553500e+04
  %60 = fptrunc double %59 to float
  %61 = fcmp ugt float %60, 0.000000e+00
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = fcmp ult float %60, 6.553500e+04
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = fadd float %60, 5.000000e-01
  %66 = fptoui float %65 to i16
  br label %67

67:                                               ; preds = %57, %62, %64
  %68 = phi i16 [ %66, %64 ], [ 0, %57 ], [ -1, %62 ]
  store i16 %68, ptr %4, align 2, !tbaa !34
  %69 = fmul double %48, 6.553500e+04
  %70 = fptrunc double %69 to float
  %71 = fcmp ugt float %70, 0.000000e+00
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = fcmp ult float %70, 6.553500e+04
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = fadd float %70, 5.000000e-01
  %76 = fptoui float %75 to i16
  br label %77

77:                                               ; preds = %67, %72, %74
  %78 = phi i16 [ %76, %74 ], [ 0, %67 ], [ -1, %72 ]
  store i16 %78, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHSVToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = fmul double %0, 3.600000e+02
  %8 = fmul double %1, %2
  %9 = fsub double %2, %8
  %10 = fdiv double %7, 3.600000e+02
  %11 = tail call double @llvm.floor.f64(double %10)
  %12 = tail call double @llvm.fmuladd.f64(double %11, double -3.600000e+02, double %7)
  %13 = fdiv double %12, 6.000000e+01
  %14 = fmul double %13, 5.000000e-01
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %13)
  %17 = fadd double %16, -1.000000e+00
  %18 = tail call double @llvm.fabs.f64(double %17)
  %19 = fsub double 1.000000e+00, %18
  %20 = fmul double %8, %19
  %21 = tail call double @llvm.floor.f64(double %13)
  %22 = fptosi double %21 to i32
  switch i32 %22, label %41 [
    i32 0, label %23
    i32 1, label %26
    i32 2, label %29
    i32 3, label %32
    i32 4, label %35
    i32 5, label %38
  ]

23:                                               ; preds = %6
  %24 = fadd double %8, %9
  %25 = fadd double %9, %20
  br label %41

26:                                               ; preds = %6
  %27 = fadd double %9, %20
  %28 = fadd double %8, %9
  br label %41

29:                                               ; preds = %6
  %30 = fadd double %8, %9
  %31 = fadd double %9, %20
  br label %41

32:                                               ; preds = %6
  %33 = fadd double %9, %20
  %34 = fadd double %8, %9
  br label %41

35:                                               ; preds = %6
  %36 = fadd double %9, %20
  %37 = fadd double %8, %9
  br label %41

38:                                               ; preds = %6
  %39 = fadd double %8, %9
  %40 = fadd double %9, %20
  br label %41

41:                                               ; preds = %6, %38, %35, %32, %29, %26, %23
  %42 = phi double [ %9, %38 ], [ %9, %35 ], [ %33, %32 ], [ %30, %29 ], [ %28, %26 ], [ %25, %23 ], [ 0.000000e+00, %6 ]
  %43 = phi double [ %39, %38 ], [ %36, %35 ], [ %9, %32 ], [ %9, %29 ], [ %27, %26 ], [ %24, %23 ], [ 0.000000e+00, %6 ]
  %44 = phi double [ %40, %38 ], [ %37, %35 ], [ %34, %32 ], [ %31, %29 ], [ %9, %26 ], [ %9, %23 ], [ 0.000000e+00, %6 ]
  %45 = fmul double %43, 6.553500e+04
  %46 = fptrunc double %45 to float
  %47 = fcmp ugt float %46, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = fcmp ult float %46, 6.553500e+04
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = fadd float %46, 5.000000e-01
  %52 = fptoui float %51 to i16
  br label %53

53:                                               ; preds = %41, %48, %50
  %54 = phi i16 [ %52, %50 ], [ 0, %41 ], [ -1, %48 ]
  store i16 %54, ptr %3, align 2, !tbaa !34
  %55 = fmul double %42, 6.553500e+04
  %56 = fptrunc double %55 to float
  %57 = fcmp ugt float %56, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = fcmp ult float %56, 6.553500e+04
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = fadd float %56, 5.000000e-01
  %62 = fptoui float %61 to i16
  br label %63

63:                                               ; preds = %53, %58, %60
  %64 = phi i16 [ %62, %60 ], [ 0, %53 ], [ -1, %58 ]
  store i16 %64, ptr %4, align 2, !tbaa !34
  %65 = fmul double %44, 6.553500e+04
  %66 = fptrunc double %65 to float
  %67 = fcmp ugt float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = fcmp ult float %66, 6.553500e+04
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = fadd float %66, 5.000000e-01
  %72 = fptoui float %71 to i16
  br label %73

73:                                               ; preds = %63, %68, %70
  %74 = phi i16 [ %72, %70 ], [ 0, %63 ], [ -1, %68 ]
  store i16 %74, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ConvertHWBToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = fsub double 1.000000e+00, %2
  %8 = fcmp oeq double %0, -1.000000e+00
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = fmul double %7, 6.553500e+04
  %11 = fptrunc double %10 to float
  %12 = fcmp ugt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = fcmp ult float %11, 6.553500e+04
  %15 = fadd float %11, 5.000000e-01
  %16 = fptoui float %15 to i16
  %17 = select i1 %14, i16 %16, i16 -1
  store i16 %17, ptr %3, align 2, !tbaa !34
  br i1 %14, label %18, label %20

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %9
  store i16 0, ptr %3, align 2, !tbaa !34
  br label %20

20:                                               ; preds = %19, %13, %18
  %21 = phi i16 [ %16, %18 ], [ -1, %13 ], [ 0, %19 ]
  store i16 %21, ptr %4, align 2, !tbaa !34
  br i1 %12, label %22, label %77

22:                                               ; preds = %20
  %23 = fcmp ult float %11, 6.553500e+04
  br i1 %23, label %24, label %77

24:                                               ; preds = %22
  %25 = fadd float %11, 5.000000e-01
  %26 = fptoui float %25 to i16
  br label %77

27:                                               ; preds = %6
  %28 = fmul double %0, 6.000000e+00
  %29 = tail call double @llvm.floor.f64(double %28)
  %30 = fptosi double %29 to i64
  %31 = sitofp i64 %30 to double
  %32 = fneg double %31
  %33 = tail call double @llvm.fmuladd.f64(double %0, double 6.000000e+00, double %32)
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  %36 = fsub double 1.000000e+00, %33
  %37 = select i1 %35, double %33, double %36
  %38 = fsub double %7, %1
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %1)
  switch i64 %30, label %45 [
    i64 5, label %44
    i64 4, label %43
    i64 1, label %40
    i64 2, label %41
    i64 3, label %42
  ]

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %45

42:                                               ; preds = %27
  br label %45

43:                                               ; preds = %27
  br label %45

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %27, %44, %43, %42, %41, %40
  %46 = phi double [ %39, %42 ], [ %7, %41 ], [ %7, %40 ], [ %1, %43 ], [ %1, %44 ], [ %39, %27 ]
  %47 = phi double [ %1, %42 ], [ %1, %41 ], [ %39, %40 ], [ %39, %43 ], [ %7, %44 ], [ %7, %27 ]
  %48 = phi double [ %7, %42 ], [ %39, %41 ], [ %1, %40 ], [ %7, %43 ], [ %39, %44 ], [ %1, %27 ]
  %49 = fmul double %47, 6.553500e+04
  %50 = fptrunc double %49 to float
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = fcmp ult float %50, 6.553500e+04
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = fadd float %50, 5.000000e-01
  %56 = fptoui float %55 to i16
  br label %57

57:                                               ; preds = %45, %52, %54
  %58 = phi i16 [ %56, %54 ], [ 0, %45 ], [ -1, %52 ]
  store i16 %58, ptr %3, align 2, !tbaa !34
  %59 = fmul double %46, 6.553500e+04
  %60 = fptrunc double %59 to float
  %61 = fcmp ugt float %60, 0.000000e+00
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = fcmp ult float %60, 6.553500e+04
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = fadd float %60, 5.000000e-01
  %66 = fptoui float %65 to i16
  br label %67

67:                                               ; preds = %57, %62, %64
  %68 = phi i16 [ %66, %64 ], [ 0, %57 ], [ -1, %62 ]
  store i16 %68, ptr %4, align 2, !tbaa !34
  %69 = fmul double %48, 6.553500e+04
  %70 = fptrunc double %69 to float
  %71 = fcmp ugt float %70, 0.000000e+00
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = fcmp ult float %70, 6.553500e+04
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = fadd float %70, 5.000000e-01
  %76 = fptoui float %75 to i16
  br label %77

77:                                               ; preds = %74, %72, %67, %24, %22, %20
  %78 = phi i16 [ %26, %24 ], [ 0, %20 ], [ -1, %22 ], [ %76, %74 ], [ 0, %67 ], [ -1, %72 ]
  store i16 %78, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertLCHabToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = fmul double %0, 1.000000e+02
  %8 = fadd double %1, -5.000000e-01
  %9 = fmul double %8, 2.550000e+02
  %10 = fmul double %2, 3.600000e+02
  %11 = fmul double %10, 0x400921FB54442D18
  %12 = fdiv double %11, 1.800000e+02
  %13 = tail call double @cos(double noundef %12) #11
  %14 = fmul double %9, %13
  %15 = tail call double @sin(double noundef %12) #11
  %16 = fmul double %9, %15
  %17 = fadd double %7, 1.600000e+01
  %18 = fdiv double %17, 1.160000e+02
  %19 = fdiv double %14, 5.000000e+02
  %20 = fadd double %18, %19
  %21 = fdiv double %16, 2.000000e+02
  %22 = fsub double %18, %21
  %23 = fmul double %20, %20
  %24 = fmul double %20, %23
  %25 = fcmp ogt double %24, 0x3F822354D28F7CD6
  %26 = tail call double @llvm.fmuladd.f64(double %20, double 1.160000e+02, double -1.600000e+01)
  %27 = fdiv double %26, 0x408C3A5ED097B426
  %28 = select i1 %25, double %24, double %27
  %29 = fmul double %18, %18
  %30 = fmul double %18, %29
  %31 = fcmp ogt double %30, 0x3F822354D28F7CD6
  %32 = fdiv double %7, 0x408C3A5ED097B426
  %33 = select i1 %31, double %30, double %32
  %34 = fmul double %22, %22
  %35 = fmul double %22, %34
  %36 = fcmp ogt double %35, 0x3F822354D28F7CD6
  %37 = tail call double @llvm.fmuladd.f64(double %22, double 1.160000e+02, double -1.600000e+01)
  %38 = fdiv double %37, 0x408C3A5ED097B426
  %39 = select i1 %36, double %35, double %38
  %40 = fmul double %28, 0x3FEE6A22B3892EE8
  %41 = fmul double %39, 0x3FF16B8950763A19
  %42 = fmul double %33, -1.537200e+00
  %43 = tail call double @llvm.fmuladd.f64(double %40, double 3.240600e+00, double %42)
  %44 = tail call double @llvm.fmuladd.f64(double %41, double -4.986000e-01, double %43)
  %45 = fmul double %33, 1.875800e+00
  %46 = tail call double @llvm.fmuladd.f64(double %40, double 0xBFEF013A92A30553, double %45)
  %47 = tail call double @llvm.fmuladd.f64(double %41, double 4.150000e-02, double %46)
  %48 = fmul double %33, -2.040000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %40, double 5.570000e-02, double %48)
  %50 = tail call double @llvm.fmuladd.f64(double %41, double 1.057000e+00, double %49)
  %51 = fmul double %44, 6.553500e+04
  %52 = fptrunc double %51 to float
  %53 = tail call float @EncodePixelGamma(float noundef %52) #12
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %6
  %56 = fcmp ult float %53, 6.553500e+04
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = fadd float %53, 5.000000e-01
  %59 = fptoui float %58 to i16
  br label %60

60:                                               ; preds = %57, %55, %6
  %61 = phi i16 [ %59, %57 ], [ 0, %6 ], [ -1, %55 ]
  store i16 %61, ptr %3, align 2, !tbaa !34
  %62 = fmul double %47, 6.553500e+04
  %63 = fptrunc double %62 to float
  %64 = tail call float @EncodePixelGamma(float noundef %63) #12
  %65 = fcmp ugt float %64, 0.000000e+00
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = fcmp ult float %64, 6.553500e+04
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = fadd float %64, 5.000000e-01
  %70 = fptoui float %69 to i16
  br label %71

71:                                               ; preds = %68, %66, %60
  %72 = phi i16 [ %70, %68 ], [ 0, %60 ], [ -1, %66 ]
  store i16 %72, ptr %4, align 2, !tbaa !34
  %73 = fmul double %50, 6.553500e+04
  %74 = fptrunc double %73 to float
  %75 = tail call float @EncodePixelGamma(float noundef %74) #12
  %76 = fcmp ugt float %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = fcmp ult float %75, 6.553500e+04
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = fadd float %75, 5.000000e-01
  %81 = fptoui float %80 to i16
  br label %82

82:                                               ; preds = %71, %77, %79
  %83 = phi i16 [ %81, %79 ], [ 0, %71 ], [ -1, %77 ]
  store i16 %83, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertLCHuvToRGB(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = fmul double %0, 1.000000e+02
  %8 = fadd double %1, -5.000000e-01
  %9 = fmul double %8, 2.550000e+02
  %10 = fmul double %2, 3.600000e+02
  %11 = fmul double %10, 0x400921FB54442D18
  %12 = fdiv double %11, 1.800000e+02
  %13 = tail call double @cos(double noundef %12) #11
  %14 = tail call double @sin(double noundef %12) #11
  %15 = fcmp ogt double %7, 8.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = fadd double %7, 1.600000e+01
  %18 = fdiv double %17, 1.160000e+02
  %19 = tail call double @pow(double noundef %18, double noundef 3.000000e+00) #11
  br label %22

20:                                               ; preds = %6
  %21 = fdiv double %7, 0x408C3A5ED097B426
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi double [ %21, %20 ], [ %19, %16 ]
  %24 = fmul double %9, %14
  %25 = fmul double %9, %13
  %26 = fmul double %7, 3.900000e+01
  %27 = fmul double %7, 1.300000e+01
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 0x3FDDF95190ED8BC1, double %24)
  %29 = fdiv double %26, %28
  %30 = fadd double %29, -5.000000e+00
  %31 = fmul double %23, 5.000000e+00
  %32 = tail call double @llvm.fmuladd.f64(double %23, double %30, double %31)
  %33 = fmul double %7, 5.200000e+01
  %34 = tail call double @llvm.fmuladd.f64(double %27, double 0x3FC952CD31007F87, double %25)
  %35 = fdiv double %33, %34
  %36 = fadd double %35, -1.000000e+00
  %37 = fdiv double %36, 3.000000e+00
  %38 = fadd double %37, 0x3FD5555555555555
  %39 = fdiv double %32, %38
  %40 = fmul double %23, -5.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %39, double %37, double %40)
  %42 = fmul double %23, -1.537200e+00
  %43 = tail call double @llvm.fmuladd.f64(double %39, double 3.240600e+00, double %42)
  %44 = tail call double @llvm.fmuladd.f64(double %41, double -4.986000e-01, double %43)
  %45 = fmul double %23, 1.875800e+00
  %46 = tail call double @llvm.fmuladd.f64(double %39, double 0xBFEF013A92A30553, double %45)
  %47 = tail call double @llvm.fmuladd.f64(double %41, double 4.150000e-02, double %46)
  %48 = fmul double %23, -2.040000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %39, double 5.570000e-02, double %48)
  %50 = tail call double @llvm.fmuladd.f64(double %41, double 1.057000e+00, double %49)
  %51 = fmul double %44, 6.553500e+04
  %52 = fptrunc double %51 to float
  %53 = tail call float @EncodePixelGamma(float noundef %52) #12
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %22
  %56 = fcmp ult float %53, 6.553500e+04
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = fadd float %53, 5.000000e-01
  %59 = fptoui float %58 to i16
  br label %60

60:                                               ; preds = %57, %55, %22
  %61 = phi i16 [ %59, %57 ], [ 0, %22 ], [ -1, %55 ]
  store i16 %61, ptr %3, align 2, !tbaa !34
  %62 = fmul double %47, 6.553500e+04
  %63 = fptrunc double %62 to float
  %64 = tail call float @EncodePixelGamma(float noundef %63) #12
  %65 = fcmp ugt float %64, 0.000000e+00
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = fcmp ult float %64, 6.553500e+04
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = fadd float %64, 5.000000e-01
  %70 = fptoui float %69 to i16
  br label %71

71:                                               ; preds = %68, %66, %60
  %72 = phi i16 [ %70, %68 ], [ 0, %60 ], [ -1, %66 ]
  store i16 %72, ptr %4, align 2, !tbaa !34
  %73 = fmul double %50, 6.553500e+04
  %74 = fptrunc double %73 to float
  %75 = tail call float @EncodePixelGamma(float noundef %74) #12
  %76 = fcmp ugt float %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = fcmp ult float %75, 6.553500e+04
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = fadd float %75, 5.000000e-01
  %81 = fptoui float %80 to i16
  br label %82

82:                                               ; preds = %71, %77, %79
  %83 = phi i16 [ %81, %79 ], [ 0, %71 ], [ -1, %77 ]
  store i16 %83, ptr %5, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHCL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = fcmp ogt double %8, %9
  %11 = select i1 %10, double %8, double %9
  %12 = fcmp olt double %11, %7
  %13 = select i1 %12, double %7, double %11
  %14 = fcmp olt double %8, %9
  %15 = select i1 %14, double %8, double %9
  %16 = fcmp ogt double %15, %7
  %17 = select i1 %16, double %7, double %15
  %18 = fsub double %13, %17
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %40, label %20

20:                                               ; preds = %6
  %21 = fptoui double %13 to i16
  %22 = icmp eq i16 %21, %0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = fsub double %8, %9
  %25 = fdiv double %24, %18
  %26 = fadd double %25, 6.000000e+00
  %27 = tail call double @fmod(double noundef %26, double noundef 6.000000e+00) #11
  br label %40

28:                                               ; preds = %20
  %29 = icmp eq i16 %21, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = fsub double %9, %7
  %32 = fdiv double %31, %18
  %33 = fadd double %32, 2.000000e+00
  br label %40

34:                                               ; preds = %28
  %35 = icmp eq i16 %21, %2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = fsub double %7, %8
  %38 = fdiv double %37, %18
  %39 = fadd double %38, 4.000000e+00
  br label %40

40:                                               ; preds = %6, %23, %34, %36, %30
  %41 = phi double [ %27, %23 ], [ %33, %30 ], [ %39, %36 ], [ 0.000000e+00, %34 ], [ 0.000000e+00, %6 ]
  %42 = fdiv double %41, 6.000000e+00
  store double %42, ptr %3, align 8, !tbaa !38
  %43 = fmul double %18, 0x3EF0001000100010
  store double %43, ptr %4, align 8, !tbaa !38
  %44 = fmul double %8, 5.868110e-01
  %45 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %44)
  %46 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %45)
  %47 = fmul double %46, 0x3EF0001000100010
  store double %47, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHCLp(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = fcmp ogt double %8, %9
  %11 = select i1 %10, double %8, double %9
  %12 = fcmp olt double %11, %7
  %13 = select i1 %12, double %7, double %11
  %14 = fcmp olt double %8, %9
  %15 = select i1 %14, double %8, double %9
  %16 = fcmp ogt double %15, %7
  %17 = select i1 %16, double %7, double %15
  %18 = fsub double %13, %17
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %40, label %20

20:                                               ; preds = %6
  %21 = fptoui double %13 to i16
  %22 = icmp eq i16 %21, %0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = fsub double %8, %9
  %25 = fdiv double %24, %18
  %26 = fadd double %25, 6.000000e+00
  %27 = tail call double @fmod(double noundef %26, double noundef 6.000000e+00) #11
  br label %40

28:                                               ; preds = %20
  %29 = icmp eq i16 %21, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = fsub double %9, %7
  %32 = fdiv double %31, %18
  %33 = fadd double %32, 2.000000e+00
  br label %40

34:                                               ; preds = %28
  %35 = icmp eq i16 %21, %2
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = fsub double %7, %8
  %38 = fdiv double %37, %18
  %39 = fadd double %38, 4.000000e+00
  br label %40

40:                                               ; preds = %6, %23, %34, %36, %30
  %41 = phi double [ %27, %23 ], [ %33, %30 ], [ %39, %36 ], [ 0.000000e+00, %34 ], [ 0.000000e+00, %6 ]
  %42 = fdiv double %41, 6.000000e+00
  store double %42, ptr %3, align 8, !tbaa !38
  %43 = fmul double %18, 0x3EF0001000100010
  store double %43, ptr %4, align 8, !tbaa !38
  %44 = fmul double %8, 5.868110e-01
  %45 = tail call double @llvm.fmuladd.f64(double %7, double 2.988390e-01, double %44)
  %46 = tail call double @llvm.fmuladd.f64(double %9, double 1.143500e-01, double %45)
  %47 = fmul double %46, 0x3EF0001000100010
  store double %47, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertRGBToHSB(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  store double 0.000000e+00, ptr %3, align 8, !tbaa !38
  store double 0.000000e+00, ptr %4, align 8, !tbaa !38
  store double 0.000000e+00, ptr %5, align 8, !tbaa !38
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = fcmp ogt double %7, %8
  %11 = select i1 %10, double %7, double %8
  %12 = fcmp olt double %11, %9
  %13 = select i1 %12, double %9, double %11
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %45, label %15

15:                                               ; preds = %6
  %16 = fcmp olt double %7, %8
  %17 = select i1 %16, double %7, double %8
  %18 = fcmp ogt double %17, %9
  %19 = select i1 %18, double %9, double %17
  %20 = fsub double %13, %19
  %21 = fdiv double %20, %13
  store double %21, ptr %4, align 8, !tbaa !38
  %22 = fmul double %13, 0x3EF0001000100010
  store double %22, ptr %5, align 8, !tbaa !38
  %23 = fcmp oeq double %20, 0.000000e+00
  br i1 %23, label %45, label %24

24:                                               ; preds = %15
  %25 = fcmp oeq double %13, %7
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = fsub double %8, %9
  %28 = fdiv double %27, %20
  br label %39

29:                                               ; preds = %24
  %30 = fcmp oeq double %13, %8
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = fsub double %9, %7
  %33 = fdiv double %32, %20
  %34 = fadd double %33, 2.000000e+00
  br label %39

35:                                               ; preds = %29
  %36 = fsub double %7, %8
  %37 = fdiv double %36, %20
  %38 = fadd double %37, 4.000000e+00
  br label %39

39:                                               ; preds = %31, %35, %26
  %40 = phi double [ %34, %31 ], [ %38, %35 ], [ %28, %26 ]
  %41 = fdiv double %40, 6.000000e+00
  %42 = fcmp olt double %41, 0.000000e+00
  %43 = fadd double %41, 1.000000e+00
  %44 = select i1 %42, double %43, double %41
  store double %44, ptr %3, align 8, !tbaa !38
  br label %45

45:                                               ; preds = %15, %6, %39
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @ConvertRGBToHSI(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = fmul double %8, 0x3EF0001000100010
  %10 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %9)
  %11 = uitofp i16 %2 to double
  %12 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %10)
  %13 = fdiv double %12, 3.000000e+00
  store double %13, ptr %5, align 8, !tbaa !38
  %14 = fcmp ugt double %13, 0.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !38
  store double 0.000000e+00, ptr %4, align 8, !tbaa !38
  br label %38

16:                                               ; preds = %6
  %17 = fmul double %7, 0x3EF0001000100010
  %18 = fmul double %11, 0x3EF0001000100010
  %19 = fcmp olt double %9, %18
  %20 = select i1 %19, double %9, double %18
  %21 = fcmp olt double %17, %20
  %22 = select i1 %21, double %17, double %20
  %23 = fdiv double %22, %13
  %24 = fsub double 1.000000e+00, %23
  store double %24, ptr %4, align 8, !tbaa !38
  %25 = fneg double %9
  %26 = tail call double @llvm.fmuladd.f64(double %7, double 0x3F00001000100010, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %11, double 0xBEF0001000100010, double %26)
  %28 = fmul double %27, 5.000000e-01
  %29 = fneg double %18
  %30 = tail call double @llvm.fmuladd.f64(double %8, double 0x3EF0001000100010, double %29)
  %31 = fmul double %30, 0x3FEBB67AE8584CA9
  %32 = tail call double @atan2(double noundef %31, double noundef %28) #11
  %33 = fmul double %32, 0x404CA5DC1A63C1F8
  %34 = fdiv double %33, 3.600000e+02
  %35 = fcmp olt double %34, 0.000000e+00
  %36 = fadd double %34, 1.000000e+00
  %37 = select i1 %35, double %36, double %34
  store double %37, ptr %3, align 8, !tbaa !38
  br label %38

38:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertRGBToHSL(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) local_unnamed_addr #3 {
  %7 = uitofp i16 %0 to double
  %8 = fmul double %7, 0x3EF0001000100010
  %9 = uitofp i16 %1 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %2 to double
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fcmp ogt double %10, %12
  %14 = select i1 %13, double %10, double %12
  %15 = fcmp ogt double %8, %14
  %16 = select i1 %15, double %8, double %14
  %17 = fcmp olt double %10, %12
  %18 = select i1 %17, double %10, double %12
  %19 = fcmp olt double %8, %18
  %20 = select i1 %19, double %8, double %18
  %21 = fsub double %16, %20
  %22 = fadd double %16, %20
  %23 = fmul double %22, 5.000000e-01
  store double %23, ptr %5, align 8, !tbaa !38
  %24 = fcmp ugt double %21, 0.000000e+00
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !38
  br label %57

26:                                               ; preds = %6
  %27 = fcmp oeq double %16, %8
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = fneg double %12
  %30 = tail call double @llvm.fmuladd.f64(double %9, double 0x3EF0001000100010, double %29)
  %31 = fdiv double %30, %21
  store double %31, ptr %3, align 8, !tbaa !38
  br i1 %17, label %32, label %48

32:                                               ; preds = %28
  %33 = fadd double %31, 6.000000e+00
  br label %46

34:                                               ; preds = %26
  %35 = fcmp oeq double %16, %10
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = fneg double %8
  %38 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %37)
  %39 = fdiv double %38, %21
  %40 = fadd double %39, 2.000000e+00
  br label %46

41:                                               ; preds = %34
  %42 = fneg double %10
  %43 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %42)
  %44 = fdiv double %43, %21
  %45 = fadd double %44, 4.000000e+00
  br label %46

46:                                               ; preds = %32, %41, %36
  %47 = phi double [ %40, %36 ], [ %45, %41 ], [ %33, %32 ]
  store double %47, ptr %3, align 8, !tbaa !38
  br label %48

48:                                               ; preds = %46, %28
  %49 = load double, ptr %3, align 8, !tbaa !38
  %50 = fmul double %49, 0x3FC5555555555555
  store double %50, ptr %3, align 8, !tbaa !38
  %51 = load double, ptr %5, align 8, !tbaa !38
  %52 = fcmp ugt double %51, 5.000000e-01
  %53 = tail call double @llvm.fmuladd.f64(double %51, double -2.000000e+00, double 2.000000e+00)
  %54 = fmul double %51, 2.000000e+00
  %55 = select i1 %52, double %53, double %54
  %56 = fdiv double %21, %55
  br label %57

57:                                               ; preds = %48, %25
  %58 = phi double [ %56, %48 ], [ 0.000000e+00, %25 ]
  store double %58, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ConvertRGBToHSV(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = uitofp i16 %0 to double
  %8 = fmul double %7, 0x3EF0001000100010
  %9 = uitofp i16 %1 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %2 to double
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fcmp ogt double %10, %12
  %14 = select i1 %13, double %10, double %12
  %15 = fcmp ogt double %8, %14
  %16 = select i1 %15, double %8, double %14
  %17 = fcmp olt double %10, %12
  %18 = select i1 %17, double %10, double %12
  %19 = fcmp olt double %8, %18
  %20 = select i1 %19, double %8, double %18
  %21 = fsub double %16, %20
  store double %16, ptr %5, align 8, !tbaa !38
  %22 = fcmp ugt double %21, 0.000000e+00
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !38
  br label %50

24:                                               ; preds = %6
  %25 = fcmp oeq double %16, %8
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = fneg double %12
  %28 = tail call double @llvm.fmuladd.f64(double %9, double 0x3EF0001000100010, double %27)
  %29 = fdiv double %28, %21
  store double %29, ptr %3, align 8, !tbaa !38
  br i1 %17, label %30, label %46

30:                                               ; preds = %26
  %31 = fadd double %29, 6.000000e+00
  br label %44

32:                                               ; preds = %24
  %33 = fcmp oeq double %16, %10
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = fneg double %8
  %36 = tail call double @llvm.fmuladd.f64(double %11, double 0x3EF0001000100010, double %35)
  %37 = fdiv double %36, %21
  %38 = fadd double %37, 2.000000e+00
  br label %44

39:                                               ; preds = %32
  %40 = fneg double %10
  %41 = tail call double @llvm.fmuladd.f64(double %7, double 0x3EF0001000100010, double %40)
  %42 = fdiv double %41, %21
  %43 = fadd double %42, 4.000000e+00
  br label %44

44:                                               ; preds = %30, %39, %34
  %45 = phi double [ %38, %34 ], [ %43, %39 ], [ %31, %30 ]
  store double %45, ptr %3, align 8, !tbaa !38
  br label %46

46:                                               ; preds = %44, %26
  %47 = load double, ptr %3, align 8, !tbaa !38
  %48 = fmul double %47, 0x3FC5555555555555
  store double %48, ptr %3, align 8, !tbaa !38
  %49 = fdiv double %21, %16
  br label %50

50:                                               ; preds = %46, %23
  %51 = phi double [ %49, %46 ], [ 0.000000e+00, %23 ]
  store double %51, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ConvertRGBToHWB(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = uitofp i16 %0 to double
  %8 = uitofp i16 %1 to double
  %9 = uitofp i16 %2 to double
  %10 = fcmp olt double %8, %9
  %11 = select i1 %10, double %8, double %9
  %12 = fcmp ogt double %11, %7
  %13 = select i1 %12, double %7, double %11
  %14 = fcmp ogt double %8, %9
  %15 = select i1 %14, double %8, double %9
  %16 = fcmp olt double %15, %7
  %17 = select i1 %16, double %7, double %15
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 0xBEF0001000100010, double 1.000000e+00)
  store double %18, ptr %5, align 8, !tbaa !38
  %19 = fmul double %13, 0x3EF0001000100010
  store double %19, ptr %4, align 8, !tbaa !38
  %20 = fcmp oeq double %17, %13
  br i1 %20, label %40, label %21

21:                                               ; preds = %6
  %22 = fcmp oeq double %13, %7
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = fsub double %8, %9
  br label %31

25:                                               ; preds = %21
  %26 = fcmp oeq double %13, %8
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = fsub double %9, %7
  br label %31

29:                                               ; preds = %25
  %30 = fsub double %7, %8
  br label %31

31:                                               ; preds = %27, %29, %23
  %32 = phi double [ %24, %23 ], [ %28, %27 ], [ %30, %29 ]
  %33 = fcmp oeq double %13, %8
  %34 = select i1 %33, double 5.000000e+00, double 1.000000e+00
  %35 = select i1 %22, double 3.000000e+00, double %34
  %36 = tail call double @llvm.fmuladd.f64(double %13, double -1.000000e+00, double %17)
  %37 = fdiv double %32, %36
  %38 = fsub double %35, %37
  %39 = fdiv double %38, 6.000000e+00
  br label %40

40:                                               ; preds = %6, %31
  %41 = phi double [ %39, %31 ], [ -1.000000e+00, %6 ]
  store double %41, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertRGBToLCHab(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = uitofp i16 %0 to float
  %8 = tail call float @DecodePixelGamma(float noundef %7) #12
  %9 = fpext float %8 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %1 to float
  %12 = tail call float @DecodePixelGamma(float noundef %11) #12
  %13 = fpext float %12 to double
  %14 = fmul double %13, 0x3EF0001000100010
  %15 = uitofp i16 %2 to float
  %16 = tail call float @DecodePixelGamma(float noundef %15) #12
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fmul double %14, 0x3FD6E2A59D2E2F46
  %20 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FDA64B077E84D0C, double %19)
  %21 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FC71A6210D6208C, double %20)
  %22 = fmul double %14, 0x3FE6E2ACD52F3FCB
  %23 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FCB36068E66EAD3, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FB27BBB5C6D92D1, double %23)
  %25 = fmul double %14, 0x3FBE82D57095EC52
  %26 = tail call double @llvm.fmuladd.f64(double %10, double 0x3F93C2A635C37FED, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FEE6A78F26C3A9D, double %26)
  %28 = fdiv double %21, 0x3FEE6A22B3892EE8
  %29 = fcmp ogt double %28, 0x3F822354D28F7CD6
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = tail call double @pow(double noundef %28, double noundef 0x3FD5555555555555) #11
  br label %37

32:                                               ; preds = %6
  %33 = fmul double %21, 0x408C3A5ED097B426
  %34 = fdiv double %33, 0x3FEE6A22B3892EE8
  %35 = fadd double %34, 1.600000e+01
  %36 = fdiv double %35, 1.160000e+02
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi double [ %31, %30 ], [ %36, %32 ]
  %39 = fcmp ogt double %24, 0x3F822354D28F7CD6
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call double @pow(double noundef %24, double noundef 0x3FD5555555555555) #11
  br label %46

42:                                               ; preds = %37
  %43 = fmul double %24, 0x408C3A5ED097B426
  %44 = fadd double %43, 1.600000e+01
  %45 = fdiv double %44, 1.160000e+02
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi double [ %41, %40 ], [ %45, %42 ]
  %48 = fdiv double %27, 0x3FF16B8950763A19
  %49 = fcmp ogt double %48, 0x3F822354D28F7CD6
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call double @pow(double noundef %48, double noundef 0x3FD5555555555555) #11
  br label %57

52:                                               ; preds = %46
  %53 = fmul double %27, 0x408C3A5ED097B426
  %54 = fdiv double %53, 0x3FF16B8950763A19
  %55 = fadd double %54, 1.600000e+01
  %56 = fdiv double %55, 1.160000e+02
  br label %57

57:                                               ; preds = %50, %52
  %58 = phi double [ %51, %50 ], [ %56, %52 ]
  %59 = tail call double @llvm.fmuladd.f64(double %47, double 1.160000e+02, double -1.600000e+01)
  %60 = fdiv double %59, 1.000000e+02
  store double %60, ptr %3, align 8, !tbaa !38
  %61 = fsub double %38, %47
  %62 = fmul double %61, 5.000000e+02
  %63 = fdiv double %62, 2.550000e+02
  %64 = fadd double %63, 5.000000e-01
  %65 = fsub double %47, %58
  %66 = fmul double %65, 2.000000e+02
  %67 = fdiv double %66, 2.550000e+02
  %68 = fadd double %67, 5.000000e-01
  %69 = fadd double %64, -5.000000e-01
  %70 = fmul double %69, 2.550000e+02
  %71 = fadd double %68, -5.000000e-01
  %72 = fmul double %71, 2.550000e+02
  %73 = tail call double @hypot(double noundef %70, double noundef %72) #11
  %74 = fdiv double %73, 2.550000e+02
  %75 = fadd double %74, 5.000000e-01
  store double %75, ptr %4, align 8, !tbaa !38
  %76 = tail call double @atan2(double noundef %72, double noundef %70) #11
  %77 = fmul double %76, 1.800000e+02
  %78 = fdiv double %77, 0x400921FB54442D18
  %79 = fdiv double %78, 3.600000e+02
  %80 = fcmp olt double %79, 0.000000e+00
  %81 = fadd double %79, 1.000000e+00
  %82 = select i1 %80, double %81, double %79
  store double %82, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ConvertRGBToLCHuv(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #5 {
  %7 = uitofp i16 %0 to float
  %8 = tail call float @DecodePixelGamma(float noundef %7) #12
  %9 = fpext float %8 to double
  %10 = fmul double %9, 0x3EF0001000100010
  %11 = uitofp i16 %1 to float
  %12 = tail call float @DecodePixelGamma(float noundef %11) #12
  %13 = fpext float %12 to double
  %14 = fmul double %13, 0x3EF0001000100010
  %15 = uitofp i16 %2 to float
  %16 = tail call float @DecodePixelGamma(float noundef %15) #12
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fmul double %14, 0x3FE6E2ACD52F3FCB
  %20 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FCB36068E66EAD3, double %19)
  %21 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FB27BBB5C6D92D1, double %20)
  %22 = fcmp ogt double %21, 0x3F822354D28F7CD6
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = tail call double @pow(double noundef %21, double noundef 0x3FD5555555555555) #11
  %25 = tail call double @llvm.fmuladd.f64(double %24, double 1.160000e+02, double -1.600000e+01)
  br label %28

26:                                               ; preds = %6
  %27 = fmul double %21, 0x408C3A5ED097B426
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi double [ %27, %26 ], [ %25, %23 ]
  %30 = fmul double %14, 0x3FBE82D57095EC52
  %31 = tail call double @llvm.fmuladd.f64(double %10, double 0x3F93C2A635C37FED, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FEE6A78F26C3A9D, double %31)
  %33 = fmul double %14, 0x3FD6E2A59D2E2F46
  %34 = tail call double @llvm.fmuladd.f64(double %10, double 0x3FDA64B077E84D0C, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FC71A6210D6208C, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %21, double 1.500000e+01, double %35)
  %37 = tail call double @llvm.fmuladd.f64(double %32, double 3.000000e+00, double %36)
  %38 = fcmp olt double %37, 0.000000e+00
  %39 = select i1 %38, double -1.000000e+00, double 1.000000e+00
  %40 = fmul double %37, %39
  %41 = fcmp ult double %40, 1.000000e-15
  %42 = fdiv double 1.000000e+00, %37
  %43 = fdiv double %39, 1.000000e-15
  %44 = select i1 %41, double %43, double %42
  %45 = fmul double %29, 1.300000e+01
  %46 = fmul double %44, 4.000000e+00
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %35, double 0xBFC952CD31007F87)
  %48 = fmul double %47, %45
  %49 = fmul double %44, 9.000000e+00
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %21, double 0xBFDDF95190ED8BC1)
  %51 = fmul double %50, %45
  %52 = fdiv double %29, 1.000000e+02
  store double %52, ptr %3, align 8, !tbaa !38
  %53 = fadd double %48, 1.340000e+02
  %54 = fdiv double %53, 3.540000e+02
  %55 = fadd double %51, 1.400000e+02
  %56 = fdiv double %55, 2.620000e+02
  %57 = tail call double @llvm.fmuladd.f64(double %54, double 3.540000e+02, double -1.340000e+02)
  %58 = tail call double @llvm.fmuladd.f64(double %56, double 2.620000e+02, double -1.400000e+02)
  %59 = tail call double @hypot(double noundef %57, double noundef %58) #11
  %60 = fdiv double %59, 2.550000e+02
  %61 = fadd double %60, 5.000000e-01
  store double %61, ptr %4, align 8, !tbaa !38
  %62 = tail call double @atan2(double noundef %58, double noundef %57) #11
  %63 = fmul double %62, 1.800000e+02
  %64 = fdiv double %63, 0x400921FB54442D18
  %65 = fdiv double %64, 3.600000e+02
  %66 = fcmp olt double %65, 0.000000e+00
  %67 = fadd double %65, 1.000000e+00
  %68 = select i1 %66, double %67, double %65
  store double %68, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @ExpandAffine(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load double, ptr %0, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !44
  %9 = fneg double %6
  %10 = fmul double %8, %9
  %11 = tail call double @llvm.fmuladd.f64(double %2, double %4, double %10)
  %12 = tail call double @llvm.fabs.f64(double %11)
  %13 = tail call double @sqrt(double noundef %12) #11
  ret double %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, float noundef %3) local_unnamed_addr #5 {
  %5 = tail call double @GetPseudoRandomValue(ptr noundef %0) #11
  switch i32 %2, label %6 [
    i32 7, label %117
    i32 2, label %13
    i32 4, label %34
    i32 5, label %44
    i32 3, label %77
    i32 6, label %96
  ]

6:                                                ; preds = %4
  %7 = uitofp i16 %1 to double
  %8 = fpext float %3 to double
  %9 = fmul double %8, 1.562500e-02
  %10 = fmul double %9, 6.553500e+04
  %11 = fadd double %5, -5.000000e-01
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %11, double %7)
  br label %121

13:                                               ; preds = %4
  %14 = fcmp oeq double %5, 0.000000e+00
  %15 = select i1 %14, double 1.000000e+00, double %5
  %16 = tail call double @GetPseudoRandomValue(ptr noundef %0) #11
  %17 = tail call double @log(double noundef %15) #11
  %18 = fmul double %17, -2.000000e+00
  %19 = tail call double @sqrt(double noundef %18) #11
  %20 = fmul double %16, 0x401921FB54442D18
  %21 = tail call double @cos(double noundef %20) #11
  %22 = fmul double %19, %21
  %23 = tail call double @sin(double noundef %20) #11
  %24 = fmul double %19, %23
  %25 = uitofp i16 %1 to double
  %26 = tail call double @sqrt(double noundef %25) #11
  %27 = fpext float %3 to double
  %28 = fmul double %27, 1.562500e-02
  %29 = fmul double %28, %26
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %22, double %25)
  %31 = fmul double %27, 7.812500e-02
  %32 = fmul double %31, 6.553500e+04
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %24, double %30)
  br label %121

34:                                               ; preds = %4
  %35 = fpext float %3 to double
  %36 = fmul double %35, 1.000000e-01
  %37 = fmul double %36, 5.000000e-01
  %38 = fcmp olt double %5, %37
  br i1 %38, label %121, label %39

39:                                               ; preds = %34
  %40 = fsub double 1.000000e+00, %37
  %41 = fcmp ult double %5, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %39
  %43 = uitofp i16 %1 to double
  br label %121

44:                                               ; preds = %4
  %45 = fcmp ugt double %5, 5.000000e-01
  br i1 %45, label %61, label %46

46:                                               ; preds = %44
  %47 = fcmp ugt double %5, 1.000000e-15
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = zext i16 %1 to i32
  %50 = add nsw i32 %49, -65535
  %51 = sitofp i32 %50 to double
  br label %121

52:                                               ; preds = %46
  %53 = uitofp i16 %1 to double
  %54 = fpext float %3 to double
  %55 = fmul double %54, 3.906250e-02
  %56 = fmul double %55, 6.553500e+04
  %57 = fmul double %5, 2.000000e+00
  %58 = tail call double @log(double noundef %57) #11
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %53)
  %60 = fadd double %59, 5.000000e-01
  br label %121

61:                                               ; preds = %44
  %62 = fsub double 1.000000e+00, %5
  %63 = fcmp ugt double %62, 5.000000e-16
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = zext i16 %1 to i32
  %66 = add nuw nsw i32 %65, 65535
  %67 = sitofp i32 %66 to double
  br label %121

68:                                               ; preds = %61
  %69 = uitofp i16 %1 to double
  %70 = fpext float %3 to double
  %71 = fmul double %70, 3.906250e-02
  %72 = fmul double %62, 2.000000e+00
  %73 = tail call double @log(double noundef %72) #11
  %74 = fmul double %71, -6.553500e+04
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %73, double %69)
  %76 = fadd double %75, 5.000000e-01
  br label %121

77:                                               ; preds = %4
  %78 = fcmp ogt double %5, 1.000000e-15
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = tail call double @log(double noundef %5) #11
  %81 = fmul double %80, -2.000000e+00
  %82 = tail call double @sqrt(double noundef %81) #11
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi double [ %82, %79 ], [ 1.000000e+00, %77 ]
  %85 = tail call double @GetPseudoRandomValue(ptr noundef %0) #11
  %86 = uitofp i16 %1 to double
  %87 = fpext float %3 to double
  %88 = fmul double %87, 5.000000e-01
  %89 = fmul double %88, %86
  %90 = fmul double %89, %84
  %91 = fmul double %85, 0x401921FB54442D18
  %92 = tail call double @cos(double noundef %91) #11
  %93 = fmul double %90, %92
  %94 = fmul double %93, 5.000000e-01
  %95 = fadd double %94, %86
  br label %121

96:                                               ; preds = %4
  %97 = fpext float %3 to double
  %98 = fmul double %97, 1.250000e+01
  %99 = fmul double %98, 0xBEF0001000100010
  %100 = uitofp i16 %1 to double
  %101 = fmul double %99, %100
  %102 = tail call double @exp(double noundef %101) #11
  %103 = fcmp ogt double %5, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %96, %104
  %105 = phi i64 [ %109, %104 ], [ 0, %96 ]
  %106 = phi double [ %108, %104 ], [ %5, %96 ]
  %107 = tail call double @GetPseudoRandomValue(ptr noundef %0) #11
  %108 = fmul double %106, %107
  %109 = add nuw nsw i64 %105, 1
  %110 = fcmp ogt double %108, %102
  br i1 %110, label %104, label %111, !llvm.loop !45

111:                                              ; preds = %104
  %112 = mul nsw i64 %109, 65535
  %113 = sitofp i64 %112 to double
  br label %114

114:                                              ; preds = %111, %96
  %115 = phi double [ 0.000000e+00, %96 ], [ %113, %111 ]
  %116 = fdiv double %115, %98
  br label %121

117:                                              ; preds = %4
  %118 = fmul float %3, 6.553500e+04
  %119 = fpext float %118 to double
  %120 = fmul double %5, %119
  br label %121

121:                                              ; preds = %39, %34, %64, %68, %48, %52, %42, %117, %114, %83, %13, %6
  %122 = phi double [ %12, %6 ], [ %116, %114 ], [ %95, %83 ], [ %51, %48 ], [ %60, %52 ], [ %67, %64 ], [ %76, %68 ], [ %43, %42 ], [ %33, %13 ], [ %120, %117 ], [ 0.000000e+00, %34 ], [ 6.553500e+04, %39 ]
  ret double %122
}

declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth1D(double noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1656, ptr noundef nonnull @.str.2) #11
  %4 = fcmp ogt double %0, 1.000000e-15
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call double @llvm.ceil.f64(double %0)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double 1.000000e+00)
  %8 = fptoui double %7 to i64
  br label %64

9:                                                ; preds = %2
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = fcmp ugt double %10, 1.000000e-15
  br i1 %11, label %12, label %64

12:                                               ; preds = %9
  %13 = fmul double %10, 2.000000e+00
  %14 = fmul double %10, %13
  %15 = fcmp olt double %14, 0.000000e+00
  %16 = select i1 %15, double -1.000000e+00, double 1.000000e+00
  %17 = fmul double %14, %16
  %18 = fcmp ult double %17, 1.000000e-15
  %19 = fdiv double 1.000000e+00, %14
  %20 = fdiv double %16, 1.000000e-15
  %21 = select i1 %18, double %20, double %19
  %22 = fmul double %10, 0x40040D931FF62705
  %23 = fcmp olt double %22, 0.000000e+00
  %24 = select i1 %23, double -1.000000e+00, double 1.000000e+00
  %25 = fmul double %22, %24
  %26 = fcmp ult double %25, 1.000000e-15
  %27 = fdiv double 1.000000e+00, %22
  %28 = fdiv double %24, 1.000000e-15
  %29 = select i1 %26, double %28, double %27
  br label %30

30:                                               ; preds = %49, %12
  %31 = phi i64 [ 5, %12 ], [ %61, %49 ]
  %32 = add nsw i64 %31, -1
  %33 = sdiv i64 %32, 2
  %34 = icmp ugt i64 %31, -9223372036854775808
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = sub nsw i64 0, %33
  %37 = tail call i64 @llvm.abs.i64(i64 %33, i1 true)
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %47, %38 ], [ %36, %35 ]
  %40 = phi double [ %46, %38 ], [ 0.000000e+00, %35 ]
  %41 = mul nsw i64 %39, %39
  %42 = sitofp i64 %41 to double
  %43 = fneg double %42
  %44 = fmul double %21, %43
  %45 = tail call double @exp(double noundef %44) #11
  %46 = tail call double @llvm.fmuladd.f64(double %45, double %29, double %40)
  %47 = add i64 %39, 1
  %48 = icmp eq i64 %39, %37
  br i1 %48, label %49, label %38, !llvm.loop !48

49:                                               ; preds = %38, %30
  %50 = phi double [ 0.000000e+00, %30 ], [ %46, %38 ]
  %51 = mul nsw i64 %33, %33
  %52 = sitofp i64 %51 to double
  %53 = fneg double %52
  %54 = fmul double %21, %53
  %55 = tail call double @exp(double noundef %54) #11
  %56 = fmul double %29, %55
  %57 = fdiv double %56, %50
  %58 = fcmp olt double %57, 0x3EF0001000100010
  %59 = fcmp olt double %57, 1.000000e-15
  %60 = or i1 %58, %59
  %61 = add i64 %31, 2
  br i1 %60, label %62, label %30, !llvm.loop !49

62:                                               ; preds = %49
  %63 = add i64 %31, -2
  br label %64

64:                                               ; preds = %9, %62, %5
  %65 = phi i64 [ %8, %5 ], [ %63, %62 ], [ 3, %9 ]
  ret i64 %65
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth2D(double noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1696, ptr noundef nonnull @.str.2) #11
  %4 = fcmp ogt double %0, 1.000000e-15
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call double @llvm.ceil.f64(double %0)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double 1.000000e+00)
  %8 = fptoui double %7 to i64
  br label %73

9:                                                ; preds = %2
  %10 = tail call double @llvm.fabs.f64(double %1)
  %11 = fcmp ugt double %10, 1.000000e-15
  br i1 %11, label %12, label %73

12:                                               ; preds = %9
  %13 = fmul double %10, 2.000000e+00
  %14 = fmul double %10, %13
  %15 = fcmp olt double %14, 0.000000e+00
  %16 = select i1 %15, double -1.000000e+00, double 1.000000e+00
  %17 = fmul double %14, %16
  %18 = fcmp ult double %17, 1.000000e-15
  %19 = fdiv double 1.000000e+00, %14
  %20 = fdiv double %16, 1.000000e-15
  %21 = select i1 %18, double %20, double %19
  %22 = fmul double %10, 0x401921FB54442D18
  %23 = fmul double %10, %22
  %24 = fcmp olt double %23, 0.000000e+00
  %25 = select i1 %24, double -1.000000e+00, double 1.000000e+00
  %26 = fmul double %23, %25
  %27 = fcmp ult double %26, 1.000000e-15
  %28 = fdiv double 1.000000e+00, %23
  %29 = fdiv double %25, 1.000000e-15
  %30 = select i1 %27, double %29, double %28
  br label %31

31:                                               ; preds = %58, %12
  %32 = phi i64 [ 5, %12 ], [ %70, %58 ]
  %33 = add nsw i64 %32, -1
  %34 = sdiv i64 %33, 2
  %35 = sub nsw i64 0, %34
  %36 = icmp ugt i64 %32, -9223372036854775808
  br i1 %36, label %58, label %37

37:                                               ; preds = %31
  %38 = tail call i64 @llvm.abs.i64(i64 %34, i1 true)
  br label %39

39:                                               ; preds = %37, %55
  %40 = phi i64 [ %56, %55 ], [ %35, %37 ]
  %41 = phi double [ %52, %55 ], [ 0.000000e+00, %37 ]
  %42 = mul nsw i64 %40, %40
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ %35, %39 ], [ %53, %43 ]
  %45 = phi double [ %41, %39 ], [ %52, %43 ]
  %46 = mul nsw i64 %44, %44
  %47 = add nuw nsw i64 %46, %42
  %48 = sitofp i64 %47 to double
  %49 = fneg double %48
  %50 = fmul double %21, %49
  %51 = tail call double @exp(double noundef %50) #11
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %30, double %45)
  %53 = add i64 %44, 1
  %54 = icmp eq i64 %44, %38
  br i1 %54, label %55, label %43, !llvm.loop !50

55:                                               ; preds = %43
  %56 = add i64 %40, 1
  %57 = icmp eq i64 %40, %38
  br i1 %57, label %58, label %39, !llvm.loop !51

58:                                               ; preds = %55, %31
  %59 = phi double [ 0.000000e+00, %31 ], [ %52, %55 ]
  %60 = mul nsw i64 %34, %34
  %61 = sitofp i64 %60 to double
  %62 = fneg double %61
  %63 = fmul double %21, %62
  %64 = tail call double @exp(double noundef %63) #11
  %65 = fmul double %30, %64
  %66 = fdiv double %65, %59
  %67 = fcmp olt double %66, 0x3EF0001000100010
  %68 = fcmp olt double %66, 1.000000e-15
  %69 = or i1 %67, %68
  %70 = add i64 %32, 2
  br i1 %69, label %71, label %31, !llvm.loop !52

71:                                               ; preds = %58
  %72 = add i64 %32, -2
  br label %73

73:                                               ; preds = %9, %71, %5
  %74 = phi i64 [ %8, %5 ], [ %72, %71 ], [ 3, %9 ]
  ret i64 %74
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetOptimalKernelWidth(double noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = tail call i64 @GetOptimalKernelWidth1D(double noundef %0, double noundef %1)
  ret i64 %3
}

; Function Attrs: hot
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { hot nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !36, i64 0}
!40 = !{!41, !39, i64 0}
!41 = !{!"_AffineMatrix", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!42 = !{!41, !39, i64 24}
!43 = !{!41, !39, i64 8}
!44 = !{!41, !39, i64 16}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !46, !47}
!51 = distinct !{!51, !46, !47}
!52 = distinct !{!52, !47}
