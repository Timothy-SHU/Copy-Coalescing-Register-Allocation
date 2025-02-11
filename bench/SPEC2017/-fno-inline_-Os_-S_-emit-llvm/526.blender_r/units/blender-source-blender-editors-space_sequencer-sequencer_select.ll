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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_sequencer_select_sequence_single(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #8
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @ED_sequencer_deselect_all(ptr noundef %0) #8
  br label %7

7:                                                ; preds = %6, %3
  tail call void @BKE_sequencer_active_set(ptr noundef %0, ptr noundef %1) #8
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !5
  switch i32 %9, label %27 [
    i32 0, label %10
    i32 3, label %10
    i32 4, label %16
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 4
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Editing, ptr %4, i64 0, i32 5
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi ptr [ %18, %20 ], [ %12, %14 ]
  %24 = phi ptr [ %21, %20 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.Strip, ptr %23, i64 0, i32 7
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef 768) #8
  br label %27

27:                                               ; preds = %22, %7, %16, %10
  %28 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !15
  %30 = or i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !15
  tail call void @recurs_sel_seq(ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @recurs_sel_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_de_select_all_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.64) #8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %6, i8 noundef zeroext 0) #8
  %8 = icmp eq i32 %5, 0
  %9 = load ptr, ptr %7, align 8, !tbaa !26
  br i1 %8, label %10, label %19

10:                                               ; preds = %2, %14
  %11 = phi ptr [ %12, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !15
  %17 = and i32 %16, 7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !30

19:                                               ; preds = %14, %10, %2
  %20 = phi i32 [ %5, %2 ], [ 2, %14 ], [ 1, %10 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %19, %43
  %24 = phi ptr [ %44, %43 ], [ %21, %19 ]
  switch i32 %20, label %43 [
    i32 1, label %25
    i32 2, label %30
    i32 3, label %34
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = and i32 %27, -8
  %29 = or disjoint i32 %28, 1
  store i32 %29, ptr %26, align 8, !tbaa !15
  br label %43

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !15
  %33 = and i32 %32, -8
  store i32 %33, ptr %31, align 8, !tbaa !15
  br label %43

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !15
  %37 = and i32 %36, 7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = and i32 %36, -8
  store i32 %40, ptr %35, align 8, !tbaa !15
  br label %43

41:                                               ; preds = %34
  %42 = or disjoint i32 %36, 1
  store i32 %42, ptr %35, align 8, !tbaa !15
  br label %43

43:                                               ; preds = %25, %30, %23, %41, %39
  %44 = load ptr, ptr %24, align 8, !tbaa !29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %23, !llvm.loop !32

46:                                               ; preds = %43, %19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %6) #8
  ret i32 4
}

; Function Attrs: optsize
declare i32 @sequencer_edit_poll(ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_inverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_inverse_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_inverse_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = and i32 %11, -7
  %13 = xor i32 %12, 1
  store i32 %13, ptr %10, align 8, !tbaa !15
  %14 = load ptr, ptr %9, align 8, !tbaa !29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !33

16:                                               ; preds = %8, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_select_invoke, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !35
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.27, ptr noundef nonnull @SEQUENCER_OT_select.sequencer_select_left_right_types, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !35
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SeqIterator, align 8
  %6 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %7, i8 noundef zeroext 0) #8
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.21) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !24
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.24) #8
  %14 = load ptr, ptr %9, align 8, !tbaa !24
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.30) #8
  %16 = load ptr, ptr %9, align 8, !tbaa !24
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.27) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %18 = icmp eq ptr %8, null
  br i1 %18, label %274, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = call ptr @find_nearest_seq(ptr noundef %7, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %20) #8
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
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  switch i32 %17, label %45 [
    i32 1, label %31
    i32 2, label %35
    i32 3, label %40
  ]

31:                                               ; preds = %30
  %32 = load i32, ptr %20, align 4, !tbaa !36
  %33 = sitofp i32 %32 to float
  %34 = call float @UI_view2d_region_to_view_x(ptr noundef %6, float noundef %33) #8
  br label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !37
  %38 = add nsw i32 %37, -1
  %39 = sitofp i32 %38 to float
  br label %45

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !37
  %43 = add nsw i32 %42, 1
  %44 = sitofp i32 %43 to float
  br label %45

45:                                               ; preds = %30, %40, %35, %31
  %46 = phi float [ undef, %30 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %8, ptr noundef nonnull %5, i8 noundef zeroext 1) #8
  %47 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !57
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  %52 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  br label %53

53:                                               ; preds = %50, %70
  %54 = load ptr, ptr %51, align 8, !tbaa !59
  %55 = load i32, ptr %52, align 8, !tbaa !37
  %56 = sitofp i32 %55 to float
  %57 = fcmp olt float %46, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 16
  %60 = load i32, ptr %59, align 4, !tbaa !60
  %61 = icmp slt i32 %60, %55
  br i1 %61, label %66, label %70

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !61
  %65 = icmp sgt i32 %64, %55
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.Sequence, ptr %54, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !15
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !15
  call void @recurs_sel_seq(ptr noundef nonnull %54) #8
  br label %70

70:                                               ; preds = %66, %58, %62
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #8
  %71 = load i32, ptr %47, align 8, !tbaa !57
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %53, !llvm.loop !62

73:                                               ; preds = %70, %45
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  %74 = call ptr @CTX_wm_space_seq(ptr noundef %0) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %273, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.SpaceSeq, ptr %74, i64 0, i32 13
  %78 = load i32, ptr %77, align 8, !tbaa !63
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %273, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !29
  %84 = icmp eq ptr %83, null
  br i1 %84, label %273, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %87 = load i32, ptr %86, align 8, !tbaa !37
  %88 = sitofp i32 %87 to float
  %89 = fcmp olt float %46, %88
  %90 = fcmp ult float %46, %88
  br label %91

