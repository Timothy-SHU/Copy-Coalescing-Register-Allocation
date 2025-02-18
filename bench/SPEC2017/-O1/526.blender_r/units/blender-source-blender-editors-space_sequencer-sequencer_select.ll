; ModuleID = 'blender/source/blender/editors/space_sequencer/sequencer_select.c'
source_filename = "blender/source/blender/editors/space_sequencer/sequencer_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.rctf = type { float, float, float, float }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SEQUENCER_OT_select_all\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Select or deselect all strips\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Select Inverse\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_select_inverse\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Select unselected strips\00", align 1
@SEQUENCER_OT_select.sequencer_select_left_right_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 1, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 3, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Don't do left-right selection\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"MOUSE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Use mouse position for selection\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Select left\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Select right\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Activate/Select\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"SEQUENCER_OT_select\00", align 1
@.str.20 = private unnamed_addr constant [58 x i8] c"Select a strip (last selected becomes the \22active strip\22)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"linked_handle\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Linked Handle\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Select handles next to the active strip\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"left_right\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Left/Right\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"Select based on the current frame side the cursor is on\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"linked_time\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Linked Time\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Select other strips at the same time\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_select_more\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"Select more strips adjacent to the current selection\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"SEQUENCER_OT_select_less\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"Shrink the current selection of adjacent selected strips\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Select Pick Linked\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"SEQUENCER_OT_select_linked_pick\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"Select a chain of linked strips nearest to the mouse pointer\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_select_linked\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"Select all strips adjacent to the current selection\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Select Handles\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_select_handles\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"Select manipulator handles on the sides of the selected strip\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@prop_side_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"Side\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"The side of the handle that is selected\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"Select Active Side\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"SEQUENCER_OT_select_active_side\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"Select strips on the nominated side of the active strip\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"SEQUENCER_OT_select_border\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"Select strips using border selection\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Select all strips grouped by various properties\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"SEQUENCER_OT_select_grouped\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@sequencer_prop_select_grouped_types = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.67, i32 0, ptr @.str.62, ptr @.str.68 }, %struct.EnumPropertyItem { i32 2, ptr @.str.69, i32 0, ptr @.str.70, ptr @.str.71 }, %struct.EnumPropertyItem { i32 3, ptr @.str.72, i32 0, ptr @.str.73, ptr @.str.74 }, %struct.EnumPropertyItem { i32 4, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.77 }, %struct.EnumPropertyItem { i32 5, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.80 }, %struct.EnumPropertyItem { i32 6, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 7, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.62 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.63 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"No active sequence!\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Shared strip type\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"TYPE_BASIC\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Global Type\00", align 1
@.str.71 = private unnamed_addr constant [51 x i8] c"All strips of same basic type (Graphical or Sound)\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"TYPE_EFFECT\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Effect Type\00", align 1
@.str.74 = private unnamed_addr constant [94 x i8] c"Shared strip effect type (if active strip is not an effect one, select all non-effect strips)\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.77 = private unnamed_addr constant [40 x i8] c"Shared data (scene, image, sound, etc.)\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"EFFECT\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Effect\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Shared effects\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"EFFECT_LINK\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Effect/Linked\00", align 1
@.str.83 = private unnamed_addr constant [90 x i8] c"Other strips affected by the active one (sharing some time, and below or effect-assigned)\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"OVERLAP\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Overlap\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"Overlapping time\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_sequencer_select_sequence_single(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #7
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @ED_sequencer_deselect_all(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %6, %3
  tail call void @BKE_sequencer_active_set(ptr noundef %0, ptr noundef %1) #7
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !34
  switch i32 %9, label %27 [
    i32 0, label %10
    i32 3, label %10
    i32 4, label %16
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 4
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 5
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi ptr [ %18, %20 ], [ %12, %14 ]
  %24 = phi ptr [ %21, %20 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.Strip, ptr %23, i64 0, i32 7
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef 768) #7
  br label %27

27:                                               ; preds = %22, %7, %16, %10
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !44
  %30 = or i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !44
  tail call void @recurs_sel_seq(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @recurs_sel_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_de_select_all_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.64) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #7
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !55
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !59

20:                                               ; preds = %15, %11, %2
  %21 = phi i32 [ %5, %2 ], [ 1, %11 ], [ 2, %15 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !55
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %20, %45
  %26 = phi ptr [ %46, %45 ], [ %23, %20 ]
  switch i32 %21, label %45 [
    i32 1, label %27
    i32 2, label %32
    i32 3, label %36
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !44
  %30 = and i32 %29, -8
  %31 = or disjoint i32 %30, 1
  store i32 %31, ptr %28, align 8, !tbaa !44
  br label %45

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = and i32 %34, -8
  store i32 %35, ptr %33, align 8, !tbaa !44
  br label %45

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !44
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = and i32 %38, -8
  store i32 %42, ptr %37, align 8, !tbaa !44
  br label %45

43:                                               ; preds = %36
  %44 = or disjoint i32 %38, 1
  store i32 %44, ptr %37, align 8, !tbaa !44
  br label %45

45:                                               ; preds = %27, %32, %25, %43, %41
  %46 = load ptr, ptr %26, align 8, !tbaa !58
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %25, !llvm.loop !62

48:                                               ; preds = %45, %20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %6) #7
  ret i32 4
}

declare i32 @sequencer_edit_poll(ptr noundef) #2

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_inverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_inverse_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_inverse_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #7
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = and i32 %11, -7
  %13 = xor i32 %12, 1
  store i32 %13, ptr %10, align 8, !tbaa !44
  %14 = load ptr, ptr %9, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !63

16:                                               ; preds = %8, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_select_invoke, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !65
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull @SEQUENCER_OT_select.sequencer_select_left_right_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #7
  %14 = load ptr, ptr %7, align 8, !tbaa !65
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SeqIterator, align 8
  %6 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %7, i8 noundef zeroext 0) #7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.21) #7
  %12 = load ptr, ptr %9, align 8, !tbaa !53
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.24) #7
  %14 = load ptr, ptr %9, align 8, !tbaa !53
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.30) #7
  %16 = load ptr, ptr %9, align 8, !tbaa !53
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.27) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %414, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = call ptr @find_nearest_seq(ptr noundef %7, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %20) #7
  %22 = icmp ne ptr %21, null
  %23 = and i32 %15, 255
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  %26 = icmp eq i32 %17, 1
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i32 %17, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %113, label %30

30:                                               ; preds = %19
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  switch i32 %17, label %45 [
    i32 1, label %31
    i32 2, label %35
    i32 3, label %40
  ]

31:                                               ; preds = %30
  %32 = load i32, ptr %20, align 4, !tbaa !66
  %33 = sitofp i32 %32 to float
  %34 = call float @UI_view2d_region_to_view_x(ptr noundef %6, float noundef %33) #7
  br label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !67
  %38 = add nsw i32 %37, -1
  %39 = sitofp i32 %38 to float
  br label %45

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !67
  %43 = add nsw i32 %42, 1
  %44 = sitofp i32 %43 to float
  br label %45

