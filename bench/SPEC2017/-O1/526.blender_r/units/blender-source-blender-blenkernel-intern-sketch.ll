; ModuleID = 'blender/source/blender/blenkernel/intern/sketch.c'
source_filename = "blender/source/blender/blenkernel/intern/sketch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SK_Stroke = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.SK_Sketch = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.SK_Point, %struct.SK_Overdraw }
%struct.SK_Point = type { [3 x float], [2 x i16], [3 x float], float, i32, i32 }
%struct.SK_Overdraw = type { ptr, i32, i32, i32 }
%struct.SK_DrawData = type { [2 x i32], [2 x i32], i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"SK_Sketch\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SK_Point buffer\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SK_Stroke\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"marked array\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: nounwind uwtable
define dso_local void @freeSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  tail call void %7(ptr noundef %9) #15
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %10(ptr noundef nonnull %5) #15
  %11 = icmp eq ptr %6, null
  br i1 %11, label %12, label %4, !llvm.loop !48

12:                                               ; preds = %4, %1
  %13 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %13) #15
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @sk_freeStroke(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  tail call void %2(ptr noundef %4) #15
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %5(ptr noundef %0) #15
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createSketch() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 112, ptr noundef nonnull @.str) #15
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @sk_initPoint(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %2, null
  %5 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2
  br i1 %4, label %28, label %6

6:                                                ; preds = %3
  %7 = load float, ptr %2, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fmul float %9, %9
  %11 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %10)
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %11)
  %15 = fcmp ogt float %14, 0x38AA95A5C0000000
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = tail call float @sqrtf(float noundef %14) #15
  %18 = fdiv float 1.000000e+00, %17
  %19 = load float, ptr %2, align 4, !tbaa !51
  %20 = fmul float %19, %18
  store float %20, ptr %5, align 4, !tbaa !51
  %21 = load float, ptr %8, align 4, !tbaa !51
  %22 = fmul float %18, %21
  %23 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2, i64 1
  store float %22, ptr %23, align 4, !tbaa !51
  %24 = load float, ptr %12, align 4, !tbaa !51
  %25 = fmul float %18, %24
  br label %30

26:                                               ; preds = %6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !51
  %27 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %27, align 4, !tbaa !51
  br label %30

28:                                               ; preds = %3
  store float 0.000000e+00, ptr %5, align 4, !tbaa !51
  %29 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %29, align 4, !tbaa !51
  br label %30

30:                                               ; preds = %26, %16, %28
  %31 = phi float [ 0.000000e+00, %26 ], [ %25, %16 ], [ 1.000000e+00, %28 ]
  %32 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2, i64 2
  store float %31, ptr %32, align 4, !tbaa !51
  %33 = load i32, ptr %1, align 4, !tbaa !52
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 1
  store i16 %34, ptr %35, align 4, !tbaa !53
  %36 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 1, i64 1
  store i16 %38, ptr %39, align 2, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sk_copyPoint(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @sk_allocStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 40
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @.str.1) #15
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sk_createStroke() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 40, ptr noundef nonnull @.str.2) #15
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 4
  store i32 20, ptr %5, align 4, !tbaa !55
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %7 = tail call ptr %6(i64 noundef 800, ptr noundef nonnull @.str.1) #15
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !47
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_shrinkStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  store i32 %3, ptr %4, align 4, !tbaa !55
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %11 = sext i32 %3 to i64
  %12 = mul nsw i64 %11, 40
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.1) #15
  store ptr %13, ptr %8, align 8, !tbaa !47
  %14 = load i32, ptr %2, align 8, !tbaa !57
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %9, i64 %16, i1 false)
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef %9) #15
  br label %18

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_growStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !55
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = shl nsw i32 %5, 1
  store i32 %10, ptr %4, align 4, !tbaa !55
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = sext i32 %10 to i64
  %13 = mul nsw i64 %12, 40
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.1) #15
  store ptr %14, ptr %8, align 8, !tbaa !47
  %15 = load i32, ptr %2, align 8, !tbaa !57
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 %9, i64 %17, i1 false)
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %18(ptr noundef %9) #15
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_growStrokeBufferN(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !55
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load i32, ptr %6, align 4, !tbaa !55
  %13 = icmp sgt i32 %5, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %16, %14 ], [ %12, %9 ]
  %16 = shl nsw i32 %15, 1
  %17 = icmp sgt i32 %5, %16
  br i1 %17, label %14, label %18, !llvm.loop !58

18:                                               ; preds = %14
  store i32 %16, ptr %6, align 4, !tbaa !55
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %16, %18 ], [ %12, %9 ]
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %22 = sext i32 %20 to i64
  %23 = mul nsw i64 %22, 40
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.1) #15
  store ptr %24, ptr %10, align 8, !tbaa !47
  %25 = load i32, ptr %3, align 8, !tbaa !57
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %11, i64 %27, i1 false)
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %28(ptr noundef %11) #15
  br label %29

29:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_replaceStrokePoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_insertStrokePoint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !55
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = shl nsw i32 %7, 1
  store i32 %12, ptr %6, align 4, !tbaa !55
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %14 = sext i32 %12 to i64
  %15 = mul nsw i64 %14, 40
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @.str.1) #15
  store ptr %16, ptr %10, align 8, !tbaa !47
  %17 = load i32, ptr %4, align 8, !tbaa !57
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 4 %11, i64 %19, i1 false)
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef %11) #15
  br label %21

