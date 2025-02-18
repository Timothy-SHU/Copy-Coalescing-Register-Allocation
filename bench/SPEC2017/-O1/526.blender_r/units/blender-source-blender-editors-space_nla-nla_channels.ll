; ModuleID = 'blender/source/blender/editors/space_nla/nla_channels.c'
source_filename = "blender/source/blender/editors/space_nla/nla_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }

@.str = private unnamed_addr constant [28 x i8] c"Mouse Click on NLA Channels\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NLA_OT_channels_click\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Handle clicks to select NLA channels\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Push Down Action\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"NLA_OT_action_pushdown\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Push action down onto the top of the NLA stack as a new strip\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"channel_index\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Channel Index\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Index of NLA action channel to perform pushdown operation on\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Add Tracks\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"NLA_OT_tracks_add\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Add NLA-Tracks above/after the selected tracks\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"above_selected\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Above Selected\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"Add a new NLA Track above every existing selected one\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Delete Tracks\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"NLA_OT_tracks_delete\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"Delete selected NLA-Tracks and the strips they contain\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Include Selected Objects\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"NLA_OT_selected_objects_add\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"Make selected objects appear in NLA Editor by adding Animation Data\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.24 = private unnamed_addr constant [74 x i8] c"Error: animation channel (index = %d) not found in mouse_anim_channels()\0A\00", align 1
@.str.26 = private unnamed_addr constant [118 x i8] c"No active AnimData block to use (select a datablock expander first or set the appropriate flags on an AnimData block)\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"No animation channel found at index %d\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"Animation channel at index %d is not a NLA 'Active Action' channel\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Internal Error - AnimData block is not valid\00", align 1
@.str.30 = private unnamed_addr constant [80 x i8] c"Cannot push down actions while tweaking a strip's action, exit tweak mode first\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"No active action to push down\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"Select an existing NLA Track or an empty action line first\00", align 1
@str = private unnamed_addr constant [52 x i8] c"Error: Invalid channel type in mouse_nla_channels()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_channels_click(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @nlachannels_mouseclick_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_nla_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlachannels_mouseclick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %301, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.3) #8
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !53
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %23, float noundef %26, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, 10
  %30 = sitofp i32 %29 to float
  %31 = icmp eq ptr %13, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.SpaceNla, ptr %13, i64 0, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !60
  %35 = and i16 %34, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %11
  br label %38

38:                                               ; preds = %32, %37
  %39 = phi float [ 0x3FF3333340000000, %37 ], [ 0x3FE99999A0000000, %32 ]
  %40 = sitofp i16 %27 to float
  %41 = fmul float %39, %40
  %42 = sitofp i16 %27 to float
  %43 = call float @llvm.fmuladd.f32(float %42, float 0x3FB99999A0000000, float %41)
  br i1 %31, label %49, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.SpaceNla, ptr %13, i64 0, i32 7
  %46 = load i16, ptr %45, align 2, !tbaa !60
  %47 = and i16 %46, 32
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %44, %49
  %51 = phi float [ 0x3FE3333340000000, %49 ], [ 0x3FD99999A0000000, %44 ]
  %52 = fmul float %51, %42
  %53 = load float, ptr %7, align 4, !tbaa !65
  %54 = load float, ptr %8, align 4, !tbaa !65
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %16, float noundef %30, float noundef %43, float noundef 0.000000e+00, float noundef %52, float noundef %53, float noundef %54, ptr noundef null, ptr noundef nonnull %6) #8
  %55 = load float, ptr %7, align 4, !tbaa !65
  %56 = load i32, ptr %6, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %57 = load ptr, ptr %14, align 8, !tbaa !50
  %58 = load ptr, ptr %5, align 8, !tbaa !66
  %59 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %60 = load i16, ptr %59, align 8, !tbaa !67
  %61 = sext i16 %60 to i32
  %62 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %58, i32 noundef %61) #8
  %63 = call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %56) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !68
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %299, label %69