91:                                               ; preds = %85, %110
  %92 = phi ptr [ %83, %85 ], [ %111, %110 ]
  br i1 %89, label %93, label %97

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !67
  %96 = icmp slt i32 %95, %87
  br i1 %96, label %102, label %97

97:                                               ; preds = %93, %91
  br i1 %90, label %106, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !67
  %101 = icmp slt i32 %100, %87
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %93
  %103 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !69
  %105 = or i32 %104, 1
  store i32 %105, ptr %103, align 4, !tbaa !69
  br label %110

106:                                              ; preds = %98, %97
  %107 = getelementptr inbounds %struct.TimeMarker, ptr %92, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !69
  %109 = and i32 %108, -2
  store i32 %109, ptr %107, align 4, !tbaa !69
  br label %110

110:                                              ; preds = %102, %106
  %111 = load ptr, ptr %92, align 8, !tbaa !29
  %112 = icmp eq ptr %111, null
  br i1 %112, label %273, label %91, !llvm.loop !70

113:                                              ; preds = %19
  %114 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !71
  %116 = and i32 %11, 255
  %117 = icmp eq i32 %116, 0
  %118 = and i32 %13, 255
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  br label %122

122:                                              ; preds = %121, %113
  br i1 %22, label %123, label %273

123:                                              ; preds = %122
  call void @BKE_sequencer_active_set(ptr noundef %7, ptr noundef nonnull %21) #8
  %124 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !5
  switch i32 %125, label %143 [
    i32 0, label %126
    i32 3, label %126
    i32 4, label %132
  ]

126:                                              ; preds = %123, %123
  %127 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 4
  br label %138

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 24
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.Editing, ptr %8, i64 0, i32 5
  br label %138

138:                                              ; preds = %130, %136
  %139 = phi ptr [ %134, %136 ], [ %128, %130 ]
  %140 = phi ptr [ %137, %136 ], [ %131, %130 ]
  %141 = getelementptr inbounds %struct.Strip, ptr %139, i64 0, i32 7
  %142 = call ptr @BLI_strncpy(ptr noundef nonnull %140, ptr noundef nonnull %141, i64 noundef 768) #8
  br label %143

143:                                              ; preds = %138, %123, %132, %126
  %144 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %145 = load i32, ptr %144, align 8, !tbaa !15
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %117, i1 true, i1 %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = load ptr, ptr %114, align 8, !tbaa !71
  %151 = icmp eq ptr %150, %115
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i32, ptr %4, align 4
  switch i32 %153, label %169 [
    i32 0, label %154
    i32 1, label %157
    i32 2, label %159
  ]

154:                                              ; preds = %152
  br i1 %119, label %155, label %169

155:                                              ; preds = %154
  %156 = and i32 %145, -8
  store i32 %156, ptr %144, align 8, !tbaa !15
  br label %269

157:                                              ; preds = %152
  %158 = xor i32 %145, 2
  store i32 %158, ptr %144, align 8, !tbaa !15
  br label %180

159:                                              ; preds = %152
  %160 = xor i32 %145, 4
  store i32 %160, ptr %144, align 8, !tbaa !15
  br label %180

161:                                              ; preds = %143, %149
  %162 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %163 = or i32 %145, 1
  store i32 %163, ptr %162, align 8, !tbaa !15
  %164 = load i32, ptr %4, align 4
  switch i32 %164, label %169 [
    i32 1, label %165
    i32 2, label %167
  ]

165:                                              ; preds = %161
  %166 = or i32 %145, 3
  store i32 %166, ptr %162, align 8, !tbaa !15
  br label %180

167:                                              ; preds = %161
  %168 = or i32 %145, 5
  store i32 %168, ptr %162, align 8, !tbaa !15
  br label %180

169:                                              ; preds = %161, %152, %154
  %170 = phi i32 [ %163, %161 ], [ %145, %152 ], [ %145, %154 ]
  %171 = phi i32 [ %164, %161 ], [ %153, %152 ], [ 0, %154 ]
  br i1 %119, label %180, label %172

172:                                              ; preds = %169
  br i1 %117, label %173, label %176

173:                                              ; preds = %172
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  %174 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %175 = load i32, ptr %174, align 8, !tbaa !15
  br label %176

176:                                              ; preds = %173, %172
  %177 = phi i32 [ %175, %173 ], [ %170, %172 ]
  %178 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %179 = or i32 %177, 1
  store i32 %179, ptr %178, align 8, !tbaa !15
  call fastcc void @select_surrounding_handles(ptr noundef %7, ptr noundef nonnull %21) #10
  br label %269

180:                                              ; preds = %159, %157, %167, %165, %169
  %181 = phi i32 [ %171, %169 ], [ 2, %159 ], [ 1, %157 ], [ 2, %167 ], [ 1, %165 ]
  %182 = phi i32 [ %170, %169 ], [ %160, %159 ], [ %158, %157 ], [ %168, %167 ], [ %166, %165 ]
  %183 = icmp ne i32 %118, 0
  %184 = add i32 %181, -1
  %185 = icmp ult i32 %184, 2
  %186 = and i1 %183, %185
  br i1 %186, label %187, label %269

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 5
  %189 = and i32 %182, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %269, label %191

191:                                              ; preds = %187
  %192 = call ptr @find_neighboring_sequence(ptr noundef %7, ptr noundef nonnull %21, i32 noundef %181, i32 noundef -1) #8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %261, label %194

194:                                              ; preds = %191
  switch i32 %181, label %269 [
    i32 1, label %195
    i32 2, label %228
  ]

195:                                              ; preds = %194
  %196 = load i32, ptr %188, align 8, !tbaa !15
  %197 = and i32 %196, 2
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.Sequence, ptr %192, i64 0, i32 5
  %201 = load i32, ptr %200, align 8, !tbaa !15
  %202 = and i32 %201, 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %199
  br i1 %117, label %205, label %207

205:                                              ; preds = %204
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  %206 = load i32, ptr %188, align 8, !tbaa !15
  br label %207

