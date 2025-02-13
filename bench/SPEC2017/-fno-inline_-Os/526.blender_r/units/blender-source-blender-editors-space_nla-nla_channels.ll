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
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlachannels_mouseclick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !48 {
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %8 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.3) #9
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i16 1, i16 8
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = sitofp i32 %25 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %15, float noundef %23, float noundef %26, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, 10
  %30 = sitofp i32 %29 to float
  %31 = icmp eq ptr %12, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = sitofp i16 %27 to float
  br label %44

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.SpaceNla, ptr %12, i64 0, i32 7
  %36 = load i16, ptr %35, align 2, !tbaa !61
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  %39 = sitofp i16 %27 to float
  br i1 %38, label %44, label %40

40:                                               ; preds = %34
  %41 = fmul float %39, 0x3FE99999A0000000
  %42 = call float @llvm.fmuladd.f32(float %39, float 0x3FB99999A0000000, float %41)
  %43 = fmul float %39, 0x3FD99999A0000000
  br label %49

44:                                               ; preds = %34, %32
  %45 = phi float [ %33, %32 ], [ %39, %34 ]
  %46 = fmul float %45, 0x3FF3333340000000
  %47 = call float @llvm.fmuladd.f32(float %45, float 0x3FB99999A0000000, float %46)
  %48 = fmul float %45, 0x3FE3333340000000
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi float [ %42, %40 ], [ %47, %44 ]
  %51 = phi float [ %43, %40 ], [ %48, %44 ]
  %52 = load float, ptr %6, align 4, !tbaa !66
  %53 = load float, ptr %7, align 4, !tbaa !66
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %15, float noundef %30, float noundef %50, float noundef 0.000000e+00, float noundef %51, float noundef %52, float noundef %53, ptr noundef null, ptr noundef nonnull %5) #9
  %54 = load float, ptr %6, align 4, !tbaa !66
  %55 = load i32, ptr %5, align 4, !tbaa !54
  %56 = call fastcc i32 @mouse_nla_channels(ptr noundef %0, ptr noundef nonnull %4, float noundef %54, i32 noundef %55, i16 noundef signext %20) #11, !range !67
  %57 = or disjoint i32 %56, 234881024
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %57, ptr noundef null) #9
  br label %58

58:                                               ; preds = %3, %49
  %59 = phi i32 [ 4, %49 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #10
  ret i32 %59
}

; Function Attrs: optsize
declare i32 @ED_operator_nla_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_action_pushdown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlachannels_pushdown_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 2147483647) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !69
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlachannels_pushdown_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !70 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.9) #9
  %9 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %8, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %14 = call zeroext i8 @nla_panel_context(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #9
  %15 = icmp ne i8 %14, 0
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %47

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.26) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %61

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %25 = load ptr, ptr %3, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %27 = load i16, ptr %26, align 8, !tbaa !73
  %28 = sext i16 %27 to i32
  %29 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 11, ptr noundef %25, i32 noundef %28) #9
  %30 = call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !74
  %35 = icmp eq i32 %34, 31
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %24
  %37 = phi ptr [ @.str.27, %24 ], [ @.str.28, %32 ]
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %39, i32 noundef 32, ptr noundef nonnull %37, i32 noundef %8) #9
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %61

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.bAnimListElem, ptr %30, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  call void @BKE_report(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.29) #9
  br label %61

47:                                               ; preds = %20, %40
  %48 = phi ptr [ %17, %20 ], [ %42, %40 ]
  %49 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %3) #9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !71
  call void @BKE_report(ptr noundef %53, i32 noundef 16, ptr noundef nonnull @.str.30) #9
  br label %61

54:                                               ; preds = %47
  %55 = load ptr, ptr %48, align 8, !tbaa !77
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  call void @BKE_report(ptr noundef %59, i32 noundef 16, ptr noundef nonnull @.str.31) #9
  br label %61

60:                                               ; preds = %54
  call void @BKE_nla_action_pushdown(ptr noundef nonnull %48) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #9
  br label %61

61:                                               ; preds = %36, %21, %2, %60, %57, %51, %44
  %62 = phi i32 [ 2, %44 ], [ 2, %51 ], [ 2, %57 ], [ 4, %60 ], [ 2, %21 ], [ 2, %2 ], [ 2, %36 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #10
  ret i32 %62
}

