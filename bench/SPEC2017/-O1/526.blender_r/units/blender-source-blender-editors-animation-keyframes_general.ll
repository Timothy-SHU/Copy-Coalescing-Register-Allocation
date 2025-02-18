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

; Function Attrs: nounwind uwtable
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
  tail call void %30(ptr noundef nonnull %27) #10
  br label %31

31:                                               ; preds = %29, %26
  store ptr null, ptr %14, align 8, !tbaa !43
  br label %32

32:                                               ; preds = %31, %10
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @calchandles_fcurve(ptr noundef nonnull %0) #10
  br label %35

35:                                               ; preds = %5, %3, %34, %32
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @delete_fcurve_keys(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %29
  %10 = phi i32 [ %33, %29 ], [ %7, %5 ]
  %11 = phi i8 [ %31, %29 ], [ 0, %5 ]
  %12 = phi i32 [ %32, %29 ], [ 0, %5 ]
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
  %30 = phi i32 [ %28, %19 ], [ %12, %9 ]
  %31 = phi i8 [ 1, %19 ], [ %11, %9 ]
  %32 = add nsw i32 %30, 1
  %33 = load i32, ptr %6, align 8, !tbaa !34
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %9, label %35, !llvm.loop !47

35:                                               ; preds = %29
  %36 = icmp eq i32 %33, 0
  br label %37

37:                                               ; preds = %35, %5
  %38 = phi i8 [ 0, %5 ], [ %31, %35 ]
  %39 = phi i1 [ true, %5 ], [ %36, %35 ]
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %44(ptr noundef nonnull %41) #10
  br label %45

45:                                               ; preds = %40, %43
  store ptr null, ptr %2, align 8, !tbaa !43
  store i32 0, ptr %6, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %37, %45, %1
  %47 = phi i8 [ 0, %1 ], [ %38, %45 ], [ %38, %37 ]
  ret i8 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @clear_fcurve_keys(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %3) #10
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 0, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @duplicate_fcurve_keys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %69, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %7, %64
  %12 = phi i32 [ %67, %64 ], [ %9, %7 ]
  %13 = phi i32 [ %66, %64 ], [ 0, %7 ]
  %14 = load ptr, ptr %4, align 8, !tbaa !43
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 %15, i32 8
  %17 = load i8, ptr %16, align 4, !tbaa !45
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = mul nuw nsw i64 %23, 72
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str) #10
  %26 = load ptr, ptr %4, align 8, !tbaa !43
  %27 = add nsw i32 %13, 1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %26, i64 %29, i1 false)
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
  tail call void %44(ptr noundef %45) #10
  store ptr %25, ptr %4, align 8, !tbaa !43
  %46 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !50
  %48 = and i8 %47, -2
  store i8 %48, ptr %46, align 1, !tbaa !50
  %49 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 8
  %50 = load i8, ptr %49, align 4, !tbaa !45
  %51 = and i8 %50, -2
  store i8 %51, ptr %49, align 4, !tbaa !45
  %52 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !51
  %54 = and i8 %53, -2
  store i8 %54, ptr %52, align 1, !tbaa !51
  %55 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !50
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1, !tbaa !50
  %58 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 8
  %59 = load i8, ptr %58, align 4, !tbaa !45
  %60 = or i8 %59, 1
  store i8 %60, ptr %58, align 4, !tbaa !45
  %61 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !51
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 1, !tbaa !51
  br label %64

64:                                               ; preds = %11, %20
  %65 = phi i32 [ %27, %20 ], [ %13, %11 ]
  %66 = add nsw i32 %65, 1
  %67 = load i32, ptr %8, align 8, !tbaa !34
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %11, label %69, !llvm.loop !52

69:                                               ; preds = %64, %7, %1, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
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
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %0, float noundef %14, float noundef %16, i16 noundef signext 0) #10
  %18 = icmp sgt i32 %10, 1
  br i1 %18, label %19, label %106

19:                                               ; preds = %12
  %20 = add nsw i32 %10, -1
  %21 = sext i32 %20 to i64
  %22 = zext nneg i32 %10 to i64
  br label %23

23:                                               ; preds = %19, %103
  %24 = phi i64 [ 1, %19 ], [ %104, %103 ]
  %25 = icmp slt i64 %24, %21
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr %struct.BezTriple, ptr %6, i64 %24
  %28 = getelementptr %struct.BezTriple, ptr %27, i64 1
  %29 = getelementptr %struct.BezTriple, ptr %27, i64 1, i32 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !53
  %31 = getelementptr %struct.BezTriple, ptr %27, i64 1, i32 0, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !53
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
  %42 = load float, ptr %41, align 4, !tbaa !53
  %43 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 %40, i32 0, i64 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !53
  %45 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !53
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
  %102 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %0, float noundef %46, float noundef %48, i16 noundef signext 0) #10
  br label %103

