; ModuleID = 'blender/source/blender/editors/animation/keyframes_general.c'
source_filename = "blender/source/blender/editors/animation/keyframes_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.tSmooth_Bezt = type { ptr, ptr, ptr, float, float, float }
%struct.TempFrameValCache = type { float, float }
%struct.tAnimCopybufItem = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"beztriple\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"tSmooth_Bezt Array\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"IcuFrameValCache\00", align 1
@animcopybuf = internal global %struct.ListBase zeroinitializer, align 8
@animcopy_firstframe = internal unnamed_addr global float 1.000000e+09, align 4
@animcopy_lastframe = internal unnamed_addr global float -1.000000e+09, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"AnimCopybufItem\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"copybuf beztriple\00", align 1
@animcopy_cfra = internal unnamed_addr global float 0.000000e+00, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Frame Start\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Paste keys starting at current frame\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Frame End\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Paste keys ending at current frame\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"RELATIVE\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Frame Relative\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Paste keys relative to the current frame when copying\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"No Offset\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Paste keys from original time\00", align 1
@keyframe_paste_offset_items = dso_local local_unnamed_addr global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.7 }, %struct.EnumPropertyItem { i32 1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.10 }, %struct.EnumPropertyItem { i32 2, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.13 }, %struct.EnumPropertyItem { i32 3, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.16 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [4 x i8] c"MIX\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Overlay existing with new keys\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"OVER_ALL\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Overwrite All\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Replace all keys\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"OVER_RANGE\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Overwrite Range\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Overwrite keys in pasted range\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"OVER_RANGE_ALL\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Overwrite Entire Range\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"Overwrite keys in pasted range, using the range of all copied keys\00", align 1
@keyframe_paste_merge_items = dso_local local_unnamed_addr global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.19 }, %struct.EnumPropertyItem { i32 1, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 2, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.25 }, %struct.EnumPropertyItem { i32 3, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [37 x i8] c"No animation data in buffer to paste\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"No selected F-Curves to paste into\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.32 = private unnamed_addr constant [58 x i8] c"paste_animedit_keys: failed to resolve path id:%s, '%s'!\0A\00", align 1
@str = private unnamed_addr constant [48 x i8] c"paste_animedit_keys: error ID has been removed!\00", align 1
@switch.table.paste_animedit_keys = private unnamed_addr constant [3 x ptr] [ptr @animcopy_firstframe, ptr @animcopy_lastframe, ptr @animcopy_cfra], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_fcurve_key(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = icmp slt i32 %1, 0
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add i32 %12, %1
  %14 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = sext i32 %13 to i64
  %17 = getelementptr %struct.BezTriple, ptr %15, i64 %16
  %18 = getelementptr %struct.BezTriple, ptr %17, i64 1
  %19 = xor i32 %13, -1
  %20 = add i32 %8, %19
  %21 = zext i32 %20 to i64
  %22 = mul nuw nsw i64 %21, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %22, i1 false)
  %23 = load i32, ptr %7, align 8, !tbaa !34
  %24 = add i32 %23, -1
  store i32 %24, ptr %7, align 8, !tbaa !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %10
  %27 = load ptr, ptr %14, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %30(ptr noundef nonnull %27) #14
  br label %31

31:                                               ; preds = %29, %26
  store ptr null, ptr %14, align 8, !tbaa !43
  br label %32

32:                                               ; preds = %31, %10
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #14
  br label %35

35:                                               ; preds = %5, %3, %34, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @delete_fcurve_keys(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %29
  %10 = phi i32 [ %30, %29 ], [ %7, %5 ]
  %11 = phi i8 [ %32, %29 ], [ 0, %5 ]
  %12 = phi i32 [ %33, %29 ], [ 0, %5 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !43
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %14, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !45
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %9
  %20 = getelementptr %struct.BezTriple, ptr %13, i64 %14
  %21 = getelementptr %struct.BezTriple, ptr %20, i64 1
  %22 = xor i32 %12, -1
  %23 = add i32 %10, %22
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %20, ptr align 4 %21, i64 %25, i1 false)
  %26 = load i32, ptr %6, align 8, !tbaa !34
  %27 = add i32 %26, -1
  store i32 %27, ptr %6, align 8, !tbaa !34
  %28 = add nsw i32 %12, -1
  br label %29

29:                                               ; preds = %9, %19
  %30 = phi i32 [ %27, %19 ], [ %10, %9 ]
  %31 = phi i32 [ %28, %19 ], [ %12, %9 ]
  %32 = phi i8 [ 1, %19 ], [ %11, %9 ]
  %33 = add nsw i32 %31, 1
  %34 = icmp ult i32 %33, %30
  br i1 %34, label %9, label %35, !llvm.loop !47

35:                                               ; preds = %29
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5, %35
  %38 = phi i8 [ %32, %35 ], [ 0, %5 ]
  tail call void @clear_fcurve_keys(ptr noundef nonnull %0) #15
  br label %39

39:                                               ; preds = %35, %37, %1
  %40 = phi i8 [ 0, %1 ], [ %38, %37 ], [ %32, %35 ]
  ret i8 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_fcurve_keys(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 0, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplicate_fcurve_keys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %71, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %7, %65
  %12 = phi i32 [ %66, %65 ], [ %9, %7 ]
  %13 = phi ptr [ %67, %65 ], [ %5, %7 ]
  %14 = phi i32 [ %69, %65 ], [ 0, %7 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %15, i32 8
  %17 = load i8, ptr %16, align 4, !tbaa !45
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = mul nuw nsw i64 %23, 72
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str) #14
  %26 = load ptr, ptr %4, align 8, !tbaa !43
  %27 = add nuw nsw i32 %14, 1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %25, ptr noundef nonnull align 4 dereferenceable(1) %26, i64 %29, i1 false)
  %30 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15
  %31 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %32 = load ptr, ptr %4, align 8, !tbaa !43
  %33 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %31, ptr noundef nonnull align 4 dereferenceable(72) %33, i64 72, i1 false)
  %34 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 2
  %35 = load ptr, ptr %4, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %15
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 1
  %38 = load i32, ptr %8, align 8, !tbaa !34
  %39 = sub i32 %38, %27
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %34, ptr nonnull align 4 %37, i64 %41, i1 false)
  %42 = load i32, ptr %8, align 8, !tbaa !34
  %43 = add i32 %42, 1
  store i32 %43, ptr %8, align 8, !tbaa !34
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %45 = load ptr, ptr %4, align 8, !tbaa !43
  tail call void %44(ptr noundef %45) #14
  store ptr %25, ptr %4, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !49
  %48 = and i8 %47, -2
  store i8 %48, ptr %46, align 1, !tbaa !49
  %49 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 8
  %50 = load i8, ptr %49, align 4, !tbaa !45
  %51 = and i8 %50, -2
  store i8 %51, ptr %49, align 4, !tbaa !45
  %52 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !50
  %54 = and i8 %53, -2
  store i8 %54, ptr %52, align 1, !tbaa !50
  %55 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !49
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1, !tbaa !49
  %58 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 8
  %59 = load i8, ptr %58, align 4, !tbaa !45
  %60 = or i8 %59, 1
  store i8 %60, ptr %58, align 4, !tbaa !45
  %61 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !50
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 1, !tbaa !50
  %64 = load i32, ptr %8, align 8, !tbaa !34
  br label %65

