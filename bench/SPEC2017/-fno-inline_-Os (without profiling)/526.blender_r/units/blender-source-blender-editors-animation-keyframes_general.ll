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
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = icmp slt i32 %1, 0
  %12 = select i1 %11, i32 %8, i32 0
  %13 = add i32 %12, %1
  %14 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = sext i32 %13 to i64
  %17 = getelementptr %struct.BezTriple, ptr %15, i64 %16
  %18 = getelementptr %struct.BezTriple, ptr %17, i64 1
  %19 = xor i32 %13, -1
  %20 = add i32 %8, %19
  %21 = zext i32 %20 to i64
  %22 = mul nuw nsw i64 %21, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %17, ptr align 4 %18, i64 %22, i1 false)
  %23 = load i32, ptr %7, align 8, !tbaa !5
  %24 = add i32 %23, -1
  store i32 %24, ptr %7, align 8, !tbaa !5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %10
  %27 = load ptr, ptr %14, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %30(ptr noundef nonnull %27) #14
  br label %31

31:                                               ; preds = %29, %26
  store ptr null, ptr %14, align 8, !tbaa !14
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
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %29
  %10 = phi i32 [ %30, %29 ], [ %7, %5 ]
  %11 = phi i8 [ %32, %29 ], [ 0, %5 ]
  %12 = phi i32 [ %33, %29 ], [ 0, %5 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !14
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %14, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !16
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
  %26 = load i32, ptr %6, align 8, !tbaa !5
  %27 = add i32 %26, -1
  store i32 %27, ptr %6, align 8, !tbaa !5
  %28 = add nsw i32 %12, -1
  br label %29

29:                                               ; preds = %9, %19
  %30 = phi i32 [ %27, %19 ], [ %10, %9 ]
  %31 = phi i32 [ %28, %19 ], [ %12, %9 ]
  %32 = phi i8 [ 1, %19 ], [ %11, %9 ]
  %33 = add nsw i32 %31, 1
  %34 = icmp ult i32 %33, %30
  br i1 %34, label %9, label %35, !llvm.loop !18

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
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %6(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  store i32 0, ptr %8, align 8, !tbaa !5
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
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %7, %65
  %12 = phi i32 [ %66, %65 ], [ %9, %7 ]
  %13 = phi ptr [ %67, %65 ], [ %5, %7 ]
  %14 = phi i32 [ %69, %65 ], [ 0, %7 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %15, i32 8
  %17 = load i8, ptr %16, align 4, !tbaa !16
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %11
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !15
  %22 = add i32 %12, 1
  %23 = zext i32 %22 to i64
  %24 = mul nuw nsw i64 %23, 72
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str) #14
  %26 = load ptr, ptr %4, align 8, !tbaa !14
  %27 = add nuw nsw i32 %14, 1
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %25, ptr noundef nonnull align 4 dereferenceable(1) %26, i64 %29, i1 false)
  %30 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15
  %31 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %32 = load ptr, ptr %4, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.BezTriple, ptr %32, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %31, ptr noundef nonnull align 4 dereferenceable(72) %33, i64 72, i1 false)
  %34 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 2
  %35 = load ptr, ptr %4, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.BezTriple, ptr %35, i64 %15
  %37 = getelementptr inbounds %struct.BezTriple, ptr %36, i64 1
  %38 = load i32, ptr %8, align 8, !tbaa !5
  %39 = sub i32 %38, %27
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %34, ptr nonnull align 4 %37, i64 %41, i1 false)
  %42 = load i32, ptr %8, align 8, !tbaa !5
  %43 = add i32 %42, 1
  store i32 %43, ptr %8, align 8, !tbaa !5
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  %45 = load ptr, ptr %4, align 8, !tbaa !14
  tail call void %44(ptr noundef %45) #14
  store ptr %25, ptr %4, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 7
  %47 = load i8, ptr %46, align 1, !tbaa !20
  %48 = and i8 %47, -2
  store i8 %48, ptr %46, align 1, !tbaa !20
  %49 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 8
  %50 = load i8, ptr %49, align 4, !tbaa !16
  %51 = and i8 %50, -2
  store i8 %51, ptr %49, align 4, !tbaa !16
  %52 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %15, i32 9
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = and i8 %53, -2
  store i8 %54, ptr %52, align 1, !tbaa !21
  %55 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !20
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1, !tbaa !20
  %58 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 8
  %59 = load i8, ptr %58, align 4, !tbaa !16
  %60 = or i8 %59, 1
  store i8 %60, ptr %58, align 4, !tbaa !16
  %61 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 %28, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !21
  %63 = or i8 %62, 1
  store i8 %63, ptr %61, align 1, !tbaa !21
  %64 = load i32, ptr %8, align 8, !tbaa !5
  br label %65