103:                                              ; preds = %101, %94, %100, %74, %72, %80
  %104 = add nuw nsw i64 %24, 1
  %105 = icmp eq i64 %104, %22
  br i1 %105, label %106, label %23, !llvm.loop !54

106:                                              ; preds = %103, %12
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %107(ptr noundef nonnull %6) #10
  br label %108

108:                                              ; preds = %2, %4, %8, %106
  ret void
}

declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @smooth_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %167, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

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
  %19 = load i8, ptr %18, align 1, !tbaa !50
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !51
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
  br i1 %33, label %34, label %9, !llvm.loop !55

34:                                               ; preds = %29, %5
  %35 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %166

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %40 = zext nneg i32 %35 to i64
  %41 = mul nuw nsw i64 %40, 40
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.1) #10
  %43 = load i32, ptr %38, align 8, !tbaa !34
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %2, align 8, !tbaa !43
  br label %50

47:                                               ; preds = %75, %37
  %48 = add nsw i32 %35, -1
  %49 = tail call i32 @llvm.smax.i32(i32 %35, i32 1)
  br label %83

50:                                               ; preds = %45, %75
  %51 = phi ptr [ %78, %75 ], [ %46, %45 ]
  %52 = phi i32 [ %77, %75 ], [ 0, %45 ]
  %53 = phi ptr [ %76, %75 ], [ %42, %45 ]
  %54 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !45
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !50
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !51
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63, %58, %50
  %69 = getelementptr inbounds [3 x float], ptr %51, i64 0, i64 1
  store ptr %69, ptr %53, align 8, !tbaa !56
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %51, i64 0, i64 1, i64 1
  %71 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %53, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !58
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %51, i64 0, i64 2, i64 1
  %73 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %53, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %53, i64 1
  br label %75

75:                                               ; preds = %63, %68
  %76 = phi ptr [ %74, %68 ], [ %53, %63 ]
  %77 = add nuw nsw i32 %52, 1
  %78 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 1
  %79 = icmp eq i32 %77, %43
  br i1 %79, label %47, label %50, !llvm.loop !60

80:                                               ; preds = %132
  %81 = add nsw i32 %35, -1
  %82 = tail call i32 @llvm.smax.i32(i32 %35, i32 1)
  br label %136

83:                                               ; preds = %47, %132
  %84 = phi i32 [ 0, %47 ], [ %133, %132 ]
  %85 = phi ptr [ %42, %47 ], [ %134, %132 ]
  %86 = icmp ne i32 %84, 0
  %87 = icmp ne i32 %84, %48
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %132

89:                                               ; preds = %83
  %90 = icmp ugt i32 %84, 2
  %91 = add nuw nsw i32 %84, 2
  %92 = icmp slt i32 %91, %35
  %93 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 2
  %94 = select i1 %92, ptr %93, ptr null
  %95 = getelementptr %struct.tSmooth_Bezt, ptr %85, i64 -1, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !58
  %97 = load float, ptr %96, align 4, !tbaa !53
  br i1 %90, label %98, label %102

98:                                               ; preds = %89
  %99 = getelementptr %struct.tSmooth_Bezt, ptr %85, i64 -2, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !58
  %101 = load float, ptr %100, align 4, !tbaa !53
  br label %102

102:                                              ; preds = %89, %98
  %103 = phi float [ %101, %98 ], [ %97, %89 ]
  %104 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !58
  %106 = load float, ptr %105, align 4, !tbaa !53
  %107 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 1, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !58
  %109 = load float, ptr %108, align 4, !tbaa !53
  br i1 %92, label %110, label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %94, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !58
  %113 = load float, ptr %112, align 4, !tbaa !53
  br label %114

114:                                              ; preds = %102, %110
  %115 = phi float [ %113, %110 ], [ %109, %102 ]
  %116 = fmul float %97, 5.000000e+00
  %117 = tail call float @llvm.fmuladd.f32(float %103, float 3.000000e+00, float %116)
  %118 = tail call float @llvm.fmuladd.f32(float %106, float 2.000000e+00, float %117)
  %119 = fadd float %118, %109
  %120 = fadd float %119, %115
  %121 = fdiv float %120, 1.200000e+01
  %122 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 0, i32 3
  store float %121, ptr %122, align 8, !tbaa !61
  %123 = fadd float %97, %103
  %124 = tail call float @llvm.fmuladd.f32(float %106, float 2.000000e+00, float %123)
  %125 = tail call float @llvm.fmuladd.f32(float %109, float 5.000000e+00, float %124)
  %126 = tail call float @llvm.fmuladd.f32(float %115, float 3.000000e+00, float %125)
  %127 = fdiv float %126, 1.200000e+01
  %128 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 0, i32 5
  store float %127, ptr %128, align 8, !tbaa !62
  %129 = fadd float %121, %127
  %130 = fmul float %129, 5.000000e-01
  %131 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 0, i32 4
  store float %130, ptr %131, align 4, !tbaa !63
  br label %132