65:                                               ; preds = %11, %20
  %66 = phi i32 [ %64, %20 ], [ %12, %11 ]
  %67 = phi ptr [ %25, %20 ], [ %13, %11 ]
  %68 = phi i32 [ %27, %20 ], [ %14, %11 ]
  %69 = add nsw i32 %68, 1
  %70 = icmp ult i32 %69, %66
  br i1 %70, label %11, label %71, !llvm.loop !51

71:                                               ; preds = %65, %7, %1, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clean_fcurve(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %108, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %108, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %108, label %12

12:                                               ; preds = %8
  store ptr null, ptr %5, align 8, !tbaa !43
  store i32 0, ptr %9, align 8, !tbaa !34
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %0, float noundef %14, float noundef %16, i16 noundef signext 0) #14
  %18 = icmp sgt i32 %10, 1
  br i1 %18, label %19, label %106

19:                                               ; preds = %12
  %20 = add nsw i32 %10, -1
  %21 = zext nneg i32 %20 to i64
  %22 = zext nneg i32 %10 to i64
  br label %23

23:                                               ; preds = %19, %103
  %24 = phi i64 [ 1, %19 ], [ %104, %103 ]
  %25 = icmp ult i64 %24, %21
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr %struct.BezTriple, ptr %6, i64 %24
  %28 = getelementptr %struct.BezTriple, ptr %27, i64 1
  %29 = getelementptr %struct.BezTriple, ptr %27, i64 1, i32 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !52
  %31 = getelementptr %struct.BezTriple, ptr %27, i64 1, i32 0, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !52
  br label %33

33:                                               ; preds = %23, %26
  %34 = phi ptr [ %28, %26 ], [ null, %23 ]
  %35 = phi float [ %32, %26 ], [ 0.000000e+00, %23 ]
  %36 = phi float [ %30, %26 ], [ 0.000000e+00, %23 ]
  %37 = load ptr, ptr %5, align 8, !tbaa !43
  %38 = load i32, ptr %9, align 8, !tbaa !34
  %39 = add i32 %38, -1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 %40, i32 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !52
  %43 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 %40, i32 0, i64 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !52
  %45 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !52
  %47 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !52
  %49 = fcmp ogt float %46, %42
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = fsub float %46, %42
  %52 = fcmp ugt float %51, %1
  br i1 %52, label %86, label %56

53:                                               ; preds = %33
  %54 = fsub float %42, %46
  %55 = fcmp ugt float %54, %1
  br i1 %55, label %86, label %56

56:                                               ; preds = %53, %50
  %57 = icmp eq ptr %34, null
  br i1 %57, label %80, label %58

58:                                               ; preds = %56
  %59 = fcmp ogt float %46, %36
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = fsub float %46, %36
  %62 = fcmp ugt float %61, %1
  br i1 %62, label %80, label %66

63:                                               ; preds = %58
  %64 = fsub float %36, %46
  %65 = fcmp ugt float %64, %1
  br i1 %65, label %80, label %66

66:                                               ; preds = %63, %60
  %67 = fcmp ogt float %35, %44
  %68 = fsub float %35, %44
  %69 = fsub float %44, %35
  %70 = select i1 %67, float %68, float %69
  %71 = fcmp ugt float %70, %1
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = fcmp ogt float %48, %35
  br i1 %73, label %74, label %103

74:                                               ; preds = %72
  %75 = fcmp ogt float %48, %44
  %76 = fsub float %48, %44
  %77 = fsub float %44, %48
  %78 = select i1 %75, float %76, float %77
  %79 = fcmp ugt float %78, %1
  br i1 %79, label %101, label %103