69:                                               ; preds = %65
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %56)
  br label %299

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !70
  switch i32 %73, label %293 [
    i32 4, label %74
    i32 5, label %94
    i32 8, label %161
    i32 10, label %161
    i32 11, label %161
    i32 12, label %161
    i32 13, label %161
    i32 14, label %161
    i32 15, label %161
    i32 16, label %161
    i32 17, label %161
    i32 18, label %161
    i32 19, label %161
    i32 20, label %161
    i32 21, label %161
    i32 22, label %161
    i32 23, label %161
    i32 24, label %161
    i32 30, label %188
    i32 31, label %253
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = getelementptr inbounds %struct.Scene, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = getelementptr inbounds %struct.Scene, ptr %76, i64 0, i32 15
  %80 = load i16, ptr %79, align 4, !tbaa !92
  %81 = icmp eq ptr %78, null
  br i1 %20, label %88, label %82

82:                                               ; preds = %74
  %83 = xor i16 %80, 1
  store i16 %83, ptr %79, align 4, !tbaa !92
  br i1 %81, label %299, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.AnimData, ptr %78, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !93
  %87 = xor i32 %86, 16384
  store i32 %87, ptr %85, align 8, !tbaa !93
  br label %299

88:                                               ; preds = %74
  %89 = or i16 %80, 1
  store i16 %89, ptr %79, align 4, !tbaa !92
  br i1 %81, label %299, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.AnimData, ptr %78, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !93
  %93 = or i32 %92, 16384
  store i32 %93, ptr %91, align 8, !tbaa !93
  br label %299

94:                                               ; preds = %71
  %95 = load ptr, ptr %5, align 8, !tbaa !66
  %96 = load ptr, ptr %95, align 8, !tbaa !95
  %97 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !72
  %99 = getelementptr inbounds %struct.Base, ptr %98, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !97
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %5) #8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %299

105:                                              ; preds = %94
  br i1 %20, label %117, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.Base, ptr %98, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !102
  %109 = xor i32 %108, 1
  store i32 %109, ptr %107, align 8, !tbaa !102
  %110 = trunc i32 %109 to i16
  %111 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 53
  store i16 %110, ptr %111, align 4, !tbaa !103
  %112 = icmp eq ptr %102, null
  br i1 %112, label %152, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.AnimData, ptr %102, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !93
  %116 = xor i32 %115, 16384
  store i32 %116, ptr %114, align 8, !tbaa !93
  br label %152

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.Scene, ptr %96, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !104
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %117, %137
  %122 = phi ptr [ %138, %137 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 4
  %124 = load i32, ptr %123, align 8, !tbaa !102
  %125 = and i32 %124, -2
  store i32 %125, ptr %123, align 8, !tbaa !102
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds %struct.Base, ptr %122, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !97
  %129 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 53
  store i16 %126, ptr %129, align 4, !tbaa !103
  %130 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.AnimData, ptr %131, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !93
  %136 = and i32 %135, -49153
  store i32 %136, ptr %134, align 8, !tbaa !93
  br label %137

137:                                              ; preds = %133, %121
  %138 = load ptr, ptr %122, align 8, !tbaa !104
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %121, !llvm.loop !105

140:                                              ; preds = %137, %117
  %141 = getelementptr inbounds %struct.Base, ptr %98, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !102
  %143 = or i32 %142, 1
  store i32 %143, ptr %141, align 8, !tbaa !102
  %144 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 53
  %145 = load i16, ptr %144, align 4, !tbaa !103
  %146 = or i16 %145, 1
  store i16 %146, ptr %144, align 4, !tbaa !103
  %147 = icmp eq ptr %102, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.AnimData, ptr %102, i64 0, i32 7
  %150 = load i32, ptr %149, align 8, !tbaa !93
  %151 = or i32 %150, 16384
  store i32 %151, ptr %149, align 8, !tbaa !93
  br label %152

152:                                              ; preds = %148, %140, %113, %106
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef %98) #8
  %153 = icmp eq ptr %102, null
  br i1 %153, label %299, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.AnimData, ptr %102, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !93
  %157 = and i32 %156, 16384
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %299, label %159

159:                                              ; preds = %154
  %160 = or i32 %156, 32768
  store i32 %160, ptr %155, align 8, !tbaa !93
  br label %299

161:                                              ; preds = %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71, %71
  %162 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 10
  %163 = load ptr, ptr %162, align 8, !tbaa !108
  %164 = icmp eq ptr %163, null
  br i1 %164, label %299, label %165

165:                                              ; preds = %161
  br i1 %20, label %170, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.AnimData, ptr %163, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !93
  %169 = xor i32 %168, 16384
  store i32 %169, ptr %167, align 8, !tbaa !93
  br label %178

