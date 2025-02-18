; ModuleID = 'blender/source/blender/editors/transform/transform_input.c'
source_filename = "blender/source/blender/editors/transform/transform_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.setCustomPoints = private unnamed_addr constant [16 x i8] c"setCustomPoints\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"angle accumulator\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @setCustomPoints(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call ptr %5(ptr noundef %7, i64 noundef 16, ptr noundef nonnull @__func__.setCustomPoints) #10
  store ptr %8, ptr %6, align 8, !tbaa !38
  %9 = load i32, ptr %2, align 4, !tbaa !41
  store i32 %9, ptr %8, align 4, !tbaa !41
  %10 = getelementptr inbounds i32, ptr %2, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !41
  %13 = load i32, ptr %3, align 4, !tbaa !41
  %14 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %13, ptr %14, align 4, !tbaa !41
  %15 = getelementptr inbounds i32, ptr %3, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = getelementptr inbounds i32, ptr %8, i64 3
  store i32 %16, ptr %17, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @initMouseInput(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !43
  %6 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !44
  %7 = load float, ptr %2, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  store float %7, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  store float %10, ptr %11, align 4, !tbaa !45
  %12 = load i32, ptr %3, align 4, !tbaa !41
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !41
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initMouseInputMode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  switch i32 %2, label %116 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %28
    i32 4, label %48
    i32 5, label %68
    i32 6, label %72
    i32 7, label %94
    i32 8, label %97
    i32 9, label %106
    i32 10, label %108
    i32 11, label %110
    i32 12, label %112
    i32 13, label %114
  ]

6:                                                ; preds = %3
  store ptr @InputVector, ptr %1, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %7, align 1, !tbaa !48
  br label %117

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = sitofp i32 %14 to float
  %16 = fsub float %11, %15
  %17 = load float, ptr %9, align 4, !tbaa !45
  %18 = load i32, ptr %12, align 8, !tbaa !41
  %19 = sitofp i32 %18 to float
  %20 = fsub float %17, %19
  %21 = fmul float %20, %20
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %21)
  %23 = tail call float @sqrtf(float noundef %22) #10
  %24 = fcmp oeq float %23, 0.000000e+00
  %25 = select i1 %24, float 1.000000e+00, float %23
  %26 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %25, ptr %26, align 4, !tbaa !43
  store ptr @InputSpring, ptr %1, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %27, align 1, !tbaa !48
  br label %117

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %30 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %33 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !41
  %35 = sitofp i32 %34 to float
  %36 = fsub float %31, %35
  %37 = load float, ptr %29, align 4, !tbaa !45
  %38 = load i32, ptr %32, align 8, !tbaa !41
  %39 = sitofp i32 %38 to float
  %40 = fsub float %37, %39
  %41 = fmul float %40, %40
  %42 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %41)
  %43 = tail call float @sqrtf(float noundef %42) #10
  %44 = fcmp oeq float %43, 0.000000e+00
  %45 = select i1 %44, float 1.000000e+00, float %43
  %46 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %45, ptr %46, align 4, !tbaa !43
  store ptr @InputSpringFlip, ptr %1, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %47, align 1, !tbaa !48
  br label %117

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %50 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !45
  %52 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %53 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !41
  %55 = sitofp i32 %54 to float
  %56 = fsub float %51, %55
  %57 = load float, ptr %49, align 4, !tbaa !45
  %58 = load i32, ptr %52, align 8, !tbaa !41
  %59 = sitofp i32 %58 to float
  %60 = fsub float %57, %59
  %61 = fmul float %60, %60
  %62 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %61)
  %63 = tail call float @sqrtf(float noundef %62) #10
  %64 = fcmp oeq float %63, 0.000000e+00
  %65 = select i1 %64, float 1.000000e+00, float %63
  %66 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %65, ptr %66, align 4, !tbaa !43
  store ptr @InputSpringDelta, ptr %1, align 8, !tbaa !47
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 1, ptr %67, align 1, !tbaa !48
  br label %117

68:                                               ; preds = %3
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 8, ptr noundef nonnull @.str) #10
  store ptr %70, ptr %4, align 8, !tbaa !38
  store ptr @InputAngle, ptr %1, align 8, !tbaa !47
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 2, ptr %71, align 1, !tbaa !48
  br label %117