80:                                               ; preds = %63, %60, %66, %56
  %81 = fcmp ogt float %48, %44
  %82 = fsub float %48, %44
  %83 = fsub float %44, %48
  %84 = select i1 %81, float %82, float %83
  %85 = fcmp ugt float %84, %1
  br i1 %85, label %101, label %103

86:                                               ; preds = %53, %50
  %87 = icmp eq ptr %34, null
  %88 = fcmp ogt float %48, %44
  %89 = fsub float %48, %44
  %90 = fsub float %44, %48
  %91 = select i1 %88, float %89, float %90
  %92 = fcmp ugt float %91, %1
  br i1 %87, label %100, label %93

93:                                               ; preds = %86
  br i1 %92, label %101, label %94

94:                                               ; preds = %93
  %95 = fcmp ogt float %48, %35
  %96 = fsub float %48, %35
  %97 = fsub float %35, %48
  %98 = select i1 %95, float %96, float %97
  %99 = fcmp ugt float %98, %1
  br i1 %99, label %101, label %103

100:                                              ; preds = %86
  br i1 %92, label %101, label %103

101:                                              ; preds = %100, %94, %93, %80, %74
  %102 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %0, float noundef %46, float noundef %48, i16 noundef signext 0) #14
  br label %103

103:                                              ; preds = %101, %94, %100, %74, %72, %80
  %104 = add nuw nsw i64 %24, 1
  %105 = icmp eq i64 %104, %22
  br i1 %105, label %106, label %23, !llvm.loop !53

106:                                              ; preds = %103, %12
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %107(ptr noundef nonnull %6) #14
  br label %108

108:                                              ; preds = %2, %4, %8, %106
  ret void
}

; Function Attrs: optsize
declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @smooth_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %163, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %162, label %9

9:                                                ; preds = %5, %29
  %10 = phi ptr [ %32, %29 ], [ %3, %5 ]
  %11 = phi i32 [ %31, %29 ], [ 0, %5 ]
  %12 = phi i32 [ %30, %29 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !45
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !49
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !50
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %17, %9
  %28 = add nsw i32 %12, 1
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ %12, %22 ]
  %31 = add nuw nsw i32 %11, 1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 1
  %33 = icmp eq i32 %31, %7
  br i1 %33, label %34, label %9, !llvm.loop !54

34:                                               ; preds = %29
  %35 = icmp sgt i32 %30, 2
  br i1 %35, label %36, label %162

36:                                               ; preds = %34
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %38 = zext nneg i32 %30 to i64
  %39 = mul nuw nsw i64 %38, 40
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.1) #14
  %41 = load i32, ptr %6, align 8, !tbaa !34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %2, align 8, !tbaa !43
  br label %48

45:                                               ; preds = %73, %36
  %46 = add nsw i32 %30, -1
  %47 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %81

48:                                               ; preds = %43, %73
  %49 = phi ptr [ %76, %73 ], [ %44, %43 ]
  %50 = phi i32 [ %75, %73 ], [ 0, %43 ]
  %51 = phi ptr [ %74, %73 ], [ %40, %43 ]
  %52 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !45
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !49
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !50
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61, %56, %48
  %67 = getelementptr inbounds [3 x float], ptr %49, i64 0, i64 1
  store ptr %67, ptr %51, align 8, !tbaa !55
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1, i64 1
  %69 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !57
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 2, i64 1
  %71 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !58
  %72 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 1
  br label %73

73:                                               ; preds = %61, %66
  %74 = phi ptr [ %72, %66 ], [ %51, %61 ]
  %75 = add nuw nsw i32 %50, 1
  %76 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 1
  %77 = icmp eq i32 %75, %41
  br i1 %77, label %45, label %48, !llvm.loop !59

78:                                               ; preds = %128
  %79 = add nsw i32 %30, -1
  %80 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %132

81:                                               ; preds = %45, %128
  %82 = phi i32 [ 0, %45 ], [ %129, %128 ]
  %83 = phi ptr [ %40, %45 ], [ %130, %128 ]
  %84 = icmp ne i32 %82, 0
  %85 = icmp ne i32 %82, %46
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %128

87:                                               ; preds = %81
  %88 = icmp ugt i32 %82, 2
  %89 = add nuw nsw i32 %82, 2
  %90 = icmp slt i32 %89, %30
  %91 = getelementptr %struct.tSmooth_Bezt, ptr %83, i64 -1, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !57
  %93 = load float, ptr %92, align 4, !tbaa !52
  br i1 %88, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr %struct.tSmooth_Bezt, ptr %83, i64 -2, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = load float, ptr %96, align 4, !tbaa !52
  br label %98

98:                                               ; preds = %87, %94
  %99 = phi float [ %97, %94 ], [ %93, %87 ]
  %100 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !57
  %102 = load float, ptr %101, align 4, !tbaa !52
  %103 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 1, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !57
  %105 = load float, ptr %104, align 4, !tbaa !52
  br i1 %90, label %106, label %110

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 2, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !57
  %109 = load float, ptr %108, align 4, !tbaa !52
  br label %110