170:                                              ; preds = %165
  %171 = load ptr, ptr %5, align 8, !tbaa !66
  %172 = load i16, ptr %59, align 8, !tbaa !67
  %173 = sext i16 %172 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %171, i32 noundef %173, i8 noundef zeroext 0, i32 noundef 0) #8
  %174 = load ptr, ptr %162, align 8, !tbaa !108
  %175 = getelementptr inbounds %struct.AnimData, ptr %174, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !93
  %177 = or i32 %176, 16384
  store i32 %177, ptr %175, align 8, !tbaa !93
  br label %178

178:                                              ; preds = %170, %166
  %179 = load ptr, ptr %162, align 8, !tbaa !108
  %180 = icmp eq ptr %179, null
  br i1 %180, label %299, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.AnimData, ptr %179, i64 0, i32 7
  %183 = load i32, ptr %182, align 8, !tbaa !93
  %184 = and i32 %183, 16384
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %299, label %186

186:                                              ; preds = %181
  %187 = or i32 %183, 32768
  store i32 %187, ptr %182, align 8, !tbaa !93
  br label %299

188:                                              ; preds = %71
  %189 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !72
  %191 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 10
  %192 = load ptr, ptr %191, align 8, !tbaa !108
  %193 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !109
  %195 = icmp eq ptr %194, null
  br i1 %195, label %205, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.ID, ptr %194, i64 0, i32 4
  %198 = load i16, ptr %197, align 8, !tbaa !110
  switch i16 %198, label %205 [
    i16 16717, label %199
    i16 16720, label %199
  ]

199:                                              ; preds = %196, %196
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %201 = sitofp i16 %200 to float
  %202 = call float @llvm.fmuladd.f32(float %201, float 0x3FE99999A0000000, float 2.100000e+01)
  %203 = fptosi float %202 to i16
  %204 = sitofp i16 %203 to float
  br label %205

205:                                              ; preds = %199, %196, %188
  %206 = phi float [ %204, %199 ], [ 1.400000e+01, %196 ], [ 0.000000e+00, %188 ]
  %207 = getelementptr inbounds %struct.ARegion, ptr %57, i64 0, i32 2, i32 1, i32 1
  %208 = load float, ptr %207, align 4, !tbaa !111
  %209 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %210 = sitofp i16 %209 to float
  %211 = call float @llvm.fmuladd.f32(float %210, float 0xBFE99999A0000000, float %208)
  %212 = fcmp ugt float %211, %55
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.NlaTrack, ptr %190, i64 0, i32 3
  %215 = load i32, ptr %214, align 8, !tbaa !112
  %216 = xor i32 %215, 16
  store i32 %216, ptr %214, align 8, !tbaa !112
  br label %299

217:                                              ; preds = %205
  %218 = fmul float %210, 0x3FE99999A0000000
  %219 = call float @llvm.fmuladd.f32(float %218, float -2.000000e+00, float %208)
  %220 = fcmp ugt float %219, %55
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.NlaTrack, ptr %190, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !112
  %224 = xor i32 %223, 4
  store i32 %224, ptr %222, align 8, !tbaa !112
  br label %299

225:                                              ; preds = %217
  %226 = call float @llvm.fmuladd.f32(float %218, float 2.000000e+00, float %206)
  %227 = fcmp ult float %226, %55
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  call void @BKE_nlatrack_solo_toggle(ptr noundef %192, ptr noundef %190) #8
  br label %299

229:                                              ; preds = %225
  %230 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %5) #8
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %299

232:                                              ; preds = %229
  br i1 %20, label %237, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.NlaTrack, ptr %190, i64 0, i32 3
  %235 = load i32, ptr %234, align 8, !tbaa !112
  %236 = xor i32 %235, 2
  store i32 %236, ptr %234, align 8, !tbaa !112
  br label %244

237:                                              ; preds = %232
  %238 = load ptr, ptr %5, align 8, !tbaa !66
  %239 = load i16, ptr %59, align 8, !tbaa !67
  %240 = sext i16 %239 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %238, i32 noundef %240, i8 noundef zeroext 0, i32 noundef 0) #8
  %241 = getelementptr inbounds %struct.NlaTrack, ptr %190, i64 0, i32 3
  %242 = load i32, ptr %241, align 8, !tbaa !112
  %243 = or i32 %242, 2
  store i32 %243, ptr %241, align 8, !tbaa !112
  br label %244

244:                                              ; preds = %237, %233
  %245 = getelementptr inbounds %struct.NlaTrack, ptr %190, i64 0, i32 3
  %246 = load i32, ptr %245, align 8, !tbaa !112
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %299, label %249