21:                                               ; preds = %3, %9
  %22 = sub nsw i32 %5, %2
  %23 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.SK_Point, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.SK_Point, ptr %26, i64 1
  %28 = sext i32 %22 to i64
  %29 = mul nsw i64 %28, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %27, ptr align 4 %26, i64 %29, i1 false)
  %30 = load ptr, ptr %23, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.SK_Point, ptr %30, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %31, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  %32 = load i32, ptr %4, align 8, !tbaa !57
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %4, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @sk_appendStrokePoint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = shl nsw i32 %6, 1
  store i32 %11, ptr %5, align 4, !tbaa !55
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = sext i32 %11 to i64
  %14 = mul nsw i64 %13, 40
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.1) #15
  store ptr %15, ptr %9, align 8, !tbaa !47
  %16 = load i32, ptr %3, align 8, !tbaa !57
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %10, i64 %18, i1 false)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %19(ptr noundef %10) #15
  br label %20

20:                                               ; preds = %2, %8
  %21 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = load i32, ptr %3, align 8, !tbaa !57
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SK_Point, ptr %22, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %25, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  %26 = load i32, ptr %3, align 8, !tbaa !57
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_insertStrokePoints(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sub nsw i32 %4, %3
  %7 = add nsw i32 %6, 1
  %8 = sub nsw i32 %2, %7
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = add nsw i32 %10, %8
  %12 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !55
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %20, %18 ], [ %13, %15 ]
  %20 = shl nsw i32 %19, 1
  %21 = icmp sgt i32 %11, %20
  br i1 %21, label %18, label %22, !llvm.loop !58

22:                                               ; preds = %18
  store i32 %20, ptr %12, align 4, !tbaa !55
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %24 = sext i32 %20 to i64
  %25 = mul nsw i64 %24, 40
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.1) #15
  store ptr %26, ptr %16, align 8, !tbaa !47
  %27 = load i32, ptr %9, align 8, !tbaa !57
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %17, i64 %29, i1 false)
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %30(ptr noundef %17) #15
  br label %31

31:                                               ; preds = %5, %22
  %32 = icmp eq i32 %7, %2
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %9, align 8, !tbaa !57
  %35 = sub i32 %34, %4
  %36 = add i32 %35, 1
  %37 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = sext i32 %3 to i64
  %40 = getelementptr inbounds %struct.SK_Point, ptr %38, i64 %39
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds %struct.SK_Point, ptr %40, i64 %41
  %43 = sext i32 %4 to i64
  %44 = getelementptr inbounds %struct.SK_Point, ptr %38, i64 %43
  %45 = getelementptr inbounds %struct.SK_Point, ptr %44, i64 1
  %46 = sext i32 %36 to i64
  %47 = mul nsw i64 %46, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %42, ptr nonnull align 4 %45, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %33, %31
  %49 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = sext i32 %3 to i64
  %52 = getelementptr inbounds %struct.SK_Point, ptr %50, i64 %51
  %53 = sext i32 %2 to i64
  %54 = mul nsw i64 %53, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr align 4 %1, i64 %54, i1 false)
  %55 = load i32, ptr %9, align 8, !tbaa !57
  %56 = add nsw i32 %55, %8
  store i32 %56, ptr %9, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_trimStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = sub nsw i32 %2, %1
  %5 = add nsw i32 %4, 1
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10
  %12 = sext i32 %5 to i64
  %13 = mul nsw i64 %12, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %11, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  store i32 %5, ptr %15, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_straightenStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = sub i32 %2, %1
  %7 = load float, ptr %4, align 4, !tbaa !51
  %8 = load float, ptr %3, align 4, !tbaa !51
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds float, ptr %4, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %4, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = sext i32 %1 to i64
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %22, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %24, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = getelementptr inbounds float, ptr %24, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %22, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %22, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !60
  %34 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %23, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !51
  %36 = getelementptr inbounds float, ptr %34, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !51
  %38 = getelementptr inbounds float, ptr %34, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !51
  %40 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %23, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %23, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !60
  %44 = add nsw i32 %1, 1
  %45 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !57
  %47 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !55
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %5
  %51 = shl nsw i32 %48, 1
  store i32 %51, ptr %47, align 4, !tbaa !55
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %53 = sext i32 %51 to i64
  %54 = mul nsw i64 %53, 40
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.1) #15
  store ptr %55, ptr %20, align 8, !tbaa !47
  %56 = load i32, ptr %45, align 8, !tbaa !57
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr align 4 %21, i64 %58, i1 false)
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %59(ptr noundef %21) #15
  br label %60

