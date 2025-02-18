; ModuleID = 'blender/source/blender/editors/animation/keyframes_edit.c'
source_filename = "blender/source/blender/editors/animation/keyframes_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ListBase = type { ptr, ptr }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.KeyframeEdit_LassoData = type { ptr, ptr, ptr, i32 }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.KeyframeEditCD_Remap = type { float, float, float, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfraElem\00", align 1
@switch.table.ANIM_editkeyframes_ok = private unnamed_addr constant [7 x ptr] [ptr @ok_bezier_frame, ptr @ok_bezier_framerange, ptr @ok_bezier_selected, ptr @ok_bezier_value, ptr @ok_bezier_valuerange, ptr @ok_bezier_region, ptr @ok_bezier_region_lasso], align 8
@switch.table.ANIM_editkeyframes_snap = private unnamed_addr constant [6 x ptr] [ptr @snap_bezier_cframe, ptr @snap_bezier_nearest, ptr @snap_bezier_nearestsec, ptr @snap_bezier_nearmarker, ptr @snap_bezier_horizontal, ptr @snap_bezier_value], align 8
@switch.table.ANIM_editkeyframes_mirror = private unnamed_addr constant [5 x ptr] [ptr @mirror_bezier_cframe, ptr @mirror_bezier_yaxis, ptr @mirror_bezier_xaxis, ptr @mirror_bezier_marker, ptr @mirror_bezier_value], align 8
@switch.table.ANIM_editkeyframes_handles = private unnamed_addr constant [5 x ptr] [ptr @set_bezier_free, ptr @set_bezier_auto, ptr @set_bezier_vector, ptr @set_bezier_align, ptr @set_bezier_auto_clamped], align 8
@switch.table.ANIM_editkeyframes_ipo = private unnamed_addr constant [13 x ptr] [ptr @set_bezt_constant, ptr @set_bezt_linear, ptr @set_bezt_bezier, ptr @set_bezt_back, ptr @set_bezt_bounce, ptr @set_bezt_circle, ptr @set_bezt_cubic, ptr @set_bezt_elastic, ptr @set_bezt_expo, ptr @set_bezt_quad, ptr @set_bezt_quart, ptr @set_bezt_quint, ptr @set_bezt_sine], align 8
@switch.table.ANIM_editkeyframes_keytype = private unnamed_addr constant [3 x ptr] [ptr @set_keytype_extreme, ptr @set_keytype_breakdown, ptr @set_keytype_jitter], align 8
@switch.table.ANIM_editkeyframes_easing = private unnamed_addr constant [3 x ptr] [ptr @set_easingtype_easein, ptr @set_easingtype_easeout, ptr @set_easingtype_easeinout], align 8

; Function Attrs: nounwind uwtable
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
  br i1 %20, label %29, label %24

24:                                               ; preds = %19
  br i1 %23, label %61, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %27 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  %28 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 9
  br label %32

29:                                               ; preds = %19
  br i1 %23, label %61, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  br label %49

32:                                               ; preds = %25, %44
  %33 = phi i32 [ 0, %25 ], [ %46, %44 ]
  %34 = phi ptr [ %9, %25 ], [ %45, %44 ]
  br i1 %12, label %36, label %35

35:                                               ; preds = %32
  store i32 %33, ptr %26, align 8, !tbaa !45
  store i16 0, ptr %27, align 4, !tbaa !46
  br label %36

36:                                               ; preds = %35, %32
  %37 = tail call signext i16 %2(ptr noundef %0, ptr noundef nonnull %34) #12
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  br i1 %12, label %41, label %40

40:                                               ; preds = %39
  store i16 %37, ptr %28, align 4, !tbaa !46
  br label %41

41:                                               ; preds = %40, %39
  %42 = tail call signext i16 %3(ptr noundef %0, ptr noundef nonnull %34) #12
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %36, %41
  %45 = getelementptr inbounds %struct.BezTriple, ptr %34, i64 1
  %46 = add nuw i32 %33, 1
  %47 = load i32, ptr %21, align 8, !tbaa !47
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %32, label %61, !llvm.loop !48

49:                                               ; preds = %30, %56
  %50 = phi i32 [ 0, %30 ], [ %58, %56 ]
  %51 = phi ptr [ %9, %30 ], [ %57, %56 ]
  br i1 %12, label %53, label %52

52:                                               ; preds = %49
  store i32 %50, ptr %31, align 8, !tbaa !45
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
  br i1 %60, label %49, label %61, !llvm.loop !51