249:                                              ; preds = %244
  %250 = load ptr, ptr %5, align 8, !tbaa !66
  %251 = load i16, ptr %59, align 8, !tbaa !67
  %252 = sext i16 %251 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %5, ptr noundef %250, i32 noundef %252, i32 noundef 11, ptr noundef %190, i32 noundef 30) #8
  br label %299

253:                                              ; preds = %71
  %254 = getelementptr inbounds %struct.bAnimListElem, ptr %63, i64 0, i32 9
  %255 = load ptr, ptr %254, align 8, !tbaa !109
  %256 = call ptr @BKE_animdata_from_id(ptr noundef %255) #8
  %257 = getelementptr inbounds %struct.ARegion, ptr %57, i64 0, i32 2, i32 1, i32 1
  %258 = load float, ptr %257, align 4, !tbaa !111
  %259 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !55
  %260 = sitofp i16 %259 to float
  %261 = call float @llvm.fmuladd.f32(float %260, float 0xBFE99999A0000000, float %258)
  %262 = fcmp ugt float %261, %55
  %263 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %5) #8
  %264 = icmp eq i8 %263, 0
  br i1 %262, label %271, label %265

265:                                              ; preds = %253
  br i1 %264, label %266, label %267

266:                                              ; preds = %265
  call void @BKE_nla_action_pushdown(ptr noundef %256) #8
  br label %299

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.AnimData, ptr %256, i64 0, i32 7
  %269 = load i32, ptr %268, align 8, !tbaa !93
  %270 = xor i32 %269, 8
  store i32 %270, ptr %268, align 8, !tbaa !93
  br label %299

271:                                              ; preds = %253
  br i1 %264, label %274, label %272

272:                                              ; preds = %271
  %273 = call zeroext i8 @nlaedit_disable_tweakmode(ptr noundef nonnull %5) #8
  br label %299

274:                                              ; preds = %271
  br i1 %20, label %279, label %275

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.AnimData, ptr %256, i64 0, i32 7
  %277 = load i32, ptr %276, align 8, !tbaa !93
  %278 = xor i32 %277, 16384
  store i32 %278, ptr %276, align 8, !tbaa !93
  br label %286

279:                                              ; preds = %274
  %280 = load ptr, ptr %5, align 8, !tbaa !66
  %281 = load i16, ptr %59, align 8, !tbaa !67
  %282 = sext i16 %281 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %5, ptr noundef %280, i32 noundef %282, i8 noundef zeroext 0, i32 noundef 0) #8
  %283 = getelementptr inbounds %struct.AnimData, ptr %256, i64 0, i32 7
  %284 = load i32, ptr %283, align 8, !tbaa !93
  %285 = or i32 %284, 16384
  store i32 %285, ptr %283, align 8, !tbaa !93
  br label %286

286:                                              ; preds = %279, %275
  %287 = getelementptr inbounds %struct.AnimData, ptr %256, i64 0, i32 7
  %288 = load i32, ptr %287, align 8, !tbaa !93
  %289 = and i32 %288, 16384
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %286
  %292 = or i32 %288, 32768
  store i32 %292, ptr %287, align 8, !tbaa !93
  br label %299

293:                                              ; preds = %71
  %294 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !68
  %295 = and i32 %294, 1
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %299

299:                                              ; preds = %82, %84, %88, %90, %94, %152, %154, %159, %161, %178, %181, %186, %213, %221, %228, %229, %244, %249, %266, %267, %272, %286, %291, %293, %297, %65, %69
  %300 = phi i32 [ 234881024, %69 ], [ 234881024, %65 ], [ 234881024, %297 ], [ 234881024, %293 ], [ 239599622, %88 ], [ 239599622, %90 ], [ 239599622, %82 ], [ 239599622, %84 ], [ 234881024, %94 ], [ 239599622, %159 ], [ 239599622, %154 ], [ 239599622, %152 ], [ 239599622, %178 ], [ 239599622, %181 ], [ 239599622, %186 ], [ 239599622, %161 ], [ 239599617, %213 ], [ 239599617, %221 ], [ 239599617, %228 ], [ 234881024, %229 ], [ 239599622, %249 ], [ 239599622, %244 ], [ 239730688, %272 ], [ 239730688, %267 ], [ 239730688, %266 ], [ 239599622, %291 ], [ 239599622, %286 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %300, ptr noundef null) #8
  br label %301