45:                                               ; preds = %30, %40, %35, %31
  %46 = phi float [ undef, %30 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %8, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %47 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !87
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  %52 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  br label %53

53:                                               ; preds = %50, %70
  %54 = load ptr, ptr %51, align 8, !tbaa !89
  %55 = load i32, ptr %52, align 8, !tbaa !67
  %56 = sitofp i32 %55 to float
  %57 = fcmp olt float %46, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 16
  %60 = load i32, ptr %59, align 4, !tbaa !90
  %61 = icmp slt i32 %60, %55
  br i1 %61, label %66, label %70

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !91
  %65 = icmp sgt i32 %64, %55
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !44
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !44
  call void @recurs_sel_seq(ptr noundef %54) #7
  br label %70

70:                                               ; preds = %66, %58, %62
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #7
  %71 = load i32, ptr %47, align 8, !tbaa !87
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %53, !llvm.loop !92

73:                                               ; preds = %70, %45
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %74 = call ptr @CTX_wm_space_seq(ptr noundef %0) #7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %413, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.SpaceSeq, ptr %74, i64 0, i32 13
  %78 = load i32, ptr %77, align 8, !tbaa !93
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %413, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !58
  %84 = icmp eq ptr %83, null
  br i1 %84, label %413, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !67
  %88 = sitofp i32 %87 to float
  %89 = fcmp olt float %46, %88
  %90 = fcmp ult float %46, %88
  br label %91

91:                                               ; preds = %85, %110
  %92 = phi ptr [ %83, %85 ], [ %111, %110 ]
  br i1 %89, label %93, label %97

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !97
  %96 = icmp slt i32 %95, %87
  br i1 %96, label %102, label %97

97:                                               ; preds = %93, %91
  br i1 %90, label %106, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !97
  %101 = icmp slt i32 %100, %87
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %93
  %103 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !99
  %105 = or i32 %104, 1
  store i32 %105, ptr %103, align 4, !tbaa !99
  br label %110

106:                                              ; preds = %98, %97
  %107 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !99
  %109 = and i32 %108, -2
  store i32 %109, ptr %107, align 4, !tbaa !99
  br label %110

110:                                              ; preds = %102, %106
  %111 = load ptr, ptr %92, align 8, !tbaa !58
  %112 = icmp eq ptr %111, null
  br i1 %112, label %413, label %91, !llvm.loop !100

113:                                              ; preds = %19
  %114 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = and i32 %11, 255
  %117 = icmp eq i32 %116, 0
  %118 = and i32 %13, 255
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %122

122:                                              ; preds = %121, %113
  br i1 %22, label %123, label %413

123:                                              ; preds = %122
  call void @BKE_sequencer_active_set(ptr noundef %7, ptr noundef nonnull %21) #7
  %124 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !34
  switch i32 %125, label %143 [
    i32 0, label %126
    i32 3, label %126
    i32 4, label %132
  ]

126:                                              ; preds = %123, %123
  %127 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  %128 = load ptr, ptr %127, align 8, !tbaa !43
  %129 = icmp eq ptr %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 4
  br label %138

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 5
  br label %138

138:                                              ; preds = %130, %136
  %139 = phi ptr [ %134, %136 ], [ %128, %130 ]
  %140 = phi ptr [ %137, %136 ], [ %131, %130 ]
  %141 = getelementptr inbounds %struct.Strip, ptr %139, i64 0, i32 7
  %142 = call ptr @BLI_strncpy(ptr noundef nonnull %140, ptr noundef nonnull %141, i64 noundef 768) #7
  br label %143

143:                                              ; preds = %138, %123, %132, %126
  br i1 %117, label %161, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %146 = load i32, ptr %145, align 8, !tbaa !44
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %114, align 8, !tbaa !101
  %151 = icmp eq ptr %150, %115
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i32, ptr %4, align 4, !tbaa !66
  switch i32 %153, label %171 [
    i32 0, label %154
    i32 1, label %157
    i32 2, label %159
  ]

154:                                              ; preds = %152
  br i1 %119, label %155, label %171

155:                                              ; preds = %154
  %156 = and i32 %146, -8
  store i32 %156, ptr %145, align 8, !tbaa !44
  br label %171

157:                                              ; preds = %152
  %158 = xor i32 %146, 2
  store i32 %158, ptr %145, align 8, !tbaa !44
  br label %171

159:                                              ; preds = %152
  %160 = xor i32 %146, 4
  store i32 %160, ptr %145, align 8, !tbaa !44
  br label %171

161:                                              ; preds = %149, %144, %143
  %162 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %163 = load i32, ptr %162, align 8, !tbaa !44
  %164 = or i32 %163, 1
  store i32 %164, ptr %162, align 8, !tbaa !44
  %165 = load i32, ptr %4, align 4, !tbaa !66
  switch i32 %165, label %171 [
    i32 1, label %166
    i32 2, label %168
  ]

166:                                              ; preds = %161
  %167 = or i32 %163, 3
  store i32 %167, ptr %162, align 8, !tbaa !44
  br label %171

168:                                              ; preds = %161
  %169 = load i32, ptr %162, align 8, !tbaa !44
  %170 = or i32 %169, 4
  store i32 %170, ptr %162, align 8, !tbaa !44
  br label %171

171:                                              ; preds = %166, %161, %168, %157, %159, %152, %155, %154
  %172 = load i32, ptr %4, align 4
  %173 = icmp eq i32 %172, 1
  %174 = select i1 %119, i1 true, i1 %173
  %175 = icmp eq i32 %172, 2
  %176 = select i1 %174, i1 true, i1 %175
  br i1 %176, label %194, label %177

177:                                              ; preds = %171
  br i1 %117, label %178, label %179

178:                                              ; preds = %177
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %179

179:                                              ; preds = %178, %177
  %180 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !44
  %182 = or i32 %181, 1
  store i32 %182, ptr %180, align 8, !tbaa !44
  %183 = call ptr @find_neighboring_sequence(ptr noundef %7, ptr noundef %21, i32 noundef 1, i32 noundef -1) #7
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.Sequence, ptr %183, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !44
  %188 = or i32 %187, 1
  store i32 %188, ptr %186, align 8, !tbaa !44
  call void @recurs_sel_seq(ptr noundef nonnull %183) #7
  %189 = load i32, ptr %186, align 8, !tbaa !44
  %190 = or i32 %189, 4
  store i32 %190, ptr %186, align 8, !tbaa !44
  br label %191

191:                                              ; preds = %185, %179
  %192 = call ptr @find_neighboring_sequence(ptr noundef %7, ptr noundef %21, i32 noundef 2, i32 noundef -1) #7
  %193 = icmp eq ptr %192, null
  br i1 %193, label %345, label %335

194:                                              ; preds = %171
  %195 = icmp ne i32 %118, 0
  %196 = add i32 %172, -1
  %197 = icmp ult i32 %196, 2
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %350

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %201 = load i32, ptr %200, align 8, !tbaa !44
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %350, label %204

204:                                              ; preds = %199
  %205 = call ptr @find_neighboring_sequence(ptr noundef %7, ptr noundef nonnull %21, i32 noundef %172, i32 noundef -1) #7
  %206 = icmp eq ptr %205, null
  br i1 %206, label %286, label %207

207:                                              ; preds = %204
  switch i32 %172, label %350 [
    i32 1, label %208
    i32 2, label %247
  ]

208:                                              ; preds = %207
  %209 = load i32, ptr %200, align 8, !tbaa !44
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %246, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.Sequence, ptr %205, i64 0, i32 5
  %214 = load i32, ptr %213, align 8, !tbaa !44
  %215 = and i32 %214, 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %246, label %217

217:                                              ; preds = %212
  br i1 %117, label %218, label %219

218:                                              ; preds = %217
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %219

219:                                              ; preds = %218, %217
  %220 = load i32, ptr %200, align 8, !tbaa !44
  %221 = or i32 %220, 1
  store i32 %221, ptr %200, align 8, !tbaa !44
  %222 = load ptr, ptr %8, align 8, !tbaa !55
  %223 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %224 = load i32, ptr %223, align 8, !tbaa !102
  %225 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %226 = load i32, ptr %225, align 8, !tbaa !91
  %227 = load ptr, ptr %222, align 8, !tbaa !58
  %228 = icmp eq ptr %227, null
  br i1 %228, label %350, label %229

229:                                              ; preds = %219, %243
  %230 = phi ptr [ %244, %243 ], [ %227, %219 ]
  %231 = getelementptr inbounds %struct.Sequence, ptr %230, i64 0, i32 13
  %232 = load i32, ptr %231, align 8, !tbaa !102
  %233 = icmp eq i32 %232, %224
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.Sequence, ptr %230, i64 0, i32 15
  %236 = load i32, ptr %235, align 8, !tbaa !91
  %237 = icmp slt i32 %236, %226
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.Sequence, ptr %230, i64 0, i32 5
  %240 = load i32, ptr %239, align 8, !tbaa !44
  %241 = and i32 %240, -8
  %242 = or disjoint i32 %241, 1
  store i32 %242, ptr %239, align 8, !tbaa !44
  br label %243

243:                                              ; preds = %238, %234, %229
  %244 = load ptr, ptr %230, align 8, !tbaa !58
  %245 = icmp eq ptr %244, null
  br i1 %245, label %350, label %229, !llvm.loop !103

246:                                              ; preds = %212, %208
  br i1 %117, label %327, label %330

247:                                              ; preds = %207
  %248 = load i32, ptr %200, align 8, !tbaa !44
  %249 = and i32 %248, 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %285, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Sequence, ptr %205, i64 0, i32 5
  %253 = load i32, ptr %252, align 8, !tbaa !44
  %254 = and i32 %253, 2
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %285, label %256

256:                                              ; preds = %251
  br i1 %117, label %257, label %258

257:                                              ; preds = %256
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %258

258:                                              ; preds = %257, %256
  %259 = load i32, ptr %200, align 8, !tbaa !44
  %260 = or i32 %259, 1
  store i32 %260, ptr %200, align 8, !tbaa !44
  %261 = load ptr, ptr %8, align 8, !tbaa !55
  %262 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %263 = load i32, ptr %262, align 8, !tbaa !102
  %264 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %265 = load i32, ptr %264, align 8, !tbaa !91
  %266 = load ptr, ptr %261, align 8, !tbaa !58
  %267 = icmp eq ptr %266, null
  br i1 %267, label %350, label %268

268:                                              ; preds = %258, %282
  %269 = phi ptr [ %283, %282 ], [ %266, %258 ]
  %270 = getelementptr inbounds %struct.Sequence, ptr %269, i64 0, i32 13
  %271 = load i32, ptr %270, align 8, !tbaa !102
  %272 = icmp eq i32 %271, %263
  br i1 %272, label %273, label %282

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.Sequence, ptr %269, i64 0, i32 15
  %275 = load i32, ptr %274, align 8, !tbaa !91
  %276 = icmp sgt i32 %275, %265
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.Sequence, ptr %269, i64 0, i32 5
  %279 = load i32, ptr %278, align 8, !tbaa !44
  %280 = and i32 %279, -8
  %281 = or disjoint i32 %280, 1
  store i32 %281, ptr %278, align 8, !tbaa !44
  br label %282

282:                                              ; preds = %277, %273, %268
  %283 = load ptr, ptr %269, align 8, !tbaa !58
  %284 = icmp eq ptr %283, null
  br i1 %284, label %350, label %268, !llvm.loop !103

285:                                              ; preds = %251, %247
  br i1 %117, label %327, label %330

286:                                              ; preds = %204
  br i1 %117, label %287, label %288

287:                                              ; preds = %286
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %288

288:                                              ; preds = %287, %286
  %289 = load ptr, ptr %8, align 8, !tbaa !55
  %290 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %291 = load i32, ptr %290, align 8, !tbaa !102
  %292 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %293 = load i32, ptr %292, align 8, !tbaa !91
  %294 = load ptr, ptr %289, align 8, !tbaa !58
  %295 = icmp eq ptr %294, null
  br i1 %295, label %350, label %296

296:                                              ; preds = %288, %324
  %297 = phi ptr [ %325, %324 ], [ %294, %288 ]
  %298 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 13
  %299 = load i32, ptr %298, align 8, !tbaa !102
  %300 = icmp eq i32 %299, %291
  br i1 %300, label %301, label %324

301:                                              ; preds = %296
  switch i32 %172, label %324 [
    i32 1, label %302
    i32 2, label %311
    i32 3, label %320
  ]

302:                                              ; preds = %301
  %303 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 15
  %304 = load i32, ptr %303, align 8, !tbaa !91
  %305 = icmp slt i32 %304, %293
  br i1 %305, label %306, label %324

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 5
  %308 = load i32, ptr %307, align 8, !tbaa !44
  %309 = and i32 %308, -8
  %310 = or disjoint i32 %309, 1
  store i32 %310, ptr %307, align 8, !tbaa !44
  br label %324

311:                                              ; preds = %301
  %312 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 15
  %313 = load i32, ptr %312, align 8, !tbaa !91
  %314 = icmp sgt i32 %313, %293
  br i1 %314, label %315, label %324

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 5
  %317 = load i32, ptr %316, align 8, !tbaa !44
  %318 = and i32 %317, -8
  %319 = or disjoint i32 %318, 1
  store i32 %319, ptr %316, align 8, !tbaa !44
  br label %324

320:                                              ; preds = %301
  %321 = getelementptr inbounds %struct.Sequence, ptr %297, i64 0, i32 5
  %322 = load i32, ptr %321, align 8, !tbaa !44
  %323 = and i32 %322, -7
  store i32 %323, ptr %321, align 8, !tbaa !44
  br label %324

324:                                              ; preds = %320, %315, %311, %306, %302, %301, %296
  %325 = load ptr, ptr %297, align 8, !tbaa !58
  %326 = icmp eq ptr %325, null
  br i1 %326, label %350, label %296, !llvm.loop !103

327:                                              ; preds = %285, %246
  %328 = phi i32 [ 4, %246 ], [ 2, %285 ]
  %329 = phi i32 [ 2, %246 ], [ 4, %285 ]
  call void @ED_sequencer_deselect_all(ptr noundef %7) #7
  br label %330

330:                                              ; preds = %327, %285, %246
  %331 = phi i32 [ 4, %246 ], [ 2, %285 ], [ %328, %327 ]
  %332 = phi i32 [ 2, %246 ], [ 4, %285 ], [ %329, %327 ]
  %333 = load i32, ptr %200, align 8, !tbaa !44
  %334 = or i32 %333, 1
  store i32 %334, ptr %200, align 8, !tbaa !44
  br label %335

335:                                              ; preds = %330, %191
  %336 = phi ptr [ %192, %191 ], [ %205, %330 ]
  %337 = phi i32 [ 2, %191 ], [ %331, %330 ]
  %338 = phi ptr [ %180, %191 ], [ %200, %330 ]
  %339 = phi i32 [ 1, %191 ], [ %332, %330 ]
  %340 = getelementptr inbounds %struct.Sequence, ptr %336, i64 0, i32 5
  %341 = load i32, ptr %340, align 8, !tbaa !44
  %342 = or i32 %341, 1
  store i32 %342, ptr %340, align 8, !tbaa !44
  call void @recurs_sel_seq(ptr noundef nonnull %336) #7
  %343 = load i32, ptr %340, align 8, !tbaa !44
  %344 = or i32 %343, %337
  store i32 %344, ptr %340, align 8, !tbaa !44
  br label %345

345:                                              ; preds = %335, %191
  %346 = phi ptr [ %180, %191 ], [ %338, %335 ]
  %347 = phi i32 [ 1, %191 ], [ %339, %335 ]
  %348 = load i32, ptr %346, align 8, !tbaa !44
  %349 = or i32 %348, %347
  store i32 %349, ptr %346, align 8, !tbaa !44
  br label %350

350:                                              ; preds = %282, %243, %324, %345, %258, %219, %288, %194, %199, %207
  call void @recurs_sel_seq(ptr noundef nonnull %21) #7
  %351 = icmp eq i32 %23, 0
  br i1 %351, label %413, label %352

352:                                              ; preds = %350
  %353 = load ptr, ptr %8, align 8, !tbaa !55
  %354 = load ptr, ptr %353, align 8, !tbaa !58
  %355 = icmp eq ptr %354, null
  br i1 %355, label %413, label %356

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %358 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %359 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 16
  %360 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %361 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  br label %362

362:                                              ; preds = %356, %410
  %363 = phi ptr [ %354, %356 ], [ %411, %410 ]
  %364 = load i32, ptr %357, align 8, !tbaa !102
  %365 = getelementptr inbounds %struct.Sequence, ptr %363, i64 0, i32 13
  %366 = load i32, ptr %365, align 8, !tbaa !102
  %367 = icmp eq i32 %364, %366
  br i1 %367, label %410, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.Sequence, ptr %363, i64 0, i32 15
  %370 = load i32, ptr %369, align 8, !tbaa !91
  %371 = load i32, ptr %358, align 8, !tbaa !91
  %372 = icmp eq i32 %370, %371
  %373 = getelementptr inbounds %struct.Sequence, ptr %363, i64 0, i32 16
  %374 = load i32, ptr %373, align 4, !tbaa !90
  %375 = load i32, ptr %359, align 4, !tbaa !90
  %376 = icmp eq i32 %374, %375
  %377 = select i1 %372, i1 %376, i1 false
  br i1 %377, label %378, label %385

378:                                              ; preds = %368
  %379 = getelementptr inbounds %struct.Sequence, ptr %363, i64 0, i32 5
  %380 = load i32, ptr %379, align 8, !tbaa !44
  %381 = and i32 %380, -8
  store i32 %381, ptr %379, align 8, !tbaa !44
  %382 = load i32, ptr %361, align 8, !tbaa !44
  %383 = and i32 %382, 7
  %384 = or disjoint i32 %383, %381
  store i32 %384, ptr %379, align 8, !tbaa !44
  br label %409

385:                                              ; preds = %368
  %386 = load i32, ptr %360, align 8, !tbaa !44
  %387 = and i32 %386, 1
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %372, i1 true, i1 %376
  %390 = select i1 %388, i1 %389, i1 false
  br i1 %390, label %391, label %410

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.Sequence, ptr %363, i64 0, i32 5
  %393 = load i32, ptr %392, align 8, !tbaa !44
  %394 = and i32 %393, -7
  store i32 %394, ptr %392, align 8, !tbaa !44
  br i1 %372, label %395, label %401

395:                                              ; preds = %391
  %396 = load i32, ptr %360, align 8, !tbaa !44
  %397 = and i32 %396, 2
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %395
  %400 = or i32 %394, 3
  store i32 %400, ptr %392, align 8, !tbaa !44
  br label %401

401:                                              ; preds = %399, %395, %391
  br i1 %376, label %402, label %409

402:                                              ; preds = %401
  %403 = load i32, ptr %360, align 8, !tbaa !44
  %404 = and i32 %403, 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %402
  %407 = load i32, ptr %392, align 8, !tbaa !44
  %408 = or i32 %407, 5
  store i32 %408, ptr %392, align 8, !tbaa !44
  br label %409

409:                                              ; preds = %401, %402, %406, %378
  call void @recurs_sel_seq(ptr noundef nonnull %363) #7
  br label %410

410:                                              ; preds = %409, %385, %362
  %411 = load ptr, ptr %363, align 8, !tbaa !58
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %362, !llvm.loop !104

413:                                              ; preds = %110, %410, %81, %352, %73, %76, %350, %122
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %7) #7
  br label %414

