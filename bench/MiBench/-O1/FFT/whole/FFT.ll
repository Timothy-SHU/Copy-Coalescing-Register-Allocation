; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@.str.2.3 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00", align 1
@str.9 = private unnamed_addr constant [9 x i8] c"ImagOut:\00", align 1
@str.10 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00", align 1
@str.11 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00", align 1
@str.12 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @IsPowerOfTwo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !7
  %5 = icmp ult i32 %4, 2
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @NumberOfBitsNeeded(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %11, %6 ], [ 0, %1 ]
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %0
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %7, 1
  br i1 %10, label %6, label %12, !llvm.loop !12

12:                                               ; preds = %6
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ReverseBits(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %2 ]
  %7 = phi i32 [ %11, %4 ], [ %0, %2 ]
  %8 = shl i32 %5, 1
  %9 = and i32 %7, 1
  %10 = or disjoint i32 %8, %9
  %11 = lshr i32 %7, 1
  %12 = add nuw i32 %6, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !14

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @Index_to_frequency(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, %0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = lshr i32 %0, 1
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = uitofp i32 %1 to double
  %9 = uitofp i32 %0 to double
  %10 = fdiv double %8, %9
  br label %17

11:                                               ; preds = %4
  %12 = sub i32 %0, %1
  %13 = uitofp i32 %12 to double
  %14 = fneg double %13
  %15 = uitofp i32 %0 to double
  %16 = fdiv double %14, %15
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi double [ %10, %7 ], [ %16, %11 ], [ 0.000000e+00, %2 ]
  ret double %18
}

; Function Attrs: nounwind uwtable
define dso_local void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, double 0x401921FB54442D18, double 0xC01921FB54442D18
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !8
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1.2) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

19:                                               ; preds = %12
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load ptr, ptr @stderr, align 8, !tbaa !8
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

24:                                               ; preds = %19
  %25 = icmp eq ptr %5, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load ptr, ptr @stderr, align 8, !tbaa !8
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

29:                                               ; preds = %24
  %30 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0) #16
  %31 = icmp eq i32 %0, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq ptr %3, null
  %34 = zext i32 %0 to i64
  br label %37

35:                                               ; preds = %48, %29
  %36 = icmp ult i32 %0, 2
  br i1 %36, label %120, label %53

37:                                               ; preds = %48, %32
  %38 = phi i64 [ 0, %32 ], [ %51, %48 ]
  %39 = trunc i64 %38 to i32
  %40 = tail call i32 @ReverseBits(i32 noundef %39, i32 noundef %30) #16
  %41 = getelementptr inbounds float, ptr %2, i64 %38
  %42 = load float, ptr %41, align 4, !tbaa !15
  %43 = zext i32 %40 to i64
  %44 = getelementptr inbounds float, ptr %4, i64 %43
  store float %42, ptr %44, align 4, !tbaa !15
  br i1 %33, label %48, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds float, ptr %3, i64 %38
  %47 = load float, ptr %46, align 4, !tbaa !15
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi float [ %47, %45 ], [ 0.000000e+00, %37 ]
  %50 = getelementptr inbounds float, ptr %5, i64 %43
  store float %49, ptr %50, align 4, !tbaa !15
  %51 = add nuw nsw i64 %38, 1
  %52 = icmp eq i64 %51, %34
  br i1 %52, label %35, label %37, !llvm.loop !17

53:                                               ; preds = %117, %35
  %54 = phi i32 [ %118, %117 ], [ 2, %35 ]
  %55 = phi i32 [ %54, %117 ], [ 1, %35 ]
  %56 = uitofp i32 %54 to double
  %57 = fdiv double %14, %56
  %58 = fmul double %57, -2.000000e+00
  %59 = tail call double @sin(double noundef %58) #16
  %60 = tail call double @sin(double %57)
  %61 = fneg double %60
  %62 = tail call double @cos(double noundef %58) #16
  %63 = tail call double @cos(double %57)
  %64 = fmul double %63, 2.000000e+00
  %65 = icmp eq i32 %55, 0
  br label %66

