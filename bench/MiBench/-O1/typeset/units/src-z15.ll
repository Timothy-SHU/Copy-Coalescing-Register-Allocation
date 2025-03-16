; ModuleID = 'src/z15.c'
source_filename = "src/z15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"InvScaleConstraint: sf <= 0!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RotateConstraint: theta!\00", align 1
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Constrained: x has no parent!\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Constrained: COL_THR!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Constrained:\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MinConstraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load <2 x i32>, ptr %0, align 4, !tbaa !5
  %4 = load <2 x i32>, ptr %1, align 4, !tbaa !5
  %5 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %3, <2 x i32> %4)
  store <2 x i32> %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = tail call i32 @llvm.smin.i32(i32 %7, i32 %9)
  store i32 %10, ptr %6, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SetSizeToMaxForwardConstraint(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = tail call i32 @llvm.smin.i32(i32 %5, i32 %7)
  store i32 %8, ptr %1, align 4, !tbaa !5
  %9 = load i32, ptr %2, align 4, !tbaa !12
  %10 = load i32, ptr %4, align 4, !tbaa !11
  %11 = sub nsw i32 %10, %8
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11)
  store i32 %12, ptr %0, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @EnlargeToConstraint(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = load i32, ptr %0, align 4, !tbaa !5
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = tail call i32 @llvm.smin.i32(i32 %7, i32 %9)
  store i32 %10, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ScaleToConstraint(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4, !tbaa !12
  %7 = sitofp i32 %6 to float
  %8 = sitofp i32 %0 to float
  %9 = fdiv float %7, %8
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %9
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi float [ %11, %5 ], [ 1.000000e+00, %3 ]
  %14 = add nsw i32 %1, %0
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = sitofp i32 %18 to float
  %20 = sitofp i32 %14 to float
  %21 = fdiv float %19, %20
  %22 = fcmp olt float %13, %21
  %23 = select i1 %22, float %13, float %21
  br label %24

24:                                               ; preds = %16, %12
  %25 = phi float [ %23, %16 ], [ %13, %12 ]
  %26 = icmp sgt i32 %1, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !9
  %30 = sitofp i32 %29 to float
  %31 = sitofp i32 %1 to float
  %32 = fdiv float %30, %31
  %33 = fcmp olt float %25, %32
  %34 = select i1 %33, float %25, float %32
  br label %35

35:                                               ; preds = %27, %24
  %36 = phi float [ %34, %27 ], [ %25, %24 ]
  %37 = fmul float %36, 1.280000e+02
  %38 = fptosi float %37 to i32
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @InvScaleConstraint(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %7 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %6, ptr noundef nonnull @.str.1) #8
  br label %8

8:                                                ; preds = %5, %3
  %9 = load i32, ptr %2, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 8388607
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = shl nsw i32 %9, 7
  %13 = sdiv i32 %12, %1
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 8388607)
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 8388607, %8 ], [ %14, %11 ]
  store i32 %16, ptr %0, align 4, !tbaa !12
  %17 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp eq i32 %18, 8388607
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = shl nsw i32 %18, 7
  %22 = sdiv i32 %21, %1
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 8388607)
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 8388607, %15 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !11
  %27 = getelementptr inbounds %struct.CONSTRAINT, ptr %2, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %29 = icmp eq i32 %28, 8388607
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = shl nsw i32 %28, 7
  %32 = sdiv i32 %31, %1
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 8388607)
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i32 [ 8388607, %24 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 2
  store i32 %35, ptr %36, align 4, !tbaa !9
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @RotateConstraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = sitofp i32 %2 to float
  %8 = fmul float %7, 2.000000e+00
  %9 = fpext float %8 to double
  %10 = fmul double %9, 0x400921FB54442D18
  %11 = fdiv double %10, 4.608000e+04
  %12 = fptrunc double %11 to float
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %18, label %14

14:                                               ; preds = %18, %6
  %15 = phi float [ %12, %6 ], [ %22, %18 ]
  %16 = fpext float %15 to double
  %17 = fcmp ult double %16, 0x401921FB54442D18
  br i1 %17, label %30, label %24

18:                                               ; preds = %6, %18
  %19 = phi float [ %22, %18 ], [ %12, %6 ]
  %20 = fpext float %19 to double
  %21 = fadd double %20, 0x401921FB54442D18
  %22 = fptrunc double %21 to float
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %18, label %14

24:                                               ; preds = %14, %24
  %25 = phi double [ %28, %24 ], [ %16, %14 ]
  %26 = fadd double %25, 0xC01921FB54442D18
  %27 = fptrunc double %26 to float
  %28 = fpext float %27 to double
  %29 = fcmp ult double %28, 0x401921FB54442D18
  br i1 %29, label %30, label %24

30:                                               ; preds = %24, %14
  %31 = phi float [ %15, %14 ], [ %27, %24 ]
  %32 = phi double [ %16, %14 ], [ %28, %24 ]
  %33 = fcmp ult float %31, 0.000000e+00
  %34 = fcmp ugt double %32, 0x401921FB54442D18
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %38 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %37, ptr noundef nonnull @.str.2) #8
  br label %39

39:                                               ; preds = %30, %36
  %40 = fcmp ugt double %32, 0x3FF921FB54442D18
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %43 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %44 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %45 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  br label %71

46:                                               ; preds = %39
  %47 = fcmp ugt double %32, 0x400921FB54442D18
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = fadd double %32, 0xBFF921FB54442D18
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  %52 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %53 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %54 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  br label %71

55:                                               ; preds = %46
  %56 = fcmp ugt double %32, 0x4012D97C7F3321D2
  br i1 %56, label %64, label %57

57:                                               ; preds = %55
  %58 = fadd double %32, 0xC00921FB54442D18
  %59 = fptrunc double %58 to float
  %60 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %61 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  %62 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  %63 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  br label %71

64:                                               ; preds = %55
  %65 = fadd double %32, 0xC012D97C7F3321D2
  %66 = fptrunc double %65 to float
  %67 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 1
  %68 = getelementptr inbounds %struct.CONSTRAINT, ptr %4, i64 0, i32 2
  %69 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 2
  %70 = getelementptr inbounds %struct.CONSTRAINT, ptr %3, i64 0, i32 1
  br label %71

71:                                               ; preds = %48, %64, %57, %41
  %72 = phi ptr [ %69, %64 ], [ %62, %57 ], [ %3, %48 ], [ %4, %41 ]
  %73 = phi ptr [ %70, %64 ], [ %63, %57 ], [ %53, %48 ], [ %44, %41 ]
  %74 = phi ptr [ %3, %64 ], [ %4, %57 ], [ %54, %48 ], [ %45, %41 ]
  %75 = phi ptr [ %4, %64 ], [ %60, %57 ], [ %51, %48 ], [ %3, %41 ]
  %76 = phi ptr [ %67, %64 ], [ %61, %57 ], [ %52, %48 ], [ %42, %41 ]
  %77 = phi ptr [ %68, %64 ], [ %3, %57 ], [ %4, %48 ], [ %43, %41 ]
  %78 = phi float [ %66, %64 ], [ %59, %57 ], [ %50, %48 ], [ %31, %41 ]
  %79 = load i32, ptr %77, align 4, !tbaa !5
  %80 = load i32, ptr %76, align 4, !tbaa !11
  %81 = load i32, ptr %75, align 4, !tbaa !5
  %82 = load i32, ptr %74, align 4, !tbaa !5
  %83 = load i32, ptr %73, align 4, !tbaa !11
  %84 = load i32, ptr %72, align 4, !tbaa !5
  %85 = fpext float %78 to double
  %86 = fsub double 0x3FF921FB54442D18, %85
  %87 = fptrunc double %86 to float
  %88 = icmp eq i32 %5, 0
  br i1 %88, label %89, label %169

89:                                               ; preds = %71
  %90 = getelementptr inbounds i8, ptr %1, i64 52
  %91 = load i32, ptr %90, align 4, !tbaa !15
  %92 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3, i32 1, i64 4
  %93 = load i32, ptr %92, align 4, !tbaa !15
  %94 = tail call double @cos(double noundef %85) #8
  %95 = fptrunc double %94 to float
  %96 = tail call double @sin(double noundef %85) #8
  %97 = tail call float @llvm.fabs.f32(float %95)
  %98 = fpext float %97 to double
  %99 = fcmp olt double %98, 0x3EB0C6F7A0B5ED8D
  br i1 %99, label %128, label %100