72:                                               ; preds = %3
  %73 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %74 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !45
  %76 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %77 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !41
  %79 = sitofp i32 %78 to float
  %80 = fsub float %75, %79
  %81 = load float, ptr %73, align 4, !tbaa !45
  %82 = load i32, ptr %76, align 8, !tbaa !41
  %83 = sitofp i32 %82 to float
  %84 = fsub float %81, %83
  %85 = fmul float %84, %84
  %86 = tail call float @llvm.fmuladd.f32(float %80, float %80, float %85)
  %87 = tail call float @sqrtf(float noundef %86) #10
  %88 = fcmp oeq float %87, 0.000000e+00
  %89 = select i1 %88, float 1.000000e+00, float %87
  %90 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %89, ptr %90, align 4, !tbaa !43
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %92 = tail call ptr %91(i64 noundef 8, ptr noundef nonnull @.str) #10
  store ptr %92, ptr %4, align 8, !tbaa !38
  store ptr @InputAngleSpring, ptr %1, align 8, !tbaa !47
  %93 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 2, ptr %93, align 1, !tbaa !48
  br label %117

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float 0x3F847AE140000000, ptr %95, align 4, !tbaa !43
  store ptr @InputTrackBall, ptr %1, align 8, !tbaa !47
  %96 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 5, ptr %96, align 1, !tbaa !48
  br label %117

97:                                               ; preds = %3
  %98 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %99 = load float, ptr %98, align 4, !tbaa !45
  %100 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !41
  %102 = sitofp i32 %101 to float
  %103 = fsub float %99, %102
  %104 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  store float %103, ptr %104, align 4, !tbaa !43
  store ptr @InputHorizontalRatio, ptr %1, align 8, !tbaa !47
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 3, ptr %105, align 1, !tbaa !48
  br label %117

106:                                              ; preds = %3
  store ptr @InputHorizontalAbsolute, ptr %1, align 8, !tbaa !47
  %107 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 3, ptr %107, align 1, !tbaa !48
  br label %117

108:                                              ; preds = %3
  store ptr @InputVerticalRatio, ptr %1, align 8, !tbaa !47
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 4, ptr %109, align 1, !tbaa !48
  br label %117

110:                                              ; preds = %3
  store ptr @InputVerticalAbsolute, ptr %1, align 8, !tbaa !47
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 4, ptr %111, align 1, !tbaa !48
  br label %117

112:                                              ; preds = %3
  store ptr @InputCustomRatio, ptr %1, align 8, !tbaa !47
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %113, align 1, !tbaa !48
  br label %117

114:                                              ; preds = %3
  store ptr @InputCustomRatioFlip, ptr %1, align 8, !tbaa !47
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 34
  store i8 0, ptr %115, align 1, !tbaa !48
  br label %117

116:                                              ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !47
  br label %117

117:                                              ; preds = %116, %114, %112, %110, %108, %106, %97, %94, %72, %68, %48, %28, %8, %6
  %118 = icmp eq ptr %5, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %4, align 8, !tbaa !38
  %121 = icmp eq ptr %5, %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %123(ptr noundef nonnull %5) #10
  br label %124

124:                                              ; preds = %122, %119, %117
  %125 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %126 = load ptr, ptr %1, align 8, !tbaa !47
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  tail call void %126(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %129, ptr noundef nonnull %125) #10
  br label %130

130:                                              ; preds = %128, %124
  %131 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void %132(ptr noundef %0, ptr noundef nonnull %125) #10
  br label %135