301:                                              ; preds = %3, %299
  %302 = phi i32 [ 4, %299 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  ret i32 %302
}

declare i32 @ED_operator_nla_active(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_action_pushdown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlachannels_pushdown_exec, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 2147483647) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !115
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlachannels_pushdown_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.9) #8
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %8, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %14 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #8
  %15 = icmp ne i8 %14, 0
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.26) #8
  br label %23

23:                                               ; preds = %13, %20
  %24 = phi ptr [ null, %20 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br i1 %19, label %49, label %68

25:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %3, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %28 = load i16, ptr %27, align 8, !tbaa !67
  %29 = sext i16 %28 to i32
  %30 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %26, i32 noundef %29) #8
  %31 = call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !116
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %8) #8
  br label %46

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !70
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !116
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %8) #8
  br label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  br label %46

46:                                               ; preds = %43, %40, %33
  %47 = phi i1 [ false, %33 ], [ false, %40 ], [ true, %43 ]
  %48 = phi ptr [ null, %33 ], [ null, %40 ], [ %45, %43 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br i1 %47, label %49, label %68

49:                                               ; preds = %46, %23
  %50 = phi ptr [ %24, %23 ], [ %48, %46 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  call void @BKE_report(ptr noundef %54, i32 noundef 16, ptr noundef nonnull @.str.29) #8
  br label %68

55:                                               ; preds = %49
  %56 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %3) #8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  call void @BKE_report(ptr noundef %60, i32 noundef 16, ptr noundef nonnull @.str.30) #8
  br label %68

61:                                               ; preds = %55
  %62 = load ptr, ptr %50, align 8, !tbaa !117
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !116
  call void @BKE_report(ptr noundef %66, i32 noundef 16, ptr noundef nonnull @.str.31) #8
  br label %68

67:                                               ; preds = %61
  call void @BKE_nla_action_pushdown(ptr noundef nonnull %50) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  br label %68

68:                                               ; preds = %2, %23, %46, %67, %64, %58, %52
  %69 = phi i32 [ 2, %52 ], [ 2, %58 ], [ 2, %64 ], [ 4, %67 ], [ 2, %23 ], [ 2, %46 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %69
}

declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @nlaedit_add_tracks_existing(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !67
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2115, ptr noundef %4, i32 noundef %7) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = icmp eq i8 %1, 0
  br label %13

13:                                               ; preds = %11, %34
  %14 = phi ptr [ %9, %11 ], [ %37, %34 ]
  %15 = phi ptr [ null, %11 ], [ %36, %34 ]
  %16 = phi i8 [ 0, %11 ], [ %35, %34 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  br i1 %12, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  br label %30

26:                                               ; preds = %20
  %27 = icmp ne ptr %15, null
  %28 = icmp eq ptr %22, %15
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %25, %23 ], [ null, %26 ]
  %32 = phi ptr [ %15, %23 ], [ %22, %26 ]
  %33 = call ptr @add_nlatrack(ptr noundef %22, ptr noundef %31) #8
  br label %34

34:                                               ; preds = %30, %26, %13
  %35 = phi i8 [ %16, %13 ], [ %16, %26 ], [ 1, %30 ]
  %36 = phi ptr [ %15, %13 ], [ %15, %26 ], [ %32, %30 ]
  %37 = load ptr, ptr %14, align 8, !tbaa !104
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %13, !llvm.loop !118

39:                                               ; preds = %34, %2
  %40 = phi i8 [ 0, %2 ], [ %35, %34 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @nlaedit_add_tracks_empty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !67
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 3139, ptr noundef %3, i32 noundef %6) #8
  %8 = load ptr, ptr %2, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %1 ]
  %12 = phi i8 [ %21, %20 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds %struct.AnimData, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call ptr @add_nlatrack(ptr noundef %14, ptr noundef null) #8
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i8 [ 1, %18 ], [ %12, %10 ]
  %22 = load ptr, ptr %11, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !120

24:                                               ; preds = %20, %1
  %25 = phi i8 [ 0, %1 ], [ %21, %20 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @NLA_OT_tracks_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_tracks_exec, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_add_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.15) #8
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = trunc i32 %7 to i8
  %12 = call zeroext i8 @nlaedit_add_tracks_existing(ptr noundef nonnull %4, i8 noundef zeroext %11), !range !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %4, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !67
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 3139, ptr noundef %13, i32 noundef %16) #8
  %18 = load ptr, ptr %3, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %10, %30
  %21 = phi ptr [ %32, %30 ], [ %18, %10 ]
  %22 = phi i8 [ %31, %30 ], [ 0, %10 ]
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %21, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.AnimData, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call ptr @add_nlatrack(ptr noundef %24, ptr noundef null) #8
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i8 [ 1, %28 ], [ %22, %20 ]
  %32 = load ptr, ptr %21, align 8, !tbaa !104
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !120