100:                                              ; preds = %89
  %101 = fptrunc double %96 to float
  %102 = sitofp i32 %81 to float
  %103 = insertelement <2 x i32> poison, i32 %91, i64 0
  %104 = insertelement <2 x i32> %103, i32 %93, i64 1
  %105 = sitofp <2 x i32> %104 to <2 x float>
  %106 = sitofp i32 %80 to float
  %107 = fneg <2 x float> %105
  %108 = extractelement <2 x float> %107, i64 0
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %101, float %106)
  %110 = insertelement <2 x float> poison, float %101, i64 0
  %111 = shufflevector <2 x float> %110, <2 x float> poison, <2 x i32> zeroinitializer
  %112 = insertelement <2 x float> poison, float %102, i64 0
  %113 = insertelement <2 x float> %112, float %109, i64 1
  %114 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> %111, <2 x float> %113)
  %115 = insertelement <2 x float> poison, float %95, i64 0
  %116 = shufflevector <2 x float> %115, <2 x float> poison, <2 x i32> zeroinitializer
  %117 = fdiv <2 x float> %114, %116
  %118 = fcmp oge <2 x float> %117, <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>
  %119 = select <2 x i1> %118, <2 x float> <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>, <2 x float> %117
  %120 = fptosi <2 x float> %119 to <2 x i32>
  %121 = sitofp i32 %79 to float
  %122 = extractelement <2 x float> %107, i64 1
  %123 = tail call float @llvm.fmuladd.f32(float %122, float %101, float %121)
  %124 = fdiv float %123, %95
  %125 = fcmp oge float %124, 0x415FFFFFC0000000
  %126 = select i1 %125, float 0x415FFFFFC0000000, float %124
  %127 = fptosi float %126 to i32
  br label %128

128:                                              ; preds = %89, %100
  %129 = phi i32 [ %127, %100 ], [ 8388607, %89 ]
  %130 = phi <2 x i32> [ %120, %100 ], [ <i32 8388607, i32 8388607>, %89 ]
  store <2 x i32> %130, ptr %0, align 4
  %131 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 2
  store i32 %129, ptr %131, align 4
  %132 = load i32, ptr %92, align 4, !tbaa !15
  %133 = load i32, ptr %90, align 4, !tbaa !15
  %134 = fpext float %87 to double
  %135 = tail call double @cos(double noundef %134) #8
  %136 = fptrunc double %135 to float
  %137 = tail call double @sin(double noundef %134) #8
  %138 = tail call float @llvm.fabs.f32(float %136)
  %139 = fpext float %138 to double
  %140 = fcmp olt double %139, 0x3EB0C6F7A0B5ED8D
  br i1 %140, label %249, label %141

141:                                              ; preds = %128
  %142 = fptrunc double %137 to float
  %143 = sitofp i32 %82 to float
  %144 = sitofp i32 %132 to float
  %145 = fneg float %144
  %146 = tail call float @llvm.fmuladd.f32(float %145, float %142, float %143)
  %147 = fdiv float %146, %136
  %148 = fcmp oge float %147, 0x415FFFFFC0000000
  %149 = select i1 %148, float 0x415FFFFFC0000000, float %147
  %150 = fptosi float %149 to i32
  %151 = sitofp i32 %83 to float
  %152 = tail call float @llvm.fmuladd.f32(float %145, float %142, float %151)
  %153 = sitofp i32 %133 to float
  %154 = fneg float %153
  %155 = sitofp i32 %84 to float
  %156 = insertelement <2 x float> poison, float %154, i64 0
  %157 = shufflevector <2 x float> %156, <2 x float> poison, <2 x i32> zeroinitializer
  %158 = insertelement <2 x float> poison, float %142, i64 0
  %159 = shufflevector <2 x float> %158, <2 x float> poison, <2 x i32> zeroinitializer
  %160 = insertelement <2 x float> poison, float %152, i64 0
  %161 = insertelement <2 x float> %160, float %155, i64 1
  %162 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %157, <2 x float> %159, <2 x float> %161)
  %163 = insertelement <2 x float> poison, float %136, i64 0
  %164 = shufflevector <2 x float> %163, <2 x float> poison, <2 x i32> zeroinitializer
  %165 = fdiv <2 x float> %162, %164
  %166 = fcmp oge <2 x float> %165, <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>
  %167 = select <2 x i1> %166, <2 x float> <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>, <2 x float> %165
  %168 = fptosi <2 x float> %167 to <2 x i32>
  br label %249

169:                                              ; preds = %71
  %170 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3
  %171 = load i32, ptr %170, align 8, !tbaa !15
  %172 = getelementptr inbounds %struct.word_type, ptr %1, i64 0, i32 3, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !15
  %174 = fpext float %87 to double
  %175 = tail call double @cos(double noundef %174) #8
  %176 = fptrunc double %175 to float
  %177 = tail call double @sin(double noundef %174) #8
  %178 = tail call float @llvm.fabs.f32(float %176)
  %179 = fpext float %178 to double
  %180 = fcmp olt double %179, 0x3EB0C6F7A0B5ED8D
  br i1 %180, label %209, label %181

181:                                              ; preds = %169
  %182 = fptrunc double %177 to float
  %183 = sitofp i32 %81 to float
  %184 = insertelement <2 x i32> poison, i32 %171, i64 0
  %185 = insertelement <2 x i32> %184, i32 %173, i64 1
  %186 = sitofp <2 x i32> %185 to <2 x float>
  %187 = sitofp i32 %80 to float
  %188 = fneg <2 x float> %186
  %189 = extractelement <2 x float> %188, i64 0
  %190 = tail call float @llvm.fmuladd.f32(float %189, float %182, float %187)
  %191 = insertelement <2 x float> poison, float %182, i64 0
  %192 = shufflevector <2 x float> %191, <2 x float> poison, <2 x i32> zeroinitializer
  %193 = insertelement <2 x float> poison, float %183, i64 0
  %194 = insertelement <2 x float> %193, float %190, i64 1
  %195 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %188, <2 x float> %192, <2 x float> %194)
  %196 = insertelement <2 x float> poison, float %176, i64 0
  %197 = shufflevector <2 x float> %196, <2 x float> poison, <2 x i32> zeroinitializer
  %198 = fdiv <2 x float> %195, %197
  %199 = fcmp oge <2 x float> %198, <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>
  %200 = select <2 x i1> %199, <2 x float> <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>, <2 x float> %198
  %201 = fptosi <2 x float> %200 to <2 x i32>
  %202 = sitofp i32 %79 to float
  %203 = extractelement <2 x float> %188, i64 1
  %204 = tail call float @llvm.fmuladd.f32(float %203, float %182, float %202)
  %205 = fdiv float %204, %176
  %206 = fcmp oge float %205, 0x415FFFFFC0000000
  %207 = select i1 %206, float 0x415FFFFFC0000000, float %205
  %208 = fptosi float %207 to i32
  br label %209

209:                                              ; preds = %169, %181
  %210 = phi i32 [ %208, %181 ], [ 8388607, %169 ]
  %211 = phi <2 x i32> [ %201, %181 ], [ <i32 8388607, i32 8388607>, %169 ]
  store <2 x i32> %211, ptr %0, align 4
  %212 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 2
  store i32 %210, ptr %212, align 4
  %213 = load i32, ptr %172, align 8, !tbaa !15
  %214 = load i32, ptr %170, align 8, !tbaa !15
  %215 = tail call double @cos(double noundef %85) #8
  %216 = fptrunc double %215 to float
  %217 = tail call double @sin(double noundef %85) #8
  %218 = tail call float @llvm.fabs.f32(float %216)
  %219 = fpext float %218 to double
  %220 = fcmp olt double %219, 0x3EB0C6F7A0B5ED8D
  br i1 %220, label %249, label %221

221:                                              ; preds = %209
  %222 = fptrunc double %217 to float
  %223 = sitofp i32 %84 to float
  %224 = sitofp i32 %213 to float
  %225 = fneg float %224
  %226 = tail call float @llvm.fmuladd.f32(float %225, float %222, float %223)
  %227 = fdiv float %226, %216
  %228 = fcmp oge float %227, 0x415FFFFFC0000000
  %229 = select i1 %228, float 0x415FFFFFC0000000, float %227
  %230 = fptosi float %229 to i32
  %231 = sitofp i32 %83 to float
  %232 = tail call float @llvm.fmuladd.f32(float %225, float %222, float %231)
  %233 = sitofp i32 %214 to float
  %234 = fneg float %233
  %235 = sitofp i32 %82 to float
  %236 = insertelement <2 x float> poison, float %234, i64 0
  %237 = shufflevector <2 x float> %236, <2 x float> poison, <2 x i32> zeroinitializer
  %238 = insertelement <2 x float> poison, float %222, i64 0
  %239 = shufflevector <2 x float> %238, <2 x float> poison, <2 x i32> zeroinitializer
  %240 = insertelement <2 x float> poison, float %232, i64 0
  %241 = insertelement <2 x float> %240, float %235, i64 1
  %242 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %237, <2 x float> %239, <2 x float> %241)
  %243 = insertelement <2 x float> poison, float %216, i64 0
  %244 = shufflevector <2 x float> %243, <2 x float> poison, <2 x i32> zeroinitializer
  %245 = fdiv <2 x float> %242, %244
  %246 = fcmp oge <2 x float> %245, <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>
  %247 = select <2 x i1> %246, <2 x float> <float 0x415FFFFFC0000000, float 0x415FFFFFC0000000>, <2 x float> %245
  %248 = fptosi <2 x float> %247 to <2 x i32>
  br label %249