60:                                               ; preds = %5, %50
  %61 = sub nsw i32 %46, %44
  %62 = load ptr, ptr %20, align 8, !tbaa !47
  %63 = sext i32 %44 to i64
  %64 = getelementptr inbounds %struct.SK_Point, ptr %62, i64 %63
  %65 = getelementptr inbounds %struct.SK_Point, ptr %64, i64 1
  %66 = sext i32 %61 to i64
  %67 = mul nsw i64 %66, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %65, ptr align 4 %64, i64 %67, i1 false)
  %68 = load ptr, ptr %20, align 8, !tbaa !47
  %69 = getelementptr inbounds %struct.SK_Point, ptr %68, i64 %63
  store float %8, ptr %69, align 4
  %70 = getelementptr inbounds i8, ptr %69, i64 4
  store float %13, ptr %70, align 4
  %71 = getelementptr inbounds i8, ptr %69, i64 8
  store float %18, ptr %71, align 4
  %72 = getelementptr inbounds i8, ptr %69, i64 16
  store float %25, ptr %72, align 4
  %73 = getelementptr inbounds i8, ptr %69, i64 20
  store float %27, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %69, i64 24
  store float %29, ptr %74, align 4
  %75 = getelementptr inbounds i8, ptr %69, i64 32
  store i32 %33, ptr %75, align 4
  %76 = getelementptr inbounds i8, ptr %69, i64 36
  store i32 %31, ptr %76, align 4
  %77 = load i32, ptr %45, align 8, !tbaa !57
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %45, align 8, !tbaa !57
  %79 = add nsw i32 %2, 1
  %80 = load i32, ptr %47, align 4, !tbaa !55
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %60
  %83 = load ptr, ptr %20, align 8, !tbaa !47
  %84 = shl nsw i32 %80, 1
  store i32 %84, ptr %47, align 4, !tbaa !55
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %86 = sext i32 %84 to i64
  %87 = mul nsw i64 %86, 40
  %88 = tail call ptr %85(i64 noundef %87, ptr noundef nonnull @.str.1) #15
  store ptr %88, ptr %20, align 8, !tbaa !47
  %89 = load i32, ptr %45, align 8, !tbaa !57
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %88, ptr align 4 %83, i64 %91, i1 false)
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %92(ptr noundef %83) #15
  br label %93

93:                                               ; preds = %60, %82
  %94 = sub i32 %77, %2
  %95 = load ptr, ptr %20, align 8, !tbaa !47
  %96 = sext i32 %79 to i64
  %97 = getelementptr inbounds %struct.SK_Point, ptr %95, i64 %96
  %98 = getelementptr inbounds %struct.SK_Point, ptr %97, i64 1
  %99 = sext i32 %94 to i64
  %100 = mul nsw i64 %99, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %98, ptr align 4 %97, i64 %100, i1 false)
  %101 = load ptr, ptr %20, align 8, !tbaa !47
  %102 = getelementptr inbounds %struct.SK_Point, ptr %101, i64 %96
  store float %7, ptr %102, align 4
  %103 = getelementptr inbounds i8, ptr %102, i64 4
  store float %11, ptr %103, align 4
  %104 = getelementptr inbounds i8, ptr %102, i64 8
  store float %16, ptr %104, align 4
  %105 = getelementptr inbounds i8, ptr %102, i64 16
  store float %35, ptr %105, align 4
  %106 = getelementptr inbounds i8, ptr %102, i64 20
  store float %37, ptr %106, align 4
  %107 = getelementptr inbounds i8, ptr %102, i64 24
  store float %39, ptr %107, align 4
  %108 = getelementptr inbounds i8, ptr %102, i64 32
  store i32 %43, ptr %108, align 4
  %109 = getelementptr inbounds i8, ptr %102, i64 36
  store i32 %41, ptr %109, align 4
  %110 = load i32, ptr %45, align 8, !tbaa !57
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %45, align 8, !tbaa !57
  %112 = icmp sgt i32 %6, 1
  br i1 %112, label %113, label %138

113:                                              ; preds = %93
  %114 = sitofp i32 %6 to float
  %115 = load ptr, ptr %20, align 8, !tbaa !47
  %116 = sext i32 %44 to i64
  %117 = zext nneg i32 %6 to i64
  %118 = getelementptr %struct.SK_Point, ptr %115, i64 %116
  br label %119

119:                                              ; preds = %113, %119
  %120 = phi i64 [ 1, %113 ], [ %136, %119 ]
  %121 = trunc i64 %120 to i32
  %122 = sitofp i32 %121 to float
  %123 = fdiv float %122, %114
  %124 = getelementptr %struct.SK_Point, ptr %118, i64 %120
  %125 = fmul float %9, %123
  store float %125, ptr %124, align 4, !tbaa !51
  %126 = fmul float %14, %123
  %127 = getelementptr inbounds float, ptr %124, i64 1
  store float %126, ptr %127, align 4, !tbaa !51
  %128 = fmul float %19, %123
  %129 = getelementptr inbounds float, ptr %124, i64 2
  store float %128, ptr %129, align 4, !tbaa !51
  %130 = load float, ptr %3, align 4, !tbaa !51
  %131 = fadd float %125, %130
  store float %131, ptr %124, align 4, !tbaa !51
  %132 = load float, ptr %12, align 4, !tbaa !51
  %133 = fadd float %126, %132
  store float %133, ptr %127, align 4, !tbaa !51
  %134 = load float, ptr %17, align 4, !tbaa !51
  %135 = fadd float %128, %134
  store float %135, ptr %129, align 4, !tbaa !51
  %136 = add nuw nsw i64 %120, 1
  %137 = icmp eq i64 %136, %117
  br i1 %137, label %138, label %119, !llvm.loop !61

138:                                              ; preds = %119, %93
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_polygonizeStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi i32 [ %1, %5 ], [ %15, %14 ]
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %7, i64 %10, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !60
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = add nsw i32 %9, -1
  %16 = icmp sgt i32 %9, 1
  br i1 %16, label %8, label %17, !llvm.loop !62

17:                                               ; preds = %14, %8, %3
  %18 = phi i32 [ %1, %3 ], [ 0, %14 ], [ %9, %8 ]
  %19 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = add nsw i32 %20, -1
  %22 = icmp sgt i32 %21, %2
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = sext i32 %2 to i64
  br label %27