110:                                              ; preds = %98, %106
  %111 = phi float [ %109, %106 ], [ %105, %98 ]
  %112 = fmul float %93, 5.000000e+00
  %113 = tail call float @llvm.fmuladd.f32(float %99, float 3.000000e+00, float %112)
  %114 = tail call float @llvm.fmuladd.f32(float %102, float 2.000000e+00, float %113)
  %115 = fadd float %114, %105
  %116 = fadd float %115, %111
  %117 = fdiv float %116, 1.200000e+01
  %118 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 3
  store float %117, ptr %118, align 8, !tbaa !60
  %119 = fadd float %93, %99
  %120 = tail call float @llvm.fmuladd.f32(float %102, float 2.000000e+00, float %119)
  %121 = tail call float @llvm.fmuladd.f32(float %105, float 5.000000e+00, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %111, float 3.000000e+00, float %121)
  %123 = fdiv float %122, 1.200000e+01
  %124 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 5
  store float %123, ptr %124, align 8, !tbaa !61
  %125 = fadd float %117, %123
  %126 = fmul float %125, 5.000000e-01
  %127 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 4
  store float %126, ptr %127, align 4, !tbaa !62
  br label %128

128:                                              ; preds = %81, %110
  %129 = add nuw nsw i32 %82, 1
  %130 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 1
  %131 = icmp eq i32 %129, %47
  br i1 %131, label %78, label %81, !llvm.loop !63

132:                                              ; preds = %78, %156
  %133 = phi i32 [ 0, %78 ], [ %157, %156 ]
  %134 = phi ptr [ %40, %78 ], [ %158, %156 ]
  %135 = icmp ne i32 %133, 0
  %136 = icmp ne i32 %133, %79
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 4
  %140 = load float, ptr %139, align 4, !tbaa !62
  %141 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  store float %140, ptr %142, align 4, !tbaa !52
  %143 = load ptr, ptr %134, align 8, !tbaa !55
  %144 = load float, ptr %143, align 4, !tbaa !52
  %145 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 3
  %146 = load float, ptr %145, align 8, !tbaa !60
  %147 = fmul float %146, 0x3FD3333340000000
  %148 = tail call float @llvm.fmuladd.f32(float %144, float 0x3FE6666660000000, float %147)
  store float %148, ptr %143, align 4, !tbaa !52
  %149 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !58
  %151 = load float, ptr %150, align 4, !tbaa !52
  %152 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 5
  %153 = load float, ptr %152, align 8, !tbaa !61
  %154 = fmul float %153, 0x3FD3333340000000
  %155 = tail call float @llvm.fmuladd.f32(float %151, float 0x3FE6666660000000, float %154)
  store float %155, ptr %150, align 4, !tbaa !52
  br label %156

156:                                              ; preds = %132, %138
  %157 = add nuw nsw i32 %133, 1
  %158 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 1
  %159 = icmp eq i32 %157, %80
  br i1 %159, label %160, label %132, !llvm.loop !64

160:                                              ; preds = %156
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %161(ptr noundef %40) #14
  br label %162

162:                                              ; preds = %5, %160, %34
  tail call void @calchandles_fcurve(ptr noundef %0) #14
  br label %163

163:                                              ; preds = %1, %162
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sample_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %5, %83
  %10 = phi i32 [ %84, %83 ], [ %7, %5 ]
  %11 = phi ptr [ %89, %83 ], [ %3, %5 ]
  %12 = phi i32 [ %88, %83 ], [ 0, %5 ]
  %13 = phi ptr [ %85, %83 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !45
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !49
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !50
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %83, label %28

28:                                               ; preds = %23, %18, %9
  %29 = icmp eq ptr %13, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !52
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !52
  %35 = fsub float %32, %34
  %36 = tail call float @llvm.ceil.f32(float %35)
  %37 = fptosi float %36 to i32
  %38 = tail call float @llvm.floor.f32(float %34)
  %39 = fptosi float %38 to i32
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %83, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %43 = sext i32 %37 to i64
  %44 = shl nsw i64 %43, 3
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.2) #14
  %46 = icmp sgt i32 %37, 1
  %47 = icmp ne ptr %45, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %50, label %73

49:                                               ; preds = %50
  br i1 %48, label %60, label %73

50:                                               ; preds = %41, %50
  %51 = phi i32 [ %57, %50 ], [ 1, %41 ]
  %52 = phi ptr [ %58, %50 ], [ %45, %41 ]
  %53 = add nsw i32 %51, %39
  %54 = sitofp i32 %53 to float
  store float %54, ptr %52, align 4, !tbaa !65
  %55 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %54) #14
  %56 = getelementptr inbounds %struct.TempFrameValCache, ptr %52, i64 0, i32 1
  store float %55, ptr %56, align 4, !tbaa !67
  %57 = add nuw nsw i32 %51, 1
  %58 = getelementptr inbounds %struct.TempFrameValCache, ptr %52, i64 1
  %59 = icmp eq i32 %57, %37
  br i1 %59, label %49, label %50, !llvm.loop !68

60:                                               ; preds = %49, %60
  %61 = phi i32 [ %70, %60 ], [ 1, %49 ]
  %62 = phi ptr [ %71, %60 ], [ %45, %49 ]
  %63 = load float, ptr %62, align 4, !tbaa !65
  %64 = getelementptr inbounds %struct.TempFrameValCache, ptr %62, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !67
  %66 = tail call i32 @insert_vert_fcurve(ptr noundef %0, float noundef %63, float noundef %65, i16 noundef signext 1) #14
  %67 = load ptr, ptr %2, align 8, !tbaa !43
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 %68, i32 10
  store i8 2, ptr %69, align 2, !tbaa !69
  %70 = add nuw nsw i32 %61, 1
  %71 = getelementptr inbounds %struct.TempFrameValCache, ptr %62, i64 1
  %72 = icmp eq i32 %70, %37
  br i1 %72, label %73, label %60, !llvm.loop !70