249:                                              ; preds = %221, %209, %141, %128
  %250 = phi i32 [ %150, %141 ], [ 8388607, %128 ], [ %230, %221 ], [ 8388607, %209 ]
  %251 = phi ptr [ %131, %141 ], [ %131, %128 ], [ %212, %221 ], [ %212, %209 ]
  %252 = phi <2 x i32> [ %168, %141 ], [ <i32 8388607, i32 8388607>, %128 ], [ %248, %221 ], [ <i32 8388607, i32 8388607>, %209 ]
  %253 = getelementptr inbounds %struct.CONSTRAINT, ptr %0, i64 0, i32 1
  %254 = load i32, ptr %0, align 4, !tbaa !12
  %255 = tail call i32 @llvm.smin.i32(i32 %254, i32 %250)
  store i32 %255, ptr %0, align 4, !tbaa !12
  %256 = load i32, ptr %253, align 4, !tbaa !11
  %257 = extractelement <2 x i32> %252, i64 0
  %258 = tail call i32 @llvm.smin.i32(i32 %256, i32 %257)
  store i32 %258, ptr %253, align 4, !tbaa !11
  %259 = load i32, ptr %251, align 4, !tbaa !9
  %260 = extractelement <2 x i32> %252, i64 1
  %261 = tail call i32 @llvm.smin.i32(i32 %259, i32 %260)
  store i32 %261, ptr %251, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InsertScale(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4, !tbaa !12
  %10 = sitofp i32 %9 to float
  %11 = sitofp i32 %4 to float
  %12 = fdiv float %10, %11
  %13 = fcmp ogt float %12, 1.000000e+00
  %14 = select i1 %13, float 1.000000e+00, float %12
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi float [ %14, %8 ], [ 1.000000e+00, %2 ]
  %17 = add nsw i32 %6, %4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = sitofp i32 %21 to float
  %23 = sitofp i32 %17 to float
  %24 = fdiv float %22, %23
  %25 = fcmp olt float %16, %24
  %26 = select i1 %25, float %16, float %24
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi float [ %26, %19 ], [ %16, %15 ]
  %29 = icmp sgt i32 %6, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !9
  %33 = sitofp i32 %32 to float
  %34 = sitofp i32 %6 to float
  %35 = fdiv float %33, %34
  %36 = fcmp olt float %28, %35
  %37 = select i1 %36, float %28, float %35
  br label %38

38:                                               ; preds = %27, %30
  %39 = phi float [ %37, %30 ], [ %28, %27 ]
  %40 = fmul float %39, 1.280000e+02
  %41 = fptosi float %40 to i32
  %42 = icmp sgt i32 %41, 25
  br i1 %42, label %43, label %148

43:                                               ; preds = %38
  %44 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 34), align 1, !tbaa !15
  %45 = zext i8 %44 to i32
  store i32 %45, ptr @zz_size, align 4, !tbaa !5
  %46 = zext i8 %44 to i64
  %47 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %52 = tail call ptr @GetMemory(i32 noundef %45, ptr noundef %51) #8
  store ptr %52, ptr @zz_hold, align 8, !tbaa !13
  br label %55

53:                                               ; preds = %43
  store ptr %48, ptr @zz_hold, align 8, !tbaa !13
  %54 = load ptr, ptr %48, align 8, !tbaa !15
  store ptr %54, ptr %47, align 8, !tbaa !13
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi ptr [ %52, %50 ], [ %48, %53 ]
  %57 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1
  store i8 34, ptr %57, align 8, !tbaa !15
  %58 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1, i32 1
  store ptr %56, ptr %58, align 8, !tbaa !15
  %59 = getelementptr inbounds [2 x %struct.LIST], ptr %56, i64 0, i64 1
  store ptr %56, ptr %59, align 8, !tbaa !15
  %60 = getelementptr inbounds %struct.LIST, ptr %56, i64 0, i32 1
  store ptr %56, ptr %60, align 8, !tbaa !15
  store ptr %56, ptr %56, align 8, !tbaa !15
  %61 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 1610612736
  %64 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, -1610612737
  %67 = or disjoint i32 %66, %63
  store i32 %67, ptr %64, align 8
  %68 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !15
  %70 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1, i32 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !15
  %71 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1048575
  %74 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, -1048576
  %77 = or disjoint i32 %76, %73
  store i32 %77, ptr %74, align 4
  %78 = load i32, ptr %71, align 4
  %79 = and i32 %78, -1048576
  %80 = or disjoint i32 %79, %73
  store i32 %80, ptr %74, align 4
  %81 = getelementptr inbounds %struct.closure_type, ptr %56, i64 0, i32 4
  store i32 %41, ptr %81, align 8, !tbaa !15
  %82 = load i32, ptr %3, align 8, !tbaa !15
  %83 = mul nsw i32 %82, %41
  %84 = sdiv i32 %83, 128
  %85 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 3
  store i32 %84, ptr %85, align 8, !tbaa !15
  %86 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !11
  %88 = sub nsw i32 %87, %84
  %89 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !9
  %91 = tail call i32 @llvm.smin.i32(i32 %88, i32 %90)
  %92 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 3, i32 1
  store i32 %91, ptr %92, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.closure_type, ptr %56, i64 0, i32 4, i32 0, i32 2
  store i32 128, ptr %93, align 8, !tbaa !15
  %94 = getelementptr inbounds i8, ptr %0, i64 52
  %95 = load i32, ptr %94, align 4, !tbaa !15
  %96 = getelementptr inbounds i8, ptr %56, i64 52
  store i32 %95, ptr %96, align 4, !tbaa !15
  %97 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1, i64 4
  %98 = load i32, ptr %97, align 4, !tbaa !15
  %99 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 3, i32 1, i64 4
  store i32 %98, ptr %99, align 4, !tbaa !15
  %100 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %104, label %105

104:                                              ; preds = %55
  store ptr null, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %56, ptr @zz_res, align 8, !tbaa !13
  store ptr null, ptr @zz_hold, align 8, !tbaa !13
  br label %113

105:                                              ; preds = %55
  %106 = load ptr, ptr %100, align 8, !tbaa !15
  %107 = getelementptr inbounds [2 x %struct.LIST], ptr %102, i64 0, i64 1
  store ptr %106, ptr %107, align 8, !tbaa !15
  %108 = getelementptr inbounds [2 x %struct.LIST], ptr %106, i64 0, i64 1, i32 1
  store ptr %102, ptr %108, align 8, !tbaa !15
  store ptr %0, ptr %101, align 8, !tbaa !15
  store ptr %0, ptr %100, align 8, !tbaa !15
  store ptr %102, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %56, ptr @zz_res, align 8, !tbaa !13
  store ptr %102, ptr @zz_hold, align 8, !tbaa !13
  %109 = load ptr, ptr %107, align 8, !tbaa !15
  store ptr %109, ptr @zz_tmp, align 8, !tbaa !13
  %110 = load ptr, ptr %59, align 8, !tbaa !15
  store ptr %110, ptr %107, align 8, !tbaa !15
  %111 = getelementptr inbounds [2 x %struct.LIST], ptr %110, i64 0, i64 1, i32 1
  store ptr %102, ptr %111, align 8, !tbaa !15
  store ptr %109, ptr %59, align 8, !tbaa !15
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %109, i64 0, i64 1, i32 1
  store ptr %56, ptr %112, align 8, !tbaa !15
  br label %113

113:                                              ; preds = %104, %105
  %114 = load i8, ptr @zz_lengths, align 1, !tbaa !15
  %115 = zext i8 %114 to i32
  store i32 %115, ptr @zz_size, align 4, !tbaa !5
  %116 = zext i8 %114 to i64
  %117 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %122 = tail call ptr @GetMemory(i32 noundef %115, ptr noundef %121) #8
  br label %125

123:                                              ; preds = %113
  store ptr %118, ptr @zz_hold, align 8, !tbaa !13
  %124 = load ptr, ptr %118, align 8, !tbaa !15
  store ptr %124, ptr %117, align 8, !tbaa !13
  br label %125