132:                                              ; preds = %83, %114
  %133 = add nuw nsw i32 %84, 1
  %134 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %85, i64 1
  %135 = icmp eq i32 %133, %49
  br i1 %135, label %80, label %83, !llvm.loop !64

136:                                              ; preds = %80, %160
  %137 = phi i32 [ 0, %80 ], [ %161, %160 ]
  %138 = phi ptr [ %42, %80 ], [ %162, %160 ]
  %139 = icmp ne i32 %137, 0
  %140 = icmp ne i32 %137, %81
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 0, i32 4
  %144 = load float, ptr %143, align 4, !tbaa !63
  %145 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !58
  store float %144, ptr %146, align 4, !tbaa !53
  %147 = load ptr, ptr %138, align 8, !tbaa !56
  %148 = load float, ptr %147, align 4, !tbaa !53
  %149 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 0, i32 3
  %150 = load float, ptr %149, align 8, !tbaa !61
  %151 = fmul float %150, 0x3FD3333340000000
  %152 = tail call float @llvm.fmuladd.f32(float %148, float 0x3FE6666660000000, float %151)
  store float %152, ptr %147, align 4, !tbaa !53
  %153 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !59
  %155 = load float, ptr %154, align 4, !tbaa !53
  %156 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 0, i32 5
  %157 = load float, ptr %156, align 8, !tbaa !62
  %158 = fmul float %157, 0x3FD3333340000000
  %159 = tail call float @llvm.fmuladd.f32(float %155, float 0x3FE6666660000000, float %158)
  store float %159, ptr %154, align 4, !tbaa !53
  br label %160

160:                                              ; preds = %136, %142
  %161 = add nuw nsw i32 %137, 1
  %162 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %138, i64 1
  %163 = icmp eq i32 %161, %82
  br i1 %163, label %164, label %136, !llvm.loop !65

164:                                              ; preds = %160
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %165(ptr noundef %42) #10
  br label %166

166:                                              ; preds = %164, %34
  tail call void @calchandles_fcurve(ptr noundef %0) #10
  br label %167

167:                                              ; preds = %1, %166
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind uwtable
define dso_local void @sample_fcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %92, label %9

9:                                                ; preds = %5, %84
  %10 = phi ptr [ %89, %84 ], [ %3, %5 ]
  %11 = phi i32 [ %88, %84 ], [ 0, %5 ]
  %12 = phi ptr [ %85, %84 ], [ null, %5 ]
  %13 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !45
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !50
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !51
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %84, label %27

27:                                               ; preds = %22, %17, %9
  %28 = icmp eq ptr %12, null
  br i1 %28, label %84, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !53
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !53
  %34 = fsub float %31, %33
  %35 = tail call float @llvm.ceil.f32(float %34)
  %36 = fptosi float %35 to i32
  %37 = tail call float @llvm.floor.f32(float %33)
  %38 = fptosi float %37 to i32
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %42 = sext i32 %36 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.2) #10
  %45 = icmp sgt i32 %36, 1
  %46 = icmp ne ptr %44, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %52, label %48

48:                                               ; preds = %52, %40
  %49 = icmp sgt i32 %36, 1
  %50 = icmp ne ptr %44, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %62, label %75

52:                                               ; preds = %40, %52
  %53 = phi i32 [ %59, %52 ], [ 1, %40 ]
  %54 = phi ptr [ %60, %52 ], [ %44, %40 ]
  %55 = add nsw i32 %53, %38
  %56 = sitofp i32 %55 to float
  store float %56, ptr %54, align 4, !tbaa !66
  %57 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %56) #10
  %58 = getelementptr inbounds %struct.TempFrameValCache, ptr %54, i64 0, i32 1
  store float %57, ptr %58, align 4, !tbaa !68
  %59 = add nuw nsw i32 %53, 1
  %60 = getelementptr inbounds %struct.TempFrameValCache, ptr %54, i64 1
  %61 = icmp eq i32 %59, %36
  br i1 %61, label %48, label %52, !llvm.loop !69

62:                                               ; preds = %48, %62
  %63 = phi i32 [ %72, %62 ], [ 1, %48 ]
  %64 = phi ptr [ %73, %62 ], [ %44, %48 ]
  %65 = load float, ptr %64, align 4, !tbaa !66
  %66 = getelementptr inbounds %struct.TempFrameValCache, ptr %64, i64 0, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !68
  %68 = tail call i32 @insert_vert_fcurve(ptr noundef %0, float noundef %65, float noundef %67, i16 noundef signext 1) #10
  %69 = load ptr, ptr %2, align 8, !tbaa !43
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.BezTriple, ptr %69, i64 %70, i32 10
  store i8 2, ptr %71, align 2, !tbaa !70
  %72 = add nuw nsw i32 %63, 1
  %73 = getelementptr inbounds %struct.TempFrameValCache, ptr %64, i64 1
  %74 = icmp eq i32 %72, %36
  br i1 %74, label %75, label %62, !llvm.loop !71