27:                                               ; preds = %23, %32
  %28 = phi i64 [ %26, %23 ], [ %33, %32 ]
  %29 = getelementptr inbounds %struct.SK_Point, ptr %25, i64 %28, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !60
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = add nsw i64 %28, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %38, label %27, !llvm.loop !63

36:                                               ; preds = %27
  %37 = trunc i64 %28 to i32
  br label %38

38:                                               ; preds = %36, %32, %17
  %39 = phi i32 [ %2, %17 ], [ %37, %36 ], [ %21, %32 ]
  %40 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %41 = add nsw i32 %18, 1
  %42 = icmp slt i32 %41, %39
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %45 = sext i32 %41 to i64
  br label %46

46:                                               ; preds = %43, %62
  %47 = phi i64 [ %45, %43 ], [ %64, %62 ]
  %48 = phi i32 [ %41, %43 ], [ %63, %62 ]
  %49 = load ptr, ptr %44, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.SK_Point, ptr %49, i64 %47
  %51 = getelementptr inbounds %struct.SK_Point, ptr %49, i64 %47, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !60
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = trunc i64 %47 to i32
  %56 = icmp eq i32 %48, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = sext i32 %48 to i64
  %59 = getelementptr inbounds %struct.SK_Point, ptr %49, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %59, ptr noundef nonnull align 4 dereferenceable(40) %50, i64 40, i1 false)
  br label %60

60:                                               ; preds = %57, %54
  %61 = add nsw i32 %48, 1
  br label %62

62:                                               ; preds = %46, %60
  %63 = phi i32 [ %61, %60 ], [ %48, %46 ]
  %64 = add nsw i64 %47, 1
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %39, %65
  br i1 %66, label %67, label %46, !llvm.loop !64

67:                                               ; preds = %62, %38
  %68 = phi i32 [ %41, %38 ], [ %63, %62 ]
  %69 = icmp slt i32 %68, %39
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, ptr %40, align 8, !tbaa !57
  %72 = sub nsw i32 %71, %39
  %73 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds %struct.SK_Point, ptr %74, i64 %75
  %77 = sext i32 %39 to i64
  %78 = getelementptr inbounds %struct.SK_Point, ptr %74, i64 %77
  %79 = sext i32 %72 to i64
  %80 = mul nsw i64 %79, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %76, ptr align 4 %78, i64 %80, i1 false)
  %81 = add nsw i32 %72, %68
  store i32 %81, ptr %40, align 8, !tbaa !57
  br label %82