125:                                              ; preds = %120, %123
  %126 = phi ptr [ %122, %120 ], [ %118, %123 ]
  %127 = getelementptr inbounds %struct.word_type, ptr %126, i64 0, i32 1
  store i8 0, ptr %127, align 8, !tbaa !15
  %128 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1, i32 1
  store ptr %126, ptr %128, align 8, !tbaa !15
  %129 = getelementptr inbounds [2 x %struct.LIST], ptr %126, i64 0, i64 1
  store ptr %126, ptr %129, align 8, !tbaa !15
  %130 = getelementptr inbounds %struct.LIST, ptr %126, i64 0, i32 1
  store ptr %126, ptr %130, align 8, !tbaa !15
  store ptr %126, ptr %126, align 8, !tbaa !15
  store ptr %126, ptr @xx_link, align 8, !tbaa !13
  store ptr %126, ptr @zz_res, align 8, !tbaa !13
  store ptr %56, ptr @zz_hold, align 8, !tbaa !13
  %131 = load ptr, ptr %56, align 8, !tbaa !15
  store ptr %131, ptr @zz_tmp, align 8, !tbaa !13
  %132 = load ptr, ptr %126, align 8, !tbaa !15
  store ptr %132, ptr %56, align 8, !tbaa !15
  %133 = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %134 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %135 = load ptr, ptr %134, align 8, !tbaa !15
  %136 = getelementptr inbounds %struct.LIST, ptr %135, i64 0, i32 1
  store ptr %133, ptr %136, align 8, !tbaa !15
  %137 = load ptr, ptr @zz_tmp, align 8, !tbaa !13
  store ptr %137, ptr %134, align 8, !tbaa !15
  %138 = load ptr, ptr @zz_res, align 8, !tbaa !13
  %139 = getelementptr inbounds %struct.LIST, ptr %137, i64 0, i32 1
  store ptr %138, ptr %139, align 8, !tbaa !15
  %140 = load ptr, ptr @xx_link, align 8, !tbaa !13
  store ptr %140, ptr @zz_res, align 8, !tbaa !13
  store ptr %0, ptr @zz_hold, align 8, !tbaa !13
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %125
  %143 = load ptr, ptr %100, align 8, !tbaa !15
  store ptr %143, ptr @zz_tmp, align 8, !tbaa !13
  %144 = getelementptr inbounds [2 x %struct.LIST], ptr %140, i64 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !15
  store ptr %145, ptr %100, align 8, !tbaa !15
  %146 = getelementptr inbounds [2 x %struct.LIST], ptr %145, i64 0, i64 1, i32 1
  store ptr %0, ptr %146, align 8, !tbaa !15
  store ptr %143, ptr %144, align 8, !tbaa !15
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %143, i64 0, i64 1, i32 1
  store ptr %140, ptr %147, align 8, !tbaa !15
  br label %148

148:                                              ; preds = %38, %142, %125
  %149 = phi i32 [ 1, %125 ], [ 1, %142 ], [ 0, %38 ]
  ret i32 %149
}

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Constrained(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.CONSTRAINT, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.CONSTRAINT, align 4
  %12 = alloca %struct.CONSTRAINT, align 4
  %13 = alloca %struct.CONSTRAINT, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  tail call void @SetLengthDim(i32 noundef %2) #8
  %14 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1
  %15 = getelementptr inbounds [2 x %struct.LIST], ptr %0, i64 0, i64 1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %20 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %19, ptr noundef nonnull @.str.4) #8
  br label %21

21:                                               ; preds = %18, %4
  %22 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !15
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = icmp ne i32 %2, 1
  %27 = getelementptr inbounds i8, ptr %0, i64 42
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 16
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %26, i1 true, i1 %30
  %32 = and i16 %28, 8
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %36 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %36, align 4, !tbaa !11
  %37 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %37, align 4, !tbaa !9
  br label %672

38:                                               ; preds = %25, %21
  %39 = icmp eq i32 %2, 0
  %40 = select i1 %39, ptr %15, ptr %14
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.LIST, ptr %41, i64 0, i32 1
  br label %43

43:                                               ; preds = %61, %38
  %44 = phi ptr [ %42, %38 ], [ %63, %61 ]
  %45 = phi i32 [ 0, %38 ], [ %62, %61 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  %48 = load i8, ptr %47, align 8, !tbaa !15
  switch i8 %48, label %667 [
    i8 0, label %49
    i8 96, label %64
    i8 97, label %64
    i8 98, label %64
    i8 99, label %64
    i8 35, label %64
    i8 20, label %64
    i8 22, label %64
    i8 24, label %64
    i8 25, label %64
    i8 36, label %64
    i8 37, label %64
    i8 40, label %64
    i8 41, label %64
    i8 44, label %64
    i8 42, label %64
    i8 43, label %64
    i8 9, label %64
    i8 51, label %64
    i8 30, label %65
    i8 31, label %65
    i8 32, label %72
    i8 33, label %72
    i8 34, label %79
    i8 50, label %92
    i8 26, label %95
    i8 27, label %95
    i8 38, label %110
    i8 39, label %110
    i8 14, label %162
    i8 13, label %162
    i8 28, label %171
    i8 29, label %171
    i8 8, label %188
    i8 16, label %202
    i8 15, label %202
    i8 19, label %235
    i8 18, label %235
    i8 17, label %235
  ]

49:                                               ; preds = %43, %49
  %50 = phi ptr [ %52, %49 ], [ %46, %43 ]
  %51 = getelementptr inbounds [2 x %struct.LIST], ptr %50, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  %53 = getelementptr inbounds %struct.word_type, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !15
  switch i8 %54, label %61 [
    i8 0, label %49
    i8 1, label %55
  ]

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.gapobj_type, ptr %52, i64 0, i32 3
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 256
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, i32 %45, i32 1
  br label %61

61:                                               ; preds = %49, %55
  %62 = phi i32 [ %60, %55 ], [ %45, %49 ]
  %63 = getelementptr inbounds %struct.LIST, ptr %46, i64 0, i32 1
  br label %43

64:                                               ; preds = %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43, %43
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %672

65:                                               ; preds = %43, %43
  %66 = icmp ne i8 %48, 30
  %67 = xor i1 %39, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %672

69:                                               ; preds = %65
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %70 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %70, align 4, !tbaa !11
  %71 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %71, align 4, !tbaa !9
  br label %672

72:                                               ; preds = %43, %43
  %73 = icmp ne i8 %48, 32
  %74 = xor i1 %39, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %672

76:                                               ; preds = %72
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %77 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %77, align 4, !tbaa !11
  %78 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %78, align 4, !tbaa !9
  br label %672

79:                                               ; preds = %43
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %11, i32 noundef %2, ptr noundef %3)
  br i1 %39, label %80, label %87

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %85 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %85, align 4, !tbaa !11
  %86 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %86, align 4, !tbaa !9
  br label %672

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !15
  br label %90

90:                                               ; preds = %80, %87
  %91 = phi i32 [ %89, %87 ], [ %82, %80 ]
  call void @InvScaleConstraint(ptr noundef %1, i32 noundef %91, ptr noundef nonnull %11)
  br label %672

92:                                               ; preds = %43
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %12, i32 noundef 0, ptr noundef %3)
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %13, i32 noundef 1, ptr noundef %3)
  %93 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !15
  call void @RotateConstraint(ptr noundef %1, ptr noundef %0, i32 noundef %94, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %2)
  br label %672

95:                                               ; preds = %43, %43
  %96 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %97 = load i8, ptr %96, align 8, !tbaa !15
  %98 = icmp ne i8 %97, 26
  %99 = xor i1 %39, %98
  br i1 %99, label %100, label %672

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4
  %102 = load <2 x i32>, ptr %1, align 4, !tbaa !5
  %103 = load <2 x i32>, ptr %101, align 4, !tbaa !5
  %104 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %102, <2 x i32> %103)
  store <2 x i32> %104, ptr %1, align 4, !tbaa !5
  %105 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !9
  %107 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !9
  %109 = tail call i32 @llvm.smin.i32(i32 %106, i32 %108)
  store i32 %109, ptr %105, align 4, !tbaa !9
  store ptr %46, ptr %3, align 8, !tbaa !13
  br label %672

110:                                              ; preds = %43, %43
  %111 = icmp ne i8 %48, 38
  %112 = xor i1 %39, %111
  br i1 %112, label %113, label %161

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %115 = sext i32 %2 to i64
  %116 = getelementptr inbounds [2 x i32], ptr %114, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !15
  store i32 %117, ptr %1, align 4, !tbaa !12
  %118 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %119 = getelementptr inbounds [2 x i32], ptr %118, i64 0, i64 %115
  %120 = load i32, ptr %119, align 4, !tbaa !15
  %121 = add nsw i32 %120, %117
  %122 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %121, ptr %122, align 4, !tbaa !11
  %123 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  %124 = load i32, ptr %119, align 4, !tbaa !15
  store i32 %124, ptr %123, align 4, !tbaa !9
  %125 = getelementptr inbounds [2 x %struct.LIST], ptr %46, i64 0, i64 1, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !15
  %127 = icmp eq ptr %126, %46
  br i1 %127, label %160, label %128

128:                                              ; preds = %113, %148
  %129 = phi ptr [ %158, %148 ], [ %126, %113 ]
  %130 = phi ptr [ %138, %148 ], [ %46, %113 ]
  br i1 %39, label %134, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %130, i64 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !15
  br label %134