75:                                               ; preds = %62, %48
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %76(ptr noundef %44) #10
  %77 = load ptr, ptr %2, align 8, !tbaa !43
  %78 = sext i32 %11 to i64
  %79 = getelementptr inbounds %struct.BezTriple, ptr %77, i64 %78
  %80 = getelementptr inbounds %struct.BezTriple, ptr %79, i64 %42
  %81 = getelementptr inbounds %struct.BezTriple, ptr %80, i64 -1
  %82 = add nsw i32 %11, -1
  %83 = add i32 %82, %36
  br label %84

84:                                               ; preds = %27, %29, %75, %22
  %85 = phi ptr [ %12, %22 ], [ %81, %75 ], [ %10, %29 ], [ %10, %27 ]
  %86 = phi i32 [ %11, %22 ], [ %83, %75 ], [ %11, %29 ], [ %11, %27 ]
  %87 = phi ptr [ %10, %22 ], [ %81, %75 ], [ %10, %29 ], [ %10, %27 ]
  %88 = add nsw i32 %86, 1
  %89 = getelementptr inbounds %struct.BezTriple, ptr %87, i64 1
  %90 = load i32, ptr %6, align 8, !tbaa !34
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %9, label %92, !llvm.loop !72

92:                                               ; preds = %84, %5
  tail call void @calchandles_fcurve(ptr noundef %0) #10
  br label %93

93:                                               ; preds = %1, %92
  ret void
}

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_anim_copybuf() local_unnamed_addr #0 {
  %1 = load ptr, ptr @animcopybuf, align 8, !tbaa !73
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0, %17
  %4 = phi ptr [ %5, %17 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %10(ptr noundef nonnull %7) #10
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %16(ptr noundef nonnull %13) #10
  br label %17

17:                                               ; preds = %15, %11
  tail call void @BLI_freelinkN(ptr noundef nonnull @animcopybuf, ptr noundef nonnull %4) #10
  %18 = icmp eq ptr %5, null
  br i1 %18, label %19, label %3, !llvm.loop !78

19:                                               ; preds = %17, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @animcopybuf, i8 0, i64 16, i1 false)
  store float 1.000000e+09, ptr @animcopy_firstframe, align 4, !tbaa !53
  store float -1.000000e+09, ptr @animcopy_lastframe, align 4, !tbaa !53
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @copy_animedit_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = load ptr, ptr @animcopybuf, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2, %21
  %8 = phi ptr [ %9, %21 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %8, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %8, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  tail call void @BLI_freelinkN(ptr noundef nonnull @animcopybuf, ptr noundef nonnull %8) #10
  %22 = icmp eq ptr %9, null
  br i1 %22, label %23, label %7, !llvm.loop !78

23:                                               ; preds = %21, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @animcopybuf, i8 0, i64 16, i1 false)
  store float 1.000000e+09, ptr @animcopy_firstframe, align 4, !tbaa !53
  store float -1.000000e+09, ptr @animcopy_lastframe, align 4, !tbaa !53
  %24 = load ptr, ptr %1, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %129, label %26

26:                                               ; preds = %23, %126
  %27 = phi ptr [ %127, %126 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %27, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #10
  %31 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %29, ptr noundef null, ptr noundef %30, ptr noundef null) #10
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %126, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %35 = tail call ptr %34(i64 noundef 64, ptr noundef nonnull @.str.3) #10
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %27, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 4
  %40 = load i16, ptr %39, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 8
  store i16 %40, ptr %41, align 8, !tbaa !86
  %42 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !88
  %45 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = tail call ptr %45(ptr noundef %47) #10
  %49 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 11
  %51 = load i32, ptr %50, align 4, !tbaa !90
  %52 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 5
  store i32 %51, ptr %52, align 8, !tbaa !91
  tail call void @BLI_addtail(ptr noundef nonnull @animcopybuf, ptr noundef %35) #10
  %53 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %126, label %56

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 6
  %60 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %35, i64 0, i32 7
  br label %61

61:                                               ; preds = %56, %121
  %62 = phi i32 [ 0, %56 ], [ %122, %121 ]
  %63 = phi ptr [ %58, %56 ], [ %123, %121 ]
  %64 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 8
  %65 = load i8, ptr %64, align 4, !tbaa !45
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 7
  %70 = load i8, ptr %69, align 1, !tbaa !50
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 9
  %75 = load i8, ptr %74, align 1, !tbaa !51
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %73, %68, %61
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %80 = load i32, ptr %59, align 4, !tbaa !92
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 72
  %84 = tail call ptr %79(i64 noundef %83, ptr noundef nonnull @.str.4) #10
  %85 = load ptr, ptr %60, align 8, !tbaa !76
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load i32, ptr %59, align 4, !tbaa !92
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr nonnull align 4 %85, i64 %90, i1 false)
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, ptr %59, align 4, !tbaa !92
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %94, ptr noundef nonnull align 4 dereferenceable(72) %63, i64 72, i1 false), !tbaa.struct !93
  %95 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 %93, i32 7
  %96 = load i8, ptr %95, align 1, !tbaa !50
  %97 = or i8 %96, 1
  store i8 %97, ptr %95, align 1, !tbaa !50
  %98 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 %93, i32 8
  %99 = load i8, ptr %98, align 4, !tbaa !45
  %100 = or i8 %99, 1
  store i8 %100, ptr %98, align 4, !tbaa !45
  %101 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 %93, i32 9
  %102 = load i8, ptr %101, align 1, !tbaa !51
  %103 = or i8 %102, 1
  store i8 %103, ptr %101, align 1, !tbaa !51
  %104 = load ptr, ptr %60, align 8, !tbaa !76
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %91
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %107(ptr noundef nonnull %104) #10
  br label %108

