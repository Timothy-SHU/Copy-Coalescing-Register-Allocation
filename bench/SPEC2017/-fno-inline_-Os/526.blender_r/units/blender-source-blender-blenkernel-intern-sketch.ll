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
%struct.SK_Sketch = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.SK_Point, %struct.SK_Overdraw }
%struct.SK_Point = type { [3 x float], [2 x i16], [3 x float], float, i32, i32 }
%struct.SK_Overdraw = type { ptr, i32, i32, i32 }
%struct.SK_Stroke = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.SK_DrawData = type { [2 x i32], [2 x i32], i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"SK_Sketch\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SK_Point buffer\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SK_Stroke\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"marked array\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeSketch(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @sk_freeStroke(ptr noundef nonnull %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !46

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #17
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %10(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_freeStroke(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  tail call void %2(ptr noundef %4) #17
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %5(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @createSketch() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %2 = tail call ptr %1(i64 noundef 112, ptr noundef nonnull @.str) #17
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %2, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef %2) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !50 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @sk_initPoint(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %2, null
  %5 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2
  br i1 %4, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc float @normalize_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %2) #16
  br label %10

8:                                                ; preds = %3
  store <2 x float> zeroinitializer, ptr %5, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %9, align 4, !tbaa !51
  br label %10

10:                                               ; preds = %8, %6
  %11 = getelementptr inbounds %struct.SK_Point, ptr %0, i64 0, i32 1
  %12 = load <2 x i32>, ptr %1, align 4, !tbaa !52
  %13 = trunc <2 x i32> %12 to <2 x i16>
  store <2 x i16> %13, ptr %11, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !55 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @sk_copyPoint(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_allocStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 40
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @.str.1) #17
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sk_createStroke() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %2 = tail call ptr %1(i64 noundef 40, ptr noundef nonnull @.str.2) #17
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %2, i64 0, i32 4
  store i32 20, ptr %5, align 4, !tbaa !56
  tail call void @sk_allocStrokeBuffer(ptr noundef %2) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_shrinkStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  store i32 %3, ptr %4, align 4, !tbaa !56
  tail call void @sk_allocStrokeBuffer(ptr noundef nonnull %0) #16
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = load i32, ptr %2, align 8, !tbaa !58
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %9, i64 %13, i1 false)
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %14(ptr noundef %9) #17
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_growStrokeBuffer(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = shl nsw i32 %3, 1
  store i32 %10, ptr %4, align 4, !tbaa !56
  tail call void @sk_allocStrokeBuffer(ptr noundef nonnull %0) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = load i32, ptr %2, align 8, !tbaa !58
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %9, i64 %14, i1 false)
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %15(ptr noundef %9) #17
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_growStrokeBufferN(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = add nsw i32 %4, %1
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i32 [ %14, %12 ], [ %7, %9 ]
  %14 = shl nsw i32 %13, 1
  %15 = icmp sgt i32 %5, %14
  br i1 %15, label %12, label %16, !llvm.loop !59

16:                                               ; preds = %12
  store i32 %14, ptr %6, align 4, !tbaa !56
  tail call void @sk_allocStrokeBuffer(ptr noundef nonnull %0) #16
  %17 = load ptr, ptr %10, align 8, !tbaa !49
  %18 = load i32, ptr %3, align 8, !tbaa !58
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %11, i64 %20, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %21(ptr noundef %11) #17
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_replaceStrokePoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_insertStrokePoint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = sub nsw i32 %5, %2
  tail call void @sk_growStrokeBuffer(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.SK_Point, ptr %8, i64 %9
  %11 = getelementptr inbounds %struct.SK_Point, ptr %10, i64 1
  %12 = sext i32 %6 to i64
  %13 = mul nsw i64 %12, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %11, ptr align 4 %10, i64 %13, i1 false)
  %14 = load ptr, ptr %7, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %15, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  %16 = load i32, ptr %4, align 8, !tbaa !58
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %4, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_appendStrokePoint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @sk_growStrokeBuffer(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.SK_Point, ptr %4, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false)
  %9 = load i32, ptr %5, align 8, !tbaa !58
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %5, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_insertStrokePoints(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sub nsw i32 %4, %3
  %7 = add nsw i32 %6, 1
  %8 = sub nsw i32 %2, %7
  tail call void @sk_growStrokeBufferN(ptr noundef %0, i32 noundef %8) #16
  %9 = icmp eq i32 %7, %2
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = sext i32 %3 to i64
  %12 = sext i32 %2 to i64
  br label %29

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = sub i32 %15, %4
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = sext i32 %3 to i64
  %21 = getelementptr inbounds %struct.SK_Point, ptr %19, i64 %20
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.SK_Point, ptr %21, i64 %22
  %24 = sext i32 %4 to i64
  %25 = getelementptr inbounds %struct.SK_Point, ptr %19, i64 %24
  %26 = getelementptr inbounds %struct.SK_Point, ptr %25, i64 1
  %27 = sext i32 %17 to i64
  %28 = mul nsw i64 %27, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %23, ptr nonnull align 4 %26, i64 %28, i1 false)
  br label %29

29:                                               ; preds = %10, %13
  %30 = phi i64 [ %12, %10 ], [ %22, %13 ]
  %31 = phi i64 [ %11, %10 ], [ %20, %13 ]
  %32 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.SK_Point, ptr %33, i64 %31
  %35 = mul nsw i64 %30, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %1, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !58
  %38 = add nsw i32 %37, %8
  store i32 %38, ptr %36, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_trimStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = sub nsw i32 %2, %1
  %5 = add nsw i32 %4, 1
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10
  %12 = sext i32 %5 to i64
  %13 = mul nsw i64 %12, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %11, i64 %13, i1 false)
  br label %14

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  store i32 %5, ptr %15, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_straightenStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SK_Point, align 4
  %7 = alloca %struct.SK_Point, align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %9 = sub i32 %2, %1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %3) #16
  %10 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = sext i32 %1 to i64
  %13 = sext i32 %2 to i64
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %3) #16
  %14 = getelementptr inbounds %struct.SK_Point, ptr %6, i64 0, i32 2
  %15 = getelementptr inbounds %struct.SK_Point, ptr %11, i64 %12, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #16
  %16 = getelementptr inbounds %struct.SK_Point, ptr %11, i64 %12, i32 4
  %17 = getelementptr inbounds %struct.SK_Point, ptr %6, i64 0, i32 4
  %18 = load <2 x i32>, ptr %16, align 4, !tbaa !52
  store <2 x i32> %18, ptr %17, align 4, !tbaa !52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %4) #16
  %19 = getelementptr inbounds %struct.SK_Point, ptr %7, i64 0, i32 2
  %20 = getelementptr inbounds %struct.SK_Point, ptr %11, i64 %13, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %21 = getelementptr inbounds %struct.SK_Point, ptr %11, i64 %13, i32 4
  %22 = getelementptr inbounds %struct.SK_Point, ptr %7, i64 0, i32 4
  %23 = load <2 x i32>, ptr %21, align 4, !tbaa !52
  store <2 x i32> %23, ptr %22, align 4, !tbaa !52
  %24 = add nsw i32 %1, 1
  call void @sk_insertStrokePoint(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %24) #16
  %25 = add nsw i32 %2, 1
  call void @sk_insertStrokePoint(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %25) #16
  %26 = icmp sgt i32 %9, 1
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = sitofp i32 %9 to float
  %29 = sext i32 %24 to i64
  %30 = zext nneg i32 %9 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 1, %27 ], [ %39, %31 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, %28
  %36 = load ptr, ptr %10, align 8, !tbaa !49
  %37 = getelementptr %struct.SK_Point, ptr %36, i64 %32
  %38 = getelementptr %struct.SK_Point, ptr %37, i64 %29
  call fastcc void @mul_v3_v3fl(ptr noundef %38, ptr noundef nonnull %8, float noundef %35) #16
  tail call fastcc void @add_v3_v3(ptr noundef %38, ptr noundef %3) #16
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %30
  br i1 %40, label %41, label %31, !llvm.loop !60

41:                                               ; preds = %31, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !61 {
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = load float, ptr %2, align 4, !tbaa !51
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !51
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !62 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  store float %3, ptr %0, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !63 {
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !64 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = load float, ptr %0, align 4, !tbaa !51
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_polygonizeStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi i32 [ %1, %5 ], [ %15, %14 ]
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %7, i64 %10, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = add nsw i32 %9, -1
  %16 = icmp sgt i32 %9, 1
  br i1 %16, label %8, label %17, !llvm.loop !66

17:                                               ; preds = %14, %8, %3
  %18 = phi i32 [ %1, %3 ], [ %9, %8 ], [ 0, %14 ]
  %19 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = add nsw i32 %20, -1
  %22 = icmp sgt i32 %21, %2
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = sext i32 %2 to i64
  br label %27

27:                                               ; preds = %23, %32
  %28 = phi i64 [ %26, %23 ], [ %33, %32 ]
  %29 = getelementptr inbounds %struct.SK_Point, ptr %25, i64 %28, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !65
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = add nsw i64 %28, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %38, label %27, !llvm.loop !67

36:                                               ; preds = %27
  %37 = trunc i64 %28 to i32
  br label %38

38:                                               ; preds = %32, %36, %17
  %39 = phi i32 [ %2, %17 ], [ %37, %36 ], [ %21, %32 ]
  %40 = add nsw i32 %18, 1
  %41 = icmp slt i32 %40, %39
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %44 = sext i32 %40 to i64
  br label %45

45:                                               ; preds = %42, %61
  %46 = phi i64 [ %44, %42 ], [ %63, %61 ]
  %47 = phi i32 [ %40, %42 ], [ %62, %61 ]
  %48 = load ptr, ptr %43, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.SK_Point, ptr %48, i64 %46
  %50 = getelementptr inbounds %struct.SK_Point, ptr %48, i64 %46, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = trunc i64 %46 to i32
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = sext i32 %47 to i64
  %58 = getelementptr inbounds %struct.SK_Point, ptr %48, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %58, ptr noundef nonnull align 4 dereferenceable(40) %49, i64 40, i1 false)
  br label %59

59:                                               ; preds = %56, %53
  %60 = add nsw i32 %47, 1
  br label %61

61:                                               ; preds = %45, %59
  %62 = phi i32 [ %60, %59 ], [ %47, %45 ]
  %63 = add nsw i64 %46, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %39, %64
  br i1 %65, label %66, label %45, !llvm.loop !68

66:                                               ; preds = %61, %38
  %67 = phi i32 [ %40, %38 ], [ %62, %61 ]
  %68 = icmp slt i32 %67, %39
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, ptr %19, align 8, !tbaa !58
  %71 = sub nsw i32 %70, %39
  %72 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = sext i32 %67 to i64
  %75 = getelementptr inbounds %struct.SK_Point, ptr %73, i64 %74
  %76 = sext i32 %39 to i64
  %77 = getelementptr inbounds %struct.SK_Point, ptr %73, i64 %76
  %78 = sext i32 %71 to i64
  %79 = mul nsw i64 %78, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %75, ptr align 4 %77, i64 %79, i1 false)
  %80 = add nsw i32 %71, %67
  store i32 %80, ptr %19, align 8, !tbaa !58
  br label %81

81:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_flattenStroke(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %7 = sub i32 %2, %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %11) #16
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %12
  %14 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %13, ptr noundef %14) #16
  call void @project_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %15 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #16
  %16 = icmp sgt i32 %7, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %7, 1
  %19 = sitofp i32 %18 to float
  %20 = zext nneg i32 %7 to i64
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i64 [ 1, %17 ], [ %31, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = sitofp i32 %23 to float
  %25 = fmul float %15, %24
  %26 = fdiv float %25, %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %27 = load ptr, ptr %8, align 8, !tbaa !49
  %28 = getelementptr %struct.SK_Point, ptr %27, i64 %22
  %29 = getelementptr %struct.SK_Point, ptr %28, i64 %10
  %30 = getelementptr inbounds %struct.SK_Point, ptr %27, i64 %10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %29, ptr noundef %30) #16
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %26) #16
  call fastcc void @sub_v3_v3(ptr noundef %29, ptr noundef nonnull %5) #16
  call fastcc void @add_v3_v3(ptr noundef %29, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  %31 = add nuw nsw i64 %22, 1
  %32 = icmp eq i64 %31, %20
  br i1 %32, label %33, label %21, !llvm.loop !69

33:                                               ; preds = %21, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !70 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !71 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !51
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !72 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = load float, ptr %0, align 4, !tbaa !51
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_removeStroke(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !73
  br label %7

7:                                                ; preds = %6, %2
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef %1) #17
  tail call void @sk_freeStroke(ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_reverseStroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void @sk_allocStrokeBuffer(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %5 = getelementptr %struct.SK_Point, ptr %3, i64 -1
  %6 = load i32, ptr %4, align 8, !tbaa !58
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %1 ]
  %10 = phi i32 [ %18, %8 ], [ %6, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.SK_Point, ptr %11, i64 %9
  %13 = sext i32 %10 to i64
  %14 = getelementptr %struct.SK_Point, ptr %5, i64 %13
  %15 = sub nsw i64 0, %9
  %16 = getelementptr inbounds %struct.SK_Point, ptr %14, i64 %15
  tail call void @sk_copyPoint(ptr noundef %12, ptr noundef nonnull %16) #16
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %4, align 8, !tbaa !58
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !74

21:                                               ; preds = %8, %1
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %22(ptr noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_filterStroke(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = icmp eq i32 %1, -1
  %9 = add nsw i32 %7, -1
  %10 = select i1 %8, i32 %9, i32 %2
  %11 = select i1 %8, i32 0, i32 %1
  tail call void @sk_allocStrokeBuffer(ptr noundef %0) #16
  store i32 0, ptr %6, align 8, !tbaa !58
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %16
  tail call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %17) #16
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, %14
  br i1 %19, label %20, label %15, !llvm.loop !75

20:                                               ; preds = %15, %3
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %22 = sext i32 %7 to i64
  %23 = tail call ptr %21(i64 noundef %22, ptr noundef nonnull @.str.3) #17
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 1, ptr %25, align 1, !tbaa !76
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  store i8 1, ptr %27, align 1, !tbaa !76
  %28 = icmp sge i32 %11, %10
  br i1 %28, label %32, label %35

29:                                               ; preds = %106
  %30 = icmp eq i8 %107, 0
  %31 = or i1 %30, %28
  br i1 %31, label %32, label %109

32:                                               ; preds = %29, %20
  %33 = icmp sgt i32 %11, %10
  %34 = add i32 %10, 1
  br i1 %33, label %123, label %112

35:                                               ; preds = %20, %109
  %36 = phi i8 [ %110, %109 ], [ 0, %20 ]
  %37 = phi i32 [ %111, %109 ], [ %11, %20 ]
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %37, %35 ], [ %46, %39 ]
  %41 = phi i64 [ %38, %35 ], [ %42, %39 ]
  %42 = add nsw i64 %41, 1
  %43 = getelementptr inbounds i8, ptr %23, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !76
  %45 = icmp eq i8 %44, 0
  %46 = add nsw i32 %40, 1
  br i1 %45, label %39, label %47, !llvm.loop !77

47:                                               ; preds = %39
  %48 = trunc i64 %41 to i32
  %49 = trunc i64 %42 to i32
  %50 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %38, i32 1
  %51 = load i16, ptr %50, align 4, !tbaa !53
  %52 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %38, i32 1, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !53
  %54 = icmp slt i32 %37, %48
  br i1 %54, label %55, label %106

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %42, i32 1, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !53
  %58 = sub i16 %53, %57
  %59 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %42, i32 1
  %60 = load i16, ptr %59, align 4, !tbaa !53
  %61 = sub i16 %60, %51
  %62 = sext i16 %58 to i32
  %63 = sext i16 %61 to i32
  %64 = sext i32 %40 to i64
  br label %65

65:                                               ; preds = %55, %97
  %66 = phi i64 [ %38, %55 ], [ %69, %97 ]
  %67 = phi float [ 1.600000e+01, %55 ], [ %99, %97 ]
  %68 = phi i32 [ 0, %55 ], [ %98, %97 ]
  %69 = add nsw i64 %66, 1
  %70 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %69, i32 1
  %71 = load i16, ptr %70, align 4, !tbaa !53
  %72 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %69, i32 1, i64 1
  %73 = load i16, ptr %72, align 2, !tbaa !53
  %74 = icmp eq i16 %71, %51
  %75 = icmp eq i16 %73, %53
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %97, label %77

77:                                               ; preds = %65
  %78 = sub i16 %73, %53
  %79 = sext i16 %78 to i32
  %80 = sub i16 %71, %51
  %81 = sext i16 %80 to i32
  %82 = mul nsw i32 %81, %62
  %83 = mul nsw i32 %79, %63
  %84 = add nsw i32 %83, %82
  %85 = sitofp i32 %84 to float
  %86 = mul nsw i32 %81, %81
  %87 = mul nsw i32 %79, %79
  %88 = add nuw nsw i32 %87, %86
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %85, %89
  %91 = fmul float %90, %90
  %92 = fmul float %91, %89
  %93 = fcmp ogt float %92, %67
  %94 = trunc i64 %69 to i32
  %95 = select i1 %93, i32 %94, i32 %68
  %96 = select i1 %93, float %92, float %67
  br label %97

97:                                               ; preds = %65, %77
  %98 = phi i32 [ %95, %77 ], [ %68, %65 ]
  %99 = phi float [ %96, %77 ], [ %67, %65 ]
  %100 = icmp eq i64 %69, %64
  br i1 %100, label %101, label %65, !llvm.loop !78

101:                                              ; preds = %97
  %102 = icmp eq i32 %98, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %101
  %104 = sext i32 %98 to i64
  %105 = getelementptr inbounds i8, ptr %23, i64 %104
  store i8 1, ptr %105, align 1, !tbaa !76
  br label %106

106:                                              ; preds = %47, %103, %101
  %107 = phi i8 [ 1, %103 ], [ %36, %101 ], [ %36, %47 ]
  %108 = icmp sgt i32 %10, %49
  br i1 %108, label %109, label %29

109:                                              ; preds = %106, %29
  %110 = phi i8 [ %107, %106 ], [ 0, %29 ]
  %111 = phi i32 [ %49, %106 ], [ %11, %29 ]
  br label %35, !llvm.loop !79

112:                                              ; preds = %32, %119
  %113 = phi i64 [ %120, %119 ], [ %24, %32 ]
  %114 = getelementptr inbounds i8, ptr %23, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !76
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %113
  tail call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %118) #16
  br label %119

119:                                              ; preds = %112, %117
  %120 = add nsw i64 %113, 1
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %34, %121
  br i1 %122, label %123, label %112, !llvm.loop !80

123:                                              ; preds = %119, %32
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %124(ptr noundef %23) #17
  %125 = icmp slt i32 %34, %7
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = sext i32 %34 to i64
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi i64 [ %127, %126 ], [ %131, %128 ]
  %130 = getelementptr inbounds %struct.SK_Point, ptr %5, i64 %129
  tail call void @sk_appendStrokePoint(ptr noundef %0, ptr noundef %130) #16
  %131 = add nsw i64 %129, 1
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %7, %132
  br i1 %133, label %134, label %128, !llvm.loop !81

134:                                              ; preds = %128, %123
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %135(ptr noundef %5) #17
  tail call void @sk_shrinkStrokeBuffer(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_filterLastContinuousStroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = add nsw i32 %3, -1
  %5 = add nsw i32 %3, -2
  %6 = icmp sgt i32 %3, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %7, %16
  %11 = phi i32 [ %5, %7 ], [ %17, %16 ]
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.SK_Point, ptr %9, i64 %12, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add nsw i32 %11, -1
  %18 = icmp sgt i32 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !82

19:                                               ; preds = %10, %16, %1
  %20 = phi i32 [ %5, %1 ], [ 0, %16 ], [ %11, %10 ]
  %21 = sub nsw i32 %4, %20
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @sk_filterStroke(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %4) #16
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @sk_lastStrokePoint(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !58
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = zext nneg i32 %3 to i64
  %9 = getelementptr %struct.SK_Point, ptr %7, i64 %8
  %10 = getelementptr %struct.SK_Point, ptr %9, i64 -1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_endContinuousStroke(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.SK_Stroke, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !58
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.SK_Point, ptr %3, i64 %6
  %8 = getelementptr %struct.SK_Point, ptr %7, i64 -1, i32 4
  store i32 1, ptr %8, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_updateNextPoint(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SK_Sketch, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.SK_Stroke, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = sext i32 %9 to i64
  %11 = getelementptr %struct.SK_Point, ptr %7, i64 %10
  %12 = getelementptr %struct.SK_Point, ptr %11, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(40) %12, i64 40, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sk_stroke_filtermval(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.SK_DrawData, ptr %0, i64 0, i32 1
  %3 = load <2 x i32>, ptr %0, align 4, !tbaa !52
  %4 = load <2 x i32>, ptr %2, align 4, !tbaa !52
  %5 = sub nsw <2 x i32> %3, %4
  %6 = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %5, i1 true)
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %8 = add nuw nsw <2 x i32> %7, %6
  %9 = extractelement <2 x i32> %8, i64 0
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !83
  %11 = sext i16 %10 to i32
  %12 = icmp sgt i32 %9, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @sk_initDrawData(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
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
  store i32 1, ptr %9, align 4, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sk_deleteSelectedStrokes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %6, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.SK_Stroke, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @sk_removeStroke(ptr noundef nonnull %0, ptr noundef nonnull %5) #16
  br label %11

11:                                               ; preds = %4, %10
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %4, !llvm.loop !89

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sk_selectAllSketch(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  switch i32 %1, label %37 [
    i32 -1, label %9
    i32 0, label %6
    i32 1, label %3
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %22

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.SK_Stroke, ptr %13, i64 0, i32 5
  store i32 0, ptr %14, align 8, !tbaa !57
  %15 = load ptr, ptr %13, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %12, !llvm.loop !90

17:                                               ; preds = %6, %17
  %18 = phi ptr [ %20, %17 ], [ %7, %6 ]
  %19 = getelementptr inbounds %struct.SK_Stroke, ptr %18, i64 0, i32 5
  store i32 1, ptr %19, align 8, !tbaa !57
  %20 = load ptr, ptr %18, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %17, !llvm.loop !91

22:                                               ; preds = %3, %22
  %23 = phi ptr [ %28, %22 ], [ %4, %3 ]
  %24 = phi i32 [ %27, %22 ], [ 1, %3 ]
  %25 = getelementptr inbounds %struct.SK_Stroke, ptr %23, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = and i32 %26, %24
  %28 = load ptr, ptr %23, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !92

30:                                               ; preds = %22
  %31 = xor i32 %27, 1
  br i1 %5, label %37, label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %35, %32 ], [ %4, %30 ]
  %34 = getelementptr inbounds %struct.SK_Stroke, ptr %33, i64 0, i32 5
  store i32 %31, ptr %34, align 8, !tbaa !57
  %35 = load ptr, ptr %33, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !93

37:                                               ; preds = %32, %17, %12, %3, %30, %6, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !94 {
  %3 = load float, ptr %0, align 4, !tbaa !51
  %4 = load float, ptr %1, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !95 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !51
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

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
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!37, !37, i64 0}
!49 = !{!45, !37, i64 16}
!50 = !{!"sketch.c:BLI_listbase_clear"}
!51 = !{!41, !41, i64 0}
!52 = !{!42, !42, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !38, i64 0}
!55 = !{!"sketch.c:normalize_v3_v3"}
!56 = !{!45, !42, i64 28}
!57 = !{!45, !42, i64 32}
!58 = !{!45, !42, i64 24}
!59 = distinct !{!59, !47}
!60 = distinct !{!60, !47}
!61 = !{!"sketch.c:sub_v3_v3v3"}
!62 = !{!"sketch.c:copy_v3_v3"}
!63 = !{!"sketch.c:mul_v3_v3fl"}
!64 = !{!"sketch.c:add_v3_v3"}
!65 = !{!40, !42, i64 32}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = !{!"sketch.c:normalize_v3"}
!71 = !{!"sketch.c:mul_v3_fl"}
!72 = !{!"sketch.c:sub_v3_v3"}
!73 = !{!35, !37, i64 32}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
!76 = !{!38, !38, i64 0}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
!83 = !{!84, !54, i64 8716}
!84 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !42, i64 8468, !54, i64 8472, !54, i64 8474, !54, i64 8476, !54, i64 8478, !54, i64 8480, !54, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !54, i64 8496, !54, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !54, i64 8528, !54, i64 8530, !54, i64 8532, !54, i64 8534, !36, i64 8536, !36, i64 8552, !36, i64 8568, !36, i64 8584, !36, i64 8600, !36, i64 8616, !36, i64 8632, !38, i64 8648, !54, i64 8712, !54, i64 8714, !54, i64 8716, !54, i64 8718, !54, i64 8720, !54, i64 8722, !54, i64 8724, !54, i64 8726, !38, i64 8728, !54, i64 8896, !54, i64 8898, !54, i64 8900, !54, i64 8902, !54, i64 8904, !54, i64 8906, !54, i64 8908, !54, i64 8910, !42, i64 8912, !42, i64 8916, !54, i64 8920, !54, i64 8922, !54, i64 8924, !54, i64 8926, !54, i64 8928, !54, i64 8930, !54, i64 8932, !54, i64 8934, !54, i64 8936, !54, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !54, i64 8944, !54, i64 8946, !54, i64 8948, !54, i64 8950, !54, i64 8952, !54, i64 8954, !41, i64 8956, !41, i64 8960, !42, i64 8964, !54, i64 8968, !54, i64 8970, !41, i64 8972, !54, i64 8976, !54, i64 8978, !54, i64 8980, !54, i64 8982, !85, i64 8984, !38, i64 9760, !38, i64 9772, !54, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !42, i64 10896, !42, i64 10900, !41, i64 10904, !41, i64 10908, !42, i64 10912, !54, i64 10916, !54, i64 10918, !54, i64 10920, !54, i64 10922, !54, i64 10924, !54, i64 10926, !86, i64 10928}
!85 = !{!"ColorBand", !54, i64 0, !54, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!86 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !54, i64 24, !38, i64 26}
!87 = !{!88, !42, i64 16}
!88 = !{!"SK_DrawData", !38, i64 0, !38, i64 8, !42, i64 16}
!89 = distinct !{!89, !47}
!90 = distinct !{!90, !47}
!91 = distinct !{!91, !47}
!92 = distinct !{!92, !47}
!93 = distinct !{!93, !47}
!94 = !{!"sketch.c:dot_v3v3"}
!95 = !{!"sketch.c:zero_v3"}