82:                                               ; preds = %70, %67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_flattenStroke(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %6 = sub i32 %2, %1
  %7 = add nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  store float %12, ptr %4, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %4, i64 1
  store float %14, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %11, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = getelementptr inbounds float, ptr %4, i64 2
  store float %17, ptr %18, align 4, !tbaa !51
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %19
  %21 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10
  %22 = load float, ptr %20, align 4, !tbaa !51
  %23 = load float, ptr %21, align 4, !tbaa !51
  %24 = fsub float %22, %23
  store float %24, ptr %5, align 4, !tbaa !51
  %25 = getelementptr inbounds float, ptr %20, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !51
  %27 = getelementptr inbounds float, ptr %21, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !51
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds float, ptr %5, i64 1
  store float %29, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %20, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !51
  %33 = getelementptr inbounds float, ptr %21, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !51
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds float, ptr %5, i64 2
  store float %35, ptr %36, align 4, !tbaa !51
  call void @project_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %37 = load float, ptr %4, align 4, !tbaa !51
  %38 = load float, ptr %15, align 4, !tbaa !51
  %39 = fmul float %38, %38
  %40 = call float @llvm.fmuladd.f32(float %37, float %37, float %39)
  %41 = load float, ptr %18, align 4, !tbaa !51
  %42 = call float @llvm.fmuladd.f32(float %41, float %41, float %40)
  %43 = fcmp ogt float %42, 0x38AA95A5C0000000
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = call float @sqrtf(float noundef %42) #15
  %46 = fdiv float 1.000000e+00, %45
  %47 = load float, ptr %4, align 4, !tbaa !51
  %48 = fmul float %47, %46
  store float %48, ptr %4, align 4, !tbaa !51
  %49 = load float, ptr %15, align 4, !tbaa !51
  %50 = fmul float %46, %49
  store float %50, ptr %15, align 4, !tbaa !51
  %51 = load float, ptr %18, align 4, !tbaa !51
  %52 = fmul float %46, %51
  br label %54

53:                                               ; preds = %3
  store float 0.000000e+00, ptr %4, align 4, !tbaa !51
  store float 0.000000e+00, ptr %15, align 4, !tbaa !51
  br label %54

54:                                               ; preds = %44, %53
  %55 = phi float [ 0.000000e+00, %53 ], [ %52, %44 ]
  %56 = phi float [ 0.000000e+00, %53 ], [ %45, %44 ]
  store float %55, ptr %18, align 4, !tbaa !51
  %57 = icmp sgt i32 %6, 1
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = sitofp i32 %7 to float
  %60 = sext i32 %1 to i64
  %61 = zext nneg i32 %6 to i64
  br label %62

62:                                               ; preds = %58, %62
  %63 = phi i64 [ 1, %58 ], [ %103, %62 ]
  %64 = trunc i64 %63 to i32
  %65 = sitofp i32 %64 to float
  %66 = fmul float %56, %65
  %67 = fdiv float %66, %59
  %68 = load ptr, ptr %8, align 8, !tbaa !47
  %69 = getelementptr %struct.SK_Point, ptr %68, i64 %63
  %70 = getelementptr %struct.SK_Point, ptr %69, i64 %60
  %71 = getelementptr inbounds %struct.SK_Point, ptr %68, i64 %10
  %72 = load float, ptr %70, align 4, !tbaa !51
  %73 = load float, ptr %71, align 4, !tbaa !51
  %74 = fsub float %72, %73
  store float %74, ptr %5, align 4, !tbaa !51
  %75 = getelementptr inbounds float, ptr %70, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !51
  %77 = getelementptr inbounds float, ptr %71, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !51
  %79 = fsub float %76, %78
  store float %79, ptr %30, align 4, !tbaa !51
  %80 = getelementptr inbounds float, ptr %70, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !51
  %82 = getelementptr inbounds float, ptr %71, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !51
  %84 = fsub float %81, %83
  store float %84, ptr %36, align 4, !tbaa !51
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %85 = load float, ptr %4, align 4, !tbaa !51
  %86 = load float, ptr %15, align 4, !tbaa !51
  %87 = load float, ptr %18, align 4, !tbaa !51
  %88 = fmul float %67, %85
  %89 = fmul float %67, %86
  %90 = fmul float %67, %87
  %91 = load float, ptr %5, align 4, !tbaa !51
  %92 = load float, ptr %70, align 4, !tbaa !51
  %93 = fsub float %92, %91
  store float %93, ptr %70, align 4, !tbaa !51
  %94 = load float, ptr %30, align 4, !tbaa !51
  %95 = load float, ptr %75, align 4, !tbaa !51
  %96 = fsub float %95, %94
  store float %96, ptr %75, align 4, !tbaa !51
  %97 = load float, ptr %36, align 4, !tbaa !51
  %98 = load float, ptr %80, align 4, !tbaa !51
  %99 = fsub float %98, %97
  store float %99, ptr %80, align 4, !tbaa !51
  %100 = fadd float %88, %93
  store float %100, ptr %70, align 4, !tbaa !51
  %101 = fadd float %89, %96
  store float %101, ptr %75, align 4, !tbaa !51
  %102 = fadd float %90, %99
  store float %102, ptr %80, align 4, !tbaa !51
  %103 = add nuw nsw i64 %63, 1
  %104 = icmp eq i64 %103, %61
  br i1 %104, label %105, label %62, !llvm.loop !65

105:                                              ; preds = %62, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sk_removeStroke(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %6, %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #15
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void %8(ptr noundef %10) #15
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef %1) #15
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sk_reverseStroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !55
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 40
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str.1) #15
  store ptr %9, ptr %2, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %11 = getelementptr %struct.SK_Point, ptr %3, i64 -1
  %12 = load i32, ptr %10, align 8, !tbaa !57
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1, %14
  %15 = phi i64 [ %23, %14 ], [ 0, %1 ]
  %16 = phi i32 [ %24, %14 ], [ %12, %1 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.SK_Point, ptr %17, i64 %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr %struct.SK_Point, ptr %11, i64 %19
  %21 = sub nsw i64 0, %15
  %22 = getelementptr inbounds %struct.SK_Point, ptr %20, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %18, ptr noundef nonnull align 4 dereferenceable(40) %22, i64 40, i1 false)
  %23 = add nuw nsw i64 %15, 1
  %24 = load i32, ptr %10, align 8, !tbaa !57
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %14, label %27, !llvm.loop !67

27:                                               ; preds = %14, %1
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %28(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_filterStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i32 %1, -1
  %9 = add nsw i32 %7, -1
  %10 = select i1 %8, i32 %9, i32 %2
  %11 = select i1 %8, i32 0, i32 %1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !55
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 40
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.1) #15
  store ptr %17, ptr %4, align 8, !tbaa !47
  store i32 0, ptr %6, align 8, !tbaa !57
  %18 = icmp sgt i32 %11, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = zext nneg i32 %11 to i64
  br label %21

21:                                               ; preds = %19, %38
  %22 = phi i64 [ 0, %19 ], [ %45, %38 ]
  %23 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %22
  %24 = load i32, ptr %6, align 8, !tbaa !57
  %25 = load i32, ptr %13, align 4, !tbaa !55
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 8, !tbaa !47
  %29 = shl nsw i32 %25, 1
  store i32 %29, ptr %13, align 4, !tbaa !55
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %31 = sext i32 %29 to i64
  %32 = mul nsw i64 %31, 40
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.1) #15
  store ptr %33, ptr %4, align 8, !tbaa !47
  %34 = load i32, ptr %6, align 8, !tbaa !57
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %28, i64 %36, i1 false)
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %37(ptr noundef %28) #15
  br label %38

38:                                               ; preds = %21, %27
  %39 = load ptr, ptr %4, align 8, !tbaa !47
  %40 = load i32, ptr %6, align 8, !tbaa !57
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.SK_Point, ptr %39, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %42, ptr noundef nonnull align 4 dereferenceable(40) %23, i64 40, i1 false)
  %43 = load i32, ptr %6, align 8, !tbaa !57
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %6, align 8, !tbaa !57
  %45 = add nuw nsw i64 %22, 1
  %46 = icmp eq i64 %45, %20
  br i1 %46, label %47, label %21, !llvm.loop !68