108:                                              ; preds = %106, %91
  store ptr %84, ptr %60, align 8, !tbaa !76
  %109 = load i32, ptr %59, align 4, !tbaa !92
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %59, align 4, !tbaa !92
  %111 = getelementptr inbounds [3 x [3 x float]], ptr %63, i64 0, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !53
  %113 = load float, ptr @animcopy_firstframe, align 4, !tbaa !53
  %114 = fcmp olt float %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store float %112, ptr @animcopy_firstframe, align 4, !tbaa !53
  br label %116

116:                                              ; preds = %115, %108
  %117 = load float, ptr %111, align 4, !tbaa !53
  %118 = load float, ptr @animcopy_lastframe, align 4, !tbaa !53
  %119 = fcmp ogt float %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store float %117, ptr @animcopy_lastframe, align 4, !tbaa !53
  br label %121

121:                                              ; preds = %73, %120, %116
  %122 = add nuw nsw i32 %62, 1
  %123 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 1
  %124 = load i32, ptr %53, align 8, !tbaa !34
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %61, label %126, !llvm.loop !95

126:                                              ; preds = %121, %33, %26
  %127 = load ptr, ptr %27, align 8, !tbaa !44
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %26, !llvm.loop !96

129:                                              ; preds = %126, %23
  %130 = load ptr, ptr @animcopybuf, align 8, !tbaa !73
  %131 = icmp eq ptr %130, null
  %132 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @animcopybuf, i64 0, i32 1), align 8
  %133 = icmp eq ptr %132, null
  %134 = select i1 %131, i1 true, i1 %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %137 = load i32, ptr %136, align 8, !tbaa !97
  %138 = sitofp i32 %137 to float
  store float %138, ptr @animcopy_cfra, align 4, !tbaa !53
  br label %139

139:                                              ; preds = %129, %135
  %140 = phi i16 [ 0, %135 ], [ -1, %129 ]
  ret i16 %140
}

declare signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @paste_animedit_keys(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = load ptr, ptr @animcopybuf, align 8, !tbaa !73
  %11 = icmp ne ptr %10, null
  %12 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @animcopybuf, i64 0, i32 1), align 8
  %13 = icmp eq ptr %10, %12
  %14 = select i1 %11, i1 %13, i1 false
  %15 = load ptr, ptr %1, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !118
  %20 = icmp eq ptr %15, %19
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %4, %17
  %23 = phi i8 [ 0, %4 ], [ %21, %17 ]
  %24 = icmp eq ptr %10, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.29) #10
  br label %187

28:                                               ; preds = %22
  br i1 %16, label %29, label %32

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !119
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.30) #10
  br label %187

32:                                               ; preds = %28
  %33 = icmp ult i32 %2, 3
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %35 = zext nneg i32 %2 to i64
  %36 = getelementptr inbounds [3 x ptr], ptr @switch.table.paste_animedit_keys, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !97
  %40 = sitofp i32 %39 to float
  %41 = load float, ptr %37, align 4, !tbaa !53
  %42 = fsub float %40, %41
  br label %43

43:                                               ; preds = %32, %34
  %44 = phi float [ 0.000000e+00, %32 ], [ %42, %34 ]
  %45 = icmp ne i8 %23, 0
  %46 = select i1 %14, i1 %45, i1 false
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = icmp eq i8 %23, 0
  br label %52

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %15, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  tail call fastcc void @paste_animedit_keys_fcurve(ptr noundef %51, ptr noundef nonnull %10, float noundef %44, i32 noundef %3)
  br label %186

52:                                               ; preds = %180, %47
  %53 = phi i32 [ 0, %47 ], [ %183, %180 ]
  %54 = load ptr, ptr %1, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %180, label %56

56:                                               ; preds = %52, %173
  %57 = phi ptr [ %178, %173 ], [ %54, %52 ]
  %58 = phi i32 [ %174, %173 ], [ 0, %52 ]
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !120
  switch i32 %53, label %168 [
    i32 0, label %69
    i32 1, label %63
    i32 2, label %61
  ]

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 11
  br label %158