; Function Attrs: optsize
declare i32 @nlaop_poll_tweakmode_off(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @nlaedit_add_tracks_existing(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !73
  %7 = sext i16 %6 to i32
  %8 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2115, ptr noundef %4, i32 noundef %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !79
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
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  br i1 %12, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  br label %30

26:                                               ; preds = %20
  %27 = icmp ne ptr %15, null
  %28 = icmp eq ptr %22, %15
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %25, %23 ], [ null, %26 ]
  %32 = phi ptr [ %15, %23 ], [ %22, %26 ]
  %33 = call ptr @add_nlatrack(ptr noundef %22, ptr noundef %31) #9
  br label %34

34:                                               ; preds = %30, %26, %13
  %35 = phi i8 [ %16, %13 ], [ %16, %26 ], [ 1, %30 ]
  %36 = phi ptr [ %15, %13 ], [ %15, %26 ], [ %32, %30 ]
  %37 = load ptr, ptr %14, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %13, !llvm.loop !81

39:                                               ; preds = %34, %2
  %40 = phi i8 [ 0, %2 ], [ %35, %34 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i8 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @nlaedit_add_tracks_empty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = sext i16 %5 to i32
  %7 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 3139, ptr noundef %3, i32 noundef %6) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %1 ]
  %12 = phi i8 [ %21, %20 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %11, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.AnimData, ptr %14, i64 0, i32 3
  %16 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %15) #11, !range !83
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call ptr @add_nlatrack(ptr noundef %14, ptr noundef null) #9
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i8 [ 1, %18 ], [ %12, %10 ]
  %22 = load ptr, ptr %11, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !84

24:                                               ; preds = %20, %1
  %25 = phi i8 [ 0, %1 ], [ %21, %20 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !85 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NLA_OT_tracks_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_add_tracks_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_add_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !87 {
  %3 = alloca %struct.bAnimContext, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.15) #9
  %7 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %6 to i8
  %11 = call zeroext i8 @nlaedit_add_tracks_existing(ptr noundef nonnull %3, i8 noundef zeroext %10) #11, !range !83
  %12 = call zeroext i8 @nlaedit_add_tracks_empty(ptr noundef nonnull %3) #11, !range !83
  %13 = or i8 %12, %11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  call void @BKE_report(ptr noundef %18, i32 noundef 16, ptr noundef nonnull @.str.32) #9
  br label %19

19:                                               ; preds = %2, %16, %15
  %20 = phi i32 [ 4, %15 ], [ 2, %16 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #10
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_tracks_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_delete_tracks_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_delete_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !88 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !73
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 67, ptr noundef %8, i32 noundef %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %7, %35
  %16 = phi ptr [ %36, %35 ], [ %13, %7 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %22, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !89
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.AnimData, ptr %24, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = and i32 %31, -2
  store i32 %32, ptr %30, align 8, !tbaa !91
  br label %33

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds %struct.AnimData, ptr %24, i64 0, i32 3
  call void @free_nlatrack(ptr noundef nonnull %34, ptr noundef nonnull %22) #9
  br label %35

35:                                               ; preds = %15, %33
  %36 = load ptr, ptr %16, align 8, !tbaa !79
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %15, !llvm.loop !92

38:                                               ; preds = %35, %7
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %39

39:                                               ; preds = %2, %38
  %40 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #10
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NLA_OT_selected_objects_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @nlaedit_objects_add_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @nlaop_poll_tweakmode_off, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @nlaedit_objects_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !93 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #10
  %5 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceNla, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !95
  %18 = and i32 %17, -33554433
  store i32 %18, ptr %16, align 8, !tbaa !95
  br label %19

19:                                               ; preds = %15, %11, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %20 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %4) #9
  %21 = load ptr, ptr %4, align 8, !tbaa !79
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %24, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = call ptr @BKE_id_add_animdata(ptr noundef %26) #9
  %28 = load ptr, ptr %24, align 8, !tbaa !79
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !101

30:                                               ; preds = %23, %19
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #10
  ret i32 %32
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mouse_nla_channels(ptr noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !102 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr %1, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !73
  %12 = sext i16 %11 to i32
  %13 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 11, ptr noundef %9, i32 noundef %12) #9
  %14 = call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %3) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !103
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %249, label %20

20:                                               ; preds = %16
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %3) #11
  br label %249

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !74
  switch i32 %24, label %243 [
    i32 4, label %25
    i32 5, label %46
    i32 8, label %113
    i32 10, label %113
    i32 11, label %113
    i32 12, label %113
    i32 13, label %113
    i32 14, label %113
    i32 15, label %113
    i32 16, label %113
    i32 17, label %113
    i32 18, label %113
    i32 19, label %113
    i32 20, label %113
    i32 21, label %113
    i32 22, label %113
    i32 23, label %113
    i32 24, label %113
    i32 30, label %139
    i32 31, label %202
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = icmp eq i16 %4, 8
  %31 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 15
  %32 = load i16, ptr %31, align 4, !tbaa !124
  %33 = icmp eq ptr %29, null
  br i1 %30, label %34, label %40

34:                                               ; preds = %25
  %35 = xor i16 %32, 1
  store i16 %35, ptr %31, align 4, !tbaa !124
  br i1 %33, label %249, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.AnimData, ptr %29, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !91
  %39 = xor i32 %38, 16384
  store i32 %39, ptr %37, align 8, !tbaa !91
  br label %249

40:                                               ; preds = %25
  %41 = or i16 %32, 1
  store i16 %41, ptr %31, align 4, !tbaa !124
  br i1 %33, label %249, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.AnimData, ptr %29, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !91
  %45 = or i32 %44, 16384
  store i32 %45, ptr %43, align 8, !tbaa !91
  br label %249

46:                                               ; preds = %22
  %47 = load ptr, ptr %1, align 8, !tbaa !72
  %48 = load ptr, ptr %47, align 8, !tbaa !125
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !80
  %51 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !126
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !128
  %55 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %1) #9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %249