414:                                              ; preds = %3, %413
  %415 = phi i32 [ 12, %413 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %415
}

declare i32 @ED_operator_sequencer_active(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_more_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !105
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_less_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0), !range !105
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_select_linked_pick_invoke, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.21) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = call ptr @find_nearest_seq(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %10) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = and i32 %9, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @ED_sequencer_deselect_all(ptr noundef %5) #7
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !44
  call void @recurs_sel_seq(ptr noundef nonnull %11) #7
  br label %21

21:                                               ; preds = %17, %21
  %22 = call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !105
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %21, !llvm.loop !106

24:                                               ; preds = %21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %5) #7
  br label %25

25:                                               ; preds = %3, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_linked_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  br label %4

4:                                                ; preds = %2, %4
  %5 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !105
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %4, !llvm.loop !107

7:                                                ; preds = %4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_handles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_handles_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_handles_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.48) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !55
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2, %28
  %12 = phi ptr [ %29, %28 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  switch i32 %7, label %28 [
    i32 1, label %18
    i32 2, label %21
    i32 3, label %24
  ]

18:                                               ; preds = %17
  %19 = and i32 %14, -7
  %20 = or disjoint i32 %19, 2
  br label %26

21:                                               ; preds = %17
  %22 = and i32 %14, -7
  %23 = or disjoint i32 %22, 4
  br label %26

24:                                               ; preds = %17
  %25 = or i32 %14, 6
  br label %26

26:                                               ; preds = %18, %21, %24
  %27 = phi i32 [ %25, %24 ], [ %23, %21 ], [ %20, %18 ]
  store i32 %27, ptr %13, align 8, !tbaa !44
  br label %28

28:                                               ; preds = %26, %11, %17
  %29 = load ptr, ptr %12, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !108

31:                                               ; preds = %28, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_active_side(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_active_side_exec, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_active_side_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #7
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #7
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !44
  %13 = load ptr, ptr %4, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.48) #7
  %17 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !91
  %21 = load ptr, ptr %13, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %9, %51
  %24 = phi ptr [ %52, %51 ], [ %21, %9 ]
  %25 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !102
  %27 = icmp eq i32 %26, %18
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  switch i32 %16, label %51 [
    i32 1, label %29
    i32 2, label %38
    i32 3, label %47
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !91
  %32 = icmp slt i32 %31, %20
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !44
  %36 = and i32 %35, -8
  %37 = or disjoint i32 %36, 1
  store i32 %37, ptr %34, align 8, !tbaa !44
  br label %51

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !91
  %41 = icmp sgt i32 %40, %20
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !44
  %45 = and i32 %44, -8
  %46 = or disjoint i32 %45, 1
  store i32 %46, ptr %43, align 8, !tbaa !44
  br label %51

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !44
  %50 = and i32 %49, -7
  store i32 %50, ptr %48, align 8, !tbaa !44
  br label %51

51:                                               ; preds = %47, %42, %38, %33, %29, %28, %23
  %52 = load ptr, ptr %24, align 8, !tbaa !58
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %23, !llvm.loop !103

54:                                               ; preds = %51, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #7
  br label %55

55:                                               ; preds = %2, %54
  %56 = phi i32 [ 4, %54 ], [ 2, %2 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_borderselect_exec, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !110
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !52
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #7
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #7
  %7 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.65) #7
  %11 = icmp eq i32 %10, 3
  %12 = load ptr, ptr %8, align 8, !tbaa !53
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.21) #7
  %14 = icmp eq ptr %6, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #7
  call void @UI_view2d_region_to_view_rctf(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  %16 = load ptr, ptr %6, align 8, !tbaa !55
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = and i32 %13, 255
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %38
  %23 = phi ptr [ %17, %19 ], [ %39, %38 ]
  call void @seq_rectf(ptr noundef nonnull %23, ptr noundef nonnull %4) #7
  %24 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = and i32 %28, -8
  %30 = or i32 %28, 1
  %31 = select i1 %11, i32 %30, i32 %29
  store i32 %31, ptr %27, align 8, !tbaa !44
  br label %37

32:                                               ; preds = %22
  br i1 %21, label %33, label %38

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !44
  %36 = and i32 %35, -8
  store i32 %36, ptr %34, align 8, !tbaa !44
  br label %37

37:                                               ; preds = %33, %26
  call void @recurs_sel_seq(ptr noundef nonnull %23) #7
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr %23, align 8, !tbaa !58
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %22, !llvm.loop !111

41:                                               ; preds = %38, %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %5) #7
  br label %42

42:                                               ; preds = %2, %41
  %43 = phi i32 [ 4, %41 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %43
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SEQUENCER_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_grouped_exec, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.60) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !65
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.61, ptr noundef nonnull @sequencer_prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !112
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = alloca [41 x i8], align 16
  %7 = alloca %struct.SeqIterator, align 8
  %8 = alloca %struct.SeqIterator, align 8
  %9 = alloca %struct.SeqIterator, align 8
  %10 = alloca %struct.SeqIterator, align 8
  %11 = alloca %struct.SeqIterator, align 8
  %12 = alloca %struct.SeqIterator, align 8
  %13 = alloca %struct.SeqIterator, align 8
  %14 = alloca %struct.SeqIterator, align 8
  %15 = alloca %struct.SeqIterator, align 8
  %16 = alloca %struct.SeqIterator, align 8
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %18 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %17, i8 noundef zeroext 0) #7
  %19 = tail call ptr @BKE_sequencer_active_get(ptr noundef %17) #7
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = tail call i32 @RNA_enum_get(ptr noundef %21, ptr noundef nonnull @.str.61) #7
  %23 = load ptr, ptr %20, align 8, !tbaa !53
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.21) #7
  %25 = icmp eq ptr %19, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.66) #7
  br label %492

