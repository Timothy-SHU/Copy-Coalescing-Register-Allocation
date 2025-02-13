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
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %0, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  store ptr %1, ptr %14, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  store i16 0, ptr %16, align 4, !tbaa !46
  br label %17

17:                                               ; preds = %13, %11
  %18 = icmp eq ptr %3, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %17
  %20 = icmp eq ptr %2, null
  %21 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !47
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
  store i32 %32, ptr %26, align 8, !tbaa !45
  store i16 0, ptr %27, align 4, !tbaa !46
  %38 = tail call signext i16 %2(ptr noundef nonnull %0, ptr noundef nonnull %33) #12
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  store i16 %38, ptr %27, align 4, !tbaa !46
  br label %41

41:                                               ; preds = %34, %40
  %42 = tail call signext i16 %3(ptr noundef %0, ptr noundef nonnull %33) #12
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %37, %34, %41
  %45 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %46 = add nuw i32 %32, 1
  %47 = load i32, ptr %21, align 8, !tbaa !47
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %31, label %61, !llvm.loop !48

49:                                               ; preds = %29, %56
  %50 = phi i32 [ 0, %29 ], [ %58, %56 ]
  %51 = phi ptr [ %9, %29 ], [ %57, %56 ]
  br i1 %12, label %53, label %52

52:                                               ; preds = %49
  store i32 %50, ptr %30, align 8, !tbaa !45
  br label %53

53:                                               ; preds = %52, %49
  %54 = tail call signext i16 %3(ptr noundef %0, ptr noundef nonnull %51) #12
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.BezTriple, ptr %51, i64 1
  %58 = add nuw i32 %50, 1
  %59 = load i32, ptr %21, align 8, !tbaa !47
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %49, label %61, !llvm.loop !50

61:                                               ; preds = %44, %56, %24, %28, %17
  br i1 %12, label %66, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  store ptr null, ptr %63, align 8, !tbaa !43
  %64 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  store i32 0, ptr %64, align 8, !tbaa !45
  %65 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  store i16 0, ptr %65, align 4, !tbaa !46
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
  %10 = load i16, ptr %9, align 2, !tbaa !51
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
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %13, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = tail call fastcc signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef %17, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = tail call fastcc signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef %21, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = tail call fastcc signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %25, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = tail call fastcc signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %29, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = tail call fastcc signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef %33, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  br label %35

35:                                               ; preds = %8, %6, %31, %27, %23, %19, %15, %11
  %36 = phi i16 [ %34, %31 ], [ %30, %27 ], [ %26, %23 ], [ %22, %19 ], [ %18, %15 ], [ %14, %11 ], [ 0, %6 ], [ 0, %8 ]
  ret i16 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !56 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bActionGroup, ptr %1, i64 0, i32 2
  br label %9

9:                                                ; preds = %17, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %17 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !54
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %9, label %20, !llvm.loop !59

20:                                               ; preds = %13, %9, %17, %5
  %21 = phi i16 [ 0, %5 ], [ 0, %13 ], [ 0, %9 ], [ 1, %17 ]
  ret i16 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !60 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !54
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %9, label %16, !llvm.loop !61

16:                                               ; preds = %9, %13, %5
  %17 = phi i16 [ 0, %5 ], [ 0, %9 ], [ 1, %13 ]
  ret i16 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !62 {
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
  store ptr %2, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 3
  store i32 5, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 2
  store ptr %10, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 9
  store ptr %2, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 10
  store ptr %19, ptr %20, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 8
  store ptr %1, ptr %21, align 8, !tbaa !73
  store ptr %9, ptr %7, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  store i16 8, ptr %22, align 8, !tbaa !76
  %23 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 8) #12
  br label %24