47:                                               ; preds = %38, %3
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %49 = sext i32 %7 to i64
  %50 = tail call ptr %48(i64 noundef %49, ptr noundef nonnull @.str.3) #15
  %51 = sext i32 %11 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  store i8 1, ptr %52, align 1, !tbaa !69
  %53 = sext i32 %10 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  store i8 1, ptr %54, align 1, !tbaa !69
  %55 = icmp slt i32 %11, %10
  br label %59

56:                                               ; preds = %138, %59
  %57 = phi i8 [ 0, %59 ], [ %139, %138 ]
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59, !llvm.loop !70

59:                                               ; preds = %47, %56
  br i1 %55, label %65, label %56

60:                                               ; preds = %56
  %61 = icmp sgt i32 %11, %10
  br i1 %61, label %173, label %62

62:                                               ; preds = %60
  %63 = sext i32 %11 to i64
  %64 = add i32 %10, 1
  br label %141

65:                                               ; preds = %59, %138
  %66 = phi i8 [ %139, %138 ], [ 0, %59 ]
  %67 = phi i32 [ %79, %138 ], [ %11, %59 ]
  %68 = sext i32 %67 to i64
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i32 [ %67, %65 ], [ %76, %69 ]
  %71 = phi i64 [ %68, %65 ], [ %72, %69 ]
  %72 = add nsw i64 %71, 1
  %73 = getelementptr inbounds i8, ptr %50, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !69
  %75 = icmp eq i8 %74, 0
  %76 = add nsw i32 %70, 1
  br i1 %75, label %69, label %77, !llvm.loop !71

77:                                               ; preds = %69
  %78 = trunc i64 %71 to i32
  %79 = trunc i64 %72 to i32
  %80 = sext i32 %67 to i64
  %81 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %80, i32 1
  %82 = load i16, ptr %81, align 4, !tbaa !53
  %83 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %80, i32 1, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !53
  %85 = icmp slt i32 %67, %78
  br i1 %85, label %86, label %132

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %72, i32 1, i64 1
  %88 = load i16, ptr %87, align 2, !tbaa !53
  %89 = sub i16 %84, %88
  %90 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %72, i32 1
  %91 = load i16, ptr %90, align 4, !tbaa !53
  %92 = sub i16 %91, %82
  %93 = sext i16 %89 to i32
  %94 = sext i16 %92 to i32
  %95 = sext i32 %70 to i64
  br label %96

96:                                               ; preds = %86, %128
  %97 = phi i64 [ %68, %86 ], [ %100, %128 ]
  %98 = phi float [ 1.600000e+01, %86 ], [ %130, %128 ]
  %99 = phi i32 [ 0, %86 ], [ %129, %128 ]
  %100 = add nsw i64 %97, 1
  %101 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %100, i32 1
  %102 = load i16, ptr %101, align 4, !tbaa !53
  %103 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %100, i32 1, i64 1
  %104 = load i16, ptr %103, align 2, !tbaa !53
  %105 = icmp eq i16 %102, %82
  %106 = icmp eq i16 %104, %84
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %128, label %108

108:                                              ; preds = %96
  %109 = sub i16 %104, %84
  %110 = sext i16 %109 to i32
  %111 = sub i16 %102, %82
  %112 = sext i16 %111 to i32
  %113 = mul nsw i32 %112, %93
  %114 = mul nsw i32 %110, %94
  %115 = add nsw i32 %114, %113
  %116 = sitofp i32 %115 to float
  %117 = mul nsw i32 %112, %112
  %118 = mul nsw i32 %110, %110
  %119 = add nuw nsw i32 %118, %117
  %120 = sitofp i32 %119 to float
  %121 = fdiv float %116, %120
  %122 = fmul float %121, %121
  %123 = fmul float %122, %120
  %124 = fcmp ogt float %123, %98
  %125 = trunc i64 %100 to i32
  %126 = select i1 %124, i32 %125, i32 %99
  %127 = select i1 %124, float %123, float %98
  br label %128

128:                                              ; preds = %96, %108
  %129 = phi i32 [ %126, %108 ], [ %99, %96 ]
  %130 = phi float [ %127, %108 ], [ %98, %96 ]
  %131 = icmp eq i64 %100, %95
  br i1 %131, label %132, label %96, !llvm.loop !72

132:                                              ; preds = %128, %77
  %133 = phi i32 [ 0, %77 ], [ %129, %128 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = sext i32 %133 to i64
  %137 = getelementptr inbounds i8, ptr %50, i64 %136
  store i8 1, ptr %137, align 1, !tbaa !69
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i8 [ 1, %135 ], [ %66, %132 ]
  %140 = icmp sgt i32 %10, %79
  br i1 %140, label %65, label %56, !llvm.loop !73

141:                                              ; preds = %62, %169
  %142 = phi i64 [ %63, %62 ], [ %170, %169 ]
  %143 = getelementptr inbounds i8, ptr %50, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !69
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %142
  %148 = load i32, ptr %6, align 8, !tbaa !57
  %149 = load i32, ptr %13, align 4, !tbaa !55
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load ptr, ptr %4, align 8, !tbaa !47
  %153 = shl nsw i32 %149, 1
  store i32 %153, ptr %13, align 4, !tbaa !55
  %154 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %155 = sext i32 %153 to i64
  %156 = mul nsw i64 %155, 40
  %157 = tail call ptr %154(i64 noundef %156, ptr noundef nonnull @.str.1) #15
  store ptr %157, ptr %4, align 8, !tbaa !47
  %158 = load i32, ptr %6, align 8, !tbaa !57
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %159, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %157, ptr align 4 %152, i64 %160, i1 false)
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %161(ptr noundef %152) #15
  br label %162