73:                                               ; preds = %60, %41, %49
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %74(ptr noundef %45) #14
  %75 = load ptr, ptr %2, align 8, !tbaa !43
  %76 = sext i32 %12 to i64
  %77 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 %76
  %78 = getelementptr inbounds %struct.BezTriple, ptr %77, i64 %43
  %79 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 -1
  %80 = add nsw i32 %12, -1
  %81 = add i32 %80, %37
  %82 = load i32, ptr %6, align 8, !tbaa !34
  br label %83

83:                                               ; preds = %28, %30, %73, %23
  %84 = phi i32 [ %10, %23 ], [ %82, %73 ], [ %10, %30 ], [ %10, %28 ]
  %85 = phi ptr [ %13, %23 ], [ %79, %73 ], [ %11, %30 ], [ %11, %28 ]
  %86 = phi i32 [ %12, %23 ], [ %81, %73 ], [ %12, %30 ], [ %12, %28 ]
  %87 = phi ptr [ %11, %23 ], [ %79, %73 ], [ %11, %30 ], [ %11, %28 ]
  %88 = add nsw i32 %86, 1
  %89 = getelementptr inbounds %struct.BezTriple, ptr %87, i64 1
  %90 = icmp ult i32 %88, %84
  br i1 %90, label %9, label %91, !llvm.loop !71

91:                                               ; preds = %83, %5
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #14
  br label %92

92:                                               ; preds = %1, %91
  ret void
}

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_anim_copybuf() local_unnamed_addr #0 {
  %1 = load ptr, ptr @animcopybuf, align 8, !tbaa !72
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0, %17
  %4 = phi ptr [ %5, %17 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %10(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %16(ptr noundef nonnull %13) #14
  br label %17

17:                                               ; preds = %15, %11
  tail call void @BLI_freelinkN(ptr noundef nonnull @animcopybuf, ptr noundef nonnull %4) #14
  %18 = icmp eq ptr %5, null
  br i1 %18, label %19, label %3, !llvm.loop !77

19:                                               ; preds = %17, %0
  tail call fastcc void @BLI_listbase_clear() #15
  store float 1.000000e+09, ptr @animcopy_firstframe, align 4, !tbaa !52
  store float -1.000000e+09, ptr @animcopy_lastframe, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_listbase_clear() unnamed_addr #5 !PGOFuncName !78 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @animcopybuf, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @copy_animedit_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  tail call void @free_anim_copybuf() #15
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %109, label %7

7:                                                ; preds = %2, %106
  %8 = phi ptr [ %107, %106 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #14
  %12 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %10, ptr noundef null, ptr noundef %11, ptr noundef null) #14
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %106, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %16 = tail call ptr %15(i64 noundef 64, ptr noundef nonnull @.str.3) #14
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !85
  %22 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 8
  store i16 %21, ptr %22, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !88
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = tail call ptr %26(ptr noundef %28) #14
  %30 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !76
  %31 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !90
  %33 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 5
  store i32 %32, ptr %33, align 8, !tbaa !91
  tail call void @BLI_addtail(ptr noundef nonnull @animcopybuf, ptr noundef %16) #14
  %34 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %106, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 6
  %41 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 7
  br label %42

42:                                               ; preds = %37, %101
  %43 = phi i32 [ 0, %37 ], [ %102, %101 ]
  %44 = phi ptr [ %39, %37 ], [ %103, %101 ]
  %45 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !45
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %51 = load i8, ptr %50, align 1, !tbaa !49
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !50
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %54, %49, %42
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %61 = load i32, ptr %40, align 4, !tbaa !92
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 72
  %65 = tail call ptr %60(i64 noundef %64, ptr noundef nonnull @.str.4) #14
  %66 = load ptr, ptr %41, align 8, !tbaa !75
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, ptr %40, align 4, !tbaa !92
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %65, ptr nonnull align 4 %66, i64 %71, i1 false)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, ptr %40, align 4, !tbaa !92
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %75, ptr noundef nonnull align 4 dereferenceable(72) %44, i64 72, i1 false), !tbaa.struct !93
  %76 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 7
  %77 = load i8, ptr %76, align 1, !tbaa !49
  %78 = or i8 %77, 1
  store i8 %78, ptr %76, align 1, !tbaa !49
  %79 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 8
  %80 = load i8, ptr %79, align 4, !tbaa !45
  %81 = or i8 %80, 1
  store i8 %81, ptr %79, align 4, !tbaa !45
  %82 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 9
  %83 = load i8, ptr %82, align 1, !tbaa !50
  %84 = or i8 %83, 1
  store i8 %84, ptr %82, align 1, !tbaa !50
  %85 = load ptr, ptr %41, align 8, !tbaa !75
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %72
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %88(ptr noundef nonnull %85) #14
  br label %89

89:                                               ; preds = %87, %72
  store ptr %65, ptr %41, align 8, !tbaa !75
  %90 = load i32, ptr %40, align 4, !tbaa !92
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %40, align 4, !tbaa !92
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !52
  %94 = load float, ptr @animcopy_firstframe, align 4, !tbaa !52
  %95 = fcmp olt float %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store float %93, ptr @animcopy_firstframe, align 4, !tbaa !52
  br label %97

97:                                               ; preds = %96, %89
  %98 = load float, ptr @animcopy_lastframe, align 4, !tbaa !52
  %99 = fcmp ogt float %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store float %93, ptr @animcopy_lastframe, align 4, !tbaa !52
  br label %101