29:                                               ; preds = %2
  %30 = and i32 %24, 255
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %16, i8 noundef zeroext 1) #7
  %33 = getelementptr inbounds %struct.SeqIterator, ptr %16, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SeqIterator, ptr %16, i64 0, i32 3
  br label %38

38:                                               ; preds = %36, %38
  %39 = load ptr, ptr %37, align 8, !tbaa !89
  %40 = getelementptr inbounds %struct.Sequence, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !44
  %42 = and i32 %41, -2
  store i32 %42, ptr %40, align 8, !tbaa !44
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %16) #7
  %43 = load i32, ptr %33, align 8, !tbaa !87
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %38, !llvm.loop !114

45:                                               ; preds = %38, %32
  %46 = phi i8 [ 0, %32 ], [ 1, %38 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #7
  br label %47

47:                                               ; preds = %45, %29
  %48 = phi i8 [ %46, %45 ], [ 0, %29 ]
  switch i32 %22, label %488 [
    i32 1, label %49
    i32 2, label %74
    i32 3, label %104
    i32 4, label %134
    i32 5, label %263
    i32 6, label %336
    i32 7, label %457
  ]

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %15, i8 noundef zeroext 1) #7
  %50 = getelementptr inbounds %struct.SeqIterator, ptr %15, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !87
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.SeqIterator, ptr %15, i64 0, i32 3
  %55 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  br label %56