65:                                               ; preds = %11, %20
  %66 = phi i32 [ %64, %20 ], [ %12, %11 ]
  %67 = phi ptr [ %25, %20 ], [ %13, %11 ]
  %68 = phi i32 [ %27, %20 ], [ %14, %11 ]
  %69 = add nsw i32 %68, 1
  %70 = icmp ult i32 %69, %66
  br i1 %70, label %11, label %71, !llvm.loop !22

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
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %108, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %108, label %12

12:                                               ; preds = %8
  store ptr null, ptr %5, align 8, !tbaa !14
  store i32 0, ptr %9, align 8, !tbaa !5
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !23
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !23
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
  %30 = load float, ptr %29, align 4, !tbaa !23
  %31 = getelementptr %struct.BezTriple, ptr %27, i64 1, i32 0, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !23
  br label %33

33:                                               ; preds = %23, %26
  %34 = phi ptr [ %28, %26 ], [ null, %23 ]
  %35 = phi float [ %32, %26 ], [ 0.000000e+00, %23 ]
  %36 = phi float [ %30, %26 ], [ 0.000000e+00, %23 ]
  %37 = load ptr, ptr %5, align 8, !tbaa !14
  %38 = load i32, ptr %9, align 8, !tbaa !5
  %39 = add i32 %38, -1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 %40, i32 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !23
  %43 = getelementptr inbounds %struct.BezTriple, ptr %37, i64 %40, i32 0, i64 1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !23
  %45 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !23
  %47 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %24, i32 0, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !23
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
  br i1 %105, label %106, label %23, !llvm.loop !24

106:                                              ; preds = %103, %12
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
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
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %163, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %162, label %9

9:                                                ; preds = %5, %29
  %10 = phi ptr [ %32, %29 ], [ %3, %5 ]
  %11 = phi i32 [ %31, %29 ], [ 0, %5 ]
  %12 = phi i32 [ %30, %29 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !16
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 7
  %19 = load i8, ptr %18, align 1, !tbaa !20
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.BezTriple, ptr %10, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !21
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
  br i1 %33, label %34, label %9, !llvm.loop !25

34:                                               ; preds = %29
  %35 = icmp sgt i32 %30, 2
  br i1 %35, label %36, label %162

36:                                               ; preds = %34
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !15
  %38 = zext nneg i32 %30 to i64
  %39 = mul nuw nsw i64 %38, 40
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @.str.1) #14
  %41 = load i32, ptr %6, align 8, !tbaa !5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %2, align 8, !tbaa !14
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
  %53 = load i8, ptr %52, align 4, !tbaa !16
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !20
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !21
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61, %56, %48
  %67 = getelementptr inbounds [3 x float], ptr %49, i64 0, i64 1
  store ptr %67, ptr %51, align 8, !tbaa !26
  %68 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 1, i64 1
  %69 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !28
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %49, i64 0, i64 2, i64 1
  %71 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 0, i32 2
  store ptr %70, ptr %71, align 8, !tbaa !29
  %72 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %51, i64 1
  br label %73