207:                                              ; preds = %205, %204
  %208 = phi i32 [ %206, %205 ], [ %196, %204 ]
  %209 = or i32 %208, 1
  store i32 %209, ptr %188, align 8, !tbaa !15
  %210 = load ptr, ptr %8, align 8, !tbaa !26
  %211 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %212 = load i32, ptr %211, align 8, !tbaa !72
  %213 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %214 = load i32, ptr %213, align 8, !tbaa !61
  call fastcc void @select_active_side(ptr noundef %210, i32 noundef 1, i32 noundef %212, i32 noundef %214) #10
  br label %269

215:                                              ; preds = %199, %195
  br i1 %117, label %216, label %218

216:                                              ; preds = %215
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  %217 = load i32, ptr %188, align 8, !tbaa !15
  br label %218

218:                                              ; preds = %216, %215
  %219 = phi i32 [ %217, %216 ], [ %196, %215 ]
  %220 = or i32 %219, 1
  store i32 %220, ptr %188, align 8, !tbaa !15
  %221 = getelementptr inbounds %struct.Sequence, ptr %192, i64 0, i32 5
  %222 = load i32, ptr %221, align 8, !tbaa !15
  %223 = or i32 %222, 1
  store i32 %223, ptr %221, align 8, !tbaa !15
  call void @recurs_sel_seq(ptr noundef nonnull %192) #8
  %224 = load i32, ptr %221, align 8, !tbaa !15
  %225 = or i32 %224, 4
  store i32 %225, ptr %221, align 8, !tbaa !15
  %226 = load i32, ptr %188, align 8, !tbaa !15
  %227 = or i32 %226, 2
  store i32 %227, ptr %188, align 8, !tbaa !15
  br label %269

228:                                              ; preds = %194
  %229 = load i32, ptr %188, align 8, !tbaa !15
  %230 = and i32 %229, 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.Sequence, ptr %192, i64 0, i32 5
  %234 = load i32, ptr %233, align 8, !tbaa !15
  %235 = and i32 %234, 2
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %232
  br i1 %117, label %238, label %240

238:                                              ; preds = %237
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  %239 = load i32, ptr %188, align 8, !tbaa !15
  br label %240

240:                                              ; preds = %238, %237
  %241 = phi i32 [ %239, %238 ], [ %229, %237 ]
  %242 = or i32 %241, 1
  store i32 %242, ptr %188, align 8, !tbaa !15
  %243 = load ptr, ptr %8, align 8, !tbaa !26
  %244 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %245 = load i32, ptr %244, align 8, !tbaa !72
  %246 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %247 = load i32, ptr %246, align 8, !tbaa !61
  call fastcc void @select_active_side(ptr noundef %243, i32 noundef 2, i32 noundef %245, i32 noundef %247) #10
  br label %269

248:                                              ; preds = %232, %228
  br i1 %117, label %249, label %251

249:                                              ; preds = %248
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  %250 = load i32, ptr %188, align 8, !tbaa !15
  br label %251

251:                                              ; preds = %249, %248
  %252 = phi i32 [ %250, %249 ], [ %229, %248 ]
  %253 = or i32 %252, 1
  store i32 %253, ptr %188, align 8, !tbaa !15
  %254 = getelementptr inbounds %struct.Sequence, ptr %192, i64 0, i32 5
  %255 = load i32, ptr %254, align 8, !tbaa !15
  %256 = or i32 %255, 1
  store i32 %256, ptr %254, align 8, !tbaa !15
  call void @recurs_sel_seq(ptr noundef nonnull %192) #8
  %257 = load i32, ptr %254, align 8, !tbaa !15
  %258 = or i32 %257, 2
  store i32 %258, ptr %254, align 8, !tbaa !15
  %259 = load i32, ptr %188, align 8, !tbaa !15
  %260 = or i32 %259, 4
  store i32 %260, ptr %188, align 8, !tbaa !15
  br label %269

261:                                              ; preds = %191
  br i1 %117, label %262, label %263

262:                                              ; preds = %261
  call void @ED_sequencer_deselect_all(ptr noundef %7) #8
  br label %263

263:                                              ; preds = %262, %261
  %264 = load ptr, ptr %8, align 8, !tbaa !26
  %265 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 13
  %266 = load i32, ptr %265, align 8, !tbaa !72
  %267 = getelementptr inbounds %struct.Sequence, ptr %21, i64 0, i32 15
  %268 = load i32, ptr %267, align 8, !tbaa !61
  call fastcc void @select_active_side(ptr noundef %264, i32 noundef %181, i32 noundef %266, i32 noundef %268) #10
  br label %269

269:                                              ; preds = %155, %180, %187, %194, %218, %207, %251, %240, %263, %176
  call void @recurs_sel_seq(ptr noundef nonnull %21) #8
  %270 = icmp eq i32 %23, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %269
  %272 = load ptr, ptr %8, align 8, !tbaa !26
  call fastcc void @select_linked_time(ptr noundef %272, ptr noundef nonnull %21) #10
  br label %273

273:                                              ; preds = %110, %81, %73, %76, %269, %271, %122
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %7) #8
  br label %274

274:                                              ; preds = %3, %273
  %275 = phi i32 [ 12, %273 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %275
}

; Function Attrs: optsize
declare i32 @ED_operator_sequencer_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_more_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #10, !range !73
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_less_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #10, !range !73
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @sequencer_select_linked_pick_invoke, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = call ptr @find_nearest_seq(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = and i32 %9, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @ED_sequencer_deselect_all(ptr noundef %5) #8
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !15
  call void @recurs_sel_seq(ptr noundef nonnull %11) #8
  br label %21

21:                                               ; preds = %17, %21
  %22 = call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #10, !range !73
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %21, !llvm.loop !74

24:                                               ; preds = %21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %5) #8
  br label %25

25:                                               ; preds = %3, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SEQUENCER_OT_select_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_linked_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  br label %4

4:                                                ; preds = %2, %4
  %5 = tail call fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1) #10, !range !73
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %4, !llvm.loop !75

