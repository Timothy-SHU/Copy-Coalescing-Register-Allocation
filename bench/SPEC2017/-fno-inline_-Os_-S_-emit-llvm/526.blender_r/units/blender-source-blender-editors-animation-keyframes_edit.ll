; ModuleID = 'blender/source/blender/editors/animation/keyframes_edit.c'
source_filename = "blender/source/blender/editors/animation/keyframes_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ListBase = type { ptr, ptr }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.KeyframeEditCD_Remap = type { float, float, float, float }
%struct.KeyframeEdit_LassoData = type { ptr, ptr, ptr, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfraElem\00", align 1
@switch.table.ANIM_editkeyframes_ok = private unnamed_addr constant [7 x ptr] [ptr @ok_bezier_frame, ptr @ok_bezier_framerange, ptr @ok_bezier_selected, ptr @ok_bezier_value, ptr @ok_bezier_valuerange, ptr @ok_bezier_region, ptr @ok_bezier_region_lasso], align 8
@switch.table.ANIM_editkeyframes_snap = private unnamed_addr constant [6 x ptr] [ptr @snap_bezier_cframe, ptr @snap_bezier_nearest, ptr @snap_bezier_nearestsec, ptr @snap_bezier_nearmarker, ptr @snap_bezier_horizontal, ptr @snap_bezier_value], align 8
@switch.table.ANIM_editkeyframes_mirror = private unnamed_addr constant [5 x ptr] [ptr @mirror_bezier_cframe, ptr @mirror_bezier_yaxis, ptr @mirror_bezier_xaxis, ptr @mirror_bezier_marker, ptr @mirror_bezier_value], align 8
@switch.table.ANIM_editkeyframes_handles = private unnamed_addr constant [5 x ptr] [ptr @set_bezier_free, ptr @set_bezier_auto, ptr @set_bezier_vector, ptr @set_bezier_align, ptr @set_bezier_auto_clamped], align 8
@switch.table.ANIM_editkeyframes_ipo = private unnamed_addr constant [13 x ptr] [ptr @set_bezt_constant, ptr @set_bezt_linear, ptr @set_bezt_bezier, ptr @set_bezt_back, ptr @set_bezt_bounce, ptr @set_bezt_circle, ptr @set_bezt_cubic, ptr @set_bezt_elastic, ptr @set_bezt_expo, ptr @set_bezt_quad, ptr @set_bezt_quart, ptr @set_bezt_quint, ptr @set_bezt_sine], align 8
@switch.table.ANIM_editkeyframes_keytype = private unnamed_addr constant [3 x ptr] [ptr @set_keytype_extreme, ptr @set_keytype_breakdown, ptr @set_keytype_jitter], align 8
@switch.table.ANIM_editkeyframes_easing = private unnamed_addr constant [3 x ptr] [ptr @set_easingtype_easein, ptr @set_easingtype_easeout, ptr @set_easingtype_easeinout], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %0, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  store ptr %1, ptr %14, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  store i16 0, ptr %16, align 4, !tbaa !17
  br label %17

17:                                               ; preds = %13, %11
  %18 = icmp eq ptr %3, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %17
  %20 = icmp eq ptr %2, null
  %21 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %20, label %28, label %24

24:                                               ; preds = %19
  br i1 %23, label %61, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %27 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  br label %31

28:                                               ; preds = %19
  br i1 %23, label %61, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  br label %49

31:                                               ; preds = %25, %44
  %32 = phi i32 [ 0, %25 ], [ %46, %44 ]
  %33 = phi ptr [ %9, %25 ], [ %45, %44 ]
  br i1 %12, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call signext i16 %2(ptr noundef null, ptr noundef nonnull %33) #12
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %44, label %41

37:                                               ; preds = %31
  store i32 %32, ptr %26, align 8, !tbaa !16
  store i16 0, ptr %27, align 4, !tbaa !17
  %38 = tail call signext i16 %2(ptr noundef nonnull %0, ptr noundef nonnull %33) #12
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  store i16 %38, ptr %27, align 4, !tbaa !17
  br label %41

41:                                               ; preds = %34, %40
  %42 = tail call signext i16 %3(ptr noundef %0, ptr noundef nonnull %33) #12
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %37, %34, %41
  %45 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %46 = add nuw i32 %32, 1
  %47 = load i32, ptr %21, align 8, !tbaa !18
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %31, label %61, !llvm.loop !19

49:                                               ; preds = %29, %56
  %50 = phi i32 [ 0, %29 ], [ %58, %56 ]
  %51 = phi ptr [ %9, %29 ], [ %57, %56 ]
  br i1 %12, label %53, label %52

52:                                               ; preds = %49
  store i32 %50, ptr %30, align 8, !tbaa !16
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call signext i16 %3(ptr noundef %0, ptr noundef nonnull %51) #12
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 1
  %58 = add nuw i32 %50, 1
  %59 = load i32, ptr %21, align 8, !tbaa !18
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %49, label %61, !llvm.loop !21

61:                                               ; preds = %44, %56, %24, %28, %17
  br i1 %12, label %66, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  store ptr null, ptr %63, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  store i32 0, ptr %64, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  store i16 0, ptr %65, align 4, !tbaa !17
  br label %66

66:                                               ; preds = %62, %61
  %67 = icmp eq ptr %4, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  tail call void %4(ptr noundef nonnull %1) #12
  br label %69

69:                                               ; preds = %41, %53, %66, %68, %5, %7
  %70 = phi i16 [ 0, %7 ], [ 0, %5 ], [ 0, %68 ], [ 0, %66 ], [ 1, %53 ], [ 1, %41 ]
  ret i16 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !22
  switch i16 %10, label %35 [
    i16 1, label %11
    i16 9, label %15
    i16 8, label %19
    i16 7, label %23
    i16 6, label %27
    i16 5, label %31
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %13, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call fastcc signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef %17, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = tail call fastcc signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef %21, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = tail call fastcc signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %25, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = tail call fastcc signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %29, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = tail call fastcc signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef %33, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  br label %35

35:                                               ; preds = %8, %6, %31, %27, %23, %19, %15, %11
  %36 = phi i16 [ %34, %31 ], [ %30, %27 ], [ %26, %23 ], [ %22, %19 ], [ %18, %15 ], [ %14, %11 ], [ 0, %6 ], [ 0, %8 ]
  ret i16 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %17, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %17 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !25
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %9, label %20, !llvm.loop !29

20:                                               ; preds = %13, %9, %17, %5
  %21 = phi i16 [ 0, %5 ], [ 0, %13 ], [ 0, %9 ], [ 1, %17 ]
  ret i16 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !25
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %9, label %16, !llvm.loop !30

16:                                               ; preds = %9, %13, %5
  %17 = phi i16 [ 0, %5 ], [ 0, %9 ], [ 1, %13 ]
  ret i16 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.bAnimContext, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.bAnimListElem, align 8
  %10 = alloca %struct.Base, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #14
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %11, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 32, i1 false)
  %12 = icmp eq ptr %2, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  store ptr %2, ptr %14, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 3
  store i32 5, ptr %15, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 2
  store ptr %10, ptr %16, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 9
  store ptr %2, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 10
  store ptr %19, ptr %20, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 8
  store ptr %1, ptr %21, align 8, !tbaa !41
  store ptr %9, ptr %7, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  store i16 8, ptr %22, align 8, !tbaa !44
  %23 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 8) #12
  br label %24