73:                                               ; preds = %61, %66
  %74 = phi ptr [ %72, %66 ], [ %51, %61 ]
  %75 = add nuw nsw i32 %50, 1
  %76 = getelementptr inbounds %struct.BezTriple, ptr %49, i64 1
  %77 = icmp eq i32 %75, %41
  br i1 %77, label %45, label %48, !llvm.loop !30

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
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = load float, ptr %92, align 4, !tbaa !23
  br i1 %88, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr %struct.tSmooth_Bezt, ptr %83, i64 -2, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !28
  %97 = load float, ptr %96, align 4, !tbaa !23
  br label %98

98:                                               ; preds = %87, %94
  %99 = phi float [ %97, %94 ], [ %93, %87 ]
  %100 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !28
  %102 = load float, ptr %101, align 4, !tbaa !23
  %103 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 1, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = load float, ptr %104, align 4, !tbaa !23
  br i1 %90, label %106, label %110

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 2, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !28
  %109 = load float, ptr %108, align 4, !tbaa !23
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
  store float %117, ptr %118, align 8, !tbaa !31
  %119 = fadd float %93, %99
  %120 = tail call float @llvm.fmuladd.f32(float %102, float 2.000000e+00, float %119)
  %121 = tail call float @llvm.fmuladd.f32(float %105, float 5.000000e+00, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %111, float 3.000000e+00, float %121)
  %123 = fdiv float %122, 1.200000e+01
  %124 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 5
  store float %123, ptr %124, align 8, !tbaa !32
  %125 = fadd float %117, %123
  %126 = fmul float %125, 5.000000e-01
  %127 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 0, i32 4
  store float %126, ptr %127, align 4, !tbaa !33
  br label %128

128:                                              ; preds = %81, %110
  %129 = add nuw nsw i32 %82, 1
  %130 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %83, i64 1
  %131 = icmp eq i32 %129, %47
  br i1 %131, label %78, label %81, !llvm.loop !34

132:                                              ; preds = %78, %156
  %133 = phi i32 [ 0, %78 ], [ %157, %156 ]
  %134 = phi ptr [ %40, %78 ], [ %158, %156 ]
  %135 = icmp ne i32 %133, 0
  %136 = icmp ne i32 %133, %79
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 4
  %140 = load float, ptr %139, align 4, !tbaa !33
  %141 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !28
  store float %140, ptr %142, align 4, !tbaa !23
  %143 = load ptr, ptr %134, align 8, !tbaa !26
  %144 = load float, ptr %143, align 4, !tbaa !23
  %145 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 3
  %146 = load float, ptr %145, align 8, !tbaa !31
  %147 = fmul float %146, 0x3FD3333340000000
  %148 = tail call float @llvm.fmuladd.f32(float %144, float 0x3FE6666660000000, float %147)
  store float %148, ptr %143, align 4, !tbaa !23
  %149 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !29
  %151 = load float, ptr %150, align 4, !tbaa !23
  %152 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 0, i32 5
  %153 = load float, ptr %152, align 8, !tbaa !32
  %154 = fmul float %153, 0x3FD3333340000000
  %155 = tail call float @llvm.fmuladd.f32(float %151, float 0x3FE6666660000000, float %154)
  store float %155, ptr %150, align 4, !tbaa !23
  br label %156

156:                                              ; preds = %132, %138
  %157 = add nuw nsw i32 %133, 1
  %158 = getelementptr inbounds %struct.tSmooth_Bezt, ptr %134, i64 1
  %159 = icmp eq i32 %157, %80
  br i1 %159, label %160, label %132, !llvm.loop !35

160:                                              ; preds = %156
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
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
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %5, %83
  %10 = phi i32 [ %84, %83 ], [ %7, %5 ]
  %11 = phi ptr [ %89, %83 ], [ %3, %5 ]
  %12 = phi i32 [ %88, %83 ], [ 0, %5 ]
  %13 = phi ptr [ %85, %83 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !16
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !20
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 9
  %25 = load i8, ptr %24, align 1, !tbaa !21
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %83, label %28

28:                                               ; preds = %23, %18, %9
  %29 = icmp eq ptr %13, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !23
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !23
  %35 = fsub float %32, %34
  %36 = tail call float @llvm.ceil.f32(float %35)
  %37 = fptosi float %36 to i32
  %38 = tail call float @llvm.floor.f32(float %34)
  %39 = fptosi float %38 to i32
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %83, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !15
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
  store float %54, ptr %52, align 4, !tbaa !36
  %55 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %54) #14
  %56 = getelementptr inbounds %struct.TempFrameValCache, ptr %52, i64 0, i32 1
  store float %55, ptr %56, align 4, !tbaa !38
  %57 = add nuw nsw i32 %51, 1
  %58 = getelementptr inbounds %struct.TempFrameValCache, ptr %52, i64 1
  %59 = icmp eq i32 %57, %37
  br i1 %59, label %49, label %50, !llvm.loop !39