63:                                               ; preds = %56
  %64 = load ptr, ptr @animcopybuf, align 8, !tbaa !44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %168, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 12
  %68 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 11
  br label %96

69:                                               ; preds = %56
  %70 = load ptr, ptr @animcopybuf, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %168, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 12
  %74 = getelementptr inbounds %struct.FCurve, ptr %60, i64 0, i32 11
  br label %75

75:                                               ; preds = %72, %93
  %76 = phi ptr [ %70, %72 ], [ %94, %93 ]
  br i1 %48, label %77, label %87

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %76, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !77
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %73, align 8, !tbaa !89
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %82) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84, %75
  br i1 %14, label %168, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %76, i64 0, i32 5
  %90 = load i32, ptr %89, align 8, !tbaa !91
  %91 = load i32, ptr %74, align 4, !tbaa !90
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %168, label %93

93:                                               ; preds = %88, %84, %81, %77
  %94 = load ptr, ptr %76, align 8, !tbaa !44
  %95 = icmp eq ptr %94, null
  br i1 %95, label %168, label %75, !llvm.loop !121

96:                                               ; preds = %66, %155
  %97 = phi ptr [ %64, %66 ], [ %156, %155 ]
  %98 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %97, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !77
  %100 = icmp eq ptr %99, null
  br i1 %100, label %155, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %67, align 8, !tbaa !89
  %103 = icmp eq ptr %102, null
  br i1 %103, label %155, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @G, align 8, !tbaa !122
  %106 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %97, i64 0, i32 8
  %107 = load i16, ptr %106, align 8, !tbaa !86
  %108 = call ptr @which_libbase(ptr noundef %105, i16 noundef signext %107) #10
  %109 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %97, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !84
  %111 = call i32 @BLI_findindex(ptr noundef %108, ptr noundef %110) #10
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %155

115:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %116 = load ptr, ptr %109, align 8, !tbaa !84
  call void @RNA_id_pointer_create(ptr noundef %116, ptr noundef nonnull %5) #10
  %117 = load ptr, ptr %98, align 8, !tbaa !77
  %118 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %5, ptr noundef %117, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %7, align 8, !tbaa !44
  %122 = call ptr @RNA_property_identifier(ptr noundef %121) #10
  %123 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %122) #11
  %124 = trunc i64 %123 to i32
  %125 = load ptr, ptr %67, align 8, !tbaa !89
  %126 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #11
  %127 = trunc i64 %126 to i32
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %142, label %129

129:                                              ; preds = %120
  %130 = sub i64 %126, %123
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = getelementptr inbounds i8, ptr %125, i64 %132
  %134 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %122, ptr noundef nonnull dereferenceable(1) %133) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  br i1 %14, label %143, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %97, i64 0, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !91
  %140 = load i32, ptr %68, align 4, !tbaa !90
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %137, %129, %120
  br label %143

143:                                              ; preds = %142, %137, %136
  %144 = phi i1 [ true, %142 ], [ false, %137 ], [ false, %136 ]
  %145 = phi i32 [ 0, %142 ], [ 2, %137 ], [ 2, %136 ]
  br i1 %144, label %151, label %152