135:                                              ; preds = %130, %134
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputVector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !44
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr %2, align 4, !tbaa !41
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !41
  br i1 %9, label %49, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = sub nsw i32 %10, %15
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = sub nsw i32 %12, %18
  call void @convertViewVec(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %16, i32 noundef %19) #10
  %20 = load float, ptr %6, align 4, !tbaa !45
  %21 = fmul float %20, 0x3FB99999A0000000
  store float %21, ptr %6, align 4, !tbaa !45
  %22 = getelementptr inbounds float, ptr %6, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !45
  %24 = fmul float %23, 0x3FB99999A0000000
  store float %24, ptr %22, align 4, !tbaa !45
  %25 = getelementptr inbounds float, ptr %6, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !45
  %27 = fmul float %26, 0x3FB99999A0000000
  store float %27, ptr %25, align 4, !tbaa !45
  %28 = load i32, ptr %14, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !41
  %31 = sub nsw i32 %28, %30
  %32 = load i32, ptr %17, align 4, !tbaa !41
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !41
  %35 = sub nsw i32 %32, %34
  call void @convertViewVec(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %31, i32 noundef %35) #10
  %36 = load float, ptr %5, align 4, !tbaa !45
  %37 = load float, ptr %6, align 4, !tbaa !45
  %38 = fadd float %36, %37
  store float %38, ptr %3, align 4, !tbaa !45
  %39 = getelementptr inbounds float, ptr %5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !45
  %41 = load float, ptr %22, align 4, !tbaa !45
  %42 = fadd float %40, %41
  %43 = getelementptr inbounds float, ptr %3, i64 1
  store float %42, ptr %43, align 4, !tbaa !45
  %44 = getelementptr inbounds float, ptr %5, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !45
  %46 = load float, ptr %25, align 4, !tbaa !45
  %47 = fadd float %45, %46
  %48 = getelementptr inbounds float, ptr %3, i64 2
  store float %47, ptr %48, align 4, !tbaa !45
  br label %56

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %51 = load i32, ptr %50, align 8, !tbaa !41
  %52 = sub nsw i32 %10, %51
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !41
  %55 = sub nsw i32 %12, %54
  tail call void @convertViewVec(ptr noundef %0, ptr noundef %3, i32 noundef %52, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %49, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputSpring(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !45
  br i1 %7, label %35, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = sitofp i32 %12 to float
  %14 = fsub float %9, %13
  %15 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = sitofp i32 %18 to float
  %20 = fsub float %16, %19
  %21 = tail call float @hypotf(float noundef %14, float noundef %20) #10
  %22 = load float, ptr %8, align 4, !tbaa !45
  %23 = load i32, ptr %2, align 4, !tbaa !41
  %24 = sitofp i32 %23 to float
  %25 = fsub float %22, %24
  %26 = load float, ptr %15, align 4, !tbaa !45
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = sitofp i32 %28 to float
  %30 = fsub float %26, %29
  %31 = tail call float @hypotf(float noundef %25, float noundef %30) #10
  %32 = fsub float %31, %21
  %33 = fdiv float %32, 1.000000e+01
  %34 = fadd float %21, %33
  br label %46

35:                                               ; preds = %4
  %36 = load i32, ptr %2, align 4, !tbaa !41
  %37 = sitofp i32 %36 to float
  %38 = fsub float %9, %37
  %39 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !45
  %41 = getelementptr inbounds i32, ptr %2, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !41
  %43 = sitofp i32 %42 to float
  %44 = fsub float %40, %43
  %45 = tail call float @hypotf(float noundef %38, float noundef %44) #10
  br label %46

46:                                               ; preds = %35, %10
  %47 = phi float [ %45, %35 ], [ %34, %10 ]
  %48 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !43
  %50 = fdiv float %47, %49
  store float %50, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputSpringFlip(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = load i32, ptr %2, align 4, !tbaa !41
  %8 = sitofp i32 %7 to float
  %9 = fsub float %6, %8
  %10 = fptosi float %9 to i64
  %11 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = sitofp i32 %12 to float
  %14 = fsub float %6, %13
  %15 = fptosi float %14 to i64
  %16 = mul nsw i64 %15, %10
  %17 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !45
  %19 = getelementptr inbounds i32, ptr %2, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = sitofp i32 %20 to float
  %22 = fsub float %18, %21
  %23 = fptosi float %22 to i64
  %24 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = sitofp i32 %25 to float
  %27 = fsub float %18, %26
  %28 = fptosi float %27 to i64
  %29 = mul nsw i64 %28, %23
  %30 = add nsw i64 %29, %16
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load float, ptr %3, align 4, !tbaa !45
  %34 = fneg float %33
  store float %34, ptr %3, align 4, !tbaa !45
  br label %35

35:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputSpringDelta(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %5 = load float, ptr %3, align 4, !tbaa !45
  %6 = fadd float %5, -1.000000e+00
  store float %6, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @InputAngle(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = load i32, ptr %2, align 4, !tbaa !41
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fsub float %6, %8
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 5, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !45
  %16 = fsub float %13, %15
  %17 = fpext float %16 to double
  %18 = fmul double %17, %17
  %19 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %18)
  %20 = tail call double @sqrt(double noundef %19) #10
  %21 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = sitofp i32 %22 to float
  %24 = load float, ptr %7, align 4, !tbaa !45
  %25 = fsub float %23, %24
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = sitofp i32 %28 to float
  %30 = load float, ptr %14, align 4, !tbaa !45
  %31 = fsub float %29, %30
  %32 = fpext float %31 to double
  %33 = fmul double %32, %32
  %34 = tail call double @llvm.fmuladd.f64(double %26, double %26, double %33)
  %35 = tail call double @sqrt(double noundef %34) #10
  %36 = load i32, ptr %2, align 4, !tbaa !41
  %37 = load i32, ptr %21, align 8, !tbaa !41
  %38 = sub nsw i32 %36, %37
  %39 = sitofp i32 %38 to double
  %40 = load i32, ptr %11, align 4, !tbaa !41
  %41 = load i32, ptr %27, align 4, !tbaa !41
  %42 = sub nsw i32 %40, %41
  %43 = sitofp i32 %42 to double
  %44 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = fadd double %19, %34
  %47 = fmul double %43, %43
  %48 = tail call double @llvm.fmuladd.f64(double %39, double %39, double %47)
  %49 = fsub double %46, %48
  %50 = fmul double %20, %35
  %51 = fcmp une double %50, 0.000000e+00
  %52 = fmul double %50, 2.000000e+00
  %53 = select i1 %51, double %52, double 2.000000e+00
  %54 = fdiv double %49, %53
  %55 = fptrunc double %54 to float
  %56 = fcmp ugt float %55, -1.000000e+00
  br i1 %56, label %57, label %61

57:                                               ; preds = %4
  %58 = fcmp ult float %55, 1.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call float @acosf(float noundef %55) #10
  br label %61

61:                                               ; preds = %4, %57, %59
  %62 = phi float [ %60, %59 ], [ 0x400921FB60000000, %4 ], [ 0.000000e+00, %57 ]
  %63 = fneg double %10
  %64 = fmul double %63, %32
  %65 = tail call double @llvm.fmuladd.f64(double %26, double %17, double %64)
  %66 = fcmp ogt double %65, 0.000000e+00
  %67 = fneg float %62
  %68 = select i1 %66, float %67, float %62
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %70, label %87

70:                                               ; preds = %61
  %71 = fdiv double %10, %35
  %72 = fdiv double %17, %35
  %73 = fdiv double %26, %20
  %74 = fdiv double %32, %20
  %75 = fsub double %73, %71
  %76 = fsub double %74, %72
  %77 = fmul double %76, %76
  %78 = tail call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = tail call double @sqrt(double noundef %78) #10
  %80 = fptrunc double %79 to float
  %81 = fneg double %71
  %82 = fmul double %74, %81
  %83 = tail call double @llvm.fmuladd.f64(double %73, double %72, double %82)
  %84 = fcmp ogt double %83, 0.000000e+00
  %85 = fneg float %80
  %86 = select i1 %84, float %85, float %80
  br label %87

87:                                               ; preds = %70, %61
  %88 = phi float [ %86, %70 ], [ %68, %61 ]
  %89 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %90 = load i8, ptr %89, align 8, !tbaa !44
  %91 = icmp eq i8 %90, 0
  %92 = fdiv float %88, 3.000000e+01
  %93 = select i1 %91, float %88, float %92
  %94 = fcmp une float %93, 0.000000e+00
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, ptr %2, align 4, !tbaa !41
  store i32 %96, ptr %21, align 8, !tbaa !41
  %97 = load i32, ptr %11, align 4, !tbaa !41
  store i32 %97, ptr %27, align 4, !tbaa !41
  br label %98

98:                                               ; preds = %95, %87
  %99 = fpext float %93 to double
  %100 = load double, ptr %45, align 8, !tbaa !56
  %101 = fadd double %100, %99
  store double %101, ptr %45, align 8, !tbaa !56
  %102 = fptrunc double %101 to float
  store float %102, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputAngleSpring(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  tail call void @InputAngle(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  call void @InputSpring(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %3, i64 1
  store float %6, ptr %7, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @InputTrackBall(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #2 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !41
  br i1 %7, label %30, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = sub nsw i32 %10, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds i32, ptr %2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = sub nsw i32 %14, %18
  %20 = sitofp i32 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FB99999A0000000, float %16)
  store float %21, ptr %3, align 4, !tbaa !45
  %22 = load i32, ptr %12, align 4, !tbaa !41
  %23 = load i32, ptr %8, align 8, !tbaa !41
  %24 = sub nsw i32 %22, %23
  %25 = sitofp i32 %24 to float
  %26 = load i32, ptr %2, align 4, !tbaa !41
  %27 = sub nsw i32 %26, %22
  %28 = sitofp i32 %27 to float
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 0x3FB99999A0000000, float %25)
  br label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds i32, ptr %2, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !41
  %33 = sub nsw i32 %10, %32
  %34 = sitofp i32 %33 to float
  store float %34, ptr %3, align 4, !tbaa !45
  %35 = load i32, ptr %2, align 4, !tbaa !41
  %36 = load i32, ptr %8, align 8, !tbaa !41
  %37 = sub nsw i32 %35, %36
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %30, %11
  %40 = phi float [ %38, %30 ], [ %29, %11 ]
  %41 = getelementptr inbounds float, ptr %3, i64 1
  store float %40, ptr %41, align 4, !tbaa !45
  %42 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 6
  %43 = load float, ptr %42, align 4, !tbaa !43
  %44 = load float, ptr %3, align 4, !tbaa !45
  %45 = fmul float %43, %44
  store float %45, ptr %3, align 4, !tbaa !45
  %46 = load float, ptr %42, align 4, !tbaa !43
  %47 = getelementptr inbounds float, ptr %3, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !45
  %49 = fmul float %46, %48
  store float %49, ptr %47, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @InputHorizontalRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = sitofp i32 %14 to float
  %16 = load i32, ptr %2, align 4, !tbaa !41
  %17 = sub nsw i32 %16, %14
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 1.000000e+01
  %20 = fadd float %19, %15
  br label %24

21:                                               ; preds = %4
  %22 = load i32, ptr %2, align 4, !tbaa !41
  %23 = sitofp i32 %22 to float
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi float [ %20, %12 ], [ %23, %21 ]
  %26 = sdiv i16 %8, 10
  %27 = sitofp i16 %26 to float
  %28 = fsub float %25, %27
  %29 = sitofp i16 %8 to float
  %30 = tail call float @llvm.fmuladd.f32(float %27, float -2.000000e+00, float %29)
  %31 = fdiv float %28, %30
  store float %31, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputHorizontalAbsolute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @InputVector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = load float, ptr %5, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %5, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = fmul float %10, %12
  %14 = call float @llvm.fmuladd.f32(float %7, float %8, float %13)
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = getelementptr inbounds float, ptr %5, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !45
  %19 = call float @llvm.fmuladd.f32(float %16, float %18, float %14)
  %20 = fmul float %19, 2.000000e+00
  store float %20, ptr %3, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @InputVerticalRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !63
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 8, !tbaa !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = sub nsw i32 %17, %14
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %19, 1.000000e+01
  %21 = fadd float %20, %15
  br label %25

22:                                               ; preds = %4
  %23 = load i32, ptr %2, align 4, !tbaa !41
  %24 = sitofp i32 %23 to float
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi float [ %21, %12 ], [ %24, %22 ]
  %27 = sdiv i16 %8, 10
  %28 = sitofp i16 %27 to float
  %29 = fsub float %26, %28
  %30 = sitofp i16 %8 to float
  %31 = tail call float @llvm.fmuladd.f32(float %28, float -2.000000e+00, float %30)
  %32 = fdiv float %29, %31
  store float %32, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputVerticalAbsolute(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @InputVector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = load float, ptr %5, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %5, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = fmul float %10, %12
  %14 = call float @llvm.fmuladd.f32(float %7, float %8, float %13)
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = getelementptr inbounds float, ptr %5, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !45
  %19 = call float @llvm.fmuladd.f32(float %16, float %18, float %14)
  %20 = fmul float %19, 2.000000e+00
  store float %20, ptr %3, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputCustomRatio(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #0 {
  tail call void @InputCustomRatioFlip(ptr poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %5 = load float, ptr %3, align 4, !tbaa !45
  %6 = fneg float %5
  store float %6, ptr %3, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InputCustomRatioFlip(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, ptr %6, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = load i32, ptr %6, align 4, !tbaa !41
  %12 = sub nsw i32 %10, %11
  %13 = sitofp i32 %12 to double
  %14 = getelementptr inbounds i32, ptr %6, i64 3
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = getelementptr inbounds i32, ptr %6, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to double
  %20 = tail call double @hypot(double noundef %13, double noundef %19) #10
  %21 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !44
  %23 = icmp eq i8 %22, 0
  %24 = fcmp une double %20, 0.000000e+00
  br i1 %23, label %57, label %25

25:                                               ; preds = %8
  br i1 %24, label %26, label %71

26:                                               ; preds = %25
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !41
  %31 = sub nsw i32 %28, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, 1.000000e+01
  %34 = sitofp i32 %30 to float
  %35 = fadd float %33, %34
  %36 = load i32, ptr %14, align 4, !tbaa !41
  %37 = sitofp i32 %36 to float
  %38 = fsub float %35, %37
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %41 = load i32, ptr %2, align 4, !tbaa !41
  %42 = load i32, ptr %40, align 4, !tbaa !41
  %43 = sub nsw i32 %41, %42
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, 1.000000e+01
  %46 = sitofp i32 %42 to float
  %47 = fadd float %45, %46
  %48 = load i32, ptr %9, align 4, !tbaa !41
  %49 = sitofp i32 %48 to float
  %50 = fsub float %47, %49
  %51 = fptosi float %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = sitofp i32 %39 to double
  %54 = fmul double %19, %53
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %13, double %54)
  %56 = fdiv double %55, %20
  br label %71

57:                                               ; preds = %8
  br i1 %24, label %58, label %71

58:                                               ; preds = %57
  %59 = getelementptr inbounds i32, ptr %2, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !41
  %61 = load i32, ptr %14, align 4, !tbaa !41
  %62 = sub nsw i32 %60, %61
  %63 = load i32, ptr %2, align 4, !tbaa !41
  %64 = load i32, ptr %9, align 4, !tbaa !41
  %65 = sub nsw i32 %63, %64
  %66 = sitofp i32 %65 to double
  %67 = sitofp i32 %62 to double
  %68 = fmul double %19, %67
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %13, double %68)
  %70 = fdiv double %69, %20
  br label %71

71:                                               ; preds = %58, %57, %26, %25
  %72 = phi double [ %56, %26 ], [ 0.000000e+00, %25 ], [ %70, %58 ], [ 0.000000e+00, %57 ]
  %73 = fcmp une double %20, 0.000000e+00
  %74 = fdiv double %72, %20
  %75 = select i1 %73, double %74, double 0.000000e+00
  %76 = fptrunc double %75 to float
  store float %76, ptr %3, align 4, !tbaa !45
  br label %77

77:                                               ; preds = %71, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @applyMouseInput(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #10
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0, ptr noundef %3) #10
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @setInputPostFct(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MouseInput, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @handleMouseInput(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !64
  %6 = and i16 %5, -2
  %7 = icmp eq i16 %6, 216
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !66
  switch i16 %10, label %28 [
    i16 1, label %11
    i16 2, label %21
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = or i32 %13, 2
  store i32 %14, ptr %12, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !41
  store i32 %17, ptr %15, align 4, !tbaa !41
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 4, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !41
  br label %25

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = and i32 %23, -3
  store i32 %24, ptr %22, align 8, !tbaa !67
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi i8 [ 1, %11 ], [ 0, %21 ]
  %27 = getelementptr inbounds %struct.MouseInput, ptr %1, i64 0, i32 3
  store i8 %26, ptr %27, align 8, !tbaa !44
  br label %28

28:                                               ; preds = %25, %8, %3
  %29 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 1, %25 ]
  ret i32 %29
}

declare void @convertViewVec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!38 = !{!39, !35, i64 48}
!39 = !{!"MouseInput", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 24, !36, i64 28, !36, i64 36, !40, i64 44, !35, i64 48}
!40 = !{!"float", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!39, !40, i64 44}
!44 = !{!39, !36, i64 24}
!45 = !{!40, !40, i64 0}
!46 = !{!39, !35, i64 8}
!47 = !{!39, !35, i64 0}
!48 = !{!49, !36, i64 977}
!49 = !{!"TransInfo", !42, i64 0, !42, i64 4, !42, i64 8, !50, i64 12, !42, i64 16, !40, i64 20, !40, i64 24, !35, i64 32, !35, i64 40, !42, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !51, i64 80, !52, i64 296, !55, i64 440, !39, i64 584, !42, i64 640, !40, i64 644, !36, i64 648, !36, i64 668, !36, i64 680, !36, i64 688, !50, i64 696, !50, i64 698, !36, i64 700, !36, i64 712, !36, i64 716, !36, i64 780, !36, i64 844, !36, i64 908, !50, i64 972, !50, i64 974, !36, i64 976, !36, i64 977, !36, i64 980, !36, i64 992, !36, i64 1028, !36, i64 1064, !35, i64 1128, !35, i64 1136, !35, i64 1144, !50, i64 1152, !50, i64 1154, !50, i64 1156, !50, i64 1158, !50, i64 1160, !36, i64 1164, !36, i64 1180, !36, i64 1196, !36, i64 1208, !36, i64 1220, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !36, i64 1296, !40, i64 1304, !35, i64 1312, !36, i64 1320, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384}
!50 = !{!"short", !36, i64 0}
!51 = !{!"TransCon", !50, i64 0, !36, i64 2, !36, i64 52, !36, i64 88, !36, i64 124, !36, i64 160, !36, i64 172, !42, i64 180, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!52 = !{!"TransSnap", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11, !50, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 64, !53, i64 72, !35, i64 88, !40, i64 96, !54, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136}
!53 = !{!"ListBase", !35, i64 0, !35, i64 8}
!54 = !{!"double", !36, i64 0}
!55 = !{!"NumInput", !50, i64 0, !42, i64 4, !36, i64 8, !36, i64 20, !50, i64 22, !36, i64 24, !36, i64 32, !36, i64 44, !36, i64 56, !50, i64 68, !36, i64 70, !42, i64 136}
!56 = !{!54, !54, i64 0}
!57 = !{!49, !35, i64 1248}
!58 = !{!59, !50, i64 208}
!59 = !{!"ARegion", !35, i64 0, !35, i64 8, !60, i64 16, !62, i64 176, !62, i64 192, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !40, i64 220, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !35, i64 240, !53, i64 248, !53, i64 264, !53, i64 280, !53, i64 296, !53, i64 312, !53, i64 328, !53, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!60 = !{!"View2D", !61, i64 0, !61, i64 16, !62, i64 32, !62, i64 48, !62, i64 64, !36, i64 80, !36, i64 88, !40, i64 96, !40, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !35, i64 128, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!61 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!62 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!63 = !{!59, !50, i64 210}
!64 = !{!65, !50, i64 16}
!65 = !{!"wmEvent", !35, i64 0, !35, i64 8, !50, i64 16, !50, i64 18, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !50, i64 44, !50, i64 46, !42, i64 48, !42, i64 52, !54, i64 56, !42, i64 64, !42, i64 68, !50, i64 72, !50, i64 74, !50, i64 76, !50, i64 78, !50, i64 80, !50, i64 82, !35, i64 88, !35, i64 96, !50, i64 104, !50, i64 106, !42, i64 108, !35, i64 112}
!66 = !{!65, !50, i64 18}
!67 = !{!49, !42, i64 8}