57:                                               ; preds = %46
  %58 = icmp eq i16 %4, 8
  br i1 %58, label %59, label %70

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !131
  %62 = xor i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !131
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 53
  store i16 %63, ptr %64, align 4, !tbaa !132
  %65 = icmp eq ptr %54, null
  br i1 %65, label %105, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.AnimData, ptr %54, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !91
  %69 = xor i32 %68, 16384
  store i32 %69, ptr %67, align 8, !tbaa !91
  br label %106

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !79
  %73 = icmp eq ptr %72, null
  br i1 %73, label %93, label %74

74:                                               ; preds = %70, %90
  %75 = phi ptr [ %91, %90 ], [ %72, %70 ]
  %76 = getelementptr inbounds %struct.Base, ptr %75, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !131
  %78 = and i32 %77, -2
  store i32 %78, ptr %76, align 8, !tbaa !131
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.Base, ptr %75, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !126
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 53
  store i16 %79, ptr %82, align 4, !tbaa !132
  %83 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !128
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.AnimData, ptr %84, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !91
  %89 = and i32 %88, -49153
  store i32 %89, ptr %87, align 8, !tbaa !91
  br label %90

90:                                               ; preds = %74, %86
  %91 = load ptr, ptr %75, align 8, !tbaa !79
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %74, !llvm.loop !133

93:                                               ; preds = %90, %70
  %94 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !131
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !131
  %97 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 53
  %98 = load i16, ptr %97, align 4, !tbaa !132
  %99 = or i16 %98, 1
  store i16 %99, ptr %97, align 4, !tbaa !132
  %100 = icmp eq ptr %54, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.AnimData, ptr %54, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !91
  %104 = or i32 %103, 16384
  store i32 %104, ptr %102, align 8, !tbaa !91
  br label %106

105:                                              ; preds = %93, %59
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %50) #9
  br label %249

106:                                              ; preds = %66, %101
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %50) #9
  %107 = getelementptr inbounds %struct.AnimData, ptr %54, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !91
  %109 = and i32 %108, 16384
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %249, label %111

111:                                              ; preds = %106
  %112 = or i32 %108, 32768
  store i32 %112, ptr %107, align 8, !tbaa !91
  br label %249

113:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %114 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 10
  %115 = load ptr, ptr %114, align 8, !tbaa !76
  %116 = icmp eq ptr %115, null
  br i1 %116, label %249, label %117

117:                                              ; preds = %113
  %118 = icmp eq i16 %4, 8
  br i1 %118, label %127, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %1, align 8, !tbaa !72
  %121 = load i16, ptr %10, align 8, !tbaa !73
  %122 = sext i16 %121 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %120, i32 noundef %122, i8 noundef zeroext 0, i32 noundef 0) #9
  %123 = load ptr, ptr %114, align 8, !tbaa !76
  %124 = getelementptr inbounds %struct.AnimData, ptr %123, i64 0, i32 7
  %125 = load i32, ptr %124, align 8, !tbaa !91
  %126 = or i32 %125, 16384
  store i32 %126, ptr %124, align 8, !tbaa !91
  br label %131

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.AnimData, ptr %115, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !91
  %130 = xor i32 %129, 16384
  store i32 %130, ptr %128, align 8, !tbaa !91
  br label %131

131:                                              ; preds = %127, %119
  %132 = phi i32 [ %126, %119 ], [ %130, %127 ]
  %133 = phi ptr [ %123, %119 ], [ %115, %127 ]
  %134 = and i32 %132, 16384
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %249, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.AnimData, ptr %133, i64 0, i32 7
  %138 = or i32 %132, 32768
  store i32 %138, ptr %137, align 8, !tbaa !91
  br label %249

139:                                              ; preds = %22
  %140 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !80
  %142 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 10
  %143 = load ptr, ptr %142, align 8, !tbaa !76
  %144 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !134
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.ID, ptr %145, i64 0, i32 4
  %149 = load i16, ptr %148, align 8, !tbaa !135
  switch i16 %149, label %156 [
    i16 16717, label %150
    i16 16720, label %150
  ]

150:                                              ; preds = %147, %147
  %151 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %152 = sitofp i16 %151 to float
  %153 = call float @llvm.fmuladd.f32(float %152, float 0x3FE99999A0000000, float 2.100000e+01)
  %154 = fptosi float %153 to i16
  %155 = sitofp i16 %154 to float
  br label %156

156:                                              ; preds = %139, %147, %150
  %157 = phi float [ %155, %150 ], [ 1.400000e+01, %147 ], [ 0.000000e+00, %139 ]
  %158 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !136
  %160 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %161 = sitofp i16 %160 to float
  %162 = call float @llvm.fmuladd.f32(float %161, float 0xBFE99999A0000000, float %159)
  %163 = fcmp ugt float %162, %2
  br i1 %163, label %168, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.NlaTrack, ptr %141, i64 0, i32 3
  %166 = load i32, ptr %165, align 8, !tbaa !89
  %167 = xor i32 %166, 16
  store i32 %167, ptr %165, align 8, !tbaa !89
  br label %249

168:                                              ; preds = %156
  %169 = fmul float %161, 0x3FE99999A0000000
  %170 = call float @llvm.fmuladd.f32(float %169, float -2.000000e+00, float %159)
  %171 = fcmp ugt float %170, %2
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.NlaTrack, ptr %141, i64 0, i32 3
  %174 = load i32, ptr %173, align 8, !tbaa !89
  %175 = xor i32 %174, 4
  store i32 %175, ptr %173, align 8, !tbaa !89
  br label %249

176:                                              ; preds = %168
  %177 = call float @llvm.fmuladd.f32(float %169, float 2.000000e+00, float %157)
  %178 = fcmp ult float %177, %2
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  call void @BKE_nlatrack_solo_toggle(ptr noundef %143, ptr noundef %141) #9
  br label %249

180:                                              ; preds = %176
  %181 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %1) #9
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %249

183:                                              ; preds = %180
  %184 = icmp eq i16 %4, 8
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  %186 = load ptr, ptr %1, align 8, !tbaa !72
  %187 = load i16, ptr %10, align 8, !tbaa !73
  %188 = sext i16 %187 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %186, i32 noundef %188, i8 noundef zeroext 0, i32 noundef 0) #9
  %189 = getelementptr inbounds %struct.NlaTrack, ptr %141, i64 0, i32 3
  %190 = load i32, ptr %189, align 8, !tbaa !89
  %191 = or i32 %190, 2
  store i32 %191, ptr %189, align 8, !tbaa !89
  br label %198

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.NlaTrack, ptr %141, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !89
  %195 = xor i32 %194, 2
  store i32 %195, ptr %193, align 8, !tbaa !89
  %196 = and i32 %194, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %249