24:                                               ; preds = %28, %13
  %25 = phi ptr [ %8, %13 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %30, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %24, label %33, !llvm.loop !77

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
define internal fastcc noundef signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !78 {
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
  store i32 4, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 2
  store ptr %2, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 9
  store ptr %2, ptr %15, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %9, i64 0, i32 10
  store ptr %17, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 8
  store ptr %1, ptr %19, align 8, !tbaa !73
  store ptr %9, ptr %7, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  store i16 8, ptr %20, align 8, !tbaa !76
  %21 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 8) #12
  br label %22

22:                                               ; preds = %26, %12
  %23 = phi ptr [ %8, %12 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %28, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13, !range !54
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %22, label %31, !llvm.loop !98

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
define internal fastcc noundef signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !99 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = icmp eq ptr %1, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !76
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %9, i32 noundef %12) #12
  br label %14

14:                                               ; preds = %28, %8
  %15 = phi ptr [ %6, %8 ], [ %16, %28 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 7
  %20 = load i16, ptr %19, align 2, !tbaa !51
  %21 = and i16 %20, -2
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %25, ptr noundef %2, ptr noundef %3, ptr noundef %4) #13, !range !54
  %27 = zext nneg i16 %26 to i32
  br label %28

28:                                               ; preds = %18, %23
  %29 = phi i32 [ %27, %23 ], [ 0, %18 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %14, label %31, !llvm.loop !100

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
  %11 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
  br label %22

12:                                               ; preds = %9
  %13 = tail call fastcc signext i16 @agrp_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
  br label %22

14:                                               ; preds = %9
  %15 = tail call fastcc signext i16 @act_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
  br label %22

16:                                               ; preds = %9
  %17 = tail call fastcc signext i16 @ob_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
  br label %22

18:                                               ; preds = %9
  %19 = tail call fastcc signext i16 @scene_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
  br label %22

20:                                               ; preds = %9
  %21 = tail call fastcc signext i16 @summary_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13, !range !54
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
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !76
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %3, i32 noundef %6) #12
  %8 = load ptr, ptr %2, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  call void @sort_time_fcurve(ptr noundef %13) #12
  call void @calchandles_fcurve(ptr noundef %13) #12
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !101

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
define internal signext i16 @ok_bezier_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !102 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !103
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !104
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !105
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load float, ptr %1, align 4, !tbaa !103
  %17 = fsub float %16, %6
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ult float %18, 0x3E80000000000000
  %20 = or disjoint i16 %10, 2
  %21 = select i1 %19, i16 %20, i16 %10
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !103
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
define internal signext i16 @ok_bezier_framerange(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !106 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !103
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !104
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !107
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !105
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %13
  %20 = load float, ptr %1, align 4, !tbaa !103
  %21 = fcmp ogt float %20, %6
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %24 = load float, ptr %23, align 4, !tbaa !107
  %25 = fcmp olt float %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = or disjoint i16 %14, 2
  br label %28

28:                                               ; preds = %26, %22, %19
  %29 = phi i16 [ %27, %26 ], [ %14, %22 ], [ %14, %19 ]
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !103
  %32 = fcmp ogt float %31, %6
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %35 = load float, ptr %34, align 4, !tbaa !107
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
define internal signext i16 @ok_bezier_selected(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !111
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !112
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i16 0, i16 7
  br label %18

18:                                               ; preds = %12, %2, %7
  %19 = phi i16 [ 7, %7 ], [ 7, %2 ], [ %17, %12 ]
  ret i16 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !113 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !103
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !104
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !105
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !103
  %18 = fsub float %17, %6
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ult float %19, 0x3E80000000000000
  %21 = or disjoint i16 %10, 2
  %22 = select i1 %20, i16 %21, i16 %10
  %23 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !103
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
define internal signext i16 @ok_bezier_valuerange(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !114 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !103
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !104
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !107
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !105
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !103
  %22 = fcmp ogt float %21, %6
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %25 = load float, ptr %24, align 4, !tbaa !107
  %26 = fcmp olt float %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = or disjoint i16 %14, 2
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = phi i16 [ %28, %27 ], [ %14, %23 ], [ %14, %19 ]
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !103
  %33 = fcmp ogt float %32, %6
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %36 = load float, ptr %35, align 4, !tbaa !107
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
define internal signext i16 @ok_bezier_region(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !115 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %7) #12
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i16
  %11 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !105
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr %3, align 8, !tbaa !116
  %17 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %16, ptr noundef %1) #12
  %18 = icmp eq i8 %17, 0
  %19 = or disjoint i16 %10, 2
  %20 = select i1 %18, i16 %10, i16 %19
  %21 = load ptr, ptr %3, align 8, !tbaa !116
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
define internal signext i16 @ok_bezier_region_lasso(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef nonnull %4, ptr noundef nonnull %7) #13, !range !118
  %9 = zext nneg i8 %8 to i16
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !105
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !tbaa !116
  %16 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef %15, ptr noundef %1) #13, !range !118
  %17 = icmp eq i8 %16, 0
  %18 = or disjoint i16 %9, 2
  %19 = select i1 %17, i16 %9, i16 %18
  %20 = load ptr, ptr %3, align 8, !tbaa !116
  %21 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %22 = tail call fastcc zeroext i8 @bezier_region_lasso_test(ptr noundef %20, ptr noundef nonnull %21) #13, !range !118
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
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !104
  %12 = fadd float %9, %11
  store float %12, ptr %10, align 8, !tbaa !104
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !103
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !107
  %17 = fadd float %14, %16
  store float %17, ptr %15, align 4, !tbaa !107
  %18 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !119
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !119
  br label %21

21:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @bezt_to_cfraelem(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str) #12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #12
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !103
  %12 = getelementptr inbounds %struct.CfraElem, ptr %9, i64 0, i32 2
  store float %11, ptr %12, align 8, !tbaa !120
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bezt_remap_times(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !122
  %7 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !124
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !125
  %12 = load float, ptr %4, align 4, !tbaa !126
  %13 = fsub float %11, %12
  %14 = fdiv float %9, %13
  %15 = load float, ptr %1, align 4, !tbaa !103
  %16 = fsub float %15, %12
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %8)
  store float %17, ptr %1, align 4, !tbaa !103
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !103
  %20 = load float, ptr %4, align 4, !tbaa !126
  %21 = fsub float %19, %20
  %22 = load float, ptr %7, align 4, !tbaa !124
  %23 = tail call float @llvm.fmuladd.f32(float %14, float %21, float %22)
  store float %23, ptr %18, align 4, !tbaa !103
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !103
  %26 = load float, ptr %4, align 4, !tbaa !126
  %27 = fsub float %25, %26
  %28 = load float, ptr %7, align 4, !tbaa !124
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %27, float %28)
  store float %29, ptr %24, align 4, !tbaa !103
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
define internal noundef signext i16 @snap_bezier_nearest(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = fadd float %9, 5.000000e-01
  %11 = tail call float @llvm.floor.f32(float %10)
  store float %11, ptr %8, align 4, !tbaa !103
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !130
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !103
  br label %14

14:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @snap_bezier_nearmarker(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef %0, float noundef %9) #12
  %11 = sitofp i32 %10 to float
  store float %11, ptr %8, align 4, !tbaa !103
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_nearestsec(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !133
  %12 = sitofp i16 %11 to double
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !134
  %15 = fpext float %14 to double
  %16 = fdiv double %12, %15
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !103
  %20 = fdiv float %19, %17
  %21 = fadd float %20, 5.000000e-01
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fmul float %22, %17
  store float %23, ptr %18, align 4, !tbaa !103
  br label %24

24:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_horizontal(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !135 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  store float %9, ptr %10, align 4, !tbaa !103
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %9, ptr %11, align 4, !tbaa !103
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !136
  switch i8 %13, label %15 [
    i8 1, label %14
    i8 4, label %14
    i8 2, label %14
  ]

14:                                               ; preds = %7, %7, %7
  store i8 3, ptr %12, align 1, !tbaa !136
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 2, !tbaa !137
  switch i8 %17, label %19 [
    i8 1, label %18
    i8 4, label %18
    i8 2, label %18
  ]

18:                                               ; preds = %15, %15, %15
  store i8 3, ptr %16, align 2, !tbaa !137
  br label %19

19:                                               ; preds = %15, %18, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #6 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  store float %9, ptr %10, align 4, !tbaa !103
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
define internal noundef signext i16 @mirror_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !130
  %12 = sitofp i32 %11 to float
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef %12) #13
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_yaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 !PGOFuncName !140 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
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
define internal noundef signext i16 @mirror_bezier_xaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
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
define internal noundef signext i16 @mirror_bezier_marker(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !104
  tail call fastcc void @mirror_bezier_xaxis_ex(ptr noundef nonnull %1, float noundef %9) #13
  br label %10

10:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !104
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
define internal noundef signext i16 @set_bezier_auto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !144 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !112
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 1, ptr %13, align 1, !tbaa !136
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !112
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i8 [ %9, %7 ], [ %15, %12 ]
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8, ptr %20, align 2, !tbaa !137
  br label %24

23:                                               ; preds = %16
  store i8 1, ptr %20, align 2, !tbaa !137
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i8 [ %22, %21 ], [ 1, %23 ]
  %26 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !136
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
  store i8 0, ptr %26, align 1, !tbaa !136
  br label %32

32:                                               ; preds = %30, %31
  switch i8 %25, label %34 [
    i8 3, label %33
    i8 1, label %33
    i8 4, label %33
  ]

33:                                               ; preds = %32, %32, %32
  store i8 0, ptr %28, align 2, !tbaa !137
  br label %34

34:                                               ; preds = %32, %24, %33, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_auto_clamped(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !112
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 4, ptr %13, align 1, !tbaa !136
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !112
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i8 [ %9, %7 ], [ %15, %12 ]
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  br i1 %19, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8, ptr %20, align 2, !tbaa !137
  br label %24

23:                                               ; preds = %16
  store i8 4, ptr %20, align 2, !tbaa !137
  br label %24

24:                                               ; preds = %21, %23
  %25 = phi i8 [ %22, %21 ], [ 4, %23 ]
  %26 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !136
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
  store i8 0, ptr %26, align 1, !tbaa !136
  br label %32

32:                                               ; preds = %30, %31
  switch i8 %25, label %34 [
    i8 3, label %33
    i8 1, label %33
    i8 4, label %33
  ]

33:                                               ; preds = %32, %32, %32
  store i8 0, ptr %28, align 2, !tbaa !137
  br label %34

34:                                               ; preds = %32, %24, %33, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_vector(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 2, ptr %8, align 1, !tbaa !136
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !112
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 2, ptr %15, align 2, !tbaa !137
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_free(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 1, !tbaa !136
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !112
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 0, ptr %15, align 2, !tbaa !137
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_align(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 3, ptr %8, align 1, !tbaa !136
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !112
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 3, ptr %15, align 2, !tbaa !137
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef signext i16 @bezier_isfree(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !111
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !136
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 1, !tbaa !112
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 2, !tbaa !137
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
define internal noundef signext i16 @set_bezt_constant(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !150 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 0, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_linear(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !152 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_back(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 3, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bounce(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !154 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 4, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_circle(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !155 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 5, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_cubic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 6, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_elastic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !157 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 7, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_expo(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 8, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quad(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 9, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quart(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !160 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 10, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quint(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !161 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 11, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_sine(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !162 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 12, ptr %8, align 4, !tbaa !151
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bezier(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !163 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 2, ptr %8, align 4, !tbaa !151
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
define internal noundef signext i16 @set_keytype_breakdown(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !164 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 2, ptr %8, align 2, !tbaa !165
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_extreme(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 1, ptr %8, align 2, !tbaa !165
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_jitter(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !167 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 3, ptr %8, align 2, !tbaa !165
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_keyframe(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !168 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 0, ptr %8, align 2, !tbaa !165
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
define internal noundef signext i16 @set_easingtype_easein(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 1, ptr %8, align 1, !tbaa !170
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !171 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 2, ptr %8, align 1, !tbaa !170
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeinout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !172 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 3, ptr %8, align 1, !tbaa !170
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeauto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 0, ptr %8, align 1, !tbaa !170
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
define internal noundef signext i16 @select_bezier_add(ptr noundef readonly %0, ptr nocapture noundef %1) #6 !PGOFuncName !174 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !105
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !46
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !109
  %17 = or i8 %16, 1
  store i8 %17, ptr %15, align 4, !tbaa !109
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !111
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !111
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !111
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 1, !tbaa !111
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !109
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 4, !tbaa !109
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !112
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !112
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_subtract(ptr noundef readonly %0, ptr nocapture noundef %1) #6 !PGOFuncName !175 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !105
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !46
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !109
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 4, !tbaa !109
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !111
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 1, !tbaa !111
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !111
  %31 = and i8 %30, -2
  store i8 %31, ptr %29, align 1, !tbaa !111
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !109
  %34 = and i8 %33, -2
  store i8 %34, ptr %32, align 4, !tbaa !109
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !112
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 1, !tbaa !112
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_invert(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !109
  %5 = xor i8 %4, 1
  store i8 %5, ptr %3, align 4, !tbaa !109
  %6 = and i8 %4, 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !111
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %7, label %11, label %15

11:                                               ; preds = %2
  %12 = or i8 %9, 1
  store i8 %12, ptr %8, align 1, !tbaa !111
  %13 = load i8, ptr %10, align 1, !tbaa !112
  %14 = or i8 %13, 1
  br label %19

15:                                               ; preds = %2
  %16 = and i8 %9, -2
  store i8 %16, ptr %8, align 1, !tbaa !111
  %17 = load i8, ptr %10, align 1, !tbaa !112
  %18 = and i8 %17, -2
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i8 [ %18, %15 ], [ %14, %11 ]
  store i8 %20, ptr %10, align 1, !tbaa !112
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp eq i16 %0, 1
  %3 = select i1 %2, ptr @selmap_build_bezier_less, ptr @selmap_build_bezier_more
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !PGOFuncName !177 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !109
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !111
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !112
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18, %13, %2
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 8
  %27 = load i8, ptr %26, align 4, !tbaa !109
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !111
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !112
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %67, label %42

40:                                               ; preds = %23
  %41 = icmp eq i32 %8, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %30, %25, %40, %35
  %43 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !47
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %8, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 8
  %49 = load i8, ptr %48, align 4, !tbaa !109
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !111
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %59 = load i8, ptr %58, align 1, !tbaa !112
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %64

62:                                               ; preds = %42
  %63 = icmp eq i32 %8, %45
  br i1 %63, label %67, label %64

64:                                               ; preds = %52, %47, %62, %57
  %65 = sext i32 %8 to i64
  %66 = getelementptr inbounds i8, ptr %6, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !178
  br label %67

67:                                               ; preds = %18, %64, %62, %40, %35, %57
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_more(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !PGOFuncName !179 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !109
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !111
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !112
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
  %29 = load i8, ptr %28, align 4, !tbaa !109
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !111
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %39 = load i8, ptr %38, align 1, !tbaa !112
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %27
  %43 = zext nneg i32 %8 to i64
  br label %66

44:                                               ; preds = %37, %25
  %45 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !47
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %8, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 8
  %51 = load i8, ptr %50, align 4, !tbaa !109
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !111
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !112
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59, %54, %49
  %65 = sext i32 %8 to i64
  br label %66

66:                                               ; preds = %23, %42, %64
  %67 = phi i64 [ %65, %64 ], [ %43, %42 ], [ %24, %23 ]
  %68 = getelementptr inbounds i8, ptr %6, i64 %67
  store i8 1, ptr %68, align 1, !tbaa !178
  br label %69

69:                                               ; preds = %66, %44, %59
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @bezt_selmap_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !178
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !111
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %10, label %21, label %15

15:                                               ; preds = %2
  %16 = or i8 %12, 1
  store i8 %16, ptr %11, align 1, !tbaa !111
  %17 = load i8, ptr %13, align 4, !tbaa !109
  %18 = or i8 %17, 1
  store i8 %18, ptr %13, align 4, !tbaa !109
  %19 = load i8, ptr %14, align 1, !tbaa !112
  %20 = or i8 %19, 1
  br label %27

21:                                               ; preds = %2
  %22 = and i8 %12, -2
  store i8 %22, ptr %11, align 1, !tbaa !111
  %23 = load i8, ptr %13, align 4, !tbaa !109
  %24 = and i8 %23, -2
  store i8 %24, ptr %13, align 4, !tbaa !109
  %25 = load i8, ptr %14, align 1, !tbaa !112
  %26 = and i8 %25, -2
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i8 [ %26, %21 ], [ %20, %15 ]
  store i8 %28, ptr %14, align 1, !tbaa !112
  ret i16 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bezier_region_lasso_test(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !180 {
  %3 = alloca [2 x float], align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  %5 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %4, ptr noundef %1) #12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %8 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !183
  %10 = load ptr, ptr %0, align 8, !tbaa !181
  call void @BLI_rctf_transform_pt_v(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3, ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !185
  %15 = load float, ptr %3, align 4, !tbaa !103
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !103
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
define internal fastcc void @mirror_bezier_xaxis_ex(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !186 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %9, %3 ]
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !103
  %7 = fsub float %1, %6
  %8 = fadd float %7, %1
  store float %8, ptr %5, align 4, !tbaa !103
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %11, label %3, !llvm.loop !187

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 2
  tail call fastcc void @swap_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %12) #13
  %13 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  %14 = load i8, ptr %13, align 1, !tbaa !136
  %15 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  %16 = load i8, ptr %15, align 2, !tbaa !137
  store i8 %16, ptr %13, align 1, !tbaa !136
  store i8 %14, ptr %15, align 2, !tbaa !137
  %17 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !111
  %19 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !112
  store i8 %20, ptr %17, align 1, !tbaa !111
  store i8 %18, ptr %19, align 1, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !188 {
  %3 = load float, ptr %0, align 4, !tbaa !103
  %4 = load float, ptr %1, align 4, !tbaa !103
  store float %4, ptr %0, align 4, !tbaa !103
  store float %3, ptr %1, align 4, !tbaa !103
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !103
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !103
  store float %8, ptr %5, align 4, !tbaa !103
  store float %6, ptr %7, align 4, !tbaa !103
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !103
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !103
  store float %12, ptr %9, align 4, !tbaa !103
  store float %10, ptr %11, align 4, !tbaa !103
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mirror_bezier_yaxis_ex(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !189 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %3, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !103
  %6 = fsub float 0.000000e+00, %5
  store float %6, ptr %4, align 4, !tbaa !103
  %7 = add nuw nsw i64 %3, 1
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %2, !llvm.loop !190

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
!34 = !{!35, !36, i64 48}
!35 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !41, i64 68, !42, i64 72, !42, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !41, i64 104, !41, i64 108}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!44, !36, i64 48}
!44 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !40, i64 40, !40, i64 44, !36, i64 48, !40, i64 56, !42, i64 60, !42, i64 62}
!45 = !{!44, !40, i64 56}
!46 = !{!44, !42, i64 60}
!47 = !{!35, !40, i64 64}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = !{!52, !42, i64 38}
!52 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!53 = !{!52, !36, i64 40}
!54 = !{i16 0, i16 2}
!55 = !{!52, !36, i64 16}
!56 = !{!"keyframes_edit.c:agrp_keyframes_loop"}
!57 = !{!36, !36, i64 0}
!58 = !{!35, !36, i64 16}
!59 = distinct !{!59, !49}
!60 = !{!"keyframes_edit.c:act_keyframes_loop"}
!61 = distinct !{!61, !49}
!62 = !{!"keyframes_edit.c:ob_keyframes_loop"}
!63 = !{!64, !36, i64 32}
!64 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!65 = !{!52, !40, i64 24}
!66 = !{!52, !36, i64 48}
!67 = !{!68, !36, i64 120}
!68 = !{!"Object", !69, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !70, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !71, i64 1304, !71, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!70 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!71 = !{!"long", !37, i64 0}
!72 = !{!52, !36, i64 56}
!73 = !{!74, !36, i64 40}
!74 = !{!"bAnimContext", !36, i64 0, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!75 = !{!74, !36, i64 0}
!76 = !{!74, !42, i64 8}
!77 = distinct !{!77, !49}
!78 = !{!"keyframes_edit.c:scene_keyframes_loop"}
!79 = !{!80, !36, i64 120}
!80 = !{!"Scene", !69, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !81, i64 280, !90, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !36, i64 4608, !96, i64 4616, !36, i64 4640, !71, i64 4648, !71, i64 4656, !83, i64 4664, !84, i64 4824, !97, i64 4888, !36, i64 4952}
!81 = !{!"RenderData", !82, i64 0, !36, i64 248, !36, i64 256, !85, i64 264, !86, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !87, i64 544, !87, i64 560, !88, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !89, i64 2616, !40, i64 3976, !40, i64 3980}
!82 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!85 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!86 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!87 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!88 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!89 = !{!"BakeData", !82, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!90 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!91 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!92 = !{!"GameData", !91, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !93, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !94, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!93 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!94 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!95 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!96 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!97 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!98 = distinct !{!98, !49}
!99 = !{!"keyframes_edit.c:summary_keyframes_loop"}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49}
!102 = !{!"keyframes_edit.c:ok_bezier_frame"}
!103 = !{!41, !41, i64 0}
!104 = !{!44, !41, i64 32}
!105 = !{!44, !42, i64 62}
!106 = !{!"keyframes_edit.c:ok_bezier_framerange"}
!107 = !{!44, !41, i64 36}
!108 = !{!"keyframes_edit.c:ok_bezier_selected"}
!109 = !{!110, !37, i64 52}
!110 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!111 = !{!110, !37, i64 51}
!112 = !{!110, !37, i64 53}
!113 = !{!"keyframes_edit.c:ok_bezier_value"}
!114 = !{!"keyframes_edit.c:ok_bezier_valuerange"}
!115 = !{!"keyframes_edit.c:ok_bezier_region"}
!116 = !{!44, !36, i64 24}
!117 = !{!"keyframes_edit.c:ok_bezier_region_lasso"}
!118 = !{i8 0, i8 2}
!119 = !{!44, !40, i64 40}
!120 = !{!121, !41, i64 16}
!121 = !{!"CfraElem", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 20}
!122 = !{!123, !41, i64 12}
!123 = !{!"KeyframeEditCD_Remap", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!124 = !{!123, !41, i64 8}
!125 = !{!123, !41, i64 4}
!126 = !{!123, !41, i64 0}
!127 = !{!"keyframes_edit.c:snap_bezier_nearest"}
!128 = !{!"keyframes_edit.c:snap_bezier_cframe"}
!129 = !{!44, !36, i64 16}
!130 = !{!80, !40, i64 680}
!131 = !{!"keyframes_edit.c:snap_bezier_nearmarker"}
!132 = !{!"keyframes_edit.c:snap_bezier_nearestsec"}
!133 = !{!80, !42, i64 820}
!134 = !{!80, !41, i64 900}
!135 = !{!"keyframes_edit.c:snap_bezier_horizontal"}
!136 = !{!110, !37, i64 49}
!137 = !{!110, !37, i64 50}
!138 = !{!"keyframes_edit.c:snap_bezier_value"}
!139 = !{!"keyframes_edit.c:mirror_bezier_cframe"}
!140 = !{!"keyframes_edit.c:mirror_bezier_yaxis"}
!141 = !{!"keyframes_edit.c:mirror_bezier_xaxis"}
!142 = !{!"keyframes_edit.c:mirror_bezier_marker"}
!143 = !{!"keyframes_edit.c:mirror_bezier_value"}
!144 = !{!"keyframes_edit.c:set_bezier_auto"}
!145 = !{!"keyframes_edit.c:set_bezier_auto_clamped"}
!146 = !{!"keyframes_edit.c:set_bezier_vector"}
!147 = !{!"keyframes_edit.c:set_bezier_free"}
!148 = !{!"keyframes_edit.c:set_bezier_align"}
!149 = !{!"keyframes_edit.c:bezier_isfree"}
!150 = !{!"keyframes_edit.c:set_bezt_constant"}
!151 = !{!110, !37, i64 48}
!152 = !{!"keyframes_edit.c:set_bezt_linear"}
!153 = !{!"keyframes_edit.c:set_bezt_back"}
!154 = !{!"keyframes_edit.c:set_bezt_bounce"}
!155 = !{!"keyframes_edit.c:set_bezt_circle"}
!156 = !{!"keyframes_edit.c:set_bezt_cubic"}
!157 = !{!"keyframes_edit.c:set_bezt_elastic"}
!158 = !{!"keyframes_edit.c:set_bezt_expo"}
!159 = !{!"keyframes_edit.c:set_bezt_quad"}
!160 = !{!"keyframes_edit.c:set_bezt_quart"}
!161 = !{!"keyframes_edit.c:set_bezt_quint"}
!162 = !{!"keyframes_edit.c:set_bezt_sine"}
!163 = !{!"keyframes_edit.c:set_bezt_bezier"}
!164 = !{!"keyframes_edit.c:set_keytype_breakdown"}
!165 = !{!110, !37, i64 54}
!166 = !{!"keyframes_edit.c:set_keytype_extreme"}
!167 = !{!"keyframes_edit.c:set_keytype_jitter"}
!168 = !{!"keyframes_edit.c:set_keytype_keyframe"}
!169 = !{!"keyframes_edit.c:set_easingtype_easein"}
!170 = !{!110, !37, i64 55}
!171 = !{!"keyframes_edit.c:set_easingtype_easeout"}
!172 = !{!"keyframes_edit.c:set_easingtype_easeinout"}
!173 = !{!"keyframes_edit.c:set_easingtype_easeauto"}
!174 = !{!"keyframes_edit.c:select_bezier_add"}
!175 = !{!"keyframes_edit.c:select_bezier_subtract"}
!176 = !{!"keyframes_edit.c:select_bezier_invert"}
!177 = !{!"keyframes_edit.c:selmap_build_bezier_less"}
!178 = !{!37, !37, i64 0}
!179 = !{!"keyframes_edit.c:selmap_build_bezier_more"}
!180 = !{!"keyframes_edit.c:bezier_region_lasso_test"}
!181 = !{!182, !36, i64 0}
!182 = !{!"KeyframeEdit_LassoData", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24}
!183 = !{!182, !36, i64 8}
!184 = !{!182, !36, i64 16}
!185 = !{!182, !40, i64 24}
!186 = !{!"keyframes_edit.c:mirror_bezier_xaxis_ex"}
!187 = distinct !{!187, !49}
!188 = !{!"keyframes_edit.c:swap_v3_v3"}
!189 = !{!"keyframes_edit.c:mirror_bezier_yaxis_ex"}
!190 = distinct !{!190, !49}