134:                                              ; preds = %128, %131
  %135 = phi ptr [ %129, %128 ], [ %133, %131 ]
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi ptr [ %138, %136 ], [ %135, %134 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !15
  %139 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 1
  %140 = load i8, ptr %139, align 8, !tbaa !15
  switch i8 %140, label %160 [
    i8 0, label %136
    i8 39, label %148
    i8 38, label %148
    i8 16, label %148
    i8 15, label %148
    i8 24, label %148
    i8 25, label %148
    i8 36, label %148
    i8 37, label %148
    i8 9, label %148
    i8 43, label %148
    i8 42, label %148
    i8 13, label %141
    i8 14, label %141
  ]

141:                                              ; preds = %136, %136
  %142 = getelementptr inbounds %struct.closure_type, ptr %138, i64 0, i32 4
  %143 = load i32, ptr %142, align 8, !tbaa !15
  store i32 %143, ptr %1, align 4, !tbaa !12
  %144 = getelementptr inbounds %struct.closure_type, ptr %138, i64 0, i32 4, i32 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !15
  store i32 %145, ptr %122, align 4, !tbaa !11
  %146 = getelementptr inbounds %struct.closure_type, ptr %138, i64 0, i32 4, i32 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !15
  store i32 %147, ptr %123, align 4, !tbaa !9
  br label %160

148:                                              ; preds = %136, %136, %136, %136, %136, %136, %136, %136, %136, %136, %136
  %149 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 3
  %150 = getelementptr inbounds [2 x i32], ptr %149, i64 0, i64 %115
  %151 = load i32, ptr %150, align 4, !tbaa !15
  store i32 %151, ptr %1, align 4, !tbaa !12
  %152 = getelementptr inbounds %struct.word_type, ptr %138, i64 0, i32 3, i32 1
  %153 = getelementptr inbounds [2 x i32], ptr %152, i64 0, i64 %115
  %154 = load i32, ptr %153, align 4, !tbaa !15
  %155 = add nsw i32 %154, %151
  store i32 %155, ptr %122, align 4, !tbaa !11
  %156 = load i32, ptr %153, align 4, !tbaa !15
  store i32 %156, ptr %123, align 4, !tbaa !9
  %157 = getelementptr inbounds [2 x %struct.LIST], ptr %138, i64 0, i64 1, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !15
  %159 = icmp eq ptr %158, %138
  br i1 %159, label %160, label %128

160:                                              ; preds = %148, %136, %113, %141
  store ptr %46, ptr %3, align 8, !tbaa !13
  br label %672

161:                                              ; preds = %110
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %672

162:                                              ; preds = %43, %43
  %163 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4
  %164 = load i32, ptr %163, align 8, !tbaa !15
  store i32 %164, ptr %1, align 4, !tbaa !12
  %165 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !15
  %167 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %166, ptr %167, align 4, !tbaa !11
  %168 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !15
  %170 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %169, ptr %170, align 4, !tbaa !9
  br label %672

171:                                              ; preds = %43, %43
  %172 = icmp ne i8 %48, 28
  %173 = xor i1 %39, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %11, i32 noundef %2, ptr noundef %3)
  %175 = call i32 @FindShift(ptr noundef nonnull %46, ptr noundef %0, i32 noundef %2) #8
  %176 = load i32, ptr %11, align 4
  %177 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = call i32 @llvm.smin.i32(i32 %176, i32 %178)
  %180 = sub nsw i32 %179, %175
  store i32 %180, ptr %1, align 4, !tbaa !12
  %181 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %178, ptr %181, align 4, !tbaa !11
  %182 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = call i32 @llvm.smin.i32(i32 %183, i32 %178)
  %185 = add nsw i32 %184, %175
  %186 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %185, ptr %186, align 4, !tbaa !9
  br label %672

187:                                              ; preds = %171
  tail call void @Constrained(ptr noundef nonnull %46, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %672

188:                                              ; preds = %43
  %189 = icmp eq i32 %2, 1
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %191 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %191, align 4, !tbaa !11
  %192 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %192, align 4, !tbaa !9
  br label %672

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4
  %195 = load i32, ptr %194, align 8, !tbaa !15
  store i32 %195, ptr %11, align 4, !tbaa !12
  %196 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !15
  %198 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 1
  store i32 %197, ptr %198, align 4, !tbaa !11
  %199 = getelementptr inbounds %struct.closure_type, ptr %46, i64 0, i32 4, i32 0, i32 2
  %200 = load i32, ptr %199, align 8, !tbaa !15
  %201 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 2
  store i32 %200, ptr %201, align 4, !tbaa !9
  br label %546

202:                                              ; preds = %43, %43
  %203 = icmp ne i8 %48, 16
  %204 = xor i1 %39, %203
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %207 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %206, ptr noundef nonnull @.str.5) #8
  br label %208

208:                                              ; preds = %205, %202
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %11, i32 noundef %2, ptr noundef %3)
  %209 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !11
  %211 = icmp eq i32 %210, 8388607
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32, ptr %11, align 4
  %214 = call i32 @llvm.smin.i32(i32 %213, i32 8388607)
  br label %227

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %217 = sext i32 %2 to i64
  %218 = getelementptr inbounds [2 x i32], ptr %216, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !15
  %220 = sub nsw i32 %210, %219
  %221 = load i32, ptr %11, align 4
  %222 = call i32 @llvm.smin.i32(i32 %221, i32 %220)
  %223 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %224 = getelementptr inbounds [2 x i32], ptr %223, i64 0, i64 %217
  %225 = load i32, ptr %224, align 4, !tbaa !15
  %226 = sub nsw i32 %210, %225
  br label %227

227:                                              ; preds = %212, %215
  %228 = phi i32 [ %222, %215 ], [ %214, %212 ]
  %229 = phi i32 [ %226, %215 ], [ 8388607, %212 ]
  %230 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 2
  %231 = load i32, ptr %230, align 4
  %232 = call i32 @llvm.smin.i32(i32 %231, i32 %229)
  store i32 %228, ptr %1, align 4, !tbaa !12
  %233 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %210, ptr %233, align 4, !tbaa !11
  %234 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %232, ptr %234, align 4, !tbaa !9
  br label %672

235:                                              ; preds = %43, %43, %43
  %236 = icmp eq i8 %48, 19
  %237 = icmp ne i32 %2, 1
  %238 = xor i1 %237, %236
  br i1 %238, label %239, label %532

239:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %6, i32 noundef %2, ptr noundef %3)
  %240 = load i32, ptr %6, align 4, !tbaa !12
  %241 = icmp ne i32 %240, 8388607
  %242 = getelementptr inbounds %struct.CONSTRAINT, ptr %6, i64 0, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = icmp ne i32 %243, 8388607
  %245 = select i1 %241, i1 true, i1 %244
  %246 = getelementptr inbounds %struct.CONSTRAINT, ptr %6, i64 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = icmp ne i32 %247, 8388607
  %249 = select i1 %245, i1 true, i1 %248
  br i1 %249, label %250, label %525

250:                                              ; preds = %239
  %251 = load ptr, ptr %40, align 8, !tbaa !15
  call void @SetNeighbours(ptr noundef %251, i32 noundef %45, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %5) #8
  %252 = load ptr, ptr %8, align 8, !tbaa !13
  %253 = icmp eq ptr %252, null
  br i1 %253, label %262, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %9, align 8, !tbaa !13
  %256 = getelementptr inbounds %struct.word_type, ptr %255, i64 0, i32 3, i32 1
  %257 = sext i32 %2 to i64
  %258 = getelementptr inbounds [2 x i32], ptr %256, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !15
  %260 = getelementptr inbounds %struct.gapobj_type, ptr %252, i64 0, i32 3
  %261 = call i32 @ExtraGap(i32 noundef %259, i32 noundef 0, ptr noundef nonnull %260, i32 noundef 151) #8
  br label %262

262:                                              ; preds = %254, %250
  %263 = phi i32 [ %261, %254 ], [ 0, %250 ]
  %264 = load ptr, ptr %7, align 8, !tbaa !13
  %265 = icmp eq ptr %264, null
  br i1 %265, label %274, label %266

266:                                              ; preds = %262
  %267 = load ptr, ptr %10, align 8, !tbaa !13
  %268 = getelementptr inbounds %struct.word_type, ptr %267, i64 0, i32 3
  %269 = sext i32 %2 to i64
  %270 = getelementptr inbounds [2 x i32], ptr %268, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !15
  %272 = getelementptr inbounds %struct.gapobj_type, ptr %264, i64 0, i32 3
  %273 = call i32 @ExtraGap(i32 noundef 0, i32 noundef %271, ptr noundef nonnull %272, i32 noundef 153) #8
  br label %274

274:                                              ; preds = %266, %262
  %275 = phi i32 [ %273, %266 ], [ 0, %262 ]
  %276 = load i8, ptr %22, align 8, !tbaa !15
  %277 = add i8 %276, -2
  %278 = icmp ult i8 %277, 7
  %279 = load ptr, ptr %8, align 8, !tbaa !13
  %280 = icmp eq ptr %279, null
  br i1 %278, label %281, label %365