162:                                              ; preds = %146, %151
  %163 = load ptr, ptr %4, align 8, !tbaa !47
  %164 = load i32, ptr %6, align 8, !tbaa !57
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.SK_Point, ptr %163, i64 %165
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %166, ptr noundef nonnull align 4 dereferenceable(40) %147, i64 40, i1 false)
  %167 = load i32, ptr %6, align 8, !tbaa !57
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %6, align 8, !tbaa !57
  br label %169

169:                                              ; preds = %141, %162
  %170 = add nsw i64 %142, 1
  %171 = trunc i64 %170 to i32
  %172 = icmp eq i32 %64, %171
  br i1 %172, label %173, label %141, !llvm.loop !74

173:                                              ; preds = %169, %60
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %174(ptr noundef %50) #15
  %175 = add nsw i32 %10, 1
  %176 = icmp slt i32 %175, %7
  br i1 %176, label %177, label %206

177:                                              ; preds = %173
  %178 = sext i32 %175 to i64
  br label %179

179:                                              ; preds = %177, %196
  %180 = phi i64 [ %178, %177 ], [ %203, %196 ]
  %181 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %180
  %182 = load i32, ptr %6, align 8, !tbaa !57
  %183 = load i32, ptr %13, align 4, !tbaa !55
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load ptr, ptr %4, align 8, !tbaa !47
  %187 = shl nsw i32 %183, 1
  store i32 %187, ptr %13, align 4, !tbaa !55
  %188 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %189 = sext i32 %187 to i64
  %190 = mul nsw i64 %189, 40
  %191 = tail call ptr %188(i64 noundef %190, ptr noundef nonnull @.str.1) #15
  store ptr %191, ptr %4, align 8, !tbaa !47
  %192 = load i32, ptr %6, align 8, !tbaa !57
  %193 = sext i32 %192 to i64
  %194 = mul nsw i64 %193, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %191, ptr align 4 %186, i64 %194, i1 false)
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %195(ptr noundef %186) #15
  br label %196

196:                                              ; preds = %179, %185
  %197 = load ptr, ptr %4, align 8, !tbaa !47
  %198 = load i32, ptr %6, align 8, !tbaa !57
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.SK_Point, ptr %197, i64 %199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %200, ptr noundef nonnull align 4 dereferenceable(40) %181, i64 40, i1 false)
  %201 = load i32, ptr %6, align 8, !tbaa !57
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %6, align 8, !tbaa !57
  %203 = add nsw i64 %180, 1
  %204 = trunc i64 %203 to i32
  %205 = icmp eq i32 %7, %204
  br i1 %205, label %206, label %179, !llvm.loop !75

206:                                              ; preds = %196, %173
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %207(ptr noundef %5) #15
  %208 = load i32, ptr %6, align 8, !tbaa !57
  %209 = load i32, ptr %13, align 4, !tbaa !55
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load ptr, ptr %4, align 8, !tbaa !47
  store i32 %208, ptr %13, align 4, !tbaa !55
  %213 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %214 = sext i32 %208 to i64
  %215 = mul nsw i64 %214, 40
  %216 = tail call ptr %213(i64 noundef %215, ptr noundef nonnull @.str.1) #15
  store ptr %216, ptr %4, align 8, !tbaa !47
  %217 = load i32, ptr %6, align 8, !tbaa !57
  %218 = sext i32 %217 to i64
  %219 = mul nsw i64 %218, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %216, ptr align 4 %212, i64 %219, i1 false)
  %220 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %220(ptr noundef %212) #15
  br label %221

221:                                              ; preds = %206, %211
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_filterLastContinuousStroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = add nsw i32 %3, -1
  %5 = add nsw i32 %3, -2
  %6 = icmp sgt i32 %3, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %7, %16
  %11 = phi i32 [ %5, %7 ], [ %17, %16 ]
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %12, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add nsw i32 %11, -1
  %18 = icmp sgt i32 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !76