101:                                              ; preds = %54, %100, %97
  %102 = add nuw nsw i32 %43, 1
  %103 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 1
  %104 = load i32, ptr %34, align 8, !tbaa !34
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %42, label %106, !llvm.loop !95

106:                                              ; preds = %101, %14, %7
  %107 = load ptr, ptr %8, align 8, !tbaa !44
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %7, !llvm.loop !96

109:                                              ; preds = %106, %2
  %110 = load ptr, ptr @animcopybuf, align 8, !tbaa !72
  %111 = icmp eq ptr %110, null
  %112 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @animcopybuf, i64 0, i32 1), align 8
  %113 = icmp eq ptr %112, null
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !97
  %118 = sitofp i32 %117 to float
  store float %118, ptr @animcopy_cfra, align 4, !tbaa !52
  br label %119

119:                                              ; preds = %109, %115
  %120 = phi i16 [ 0, %115 ], [ -1, %109 ]
  ret i16 %120
}

; Function Attrs: optsize
declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @paste_animedit_keys(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull @animcopybuf) #15, !range !118
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef %1) #15, !range !118
  %9 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull @animcopybuf) #15, !range !118
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.29) #14
  br label %82

14:                                               ; preds = %4
  %15 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #15, !range !118
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.30) #14
  br label %82

20:                                               ; preds = %14
  %21 = icmp ult i32 %2, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = zext nneg i32 %2 to i64
  %24 = getelementptr inbounds [3 x ptr], ptr @switch.table.paste_animedit_keys, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !97
  %28 = sitofp i32 %27 to float
  %29 = load float, ptr %25, align 4, !tbaa !52
  %30 = fsub float %28, %29
  br label %31

31:                                               ; preds = %20, %22
  %32 = phi float [ 0.000000e+00, %20 ], [ %30, %22 ]
  %33 = icmp ne i8 %7, 0
  %34 = icmp ne i8 %8, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = zext nneg i8 %7 to i16
  %38 = zext nneg i8 %8 to i16
  br label %49

39:                                               ; preds = %31
  %40 = load ptr, ptr %1, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !120
  %43 = load ptr, ptr @animcopybuf, align 8, !tbaa !72
  tail call fastcc void @paste_animedit_keys_fcurve(ptr noundef %42, ptr noundef %43, float noundef %32, i32 noundef %3) #15
  br label %81

44:                                               ; preds = %49
  %45 = add nuw nsw i32 %50, 1
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %81, label %47

47:                                               ; preds = %44, %76
  %48 = phi i32 [ %45, %44 ], [ %78, %76 ]
  br label %49, !llvm.loop !121