24:                                               ; preds = %28, %13
  %25 = phi ptr [ %8, %13 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %30, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %24, label %33, !llvm.loop !45

33:                                               ; preds = %28, %24
  %34 = phi i16 [ 0, %24 ], [ 1, %28 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #12
  br label %35

35:                                               ; preds = %6, %33
  %36 = phi i16 [ %34, %33 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #14
  ret i16 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.bAnimContext, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.bAnimListElem, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #14
  %10 = getelementptr inbounds i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %10, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 48, i1 false)
  %11 = icmp eq ptr %2, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 3
  store i32 4, ptr %13, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 9
  store ptr %2, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 10
  store ptr %17, ptr %18, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 8
  store ptr %1, ptr %19, align 8, !tbaa !41
  store ptr %9, ptr %7, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  store i16 8, ptr %20, align 8, !tbaa !44
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 8) #12
  br label %22

22:                                               ; preds = %26, %12
  %23 = phi ptr [ %8, %12 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %28, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !25
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %22, label %31, !llvm.loop !65

31:                                               ; preds = %26, %22
  %32 = phi i16 [ 0, %22 ], [ 1, %26 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #12
  br label %33

33:                                               ; preds = %6, %31
  %34 = phi i16 [ %32, %31 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #14
  ret i16 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = icmp eq ptr %1, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !44
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %9, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %28, %8
  %15 = phi ptr [ %6, %8 ], [ %16, %28 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 7
  %20 = load i16, ptr %19, align 2, !tbaa !22
  %21 = and i16 %20, -2
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %25, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !25
  %27 = zext nneg i16 %26 to i32
  br label %28

28:                                               ; preds = %18, %23
  %29 = phi i32 [ %27, %23 ], [ 0, %18 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %14, label %31, !llvm.loop !66

31:                                               ; preds = %28, %14
  %32 = phi i16 [ 1, %28 ], [ 0, %14 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #12
  br label %33

33:                                               ; preds = %5, %31
  %34 = phi i16 [ %32, %31 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i16 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %2, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %7
  switch i32 %3, label %22 [
    i32 1, label %10
    i32 9, label %12
    i32 8, label %14
    i32 7, label %16
    i32 6, label %18
    i32 5, label %20
  ]

10:                                               ; preds = %9
  %11 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

12:                                               ; preds = %9
  %13 = tail call fastcc signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

14:                                               ; preds = %9
  %15 = tail call fastcc signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

16:                                               ; preds = %9
  %17 = tail call fastcc signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

18:                                               ; preds = %9
  %19 = tail call fastcc signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

20:                                               ; preds = %9
  %21 = tail call fastcc signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !25
  br label %22

22:                                               ; preds = %9, %7, %20, %18, %16, %14, %12, %10
  %23 = phi i16 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ 0, %7 ], [ 0, %9 ]
  ret i16 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_editkeyframes_refresh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !44
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %3, i32 noundef %6) #12
  %8 = load ptr, ptr %2, align 8, !tbaa !27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  call void @sort_time_fcurve(ptr noundef %13) #12
  call void @calchandles_fcurve(ptr noundef %13) #12
  %14 = load ptr, ptr %11, align 8, !tbaa !27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !67

16:                                               ; preds = %10, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @ANIM_editkeyframes_ok(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 7
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [7 x ptr], ptr @switch.table.ANIM_editkeyframes_ok, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !68
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !69
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !70
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load float, ptr %1, align 4, !tbaa !68
  %17 = fsub float %16, %6
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ult float %18, 0x3E80000000000000
  %20 = or disjoint i16 %10, 2
  %21 = select i1 %19, i16 %20, i16 %10
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !68
  %24 = fsub float %23, %6
  %25 = tail call float @llvm.fabs.f32(float %24)
  %26 = fcmp ult float %25, 0x3E80000000000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = or disjoint i16 %21, 4
  br label %29

29:                                               ; preds = %15, %27, %2
  %30 = phi i16 [ %28, %27 ], [ %21, %15 ], [ %10, %2 ]
  ret i16 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_framerange(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !68
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !69
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !71
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !70
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %13
  %20 = load float, ptr %1, align 4, !tbaa !68
  %21 = fcmp ogt float %20, %6
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %24 = load float, ptr %23, align 4, !tbaa !71
  %25 = fcmp olt float %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = or disjoint i16 %14, 2
  br label %28

28:                                               ; preds = %26, %22, %19
  %29 = phi i16 [ %27, %26 ], [ %14, %22 ], [ %14, %19 ]
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !68
  %32 = fcmp ogt float %31, %6
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %35 = load float, ptr %34, align 4, !tbaa !71
  %36 = fcmp olt float %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = or i16 %29, 4
  br label %39

39:                                               ; preds = %28, %33, %37, %13
  %40 = phi i16 [ %38, %37 ], [ %29, %33 ], [ %29, %28 ], [ %14, %13 ]
  ret i16 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_selected(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !74
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !75
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i16 0, i16 7
  br label %18

18:                                               ; preds = %12, %2, %7
  %19 = phi i16 [ 7, %7 ], [ 7, %2 ], [ %17, %12 ]
  ret i16 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !68
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !69
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !70
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !68
  %18 = fsub float %17, %6
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ult float %19, 0x3E80000000000000
  %21 = or disjoint i16 %10, 2
  %22 = select i1 %20, i16 %21, i16 %10
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !68
  %25 = fsub float %24, %6
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ult float %26, 0x3E80000000000000
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = or disjoint i16 %22, 4
  br label %30

30:                                               ; preds = %15, %28, %2
  %31 = phi i16 [ %29, %28 ], [ %22, %15 ], [ %10, %2 ]
  ret i16 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_valuerange(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !68
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !69
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !71
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !70
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !68
  %22 = fcmp ogt float %21, %6
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %25 = load float, ptr %24, align 4, !tbaa !71
  %26 = fcmp olt float %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = or disjoint i16 %14, 2
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = phi i16 [ %28, %27 ], [ %14, %23 ], [ %14, %19 ]
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !68
  %33 = fcmp ogt float %32, %6
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %36 = load float, ptr %35, align 4, !tbaa !71
  %37 = fcmp olt float %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = or i16 %30, 4
  br label %40

40:                                               ; preds = %29, %34, %38, %13
  %41 = phi i16 [ %39, %38 ], [ %30, %34 ], [ %30, %29 ], [ %14, %13 ]
  ret i16 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i16 @ok_bezier_region(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %7) #12
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !70
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr %3, align 8, !tbaa !76
  %17 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %16, ptr noundef %1) #12
  %18 = icmp eq i8 %17, 0
  %19 = or disjoint i16 %10, 2
  %20 = select i1 %18, i16 %10, i16 %19
  %21 = load ptr, ptr %3, align 8, !tbaa !76
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %23 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %21, ptr noundef nonnull %22) #12
  %24 = icmp eq i8 %23, 0
  %25 = or disjoint i16 %20, 4
  %26 = select i1 %24, i16 %20, i16 %25
  br label %27

27:                                               ; preds = %15, %2, %6
  %28 = phi i16 [ %10, %6 ], [ 0, %2 ], [ %26, %15 ]
  ret i16 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal signext i16 @ok_bezier_region_lasso(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef nonnull %4, ptr noundef nonnull %7) #13, !range !77
  %9 = zext nneg i8 %8 to i16
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !70
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !tbaa !76
  %16 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef %15, ptr noundef %1) #13, !range !77
  %17 = icmp eq i8 %16, 0
  %18 = or disjoint i16 %9, 2
  %19 = select i1 %17, i16 %9, i16 %18
  %20 = load ptr, ptr %3, align 8, !tbaa !76
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %22 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef %20, ptr noundef nonnull %21) #13, !range !77
  %23 = icmp eq i8 %22, 0
  %24 = or disjoint i16 %19, 4
  %25 = select i1 %23, i16 %19, i16 %24
  br label %26

26:                                               ; preds = %14, %2, %6
  %27 = phi i16 [ %9, %6 ], [ 0, %2 ], [ %25, %14 ]
  ret i16 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef signext i16 @bezt_calc_average(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !69
  %12 = fadd float %9, %11
  store float %12, ptr %10, align 8, !tbaa !69
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !68
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = fadd float %14, %16
  store float %17, ptr %15, align 4, !tbaa !71
  %18 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !78
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !78
  br label %21

21:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @bezt_to_cfraelem(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str) #12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #12
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.CfraElem, ptr %9, i64 0, i32 2
  store float %11, ptr %12, align 8, !tbaa !79
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bezt_remap_times(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !84
  %12 = load float, ptr %4, align 4, !tbaa !85
  %13 = fsub float %11, %12
  %14 = fdiv float %9, %13
  %15 = load float, ptr %1, align 4, !tbaa !68
  %16 = fsub float %15, %12
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %8)
  store float %17, ptr %1, align 4, !tbaa !68
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !68
  %20 = load float, ptr %4, align 4, !tbaa !85
  %21 = fsub float %19, %20
  %22 = load float, ptr %7, align 4, !tbaa !83
  %23 = tail call float @llvm.fmuladd.f32(float %14, float %21, float %22)
  store float %23, ptr %18, align 4, !tbaa !68
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !68
  %26 = load float, ptr %4, align 4, !tbaa !85
  %27 = fsub float %25, %26
  %28 = load float, ptr %7, align 4, !tbaa !83
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %27, float %28)
  store float %29, ptr %24, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_snap(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 6
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [6 x ptr], ptr @switch.table.ANIM_editkeyframes_snap, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ @snap_bezier_nearest, %1 ], [ %7, %4 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_nearest(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = fadd float %9, 5.000000e-01
  %11 = tail call float @llvm.floor.f32(float %10)
  store float %11, ptr %8, align 4, !tbaa !68
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !68
  br label %14

14:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @snap_bezier_nearmarker(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef %0, float noundef %9) #12
  %11 = sitofp i32 %10 to float
  store float %11, ptr %8, align 4, !tbaa !68
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_nearestsec(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !88
  %12 = sitofp i16 %11 to double
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = fpext float %14 to double
  %16 = fdiv double %12, %15
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !68
  %20 = fdiv float %19, %17
  %21 = fadd float %20, 5.000000e-01
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fmul float %22, %17
  store float %23, ptr %18, align 4, !tbaa !68
  br label %24

24:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_horizontal(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !68
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  store float %9, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %9, ptr %11, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !90
  switch i8 %13, label %15 [
    i8 1, label %14
    i8 4, label %14
    i8 2, label %14
  ]

14:                                               ; preds = %7, %7, %7
  store i8 3, ptr %12, align 1, !tbaa !90
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 2, !tbaa !91
  switch i8 %17, label %19 [
    i8 1, label %18
    i8 4, label %18
    i8 2, label %18
  ]

18:                                               ; preds = %15, %15, %15
  store i8 3, ptr %16, align 2, !tbaa !91
  br label %19

19:                                               ; preds = %15, %18, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  store float %9, ptr %10, align 4, !tbaa !68
  br label %11

11:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_mirror(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 5
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [5 x ptr], ptr @switch.table.ANIM_editkeyframes_mirror, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @mirror_bezier_yaxis, %1 ]
  ret ptr %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @mirror_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = sitofp i32 %11 to float
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef %12) #13
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_yaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @mirror_bezier_yaxis_ex(ptr noundef nonnull %1) #13
  br label %8

8:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_xaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef 0.000000e+00) #13
  br label %8

8:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_marker(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !69
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef %9) #13
  br label %10

10:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !69
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef %9) #13
  br label %10

10:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_handles(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp ult i16 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i16 %0 to i64
  %5 = getelementptr inbounds [5 x ptr], ptr @switch.table.ANIM_editkeyframes_handles, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @bezier_isfree, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_auto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !75
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 1, ptr %13, align 1, !tbaa !90
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !75
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i8 [ %9, %7 ], [ %15, %12 ]
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8, ptr %20, align 2, !tbaa !91
  br label %24

23:                                               ; preds = %16
  store i8 1, ptr %20, align 2, !tbaa !91
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i8 [ %22, %21 ], [ 1, %23 ]
  %26 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !90
  %28 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %29 = icmp eq i8 %27, %25
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  switch i8 %27, label %32 [
    i8 3, label %31
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %30, %30, %30
  store i8 0, ptr %26, align 1, !tbaa !90
  br label %32

32:                                               ; preds = %30, %31
  switch i8 %25, label %34 [
    i8 3, label %33
    i8 1, label %33
    i8 4, label %33
  ]

33:                                               ; preds = %32, %32, %32
  store i8 0, ptr %28, align 2, !tbaa !91
  br label %34

34:                                               ; preds = %32, %24, %33, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_auto_clamped(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !75
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 4, ptr %13, align 1, !tbaa !90
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !75
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i8 [ %9, %7 ], [ %15, %12 ]
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8, ptr %20, align 2, !tbaa !91
  br label %24

23:                                               ; preds = %16
  store i8 4, ptr %20, align 2, !tbaa !91
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i8 [ %22, %21 ], [ 4, %23 ]
  %26 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !90
  %28 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %29 = icmp eq i8 %27, %25
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  switch i8 %27, label %32 [
    i8 3, label %31
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %30, %30, %30
  store i8 0, ptr %26, align 1, !tbaa !90
  br label %32

32:                                               ; preds = %30, %31
  switch i8 %25, label %34 [
    i8 3, label %33
    i8 1, label %33
    i8 4, label %33
  ]

33:                                               ; preds = %32, %32, %32
  store i8 0, ptr %28, align 2, !tbaa !91
  br label %34

34:                                               ; preds = %32, %24, %33, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_vector(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 2, ptr %8, align 1, !tbaa !90
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !75
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 2, ptr %15, align 2, !tbaa !91
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_free(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 1, !tbaa !90
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !75
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 0, ptr %15, align 2, !tbaa !91
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_align(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 3, ptr %8, align 1, !tbaa !90
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !75
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 3, ptr %15, align 2, !tbaa !91
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef signext i16 @bezier_isfree(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !74
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !90
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 1, !tbaa !75
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 2, !tbaa !91
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %16, %7, %20
  %22 = phi i16 [ 0, %20 ], [ 1, %7 ], [ 1, %16 ]
  ret i16 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_ipo(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp ult i16 %0, 13
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i16 %0 to i64
  %5 = getelementptr inbounds [13 x ptr], ptr @switch.table.ANIM_editkeyframes_ipo, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @set_bezt_bezier, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_constant(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 0, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_linear(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_back(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 3, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bounce(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 4, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_circle(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 5, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_cubic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 6, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_elastic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 7, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_expo(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 8, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quad(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 9, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quart(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 10, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quint(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 11, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_sine(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 12, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bezier(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 2, ptr %8, align 4, !tbaa !92
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_keytype(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table.ANIM_editkeyframes_keytype, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @set_keytype_keyframe, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_breakdown(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 2, ptr %8, align 2, !tbaa !93
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_extreme(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 1, ptr %8, align 2, !tbaa !93
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_jitter(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 3, ptr %8, align 2, !tbaa !93
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_keyframe(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 0, ptr %8, align 2, !tbaa !93
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_easing(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [3 x ptr], ptr @switch.table.ANIM_editkeyframes_easing, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @set_easingtype_easeauto, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easein(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 1, ptr %8, align 1, !tbaa !94
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 2, ptr %8, align 1, !tbaa !94
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeinout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 3, ptr %8, align 1, !tbaa !94
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeauto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 0, ptr %8, align 1, !tbaa !94
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_select(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp eq i16 %0, 4
  %3 = select i1 %2, ptr @select_bezier_subtract, ptr @select_bezier_add
  %4 = icmp eq i16 %0, 8
  %5 = select i1 %4, ptr @select_bezier_invert, ptr %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_add(ptr noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !70
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !17
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !72
  %17 = or i8 %16, 1
  store i8 %17, ptr %15, align 4, !tbaa !72
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !74
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !74
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !74
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 1, !tbaa !74
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !72
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 4, !tbaa !72
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !75
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_subtract(ptr noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !70
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !17
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !72
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 4, !tbaa !72
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !74
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 1, !tbaa !74
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !74
  %31 = and i8 %30, -2
  store i8 %31, ptr %29, align 1, !tbaa !74
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !72
  %34 = and i8 %33, -2
  store i8 %34, ptr %32, align 4, !tbaa !72
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 1, !tbaa !75
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_invert(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !72
  %5 = xor i8 %4, 1
  store i8 %5, ptr %3, align 4, !tbaa !72
  %6 = and i8 %4, 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !74
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %7, label %11, label %15

11:                                               ; preds = %2
  %12 = or i8 %9, 1
  store i8 %12, ptr %8, align 1, !tbaa !74
  %13 = load i8, ptr %10, align 1, !tbaa !75
  %14 = or i8 %13, 1
  br label %19

15:                                               ; preds = %2
  %16 = and i8 %9, -2
  store i8 %16, ptr %8, align 1, !tbaa !74
  %17 = load i8, ptr %10, align 1, !tbaa !75
  %18 = and i8 %17, -2
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i8 [ %18, %15 ], [ %14, %11 ]
  store i8 %20, ptr %10, align 1, !tbaa !75
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp eq i16 %0, 1
  %3 = select i1 %2, ptr @selmap_build_bezier_less, ptr @selmap_build_bezier_more
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !72
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !74
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !75
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18, %13, %2
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 8
  %27 = load i8, ptr %26, align 4, !tbaa !72
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !74
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %67, label %42

40:                                               ; preds = %23
  %41 = icmp eq i32 %8, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %30, %25, %40, %35
  %43 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !18
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %8, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !72
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !74
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %59 = load i8, ptr %58, align 1, !tbaa !75
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %64

62:                                               ; preds = %42
  %63 = icmp eq i32 %8, %45
  br i1 %63, label %67, label %64

64:                                               ; preds = %52, %47, %62, %57
  %65 = sext i32 %8 to i64
  %66 = getelementptr inbounds i8, ptr %6, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !95
  br label %67

67:                                               ; preds = %18, %64, %62, %40, %35, %57
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_more(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !72
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !74
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !75
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %13, %2
  %24 = sext i32 %8 to i64
  br label %66

25:                                               ; preds = %18
  %26 = icmp sgt i32 %8, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 8
  %29 = load i8, ptr %28, align 4, !tbaa !72
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !74
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %39 = load i8, ptr %38, align 1, !tbaa !75
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %27
  %43 = zext nneg i32 %8 to i64
  br label %66

44:                                               ; preds = %37, %25
  %45 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !18
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %8, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !72
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !74
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !75
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59, %54, %49
  %65 = sext i32 %8 to i64
  br label %66

66:                                               ; preds = %23, %42, %64
  %67 = phi i64 [ %65, %64 ], [ %43, %42 ], [ %24, %23 ]
  %68 = getelementptr inbounds i8, ptr %6, i64 %67
  store i8 1, ptr %68, align 1, !tbaa !95
  br label %69

69:                                               ; preds = %66, %44, %59
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @bezt_selmap_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !16
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !95
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !74
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %10, label %21, label %15

15:                                               ; preds = %2
  %16 = or i8 %12, 1
  store i8 %16, ptr %11, align 1, !tbaa !74
  %17 = load i8, ptr %13, align 4, !tbaa !72
  %18 = or i8 %17, 1
  store i8 %18, ptr %13, align 4, !tbaa !72
  %19 = load i8, ptr %14, align 1, !tbaa !75
  %20 = or i8 %19, 1
  br label %27

21:                                               ; preds = %2
  %22 = and i8 %12, -2
  store i8 %22, ptr %11, align 1, !tbaa !74
  %23 = load i8, ptr %13, align 4, !tbaa !72
  %24 = and i8 %23, -2
  store i8 %24, ptr %13, align 4, !tbaa !72
  %25 = load i8, ptr %14, align 1, !tbaa !75
  %26 = and i8 %25, -2
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i8 [ %26, %21 ], [ %20, %15 ]
  store i8 %28, ptr %14, align 1, !tbaa !75
  ret i16 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bezier_region_lasso_test(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !96
  %5 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %4, ptr noundef %1) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %8 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = load ptr, ptr %0, align 8, !tbaa !96
  call void @BLI_rctf_transform_pt_v(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3, ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !100
  %15 = load float, ptr %3, align 4, !tbaa !68
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !68
  %19 = fptosi float %18 to i32
  %20 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %19, i32 noundef 2147483647) #12
  %21 = icmp eq i8 %20, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br i1 %21, label %22, label %23

22:                                               ; preds = %7, %2
  br label %23

23:                                               ; preds = %7, %22
  %24 = phi i8 [ 1, %7 ], [ 0, %22 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @BLI_rctf_transform_pt_v(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mirror_bezier_xaxis_ex(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = fsub float %1, %6
  %8 = fadd float %7, %1
  store float %8, ptr %5, align 4, !tbaa !68
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %3, !llvm.loop !101

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %12) #13
  %13 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %14 = load i8, ptr %13, align 1, !tbaa !90
  %15 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %16 = load i8, ptr %15, align 2, !tbaa !91
  store i8 %16, ptr %13, align 1, !tbaa !90
  store i8 %14, ptr %15, align 2, !tbaa !91
  %17 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !74
  %19 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !75
  store i8 %20, ptr %17, align 1, !tbaa !74
  store i8 %18, ptr %19, align 1, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !68
  %4 = load float, ptr %1, align 4, !tbaa !68
  store float %4, ptr %0, align 4, !tbaa !68
  store float %3, ptr %1, align 4, !tbaa !68
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !68
  store float %8, ptr %5, align 4, !tbaa !68
  store float %6, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !68
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !68
  store float %12, ptr %9, align 4, !tbaa !68
  store float %10, ptr %11, align 4, !tbaa !68
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mirror_bezier_yaxis_ex(ptr nocapture noundef %0) unnamed_addr #10 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %3, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = fsub float 0.000000e+00, %5
  store float %6, ptr %4, align 4, !tbaa !68
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %2, !llvm.loop !102

9:                                                ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !11, i64 64, !12, i64 68, !13, i64 72, !13, i64 74, !11, i64 76, !7, i64 80, !11, i64 88, !8, i64 92, !12, i64 104, !12, i64 108}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!15, !7, i64 48}
!15 = !{!"KeyframeEditData", !10, i64 0, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 44, !7, i64 48, !11, i64 56, !13, i64 60, !13, i64 62}
!16 = !{!15, !11, i64 56}
!17 = !{!15, !13, i64 60}
!18 = !{!6, !11, i64 64}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!23, !13, i64 38}
!23 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 36, !13, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!24 = !{!23, !7, i64 40}
!25 = !{i16 0, i16 2}
!26 = !{!23, !7, i64 16}
!27 = !{!7, !7, i64 0}
!28 = !{!6, !7, i64 16}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = !{!32, !7, i64 32}
!32 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !7, i64 32}
!33 = !{!23, !11, i64 24}
!34 = !{!23, !7, i64 48}
!35 = !{!36, !7, i64 120}
!36 = !{!"Object", !37, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !38, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !12, i64 988, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !12, i64 1048, !12, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !12, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !12, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !39, i64 1304, !39, i64 1312, !11, i64 1320, !11, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!37 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!38 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!39 = !{!"long", !8, i64 0}
!40 = !{!23, !7, i64 56}
!41 = !{!42, !7, i64 40}
!42 = !{!"bAnimContext", !7, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!43 = !{!42, !7, i64 0}
!44 = !{!42, !13, i64 8}
!45 = distinct !{!45, !20}
!46 = !{!47, !7, i64 120}
!47 = !{!"Scene", !37, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !48, i64 280, !57, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !11, i64 4380, !10, i64 4384, !58, i64 4400, !59, i64 4416, !62, i64 4600, !7, i64 4608, !63, i64 4616, !7, i64 4640, !39, i64 4648, !39, i64 4656, !50, i64 4664, !51, i64 4824, !64, i64 4888, !7, i64 4952}
!48 = !{!"RenderData", !49, i64 0, !7, i64 248, !7, i64 256, !52, i64 264, !53, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !13, i64 432, !13, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !11, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !11, i64 484, !11, i64 488, !13, i64 492, !13, i64 494, !11, i64 496, !11, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !10, i64 592, !13, i64 608, !13, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !12, i64 660, !12, i64 664, !13, i64 668, !13, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !13, i64 2524, !13, i64 2526, !12, i64 2528, !12, i64 2532, !13, i64 2536, !13, i64 2538, !12, i64 2540, !13, i64 2544, !13, i64 2546, !11, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !56, i64 2616, !11, i64 3976, !11, i64 3980}
!49 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !50, i64 24, !51, i64 184}
!50 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!51 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!52 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !13, i64 48, !13, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!53 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!54 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!55 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!56 = !{!"BakeData", !49, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!57 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !13, i64 20, !13, i64 22, !12, i64 24, !12, i64 28}
!58 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!59 = !{!"GameData", !58, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !60, i64 40, !13, i64 64, !13, i64 66, !12, i64 68, !61, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!60 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!61 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !13, i64 52, !13, i64 54}
!62 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!63 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!64 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!12, !12, i64 0}
!69 = !{!15, !12, i64 32}
!70 = !{!15, !13, i64 62}
!71 = !{!15, !12, i64 36}
!72 = !{!73, !8, i64 52}
!73 = !{!"BezTriple", !8, i64 0, !12, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68}
!74 = !{!73, !8, i64 51}
!75 = !{!73, !8, i64 53}
!76 = !{!15, !7, i64 24}
!77 = !{i8 0, i8 2}
!78 = !{!15, !11, i64 40}
!79 = !{!80, !12, i64 16}
!80 = !{!"CfraElem", !7, i64 0, !7, i64 8, !12, i64 16, !11, i64 20}
!81 = !{!82, !12, i64 12}
!82 = !{!"KeyframeEditCD_Remap", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!83 = !{!82, !12, i64 8}
!84 = !{!82, !12, i64 4}
!85 = !{!82, !12, i64 0}
!86 = !{!15, !7, i64 16}
!87 = !{!47, !11, i64 680}
!88 = !{!47, !13, i64 820}
!89 = !{!47, !12, i64 900}
!90 = !{!73, !8, i64 49}
!91 = !{!73, !8, i64 50}
!92 = !{!73, !8, i64 48}
!93 = !{!73, !8, i64 54}
!94 = !{!73, !8, i64 55}
!95 = !{!8, !8, i64 0}
!96 = !{!97, !7, i64 0}
!97 = !{!"KeyframeEdit_LassoData", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!98 = !{!97, !7, i64 8}
!99 = !{!97, !7, i64 16}
!100 = !{!97, !11, i64 24}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