34:                                               ; preds = %30, %10
  %35 = phi i8 [ 0, %10 ], [ %31, %30 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %36 = or i8 %35, %12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #8
  br label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !116
  call void @BKE_report(ptr noundef %41, i32 noundef 16, ptr noundef nonnull @.str.32) #8
  br label %42

42:                                               ; preds = %2, %39, %38
  %43 = phi i32 [ 4, %38 ], [ 2, %39 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tracks_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_delete_tracks_exec, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_delete_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !67
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 67, ptr noundef %8, i32 noundef %11) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %7, %35
  %16 = phi ptr [ %36, %35 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %22, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !112
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.AnimData, ptr %24, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !93
  %32 = and i32 %31, -2
  store i32 %32, ptr %30, align 8, !tbaa !93
  br label %33

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds %struct.AnimData, ptr %24, i64 0, i32 3
  call void @free_nlatrack(ptr noundef nonnull %34, ptr noundef %22) #8
  br label %35

35:                                               ; preds = %15, %33
  %36 = load ptr, ptr %16, align 8, !tbaa !104
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %15, !llvm.loop !122

38:                                               ; preds = %35, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #8
  br label %39

39:                                               ; preds = %2, %38
  %40 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_selected_objects_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_objects_add_exec, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @nlaedit_objects_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceNla, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !124
  %18 = and i32 %17, -33554433
  store i32 %18, ptr %16, align 8, !tbaa !124
  br label %19

19:                                               ; preds = %15, %11, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %20 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #8
  %21 = load ptr, ptr %4, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !125
  %27 = call ptr @BKE_id_add_animdata(ptr noundef %26) #8
  %28 = load ptr, ptr %24, align 8, !tbaa !104
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !129

30:                                               ; preds = %23, %19
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #8
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %32
}

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BKE_nlatrack_solo_toggle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare void @BKE_nla_action_pushdown(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @nlaedit_disable_tweakmode(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @nla_panel_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @free_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 24}
!49 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!50 = !{!49, !36, i64 32}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !37, i64 0}
!55 = !{!56, !41, i64 8948}
!56 = !{!"UserDef", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !54, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !54, i64 8484, !54, i64 8488, !54, i64 8492, !41, i64 8496, !41, i64 8498, !54, i64 8500, !54, i64 8504, !54, i64 8508, !54, i64 8512, !54, i64 8516, !54, i64 8520, !54, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !54, i64 8912, !54, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !57, i64 8956, !57, i64 8960, !54, i64 8964, !41, i64 8968, !41, i64 8970, !57, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !58, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !54, i64 10896, !54, i64 10900, !57, i64 10904, !57, i64 10908, !54, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !59, i64 10928}
!57 = !{!"float", !37, i64 0}
!58 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!59 = !{!"WalkNavigation", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !41, i64 24, !37, i64 26}
!60 = !{!61, !41, i64 58}
!61 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !39, i64 16, !54, i64 32, !57, i64 36, !37, i64 40, !41, i64 56, !41, i64 58, !54, i64 60, !36, i64 64, !62, i64 72}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !37, i64 80, !37, i64 88, !57, i64 96, !57, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!63 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!64 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!65 = !{!57, !57, i64 0}
!66 = !{!49, !36, i64 0}
!67 = !{!49, !41, i64 8}
!68 = !{!69, !54, i64 2100}
!69 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !54, i64 2096, !54, i64 2100, !37, i64 2104, !54, i64 2108, !54, i64 2112, !37, i64 2116}
!70 = !{!71, !54, i64 24}
!71 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!72 = !{!71, !36, i64 16}
!73 = !{!74, !36, i64 120}
!74 = !{!"Scene", !75, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !54, i64 232, !54, i64 236, !54, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !83, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !54, i64 4380, !39, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !36, i64 4608, !89, i64 4616, !36, i64 4640, !90, i64 4648, !90, i64 4656, !78, i64 4664, !79, i64 4824, !91, i64 4888, !36, i64 4952}
!75 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !54, i64 400, !54, i64 404, !54, i64 408, !57, i64 412, !54, i64 416, !54, i64 420, !54, i64 424, !54, i64 428, !41, i64 432, !41, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !54, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !54, i64 484, !54, i64 488, !41, i64 492, !41, i64 494, !54, i64 496, !54, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !54, i64 516, !54, i64 520, !54, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !63, i64 544, !63, i64 560, !64, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !54, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !57, i64 660, !57, i64 664, !41, i64 668, !41, i64 670, !57, i64 672, !57, i64 676, !37, i64 680, !54, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !54, i64 2520, !41, i64 2524, !41, i64 2526, !57, i64 2528, !57, i64 2532, !41, i64 2536, !41, i64 2538, !57, i64 2540, !41, i64 2544, !41, i64 2546, !54, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !57, i64 2560, !57, i64 2564, !36, i64 2568, !54, i64 2576, !57, i64 2580, !37, i64 2584, !82, i64 2616, !54, i64 3976, !54, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !57, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !54, i64 0, !54, i64 4, !37, i64 8, !37, i64 72, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !41, i64 48, !41, i64 50, !54, i64 52, !54, i64 56, !54, i64 60}
!81 = !{!"FFMpegCodecData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !57, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !36, i64 64}
!82 = !{!"BakeData", !77, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !57, i64 1280, !57, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!83 = !{!"AudioData", !54, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !54, i64 16, !41, i64 20, !41, i64 22, !57, i64 24, !57, i64 28}
!84 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!85 = !{!"GameData", !84, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !86, i64 40, !41, i64 64, !41, i64 66, !57, i64 68, !87, i64 72, !57, i64 128, !57, i64 132, !54, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!86 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !57, i64 8, !57, i64 12, !36, i64 16}
!87 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !54, i64 40, !57, i64 44, !57, i64 48, !41, i64 52, !41, i64 54}
!88 = !{!"UnitSettings", !57, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!89 = !{!"PhysicsSettings", !37, i64 0, !54, i64 12, !54, i64 16, !54, i64 20}
!90 = !{!"long", !37, i64 0}
!91 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!92 = !{!74, !41, i64 244}
!93 = !{!94, !54, i64 80}
!94 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !54, i64 80, !54, i64 84, !41, i64 88, !41, i64 90, !57, i64 92}
!95 = !{!96, !36, i64 0}
!96 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !54, i64 96, !54, i64 100, !54, i64 104, !54, i64 108}
!97 = !{!98, !36, i64 32}
!98 = !{!"Base", !36, i64 0, !36, i64 8, !54, i64 16, !54, i64 20, !54, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!99 = !{!100, !36, i64 120}
!100 = !{!"Object", !75, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !54, i64 140, !54, i64 144, !54, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !101, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !54, i64 432, !54, i64 436, !36, i64 440, !36, i64 448, !54, i64 456, !54, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !57, i64 616, !57, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !54, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !54, i64 968, !54, i64 972, !54, i64 976, !54, i64 980, !54, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !57, i64 1048, !57, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !57, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !54, i64 1144, !54, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !57, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !90, i64 1304, !90, i64 1312, !54, i64 1320, !54, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!101 = !{!"bAnimVizSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44}
!102 = !{!98, !54, i64 24}
!103 = !{!100, !41, i64 948}
!104 = !{!36, !36, i64 0}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!71, !36, i64 56}
!109 = !{!71, !36, i64 48}
!110 = !{!41, !41, i64 0}
!111 = !{!62, !57, i64 20}
!112 = !{!113, !54, i64 32}
!113 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !54, i64 32, !54, i64 36, !37, i64 40}
!114 = !{!35, !36, i64 32}
!115 = !{!35, !36, i64 104}
!116 = !{!52, !36, i64 120}
!117 = !{!94, !36, i64 0}
!118 = distinct !{!118, !106, !107}
!119 = !{!39, !36, i64 0}
!120 = distinct !{!120, !106, !107}
!121 = !{i8 0, i8 2}
!122 = distinct !{!122, !106, !107}
!123 = !{!61, !36, i64 64}
!124 = !{!96, !54, i64 96}
!125 = !{!126, !36, i64 32}
!126 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !127, i64 16}
!127 = !{!"PointerRNA", !128, i64 0, !36, i64 8, !36, i64 16}
!128 = !{!"", !36, i64 0}
!129 = distinct !{!129, !106, !107}