281:                                              ; preds = %274
  br i1 %280, label %290, label %282

282:                                              ; preds = %281
  %283 = load ptr, ptr %9, align 8, !tbaa !13
  %284 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 3, i32 1
  %285 = sext i32 %2 to i64
  %286 = getelementptr inbounds [2 x i32], ptr %284, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !15
  %288 = getelementptr inbounds %struct.gapobj_type, ptr %279, i64 0, i32 3
  %289 = call i32 @MinGap(i32 noundef %287, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %288) #8
  br label %290

290:                                              ; preds = %282, %281
  %291 = phi i32 [ %289, %282 ], [ 0, %281 ]
  %292 = load ptr, ptr %7, align 8, !tbaa !13
  %293 = icmp eq ptr %292, null
  br i1 %293, label %305, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr %10, align 8, !tbaa !13
  %296 = getelementptr inbounds %struct.word_type, ptr %295, i64 0, i32 3
  %297 = sext i32 %2 to i64
  %298 = getelementptr inbounds [2 x i32], ptr %296, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !15
  %300 = getelementptr inbounds %struct.word_type, ptr %295, i64 0, i32 3, i32 1
  %301 = getelementptr inbounds [2 x i32], ptr %300, i64 0, i64 %297
  %302 = load i32, ptr %301, align 4, !tbaa !15
  %303 = getelementptr inbounds %struct.gapobj_type, ptr %292, i64 0, i32 3
  %304 = call i32 @MinGap(i32 noundef 0, i32 noundef %299, i32 noundef %302, ptr noundef nonnull %303) #8
  br label %305

305:                                              ; preds = %294, %290
  %306 = phi i32 [ %304, %294 ], [ 0, %290 ]
  %307 = load ptr, ptr %8, align 8, !tbaa !13
  %308 = icmp eq ptr %307, null
  %309 = load ptr, ptr %7, align 8, !tbaa !13
  %310 = icmp eq ptr %309, null
  br i1 %308, label %311, label %318

311:                                              ; preds = %305
  br i1 %310, label %334, label %312

312:                                              ; preds = %311
  %313 = load ptr, ptr %10, align 8, !tbaa !13
  %314 = getelementptr inbounds %struct.word_type, ptr %313, i64 0, i32 3
  %315 = sext i32 %2 to i64
  %316 = getelementptr inbounds [2 x i32], ptr %314, i64 0, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !15
  br label %334

318:                                              ; preds = %305
  %319 = load ptr, ptr %9, align 8, !tbaa !13
  %320 = getelementptr inbounds %struct.word_type, ptr %319, i64 0, i32 3, i32 1
  %321 = sext i32 %2 to i64
  %322 = getelementptr inbounds [2 x i32], ptr %320, i64 0, i64 %321
  %323 = load i32, ptr %322, align 4, !tbaa !15
  br i1 %310, label %334, label %324

324:                                              ; preds = %318
  %325 = load ptr, ptr %10, align 8, !tbaa !13
  %326 = getelementptr inbounds %struct.word_type, ptr %325, i64 0, i32 3
  %327 = getelementptr inbounds [2 x i32], ptr %326, i64 0, i64 %321
  %328 = load i32, ptr %327, align 4, !tbaa !15
  %329 = getelementptr inbounds %struct.word_type, ptr %325, i64 0, i32 3, i32 1
  %330 = getelementptr inbounds [2 x i32], ptr %329, i64 0, i64 %321
  %331 = load i32, ptr %330, align 4, !tbaa !15
  %332 = getelementptr inbounds %struct.gapobj_type, ptr %309, i64 0, i32 3
  %333 = call i32 @MinGap(i32 noundef %323, i32 noundef %328, i32 noundef %331, ptr noundef nonnull %332) #8
  br label %334

334:                                              ; preds = %318, %324, %312, %311
  %335 = phi i32 [ %317, %312 ], [ 0, %311 ], [ %333, %324 ], [ %323, %318 ]
  %336 = load i32, ptr %5, align 4, !tbaa !5
  switch i32 %336, label %455 [
    i32 151, label %337
    i32 152, label %348
    i32 153, label %354
  ]

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %339 = sext i32 %2 to i64
  %340 = getelementptr inbounds [2 x i32], ptr %338, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !15
  %342 = add i32 %306, %291
  %343 = sub i32 %342, %335
  %344 = add i32 %343, %341
  %345 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %346 = getelementptr inbounds [2 x i32], ptr %345, i64 0, i64 %339
  %347 = load i32, ptr %346, align 4, !tbaa !15
  br label %458

348:                                              ; preds = %334
  %349 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %350 = sext i32 %2 to i64
  %351 = getelementptr inbounds [2 x i32], ptr %349, i64 0, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !15
  %353 = add nsw i32 %352, %306
  br label %458

354:                                              ; preds = %334
  %355 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %356 = sext i32 %2 to i64
  %357 = getelementptr inbounds [2 x i32], ptr %355, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !15
  %359 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %360 = getelementptr inbounds [2 x i32], ptr %359, i64 0, i64 %356
  %361 = load i32, ptr %360, align 4, !tbaa !15
  %362 = add i32 %306, %291
  %363 = sub i32 %362, %335
  %364 = add i32 %363, %361
  br label %458

365:                                              ; preds = %274
  br i1 %280, label %366, label %371

366:                                              ; preds = %365
  %367 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %368 = sext i32 %2 to i64
  %369 = getelementptr inbounds [2 x i32], ptr %367, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !15
  br label %393

371:                                              ; preds = %365
  %372 = load ptr, ptr %9, align 8, !tbaa !13
  %373 = getelementptr inbounds %struct.word_type, ptr %372, i64 0, i32 3, i32 1
  %374 = sext i32 %2 to i64
  %375 = getelementptr inbounds [2 x i32], ptr %373, i64 0, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !15
  %377 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3
  %378 = getelementptr inbounds [2 x i32], ptr %377, i64 0, i64 %374
  %379 = load i32, ptr %378, align 4, !tbaa !15
  %380 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %381 = getelementptr inbounds [2 x i32], ptr %380, i64 0, i64 %374
  %382 = load i32, ptr %381, align 4, !tbaa !15
  %383 = getelementptr inbounds %struct.gapobj_type, ptr %279, i64 0, i32 3
  %384 = call i32 @MinGap(i32 noundef %376, i32 noundef %379, i32 noundef %382, ptr noundef nonnull %383) #8
  %385 = load ptr, ptr %9, align 8, !tbaa !13
  %386 = getelementptr inbounds %struct.word_type, ptr %385, i64 0, i32 3, i32 1
  %387 = getelementptr inbounds [2 x i32], ptr %386, i64 0, i64 %374
  %388 = load i32, ptr %387, align 4, !tbaa !15
  %389 = load ptr, ptr %8, align 8, !tbaa !13
  %390 = getelementptr inbounds %struct.gapobj_type, ptr %389, i64 0, i32 3
  %391 = call i32 @MinGap(i32 noundef %388, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %390) #8
  %392 = sub nsw i32 %384, %391
  br label %393

393:                                              ; preds = %371, %366
  %394 = phi i32 [ %370, %366 ], [ %392, %371 ]
  %395 = load ptr, ptr %7, align 8, !tbaa !13
  %396 = icmp eq ptr %395, null
  %397 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 3, i32 1
  %398 = sext i32 %2 to i64
  %399 = getelementptr inbounds [2 x i32], ptr %397, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !15
  br i1 %396, label %422, label %401

401:                                              ; preds = %393
  %402 = load ptr, ptr %10, align 8, !tbaa !13
  %403 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 3
  %404 = getelementptr inbounds [2 x i32], ptr %403, i64 0, i64 %398
  %405 = load i32, ptr %404, align 4, !tbaa !15
  %406 = getelementptr inbounds %struct.word_type, ptr %402, i64 0, i32 3, i32 1
  %407 = getelementptr inbounds [2 x i32], ptr %406, i64 0, i64 %398
  %408 = load i32, ptr %407, align 4, !tbaa !15
  %409 = getelementptr inbounds %struct.gapobj_type, ptr %395, i64 0, i32 3
  %410 = call i32 @MinGap(i32 noundef %400, i32 noundef %405, i32 noundef %408, ptr noundef nonnull %409) #8
  %411 = load ptr, ptr %10, align 8, !tbaa !13
  %412 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 3
  %413 = getelementptr inbounds [2 x i32], ptr %412, i64 0, i64 %398
  %414 = load i32, ptr %413, align 4, !tbaa !15
  %415 = getelementptr inbounds %struct.word_type, ptr %411, i64 0, i32 3, i32 1
  %416 = getelementptr inbounds [2 x i32], ptr %415, i64 0, i64 %398
  %417 = load i32, ptr %416, align 4, !tbaa !15
  %418 = load ptr, ptr %7, align 8, !tbaa !13
  %419 = getelementptr inbounds %struct.gapobj_type, ptr %418, i64 0, i32 3
  %420 = call i32 @MinGap(i32 noundef 0, i32 noundef %414, i32 noundef %417, ptr noundef nonnull %419) #8
  %421 = sub nsw i32 %410, %420
  br label %422