66:                                               ; preds = %113, %53
  %67 = phi i32 [ %55, %53 ], [ %116, %113 ]
  %68 = phi i32 [ 0, %53 ], [ %114, %113 ]
  br i1 %65, label %113, label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ %111, %69 ], [ %68, %66 ]
  %71 = phi double [ %78, %69 ], [ %61, %66 ]
  %72 = phi double [ %71, %69 ], [ %59, %66 ]
  %73 = phi double [ %76, %69 ], [ %63, %66 ]
  %74 = phi double [ %73, %69 ], [ %62, %66 ]
  %75 = fneg double %74
  %76 = tail call double @llvm.fmuladd.f64(double %64, double %73, double %75)
  %77 = fneg double %72
  %78 = tail call double @llvm.fmuladd.f64(double %64, double %71, double %77)
  %79 = add i32 %70, %55
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %4, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !15
  %83 = fpext float %82 to double
  %84 = getelementptr inbounds float, ptr %5, i64 %80
  %85 = load float, ptr %84, align 4, !tbaa !15
  %86 = fpext float %85 to double
  %87 = fneg double %78
  %88 = fmul double %87, %86
  %89 = tail call double @llvm.fmuladd.f64(double %76, double %83, double %88)
  %90 = fmul double %78, %83
  %91 = tail call double @llvm.fmuladd.f64(double %76, double %86, double %90)
  %92 = zext i32 %70 to i64
  %93 = getelementptr inbounds float, ptr %4, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !15
  %95 = fpext float %94 to double
  %96 = fsub double %95, %89
  %97 = fptrunc double %96 to float
  store float %97, ptr %81, align 4, !tbaa !15
  %98 = getelementptr inbounds float, ptr %5, i64 %92
  %99 = load float, ptr %98, align 4, !tbaa !15
  %100 = fpext float %99 to double
  %101 = fsub double %100, %91
  %102 = fptrunc double %101 to float
  store float %102, ptr %84, align 4, !tbaa !15
  %103 = load float, ptr %93, align 4, !tbaa !15
  %104 = fpext float %103 to double
  %105 = fadd double %89, %104
  %106 = fptrunc double %105 to float
  store float %106, ptr %93, align 4, !tbaa !15
  %107 = load float, ptr %98, align 4, !tbaa !15
  %108 = fpext float %107 to double
  %109 = fadd double %91, %108
  %110 = fptrunc double %109 to float
  store float %110, ptr %98, align 4, !tbaa !15
  %111 = add i32 %70, 1
  %112 = icmp eq i32 %111, %67
  br i1 %112, label %113, label %69, !llvm.loop !18

113:                                              ; preds = %69, %66
  %114 = add i32 %68, %54
  %115 = icmp ult i32 %114, %0
  %116 = add i32 %67, %54
  br i1 %115, label %66, label %117, !llvm.loop !19

117:                                              ; preds = %113
  %118 = shl i32 %54, 1
  %119 = icmp ugt i32 %118, %0
  br i1 %119, label %120, label %53, !llvm.loop !20

120:                                              ; preds = %117, %35
  br i1 %13, label %140, label %121

121:                                              ; preds = %120
  %122 = uitofp i32 %0 to double
  %123 = icmp eq i32 %0, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = zext i32 %0 to i64
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %138, %126 ]
  %128 = getelementptr inbounds float, ptr %4, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !15
  %130 = fpext float %129 to double
  %131 = fdiv double %130, %122
  %132 = fptrunc double %131 to float
  store float %132, ptr %128, align 4, !tbaa !15
  %133 = getelementptr inbounds float, ptr %5, i64 %127
  %134 = load float, ptr %133, align 4, !tbaa !15
  %135 = fpext float %134 to double
  %136 = fdiv double %135, %122
  %137 = fptrunc double %136 to float
  store float %137, ptr %133, align 4, !tbaa !15
  %138 = add nuw nsw i64 %127, 1
  %139 = icmp eq i64 %138, %125
  br i1 %139, label %140, label %126, !llvm.loop !21

140:                                              ; preds = %126, %121, %120
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.3)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef -1) #15
  unreachable

9:                                                ; preds = %2
  %10 = icmp eq i32 %0, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds ptr, ptr %1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.4.4, i64 noundef 2)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %16, %11 ], [ 0, %9 ]
  %19 = getelementptr inbounds ptr, ptr %1, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = tail call i64 @strtol(ptr nocapture noundef nonnull %20, ptr noundef null, i32 noundef 10) #16
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds ptr, ptr %1, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = tail call i64 @strtol(ptr nocapture noundef nonnull %24, ptr noundef null, i32 noundef 10) #16
  %26 = trunc i64 %25 to i32
  tail call void @srand(i32 noundef 1) #16
  %27 = shl i64 %21, 2
  %28 = and i64 %27, 17179869180
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #17
  %30 = tail call noalias ptr @malloc(i64 noundef %28) #17
  %31 = tail call noalias ptr @malloc(i64 noundef %28) #17
  %32 = tail call noalias ptr @malloc(i64 noundef %28) #17
  %33 = shl i64 %25, 2
  %34 = and i64 %33, 17179869180
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #17
  %36 = tail call noalias ptr @malloc(i64 noundef %34) #17
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %17
  %39 = and i64 %25, 4294967295
  br label %46