198:                                              ; preds = %185, %192
  %199 = load ptr, ptr %1, align 8, !tbaa !72
  %200 = load i16, ptr %10, align 8, !tbaa !73
  %201 = sext i16 %200 to i32
  call void @ANIM_set_active_channel(ptr noundef nonnull %1, ptr noundef %199, i32 noundef %201, i32 noundef 11, ptr noundef nonnull %141, i32 noundef 30) #9
  br label %249

202:                                              ; preds = %22
  %203 = getelementptr inbounds %struct.bAnimListElem, ptr %14, i64 0, i32 9
  %204 = load ptr, ptr %203, align 8, !tbaa !134
  %205 = call ptr @BKE_animdata_from_id(ptr noundef %204) #9
  %206 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1, i32 1
  %207 = load float, ptr %206, align 4, !tbaa !136
  %208 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !56
  %209 = sitofp i16 %208 to float
  %210 = call float @llvm.fmuladd.f32(float %209, float 0xBFE99999A0000000, float %207)
  %211 = fcmp ugt float %210, %2
  %212 = call zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef nonnull %1) #9
  %213 = icmp eq i8 %212, 0
  br i1 %211, label %220, label %214

214:                                              ; preds = %202
  br i1 %213, label %215, label %216

215:                                              ; preds = %214
  call void @BKE_nla_action_pushdown(ptr noundef %205) #9
  br label %249

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.AnimData, ptr %205, i64 0, i32 7
  %218 = load i32, ptr %217, align 8, !tbaa !91
  %219 = xor i32 %218, 8
  store i32 %219, ptr %217, align 8, !tbaa !91
  br label %249

220:                                              ; preds = %202
  br i1 %213, label %223, label %221

221:                                              ; preds = %220
  %222 = call zeroext i8 @nlaedit_disable_tweakmode(ptr noundef nonnull %1) #9
  br label %249

223:                                              ; preds = %220
  %224 = icmp eq i16 %4, 8
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.AnimData, ptr %205, i64 0, i32 7
  %227 = load i32, ptr %226, align 8, !tbaa !91
  %228 = xor i32 %227, 16384
  store i32 %228, ptr %226, align 8, !tbaa !91
  br label %236

229:                                              ; preds = %223
  %230 = load ptr, ptr %1, align 8, !tbaa !72
  %231 = load i16, ptr %10, align 8, !tbaa !73
  %232 = sext i16 %231 to i32
  call void @ANIM_deselect_anim_channels(ptr noundef nonnull %1, ptr noundef %230, i32 noundef %232, i8 noundef zeroext 0, i32 noundef 0) #9
  %233 = getelementptr inbounds %struct.AnimData, ptr %205, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !91
  %235 = or i32 %234, 16384
  store i32 %235, ptr %233, align 8, !tbaa !91
  br label %236

236:                                              ; preds = %229, %225
  %237 = phi i32 [ %235, %229 ], [ %228, %225 ]
  %238 = and i32 %237, 16384
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.AnimData, ptr %205, i64 0, i32 7
  %242 = or i32 %237, 32768
  store i32 %242, ptr %241, align 8, !tbaa !91
  br label %249

243:                                              ; preds = %22
  %244 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !103
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %249