422:                                              ; preds = %393, %401
  %423 = phi i32 [ %421, %401 ], [ %400, %393 ]
  %424 = load i32, ptr %5, align 4, !tbaa !5
  switch i32 %424, label %455 [
    i32 151, label %425
    i32 152, label %435
    i32 153, label %445
  ]

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %427 = sext i32 %2 to i64
  %428 = getelementptr inbounds [2 x i32], ptr %426, i64 0, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !15
  %430 = add i32 %423, %394
  %431 = sub i32 %429, %430
  %432 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %433 = getelementptr inbounds [2 x i32], ptr %432, i64 0, i64 %427
  %434 = load i32, ptr %433, align 4, !tbaa !15
  br label %458

435:                                              ; preds = %422
  %436 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %437 = sext i32 %2 to i64
  %438 = getelementptr inbounds [2 x i32], ptr %436, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !15
  %440 = sub nsw i32 %439, %394
  %441 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %442 = getelementptr inbounds [2 x i32], ptr %441, i64 0, i64 %437
  %443 = load i32, ptr %442, align 4, !tbaa !15
  %444 = sub nsw i32 %443, %423
  br label %458

445:                                              ; preds = %422
  %446 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %447 = sext i32 %2 to i64
  %448 = getelementptr inbounds [2 x i32], ptr %446, i64 0, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !15
  %450 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %451 = getelementptr inbounds [2 x i32], ptr %450, i64 0, i64 %447
  %452 = load i32, ptr %451, align 4, !tbaa !15
  %453 = add i32 %423, %394
  %454 = sub i32 %452, %453
  br label %458

455:                                              ; preds = %334, %422
  %456 = phi i32 [ %336, %334 ], [ %424, %422 ]
  %457 = load i32, ptr %6, align 4
  br label %464

458:                                              ; preds = %445, %435, %425, %354, %348, %337
  %459 = phi i32 [ 153, %354 ], [ 152, %348 ], [ 151, %337 ], [ 153, %445 ], [ 152, %435 ], [ 151, %425 ]
  %460 = phi i32 [ %364, %354 ], [ %353, %348 ], [ %347, %337 ], [ %454, %445 ], [ %444, %435 ], [ %434, %425 ]
  %461 = phi i32 [ %358, %354 ], [ 0, %348 ], [ %344, %337 ], [ %449, %445 ], [ %440, %435 ], [ %431, %425 ]
  %462 = load i32, ptr %6, align 4
  %463 = icmp sgt i32 %461, %462
  br i1 %463, label %525, label %464

464:                                              ; preds = %455, %458
  %465 = phi i32 [ %456, %455 ], [ %459, %458 ]
  %466 = phi i32 [ %457, %455 ], [ %462, %458 ]
  %467 = phi i32 [ undef, %455 ], [ %461, %458 ]
  %468 = phi i32 [ undef, %455 ], [ %460, %458 ]
  %469 = add nsw i32 %468, %467
  %470 = load i32, ptr %242, align 4, !tbaa !11
  %471 = icmp sgt i32 %469, %470
  br i1 %471, label %525, label %472

472:                                              ; preds = %464
  %473 = load i32, ptr %246, align 4
  %474 = icmp sgt i32 %468, %473
  br i1 %474, label %525, label %475

475:                                              ; preds = %472
  switch i32 %465, label %531 [
    i32 151, label %476
    i32 152, label %491
    i32 153, label %510
  ]

476:                                              ; preds = %475
  %477 = icmp eq i32 %466, 8388607
  %478 = sub nsw i32 %466, %467
  %479 = select i1 %477, i32 8388607, i32 %478
  %480 = icmp eq i32 %470, 8388607
  %481 = sub i32 %470, %469
  %482 = select i1 %480, i32 8388607, i32 %481
  %483 = call i32 @llvm.smin.i32(i32 %479, i32 %482)
  %484 = add nsw i32 %483, %263
  %485 = call i32 @llvm.smin.i32(i32 %484, i32 8388607)
  %486 = add nsw i32 %275, %263
  %487 = add nsw i32 %486, %483
  %488 = call i32 @llvm.smin.i32(i32 %487, i32 8388607)
  %489 = add nsw i32 %483, %275
  %490 = call i32 @llvm.smin.i32(i32 %489, i32 8388607)
  br label %525

491:                                              ; preds = %475
  %492 = icmp eq i32 %466, 8388607
  %493 = sub nsw i32 %466, %467
  %494 = select i1 %492, i32 8388607, i32 %493
  %495 = icmp eq i32 %470, 8388607
  %496 = sub i32 %470, %469
  %497 = select i1 %495, i32 8388607, i32 %496
  %498 = icmp eq i32 %473, 8388607
  %499 = sub nsw i32 %473, %468
  %500 = select i1 %498, i32 8388607, i32 %499
  %501 = call i32 @llvm.smin.i32(i32 %494, i32 %497)
  %502 = call i32 @llvm.smin.i32(i32 %500, i32 %497)
  %503 = add nsw i32 %501, %263
  %504 = call i32 @llvm.smin.i32(i32 %503, i32 8388607)
  %505 = add nsw i32 %275, %263
  %506 = add nsw i32 %505, %497
  %507 = call i32 @llvm.smin.i32(i32 %506, i32 8388607)
  %508 = add nsw i32 %502, %275
  %509 = call i32 @llvm.smin.i32(i32 %508, i32 8388607)
  br label %525

510:                                              ; preds = %475
  %511 = icmp eq i32 %473, 8388607
  %512 = sub nsw i32 %473, %468
  %513 = select i1 %511, i32 8388607, i32 %512
  %514 = icmp eq i32 %470, 8388607
  %515 = sub i32 %470, %469
  %516 = select i1 %514, i32 8388607, i32 %515
  %517 = call i32 @llvm.smin.i32(i32 %513, i32 %516)
  %518 = add nsw i32 %517, %263
  %519 = call i32 @llvm.smin.i32(i32 %518, i32 8388607)
  %520 = add nsw i32 %275, %263
  %521 = add nsw i32 %520, %517
  %522 = call i32 @llvm.smin.i32(i32 %521, i32 8388607)
  %523 = add nsw i32 %517, %275
  %524 = call i32 @llvm.smin.i32(i32 %523, i32 8388607)
  br label %525

525:                                              ; preds = %239, %458, %464, %472, %510, %491, %476
  %526 = phi i32 [ %485, %476 ], [ %504, %491 ], [ %519, %510 ], [ -1, %472 ], [ -1, %464 ], [ -1, %458 ], [ 8388607, %239 ]
  %527 = phi i32 [ %488, %476 ], [ %507, %491 ], [ %522, %510 ], [ -1, %472 ], [ -1, %464 ], [ -1, %458 ], [ 8388607, %239 ]
  %528 = phi i32 [ %490, %476 ], [ %509, %491 ], [ %524, %510 ], [ -1, %472 ], [ -1, %464 ], [ -1, %458 ], [ 8388607, %239 ]
  store i32 %526, ptr %1, align 4, !tbaa !12
  %529 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %527, ptr %529, align 4, !tbaa !11
  %530 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %528, ptr %530, align 4, !tbaa !9
  br label %531

531:                                              ; preds = %525, %475
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %672

532:                                              ; preds = %235
  call void @Constrained(ptr noundef nonnull %46, ptr noundef nonnull %11, i32 noundef %2, ptr noundef %3)
  %533 = load i32, ptr %11, align 4
  %534 = icmp ne i32 %533, 8388607
  %535 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 1
  %536 = load i32, ptr %535, align 4
  %537 = icmp ne i32 %536, 8388607
  %538 = select i1 %534, i1 true, i1 %537
  %539 = getelementptr inbounds %struct.CONSTRAINT, ptr %11, i64 0, i32 2
  %540 = load i32, ptr %539, align 4
  %541 = icmp ne i32 %540, 8388607
  %542 = select i1 %538, i1 true, i1 %541
  br i1 %542, label %546, label %543

543:                                              ; preds = %532
  store i32 8388607, ptr %1, align 4, !tbaa !12
  %544 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 8388607, ptr %544, align 4, !tbaa !11
  %545 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 8388607, ptr %545, align 4, !tbaa !9
  br label %672

546:                                              ; preds = %532, %193
  %547 = phi i32 [ %533, %532 ], [ %195, %193 ]
  %548 = phi i32 [ %540, %532 ], [ %200, %193 ]
  %549 = phi i32 [ %536, %532 ], [ %197, %193 ]
  %550 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 1
  %551 = load ptr, ptr %41, align 8, !tbaa !15
  %552 = icmp eq ptr %551, %46
  br i1 %552, label %569, label %553