56:                                               ; preds = %53, %67
  %57 = phi i8 [ 0, %53 ], [ %68, %67 ]
  %58 = load ptr, ptr %54, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.Sequence, ptr %58, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !34
  %61 = load i32, ptr %55, align 4, !tbaa !34
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.Sequence, ptr %58, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !44
  %66 = or i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !44
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i8 [ 1, %63 ], [ %57, %56 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %15) #7
  %69 = load i32, ptr %50, align 8, !tbaa !87
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %56, !llvm.loop !115

71:                                               ; preds = %67, %49
  %72 = phi i8 [ 0, %49 ], [ %68, %67 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #7
  %73 = or i8 %72, %48
  br label %488

74:                                               ; preds = %47
  %75 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !34
  %77 = and i32 %76, 12
  %78 = icmp eq i32 %77, 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %14, i8 noundef zeroext 1) #7
  %79 = getelementptr inbounds %struct.SeqIterator, ptr %14, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !87
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.SeqIterator, ptr %14, i64 0, i32 3
  br label %84

84:                                               ; preds = %82, %97
  %85 = phi i8 [ 0, %82 ], [ %98, %97 ]
  %86 = load ptr, ptr %83, align 8, !tbaa !89
  %87 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !34
  %89 = and i32 %88, 12
  %90 = icmp eq i32 %89, 4
  br i1 %78, label %91, label %92

91:                                               ; preds = %84
  br i1 %90, label %93, label %97

92:                                               ; preds = %84
  br i1 %90, label %97, label %93

93:                                               ; preds = %92, %91
  %94 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !44
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !44
  br label %97

97:                                               ; preds = %93, %92, %91
  %98 = phi i8 [ 1, %93 ], [ %85, %91 ], [ %85, %92 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %14) #7
  %99 = load i32, ptr %79, align 8, !tbaa !87
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %84, !llvm.loop !116

101:                                              ; preds = %97, %74
  %102 = phi i8 [ 0, %74 ], [ %98, %97 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #7
  %103 = or i8 %102, %48
  br label %488

104:                                              ; preds = %47
  %105 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %13, i8 noundef zeroext 1) #7
  %107 = getelementptr inbounds %struct.SeqIterator, ptr %13, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !87
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.SeqIterator, ptr %13, i64 0, i32 3
  %112 = and i32 %106, 8
  %113 = icmp eq i32 %112, 0
  br label %114

114:                                              ; preds = %110, %127
  %115 = phi i8 [ 0, %110 ], [ %128, %127 ]
  %116 = load ptr, ptr %111, align 8, !tbaa !89
  %117 = getelementptr inbounds %struct.Sequence, ptr %116, i64 0, i32 6
  %118 = load i32, ptr %117, align 4, !tbaa !34
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %113, label %122, label %121

121:                                              ; preds = %114
  br i1 %120, label %127, label %123

122:                                              ; preds = %114
  br i1 %120, label %123, label %127

123:                                              ; preds = %122, %121
  %124 = getelementptr inbounds %struct.Sequence, ptr %116, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !44
  %126 = or i32 %125, 1
  store i32 %126, ptr %124, align 8, !tbaa !44
  br label %127

127:                                              ; preds = %123, %122, %121
  %128 = phi i8 [ 1, %123 ], [ %115, %121 ], [ %115, %122 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %13) #7
  %129 = load i32, ptr %107, align 8, !tbaa !87
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %114, !llvm.loop !117

131:                                              ; preds = %127, %104
  %132 = phi i8 [ 0, %104 ], [ %128, %127 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #7
  %133 = or i8 %132, %48
  br label %488

134:                                              ; preds = %47
  %135 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 24
  %136 = load ptr, ptr %135, align 8, !tbaa !43
  %137 = icmp ne ptr %136, null
  %138 = getelementptr inbounds %struct.Strip, ptr %136, i64 0, i32 7
  %139 = select i1 %137, ptr %138, ptr null
  %140 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %141 = load i32, ptr %140, align 4, !tbaa !34
  switch i32 %141, label %260 [
    i32 3, label %145
    i32 0, label %145
    i32 4, label %145
    i32 2, label %142
    i32 5, label %142
    i32 6, label %142
    i32 7, label %142
  ]

142:                                              ; preds = %134, %134, %134, %134
  %143 = icmp eq i32 %141, 5
  %144 = select i1 %143, i1 %137, i1 false
  br i1 %144, label %146, label %175

145:                                              ; preds = %134, %134, %134
  br i1 %137, label %146, label %175

146:                                              ; preds = %145, %142
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %9, i8 noundef zeroext 1) #7
  %147 = getelementptr inbounds %struct.SeqIterator, ptr %9, i64 0, i32 4
  %148 = load i32, ptr %147, align 8, !tbaa !87
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.SeqIterator, ptr %9, i64 0, i32 3
  br label %152

152:                                              ; preds = %150, %169
  %153 = phi i8 [ 0, %150 ], [ %170, %169 ]
  %154 = load ptr, ptr %151, align 8, !tbaa !89
  %155 = getelementptr inbounds %struct.Sequence, ptr %154, i64 0, i32 6
  %156 = load i32, ptr %155, align 4, !tbaa !34
  switch i32 %156, label %169 [
    i32 3, label %157
    i32 0, label %157
    i32 4, label %157
    i32 5, label %157
  ]

157:                                              ; preds = %152, %152, %152, %152
  %158 = getelementptr inbounds %struct.Sequence, ptr %154, i64 0, i32 24
  %159 = load ptr, ptr %158, align 8, !tbaa !43
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.Strip, ptr %159, i64 0, i32 7
  %163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %162, ptr noundef nonnull dereferenceable(1) %139) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.Sequence, ptr %154, i64 0, i32 5
  %167 = load i32, ptr %166, align 8, !tbaa !44
  %168 = or i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !44
  br label %169

169:                                              ; preds = %165, %161, %157, %152
  %170 = phi i8 [ 1, %165 ], [ %153, %161 ], [ %153, %157 ], [ %153, %152 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %9) #7
  %171 = load i32, ptr %147, align 8, !tbaa !87
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %152, !llvm.loop !118

173:                                              ; preds = %169, %146
  %174 = phi i8 [ 0, %146 ], [ %170, %169 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  br label %260

175:                                              ; preds = %145, %142
  switch i32 %141, label %260 [
    i32 2, label %176
    i32 6, label %204
    i32 7, label %232
  ]

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 26
  %178 = load ptr, ptr %177, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %10, i8 noundef zeroext 1) #7
  %179 = getelementptr inbounds %struct.SeqIterator, ptr %10, i64 0, i32 4
  %180 = load i32, ptr %179, align 8, !tbaa !87
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.SeqIterator, ptr %10, i64 0, i32 3
  br label %184