61:                                               ; preds = %44, %56, %24, %29, %17
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

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @ANIM_animchannel_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.bAnimContext, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.bAnimListElem, align 8
  %11 = alloca %struct.bAnimContext, align 8
  %12 = alloca %struct.ListBase, align 8
  %13 = alloca %struct.bAnimListElem, align 8
  %14 = alloca %struct.Base, align 8
  %15 = icmp eq ptr %2, null
  br i1 %15, label %139, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 7
  %18 = load i16, ptr %17, align 2, !tbaa !52
  switch i16 %18, label %139 [
    i16 1, label %19
    i16 9, label %23
    i16 8, label %40
    i16 7, label %53
    i16 6, label %81
    i16 5, label %108
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %21, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  br label %139

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %139, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 2
  br label %29

29:                                               ; preds = %37, %27
  %30 = phi ptr [ %28, %27 ], [ %31, %37 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %139, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %37, label %139

37:                                               ; preds = %33
  %38 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %31, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %29, label %139, !llvm.loop !59

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %139, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 1
  br label %46

46:                                               ; preds = %50, %44
  %47 = phi ptr [ %45, %44 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %139, label %50

50:                                               ; preds = %46
  %51 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %48, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %46, label %139, !llvm.loop !60

53:                                               ; preds = %16
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %11, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 40, i1 false)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  store ptr %55, ptr %58, align 8, !tbaa !61
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 3
  store i32 5, ptr %59, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 2
  store ptr %14, ptr %60, align 8, !tbaa !56
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 9
  store ptr %55, ptr %61, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = getelementptr inbounds %struct.bAnimListElem, ptr %13, i64 0, i32 10
  store ptr %63, ptr %64, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.bAnimContext, ptr %11, i64 0, i32 8
  store ptr %1, ptr %65, align 8, !tbaa !71
  store ptr %13, ptr %11, align 8, !tbaa !73
  %66 = getelementptr inbounds %struct.bAnimContext, ptr %11, i64 0, i32 1
  store i16 8, ptr %66, align 8, !tbaa !74
  %67 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 1, ptr noundef nonnull %13, i32 noundef 8) #12
  br label %68

68:                                               ; preds = %72, %57
  %69 = phi ptr [ %12, %57 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.bAnimListElem, ptr %70, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  %75 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %74, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !75

77:                                               ; preds = %72, %68
  %78 = phi i16 [ 0, %68 ], [ 1, %72 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %12) #12
  br label %79

79:                                               ; preds = %53, %77
  %80 = phi i16 [ %78, %77 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %11) #12
  br label %139

81:                                               ; preds = %16
  %82 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %106, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %10, i64 0, i32 3
  store i32 4, ptr %86, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %10, i64 0, i32 2
  store ptr %83, ptr %87, align 8, !tbaa !56
  %88 = getelementptr inbounds %struct.bAnimListElem, ptr %10, i64 0, i32 9
  store ptr %83, ptr %88, align 8, !tbaa !64
  %89 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !76
  %91 = getelementptr inbounds %struct.bAnimListElem, ptr %10, i64 0, i32 10
  store ptr %90, ptr %91, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct.bAnimContext, ptr %8, i64 0, i32 8
  store ptr %1, ptr %92, align 8, !tbaa !71
  store ptr %10, ptr %8, align 8, !tbaa !73
  %93 = getelementptr inbounds %struct.bAnimContext, ptr %8, i64 0, i32 1
  store i16 8, ptr %93, align 8, !tbaa !74
  %94 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %10, i32 noundef 8) #12
  br label %95

95:                                               ; preds = %99, %85
  %96 = phi ptr [ %9, %85 ], [ %97, %99 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.bAnimListElem, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %101, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %95, label %104, !llvm.loop !95

104:                                              ; preds = %99, %95
  %105 = phi i16 [ 0, %95 ], [ 1, %99 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %9) #12
  br label %106

106:                                              ; preds = %81, %104
  %107 = phi i16 [ %105, %104 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #12
  br label %139

108:                                              ; preds = %16
  %109 = getelementptr inbounds %struct.bAnimListElem, ptr %2, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %137, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %110, align 8, !tbaa !73
  %114 = getelementptr inbounds %struct.bAnimContext, ptr %110, i64 0, i32 1
  %115 = load i16, ptr %114, align 8, !tbaa !74
  %116 = sext i16 %115 to i32
  %117 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %110, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %113, i32 noundef %116) #12
  br label %118

118:                                              ; preds = %132, %112
  %119 = phi ptr [ %7, %112 ], [ %120, %132 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !57
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %120, i64 0, i32 7
  %124 = load i16, ptr %123, align 2, !tbaa !52
  %125 = and i16 %124, -2
  %126 = icmp eq i16 %125, 2
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.bAnimListElem, ptr %120, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !56
  %130 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %129, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !55
  %131 = zext nneg i16 %130 to i32
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i32 [ %131, %127 ], [ 0, %122 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %118, label %135, !llvm.loop !96

135:                                              ; preds = %132, %118
  %136 = phi i16 [ 1, %132 ], [ 0, %118 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %7) #12
  br label %137

137:                                              ; preds = %108, %135
  %138 = phi i16 [ %136, %135 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %139

139:                                              ; preds = %50, %46, %37, %33, %29, %40, %23, %16, %6, %137, %106, %79, %19
  %140 = phi i16 [ %138, %137 ], [ %107, %106 ], [ %80, %79 ], [ %22, %19 ], [ 0, %6 ], [ 0, %16 ], [ 0, %23 ], [ 0, %40 ], [ 1, %37 ], [ 0, %29 ], [ 0, %33 ], [ 1, %50 ], [ 0, %46 ]
  ret i16 %140
}

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.bAnimContext, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.bAnimListElem, align 8
  %12 = alloca %struct.bAnimContext, align 8
  %13 = alloca %struct.ListBase, align 8
  %14 = alloca %struct.bAnimListElem, align 8
  %15 = alloca %struct.Base, align 8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %110, label %17

17:                                               ; preds = %7
  switch i32 %3, label %110 [
    i32 1, label %18
    i32 9, label %20
    i32 8, label %33
    i32 7, label %42
    i32 6, label %64
    i32 5, label %85
  ]

18:                                               ; preds = %17
  %19 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  br label %110

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 2
  br label %22

22:                                               ; preds = %30, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %30 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %110, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.FCurve, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %110

30:                                               ; preds = %26
  %31 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %22, label %110, !llvm.loop !59

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.bAction, ptr %2, i64 0, i32 1
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %110, label %39

39:                                               ; preds = %35
  %40 = tail call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef nonnull %37, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %35, label %110, !llvm.loop !60

42:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %12) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  %43 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  store ptr %2, ptr %43, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 3
  store i32 5, ptr %44, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  store ptr %15, ptr %45, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 9
  store ptr %2, ptr %46, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 10
  store ptr %48, ptr %49, align 8, !tbaa !70
  %50 = getelementptr inbounds %struct.bAnimContext, ptr %12, i64 0, i32 8
  store ptr %1, ptr %50, align 8, !tbaa !71
  store ptr %14, ptr %12, align 8, !tbaa !73
  %51 = getelementptr inbounds %struct.bAnimContext, ptr %12, i64 0, i32 1
  store i16 8, ptr %51, align 8, !tbaa !74
  %52 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %14, i32 noundef 8) #12
  br label %53

53:                                               ; preds = %57, %42
  %54 = phi ptr [ %13, %42 ], [ %55, %57 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %55, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %59, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %53, label %62, !llvm.loop !75

62:                                               ; preds = %57, %53
  %63 = phi i16 [ 0, %53 ], [ 1, %57 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #12
  br label %110

64:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  %65 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 3
  store i32 4, ptr %65, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 2
  store ptr %2, ptr %66, align 8, !tbaa !56
  %67 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 9
  store ptr %2, ptr %67, align 8, !tbaa !64
  %68 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !76
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  store ptr %69, ptr %70, align 8, !tbaa !70
  %71 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 8
  store ptr %1, ptr %71, align 8, !tbaa !71
  store ptr %11, ptr %9, align 8, !tbaa !73
  %72 = getelementptr inbounds %struct.bAnimContext, ptr %9, i64 0, i32 1
  store i16 8, ptr %72, align 8, !tbaa !74
  %73 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %11, i32 noundef 8) #12
  br label %74

74:                                               ; preds = %78, %64
  %75 = phi ptr [ %10, %64 ], [ %76, %78 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.bAnimListElem, ptr %76, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !56
  %81 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %80, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %74, label %83, !llvm.loop !95

83:                                               ; preds = %78, %74
  %84 = phi i16 [ 0, %74 ], [ 1, %78 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #12
  br label %110

85:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %86 = load ptr, ptr %2, align 8, !tbaa !73
  %87 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %88 = load i16, ptr %87, align 8, !tbaa !74
  %89 = sext i16 %88 to i32
  %90 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %86, i32 noundef %89) #12
  br label %91

91:                                               ; preds = %105, %85
  %92 = phi ptr [ %8, %85 ], [ %93, %105 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !57
  %94 = icmp eq ptr %93, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 7
  %97 = load i16, ptr %96, align 2, !tbaa !52
  %98 = and i16 %97, -2
  %99 = icmp eq i16 %98, 2
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bAnimListElem, ptr %93, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !56
  %103 = call signext i16 @ANIM_fcurve_keyframes_loop(ptr noundef %0, ptr noundef %102, ptr noundef %4, ptr noundef %5, ptr noundef %6), !range !55
  %104 = zext nneg i16 %103 to i32
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i32 [ %104, %100 ], [ 0, %95 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %91, label %108, !llvm.loop !96

108:                                              ; preds = %105, %91
  %109 = phi i16 [ 1, %105 ], [ 0, %91 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %110

110:                                              ; preds = %39, %35, %30, %26, %22, %17, %7, %108, %83, %62, %18
  %111 = phi i16 [ %109, %108 ], [ %84, %83 ], [ %63, %62 ], [ %19, %18 ], [ 0, %7 ], [ 0, %17 ], [ 1, %30 ], [ 0, %22 ], [ 0, %26 ], [ 1, %39 ], [ 0, %35 ]
  ret i16 %111
}

; Function Attrs: nounwind uwtable
define dso_local void @ANIM_editkeyframes_refresh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !74
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %3, i32 noundef %6) #12
  %8 = load ptr, ptr %2, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  call void @sort_time_fcurve(ptr noundef %13) #12
  call void @calchandles_fcurve(ptr noundef %13) #12
  %14 = load ptr, ptr %11, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !97

16:                                               ; preds = %10, %1
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #3

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_frame(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = icmp eq ptr %0, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !100
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = load float, ptr %1, align 4, !tbaa !98
  %19 = fsub float %18, %6
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fcmp ult float %20, 0x3E80000000000000
  %22 = or disjoint i16 %10, 2
  %23 = select i1 %21, i16 %22, i16 %10
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !98
  %26 = fsub float %25, %6
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp ult float %27, 0x3E80000000000000
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = or disjoint i16 %23, 4
  br label %31

31:                                               ; preds = %17, %29, %12, %2
  %32 = phi i16 [ %30, %29 ], [ %23, %17 ], [ %10, %12 ], [ %10, %2 ]
  ret i16 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_framerange(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !101
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = icmp eq ptr %0, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !100
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load float, ptr %1, align 4, !tbaa !98
  %23 = fcmp ogt float %22, %6
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %26 = load float, ptr %25, align 4, !tbaa !101
  %27 = fcmp olt float %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = or disjoint i16 %14, 2
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = phi i16 [ %29, %28 ], [ %14, %24 ], [ %14, %21 ]
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !98
  %34 = fcmp ogt float %33, %6
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %37 = load float, ptr %36, align 4, !tbaa !101
  %38 = fcmp olt float %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = or i16 %31, 4
  br label %41

41:                                               ; preds = %30, %35, %39, %16, %13
  %42 = phi i16 [ %40, %39 ], [ %31, %35 ], [ %31, %30 ], [ %14, %16 ], [ %14, %13 ]
  ret i16 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_selected(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !104
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 1, !tbaa !105
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i16 0, i16 7
  br label %18

18:                                               ; preds = %12, %2, %7
  %19 = phi i16 [ 7, %7 ], [ 7, %2 ], [ %17, %12 ]
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_value(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ult float %8, 0x3E80000000000000
  %10 = zext i1 %9 to i16
  %11 = icmp eq ptr %0, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !100
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = fsub float %19, %6
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ult float %21, 0x3E80000000000000
  %23 = or disjoint i16 %10, 2
  %24 = select i1 %22, i16 %23, i16 %10
  %25 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !98
  %27 = fsub float %26, %6
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fcmp ult float %28, 0x3E80000000000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = or disjoint i16 %24, 4
  br label %32

32:                                               ; preds = %17, %30, %12, %2
  %33 = phi i16 [ %31, %30 ], [ %24, %17 ], [ %10, %12 ], [ %10, %2 ]
  ret i16 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal signext i16 @ok_bezier_valuerange(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fcmp ogt float %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !101
  %11 = fcmp olt float %4, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %8, %2
  %14 = phi i16 [ 1, %12 ], [ 0, %8 ], [ 0, %2 ]
  %15 = icmp eq ptr %0, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !100
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = fcmp ogt float %23, %6
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %27 = load float, ptr %26, align 4, !tbaa !101
  %28 = fcmp olt float %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = or disjoint i16 %14, 2
  br label %31

31:                                               ; preds = %29, %25, %21
  %32 = phi i16 [ %30, %29 ], [ %14, %25 ], [ %14, %21 ]
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !98
  %35 = fcmp ogt float %34, %6
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %38 = load float, ptr %37, align 4, !tbaa !101
  %39 = fcmp olt float %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = or i16 %32, 4
  br label %42

42:                                               ; preds = %31, %36, %40, %16, %13
  %43 = phi i16 [ %41, %40 ], [ %32, %36 ], [ %32, %31 ], [ %14, %16 ], [ %14, %13 ]
  ret i16 %43
}

; Function Attrs: nounwind uwtable
define internal signext i16 @ok_bezier_region(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %8 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %7) #12
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i16
  %11 = icmp eq ptr %0, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !100
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !106
  %19 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %18, ptr noundef %1) #12
  %20 = icmp eq i8 %19, 0
  %21 = or disjoint i16 %10, 2
  %22 = select i1 %20, i16 %10, i16 %21
  %23 = load ptr, ptr %3, align 8, !tbaa !106
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %25 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %23, ptr noundef nonnull %24) #12
  %26 = icmp eq i8 %25, 0
  %27 = or disjoint i16 %22, 4
  %28 = select i1 %26, i16 %22, i16 %27
  br label %29

29:                                               ; preds = %17, %2, %6, %12
  %30 = phi i16 [ %10, %12 ], [ %10, %6 ], [ 0, %2 ], [ %28, %17 ]
  ret i16 %30
}

; Function Attrs: nounwind uwtable
define internal signext i16 @ok_bezier_region_lasso(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %11 = load ptr, ptr %7, align 8, !tbaa !107
  %12 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %11, ptr noundef nonnull %10) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %15 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = load ptr, ptr %7, align 8, !tbaa !107
  call void @BLI_rctf_transform_pt_v(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %10) #12
  %18 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !111
  %22 = load float, ptr %5, align 4, !tbaa !98
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !98
  %26 = fptosi float %25 to i32
  %27 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %26, i32 noundef 2147483647) #12
  %28 = icmp eq i8 %27, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br i1 %28, label %29, label %30

29:                                               ; preds = %14, %9
  br label %30

30:                                               ; preds = %14, %29
  %31 = phi i16 [ 1, %14 ], [ 0, %29 ]
  %32 = icmp eq ptr %0, null
  br i1 %32, label %88, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %35 = load i16, ptr %34, align 2, !tbaa !100
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %6, align 8, !tbaa !106
  %40 = load ptr, ptr %39, align 8, !tbaa !107
  %41 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %40, ptr noundef %1) #12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %44 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %39, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !109
  %46 = load ptr, ptr %39, align 8, !tbaa !107
  call void @BLI_rctf_transform_pt_v(ptr noundef %45, ptr noundef %46, ptr noundef nonnull %4, ptr noundef %1) #12
  %47 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  %49 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %39, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !111
  %51 = load float, ptr %4, align 4, !tbaa !98
  %52 = fptosi float %51 to i32
  %53 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !98
  %55 = fptosi float %54 to i32
  %56 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %55, i32 noundef 2147483647) #12
  %57 = icmp eq i8 %56, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %57, label %58, label %59

58:                                               ; preds = %43, %38
  br label %59

59:                                               ; preds = %43, %58
  %60 = phi i1 [ false, %43 ], [ true, %58 ]
  %61 = or disjoint i16 %31, 2
  %62 = select i1 %60, i16 %31, i16 %61
  %63 = load ptr, ptr %6, align 8, !tbaa !106
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %65 = load ptr, ptr %63, align 8, !tbaa !107
  %66 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %65, ptr noundef nonnull %64) #12
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %69 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %63, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !109
  %71 = load ptr, ptr %63, align 8, !tbaa !107
  call void @BLI_rctf_transform_pt_v(ptr noundef %70, ptr noundef %71, ptr noundef nonnull %3, ptr noundef nonnull %64) #12
  %72 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %63, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !110
  %74 = getelementptr inbounds %struct.KeyframeEdit_LassoData, ptr %63, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !111
  %76 = load float, ptr %3, align 4, !tbaa !98
  %77 = fptosi float %76 to i32
  %78 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !98
  %80 = fptosi float %79 to i32
  %81 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %80, i32 noundef 2147483647) #12
  %82 = icmp eq i8 %81, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %82, label %83, label %84

83:                                               ; preds = %68, %59
  br label %84

84:                                               ; preds = %68, %83
  %85 = phi i1 [ false, %68 ], [ true, %83 ]
  %86 = or disjoint i16 %62, 4
  %87 = select i1 %85, i16 %62, i16 %86
  br label %88

88:                                               ; preds = %84, %2, %30, %33
  %89 = phi i16 [ %31, %33 ], [ %31, %30 ], [ 0, %2 ], [ %87, %84 ]
  ret i16 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef signext i16 @bezt_calc_average(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !99
  %12 = fadd float %9, %11
  store float %12, ptr %10, align 8, !tbaa !99
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !101
  %17 = fadd float %14, %16
  store float %17, ptr %15, align 4, !tbaa !101
  %18 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !112
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !112
  br label %21

21:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @bezt_to_cfraelem(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %9 = tail call ptr %8(i64 noundef 24, ptr noundef nonnull @.str) #12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #12
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.CfraElem, ptr %9, i64 0, i32 2
  store float %11, ptr %12, align 8, !tbaa !113
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bezt_remap_times(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 3
  %6 = load float, ptr %5, align 4, !tbaa !115
  %7 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !117
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds %struct.KeyframeEditCD_Remap, ptr %4, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !118
  %12 = load float, ptr %4, align 4, !tbaa !119
  %13 = fsub float %11, %12
  %14 = fdiv float %9, %13
  %15 = load float, ptr %1, align 4, !tbaa !98
  %16 = fsub float %15, %12
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %8)
  store float %17, ptr %1, align 4, !tbaa !98
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = load float, ptr %4, align 4, !tbaa !119
  %21 = fsub float %19, %20
  %22 = load float, ptr %7, align 4, !tbaa !117
  %23 = tail call float @llvm.fmuladd.f32(float %14, float %21, float %22)
  store float %23, ptr %18, align 4, !tbaa !98
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !98
  %26 = load float, ptr %4, align 4, !tbaa !119
  %27 = fsub float %25, %26
  %28 = load float, ptr %7, align 4, !tbaa !117
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %27, float %28)
  store float %29, ptr %24, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_nearest(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = fadd float %9, 5.000000e-01
  %11 = tail call float @llvm.floor.f32(float %10)
  store float %11, ptr %8, align 4, !tbaa !98
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !121
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !98
  br label %14

14:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nounwind uwtable
define internal noundef signext i16 @snap_bezier_nearmarker(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef %0, float noundef %9) #12
  %11 = sitofp i32 %10 to float
  store float %11, ptr %8, align 4, !tbaa !98
  br label %12

12:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @snap_bezier_nearestsec(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !122
  %12 = sitofp i16 %11 to double
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = fpext float %14 to double
  %16 = fdiv double %12, %15
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = fdiv float %19, %17
  %21 = fadd float %20, 5.000000e-01
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fmul float %22, %17
  store float %23, ptr %18, align 4, !tbaa !98
  br label %24

24:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_horizontal(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %9, ptr %11, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !124
  switch i8 %13, label %15 [
    i8 1, label %14
    i8 4, label %14
    i8 2, label %14
  ]

14:                                               ; preds = %7, %7, %7
  store i8 3, ptr %12, align 1, !tbaa !124
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 2, !tbaa !125
  switch i8 %17, label %19 [
    i8 1, label %18
    i8 4, label %18
    i8 2, label %18
  ]

18:                                               ; preds = %15, %15, %15
  store i8 3, ptr %16, align 2, !tbaa !125
  br label %19

19:                                               ; preds = %15, %18, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1, i64 1
  store float %9, ptr %10, align 4, !tbaa !98
  br label %11

11:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @mirror_bezier_cframe(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !121
  %12 = sitofp i32 %11 to float
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %19, %13 ]
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !98
  %17 = fsub float %12, %16
  %18 = fadd float %17, %12
  store float %18, ptr %15, align 4, !tbaa !98
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %13, !llvm.loop !126

21:                                               ; preds = %13
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %23 = load float, ptr %1, align 4, !tbaa !98
  %24 = load float, ptr %22, align 4, !tbaa !98
  store float %24, ptr %1, align 4, !tbaa !98
  store float %23, ptr %22, align 4, !tbaa !98
  %25 = getelementptr inbounds float, ptr %1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !98
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !98
  store float %28, ptr %25, align 4, !tbaa !98
  store float %26, ptr %27, align 4, !tbaa !98
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !98
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !98
  store float %32, ptr %29, align 4, !tbaa !98
  store float %30, ptr %31, align 4, !tbaa !98
  %33 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %34 = load i8, ptr %33, align 1, !tbaa !124
  %35 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %36 = load i8, ptr %35, align 2, !tbaa !125
  store i8 %36, ptr %33, align 1, !tbaa !124
  store i8 %34, ptr %35, align 2, !tbaa !125
  %37 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !104
  %39 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !105
  store i8 %40, ptr %37, align 1, !tbaa !104
  store i8 %38, ptr %39, align 1, !tbaa !105
  br label %41

41:                                               ; preds = %21, %2
  ret i16 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_yaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %8, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = fsub float 0.000000e+00, %10
  store float %11, ptr %9, align 4, !tbaa !98
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %7, !llvm.loop !127

14:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_xaxis(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = fsub float 0.000000e+00, %10
  store float %11, ptr %9, align 4, !tbaa !98
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %7, !llvm.loop !126

14:                                               ; preds = %7
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %16 = load float, ptr %1, align 4, !tbaa !98
  %17 = load float, ptr %15, align 4, !tbaa !98
  store float %17, ptr %1, align 4, !tbaa !98
  store float %16, ptr %15, align 4, !tbaa !98
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !98
  store float %21, ptr %18, align 4, !tbaa !98
  store float %19, ptr %20, align 4, !tbaa !98
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !98
  store float %25, ptr %22, align 4, !tbaa !98
  store float %23, ptr %24, align 4, !tbaa !98
  %26 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %27 = load i8, ptr %26, align 1, !tbaa !124
  %28 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %29 = load i8, ptr %28, align 2, !tbaa !125
  store i8 %29, ptr %26, align 1, !tbaa !124
  store i8 %27, ptr %28, align 2, !tbaa !125
  %30 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %31 = load i8, ptr %30, align 1, !tbaa !104
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %33 = load i8, ptr %32, align 1, !tbaa !105
  store i8 %33, ptr %30, align 1, !tbaa !104
  store i8 %31, ptr %32, align 1, !tbaa !105
  br label %34

34:                                               ; preds = %14, %2
  ret i16 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_marker(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !99
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %16, %10 ]
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !98
  %14 = fsub float %9, %13
  %15 = fadd float %9, %14
  store float %15, ptr %12, align 4, !tbaa !98
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %10, !llvm.loop !126

18:                                               ; preds = %10
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %20 = load float, ptr %1, align 4, !tbaa !98
  %21 = load float, ptr %19, align 4, !tbaa !98
  store float %21, ptr %1, align 4, !tbaa !98
  store float %20, ptr %19, align 4, !tbaa !98
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !98
  store float %25, ptr %22, align 4, !tbaa !98
  store float %23, ptr %24, align 4, !tbaa !98
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !98
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !98
  store float %29, ptr %26, align 4, !tbaa !98
  store float %27, ptr %28, align 4, !tbaa !98
  %30 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %31 = load i8, ptr %30, align 1, !tbaa !124
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %33 = load i8, ptr %32, align 2, !tbaa !125
  store i8 %33, ptr %30, align 1, !tbaa !124
  store i8 %31, ptr %32, align 2, !tbaa !125
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !104
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !105
  store i8 %37, ptr %34, align 1, !tbaa !104
  store i8 %35, ptr %36, align 1, !tbaa !105
  br label %38

38:                                               ; preds = %18, %2
  ret i16 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef signext i16 @mirror_bezier_value(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !99
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %16, %10 ]
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !98
  %14 = fsub float %9, %13
  %15 = fadd float %9, %14
  store float %15, ptr %12, align 4, !tbaa !98
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %10, !llvm.loop !126

18:                                               ; preds = %10
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2
  %20 = load float, ptr %1, align 4, !tbaa !98
  %21 = load float, ptr %19, align 4, !tbaa !98
  store float %21, ptr %1, align 4, !tbaa !98
  store float %20, ptr %19, align 4, !tbaa !98
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !98
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !98
  store float %25, ptr %22, align 4, !tbaa !98
  store float %23, ptr %24, align 4, !tbaa !98
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !98
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !98
  store float %29, ptr %26, align 4, !tbaa !98
  store float %27, ptr %28, align 4, !tbaa !98
  %30 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %31 = load i8, ptr %30, align 1, !tbaa !124
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %33 = load i8, ptr %32, align 2, !tbaa !125
  store i8 %33, ptr %30, align 1, !tbaa !124
  store i8 %31, ptr %32, align 2, !tbaa !125
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %35 = load i8, ptr %34, align 1, !tbaa !104
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !105
  store i8 %37, ptr %34, align 1, !tbaa !104
  store i8 %35, ptr %36, align 1, !tbaa !105
  br label %38

38:                                               ; preds = %18, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_auto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !105
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  br i1 %6, label %15, label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 1, ptr %14, align 1, !tbaa !124
  br label %15

15:                                               ; preds = %13, %12
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %17 = load i8, ptr %16, align 1, !tbaa !105
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 1, ptr %21, align 2, !tbaa !125
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %24 = load i8, ptr %23, align 1, !tbaa !124
  %25 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %26 = load i8, ptr %25, align 2, !tbaa !125
  %27 = icmp eq i8 %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  switch i8 %24, label %30 [
    i8 3, label %29
    i8 1, label %29
    i8 4, label %29
  ]

29:                                               ; preds = %28, %28, %28
  store i8 0, ptr %23, align 1, !tbaa !124
  br label %30

30:                                               ; preds = %28, %29
  switch i8 %26, label %32 [
    i8 3, label %31
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %30, %30, %30
  store i8 0, ptr %25, align 2, !tbaa !125
  br label %32

32:                                               ; preds = %30, %22, %31, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_auto_clamped(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %9 = load i8, ptr %8, align 1, !tbaa !105
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  br i1 %6, label %15, label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 4, ptr %14, align 1, !tbaa !124
  br label %15

15:                                               ; preds = %13, %12
  %16 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %17 = load i8, ptr %16, align 1, !tbaa !105
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 4, ptr %21, align 2, !tbaa !125
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %24 = load i8, ptr %23, align 1, !tbaa !124
  %25 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %26 = load i8, ptr %25, align 2, !tbaa !125
  %27 = icmp eq i8 %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  switch i8 %24, label %30 [
    i8 3, label %29
    i8 1, label %29
    i8 4, label %29
  ]

29:                                               ; preds = %28, %28, %28
  store i8 0, ptr %23, align 1, !tbaa !124
  br label %30

30:                                               ; preds = %28, %29
  switch i8 %26, label %32 [
    i8 3, label %31
    i8 1, label %31
    i8 4, label %31
  ]

31:                                               ; preds = %30, %30, %30
  store i8 0, ptr %25, align 2, !tbaa !125
  br label %32

32:                                               ; preds = %30, %22, %31, %7
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_vector(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 2, ptr %8, align 1, !tbaa !124
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !105
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 2, ptr %15, align 2, !tbaa !125
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_free(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 0, ptr %8, align 1, !tbaa !124
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !105
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 0, ptr %15, align 2, !tbaa !125
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezier_align(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 3, ptr %8, align 1, !tbaa !124
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !105
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 3, ptr %15, align 2, !tbaa !125
  br label %16

16:                                               ; preds = %14, %9
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef signext i16 @bezier_isfree(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !104
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !124
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 1, !tbaa !105
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %18 = load i8, ptr %17, align 2, !tbaa !125
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %16, %7, %20
  %22 = phi i16 [ 0, %20 ], [ 1, %7 ], [ 1, %16 ]
  ret i16 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_constant(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 0, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_linear(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_back(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 3, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bounce(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 4, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_circle(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 5, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_cubic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 6, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_elastic(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 7, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_expo(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 8, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quad(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 9, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quart(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 10, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_quint(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 11, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_sine(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 12, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_bezt_bezier(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 4
  store i8 2, ptr %8, align 4, !tbaa !128
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_breakdown(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 2, ptr %8, align 2, !tbaa !129
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_extreme(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 1, ptr %8, align 2, !tbaa !129
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_jitter(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 3, ptr %8, align 2, !tbaa !129
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_keytype_keyframe(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 10
  store i8 0, ptr %8, align 2, !tbaa !129
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easein(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 1, ptr %8, align 1, !tbaa !130
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 2, ptr %8, align 1, !tbaa !130
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeinout(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 3, ptr %8, align 1, !tbaa !130
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @set_easingtype_easeauto(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 11
  store i8 0, ptr %8, align 1, !tbaa !130
  br label %9

9:                                                ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_select(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp eq i16 %0, 4
  %3 = select i1 %2, ptr @select_bezier_subtract, ptr @select_bezier_add
  %4 = icmp eq i16 %0, 8
  %5 = select i1 %4, ptr @select_bezier_invert, ptr %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_add(ptr noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !100
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
  %16 = load i8, ptr %15, align 4, !tbaa !102
  %17 = or i8 %16, 1
  store i8 %17, ptr %15, align 4, !tbaa !102
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !104
  %24 = or i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !104
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !104
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 1, !tbaa !104
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !102
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 4, !tbaa !102
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !105
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !105
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_subtract(ptr noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !100
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
  %16 = load i8, ptr %15, align 4, !tbaa !102
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 4, !tbaa !102
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i16 %11, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %23 = load i8, ptr %22, align 1, !tbaa !104
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 1, !tbaa !104
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i16 %11, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %35

28:                                               ; preds = %4, %2
  %29 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !104
  %31 = and i8 %30, -2
  store i8 %31, ptr %29, align 1, !tbaa !104
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 4, !tbaa !102
  %34 = and i8 %33, -2
  store i8 %34, ptr %32, align 4, !tbaa !102
  br label %35

35:                                               ; preds = %25, %28
  %36 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !105
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 1, !tbaa !105
  br label %39

39:                                               ; preds = %35, %25
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @select_bezier_invert(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !102
  %5 = xor i8 %4, 1
  store i8 %5, ptr %3, align 4, !tbaa !102
  %6 = and i8 %4, 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 1, !tbaa !104
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %7, label %11, label %15

11:                                               ; preds = %2
  %12 = or i8 %9, 1
  store i8 %12, ptr %8, align 1, !tbaa !104
  %13 = load i8, ptr %10, align 1, !tbaa !105
  %14 = or i8 %13, 1
  br label %19

15:                                               ; preds = %2
  %16 = and i8 %9, -2
  store i8 %16, ptr %8, align 1, !tbaa !104
  %17 = load i8, ptr %10, align 1, !tbaa !105
  %18 = and i8 %17, -2
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i8 [ %18, %15 ], [ %14, %11 ]
  store i8 %20, ptr %10, align 1, !tbaa !105
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ANIM_editkeyframes_buildselmap(i16 noundef signext %0) local_unnamed_addr #4 {
  %2 = icmp eq i16 %0, 1
  %3 = select i1 %2, ptr @selmap_build_bezier_less, ptr @selmap_build_bezier_more
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !102
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !104
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !105
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18, %13, %2
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 8
  %27 = load i8, ptr %26, align 4, !tbaa !102
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !104
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !105
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
  %49 = load i8, ptr %48, align 4, !tbaa !102
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %54 = load i8, ptr %53, align 1, !tbaa !104
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %59 = load i8, ptr %58, align 1, !tbaa !105
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %64

62:                                               ; preds = %42
  %63 = icmp eq i32 %8, %45
  br i1 %63, label %67, label %64

64:                                               ; preds = %52, %47, %62, %57
  %65 = sext i32 %8 to i64
  %66 = getelementptr inbounds i8, ptr %6, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !131
  br label %67

67:                                               ; preds = %18, %64, %62, %40, %35, %57
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef signext i16 @selmap_build_bezier_more(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !102
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %15 = load i8, ptr %14, align 1, !tbaa !104
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !105
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
  %29 = load i8, ptr %28, align 4, !tbaa !102
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !104
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr %struct.BezTriple, ptr %1, i64 -1, i32 9
  %39 = load i8, ptr %38, align 1, !tbaa !105
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
  %51 = load i8, ptr %50, align 4, !tbaa !102
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !104
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 1, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !105
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59, %54, %49
  %65 = sext i32 %8 to i64
  br label %66

66:                                               ; preds = %23, %42, %64
  %67 = phi i64 [ %65, %64 ], [ %43, %42 ], [ %24, %23 ]
  %68 = getelementptr inbounds i8, ptr %6, i64 %67
  store i8 1, ptr %68, align 1, !tbaa !131
  br label %69

69:                                               ; preds = %66, %44, %59
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef signext i16 @bezt_selmap_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.KeyframeEditData, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !131
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !104
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  br i1 %10, label %21, label %15

15:                                               ; preds = %2
  %16 = or i8 %12, 1
  store i8 %16, ptr %11, align 1, !tbaa !104
  %17 = load i8, ptr %13, align 4, !tbaa !102
  %18 = or i8 %17, 1
  store i8 %18, ptr %13, align 4, !tbaa !102
  %19 = load i8, ptr %14, align 1, !tbaa !105
  %20 = or i8 %19, 1
  br label %27

21:                                               ; preds = %2
  %22 = and i8 %12, -2
  store i8 %22, ptr %11, align 1, !tbaa !104
  %23 = load i8, ptr %13, align 4, !tbaa !102
  %24 = and i8 %23, -2
  store i8 %24, ptr %13, align 4, !tbaa !102
  %25 = load i8, ptr %14, align 1, !tbaa !105
  %26 = and i8 %25, -2
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i8 [ %26, %21 ], [ %20, %15 ]
  store i8 %28, ptr %14, align 1, !tbaa !105
  ret i16 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_transform_pt_v(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

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
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!53, !42, i64 38}
!53 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!54 = !{!53, !36, i64 40}
!55 = !{i16 0, i16 2}
!56 = !{!53, !36, i64 16}
!57 = !{!36, !36, i64 0}
!58 = !{!35, !36, i64 16}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = !{!62, !36, i64 32}
!62 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!63 = !{!53, !40, i64 24}
!64 = !{!53, !36, i64 48}
!65 = !{!66, !36, i64 120}
!66 = !{!"Object", !67, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !68, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !69, i64 1304, !69, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!67 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!68 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!69 = !{!"long", !37, i64 0}
!70 = !{!53, !36, i64 56}
!71 = !{!72, !36, i64 40}
!72 = !{!"bAnimContext", !36, i64 0, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!73 = !{!72, !36, i64 0}
!74 = !{!72, !42, i64 8}
!75 = distinct !{!75, !49, !50}
!76 = !{!77, !36, i64 120}
!77 = !{!"Scene", !67, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !78, i64 280, !87, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !40, i64 4380, !39, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !36, i64 4608, !93, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !80, i64 4664, !81, i64 4824, !94, i64 4888, !36, i64 4952}
!78 = !{!"RenderData", !79, i64 0, !36, i64 248, !36, i64 256, !82, i64 264, !83, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !42, i64 432, !42, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !40, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !40, i64 484, !40, i64 488, !42, i64 492, !42, i64 494, !40, i64 496, !40, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !84, i64 544, !84, i64 560, !85, i64 576, !39, i64 592, !42, i64 608, !42, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !41, i64 660, !41, i64 664, !42, i64 668, !42, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !42, i64 2524, !42, i64 2526, !41, i64 2528, !41, i64 2532, !42, i64 2536, !42, i64 2538, !41, i64 2540, !42, i64 2544, !42, i64 2546, !40, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !86, i64 2616, !40, i64 3976, !40, i64 3980}
!79 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!82 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !42, i64 48, !42, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!83 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!84 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!85 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!86 = !{!"BakeData", !79, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!87 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28}
!88 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!89 = !{!"GameData", !88, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !90, i64 40, !42, i64 64, !42, i64 66, !41, i64 68, !91, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!90 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!91 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !42, i64 52, !42, i64 54}
!92 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!93 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}
!97 = distinct !{!97, !49, !50}
!98 = !{!41, !41, i64 0}
!99 = !{!44, !41, i64 32}
!100 = !{!44, !42, i64 62}
!101 = !{!44, !41, i64 36}
!102 = !{!103, !37, i64 52}
!103 = !{!"BezTriple", !37, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !37, i64 68}
!104 = !{!103, !37, i64 51}
!105 = !{!103, !37, i64 53}
!106 = !{!44, !36, i64 24}
!107 = !{!108, !36, i64 0}
!108 = !{!"KeyframeEdit_LassoData", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24}
!109 = !{!108, !36, i64 8}
!110 = !{!108, !36, i64 16}
!111 = !{!108, !40, i64 24}
!112 = !{!44, !40, i64 40}
!113 = !{!114, !41, i64 16}
!114 = !{!"CfraElem", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 20}
!115 = !{!116, !41, i64 12}
!116 = !{!"KeyframeEditCD_Remap", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!117 = !{!116, !41, i64 8}
!118 = !{!116, !41, i64 4}
!119 = !{!116, !41, i64 0}
!120 = !{!44, !36, i64 16}
!121 = !{!77, !40, i64 680}
!122 = !{!77, !42, i64 820}
!123 = !{!77, !41, i64 900}
!124 = !{!103, !37, i64 49}
!125 = !{!103, !37, i64 50}
!126 = distinct !{!126, !49, !50}
!127 = distinct !{!127, !49, !50}
!128 = !{!103, !37, i64 48}
!129 = !{!103, !37, i64 54}
!130 = !{!103, !37, i64 55}
!131 = !{!37, !37, i64 0}