60:                                               ; preds = %49, %60
  %61 = phi i32 [ %70, %60 ], [ 1, %49 ]
  %62 = phi ptr [ %71, %60 ], [ %45, %49 ]
  %63 = load float, ptr %62, align 4, !tbaa !36
  %64 = getelementptr inbounds %struct.TempFrameValCache, ptr %62, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !38
  %66 = tail call i32 @insert_vert_fcurve(ptr noundef %0, float noundef %63, float noundef %65, i16 noundef signext 1) #14
  %67 = load ptr, ptr %2, align 8, !tbaa !14
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.BezTriple, ptr %67, i64 %68, i32 10
  store i8 2, ptr %69, align 2, !tbaa !40
  %70 = add nuw nsw i32 %61, 1
  %71 = getelementptr inbounds %struct.TempFrameValCache, ptr %62, i64 1
  %72 = icmp eq i32 %70, %37
  br i1 %72, label %73, label %60, !llvm.loop !41

73:                                               ; preds = %60, %41, %49
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %74(ptr noundef %45) #14
  %75 = load ptr, ptr %2, align 8, !tbaa !14
  %76 = sext i32 %12 to i64
  %77 = getelementptr inbounds %struct.BezTriple, ptr %75, i64 %76
  %78 = getelementptr inbounds %struct.BezTriple, ptr %77, i64 %43
  %79 = getelementptr inbounds %struct.BezTriple, ptr %78, i64 -1
  %80 = add nsw i32 %12, -1
  %81 = add i32 %80, %37
  %82 = load i32, ptr %6, align 8, !tbaa !5
  br label %83