184:                                              ; preds = %182, %198
  %185 = phi i8 [ 0, %182 ], [ %199, %198 ]
  %186 = load ptr, ptr %183, align 8, !tbaa !89
  %187 = getelementptr inbounds %struct.Sequence, ptr %186, i64 0, i32 6
  %188 = load i32, ptr %187, align 4, !tbaa !34
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.Sequence, ptr %186, i64 0, i32 26
  %192 = load ptr, ptr %191, align 8, !tbaa !119
  %193 = icmp eq ptr %192, %178
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.Sequence, ptr %186, i64 0, i32 5
  %196 = load i32, ptr %195, align 8, !tbaa !44
  %197 = or i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !44
  br label %198

198:                                              ; preds = %194, %190, %184
  %199 = phi i8 [ 1, %194 ], [ %185, %190 ], [ %185, %184 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %10) #7
  %200 = load i32, ptr %179, align 8, !tbaa !87
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %184, !llvm.loop !120

202:                                              ; preds = %198, %176
  %203 = phi i8 [ 0, %176 ], [ %199, %198 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #7
  br label %260

204:                                              ; preds = %175
  %205 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 28
  %206 = load ptr, ptr %205, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %11, i8 noundef zeroext 1) #7
  %207 = getelementptr inbounds %struct.SeqIterator, ptr %11, i64 0, i32 4
  %208 = load i32, ptr %207, align 8, !tbaa !87
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.SeqIterator, ptr %11, i64 0, i32 3
  br label %212

212:                                              ; preds = %210, %226
  %213 = phi i8 [ 0, %210 ], [ %227, %226 ]
  %214 = load ptr, ptr %211, align 8, !tbaa !89
  %215 = getelementptr inbounds %struct.Sequence, ptr %214, i64 0, i32 6
  %216 = load i32, ptr %215, align 4, !tbaa !34
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.Sequence, ptr %214, i64 0, i32 28
  %220 = load ptr, ptr %219, align 8, !tbaa !121
  %221 = icmp eq ptr %220, %206
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.Sequence, ptr %214, i64 0, i32 5
  %224 = load i32, ptr %223, align 8, !tbaa !44
  %225 = or i32 %224, 1
  store i32 %225, ptr %223, align 8, !tbaa !44
  br label %226

226:                                              ; preds = %222, %218, %212
  %227 = phi i8 [ 1, %222 ], [ %213, %218 ], [ %213, %212 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %11) #7
  %228 = load i32, ptr %207, align 8, !tbaa !87
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %212, !llvm.loop !122

230:                                              ; preds = %226, %204
  %231 = phi i8 [ 0, %204 ], [ %227, %226 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #7
  br label %260

232:                                              ; preds = %175
  %233 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 29
  %234 = load ptr, ptr %233, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %12, i8 noundef zeroext 1) #7
  %235 = getelementptr inbounds %struct.SeqIterator, ptr %12, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !87
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.SeqIterator, ptr %12, i64 0, i32 3
  br label %240

240:                                              ; preds = %238, %254
  %241 = phi i8 [ 0, %238 ], [ %255, %254 ]
  %242 = load ptr, ptr %239, align 8, !tbaa !89
  %243 = getelementptr inbounds %struct.Sequence, ptr %242, i64 0, i32 6
  %244 = load i32, ptr %243, align 4, !tbaa !34
  %245 = icmp eq i32 %244, 7
  br i1 %245, label %246, label %254

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.Sequence, ptr %242, i64 0, i32 29
  %248 = load ptr, ptr %247, align 8, !tbaa !123
  %249 = icmp eq ptr %248, %234
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.Sequence, ptr %242, i64 0, i32 5
  %252 = load i32, ptr %251, align 8, !tbaa !44
  %253 = or i32 %252, 1
  store i32 %253, ptr %251, align 8, !tbaa !44
  br label %254

254:                                              ; preds = %250, %246, %240
  %255 = phi i8 [ 1, %250 ], [ %241, %246 ], [ %241, %240 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %12) #7
  %256 = load i32, ptr %235, align 8, !tbaa !87
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %240, !llvm.loop !124

258:                                              ; preds = %254, %232
  %259 = phi i8 [ 0, %232 ], [ %255, %254 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #7
  br label %260

260:                                              ; preds = %134, %173, %175, %202, %230, %258
  %261 = phi i8 [ 0, %134 ], [ %174, %173 ], [ %203, %202 ], [ %231, %230 ], [ %259, %258 ], [ 0, %175 ]
  %262 = or i8 %261, %48
  br label %488

263:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %6, i8 0, i64 41, i1 false), !tbaa !125
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %7, i8 noundef zeroext 1) #7
  %264 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 4
  %265 = load i32, ptr %264, align 8, !tbaa !87
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %290, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 3
  br label %269

269:                                              ; preds = %267, %287
  %270 = load ptr, ptr %268, align 8, !tbaa !89
  %271 = getelementptr inbounds %struct.Sequence, ptr %270, i64 0, i32 33
  %272 = load ptr, ptr %271, align 8, !tbaa !126
  %273 = icmp eq ptr %272, %19
  br i1 %273, label %282, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.Sequence, ptr %270, i64 0, i32 34
  %276 = load ptr, ptr %275, align 8, !tbaa !127
  %277 = icmp eq ptr %276, %19
  br i1 %277, label %282, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.Sequence, ptr %270, i64 0, i32 35
  %280 = load ptr, ptr %279, align 8, !tbaa !128
  %281 = icmp eq ptr %280, %19
  br i1 %281, label %282, label %287

282:                                              ; preds = %278, %274, %269
  %283 = getelementptr inbounds %struct.Sequence, ptr %270, i64 0, i32 6
  %284 = load i32, ptr %283, align 4, !tbaa !34
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [41 x i8], ptr %6, i64 0, i64 %285
  store i8 1, ptr %286, align 1, !tbaa !125
  br label %287

287:                                              ; preds = %282, %278
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %7) #7
  %288 = load i32, ptr %264, align 8, !tbaa !87
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %269, !llvm.loop !129

290:                                              ; preds = %287, %263
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  %291 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 4
  %292 = load i32, ptr %291, align 8, !tbaa !87
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %333, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 3
  br label %296

296:                                              ; preds = %294, %329
  %297 = phi i8 [ 0, %294 ], [ %330, %329 ]
  %298 = load ptr, ptr %295, align 8, !tbaa !89
  %299 = getelementptr inbounds %struct.Sequence, ptr %298, i64 0, i32 6
  %300 = load i32, ptr %299, align 4, !tbaa !34
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [41 x i8], ptr %6, i64 0, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !125
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %329, label %305

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.Sequence, ptr %298, i64 0, i32 33
  %307 = load ptr, ptr %306, align 8, !tbaa !126
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.Sequence, ptr %307, i64 0, i32 5
  %311 = load i32, ptr %310, align 8, !tbaa !44
  %312 = or i32 %311, 1
  store i32 %312, ptr %310, align 8, !tbaa !44
  br label %313

313:                                              ; preds = %309, %305
  %314 = getelementptr inbounds %struct.Sequence, ptr %298, i64 0, i32 34
  %315 = load ptr, ptr %314, align 8, !tbaa !127
  %316 = icmp eq ptr %315, null
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.Sequence, ptr %315, i64 0, i32 5
  %319 = load i32, ptr %318, align 8, !tbaa !44
  %320 = or i32 %319, 1
  store i32 %320, ptr %318, align 8, !tbaa !44
  br label %321

321:                                              ; preds = %317, %313
  %322 = getelementptr inbounds %struct.Sequence, ptr %298, i64 0, i32 35
  %323 = load ptr, ptr %322, align 8, !tbaa !128
  %324 = icmp eq ptr %323, null
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.Sequence, ptr %323, i64 0, i32 5
  %327 = load i32, ptr %326, align 8, !tbaa !44
  %328 = or i32 %327, 1
  store i32 %328, ptr %326, align 8, !tbaa !44
  br label %329