553:                                              ; preds = %546, %566
  %554 = phi ptr [ %567, %566 ], [ %551, %546 ]
  br label %555

555:                                              ; preds = %553, %555
  %556 = phi ptr [ %558, %555 ], [ %554, %553 ]
  %557 = getelementptr inbounds [2 x %struct.LIST], ptr %556, i64 0, i64 1
  %558 = load ptr, ptr %557, align 8, !tbaa !15
  %559 = getelementptr inbounds %struct.word_type, ptr %558, i64 0, i32 1
  %560 = load i8, ptr %559, align 8, !tbaa !15
  switch i8 %560, label %566 [
    i8 0, label %555
    i8 1, label %561
  ]

561:                                              ; preds = %555
  %562 = getelementptr inbounds %struct.gapobj_type, ptr %558, i64 0, i32 3
  %563 = load i16, ptr %562, align 4
  %564 = and i16 %563, 512
  %565 = icmp eq i16 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %555, %561
  %567 = load ptr, ptr %554, align 8, !tbaa !15
  %568 = icmp eq ptr %567, %46
  br i1 %568, label %569, label %553

569:                                              ; preds = %566, %561, %546
  %570 = phi ptr [ %46, %546 ], [ %554, %561 ], [ %46, %566 ]
  %571 = phi i1 [ true, %546 ], [ false, %561 ], [ true, %566 ]
  %572 = load ptr, ptr %42, align 8, !tbaa !15
  %573 = icmp eq ptr %572, %46
  br i1 %573, label %591, label %574

574:                                              ; preds = %569, %587
  %575 = phi ptr [ %589, %587 ], [ %572, %569 ]
  br label %576

576:                                              ; preds = %574, %576
  %577 = phi ptr [ %579, %576 ], [ %575, %574 ]
  %578 = getelementptr inbounds [2 x %struct.LIST], ptr %577, i64 0, i64 1
  %579 = load ptr, ptr %578, align 8, !tbaa !15
  %580 = getelementptr inbounds %struct.word_type, ptr %579, i64 0, i32 1
  %581 = load i8, ptr %580, align 8, !tbaa !15
  switch i8 %581, label %587 [
    i8 0, label %576
    i8 1, label %582
  ]

582:                                              ; preds = %576
  %583 = getelementptr inbounds %struct.gapobj_type, ptr %579, i64 0, i32 3
  %584 = load i16, ptr %583, align 4
  %585 = and i16 %584, 512
  %586 = icmp eq i16 %585, 0
  br i1 %586, label %621, label %587

587:                                              ; preds = %576, %582
  %588 = getelementptr inbounds %struct.LIST, ptr %575, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !15
  %590 = icmp eq ptr %589, %46
  br i1 %590, label %591, label %574

591:                                              ; preds = %587, %569
  br i1 %571, label %592, label %621

592:                                              ; preds = %591
  %593 = load i8, ptr %550, align 8, !tbaa !15
  %594 = icmp eq i8 %593, 8
  br i1 %594, label %595, label %600

595:                                              ; preds = %592
  %596 = getelementptr inbounds i8, ptr %46, i64 42
  %597 = load i16, ptr %596, align 2
  %598 = and i16 %597, 32
  %599 = icmp eq i16 %598, 0
  br i1 %599, label %600, label %621

600:                                              ; preds = %595, %592
  %601 = icmp eq i32 %549, 8388607
  br i1 %601, label %602, label %604

602:                                              ; preds = %600
  %603 = call i32 @llvm.smin.i32(i32 %547, i32 8388607)
  br label %615

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3, i32 1
  %606 = sext i32 %2 to i64
  %607 = getelementptr inbounds [2 x i32], ptr %605, i64 0, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !15
  %609 = sub nsw i32 %549, %608
  %610 = call i32 @llvm.smin.i32(i32 %547, i32 %609)
  %611 = getelementptr inbounds %struct.word_type, ptr %46, i64 0, i32 3
  %612 = getelementptr inbounds [2 x i32], ptr %611, i64 0, i64 %606
  %613 = load i32, ptr %612, align 4, !tbaa !15
  %614 = sub nsw i32 %549, %613
  br label %615

615:                                              ; preds = %602, %604
  %616 = phi i32 [ %610, %604 ], [ %603, %602 ]
  %617 = phi i32 [ %614, %604 ], [ 8388607, %602 ]
  %618 = call i32 @llvm.smin.i32(i32 %548, i32 %617)
  store i32 %616, ptr %1, align 4, !tbaa !12
  %619 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %549, ptr %619, align 4, !tbaa !11
  %620 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %618, ptr %620, align 4, !tbaa !9
  br label %672

621:                                              ; preds = %582, %595, %591
  %622 = phi ptr [ %46, %595 ], [ %46, %591 ], [ %575, %582 ]
  %623 = getelementptr inbounds %struct.LIST, ptr %570, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !15
  %625 = icmp eq ptr %624, %622
  br i1 %625, label %656, label %626

626:                                              ; preds = %621
  %627 = sext i32 %2 to i64
  br label %628

628:                                              ; preds = %626, %650
  %629 = phi ptr [ %624, %626 ], [ %654, %650 ]
  %630 = phi i32 [ 0, %626 ], [ %652, %650 ]
  %631 = phi i32 [ 0, %626 ], [ %651, %650 ]
  br label %632

632:                                              ; preds = %628, %632
  %633 = phi ptr [ %635, %632 ], [ %629, %628 ]
  %634 = getelementptr inbounds [2 x %struct.LIST], ptr %633, i64 0, i64 1
  %635 = load ptr, ptr %634, align 8, !tbaa !15
  %636 = getelementptr inbounds %struct.word_type, ptr %635, i64 0, i32 1
  %637 = load i8, ptr %636, align 8, !tbaa !15
  switch i8 %637, label %638 [
    i8 0, label %632
    i8 1, label %650
  ]

638:                                              ; preds = %632
  %639 = add i8 %637, -119
  %640 = icmp ult i8 %639, 20
  br i1 %640, label %650, label %641

641:                                              ; preds = %638
  %642 = getelementptr inbounds %struct.word_type, ptr %635, i64 0, i32 3
  %643 = getelementptr inbounds [2 x i32], ptr %642, i64 0, i64 %627
  %644 = load i32, ptr %643, align 4, !tbaa !15
  %645 = call i32 @llvm.smax.i32(i32 %631, i32 %644)
  %646 = getelementptr inbounds %struct.word_type, ptr %635, i64 0, i32 3, i32 1
  %647 = getelementptr inbounds [2 x i32], ptr %646, i64 0, i64 %627
  %648 = load i32, ptr %647, align 4, !tbaa !15
  %649 = call i32 @llvm.smax.i32(i32 %630, i32 %648)
  br label %650

650:                                              ; preds = %632, %638, %641
  %651 = phi i32 [ %645, %641 ], [ %631, %638 ], [ %631, %632 ]
  %652 = phi i32 [ %649, %641 ], [ %630, %638 ], [ %630, %632 ]
  %653 = getelementptr inbounds %struct.LIST, ptr %629, i64 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !15
  %655 = icmp eq ptr %654, %622
  br i1 %655, label %656, label %628

656:                                              ; preds = %650, %621
  %657 = phi i32 [ 0, %621 ], [ %651, %650 ]
  %658 = phi i32 [ 0, %621 ], [ %652, %650 ]
  %659 = call i32 @llvm.smin.i32(i32 %549, i32 %548)
  %660 = icmp eq i32 %659, 8388607
  %661 = sub nsw i32 %659, %658
  %662 = select i1 %660, i32 8388607, i32 %661
  %663 = sub nsw i32 %659, %657
  %664 = select i1 %660, i32 8388607, i32 %663
  store i32 %662, ptr %1, align 4, !tbaa !12
  %665 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 1
  store i32 %659, ptr %665, align 4, !tbaa !11
  %666 = getelementptr inbounds %struct.CONSTRAINT, ptr %1, i64 0, i32 2
  store i32 %664, ptr %666, align 4, !tbaa !9
  br label %672

667:                                              ; preds = %43
  %668 = zext i8 %48 to i32
  %669 = load ptr, ptr @no_fpos, align 8, !tbaa !13
  %670 = tail call ptr @Image(i32 noundef %668) #8
  %671 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %669, ptr noundef nonnull @.str.7, ptr noundef %670) #8
  br label %672

672:                                              ; preds = %64, %92, %162, %190, %227, %531, %667, %69, %68, %76, %75, %90, %84, %100, %95, %161, %160, %187, %174, %615, %656, %543, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  ret void
}

declare void @SetLengthDim(i32 noundef) local_unnamed_addr #4

declare i32 @FindShift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Image(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @SetNeighbours(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ExtraGap(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!9 = !{!10, !6, i64 8}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!11 = !{!10, !6, i64 4}
!12 = !{!10, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!7, !7, i64 0}