49:                                               ; preds = %47, %36
  %50 = phi i32 [ 0, %36 ], [ %48, %47 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %44, label %53

53:                                               ; preds = %49, %69
  %54 = phi ptr [ %74, %69 ], [ %51, %49 ]
  %55 = phi i32 [ %70, %69 ], [ 0, %49 ]
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !120
  switch i32 %50, label %69 [
    i32 0, label %58
    i32 1, label %60
    i32 2, label %62
  ]

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @pastebuf_match_path_full(ptr noundef %57, i16 noundef signext %37, i16 noundef signext %38) #15
  br label %64

60:                                               ; preds = %53
  %61 = tail call fastcc ptr @pastebuf_match_path_property(ptr noundef %57, i16 noundef signext %37) #15
  br label %64

62:                                               ; preds = %53
  %63 = tail call fastcc ptr @pastebuf_match_index_only(ptr noundef %57, i16 noundef signext %37) #15
  br label %64

64:                                               ; preds = %62, %60, %58
  %65 = phi ptr [ %63, %62 ], [ %61, %60 ], [ %59, %58 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = add i32 %55, 1
  tail call fastcc void @paste_animedit_keys_fcurve(ptr noundef %57, ptr noundef nonnull %65, float noundef %32, i32 noundef %3) #15
  br label %69

69:                                               ; preds = %53, %67, %64
  %70 = phi i32 [ %68, %67 ], [ %55, %64 ], [ %55, %53 ]
  %71 = getelementptr inbounds %struct.bAnimListElem, ptr %54, i64 0, i32 6
  %72 = load i16, ptr %71, align 4, !tbaa !122
  %73 = or i16 %72, 7
  store i16 %73, ptr %71, align 4, !tbaa !122
  %74 = load ptr, ptr %54, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %53, !llvm.loop !123

76:                                               ; preds = %69
  %77 = icmp ne i32 %70, 0
  %78 = add nuw nsw i32 %50, 1
  %79 = icmp eq i32 %78, 3
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %47

81:                                               ; preds = %76, %44, %39
  tail call void @ANIM_animdata_update(ptr noundef %0, ptr noundef %1) #14
  br label %82

82:                                               ; preds = %81, %17, %11
  %83 = phi i16 [ -1, %11 ], [ -1, %17 ], [ 0, %81 ]
  ret i16 %83
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !124 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paste_animedit_keys_fcurve(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !127 {
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %4 ]
  %12 = phi ptr [ %17, %10 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !45
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 4, !tbaa !45
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 1
  %18 = icmp eq i32 %16, %8
  br i1 %18, label %19, label %10, !llvm.loop !128

19:                                               ; preds = %10, %4
  switch i32 %3, label %57 [
    i32 1, label %20
    i32 2, label %21
    i32 3, label %30
  ]

20:                                               ; preds = %19
  tail call void @clear_fcurve_keys(ptr noundef nonnull %0) #15
  br label %57

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !92
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BezTriple, ptr %23, i64 %27
  %29 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 1
  br label %30

30:                                               ; preds = %19, %21
  %31 = phi ptr [ %24, %21 ], [ @animcopy_firstframe, %19 ]
  %32 = phi ptr [ %29, %21 ], [ @animcopy_lastframe, %19 ]
  %33 = load float, ptr %32, align 4, !tbaa !52
  %34 = fadd float %33, %2
  %35 = load float, ptr %31, align 4, !tbaa !52
  %36 = fadd float %35, %2
  %37 = fcmp olt float %36, %34
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  br i1 %9, label %55, label %39

39:                                               ; preds = %38, %51
  %40 = phi i32 [ %52, %51 ], [ 0, %38 ]
  %41 = phi ptr [ %53, %51 ], [ %6, %38 ]
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !52
  %44 = fcmp olt float %36, %43
  %45 = fcmp olt float %43, %34
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !45
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 4, !tbaa !45
  br label %51

51:                                               ; preds = %39, %47
  %52 = add nuw nsw i32 %40, 1
  %53 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 1
  %54 = icmp eq i32 %52, %8
  br i1 %54, label %55, label %39, !llvm.loop !129

55:                                               ; preds = %51, %38
  %56 = tail call zeroext i8 @delete_fcurve_keys(ptr noundef %0) #15, !range !118
  br label %57

57:                                               ; preds = %30, %55, %19, %20
  %58 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !92
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i32 [ %82, %64 ], [ 0, %61 ]
  %66 = phi ptr [ %83, %64 ], [ %63, %61 ]
  %67 = load float, ptr %66, align 4, !tbaa !52
  %68 = fadd float %67, %2
  store float %68, ptr %66, align 4, !tbaa !52
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !52
  %71 = fadd float %70, %2
  store float %71, ptr %69, align 4, !tbaa !52
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !52
  %74 = fadd float %73, %2
  store float %74, ptr %72, align 4, !tbaa !52
  %75 = tail call i32 @insert_bezt_fcurve(ptr noundef %0, ptr noundef nonnull %66, i16 noundef signext 128) #14
  %76 = load float, ptr %66, align 4, !tbaa !52
  %77 = fsub float %76, %2
  store float %77, ptr %66, align 4, !tbaa !52
  %78 = load float, ptr %69, align 4, !tbaa !52
  %79 = fsub float %78, %2
  store float %79, ptr %69, align 4, !tbaa !52
  %80 = load float, ptr %72, align 4, !tbaa !52
  %81 = fsub float %80, %2
  store float %81, ptr %72, align 4, !tbaa !52
  %82 = add nuw nsw i32 %65, 1
  %83 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1
  %84 = load i32, ptr %58, align 4, !tbaa !92
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %64, label %86, !llvm.loop !130

86:                                               ; preds = %64, %57
  tail call void @calchandles_fcurve(ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @pastebuf_match_path_full(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #7 !PGOFuncName !131 {
  %4 = load ptr, ptr @animcopybuf, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = icmp eq i16 %2, 0
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %9 = icmp eq i16 %1, 0
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 11
  br label %11

11:                                               ; preds = %6, %29
  %12 = phi ptr [ %4, %6 ], [ %30, %29 ]
  br i1 %7, label %13, label %23

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %12, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %18) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %11, %20
  br i1 %9, label %24, label %32

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %12, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !91
  %27 = load i32, ptr %10, align 4, !tbaa !90
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %13, %17, %24, %20
  %30 = load ptr, ptr %12, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !132

32:                                               ; preds = %29, %24, %23, %3
  %33 = phi ptr [ null, %3 ], [ %12, %23 ], [ %12, %24 ], [ null, %29 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pastebuf_match_path_property(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr @animcopybuf, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 12
  %10 = icmp eq i16 %1, 0
  %11 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 11
  br label %12

12:                                               ; preds = %8, %65
  %13 = phi ptr [ %6, %8 ], [ %66, %65 ]
  %14 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @G, align 8, !tbaa !134
  %22 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 8
  %23 = load i16, ptr %22, align 8, !tbaa !86
  %24 = call ptr @which_libbase(ptr noundef %21, i16 noundef signext %23) #14
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = call i32 @BLI_findindex(ptr noundef %24, ptr noundef %26) #14
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %65

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %32 = load ptr, ptr %25, align 8, !tbaa !84
  call void @RNA_id_pointer_create(ptr noundef %32, ptr noundef nonnull %3) #14
  %33 = load ptr, ptr %14, align 8, !tbaa !76
  %34 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8, !tbaa !44
  %38 = call ptr @RNA_property_identifier(ptr noundef %37) #14
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #16
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %9, align 8, !tbaa !89
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #16
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = sub i64 %42, %39
  %47 = shl i64 %46, 32
  %48 = ashr exact i64 %47, 32
  %49 = getelementptr inbounds i8, ptr %41, i64 %48
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %49) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  br i1 %10, label %53, label %64

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !91
  %56 = load i32, ptr %11, align 4, !tbaa !90
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %63

58:                                               ; preds = %31
  %59 = load ptr, ptr %25, align 8, !tbaa !84
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %14, align 8, !tbaa !76
  %62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %60, ptr noundef %61) #15
  br label %63

63:                                               ; preds = %45, %53, %36, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %65

64:                                               ; preds = %53, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %68

65:                                               ; preds = %63, %12, %17, %29
  %66 = load ptr, ptr %13, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %12, !llvm.loop !136

68:                                               ; preds = %65, %2, %64
  %69 = phi ptr [ %13, %64 ], [ null, %2 ], [ null, %65 ]
  ret ptr %69
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @pastebuf_match_index_only(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #8 !PGOFuncName !137 {
  %3 = icmp ne i16 %1, 0
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 11
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ @animcopybuf, %2 ], [ %7, %10 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  %9 = or i1 %3, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %7, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = load i32, ptr %4, align 4, !tbaa !90
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %5, !llvm.loop !138

15:                                               ; preds = %10, %5
  ret ptr %7
}

; Function Attrs: optsize
declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @insert_bezt_fcurve(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { nounwind }

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
!34 = !{!35, !40, i64 64}
!35 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !41, i64 68, !42, i64 72, !42, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !41, i64 104, !41, i64 108}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!35, !36, i64 48}
!44 = !{!36, !36, i64 0}
!45 = !{!46, !37, i64 52}
!46 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!46, !37, i64 51}
!50 = !{!46, !37, i64 53}
!51 = distinct !{!51, !48}
!52 = !{!41, !41, i64 0}
!53 = distinct !{!53, !48}
!54 = distinct !{!54, !48}
!55 = !{!56, !36, i64 0}
!56 = !{!"tSmooth_Bezt", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32}
!57 = !{!56, !36, i64 8}
!58 = !{!56, !36, i64 16}
!59 = distinct !{!59, !48}
!60 = !{!56, !41, i64 24}
!61 = !{!56, !41, i64 32}
!62 = !{!56, !41, i64 28}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = !{!66, !41, i64 0}
!66 = !{!"TempFrameValCache", !41, i64 0, !41, i64 4}
!67 = !{!66, !41, i64 4}
!68 = distinct !{!68, !48}
!69 = !{!46, !37, i64 54}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = !{!39, !36, i64 0}
!73 = !{!74, !36, i64 0}
!74 = !{!"tAnimCopybufItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !36, i64 48, !42, i64 56}
!75 = !{!74, !36, i64 48}
!76 = !{!74, !36, i64 32}
!77 = distinct !{!77, !48}
!78 = !{!"keyframes_general.c:BLI_listbase_clear"}
!79 = !{!80, !36, i64 48}
!80 = !{!"bAnimContext", !36, i64 0, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!81 = !{!82, !36, i64 40}
!82 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!83 = !{!82, !36, i64 48}
!84 = !{!74, !36, i64 16}
!85 = !{!42, !42, i64 0}
!86 = !{!74, !42, i64 56}
!87 = !{!35, !36, i64 16}
!88 = !{!74, !36, i64 24}
!89 = !{!35, !36, i64 80}
!90 = !{!35, !40, i64 76}
!91 = !{!74, !40, i64 40}
!92 = !{!74, !40, i64 44}
!93 = !{i64 0, i64 36, !94, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 4, !52, i64 48, i64 1, !94, i64 49, i64 1, !94, i64 50, i64 1, !94, i64 51, i64 1, !94, i64 52, i64 1, !94, i64 53, i64 1, !94, i64 54, i64 1, !94, i64 55, i64 1, !94, i64 56, i64 4, !52, i64 60, i64 4, !52, i64 64, i64 4, !52, i64 68, i64 4, !94}
!94 = !{!37, !37, i64 0}
!95 = distinct !{!95, !48}
!96 = distinct !{!96, !48}
!97 = !{!98, !40, i64 680}
!98 = !{!"Scene", !99, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !100, i64 280, !109, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !110, i64 4400, !111, i64 4416, !114, i64 4600, !36, i64 4608, !115, i64 4616, !36, i64 4640, !116, i64 4648, !116, i64 4656, !102, i64 4664, !103, i64 4824, !117, i64 4888, !36, i64 4952}
!99 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!100 = !{!"RenderData", !101, i64 0, !36, i64 248, !36, i64 256, !104, i64 264, !105, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !106, i64 544, !106, i64 560, !107, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !108, i64 2616, !40, i64 3976, !40, i64 3980}
!101 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !102, i64 24, !103, i64 184}
!102 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!103 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!104 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!105 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!106 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!107 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!108 = !{!"BakeData", !101, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!109 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!110 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!111 = !{!"GameData", !110, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !112, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !113, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!112 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!113 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!114 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!115 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!116 = !{!"long", !37, i64 0}
!117 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!118 = !{i8 0, i8 2}
!119 = !{!80, !36, i64 72}
!120 = !{!82, !36, i64 16}
!121 = distinct !{!121, !48}
!122 = !{!82, !42, i64 36}
!123 = distinct !{!123, !48}
!124 = !{!"keyframes_general.c:BLI_listbase_is_single"}
!125 = !{!39, !36, i64 8}
!126 = !{!"keyframes_general.c:BLI_listbase_is_empty"}
!127 = !{!"keyframes_general.c:paste_animedit_keys_fcurve"}
!128 = distinct !{!128, !48}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = !{!"keyframes_general.c:pastebuf_match_path_full"}
!132 = distinct !{!132, !48}
!133 = !{!"keyframes_general.c:pastebuf_match_path_property"}
!134 = !{!135, !36, i64 0}
!135 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!136 = distinct !{!136, !48}
!137 = !{!"keyframes_general.c:pastebuf_match_index_only"}
!138 = distinct !{!138, !48}