83:                                               ; preds = %28, %30, %73, %23
  %84 = phi i32 [ %10, %23 ], [ %82, %73 ], [ %10, %30 ], [ %10, %28 ]
  %85 = phi ptr [ %13, %23 ], [ %79, %73 ], [ %11, %30 ], [ %11, %28 ]
  %86 = phi i32 [ %12, %23 ], [ %81, %73 ], [ %12, %30 ], [ %12, %28 ]
  %87 = phi ptr [ %11, %23 ], [ %79, %73 ], [ %11, %30 ], [ %11, %28 ]
  %88 = add nsw i32 %86, 1
  %89 = getelementptr inbounds %struct.BezTriple, ptr %87, i64 1
  %90 = icmp ult i32 %88, %84
  br i1 %90, label %9, label %91, !llvm.loop !42

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
  %1 = load ptr, ptr @animcopybuf, align 8, !tbaa !43
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0, %17
  %4 = phi ptr [ %5, %17 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %10(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %4, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %16(ptr noundef nonnull %13) #14
  br label %17

17:                                               ; preds = %15, %11
  tail call void @BLI_freelinkN(ptr noundef nonnull @animcopybuf, ptr noundef nonnull %4) #14
  %18 = icmp eq ptr %5, null
  br i1 %18, label %19, label %3, !llvm.loop !48

19:                                               ; preds = %17, %0
  tail call fastcc void @BLI_listbase_clear() #15
  store float 1.000000e+09, ptr @animcopy_firstframe, align 4, !tbaa !23
  store float -1.000000e+09, ptr @animcopy_lastframe, align 4, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_listbase_clear() unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @animcopybuf, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @copy_animedit_keys(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @free_anim_copybuf() #15
  %5 = load ptr, ptr %1, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %109, label %7

7:                                                ; preds = %2, %106
  %8 = phi ptr [ %107, %106 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 3) #14
  %12 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef null, ptr noundef %10, ptr noundef null, ptr noundef %11, ptr noundef null) #14
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %106, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !15
  %16 = tail call ptr %15(i64 noundef 64, ptr noundef nonnull @.str.3) #14
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 8
  store i16 %21, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !58
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = tail call ptr %26(ptr noundef %28) #14
  %30 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !60
  %33 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 5
  store i32 %32, ptr %33, align 8, !tbaa !61
  tail call void @BLI_addtail(ptr noundef nonnull @animcopybuf, ptr noundef %16) #14
  %34 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %106, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 6
  %41 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %16, i64 0, i32 7
  br label %42

42:                                               ; preds = %37, %101
  %43 = phi i32 [ 0, %37 ], [ %102, %101 ]
  %44 = phi ptr [ %39, %37 ], [ %103, %101 ]
  %45 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !16
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 7
  %51 = load i8, ptr %50, align 1, !tbaa !20
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 9
  %56 = load i8, ptr %55, align 1, !tbaa !21
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %54, %49, %42
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !15
  %61 = load i32, ptr %40, align 4, !tbaa !62
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 72
  %65 = tail call ptr %60(i64 noundef %64, ptr noundef nonnull @.str.4) #14
  %66 = load ptr, ptr %41, align 8, !tbaa !46
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, ptr %40, align 4, !tbaa !62
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %65, ptr nonnull align 4 %66, i64 %71, i1 false)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, ptr %40, align 4, !tbaa !62
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %75, ptr noundef nonnull align 4 dereferenceable(72) %44, i64 72, i1 false), !tbaa.struct !63
  %76 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 7
  %77 = load i8, ptr %76, align 1, !tbaa !20
  %78 = or i8 %77, 1
  store i8 %78, ptr %76, align 1, !tbaa !20
  %79 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 8
  %80 = load i8, ptr %79, align 4, !tbaa !16
  %81 = or i8 %80, 1
  store i8 %81, ptr %79, align 4, !tbaa !16
  %82 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 %74, i32 9
  %83 = load i8, ptr %82, align 1, !tbaa !21
  %84 = or i8 %83, 1
  store i8 %84, ptr %82, align 1, !tbaa !21
  %85 = load ptr, ptr %41, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %72
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !15
  tail call void %88(ptr noundef nonnull %85) #14
  br label %89

89:                                               ; preds = %87, %72
  store ptr %65, ptr %41, align 8, !tbaa !46
  %90 = load i32, ptr %40, align 4, !tbaa !62
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %40, align 4, !tbaa !62
  %92 = getelementptr inbounds [3 x [3 x float]], ptr %44, i64 0, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !23
  %94 = load float, ptr @animcopy_firstframe, align 4, !tbaa !23
  %95 = fcmp olt float %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store float %93, ptr @animcopy_firstframe, align 4, !tbaa !23
  br label %97

97:                                               ; preds = %96, %89
  %98 = load float, ptr @animcopy_lastframe, align 4, !tbaa !23
  %99 = fcmp ogt float %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store float %93, ptr @animcopy_lastframe, align 4, !tbaa !23
  br label %101

101:                                              ; preds = %54, %100, %97
  %102 = add nuw nsw i32 %43, 1
  %103 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 1
  %104 = load i32, ptr %34, align 8, !tbaa !5
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %42, label %106, !llvm.loop !65

106:                                              ; preds = %101, %14, %7
  %107 = load ptr, ptr %8, align 8, !tbaa !15
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %7, !llvm.loop !66

109:                                              ; preds = %106, %2
  %110 = load ptr, ptr @animcopybuf, align 8, !tbaa !43
  %111 = icmp eq ptr %110, null
  %112 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @animcopybuf, i64 0, i32 1), align 8
  %113 = icmp eq ptr %112, null
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !67
  %118 = sitofp i32 %117 to float
  store float %118, ptr @animcopy_cfra, align 4, !tbaa !23
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
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef nonnull @animcopybuf) #15, !range !88
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_single(ptr noundef %1) #15, !range !88
  %9 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull @animcopybuf) #15, !range !88
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.29) #14
  br label %82