329:                                              ; preds = %325, %321, %296
  %330 = phi i8 [ %297, %296 ], [ 1, %325 ], [ 1, %321 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %8) #7
  %331 = load i32, ptr %291, align 8, !tbaa !87
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %296, !llvm.loop !130

333:                                              ; preds = %329, %290
  %334 = phi i8 [ 0, %290 ], [ %330, %329 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %6) #7
  %335 = or i8 %334, %48
  br label %488

336:                                              ; preds = %47
  %337 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 6
  %338 = load i32, ptr %337, align 4, !tbaa !34
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %346, label %340

340:                                              ; preds = %336
  %341 = and i32 %338, 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = and i32 %338, 8
  %345 = icmp eq i32 %344, 0
  br label %346

346:                                              ; preds = %343, %340, %336
  %347 = phi i1 [ true, %336 ], [ false, %340 ], [ %345, %343 ]
  %348 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 15
  %349 = load i32, ptr %348, align 8, !tbaa !91
  %350 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 16
  %351 = load i32, ptr %350, align 4, !tbaa !90
  %352 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 13
  %353 = load i32, ptr %352, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %5, i8 noundef zeroext 1) #7
  %354 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %355 = load i32, ptr %354, align 8, !tbaa !87
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %364, label %357

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %359

359:                                              ; preds = %357, %359
  %360 = load ptr, ptr %358, align 8, !tbaa !89
  %361 = getelementptr inbounds %struct.Sequence, ptr %360, i64 0, i32 2
  store ptr null, ptr %361, align 8, !tbaa !131
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #7
  %362 = load i32, ptr %354, align 8, !tbaa !87
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %359, !llvm.loop !132

364:                                              ; preds = %359, %346
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %365 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %365, align 8, !tbaa !131
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  %366 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !87
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %454, label %369

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %371

371:                                              ; preds = %369, %447
  %372 = phi i32 [ %353, %369 ], [ %451, %447 ]
  %373 = phi i32 [ %351, %369 ], [ %450, %447 ]
  %374 = phi i32 [ %349, %369 ], [ %449, %447 ]
  %375 = phi i8 [ 0, %369 ], [ %448, %447 ]
  %376 = load ptr, ptr %370, align 8, !tbaa !89
  %377 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 5
  %378 = load i32, ptr %377, align 8, !tbaa !44
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %447

381:                                              ; preds = %371
  %382 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 15
  %383 = load i32, ptr %382, align 8, !tbaa !91
  %384 = icmp slt i32 %383, %373
  br i1 %384, label %385, label %447

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 16
  %387 = load i32, ptr %386, align 4, !tbaa !90
  %388 = icmp slt i32 %387, %374
  br i1 %388, label %447, label %389

389:                                              ; preds = %385
  br i1 %347, label %396, label %390

390:                                              ; preds = %389
  %391 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 6
  %392 = load i32, ptr %391, align 4, !tbaa !34
  %393 = and i32 %392, 12
  %394 = icmp eq i32 %393, 4
  br i1 %394, label %447, label %395

395:                                              ; preds = %390
  br i1 %347, label %396, label %403

396:                                              ; preds = %395, %389
  %397 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 6
  %398 = load i32, ptr %397, align 4, !tbaa !34
  %399 = icmp eq i32 %398, 1
  %400 = and i32 %398, 12
  %401 = icmp eq i32 %400, 4
  %402 = or i1 %399, %401
  br i1 %402, label %403, label %447

403:                                              ; preds = %396, %395
  %404 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 6
  %405 = load i32, ptr %404, align 4, !tbaa !34
  %406 = and i32 %405, 8
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %440, label %408

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 33
  %410 = load ptr, ptr %409, align 8, !tbaa !126
  %411 = icmp eq ptr %410, null
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.Sequence, ptr %410, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !131
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %432

416:                                              ; preds = %412, %408
  %417 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 34
  %418 = load ptr, ptr %417, align 8, !tbaa !127
  %419 = icmp eq ptr %418, null
  br i1 %419, label %424, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.Sequence, ptr %418, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !131
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %432

424:                                              ; preds = %420, %416
  %425 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 35
  %426 = load ptr, ptr %425, align 8, !tbaa !128
  %427 = icmp eq ptr %426, null
  br i1 %427, label %440, label %428

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.Sequence, ptr %426, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !131
  %431 = icmp eq ptr %430, null
  br i1 %431, label %440, label %432

432:                                              ; preds = %428, %420, %412
  %433 = call i32 @llvm.smin.i32(i32 %374, i32 %383)
  %434 = call i32 @llvm.smax.i32(i32 %373, i32 %387)
  %435 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 13
  %436 = load i32, ptr %435, align 8, !tbaa !102
  %437 = call i32 @llvm.smax.i32(i32 %372, i32 %436)
  %438 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %438, align 8, !tbaa !131
  %439 = or disjoint i32 %378, 1
  store i32 %439, ptr %377, align 8, !tbaa !44
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  br label %447

440:                                              ; preds = %428, %424, %403
  %441 = getelementptr inbounds %struct.Sequence, ptr %376, i64 0, i32 13
  %442 = load i32, ptr %441, align 8, !tbaa !102
  %443 = icmp slt i32 %442, %372
  %444 = or i1 %347, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  %446 = or disjoint i32 %378, 1
  store i32 %446, ptr %377, align 8, !tbaa !44
  br label %447