146:                                              ; preds = %115
  %147 = load ptr, ptr %109, align 8, !tbaa !84
  %148 = getelementptr inbounds %struct.ID, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %98, align 8, !tbaa !77
  %150 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %148, ptr noundef %149)
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %143
  %153 = phi i32 [ 0, %151 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %152, %113, %101, %96
  %156 = load ptr, ptr %97, align 8, !tbaa !44
  %157 = icmp eq ptr %156, null
  br i1 %157, label %168, label %96, !llvm.loop !124

158:                                              ; preds = %61, %163
  %159 = phi ptr [ %160, %163 ], [ @animcopybuf, %61 ]
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = icmp eq ptr %160, null
  %162 = or i1 %14, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %160, i64 0, i32 5
  %165 = load i32, ptr %164, align 8, !tbaa !91
  %166 = load i32, ptr %62, align 4, !tbaa !90
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %158, !llvm.loop !125

168:                                              ; preds = %163, %158, %155, %152, %93, %87, %88, %63, %69, %56
  %169 = phi ptr [ null, %56 ], [ %70, %69 ], [ %64, %63 ], [ %76, %88 ], [ %76, %87 ], [ %94, %93 ], [ %97, %152 ], [ %156, %155 ], [ %160, %158 ], [ %160, %163 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = add i32 %58, 1
  call fastcc void @paste_animedit_keys_fcurve(ptr noundef %60, ptr noundef nonnull %169, float noundef %44, i32 noundef %3)
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi i32 [ %172, %171 ], [ %58, %168 ]
  %175 = getelementptr inbounds %struct.bAnimListElem, ptr %57, i64 0, i32 6
  %176 = load i16, ptr %175, align 4, !tbaa !126
  %177 = or i16 %176, 7
  store i16 %177, ptr %175, align 4, !tbaa !126
  %178 = load ptr, ptr %57, align 8, !tbaa !44
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %56, !llvm.loop !127

180:                                              ; preds = %173, %52
  %181 = phi i32 [ 0, %52 ], [ %174, %173 ]
  %182 = icmp ne i32 %181, 0
  %183 = add nuw nsw i32 %53, 1
  %184 = icmp eq i32 %183, 3
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %186, label %52, !llvm.loop !128

186:                                              ; preds = %180, %49
  call void @ANIM_animdata_update(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %187

187:                                              ; preds = %186, %29, %25
  %188 = phi i16 [ -1, %25 ], [ -1, %29 ], [ 0, %186 ]
  ret i16 %188
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @paste_animedit_keys_fcurve(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
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
  br i1 %18, label %19, label %10, !llvm.loop !129

19:                                               ; preds = %10, %4
  %20 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  switch i32 %3, label %95 [
    i32 1, label %21
    i32 2, label %23
    i32 3, label %32
  ]

21:                                               ; preds = %19
  %22 = icmp eq ptr %6, null
  br i1 %22, label %94, label %91

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds [3 x [3 x float]], ptr %25, i64 0, i64 1
  %27 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = sext i32 %28 to i64
  %30 = getelementptr %struct.BezTriple, ptr %25, i64 %29
  %31 = getelementptr %struct.BezTriple, ptr %30, i64 -1, i32 0, i64 1
  br label %32

32:                                               ; preds = %19, %23
  %33 = phi ptr [ %26, %23 ], [ @animcopy_firstframe, %19 ]
  %34 = phi ptr [ %31, %23 ], [ @animcopy_lastframe, %19 ]
  %35 = load float, ptr %34, align 4, !tbaa !53
  %36 = fadd float %35, %2
  %37 = load float, ptr %33, align 4, !tbaa !53
  %38 = fadd float %37, %2
  %39 = fcmp olt float %38, %36
  br i1 %39, label %40, label %95

40:                                               ; preds = %32
  %41 = icmp eq i32 %8, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %40, %54
  %43 = phi i32 [ %55, %54 ], [ 0, %40 ]
  %44 = phi ptr [ %56, %54 ], [ %6, %40 ]
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !53
  %47 = fcmp olt float %38, %46
  %48 = fcmp olt float %46, %36
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %52 = load i8, ptr %51, align 4, !tbaa !45
  %53 = or i8 %52, 1
  store i8 %53, ptr %51, align 4, !tbaa !45
  br label %54

54:                                               ; preds = %42, %50
  %55 = add nuw nsw i32 %43, 1
  %56 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 1
  %57 = icmp eq i32 %55, %8
  br i1 %57, label %58, label %42, !llvm.loop !130

58:                                               ; preds = %54, %40
  %59 = icmp eq ptr %6, null
  br i1 %59, label %95, label %60

60:                                               ; preds = %58
  %61 = icmp eq i32 %8, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %60, %81
  %63 = phi i32 [ %84, %81 ], [ %8, %60 ]
  %64 = phi i32 [ %83, %81 ], [ 0, %60 ]
  %65 = load ptr, ptr %5, align 8, !tbaa !43
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %66, i32 8
  %68 = load i8, ptr %67, align 4, !tbaa !45
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %62
  %72 = getelementptr %struct.BezTriple, ptr %65, i64 %66
  %73 = getelementptr %struct.BezTriple, ptr %72, i64 1
  %74 = xor i32 %64, -1
  %75 = add i32 %63, %74
  %76 = zext i32 %75 to i64
  %77 = mul nuw nsw i64 %76, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %72, ptr align 4 %73, i64 %77, i1 false)
  %78 = load i32, ptr %20, align 8, !tbaa !34
  %79 = add i32 %78, -1
  store i32 %79, ptr %20, align 8, !tbaa !34
  %80 = add nsw i32 %64, -1
  br label %81

81:                                               ; preds = %71, %62
  %82 = phi i32 [ %80, %71 ], [ %64, %62 ]
  %83 = add nsw i32 %82, 1
  %84 = load i32, ptr %20, align 8, !tbaa !34
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %62, label %86, !llvm.loop !47

86:                                               ; preds = %81
  %87 = icmp eq i32 %84, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %60, %86
  %89 = load ptr, ptr %5, align 8, !tbaa !43
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88, %21
  %92 = phi ptr [ %6, %21 ], [ %89, %88 ]
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %93(ptr noundef nonnull %92) #10
  br label %94

94:                                               ; preds = %91, %88, %21
  store ptr null, ptr %5, align 8, !tbaa !43
  store i32 0, ptr %20, align 8, !tbaa !34
  br label %95

95:                                               ; preds = %94, %86, %58, %32, %19
  %96 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %97 = load i32, ptr %96, align 4, !tbaa !92
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !76
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i32 [ %120, %102 ], [ 0, %99 ]
  %104 = phi ptr [ %121, %102 ], [ %101, %99 ]
  %105 = load float, ptr %104, align 4, !tbaa !53
  %106 = fadd float %105, %2
  store float %106, ptr %104, align 4, !tbaa !53
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %104, i64 0, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !53
  %109 = fadd float %108, %2
  store float %109, ptr %107, align 4, !tbaa !53
  %110 = getelementptr inbounds [3 x [3 x float]], ptr %104, i64 0, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !53
  %112 = fadd float %111, %2
  store float %112, ptr %110, align 4, !tbaa !53
  %113 = tail call i32 @insert_bezt_fcurve(ptr noundef %0, ptr noundef nonnull %104, i16 noundef signext 128) #10
  %114 = load float, ptr %104, align 4, !tbaa !53
  %115 = fsub float %114, %2
  store float %115, ptr %104, align 4, !tbaa !53
  %116 = load float, ptr %107, align 4, !tbaa !53
  %117 = fsub float %116, %2
  store float %117, ptr %107, align 4, !tbaa !53
  %118 = load float, ptr %110, align 4, !tbaa !53
  %119 = fsub float %118, %2
  store float %119, ptr %110, align 4, !tbaa !53
  %120 = add nuw nsw i32 %103, 1
  %121 = getelementptr inbounds %struct.BezTriple, ptr %104, i64 1
  %122 = load i32, ptr %96, align 4, !tbaa !92
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %102, label %124, !llvm.loop !131

124:                                              ; preds = %102, %95
  tail call void @calchandles_fcurve(ptr noundef %0) #10
  ret void
}

declare void @ANIM_animdata_update(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @insert_bezt_fcurve(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!46, !37, i64 51}
!51 = !{!46, !37, i64 53}
!52 = distinct !{!52, !48, !49}
!53 = !{!41, !41, i64 0}
!54 = distinct !{!54, !48, !49}
!55 = distinct !{!55, !48, !49}
!56 = !{!57, !36, i64 0}
!57 = !{!"tSmooth_Bezt", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32}
!58 = !{!57, !36, i64 8}
!59 = !{!57, !36, i64 16}
!60 = distinct !{!60, !48, !49}
!61 = !{!57, !41, i64 24}
!62 = !{!57, !41, i64 32}
!63 = !{!57, !41, i64 28}
!64 = distinct !{!64, !48, !49}
!65 = distinct !{!65, !48, !49}
!66 = !{!67, !41, i64 0}
!67 = !{!"TempFrameValCache", !41, i64 0, !41, i64 4}
!68 = !{!67, !41, i64 4}
!69 = distinct !{!69, !48, !49}
!70 = !{!46, !37, i64 54}
!71 = distinct !{!71, !48, !49}
!72 = distinct !{!72, !48, !49}
!73 = !{!39, !36, i64 0}
!74 = !{!75, !36, i64 0}
!75 = !{!"tAnimCopybufItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !36, i64 48, !42, i64 56}
!76 = !{!75, !36, i64 48}
!77 = !{!75, !36, i64 32}
!78 = distinct !{!78, !48, !49}
!79 = !{!80, !36, i64 48}
!80 = !{!"bAnimContext", !36, i64 0, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!81 = !{!82, !36, i64 40}
!82 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!83 = !{!82, !36, i64 48}
!84 = !{!75, !36, i64 16}
!85 = !{!42, !42, i64 0}
!86 = !{!75, !42, i64 56}
!87 = !{!35, !36, i64 16}
!88 = !{!75, !36, i64 24}
!89 = !{!35, !36, i64 80}
!90 = !{!35, !40, i64 76}
!91 = !{!75, !40, i64 40}
!92 = !{!75, !40, i64 44}
!93 = !{i64 0, i64 36, !94, i64 36, i64 4, !53, i64 40, i64 4, !53, i64 44, i64 4, !53, i64 48, i64 1, !94, i64 49, i64 1, !94, i64 50, i64 1, !94, i64 51, i64 1, !94, i64 52, i64 1, !94, i64 53, i64 1, !94, i64 54, i64 1, !94, i64 55, i64 1, !94, i64 56, i64 4, !53, i64 60, i64 4, !53, i64 64, i64 4, !53, i64 68, i64 4, !94}
!94 = !{!37, !37, i64 0}
!95 = distinct !{!95, !48, !49}
!96 = distinct !{!96, !48, !49}
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
!118 = !{!39, !36, i64 8}
!119 = !{!80, !36, i64 72}
!120 = !{!82, !36, i64 16}
!121 = distinct !{!121, !48, !49}
!122 = !{!123, !36, i64 0}
!123 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !37, i64 2090, !42, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!124 = distinct !{!124, !48, !49}
!125 = distinct !{!125, !48, !49}
!126 = !{!82, !42, i64 36}
!127 = distinct !{!127, !48, !49}
!128 = distinct !{!128, !48, !49}
!129 = distinct !{!129, !48, !49}
!130 = distinct !{!130, !48, !49}
!131 = distinct !{!131, !48, !49}