14:                                               ; preds = %4
  %15 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #15, !range !88
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !89
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
  %27 = load i32, ptr %26, align 8, !tbaa !67
  %28 = sitofp i32 %27 to float
  %29 = load float, ptr %25, align 4, !tbaa !23
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
  %40 = load ptr, ptr %1, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !90
  %43 = load ptr, ptr @animcopybuf, align 8, !tbaa !43
  tail call fastcc void @paste_animedit_keys_fcurve(ptr noundef %42, ptr noundef %43, float noundef %32, i32 noundef %3) #15
  br label %81

44:                                               ; preds = %49
  %45 = add nuw nsw i32 %50, 1
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %81, label %47

47:                                               ; preds = %44, %76
  %48 = phi i32 [ %45, %44 ], [ %78, %76 ]
  br label %49, !llvm.loop !91

49:                                               ; preds = %47, %36
  %50 = phi i32 [ 0, %36 ], [ %48, %47 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %44, label %53

53:                                               ; preds = %49, %69
  %54 = phi ptr [ %74, %69 ], [ %51, %49 ]
  %55 = phi i32 [ %70, %69 ], [ 0, %49 ]
  %56 = getelementptr inbounds %struct.bAnimListElem, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !90
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
  %72 = load i16, ptr %71, align 4, !tbaa !92
  %73 = or i16 %72, 7
  store i16 %73, ptr %71, align 4, !tbaa !92
  %74 = load ptr, ptr %54, align 8, !tbaa !15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %53, !llvm.loop !93

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
define internal fastcc zeroext i8 @BLI_listbase_is_single(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %2, %6
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paste_animedit_keys_fcurve(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %4 ]
  %12 = phi ptr [ %17, %10 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !16
  %15 = and i8 %14, -2
  store i8 %15, ptr %13, align 4, !tbaa !16
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.BezTriple, ptr %12, i64 1
  %18 = icmp eq i32 %16, %8
  br i1 %18, label %19, label %10, !llvm.loop !95

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
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %23, i64 0, i64 1
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.BezTriple, ptr %23, i64 %27
  %29 = getelementptr %struct.BezTriple, ptr %28, i64 -1, i32 0, i64 1
  br label %30

30:                                               ; preds = %19, %21
  %31 = phi ptr [ %24, %21 ], [ @animcopy_firstframe, %19 ]
  %32 = phi ptr [ %29, %21 ], [ @animcopy_lastframe, %19 ]
  %33 = load float, ptr %32, align 4, !tbaa !23
  %34 = fadd float %33, %2
  %35 = load float, ptr %31, align 4, !tbaa !23
  %36 = fadd float %35, %2
  %37 = fcmp olt float %36, %34
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  br i1 %9, label %55, label %39

39:                                               ; preds = %38, %51
  %40 = phi i32 [ %52, %51 ], [ 0, %38 ]
  %41 = phi ptr [ %53, %51 ], [ %6, %38 ]
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %41, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !23
  %44 = fcmp olt float %36, %43
  %45 = fcmp olt float %43, %34
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 0, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !16
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 4, !tbaa !16
  br label %51

51:                                               ; preds = %39, %47
  %52 = add nuw nsw i32 %40, 1
  %53 = getelementptr inbounds %struct.BezTriple, ptr %41, i64 1
  %54 = icmp eq i32 %52, %8
  br i1 %54, label %55, label %39, !llvm.loop !96

55:                                               ; preds = %51, %38
  %56 = tail call zeroext i8 @delete_fcurve_keys(ptr noundef %0) #15, !range !88
  br label %57

57:                                               ; preds = %30, %55, %19, %20
  %58 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !62
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %1, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i32 [ %82, %64 ], [ 0, %61 ]
  %66 = phi ptr [ %83, %64 ], [ %63, %61 ]
  %67 = load float, ptr %66, align 4, !tbaa !23
  %68 = fadd float %67, %2
  store float %68, ptr %66, align 4, !tbaa !23
  %69 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !23
  %71 = fadd float %70, %2
  store float %71, ptr %69, align 4, !tbaa !23
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !23
  %74 = fadd float %73, %2
  store float %74, ptr %72, align 4, !tbaa !23
  %75 = tail call i32 @insert_bezt_fcurve(ptr noundef %0, ptr noundef nonnull %66, i16 noundef signext 128) #14
  %76 = load float, ptr %66, align 4, !tbaa !23
  %77 = fsub float %76, %2
  store float %77, ptr %66, align 4, !tbaa !23
  %78 = load float, ptr %69, align 4, !tbaa !23
  %79 = fsub float %78, %2
  store float %79, ptr %69, align 4, !tbaa !23
  %80 = load float, ptr %72, align 4, !tbaa !23
  %81 = fsub float %80, %2
  store float %81, ptr %72, align 4, !tbaa !23
  %82 = add nuw nsw i32 %65, 1
  %83 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1
  %84 = load i32, ptr %58, align 4, !tbaa !62
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %64, label %86, !llvm.loop !97

86:                                               ; preds = %64, %57
  tail call void @calchandles_fcurve(ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @pastebuf_match_path_full(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #7 {
  %4 = load ptr, ptr @animcopybuf, align 8, !tbaa !15
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
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !59
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
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = load i32, ptr %10, align 4, !tbaa !60
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %13, %17, %24, %20
  %30 = load ptr, ptr %12, align 8, !tbaa !15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !98

32:                                               ; preds = %29, %24, %23, %3
  %33 = phi ptr [ null, %3 ], [ %12, %23 ], [ %12, %24 ], [ null, %29 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pastebuf_match_path_property(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr @animcopybuf, align 8, !tbaa !15
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
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @G, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 8
  %23 = load i16, ptr %22, align 8, !tbaa !56
  %24 = call ptr @which_libbase(ptr noundef %21, i16 noundef signext %23) #14
  %25 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !54
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
  %32 = load ptr, ptr %25, align 8, !tbaa !54
  call void @RNA_id_pointer_create(ptr noundef %32, ptr noundef nonnull %3) #14
  %33 = load ptr, ptr %14, align 8, !tbaa !47
  %34 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8, !tbaa !15
  %38 = call ptr @RNA_property_identifier(ptr noundef %37) #14
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #16
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %9, align 8, !tbaa !59
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
  %55 = load i32, ptr %54, align 8, !tbaa !61
  %56 = load i32, ptr %11, align 4, !tbaa !60
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %63

58:                                               ; preds = %31
  %59 = load ptr, ptr %25, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %14, align 8, !tbaa !47
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
  %66 = load ptr, ptr %13, align 8, !tbaa !15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %12, !llvm.loop !101

68:                                               ; preds = %65, %2, %64
  %69 = phi ptr [ %13, %64 ], [ null, %2 ], [ null, %65 ]
  ret ptr %69
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @pastebuf_match_index_only(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #8 {
  %3 = icmp ne i16 %1, 0
  %4 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 11
  br label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ @animcopybuf, %2 ], [ %7, %10 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  %9 = or i1 %3, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tAnimCopybufItem, ptr %7, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = load i32, ptr %4, align 4, !tbaa !60
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %5, !llvm.loop !102

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 64}
!6 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !11, i64 64, !12, i64 68, !13, i64 72, !13, i64 74, !11, i64 76, !7, i64 80, !11, i64 88, !8, i64 92, !12, i64 104, !12, i64 108}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !7, i64 48}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !8, i64 52}
!17 = !{!"BezTriple", !8, i64 0, !12, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!17, !8, i64 51}
!21 = !{!17, !8, i64 53}
!22 = distinct !{!22, !19}
!23 = !{!12, !12, i64 0}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = !{!27, !7, i64 0}
!27 = !{!"tSmooth_Bezt", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!28 = !{!27, !7, i64 8}
!29 = !{!27, !7, i64 16}
!30 = distinct !{!30, !19}
!31 = !{!27, !12, i64 24}
!32 = !{!27, !12, i64 32}
!33 = !{!27, !12, i64 28}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!37, !12, i64 0}
!37 = !{!"TempFrameValCache", !12, i64 0, !12, i64 4}
!38 = !{!37, !12, i64 4}
!39 = distinct !{!39, !19}
!40 = !{!17, !8, i64 54}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = !{!10, !7, i64 0}
!44 = !{!45, !7, i64 0}
!45 = !{!"tAnimCopybufItem", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !7, i64 48, !13, i64 56}
!46 = !{!45, !7, i64 48}
!47 = !{!45, !7, i64 32}
!48 = distinct !{!48, !19}
!49 = !{!50, !7, i64 48}
!50 = !{!"bAnimContext", !7, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!51 = !{!52, !7, i64 40}
!52 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 36, !13, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!53 = !{!52, !7, i64 48}
!54 = !{!45, !7, i64 16}
!55 = !{!13, !13, i64 0}
!56 = !{!45, !13, i64 56}
!57 = !{!6, !7, i64 16}
!58 = !{!45, !7, i64 24}
!59 = !{!6, !7, i64 80}
!60 = !{!6, !11, i64 76}
!61 = !{!45, !11, i64 40}
!62 = !{!45, !11, i64 44}
!63 = !{i64 0, i64 36, !64, i64 36, i64 4, !23, i64 40, i64 4, !23, i64 44, i64 4, !23, i64 48, i64 1, !64, i64 49, i64 1, !64, i64 50, i64 1, !64, i64 51, i64 1, !64, i64 52, i64 1, !64, i64 53, i64 1, !64, i64 54, i64 1, !64, i64 55, i64 1, !64, i64 56, i64 4, !23, i64 60, i64 4, !23, i64 64, i64 4, !23, i64 68, i64 4, !64}
!64 = !{!8, !8, i64 0}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = !{!68, !11, i64 680}
!68 = !{!"Scene", !69, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !70, i64 280, !79, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !11, i64 4380, !10, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !7, i64 4608, !85, i64 4616, !7, i64 4640, !86, i64 4648, !86, i64 4656, !72, i64 4664, !73, i64 4824, !87, i64 4888, !7, i64 4952}
!69 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!70 = !{!"RenderData", !71, i64 0, !7, i64 248, !7, i64 256, !74, i64 264, !75, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !13, i64 432, !13, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !11, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !11, i64 484, !11, i64 488, !13, i64 492, !13, i64 494, !11, i64 496, !11, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !10, i64 592, !13, i64 608, !13, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !12, i64 660, !12, i64 664, !13, i64 668, !13, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !13, i64 2524, !13, i64 2526, !12, i64 2528, !12, i64 2532, !13, i64 2536, !13, i64 2538, !12, i64 2540, !13, i64 2544, !13, i64 2546, !11, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !78, i64 2616, !11, i64 3976, !11, i64 3980}
!71 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!74 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !13, i64 48, !13, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!75 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!76 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!77 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!78 = !{!"BakeData", !71, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!79 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !13, i64 20, !13, i64 22, !12, i64 24, !12, i64 28}
!80 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!81 = !{!"GameData", !80, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !82, i64 40, !13, i64 64, !13, i64 66, !12, i64 68, !83, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!82 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!83 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !13, i64 52, !13, i64 54}
!84 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!85 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!86 = !{!"long", !8, i64 0}
!87 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!88 = !{i8 0, i8 2}
!89 = !{!50, !7, i64 72}
!90 = !{!52, !7, i64 16}
!91 = distinct !{!91, !19}
!92 = !{!52, !13, i64 36}
!93 = distinct !{!93, !19}
!94 = !{!10, !7, i64 8}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = !{!100, !7, i64 0}
!100 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !13, i64 2084, !13, i64 2086, !13, i64 2088, !8, i64 2090, !13, i64 2092, !11, i64 2096, !11, i64 2100, !8, i64 2104, !11, i64 2108, !11, i64 2112, !8, i64 2116}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