7:                                                ; preds = %4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_handles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_handles_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_handles_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.48) #8
  %8 = load ptr, ptr %4, align 8, !tbaa !26
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2, %28
  %12 = phi ptr [ %29, %28 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !15
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
  store i32 %27, ptr %13, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %26, %11, %17
  %29 = load ptr, ptr %12, align 8, !tbaa !29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !76

31:                                               ; preds = %28, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_active_side(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_active_side_exec, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef nonnull @prop_side_types, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_active_side_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #8
  %5 = tail call ptr @BKE_sequencer_active_get(ptr noundef %3) #8
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !15
  %13 = load ptr, ptr %4, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.48) #8
  %17 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.Sequence, ptr %5, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !61
  tail call fastcc void @select_active_side(ptr noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %20) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %3) #8
  br label %21

21:                                               ; preds = %2, %9
  %22 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_borderselect_exec, ptr %5, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_sequencer_active, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !23
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_borderselect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %5, i8 noundef zeroext 0) #8
  %7 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.65) #8
  %11 = icmp eq i32 %10, 3
  %12 = load ptr, ptr %8, align 8, !tbaa !24
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.21) #8
  %14 = icmp eq ptr %6, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %2
  call void @WM_operator_properties_border_to_rctf(ptr noundef nonnull %1, ptr noundef nonnull %3) #8
  call void @UI_view2d_region_to_view_rctf(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %3) #8
  %16 = load ptr, ptr %6, align 8, !tbaa !26
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = and i32 %13, 255
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %38
  %23 = phi ptr [ %17, %19 ], [ %39, %38 ]
  call void @seq_rectf(ptr noundef nonnull %23, ptr noundef nonnull %4) #8
  %24 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = and i32 %28, -8
  %30 = or i32 %28, 1
  %31 = select i1 %11, i32 %30, i32 %29
  store i32 %31, ptr %27, align 8, !tbaa !15
  br label %37

32:                                               ; preds = %22
  br i1 %21, label %33, label %38

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !15
  %36 = and i32 %35, -8
  store i32 %36, ptr %34, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %33, %26
  call void @recurs_sel_seq(ptr noundef nonnull %23) #8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr %23, align 8, !tbaa !29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %22, !llvm.loop !79

41:                                               ; preds = %38, %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %5) #8
  br label %42

42:                                               ; preds = %2, %41
  %43 = phi i32 [ 4, %41 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %43
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SEQUENCER_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @sequencer_select_grouped_exec, ptr %5, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @sequencer_edit_poll, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.60) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !35
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.61, ptr noundef nonnull @sequencer_prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #8
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %4, i8 noundef zeroext 0) #8
  %6 = tail call ptr @BKE_sequencer_active_get(ptr noundef %4) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.61) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !24
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.21) #8
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.66) #8
  br label %61

16:                                               ; preds = %2
  %17 = and i32 %11, 255
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %5, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %20 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %25
  %26 = load ptr, ptr %24, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = and i32 %28, -2
  store i32 %29, ptr %27, align 8, !tbaa !15
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %30 = load i32, ptr %20, align 8, !tbaa !57
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %25, !llvm.loop !82