249:                                              ; preds = %247, %243, %40, %42, %34, %36, %106, %111, %46, %131, %136, %113, %192, %198, %172, %180, %179, %164, %236, %240, %215, %216, %221, %105, %16, %20
  %250 = phi i32 [ 0, %20 ], [ 0, %16 ], [ 0, %247 ], [ 0, %243 ], [ 4718598, %40 ], [ 4718598, %42 ], [ 4718598, %34 ], [ 4718598, %36 ], [ 0, %46 ], [ 4718598, %111 ], [ 4718598, %106 ], [ 4718598, %131 ], [ 4718598, %136 ], [ 4718598, %113 ], [ 4718593, %164 ], [ 4718593, %172 ], [ 4718593, %179 ], [ 0, %180 ], [ 4718598, %198 ], [ 4718598, %192 ], [ 4849664, %221 ], [ 4849664, %216 ], [ 4849664, %215 ], [ 4718598, %240 ], [ 4718598, %236 ], [ 4718598, %105 ]
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i32 %250
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @nlaedit_is_tweakmode_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_deselect_anim_channels(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nlatrack_solo_toggle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_set_active_channel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nla_action_pushdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @nlaedit_disable_tweakmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @nla_panel_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!48 = !{!"nla_channels.c:nlachannels_mouseclick_invoke"}
!49 = !{!50, !36, i64 24}
!50 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!51 = !{!50, !36, i64 32}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !37, i64 0}
!56 = !{!57, !41, i64 8948}
!57 = !{!"UserDef", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !55, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !55, i64 8484, !55, i64 8488, !55, i64 8492, !41, i64 8496, !41, i64 8498, !55, i64 8500, !55, i64 8504, !55, i64 8508, !55, i64 8512, !55, i64 8516, !55, i64 8520, !55, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !55, i64 8912, !55, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !58, i64 8956, !58, i64 8960, !55, i64 8964, !41, i64 8968, !41, i64 8970, !58, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !59, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !55, i64 10896, !55, i64 10900, !58, i64 10904, !58, i64 10908, !55, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !60, i64 10928}
!58 = !{!"float", !37, i64 0}
!59 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!60 = !{!"WalkNavigation", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !37, i64 26}
!61 = !{!62, !41, i64 58}
!62 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !39, i64 16, !55, i64 32, !58, i64 36, !37, i64 40, !41, i64 56, !41, i64 58, !55, i64 60, !36, i64 64, !63, i64 72}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !37, i64 80, !37, i64 88, !58, i64 96, !58, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!65 = !{!"rcti", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!66 = !{!58, !58, i64 0}
!67 = !{i32 0, i32 4849665}
!68 = !{!35, !36, i64 32}
!69 = !{!35, !36, i64 104}
!70 = !{!"nla_channels.c:nlachannels_pushdown_exec"}
!71 = !{!53, !36, i64 120}
!72 = !{!50, !36, i64 0}
!73 = !{!50, !41, i64 8}
!74 = !{!75, !55, i64 24}
!75 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !41, i64 36, !41, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!76 = !{!75, !36, i64 56}
!77 = !{!78, !36, i64 0}
!78 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !55, i64 80, !55, i64 84, !41, i64 88, !41, i64 90, !58, i64 92}
!79 = !{!36, !36, i64 0}
!80 = !{!75, !36, i64 16}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{i8 0, i8 2}
!84 = distinct !{!84, !82}
!85 = !{!"nla_channels.c:BLI_listbase_is_empty"}
!86 = !{!39, !36, i64 0}
!87 = !{!"nla_channels.c:nlaedit_add_tracks_exec"}
!88 = !{!"nla_channels.c:nlaedit_delete_tracks_exec"}
!89 = !{!90, !55, i64 32}
!90 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !39, i64 16, !55, i64 32, !55, i64 36, !37, i64 40}
!91 = !{!78, !55, i64 80}
!92 = distinct !{!92, !82}
!93 = !{!"nla_channels.c:nlaedit_objects_add_exec"}
!94 = !{!62, !36, i64 64}
!95 = !{!96, !55, i64 96}
!96 = !{!"bDopeSheet", !36, i64 0, !39, i64 8, !36, i64 24, !37, i64 32, !55, i64 96, !55, i64 100, !55, i64 104, !55, i64 108}
!97 = !{!98, !36, i64 32}
!98 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !99, i64 16}
!99 = !{!"PointerRNA", !100, i64 0, !36, i64 8, !36, i64 16}
!100 = !{!"", !36, i64 0}
!101 = distinct !{!101, !82}
!102 = !{!"nla_channels.c:mouse_nla_channels"}
!103 = !{!104, !55, i64 2100}
!104 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !55, i64 2096, !55, i64 2100, !37, i64 2104, !55, i64 2108, !55, i64 2112, !37, i64 2116}
!105 = !{!106, !36, i64 120}
!106 = !{!"Scene", !107, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !55, i64 232, !55, i64 236, !55, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !108, i64 280, !115, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !55, i64 4380, !39, i64 4384, !116, i64 4400, !117, i64 4416, !120, i64 4600, !36, i64 4608, !121, i64 4616, !36, i64 4640, !122, i64 4648, !122, i64 4656, !110, i64 4664, !111, i64 4824, !123, i64 4888, !36, i64 4952}
!107 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !55, i64 100, !55, i64 104, !55, i64 108, !36, i64 112}
!108 = !{!"RenderData", !109, i64 0, !36, i64 248, !36, i64 256, !112, i64 264, !113, i64 328, !55, i64 400, !55, i64 404, !55, i64 408, !58, i64 412, !55, i64 416, !55, i64 420, !55, i64 424, !55, i64 428, !41, i64 432, !41, i64 434, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !55, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !55, i64 484, !55, i64 488, !41, i64 492, !41, i64 494, !55, i64 496, !55, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !55, i64 516, !55, i64 520, !55, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !58, i64 612, !58, i64 616, !58, i64 620, !58, i64 624, !55, i64 628, !58, i64 632, !58, i64 636, !58, i64 640, !58, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !58, i64 660, !58, i64 664, !41, i64 668, !41, i64 670, !58, i64 672, !58, i64 676, !37, i64 680, !55, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !55, i64 2520, !41, i64 2524, !41, i64 2526, !58, i64 2528, !58, i64 2532, !41, i64 2536, !41, i64 2538, !58, i64 2540, !41, i64 2544, !41, i64 2546, !55, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !58, i64 2560, !58, i64 2564, !36, i64 2568, !55, i64 2576, !58, i64 2580, !37, i64 2584, !114, i64 2616, !55, i64 3976, !55, i64 3980}
!109 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !58, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !110, i64 24, !111, i64 184}
!110 = !{!"ColorManagedViewSettings", !55, i64 0, !55, i64 4, !37, i64 8, !37, i64 72, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!111 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!112 = !{!"QuicktimeCodecSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !41, i64 48, !41, i64 50, !55, i64 52, !55, i64 56, !55, i64 60}
!113 = !{!"FFMpegCodecData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !58, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !36, i64 64}
!114 = !{!"BakeData", !109, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !58, i64 1280, !58, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!115 = !{!"AudioData", !55, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !55, i64 16, !41, i64 20, !41, i64 22, !58, i64 24, !58, i64 28}
!116 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!117 = !{!"GameData", !116, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !118, i64 40, !41, i64 64, !41, i64 66, !58, i64 68, !119, i64 72, !58, i64 128, !58, i64 132, !55, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180}
!118 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !58, i64 8, !58, i64 12, !36, i64 16}
!119 = !{!"RecastData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !55, i64 40, !58, i64 44, !58, i64 48, !41, i64 52, !41, i64 54}
!120 = !{!"UnitSettings", !58, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!121 = !{!"PhysicsSettings", !37, i64 0, !55, i64 12, !55, i64 16, !55, i64 20}
!122 = !{!"long", !37, i64 0}
!123 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!124 = !{!106, !41, i64 244}
!125 = !{!96, !36, i64 0}
!126 = !{!127, !36, i64 32}
!127 = !{!"Base", !36, i64 0, !36, i64 8, !55, i64 16, !55, i64 20, !55, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!128 = !{!129, !36, i64 120}
!129 = !{!"Object", !107, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !55, i64 140, !55, i64 144, !55, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !130, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !55, i64 432, !55, i64 436, !36, i64 440, !36, i64 448, !55, i64 456, !55, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !55, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !55, i64 968, !55, i64 972, !55, i64 976, !55, i64 980, !55, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !58, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !55, i64 1144, !55, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !122, i64 1304, !122, i64 1312, !55, i64 1320, !55, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!130 = !{!"bAnimVizSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44}
!131 = !{!127, !55, i64 24}
!132 = !{!129, !41, i64 948}
!133 = distinct !{!133, !82}
!134 = !{!75, !36, i64 48}
!135 = !{!41, !41, i64 0}
!136 = !{!63, !58, i64 20}