40:                                               ; preds = %46, %17
  %41 = icmp eq i32 %22, 0
  br i1 %41, label %96, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %26, 0
  %44 = and i64 %21, 4294967295
  %45 = and i64 %25, 4294967295
  br label %58

46:                                               ; preds = %46, %38
  %47 = phi i64 [ 0, %38 ], [ %56, %46 ]
  %48 = tail call i32 @rand() #16
  %49 = srem i32 %48, 1000
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds float, ptr %35, i64 %47
  store float %50, ptr %51, align 4, !tbaa !15
  %52 = tail call i32 @rand() #16
  %53 = srem i32 %52, 1000
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds float, ptr %36, i64 %47
  store float %54, ptr %55, align 4, !tbaa !15
  %56 = add nuw nsw i64 %47, 1
  %57 = icmp eq i64 %56, %39
  br i1 %57, label %40, label %46, !llvm.loop !22

58:                                               ; preds = %93, %42
  %59 = phi i64 [ 0, %42 ], [ %94, %93 ]
  %60 = getelementptr inbounds float, ptr %29, i64 %59
  store float 0.000000e+00, ptr %60, align 4, !tbaa !15
  br i1 %43, label %93, label %61

61:                                               ; preds = %58
  %62 = trunc i64 %59 to i32
  %63 = uitofp i32 %62 to float
  %64 = trunc i64 %59 to i32
  %65 = uitofp i32 %64 to float
  %66 = getelementptr inbounds float, ptr %30, i64 %59
  br label %67

67:                                               ; preds = %85, %61
  %68 = phi i64 [ 0, %61 ], [ %91, %85 ]
  %69 = tail call i32 @rand() #16
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds float, ptr %35, i64 %68
  %73 = load float, ptr %72, align 4, !tbaa !15
  %74 = fpext float %73 to double
  %75 = getelementptr inbounds float, ptr %36, i64 %68
  %76 = load float, ptr %75, align 4, !tbaa !15
  br i1 %71, label %81, label %77

77:                                               ; preds = %67
  %78 = fmul float %76, %63
  %79 = fpext float %78 to double
  %80 = tail call double @cos(double noundef %79) #16
  br label %85

81:                                               ; preds = %67
  %82 = fmul float %76, %65
  %83 = fpext float %82 to double
  %84 = tail call double @sin(double noundef %83) #16
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi double [ %84, %81 ], [ %80, %77 ]
  %87 = load float, ptr %60, align 4, !tbaa !15
  %88 = fpext float %87 to double
  %89 = tail call double @llvm.fmuladd.f64(double %74, double %86, double %88)
  %90 = fptrunc double %89 to float
  store float %90, ptr %60, align 4, !tbaa !15
  store float 0.000000e+00, ptr %66, align 4, !tbaa !15
  %91 = add nuw nsw i64 %68, 1
  %92 = icmp eq i64 %91, %45
  br i1 %92, label %93, label %67, !llvm.loop !23

93:                                               ; preds = %85, %58
  %94 = add nuw nsw i64 %59, 1
  %95 = icmp eq i64 %94, %44
  br i1 %95, label %96, label %58, !llvm.loop !24

96:                                               ; preds = %93, %40
  %97 = tail call i32 (i32, i32, ptr, ptr, ptr, ptr, ...) @fft_float(i32 noundef %22, i32 noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32) #16
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %99 = icmp eq i32 %22, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = and i64 %21, 4294967295
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i64 [ 0, %100 ], [ %108, %102 ]
  %104 = getelementptr inbounds float, ptr %31, i64 %103
  %105 = load float, ptr %104, align 4, !tbaa !15
  %106 = fpext float %105 to double
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %106)
  %108 = add nuw nsw i64 %103, 1
  %109 = icmp eq i64 %108, %101
  br i1 %109, label %110, label %102, !llvm.loop !25

110:                                              ; preds = %102, %96
  %111 = tail call i32 @putchar(i32 10)
  %112 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %113 = icmp eq i32 %22, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = and i64 %21, 4294967295
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i64 [ 0, %114 ], [ %122, %116 ]
  %118 = getelementptr inbounds float, ptr %32, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !15
  %120 = fpext float %119 to double
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %120)
  %122 = add nuw nsw i64 %117, 1
  %123 = icmp eq i64 %122, %115
  br i1 %123, label %124, label %116, !llvm.loop !26

124:                                              ; preds = %116, %110
  %125 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %29) #16
  tail call void @free(ptr noundef %30) #16
  tail call void @free(ptr noundef %31) #16
  tail call void @free(ptr noundef %32) #16
  tail call void @free(ptr noundef %35) #16
  tail call void @free(ptr noundef %36) #16
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{i32 0, i32 33}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !10, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