32:                                               ; preds = %25, %19
  %33 = phi i8 [ 0, %19 ], [ 1, %25 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i8 [ %33, %32 ], [ 0, %16 ]
  switch i32 %9, label %57 [
    i32 1, label %36
    i32 2, label %39
    i32 3, label %42
    i32 4, label %45
    i32 5, label %48
    i32 6, label %51
    i32 7, label %54
  ]

36:                                               ; preds = %34
  %37 = call fastcc zeroext i8 @select_grouped_type(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %38 = or i8 %37, %35
  br label %57

39:                                               ; preds = %34
  %40 = call fastcc zeroext i8 @select_grouped_type_basic(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %41 = or i8 %40, %35
  br label %57

42:                                               ; preds = %34
  %43 = call fastcc zeroext i8 @select_grouped_type_effect(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %44 = or i8 %43, %35
  br label %57

45:                                               ; preds = %34
  %46 = call fastcc zeroext i8 @select_grouped_data(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %47 = or i8 %46, %35
  br label %57

48:                                               ; preds = %34
  %49 = call fastcc zeroext i8 @select_grouped_effect(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %50 = or i8 %49, %35
  br label %57

51:                                               ; preds = %34
  %52 = call fastcc zeroext i8 @select_grouped_effect_link(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %53 = or i8 %52, %35
  br label %57

54:                                               ; preds = %34
  %55 = call fastcc zeroext i8 @select_grouped_time_overlap(ptr noundef %5, ptr noundef nonnull %6) #10, !range !73
  %56 = or i8 %55, %35
  br label %57

57:                                               ; preds = %34, %39, %45, %51, %54, %48, %42, %36
  %58 = phi i8 [ %38, %36 ], [ %41, %39 ], [ %44, %42 ], [ %47, %45 ], [ %50, %48 ], [ %53, %51 ], [ %56, %54 ], [ %35, %34 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %4) #8
  br label %61

61:                                               ; preds = %57, %60, %13
  %62 = phi i32 [ 2, %13 ], [ 4, %60 ], [ 2, %57 ]
  ret i32 %62
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_nearest_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_surrounding_handles(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef -1) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !15
  tail call void @recurs_sel_seq(ptr noundef nonnull %3) #8
  %9 = load i32, ptr %6, align 8, !tbaa !15
  %10 = or i32 %9, 4
  store i32 %10, ptr %6, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %5, %2
  %12 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef -1) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !15
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !15
  tail call void @recurs_sel_seq(ptr noundef nonnull %12) #8
  %18 = load i32, ptr %15, align 8, !tbaa !15
  %19 = or i32 %18, 2
  store i32 %19, ptr %15, align 8, !tbaa !15
  br label %20

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !15
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare ptr @find_neighboring_sequence(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_active_side(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4, %35
  %8 = phi ptr [ %36, %35 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !72
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  switch i32 %1, label %35 [
    i32 1, label %13
    i32 2, label %22
    i32 3, label %31
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = icmp slt i32 %15, %3
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = and i32 %19, -8
  %21 = or disjoint i32 %20, 1
  store i32 %21, ptr %18, align 8, !tbaa !15
  br label %35

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = icmp sgt i32 %24, %3
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = and i32 %28, -8
  %30 = or disjoint i32 %29, 1
  store i32 %30, ptr %27, align 8, !tbaa !15
  br label %35

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !15
  %34 = and i32 %33, -7
  store i32 %34, ptr %32, align 8, !tbaa !15
  br label %35

35:                                               ; preds = %7, %22, %26, %13, %17, %12, %31
  %36 = load ptr, ptr %8, align 8, !tbaa !29
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %7, !llvm.loop !83

38:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_linked_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %8 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  br label %10

10:                                               ; preds = %5, %58
  %11 = phi ptr [ %3, %5 ], [ %59, %58 ]
  %12 = load i32, ptr %6, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %58, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = load i32, ptr %7, align 8, !tbaa !61
  %20 = icmp eq i32 %18, %19
  %21 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = load i32, ptr %8, align 4, !tbaa !60
  %24 = icmp eq i32 %22, %23
  %25 = select i1 %20, i1 %24, i1 false
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = and i32 %28, -8
  store i32 %29, ptr %27, align 8, !tbaa !15
  %30 = load i32, ptr %9, align 8, !tbaa !15
  %31 = and i32 %30, 7
  %32 = or disjoint i32 %31, %29
  store i32 %32, ptr %27, align 8, !tbaa !15
  br label %57

33:                                               ; preds = %16
  %34 = load i32, ptr %9, align 8, !tbaa !15
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %20, i1 true, i1 %24
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Sequence, ptr %11, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !15
  %42 = and i32 %41, -7
  store i32 %42, ptr %40, align 8, !tbaa !15
  br i1 %20, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, ptr %9, align 8, !tbaa !15
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = or i32 %42, 3
  store i32 %48, ptr %40, align 8, !tbaa !15
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = phi i32 [ %48, %47 ], [ %42, %43 ], [ %42, %39 ]
  br i1 %24, label %51, label %57

51:                                               ; preds = %49
  %52 = load i32, ptr %9, align 8, !tbaa !15
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = or i32 %50, 5
  store i32 %56, ptr %40, align 8, !tbaa !15
  br label %57

57:                                               ; preds = %49, %51, %55, %26
  tail call void @recurs_sel_seq(ptr noundef nonnull %11) #8
  br label %58

58:                                               ; preds = %57, %33, %10
  %59 = load ptr, ptr %11, align 8, !tbaa !29
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %10, !llvm.loop !84

61:                                               ; preds = %58, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_more_less_seq__internal(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %3
  %7 = icmp ne i8 %1, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = icmp eq i8 %2, 0
  %11 = load ptr, ptr %4, align 8, !tbaa !26
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  br i1 %10, label %13, label %22

13:                                               ; preds = %6
  %14 = icmp eq ptr %12, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %18, %15 ], [ %12, %13 ]
  %17 = getelementptr inbounds %struct.Sequence, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !85
  %18 = load ptr, ptr %16, align 8, !tbaa !29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !86

20:                                               ; preds = %15
  %21 = load ptr, ptr %11, align 8, !tbaa !29
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi ptr [ %21, %20 ], [ %12, %6 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %69, label %25

25:                                               ; preds = %22, %65
  %26 = phi ptr [ %67, %65 ], [ %23, %22 ]
  %27 = phi i8 [ %66, %65 ], [ 0, %22 ]
  %28 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !15
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = xor i1 %7, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %25
  br i1 %10, label %34, label %38

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33, %34
  %39 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 1, i32 noundef %9) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Sequence, ptr %39, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !15
  br i1 %7, label %44, label %46

44:                                               ; preds = %41
  %45 = or i32 %43, 1
  store i32 %45, ptr %42, align 8, !tbaa !15
  tail call void @recurs_sel_seq(ptr noundef nonnull %39) #8
  br label %48

46:                                               ; preds = %41
  %47 = and i32 %43, -2
  store i32 %47, ptr %42, align 8, !tbaa !15
  br label %48

48:                                               ; preds = %46, %44
  br i1 %10, label %49, label %51

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.Sequence, ptr %39, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %50, align 8, !tbaa !85
  br label %51

51:                                               ; preds = %48, %49, %38
  %52 = phi i8 [ %27, %38 ], [ 1, %49 ], [ 1, %48 ]
  %53 = tail call ptr @find_neighboring_sequence(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 2, i32 noundef %9) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !15
  br i1 %7, label %58, label %60

58:                                               ; preds = %55
  %59 = or i32 %57, 1
  store i32 %59, ptr %56, align 8, !tbaa !15
  tail call void @recurs_sel_seq(ptr noundef nonnull %53) #8
  br label %62

60:                                               ; preds = %55
  %61 = and i32 %57, -2
  store i32 %61, ptr %56, align 8, !tbaa !15
  br label %62

62:                                               ; preds = %60, %58
  br i1 %10, label %63, label %65

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.Sequence, ptr %53, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %64, align 8, !tbaa !85
  br label %65

65:                                               ; preds = %62, %63, %25, %51, %34
  %66 = phi i8 [ %52, %51 ], [ %27, %34 ], [ %27, %25 ], [ 1, %63 ], [ 1, %62 ]
  %67 = load ptr, ptr %26, align 8, !tbaa !29
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %25, !llvm.loop !87

69:                                               ; preds = %65, %13, %22, %3
  %70 = phi i8 [ 0, %3 ], [ 0, %22 ], [ 0, %13 ], [ %66, %65 ]
  ret i8 %70
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @seq_rectf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %4 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %7, %21
  %11 = phi i8 [ 0, %7 ], [ %22, %21 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = load i32, ptr %9, align 4, !tbaa !5
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %10, %17
  %22 = phi i8 [ 1, %17 ], [ %11, %10 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %23 = load i32, ptr %4, align 8, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !88

25:                                               ; preds = %21, %2
  %26 = phi i8 [ 0, %2 ], [ %22, %21 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_type_basic(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %26
  %14 = phi i8 [ 0, %11 ], [ %27, %26 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 4
  br i1 %7, label %20, label %21

20:                                               ; preds = %13
  br i1 %19, label %22, label %26

21:                                               ; preds = %13
  br i1 %19, label %26, label %22

22:                                               ; preds = %20, %21
  %23 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %21, %20, %22
  %27 = phi i8 [ 1, %22 ], [ %14, %20 ], [ %14, %21 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %28 = load i32, ptr %8, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %13, !llvm.loop !89

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_type_effect(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %6 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %11 = and i32 %5, 8
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %9, %26
  %14 = phi i8 [ 0, %9 ], [ %27, %26 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %12, label %21, label %20

20:                                               ; preds = %13
  br i1 %19, label %26, label %22

21:                                               ; preds = %13
  br i1 %19, label %22, label %26

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.Sequence, ptr %15, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %20, %21, %22
  %27 = phi i8 [ 1, %22 ], [ %14, %20 ], [ %14, %21 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %28 = load i32, ptr %6, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %13, !llvm.loop !90

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_data(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = alloca %struct.SeqIterator, align 8
  %7 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp ne ptr %8, null
  %10 = getelementptr inbounds %struct.Strip, ptr %8, i64 0, i32 7
  %11 = select i1 %9, ptr %10, ptr null
  %12 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !5
  switch i32 %13, label %132 [
    i32 3, label %17
    i32 0, label %17
    i32 4, label %17
    i32 2, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = icmp eq i32 %13, 5
  %16 = select i1 %15, i1 %9, i1 false
  br i1 %16, label %18, label %47

17:                                               ; preds = %2, %2, %2
  br i1 %9, label %18, label %47

18:                                               ; preds = %14, %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %19 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !57
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %41
  %25 = phi i8 [ 0, %22 ], [ %42, %41 ]
  %26 = load ptr, ptr %23, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !5
  switch i32 %28, label %41 [
    i32 3, label %29
    i32 0, label %29
    i32 4, label %29
    i32 5, label %29
  ]

29:                                               ; preds = %24, %24, %24, %24
  %30 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 24
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Strip, ptr %31, i64 0, i32 7
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %11) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Sequence, ptr %26, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !15
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !15
  br label %41

41:                                               ; preds = %24, %29, %33, %37
  %42 = phi i8 [ 1, %37 ], [ %25, %33 ], [ %25, %29 ], [ %25, %24 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %43 = load i32, ptr %19, align 8, !tbaa !57
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %24, !llvm.loop !91

45:                                               ; preds = %41, %18
  %46 = phi i8 [ 0, %18 ], [ %42, %41 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %132

47:                                               ; preds = %17, %14
  switch i32 %13, label %132 [
    i32 2, label %48
    i32 6, label %76
    i32 7, label %104
  ]

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 26
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  %51 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !57
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %56

56:                                               ; preds = %54, %70
  %57 = phi i8 [ 0, %54 ], [ %71, %70 ]
  %58 = load ptr, ptr %55, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.Sequence, ptr %58, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.Sequence, ptr %58, i64 0, i32 26
  %64 = load ptr, ptr %63, align 8, !tbaa !92
  %65 = icmp eq ptr %64, %50
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Sequence, ptr %58, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !15
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !15
  br label %70

70:                                               ; preds = %56, %62, %66
  %71 = phi i8 [ 1, %66 ], [ %57, %62 ], [ %57, %56 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #8
  %72 = load i32, ptr %51, align 8, !tbaa !57
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %56, !llvm.loop !93

74:                                               ; preds = %70, %48
  %75 = phi i8 [ 0, %48 ], [ %71, %70 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  br label %132

76:                                               ; preds = %47
  %77 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 28
  %78 = load ptr, ptr %77, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1) #8
  %79 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !57
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %84

84:                                               ; preds = %82, %98
  %85 = phi i8 [ 0, %82 ], [ %99, %98 ]
  %86 = load ptr, ptr %83, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 28
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = icmp eq ptr %92, %78
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Sequence, ptr %86, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !15
  %97 = or i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !15
  br label %98

98:                                               ; preds = %84, %90, %94
  %99 = phi i8 [ 1, %94 ], [ %85, %90 ], [ %85, %84 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #8
  %100 = load i32, ptr %79, align 8, !tbaa !57
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %84, !llvm.loop !95

102:                                              ; preds = %98, %76
  %103 = phi i8 [ 0, %76 ], [ %99, %98 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %132

104:                                              ; preds = %47
  %105 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 29
  %106 = load ptr, ptr %105, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 1) #8
  %107 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !57
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %112

112:                                              ; preds = %110, %126
  %113 = phi i8 [ 0, %110 ], [ %127, %126 ]
  %114 = load ptr, ptr %111, align 8, !tbaa !59
  %115 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 6
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = icmp eq i32 %116, 7
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 29
  %120 = load ptr, ptr %119, align 8, !tbaa !96
  %121 = icmp eq ptr %120, %106
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !15
  %125 = or i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !15
  br label %126

126:                                              ; preds = %112, %118, %122
  %127 = phi i8 [ 1, %122 ], [ %113, %118 ], [ %113, %112 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #8
  %128 = load i32, ptr %107, align 8, !tbaa !57
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %112, !llvm.loop !97

130:                                              ; preds = %126, %104
  %131 = phi i8 [ 0, %104 ], [ %127, %126 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br label %132

132:                                              ; preds = %2, %45, %102, %130, %74, %47
  %133 = phi i8 [ 0, %2 ], [ %46, %45 ], [ %75, %74 ], [ %103, %102 ], [ %131, %130 ], [ 0, %47 ]
  ret i8 %133
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_effect(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca [41 x i8], align 16
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %3, i8 0, i64 41, i1 false), !tbaa !98
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  %6 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !57
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %29
  %12 = load ptr, ptr %10, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 33
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 34
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16, %11
  %25 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [41 x i8], ptr %3, i64 0, i64 %27
  store i8 1, ptr %28, align 1, !tbaa !98
  br label %29

29:                                               ; preds = %20, %24
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #8
  %30 = load i32, ptr %6, align 8, !tbaa !57
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %11, !llvm.loop !102

32:                                               ; preds = %29, %2
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1) #8
  %33 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %38

38:                                               ; preds = %36, %71
  %39 = phi i8 [ 0, %36 ], [ %72, %71 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [41 x i8], ptr %3, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !98
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 33
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Sequence, ptr %49, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !15
  %54 = or i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !15
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 34
  %57 = load ptr, ptr %56, align 8, !tbaa !100
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Sequence, ptr %57, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !15
  %62 = or i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !15
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.Sequence, ptr %40, i64 0, i32 35
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Sequence, ptr %65, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !15
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !15
  br label %71

71:                                               ; preds = %63, %67, %38
  %72 = phi i8 [ %39, %38 ], [ 1, %67 ], [ 1, %63 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #8
  %73 = load i32, ptr %33, align 8, !tbaa !57
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %38, !llvm.loop !103

75:                                               ; preds = %71, %32
  %76 = phi i8 [ 0, %32 ], [ %72, %71 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #9
  ret i8 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_effect_link(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = and i32 %6, 8
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %8, %11, %2
  %15 = phi i1 [ true, %2 ], [ false, %8 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #8
  %22 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %27
  %28 = load ptr, ptr %26, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.Sequence, ptr %28, i64 0, i32 2
  store ptr null, ptr %29, align 8, !tbaa !85
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #8
  %30 = load i32, ptr %22, align 8, !tbaa !57
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !104

32:                                               ; preds = %27, %14
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  %33 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %33, align 8, !tbaa !85
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %34 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %117, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %110
  %40 = phi i32 [ %21, %37 ], [ %114, %110 ]
  %41 = phi i32 [ %19, %37 ], [ %113, %110 ]
  %42 = phi i32 [ %17, %37 ], [ %112, %110 ]
  %43 = phi i8 [ 0, %37 ], [ %111, %110 ]
  %44 = load ptr, ptr %38, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !15
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 15
  %51 = load i32, ptr %50, align 8, !tbaa !61
  %52 = icmp slt i32 %51, %41
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !60
  %56 = icmp slt i32 %55, %42
  br i1 %56, label %110, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !5
  br i1 %15, label %63, label %60

60:                                               ; preds = %57
  %61 = and i32 %59, 12
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %110, label %68

63:                                               ; preds = %57
  %64 = icmp eq i32 %59, 1
  %65 = and i32 %59, 12
  %66 = icmp eq i32 %65, 4
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %60, %63
  %69 = and i32 %59, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 33
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Sequence, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !85
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %75, %71
  %80 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 34
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.Sequence, ptr %81, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !85
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 35
  %89 = load ptr, ptr %88, align 8, !tbaa !101
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.Sequence, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !85
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %83, %75
  %96 = call i32 @llvm.smin.i32(i32 %42, i32 %51)
  %97 = call i32 @llvm.smax.i32(i32 %41, i32 %55)
  %98 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 13
  %99 = load i32, ptr %98, align 8, !tbaa !72
  %100 = call i32 @llvm.smax.i32(i32 %40, i32 %99)
  %101 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %101, align 8, !tbaa !85
  %102 = or disjoint i32 %46, 1
  store i32 %102, ptr %45, align 8, !tbaa !15
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  br label %110

103:                                              ; preds = %91, %87, %68
  %104 = getelementptr inbounds %struct.Sequence, ptr %44, i64 0, i32 13
  %105 = load i32, ptr %104, align 8, !tbaa !72
  %106 = icmp slt i32 %105, %40
  %107 = or i1 %15, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = or disjoint i32 %46, 1
  store i32 %109, ptr %45, align 8, !tbaa !15
  br label %110

110:                                              ; preds = %63, %60, %95, %103, %108, %39, %49, %53
  %111 = phi i8 [ %43, %39 ], [ %43, %49 ], [ %43, %53 ], [ 1, %95 ], [ 1, %108 ], [ %43, %103 ], [ %43, %60 ], [ %43, %63 ]
  %112 = phi i32 [ %42, %39 ], [ %42, %49 ], [ %42, %53 ], [ %96, %95 ], [ %42, %108 ], [ %42, %103 ], [ %42, %60 ], [ %42, %63 ]
  %113 = phi i32 [ %41, %39 ], [ %41, %49 ], [ %41, %53 ], [ %97, %95 ], [ %41, %108 ], [ %41, %103 ], [ %41, %60 ], [ %41, %63 ]
  %114 = phi i32 [ %40, %39 ], [ %40, %49 ], [ %40, %53 ], [ %100, %95 ], [ %40, %108 ], [ %40, %103 ], [ %40, %60 ], [ %40, %63 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %115 = load i32, ptr %34, align 8, !tbaa !57
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %39, !llvm.loop !105

117:                                              ; preds = %110, %32
  %118 = phi i8 [ 0, %32 ], [ %111, %110 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i8 %118
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_time_overlap(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #8
  %4 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 16
  %10 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 15
  br label %11

11:                                               ; preds = %7, %27
  %12 = phi i8 [ 0, %7 ], [ %28, %27 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = load i32, ptr %9, align 4, !tbaa !60
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 16
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = load i32, ptr %10, align 8, !tbaa !61
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %11, %18, %23
  %28 = phi i8 [ %12, %11 ], [ %12, %18 ], [ 1, %23 ]
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #8
  %29 = load i32, ptr %4, align 8, !tbaa !57
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %11, !llvm.loop !106

31:                                               ; preds = %27, %2
  %32 = phi i8 [ 0, %2 ], [ %28, %27 ]
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i8 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 100}
!6 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !12, i64 156, !12, i64 158, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !11, i64 224, !11, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !13, i64 256, !7, i64 272, !7, i64 280, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !7, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !11, i64 324, !10, i64 328, !8, i64 332, !8, i64 333, !13, i64 336}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"float", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"ListBase", !7, i64 0, !7, i64 8}
!14 = !{!6, !7, i64 168}
!15 = !{!6, !10, i64 96}
!16 = !{!17, !7, i64 0}
!17 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !13, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !18, i64 152, !12, i64 184}
!18 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!19 = !{!17, !7, i64 8}
!20 = !{!17, !7, i64 24}
!21 = !{!17, !7, i64 32}
!22 = !{!17, !7, i64 72}
!23 = !{!17, !12, i64 184}
!24 = !{!25, !7, i64 112}
!25 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !13, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!26 = !{!27, !7, i64 0}
!27 = !{!"Editing", !7, i64 0, !13, i64 8, !13, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !10, i64 2096, !10, i64 2100, !10, i64 2104, !10, i64 2108, !28, i64 2112}
!28 = !{!"rctf", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!29 = !{!7, !7, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = !{!17, !7, i64 48}
!35 = !{!17, !7, i64 88}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !10, i64 680}
!38 = !{!"Scene", !39, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !13, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !40, i64 280, !48, i64 4264, !13, i64 4296, !13, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !10, i64 4380, !13, i64 4384, !49, i64 4400, !50, i64 4416, !53, i64 4600, !7, i64 4608, !54, i64 4616, !7, i64 4640, !55, i64 4648, !55, i64 4656, !42, i64 4664, !43, i64 4824, !56, i64 4888, !7, i64 4952}
!39 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!40 = !{!"RenderData", !41, i64 0, !7, i64 248, !7, i64 256, !44, i64 264, !45, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !11, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !12, i64 432, !12, i64 434, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !10, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !10, i64 484, !10, i64 488, !12, i64 492, !12, i64 494, !10, i64 496, !10, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !28, i64 544, !28, i64 560, !46, i64 576, !13, i64 592, !12, i64 608, !12, i64 610, !11, i64 612, !11, i64 616, !11, i64 620, !11, i64 624, !10, i64 628, !11, i64 632, !11, i64 636, !11, i64 640, !11, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !11, i64 660, !11, i64 664, !12, i64 668, !12, i64 670, !11, i64 672, !11, i64 676, !8, i64 680, !10, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !10, i64 2520, !12, i64 2524, !12, i64 2526, !11, i64 2528, !11, i64 2532, !12, i64 2536, !12, i64 2538, !11, i64 2540, !12, i64 2544, !12, i64 2546, !10, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !11, i64 2560, !11, i64 2564, !7, i64 2568, !10, i64 2576, !11, i64 2580, !8, i64 2584, !47, i64 2616, !10, i64 3976, !10, i64 3980}
!41 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !11, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !42, i64 24, !43, i64 184}
!42 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 72, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!43 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!44 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !12, i64 48, !12, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!45 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!46 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!47 = !{!"BakeData", !41, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !11, i64 1280, !11, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!48 = !{!"AudioData", !10, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16, !12, i64 20, !12, i64 22, !11, i64 24, !11, i64 28}
!49 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!50 = !{!"GameData", !49, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !51, i64 40, !12, i64 64, !12, i64 66, !11, i64 68, !52, i64 72, !11, i64 128, !11, i64 132, !10, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180}
!51 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !11, i64 8, !11, i64 12, !7, i64 16}
!52 = !{!"RecastData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !10, i64 40, !11, i64 44, !11, i64 48, !12, i64 52, !12, i64 54}
!53 = !{!"UnitSettings", !11, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!54 = !{!"PhysicsSettings", !8, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!55 = !{!"long", !8, i64 0}
!56 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!57 = !{!58, !10, i64 24}
!58 = !{!"SeqIterator", !7, i64 0, !10, i64 8, !10, i64 12, !7, i64 16, !10, i64 24}
!59 = !{!58, !7, i64 16}
!60 = !{!6, !10, i64 140}
!61 = !{!6, !10, i64 136}
!62 = distinct !{!62, !31}
!63 = !{!64, !10, i64 232}
!64 = !{!"SpaceSeq", !7, i64 0, !7, i64 8, !13, i64 16, !10, i64 32, !11, i64 36, !8, i64 40, !65, i64 56, !11, i64 216, !11, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !10, i64 232, !11, i64 236, !10, i64 240, !10, i64 244, !7, i64 248, !66, i64 256}
!65 = !{!"View2D", !28, i64 0, !28, i64 16, !46, i64 32, !46, i64 48, !46, i64 64, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!66 = !{!"SequencerScopes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!67 = !{!68, !10, i64 16}
!68 = !{!"TimeMarker", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 20, !10, i64 84, !7, i64 88}
!69 = !{!68, !10, i64 84}
!70 = distinct !{!70, !31}
!71 = !{!27, !7, i64 40}
!72 = !{!6, !10, i64 128}
!73 = !{i8 0, i8 2}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = !{!17, !7, i64 64}
!78 = !{!17, !7, i64 56}
!79 = distinct !{!79, !31}
!80 = !{!17, !7, i64 104}
!81 = !{!25, !7, i64 120}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = !{!6, !7, i64 16}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = !{!6, !7, i64 184}
!93 = distinct !{!93, !31}
!94 = !{!6, !7, i64 200}
!95 = distinct !{!95, !31}
!96 = !{!6, !7, i64 208}
!97 = distinct !{!97, !31}
!98 = !{!8, !8, i64 0}
!99 = !{!6, !7, i64 232}
!100 = !{!6, !7, i64 240}
!101 = !{!6, !7, i64 248}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