447:                                              ; preds = %396, %445, %440, %432, %390, %385, %381, %371
  %448 = phi i8 [ %375, %371 ], [ %375, %381 ], [ %375, %385 ], [ 1, %432 ], [ 1, %445 ], [ %375, %440 ], [ %375, %390 ], [ %375, %396 ]
  %449 = phi i32 [ %374, %371 ], [ %374, %381 ], [ %374, %385 ], [ %433, %432 ], [ %374, %445 ], [ %374, %440 ], [ %374, %390 ], [ %374, %396 ]
  %450 = phi i32 [ %373, %371 ], [ %373, %381 ], [ %373, %385 ], [ %434, %432 ], [ %373, %445 ], [ %373, %440 ], [ %373, %390 ], [ %373, %396 ]
  %451 = phi i32 [ %372, %371 ], [ %372, %381 ], [ %372, %385 ], [ %437, %432 ], [ %372, %445 ], [ %372, %440 ], [ %372, %390 ], [ %372, %396 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #7
  %452 = load i32, ptr %366, align 8, !tbaa !87
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %371, !llvm.loop !133

454:                                              ; preds = %447, %364
  %455 = phi i8 [ 0, %364 ], [ %448, %447 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %456 = or i8 %455, %48
  br label %488

457:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @BKE_sequence_iterator_begin(ptr noundef %18, ptr noundef nonnull %3, i8 noundef zeroext 1) #7
  %458 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !87
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %485, label %461

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %463 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 16
  %464 = getelementptr inbounds %struct.Sequence, ptr %19, i64 0, i32 15
  br label %465

465:                                              ; preds = %461, %481
  %466 = phi i8 [ 0, %461 ], [ %482, %481 ]
  %467 = load ptr, ptr %462, align 8, !tbaa !89
  %468 = getelementptr inbounds %struct.Sequence, ptr %467, i64 0, i32 15
  %469 = load i32, ptr %468, align 8, !tbaa !91
  %470 = load i32, ptr %463, align 4, !tbaa !90
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %481

472:                                              ; preds = %465
  %473 = getelementptr inbounds %struct.Sequence, ptr %467, i64 0, i32 16
  %474 = load i32, ptr %473, align 4, !tbaa !90
  %475 = load i32, ptr %464, align 8, !tbaa !91
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %481, label %477

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.Sequence, ptr %467, i64 0, i32 5
  %479 = load i32, ptr %478, align 8, !tbaa !44
  %480 = or i32 %479, 1
  store i32 %480, ptr %478, align 8, !tbaa !44
  br label %481

481:                                              ; preds = %477, %472, %465
  %482 = phi i8 [ %466, %465 ], [ %466, %472 ], [ 1, %477 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #7
  %483 = load i32, ptr %458, align 8, !tbaa !87
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %465, !llvm.loop !134

485:                                              ; preds = %481, %457
  %486 = phi i8 [ 0, %457 ], [ %482, %481 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  %487 = or i8 %486, %48
  br label %488

488:                                              ; preds = %47, %101, %260, %454, %485, %333, %131, %71
  %489 = phi i8 [ %73, %71 ], [ %103, %101 ], [ %133, %131 ], [ %262, %260 ], [ %335, %333 ], [ %456, %454 ], [ %487, %485 ], [ %48, %47 ]
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %488
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %17) #7
  br label %492

492:                                              ; preds = %488, %491, %26
  %493 = phi i32 [ 2, %26 ], [ 4, %491 ], [ 2, %488 ]
  ret i32 %493
}

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_nearest_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

declare ptr @find_neighboring_sequence(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = icmp ne i8 %1, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !55
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !131
  %18 = load ptr, ptr %16, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !135

20:                                               ; preds = %15, %11, %6
  %21 = load ptr, ptr %4, align 8, !tbaa !55
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %20, %64
  %25 = phi ptr [ %66, %64 ], [ %22, %20 ]
  %26 = phi i8 [ %65, %64 ], [ 0, %20 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %7, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %24
  br i1 %10, label %33, label %37

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Sequence, ptr %25, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %32, %33
  %38 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 1, i32 noundef %9) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Sequence, ptr %38, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !44
  br i1 %7, label %43, label %45

43:                                               ; preds = %40
  %44 = or i32 %42, 1
  store i32 %44, ptr %41, align 8, !tbaa !44
  tail call void @recurs_sel_seq(ptr noundef nonnull %38) #7
  br label %47

45:                                               ; preds = %40
  %46 = and i32 %42, -2
  store i32 %46, ptr %41, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %45, %43
  br i1 %10, label %48, label %50

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.Sequence, ptr %38, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %49, align 8, !tbaa !131
  br label %50

50:                                               ; preds = %47, %48, %37
  %51 = phi i8 [ %26, %37 ], [ 1, %48 ], [ 1, %47 ]
  %52 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 2, i32 noundef %9) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !44
  br i1 %7, label %57, label %59

57:                                               ; preds = %54
  %58 = or i32 %56, 1
  store i32 %58, ptr %55, align 8, !tbaa !44
  tail call void @recurs_sel_seq(ptr noundef nonnull %52) #7
  br label %61

59:                                               ; preds = %54
  %60 = and i32 %56, -2
  store i32 %60, ptr %55, align 8, !tbaa !44
  br label %61

61:                                               ; preds = %59, %57
  br i1 %10, label %62, label %64

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %63, align 8, !tbaa !131
  br label %64

64:                                               ; preds = %61, %62, %24, %50, %33
  %65 = phi i8 [ %51, %50 ], [ %26, %33 ], [ %26, %24 ], [ 1, %62 ], [ 1, %61 ]
  %66 = load ptr, ptr %25, align 8, !tbaa !58
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %24, !llvm.loop !136

68:                                               ; preds = %64, %20, %3
  %69 = phi i8 [ 0, %3 ], [ 0, %20 ], [ %65, %64 ]
  ret i8 %69
}

declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @seq_rectf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !39, i64 100}
!35 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !41, i64 156, !41, i64 158, !39, i64 160, !39, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !40, i64 224, !40, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !42, i64 256, !36, i64 272, !36, i64 280, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !36, i64 304, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !39, i64 328, !37, i64 332, !37, i64 333, !42, i64 336}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!35, !36, i64 168}
!44 = !{!35, !39, i64 96}
!45 = !{!46, !36, i64 0}
!46 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !47, i64 152, !41, i64 184}
!47 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!48 = !{!46, !36, i64 8}
!49 = !{!46, !36, i64 24}
!50 = !{!46, !36, i64 32}
!51 = !{!46, !36, i64 72}
!52 = !{!46, !41, i64 184}
!53 = !{!54, !36, i64 112}
!54 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!55 = !{!56, !36, i64 0}
!56 = !{!"Editing", !36, i64 0, !42, i64 8, !42, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !57, i64 2112}
!57 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!58 = !{!36, !36, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
!64 = !{!46, !36, i64 48}
!65 = !{!46, !36, i64 88}
!66 = !{!39, !39, i64 0}
!67 = !{!68, !39, i64 680}
!68 = !{!"Scene", !69, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !70, i64 280, !78, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !42, i64 4384, !79, i64 4400, !80, i64 4416, !83, i64 4600, !36, i64 4608, !84, i64 4616, !36, i64 4640, !85, i64 4648, !85, i64 4656, !72, i64 4664, !73, i64 4824, !86, i64 4888, !36, i64 4952}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!70 = !{!"RenderData", !71, i64 0, !36, i64 248, !36, i64 256, !74, i64 264, !75, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !57, i64 544, !57, i64 560, !76, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !40, i64 660, !40, i64 664, !41, i64 668, !41, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !40, i64 2528, !40, i64 2532, !41, i64 2536, !41, i64 2538, !40, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !40, i64 2560, !40, i64 2564, !36, i64 2568, !39, i64 2576, !40, i64 2580, !37, i64 2584, !77, i64 2616, !39, i64 3976, !39, i64 3980}
!71 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!74 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!75 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!76 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!77 = !{!"BakeData", !71, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!78 = !{!"AudioData", !39, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !40, i64 24, !40, i64 28}
!79 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!80 = !{!"GameData", !79, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !81, i64 40, !41, i64 64, !41, i64 66, !40, i64 68, !82, i64 72, !40, i64 128, !40, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!81 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !40, i64 8, !40, i64 12, !36, i64 16}
!82 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !41, i64 54}
!83 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!84 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!85 = !{!"long", !37, i64 0}
!86 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!87 = !{!88, !39, i64 24}
!88 = !{!"SeqIterator", !36, i64 0, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!89 = !{!88, !36, i64 16}
!90 = !{!35, !39, i64 140}
!91 = !{!35, !39, i64 136}
!92 = distinct !{!92, !60, !61}
!93 = !{!94, !39, i64 232}
!94 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !42, i64 16, !39, i64 32, !40, i64 36, !37, i64 40, !95, i64 56, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !39, i64 232, !40, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !96, i64 256}
!95 = !{!"View2D", !57, i64 0, !57, i64 16, !76, i64 32, !76, i64 48, !76, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!96 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!97 = !{!98, !39, i64 16}
!98 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 20, !39, i64 84, !36, i64 88}
!99 = !{!98, !39, i64 84}
!100 = distinct !{!100, !60, !61}
!101 = !{!56, !36, i64 40}
!102 = !{!35, !39, i64 128}
!103 = distinct !{!103, !60, !61}
!104 = distinct !{!104, !60, !61}
!105 = !{i8 0, i8 2}
!106 = distinct !{!106, !60, !61}
!107 = distinct !{!107, !60, !61}
!108 = distinct !{!108, !60, !61}
!109 = !{!46, !36, i64 64}
!110 = !{!46, !36, i64 56}
!111 = distinct !{!111, !60, !61}
!112 = !{!46, !36, i64 104}
!113 = !{!54, !36, i64 120}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
!116 = distinct !{!116, !60, !61}
!117 = distinct !{!117, !60, !61}
!118 = distinct !{!118, !60, !61}
!119 = !{!35, !36, i64 184}
!120 = distinct !{!120, !60, !61}
!121 = !{!35, !36, i64 200}
!122 = distinct !{!122, !60, !61}
!123 = !{!35, !36, i64 208}
!124 = distinct !{!124, !60, !61}
!125 = !{!37, !37, i64 0}
!126 = !{!35, !36, i64 232}
!127 = !{!35, !36, i64 240}
!128 = !{!35, !36, i64 248}
!129 = distinct !{!129, !60, !61}
!130 = distinct !{!130, !60, !61}
!131 = !{!35, !36, i64 16}
!132 = distinct !{!132, !60, !61}
!133 = distinct !{!133, !60, !61}
!134 = distinct !{!134, !60, !61}
!135 = distinct !{!135, !60, !61}
!136 = distinct !{!136, !60, !61}