19:                                               ; preds = %10, %16, %1
  %20 = phi i32 [ %5, %1 ], [ %11, %10 ], [ 0, %16 ]
  %21 = sub nsw i32 %4, %20
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @sk_filterStroke(ptr noundef %0, i32 noundef %20, i32 noundef %4)
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sk_lastStrokePoint(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = zext nneg i32 %3 to i64
  %9 = getelementptr %struct.SK_Point, ptr %7, i64 %8
  %10 = getelementptr %struct.SK_Point, ptr %9, i64 -1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_endContinuousStroke(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.SK_Point, ptr %3, i64 %6
  %8 = getelementptr %struct.SK_Point, ptr %7, i64 -1, i32 4
  store i32 1, ptr %8, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_updateNextPoint(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = sext i32 %9 to i64
  %11 = getelementptr %struct.SK_Point, ptr %7, i64 %10
  %12 = getelementptr %struct.SK_Point, ptr %11, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(40) %12, i64 40, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sk_stroke_filtermval(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 4, !tbaa !52
  %3 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = sub nsw i32 %2, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = sub nsw i32 %8, %10
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = add nuw nsw i32 %12, %6
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !77
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %13, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sk_initDrawData(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4, !tbaa !52
  store i32 %3, ptr %0, align 4, !tbaa !52
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1
  store i32 -1, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1, i64 1
  store i32 -1, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 2
  store i32 1, ptr %9, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sk_deleteSelectedStrokes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %4, %21
  %7 = phi ptr [ %2, %4 ], [ %8, %21 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.SK_Stroke, ptr %7, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load ptr, ptr %5, align 8, !tbaa !66
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store ptr null, ptr %5, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %12, %15
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %7) #15
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.SK_Stroke, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  tail call void %17(ptr noundef %19) #15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %7) #15
  br label %21

21:                                               ; preds = %6, %16
  %22 = icmp eq ptr %8, null
  br i1 %22, label %23, label %6, !llvm.loop !83

23:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_selectAllSketch(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  switch i32 %1, label %41 [
    i32 -1, label %9
    i32 0, label %6
    i32 1, label %3
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %13, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !56
  %15 = load ptr, ptr %13, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %12, !llvm.loop !84

17:                                               ; preds = %6, %17
  %18 = phi ptr [ %20, %17 ], [ %7, %6 ]
  %19 = getelementptr inbounds %struct.SK_Stroke, ptr %18, i64 0, i32 5
  store i32 1, ptr %19, align 8, !tbaa !56
  %20 = load ptr, ptr %18, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %17, !llvm.loop !85

22:                                               ; preds = %3, %22
  %23 = phi ptr [ %28, %22 ], [ %4, %3 ]
  %24 = phi i32 [ %27, %22 ], [ 1, %3 ]
  %25 = getelementptr inbounds %struct.SK_Stroke, ptr %23, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = and i32 %26, %24
  %28 = load ptr, ptr %23, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !86

30:                                               ; preds = %22
  %31 = xor i32 %27, 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.SK_Stroke, ptr %37, i64 0, i32 5
  store i32 %33, ptr %38, align 8, !tbaa !56
  %39 = load ptr, ptr %37, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !87

41:                                               ; preds = %36, %17, %12, %32, %6, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }

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
!34 = !{!35, !37, i64 0}
!35 = !{!"SK_Sketch", !36, i64 0, !36, i64 16, !37, i64 32, !37, i64 40, !40, i64 48, !43, i64 88}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"SK_Point", !38, i64 0, !38, i64 12, !38, i64 16, !41, i64 28, !42, i64 32, !42, i64 36}
!41 = !{!"float", !38, i64 0}
!42 = !{!"int", !38, i64 0}
!43 = !{!"SK_Overdraw", !37, i64 0, !42, i64 8, !42, i64 12, !42, i64 16}
!44 = !{!45, !37, i64 0}
!45 = !{!"SK_Stroke", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !42, i64 28, !42, i64 32}
!46 = !{!37, !37, i64 0}
!47 = !{!45, !37, i64 16}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!41, !41, i64 0}
!52 = !{!42, !42, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !38, i64 0}
!55 = !{!45, !42, i64 28}
!56 = !{!45, !42, i64 32}
!57 = !{!45, !42, i64 24}
!58 = distinct !{!58, !49, !50}
!59 = !{!40, !42, i64 36}
!60 = !{!40, !42, i64 32}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = !{!35, !37, i64 32}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = !{!38, !38, i64 0}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = distinct !{!75, !49, !50}
!76 = distinct !{!76, !49, !50}
!77 = !{!78, !54, i64 8716}
!78 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !42, i64 8468, !54, i64 8472, !54, i64 8474, !54, i64 8476, !54, i64 8478, !54, i64 8480, !54, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !54, i64 8496, !54, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !54, i64 8528, !54, i64 8530, !54, i64 8532, !54, i64 8534, !36, i64 8536, !36, i64 8552, !36, i64 8568, !36, i64 8584, !36, i64 8600, !36, i64 8616, !36, i64 8632, !38, i64 8648, !54, i64 8712, !54, i64 8714, !54, i64 8716, !54, i64 8718, !54, i64 8720, !54, i64 8722, !54, i64 8724, !54, i64 8726, !38, i64 8728, !54, i64 8896, !54, i64 8898, !54, i64 8900, !54, i64 8902, !54, i64 8904, !54, i64 8906, !54, i64 8908, !54, i64 8910, !42, i64 8912, !42, i64 8916, !54, i64 8920, !54, i64 8922, !54, i64 8924, !54, i64 8926, !54, i64 8928, !54, i64 8930, !54, i64 8932, !54, i64 8934, !54, i64 8936, !54, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !54, i64 8944, !54, i64 8946, !54, i64 8948, !54, i64 8950, !54, i64 8952, !54, i64 8954, !41, i64 8956, !41, i64 8960, !42, i64 8964, !54, i64 8968, !54, i64 8970, !41, i64 8972, !54, i64 8976, !54, i64 8978, !54, i64 8980, !54, i64 8982, !79, i64 8984, !38, i64 9760, !38, i64 9772, !54, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !42, i64 10896, !42, i64 10900, !41, i64 10904, !41, i64 10908, !42, i64 10912, !54, i64 10916, !54, i64 10918, !54, i64 10920, !54, i64 10922, !54, i64 10924, !54, i64 10926, !80, i64 10928}
!79 = !{!"ColorBand", !54, i64 0, !54, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!80 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !54, i64 24, !38, i64 26}
!81 = !{!82, !42, i64 16}
!82 = !{!"SK_DrawData", !38, i64 0, !38, i64 8, !42, i64 16}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
