; ModuleID = 'blender/source/blender/editors/animation/anim_markers.c'
source_filename = "blender/source/blender/editors/animation/anim_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.MarkerMove = type { ptr, ptr, i32, ptr, i32, i32, %struct.NumInput }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceTime = type { ptr, ptr, %struct.ListBase, i32, float, %struct.View2D, %struct.ListBase, i32, i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

@.str.2 = private unnamed_addr constant [27 x i8] c"\09'%s' on %d at %p with %u\0A\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Markers\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"MARKER_OT_add\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"MARKER_OT_move\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MARKER_OT_duplicate\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"MARKER_OT_select\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"MARKER_OT_select_border\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"MARKER_OT_select_all\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"MARKER_OT_delete\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"MARKER_OT_rename\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"MARKER_OT_camera_bind\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"add_to_cfra_elem\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Add Time Marker\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Add a new time marker\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"TimeMarker\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"F_%02d\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"Programming error: operator does not actually have code to do anything!\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Move Time Marker\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Move selected time marker(s)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Markermove\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"MarkerMove oldframe\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Marker %.2f offset %s\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Marker %d offset %s\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Marker offset %s\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Duplicate Time Marker\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Duplicate selected time marker(s)\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Select Time Marker\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Select time marker(s)\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Select the camera\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Marker Border Select\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"Select all time markers using border selection\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"(De)select all Markers\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"Change selection of all time markers\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Delete Markers\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Delete selected time marker(s)\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Rename Marker\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Rename first selected time marker\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"RenamedMarker\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"New name for marker\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Make Links to Scene\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"Copy selected markers to another scene\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"MARKER_OT_make_links_scene\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.60 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Scene not found\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Cannot re-link markers into the same scene\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [23 x i8] c"Bind Camera to Markers\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"Bind the active camera to selected markers(s)\00", align 1
@str = private unnamed_addr constant [31 x i8] c"List of markers follows: -----\00", align 1
@str.65 = private unnamed_addr constant [31 x i8] c"End of list ------------------\00", align 1
@str.66 = private unnamed_addr constant [35 x i8] c"No markers list to print debug for\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @ED_context_get_markers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %4 = tail call fastcc ptr @context_get_markers(ptr noundef %2, ptr noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @context_get_markers(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 12
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.SpaceAction, ptr %10, i64 0, i32 9
  %12 = load i8, ptr %11, align 8, !tbaa !15
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.SpaceAction, ptr %10, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.SpaceAction, ptr %10, i64 0, i32 11
  %20 = load i16, ptr %19, align 2, !tbaa !22
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 4
  br i1 %22, label %24, label %26

24:                                               ; preds = %18, %14, %8, %4, %2
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  br label %26

26:                                               ; preds = %18, %24
  %27 = phi ptr [ %25, %24 ], [ %23, %18 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_animcontext_get_markers(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = tail call fastcc ptr @context_get_markers(ptr noundef %5, ptr noundef %7) #17
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi ptr [ %8, %3 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ED_markers_post_apply_transform(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = sitofp i32 %7 to float
  %9 = icmp eq ptr %0, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %10, %52
  %14 = phi ptr [ %54, %52 ], [ %11, %10 ]
  %15 = phi i32 [ %53, %52 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %13
  switch i32 %2, label %52 [
    i32 19, label %21
    i32 22, label %21
    i32 21, label %41
  ]

21:                                               ; preds = %20, %20
  switch i8 %4, label %52 [
    i8 66, label %22
    i8 76, label %25
    i8 82, label %30
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !48
  br label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = sitofp i32 %27 to float
  %29 = fcmp olt float %28, %8
  br i1 %29, label %35, label %52

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = sitofp i32 %32 to float
  %34 = fcmp ult float %33, %8
  br i1 %34, label %52, label %35

35:                                               ; preds = %22, %30, %25
  %36 = phi i32 [ %24, %22 ], [ %32, %30 ], [ %27, %25 ]
  %37 = tail call fastcc i32 @iroundf(float noundef %3) #17
  %38 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %39 = add nsw i32 %36, %37
  store i32 %39, ptr %38, align 8, !tbaa !48
  %40 = add nsw i32 %15, 1
  br label %52

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !48
  %44 = sitofp i32 %43 to float
  %45 = fsub float %44, %8
  %46 = fmul float %45, %3
  %47 = tail call fastcc i32 @iroundf(float noundef %46) #17
  %48 = sitofp i32 %47 to float
  %49 = fadd float %8, %48
  %50 = fptosi float %49 to i32
  store i32 %50, ptr %42, align 8, !tbaa !48
  %51 = add nsw i32 %15, 1
  br label %52

52:                                               ; preds = %25, %21, %13, %30, %35, %20, %41
  %53 = phi i32 [ %15, %20 ], [ %51, %41 ], [ %40, %35 ], [ %15, %30 ], [ %15, %13 ], [ %15, %21 ], [ %15, %25 ]
  %54 = load ptr, ptr %14, align 8, !tbaa !45
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %13, !llvm.loop !49

56:                                               ; preds = %52, %10, %5
  %57 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %53, %52 ]
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #5 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_markers_find_nearest_marker(ptr noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %19, %7 ], [ %5, %4 ]
  %9 = phi float [ %18, %7 ], [ 1.000000e+06, %4 ]
  %10 = phi ptr [ %17, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = sitofp i32 %12 to float
  %14 = fsub float %13, %1
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %9
  %17 = select i1 %16, ptr %8, ptr %10
  %18 = select i1 %16, float %15, float %9
  %19 = load ptr, ptr %8, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !51

21:                                               ; preds = %7, %4, %2
  %22 = phi ptr [ null, %2 ], [ null, %4 ], [ %17, %7 ]
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_markers_find_nearest_marker_time(ptr noundef readonly %0, float noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @ED_markers_find_nearest_marker(ptr noundef %0, float noundef %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TimeMarker, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !48
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @iroundf(float noundef %1) #17
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_markers_get_minmax(ptr noundef readonly %0, i16 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = icmp eq i16 %1, 0
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi float [ 0xC7EFFFFFE0000000, %13 ], [ %34, %32 ]
  %17 = phi float [ 0x47EFFFFFE0000000, %13 ], [ %33, %32 ]
  %18 = phi ptr [ %7, %13 ], [ %35, %32 ]
  br i1 %14, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = sitofp i32 %26 to float
  %28 = fcmp ogt float %17, %27
  %29 = select i1 %28, float %27, float %17
  %30 = fcmp olt float %16, %27
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %19, %31, %24
  %33 = phi float [ %29, %31 ], [ %29, %24 ], [ %17, %19 ]
  %34 = phi float [ %27, %31 ], [ %16, %24 ], [ %16, %19 ]
  %35 = load ptr, ptr %18, align 8, !tbaa !54
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !55

37:                                               ; preds = %32, %4, %6, %9
  %38 = phi float [ 0.000000e+00, %9 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %4 ], [ %33, %32 ]
  %39 = phi float [ 0.000000e+00, %9 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %4 ], [ %34, %32 ]
  store float %38, ptr %2, align 4, !tbaa !56
  store float %39, ptr %3, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_markers_make_cfra_list(ptr noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  tail call fastcc void @add_marker_to_cfra_elem(ptr noundef %1, ptr noundef nonnull %9, i16 noundef signext %2) #17
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !57

12:                                               ; preds = %8, %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_marker_to_cfra_elem(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = icmp eq i16 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %5, %3
  %11 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 2
  br label %12

12:                                               ; preds = %27, %10
  %13 = phi ptr [ %0, %10 ], [ %14, %27 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.CfraElem, ptr %14, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !58
  %19 = load i32, ptr %11, align 8, !tbaa !48
  %20 = sitofp i32 %19 to float
  %21 = fcmp oeq float %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %42

27:                                               ; preds = %16
  %28 = fcmp ogt float %18, %20
  br i1 %28, label %29, label %12, !llvm.loop !60

29:                                               ; preds = %27
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %31 = tail call ptr %30(i64 noundef 24, ptr noundef nonnull @.str.16) #16
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %31) #16
  br label %35

32:                                               ; preds = %12
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %34 = tail call ptr %33(i64 noundef 24, ptr noundef nonnull @.str.16) #16
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %34) #16
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %34, %32 ], [ %31, %29 ]
  %37 = load i32, ptr %11, align 8, !tbaa !48
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.CfraElem, ptr %36, i64 0, i32 2
  store float %38, ptr %39, align 8, !tbaa !58
  %40 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !46
  br label %42

42:                                               ; preds = %22, %35
  %43 = phi ptr [ %36, %35 ], [ %14, %22 ]
  %44 = phi i32 [ %41, %35 ], [ %24, %22 ]
  %45 = getelementptr inbounds %struct.CfraElem, ptr %43, i64 0, i32 3
  store i32 %44, ptr %45, align 4, !tbaa !61
  br label %46

46:                                               ; preds = %42, %22, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_markers_get_first_selected(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %5, %7 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TimeMarker, ptr %5, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !62

12:                                               ; preds = %3, %7, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %5, %7 ]
  ret ptr %13
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_markers_print_list(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = load ptr, ptr %0, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %9, i32 noundef %11, ptr noundef nonnull %8, i32 noundef %13) #17
  %15 = load ptr, ptr %8, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !63

17:                                               ; preds = %7, %3, %1
  %18 = phi ptr [ @str.66, %1 ], [ @str.65, %3 ], [ @str.65, %7 ]
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) %18)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_markers_draw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca [4 x i8], align 4
  %6 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #17, !range !64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %11 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #16
  %12 = and i32 %1, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 268435456, ptr %5, align 4
  call void @glColor4ubv(ptr noundef nonnull %5) #16
  call void @glEnable(i32 noundef 3042) #16
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  %15 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 1
  %16 = load float, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 1, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !66
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %21 = sitofp i32 %20 to float
  %22 = fmul float %19, %21
  %23 = fdiv float %22, 7.200000e+01
  %24 = fmul float %23, 4.200000e+01
  call void @glRectf(float noundef %16, float noundef 0.000000e+00, float noundef %18, float noundef %24) #16
  call void @glDisable(i32 noundef 3042) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %25

25:                                               ; preds = %14, %9
  %26 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 4
  %27 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %26) #17
  %28 = sitofp i32 %27 to float
  call void @UI_view2d_scale_get(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %29 = load float, ptr %3, align 4, !tbaa !56
  %30 = fdiv float 1.000000e+00, %29
  call void @glScalef(float noundef %30, float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  %31 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %33 = sitofp i32 %32 to float
  %34 = fmul float %31, %33
  %35 = fdiv float %34, 7.200000e+01
  %36 = fmul float %35, 1.000000e+01
  %37 = load float, ptr %3, align 4, !tbaa !56
  %38 = fdiv float %36, %37
  %39 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 1
  %40 = load float, ptr %39, align 8, !tbaa !65
  %41 = call float @llvm.fmuladd.f32(float %38, float -6.400000e+01, float %40)
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.View2D, ptr %11, i64 0, i32 1, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !66
  %45 = fadd float %44, %38
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  br label %48

48:                                               ; preds = %25, %72
  %49 = phi i1 [ true, %25 ], [ false, %72 ]
  %50 = phi i32 [ 0, %25 ], [ 1, %72 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %48, %69
  %54 = phi ptr [ %70, %69 ], [ %51, %48 ]
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, %50
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !48
  %62 = icmp slt i32 %61, %42
  %63 = icmp sgt i32 %61, %46
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %47, align 8, !tbaa !26
  %67 = load float, ptr %3, align 4, !tbaa !56
  %68 = load float, ptr %4, align 4, !tbaa !56
  call fastcc void @draw_marker(ptr noundef %11, ptr noundef nonnull %54, i32 noundef %66, i32 noundef %1, float noundef %28, float noundef %67, float noundef %68) #17
  br label %69

69:                                               ; preds = %53, %65, %59
  %70 = load ptr, ptr %54, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %53, !llvm.loop !72

72:                                               ; preds = %69, %48
  br i1 %49, label %48, label %73, !llvm.loop !73

73:                                               ; preds = %72
  %74 = load float, ptr %3, align 4, !tbaa !56
  call void @glScalef(float noundef %74, float noundef 1.000000e+00, float noundef 1.000000e+00) #16
  br label %75

75:                                               ; preds = %2, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_marker(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, %5
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  %13 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %32, label %19

19:                                               ; preds = %7
  tail call void @setlinestyle(i32 noundef 3) #16
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 96) #16
  br label %26

25:                                               ; preds = %19
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 96) #16
  br label %26

26:                                               ; preds = %25, %24
  tail call void @glBegin(i32 noundef 1) #16
  %27 = fadd float %12, 5.000000e-01
  tail call void @glVertex2f(float noundef %27, float noundef 1.200000e+01) #16
  %28 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !77
  %30 = fadd float %29, 1.200000e+01
  %31 = fmul float %30, %6
  tail call void @glVertex2f(float noundef %27, float noundef %31) #16
  tail call void @glEnd() #16
  tail call void @setlinestyle(i32 noundef 0) #16
  br label %32

32:                                               ; preds = %7, %26
  %33 = and i32 %3, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !46
  br i1 %34, label %43, label %37

37:                                               ; preds = %32
  %38 = and i32 %36, 2
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %36, 1
  %41 = xor i32 %40, 507
  %42 = select i1 %39, i32 %41, i32 505
  br label %46

43:                                               ; preds = %32
  %44 = and i32 %36, 1
  %45 = xor i32 %44, 509
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %42, %37 ], [ %45, %43 ]
  %48 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %49 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %50 = sitofp i32 %49 to float
  %51 = fmul float %48, %50
  %52 = fdiv float %51, 7.200000e+01
  %53 = fmul float %52, 1.600000e+01
  %54 = tail call float @llvm.fmuladd.f32(float %53, float 0xBFDCCCCCC0000000, float %12)
  tail call void @UI_icon_draw(float noundef %54, float noundef %53, i32 noundef %47) #16
  tail call void @glDisable(i32 noundef 3042) #16
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 3
  %56 = load i8, ptr %55, align 4, !tbaa !78
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %121, label %58

58:                                               ; preds = %46
  %59 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %60 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %61 = sitofp i32 %60 to float
  %62 = fmul float %59, %61
  %63 = fdiv float %62, 7.200000e+01
  %64 = fmul float %63, 1.700000e+01
  %65 = fptosi float %64 to i32
  %66 = getelementptr inbounds %struct.TimeMarker, ptr %1, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !46
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %58
  tail call void @UI_ThemeColor(i32 noundef 4) #16
  %71 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %72 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %73 = sitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = fdiv float %74, 7.200000e+01
  %76 = tail call float @llvm.fmuladd.f32(float %75, float 4.000000e+00, float %12)
  %77 = fmul float %75, 3.900000e+01
  %78 = fcmp ult float %77, %4
  %79 = tail call float @llvm.fmuladd.f32(float %75, float -1.000000e+01, float %4)
  %80 = fmul float %75, 2.900000e+01
  %81 = select i1 %78, float %80, float %79
  %82 = fptosi float %81 to i32
  %83 = tail call fastcc i32 @max_ii(i32 noundef %82, i32 noundef %65) #17
  %84 = sitofp i32 %83 to float
  br label %108

85:                                               ; preds = %58
  tail call void @UI_ThemeColor(i32 noundef 3) #16
  %86 = load i32, ptr %9, align 8, !tbaa !48
  %87 = icmp sle i32 %86, %2
  %88 = add nsw i32 %86, 5
  %89 = icmp sgt i32 %88, %2
  %90 = select i1 %87, i1 %89, i1 false
  %91 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !67
  %92 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !71
  %93 = sitofp i32 %92 to float
  %94 = fmul float %91, %93
  %95 = fdiv float %94, 7.200000e+01
  %96 = tail call float @llvm.fmuladd.f32(float %95, float 8.000000e+00, float %12)
  br i1 %90, label %97, label %106

97:                                               ; preds = %85
  %98 = fmul float %95, 3.900000e+01
  %99 = fcmp ult float %98, %4
  %100 = tail call float @llvm.fmuladd.f32(float %95, float -1.000000e+01, float %4)
  %101 = fmul float %95, 2.900000e+01
  %102 = select i1 %99, float %101, float %100
  %103 = fptosi float %102 to i32
  %104 = tail call fastcc i32 @max_ii(i32 noundef %103, i32 noundef %65) #17
  %105 = sitofp i32 %104 to float
  br label %108

106:                                              ; preds = %85
  %107 = fmul float %95, 1.700000e+01
  br label %108

108:                                              ; preds = %97, %106, %70
  %109 = phi float [ %76, %70 ], [ %96, %97 ], [ %96, %106 ]
  %110 = phi float [ %84, %70 ], [ %105, %97 ], [ %107, %106 ]
  %111 = load ptr, ptr %13, align 8, !tbaa !76
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 102
  %115 = load i8, ptr %114, align 8, !tbaa !79
  %116 = and i8 %115, 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %8) #16
  %119 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 0x3FD99999A0000000, ptr %119, align 4, !tbaa !56
  call void @glColor4fv(ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %120

120:                                              ; preds = %118, %113, %108
  call void @UI_DrawString(float noundef %109, float noundef %110, ptr noundef nonnull %55) #16
  br label %121

121:                                              ; preds = %120, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_marker() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_add) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_move) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_duplicate) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select_border) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select_all) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_delete) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_rename) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_make_links_scene) #16
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_camera_bind) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_add(ptr nocapture noundef writeonly %0) #12 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_add_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_move_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_move_invoke_wrapper, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @ed_marker_move_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ed_marker_move_cancel, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef -2147483648, i32 noundef 2147483647) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_duplicate(ptr nocapture noundef %0) #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_duplicate_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_duplicate_invoke_wrapper, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @ed_marker_move_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ed_marker_move_cancel, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef -2147483648, i32 noundef 2147483647) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_select_invoke_wrapper, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #16
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !93
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #16
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_select_border(ptr noundef %0) #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_border_select_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_select_border_invoke_wrapper, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %8, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !90
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_select_all(ptr noundef %0) #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_select_all_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_delete(ptr nocapture noundef writeonly %0) #12 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_delete_invoke_wrapper, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_delete_exec, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_rename(ptr nocapture noundef %0) #0 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_rename_invoke_wrapper, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_rename_exec, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 64, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #16
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @MARKER_OT_make_links_scene(ptr nocapture noundef %0) #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_make_links_scene_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_make_links_scene_invoke_wrapper, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.59, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.26) #16
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_scene_itemf) #16
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #16
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_camera_bind(ptr nocapture noundef writeonly %0) #12 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_camera_bind_exec, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_marker(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0) #16
  %3 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %4 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #16
  %5 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %6 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #16
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 1) #16
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef 0) #16
  %13 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 1) #16
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #16
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 1) #16
  %17 = load ptr, ptr %15, align 8, !tbaa !95
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef 1) #16
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %19 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %22 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_marker_keymap_animedit_conflictfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #16
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %3, %2 ], [ %9, %14 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.TimeMarker, ptr %9, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %32, label %7, !llvm.loop !97

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %23, %18 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, -2
  store i32 %22, ptr %20, align 4, !tbaa !46
  %23 = load ptr, ptr %19, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !98

25:                                               ; preds = %18, %11
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %27 = tail call ptr %26(i64 noundef 96, ptr noundef nonnull @.str.19) #16
  %28 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 4
  store i32 1, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 2
  store i32 %6, ptr %29, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 3
  %31 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %30, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %6) #16
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %27) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  br label %32

32:                                               ; preds = %14, %25
  %33 = phi i32 [ 4, %25 ], [ 2, %14 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_markers_opwrap_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #17
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @ED_operator_animview_active(ptr noundef) #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %6 = icmp eq ptr %3, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  br label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.21) #16
  br label %20

20:                                               ; preds = %15, %17, %7
  %21 = phi i32 [ %8, %7 ], [ %16, %15 ], [ 8, %17 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %23 = load i8, ptr %22, align 8, !tbaa !5
  %24 = icmp ne i8 %23, 15
  %25 = and i32 %21, 36
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  %28 = or i32 %21, 8
  %29 = select i1 %27, i32 %28, i32 %21
  ret i32 %29
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_move_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1) #17, !range !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @ed_marker_move_exit(ptr noundef %0, ptr noundef %1) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 8, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_move_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ed_marker_move_invoke) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_move_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 6
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #16
  %13 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef %9) #17, !range !64
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !103
  %16 = icmp eq i16 %15, 1
  %17 = icmp ne i8 %12, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = tail call i32 @RNA_int_get(ptr noundef %24, ptr noundef nonnull @.str.24) #16
  %26 = sitofp i32 %25 to float
  store float %26, ptr %4, align 4, !tbaa !56
  %27 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4) #16
  %28 = icmp eq i8 %13, 0
  %29 = load float, ptr %4, align 4, !tbaa !56
  br i1 %28, label %41, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %32 = load i16, ptr %31, align 4, !tbaa !107
  %33 = sitofp i16 %32 to double
  %34 = fpext float %29 to double
  %35 = fmul double %33, %34
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %37 = load float, ptr %36, align 4, !tbaa !108
  %38 = fpext float %37 to double
  %39 = fdiv double %35, %38
  %40 = fptrunc double %39 to float
  store float %40, ptr %4, align 4, !tbaa !56
  br label %41

41:                                               ; preds = %30, %22
  %42 = phi float [ %40, %30 ], [ %29, %22 ]
  %43 = load ptr, ptr %23, align 8, !tbaa !106
  %44 = fptosi float %42 to i32
  call void @RNA_int_set(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %44) #16
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef nonnull %1) #17
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %135

45:                                               ; preds = %19, %3
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %47 = load i16, ptr %46, align 8, !tbaa !109
  switch i16 %47, label %106 [
    i16 218, label %48
    i16 3, label %49
    i16 220, label %53
    i16 163, label %53
    i16 1, label %53
    i16 2, label %53
    i16 4, label %59
  ]

48:                                               ; preds = %45
  tail call void @ed_marker_move_cancel(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %135

49:                                               ; preds = %45
  %50 = load i16, ptr %14, align 2, !tbaa !103
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @ed_marker_move_cancel(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %135

53:                                               ; preds = %49, %45, %45, %45, %45
  %54 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !110
  %56 = tail call zeroext i8 @WM_modal_tweak_exit(ptr noundef nonnull %2, i32 noundef %55) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %106, label %58

58:                                               ; preds = %53
  tail call fastcc void @ed_marker_move_exit(ptr noundef %0, ptr noundef nonnull %1) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  br label %135

59:                                               ; preds = %45
  %60 = icmp eq i8 %12, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !113
  %64 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !114
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %106, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 4
  %69 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %68) #17
  %70 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 1
  %71 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %70) #17
  %72 = sitofp i32 %69 to float
  %73 = fdiv float %71, %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 %63, ptr %64, align 8, !tbaa !114
  %74 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !115
  %76 = sub nsw i32 %63, %75
  %77 = sitofp i32 %76 to float
  %78 = fmul float %73, %77
  store float %78, ptr %5, align 4, !tbaa !56
  %79 = load ptr, ptr %9, align 8, !tbaa !116
  %80 = getelementptr inbounds %struct.SpaceLink, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !117
  %82 = icmp eq i32 %81, 15
  %83 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %84 = load i16, ptr %83, align 8, !tbaa !119
  %85 = sext i16 %84 to i32
  %86 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %87 = load i16, ptr %86, align 2, !tbaa !120
  %88 = sext i16 %87 to i32
  br i1 %82, label %89, label %100

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %91 = load i16, ptr %90, align 4, !tbaa !107
  %92 = sitofp i16 %91 to double
  %93 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %94 = load float, ptr %93, align 4, !tbaa !108
  %95 = fpext float %94 to double
  %96 = fdiv double %92, %95
  %97 = fptrunc double %96 to float
  %98 = fmul double %96, 1.000000e-01
  %99 = fptrunc double %98 to float
  call void @apply_keyb_grid(i32 noundef %85, i32 noundef %88, ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef %97, float noundef %99, i32 noundef 0) #16
  br label %101

100:                                              ; preds = %67
  call void @apply_keyb_grid(i32 noundef %85, i32 noundef %88, ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB99999A0000000, i32 noundef 0) #16
  br label %101

101:                                              ; preds = %100, %89
  %102 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !106
  %104 = load float, ptr %5, align 4, !tbaa !56
  %105 = fptosi float %104 to i32
  call void @RNA_int_set(ptr noundef %103, ptr noundef nonnull @.str.24, i32 noundef %105) #16
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef nonnull %1) #17
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %106

106:                                              ; preds = %45, %53, %59, %101, %61
  %107 = load i16, ptr %14, align 2, !tbaa !103
  %108 = icmp eq i16 %107, 1
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %113 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !106
  %115 = call i32 @RNA_int_get(ptr noundef %114, ptr noundef nonnull @.str.24) #16
  %116 = sitofp i32 %115 to float
  store float %116, ptr %6, align 4, !tbaa !56
  %117 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %6) #16
  %118 = icmp eq i8 %13, 0
  %119 = load float, ptr %6, align 4, !tbaa !56
  br i1 %118, label %131, label %120

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %122 = load i16, ptr %121, align 4, !tbaa !107
  %123 = sitofp i16 %122 to double
  %124 = fpext float %119 to double
  %125 = fmul double %123, %124
  %126 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %127 = load float, ptr %126, align 4, !tbaa !108
  %128 = fpext float %127 to double
  %129 = fdiv double %125, %128
  %130 = fptrunc double %129 to float
  store float %130, ptr %6, align 4, !tbaa !56
  br label %131

131:                                              ; preds = %120, %112
  %132 = phi float [ %130, %120 ], [ %119, %112 ]
  %133 = load ptr, ptr %113, align 8, !tbaa !106
  %134 = fptosi float %132 to i32
  call void @RNA_int_set(ptr noundef %133, ptr noundef nonnull @.str.24, i32 noundef %134) #16
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef nonnull %1) #17
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %135

135:                                              ; preds = %106, %109, %131, %41, %48, %52, %58
  %136 = phi i32 [ 4, %58 ], [ 2, %52 ], [ 2, %48 ], [ 1, %41 ], [ 1, %131 ], [ 1, %109 ], [ 1, %106 ]
  ret i32 %136
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_markers_poll_selected_markers(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %3 = tail call i32 @ED_operator_animview_active(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @ED_markers_get_first_selected(ptr noundef nonnull %2) #17
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ed_marker_move_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  tail call void @RNA_int_set(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef 0) #16
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @ed_marker_move_exit(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %4 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = and i32 %11, 1
  %13 = add i32 %12, %9
  %14 = load ptr, ptr %8, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !121

16:                                               ; preds = %7
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %20 = tail call ptr %19(i64 noundef 184, ptr noundef nonnull @.str.27) #16
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !102
  %22 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #16
  store ptr %22, ptr %20, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 1
  store ptr %4, ptr %23, align 8, !tbaa !122
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %25 = sext i32 %13 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.28) #16
  %28 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 6
  tail call void @initNumInput(ptr noundef nonnull %29) #16
  store i16 0, ptr %29, align 8, !tbaa !124
  %30 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 6, i32 5
  %31 = load i16, ptr %30, align 8, !tbaa !125
  %32 = or i16 %31, 8
  store i16 %32, ptr %30, align 8, !tbaa !125
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38, i32 1
  %34 = load i8, ptr %33, align 4, !tbaa !126
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 6, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !127
  %37 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef nonnull %20) #17, !range !64
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.MarkerMove, ptr %20, i64 0, i32 6, i32 2
  store i32 %39, ptr %40, align 8, !tbaa !128
  %41 = load ptr, ptr %4, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %18, %57
  %44 = phi ptr [ %59, %57 ], [ %41, %18 ]
  %45 = phi i32 [ %58, %57 ], [ 0, %18 ]
  %46 = getelementptr inbounds %struct.TimeMarker, ptr %44, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !46
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %44, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !48
  %53 = load ptr, ptr %28, align 8, !tbaa !123
  %54 = sext i32 %45 to i64
  %55 = getelementptr inbounds i32, ptr %53, i64 %54
  store i32 %52, ptr %55, align 4, !tbaa !128
  %56 = add nsw i32 %45, 1
  br label %57

57:                                               ; preds = %43, %50
  %58 = phi i32 [ %56, %50 ], [ %45, %43 ]
  %59 = load ptr, ptr %44, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %43, !llvm.loop !129

61:                                               ; preds = %57, %2, %18, %16
  %62 = phi i8 [ 0, %16 ], [ 1, %18 ], [ 0, %2 ], [ 1, %57 ]
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_marker_move_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.24) #16
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %33
  %19 = phi ptr [ %14, %16 ], [ %35, %33 ]
  %20 = phi i32 [ 0, %16 ], [ %34, %33 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %17, align 8, !tbaa !123
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !128
  %30 = add nsw i32 %29, %11
  %31 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !48
  %32 = add nsw i32 %20, 1
  br label %33

33:                                               ; preds = %18, %25
  %34 = phi i32 [ %32, %25 ], [ %20, %18 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18, !llvm.loop !131

37:                                               ; preds = %33, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  %38 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %4) #16
  %39 = load ptr, ptr %5, align 8, !tbaa !130
  %40 = icmp eq ptr %6, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef %3) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef nonnull %4) #16
  br label %42

42:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_marker_move_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.MarkerMove, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  tail call void %5(ptr noundef %7) #16
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %9 = load ptr, ptr %3, align 8, !tbaa !102
  tail call void %8(ptr noundef %9) #16
  store ptr null, ptr %3, align 8, !tbaa !102
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  tail call void @ED_area_headerprint(ptr noundef %10, ptr noundef null) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ed_marker_move_use_time(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.SpaceLink, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !117
  switch i32 %4, label %30 [
    i32 15, label %5
    i32 8, label %10
    i32 12, label %15
    i32 2, label %20
    i32 13, label %25
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %2, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !134
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %30

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 11
  %17 = load i16, ptr %16, align 2, !tbaa !22
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %30, label %31

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %2, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !137
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %30

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.SpaceNla, ptr %2, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !139
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1, %15, %10, %5, %20, %25
  br label %31

31:                                               ; preds = %5, %10, %15, %20, %25, %30
  %32 = phi i8 [ 0, %30 ], [ 1, %25 ], [ 1, %20 ], [ 1, %15 ], [ 1, %10 ], [ 1, %5 ]
  ret i8 %32
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_screen_view3d_scene_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_move_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1) #17, !range !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 5
  store i32 %10, ptr %12, align 4, !tbaa !115
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !109
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !110
  %17 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  tail call void @RNA_int_set(ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef 0) #16
  tail call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1) #17
  br label %20

20:                                               ; preds = %3, %6
  %21 = phi i32 [ 1, %6 ], [ 2, %3 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.24) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %11 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef %7) #17, !range !64
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %26, %16 ], [ %14, %2 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %2 ]
  %19 = phi ptr [ %24, %16 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr %19, ptr %17
  %25 = add i32 %22, %18
  %26 = load ptr, ptr %17, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !141

28:                                               ; preds = %16
  %29 = icmp eq i32 %25, 1
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi ptr [ null, %2 ], [ %24, %28 ]
  %32 = phi i1 [ false, %2 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.MarkerMove, ptr %7, i64 0, i32 6
  %34 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %33) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %37) #16
  br label %51

38:                                               ; preds = %30
  %39 = icmp eq i8 %11, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 65
  %42 = load float, ptr %41, align 4, !tbaa !108
  %43 = fpext float %42 to double
  %44 = sitofp i32 %10 to double
  %45 = fmul double %44, %43
  %46 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 55
  %47 = load i16, ptr %46, align 4, !tbaa !107
  %48 = sitofp i16 %47 to double
  %49 = fdiv double %45, %48
  %50 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.29, double noundef %49) #16
  br label %51

51:                                               ; preds = %40, %36
  %52 = icmp ne ptr %31, null
  %53 = select i1 %32, i1 %52, i1 false
  br i1 %53, label %58, label %77

54:                                               ; preds = %38
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.30, i32 noundef %10) #16
  %56 = icmp ne ptr %31, null
  %57 = select i1 %32, i1 %56, i1 false
  br i1 %57, label %73, label %77

58:                                               ; preds = %51
  %59 = icmp eq i8 %11, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 65
  %62 = load float, ptr %61, align 4, !tbaa !108
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds %struct.TimeMarker, ptr %31, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !48
  %66 = sitofp i32 %65 to double
  %67 = fmul double %63, %66
  %68 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 55
  %69 = load i16, ptr %68, align 4, !tbaa !107
  %70 = sitofp i16 %69 to double
  %71 = fdiv double %67, %70
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.31, double noundef %71, ptr noundef nonnull %4) #16
  br label %79

73:                                               ; preds = %54, %58
  %74 = getelementptr inbounds %struct.TimeMarker, ptr %31, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !48
  %76 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %75, ptr noundef nonnull %4) #16
  br label %79

77:                                               ; preds = %54, %51
  %78 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #16
  br label %79

79:                                               ; preds = %60, %73, %77
  %80 = call ptr @CTX_wm_area(ptr noundef %0) #16
  call void @ED_area_headerprint(ptr noundef %80, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @WM_modal_tweak_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !142
  %4 = load float, ptr %0, align 4, !tbaa !143
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !144
  %4 = load i32, ptr %0, align 4, !tbaa !145
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare void @apply_keyb_grid(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_duplicate_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @ed_marker_duplicate_apply(ptr noundef %0) #17
  %3 = tail call i32 @ed_marker_move_exec(ptr noundef %0, ptr noundef %1) #17, !range !146
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_duplicate_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ed_marker_duplicate_invoke) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_marker_duplicate_apply(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1, %25
  %6 = phi ptr [ %26, %25 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.TimeMarker, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  %12 = and i32 %8, -2
  store i32 %12, ptr %7, align 4, !tbaa !46
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %14 = tail call ptr %13(i64 noundef 96, ptr noundef nonnull @.str.19) #16
  %15 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 4
  store i32 1, ptr %15, align 4, !tbaa !46
  %16 = getelementptr inbounds %struct.TimeMarker, ptr %6, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 3
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %6, i64 0, i32 3
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %20, i64 noundef 64) #16
  %22 = getelementptr inbounds %struct.TimeMarker, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !76
  tail call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef %14) #16
  br label %25

25:                                               ; preds = %5, %11
  %26 = load ptr, ptr %6, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %5, !llvm.loop !147

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_duplicate_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @ed_marker_duplicate_apply(ptr noundef %0) #17
  %4 = tail call i32 @ed_marker_move_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !range !148
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_select_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ed_marker_select_invoke) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_markers_poll_markers_exist(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %3 = tail call i32 @ED_operator_animview_active(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !52
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.9) #16
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !106
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.10) #16
  %10 = trunc i32 %9 to i8
  %11 = tail call fastcc i32 @ed_marker_select(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %7, i8 noundef zeroext %10) #17, !range !149
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ed_marker_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %7 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !113
  %10 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !150
  %12 = sub nsw i32 %9, %11
  %13 = sitofp i32 %12 to float
  %14 = tail call float @UI_view2d_region_to_view_x(ptr noundef %7, float noundef %13) #16
  %15 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %5, float noundef %14) #17
  tail call fastcc void @select_timeline_marker_frame(ptr noundef nonnull %5, i32 noundef %15, i8 noundef zeroext %2) #17
  %16 = icmp eq i8 %3, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %4
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @BKE_scene_base_deselect_all(ptr noundef %18) #16
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21, %26
  %23 = phi ptr [ %24, %26 ], [ %5, %21 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %22, !llvm.loop !152

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = and i32 %32, 1
  br label %34

34:                                               ; preds = %22, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %22 ]
  %36 = load ptr, ptr %5, align 8, !tbaa !45
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = trunc i32 %35 to i16
  %40 = icmp eq i32 %35, 0
  br label %41

41:                                               ; preds = %38, %55
  %42 = phi ptr [ %36, %38 ], [ %56, %55 ]
  %43 = getelementptr inbounds %struct.TimeMarker, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !76
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TimeMarker, ptr %42, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !48
  %49 = icmp eq i32 %48, %15
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = tail call ptr @BKE_scene_base_find(ptr noundef %18, ptr noundef nonnull %44) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  tail call void @ED_base_object_select(ptr noundef nonnull %51, i16 noundef signext %39) #16
  br i1 %40, label %55, label %54

54:                                               ; preds = %53
  tail call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %51) #16
  br label %55

55:                                               ; preds = %41, %50, %54, %53, %46
  %56 = load ptr, ptr %42, align 8, !tbaa !45
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %41, !llvm.loop !153

58:                                               ; preds = %55, %34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %18) #16
  br label %59

59:                                               ; preds = %4, %58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  ret i32 12
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_timeline_marker_frame(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %3, %18
  %7 = phi ptr [ %19, %18 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !54
  br label %21

18:                                               ; preds = %6, %11
  %19 = load ptr, ptr %7, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !154

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %17, %16 ], [ null, %18 ]
  %23 = icmp eq i8 %2, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  br i1 %5, label %49, label %25

25:                                               ; preds = %24, %25
  %26 = phi ptr [ %30, %25 ], [ %4, %24 ]
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = and i32 %28, -2
  store i32 %29, ptr %27, align 4, !tbaa !46
  %30 = load ptr, ptr %26, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %25, !llvm.loop !155

32:                                               ; preds = %25, %21
  %33 = icmp eq ptr %22, null
  %34 = select i1 %33, ptr %4, ptr %22
  br label %35

35:                                               ; preds = %44, %32
  %36 = phi ptr [ %34, %32 ], [ %47, %44 ]
  %37 = getelementptr inbounds %struct.TimeMarker, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !48
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TimeMarker, ptr %36, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !46
  %43 = xor i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !46
  br label %49

44:                                               ; preds = %35
  %45 = load ptr, ptr %36, align 8, !tbaa !54
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr %4, ptr %45
  %48 = icmp eq ptr %47, %34
  br i1 %48, label %49, label %35, !llvm.loop !156

49:                                               ; preds = %44, %3, %24, %40
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #16
  %5 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.44) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !106
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #16
  call void @UI_view2d_region_to_view_rctf(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %3) #16
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = and i32 %10, 255
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %37
  %17 = phi ptr [ %11, %13 ], [ %38, %37 ]
  %18 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = sitofp i32 %19 to float
  %21 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %3, float noundef %20) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  switch i32 %8, label %37 [
    i32 3, label %24
    i32 4, label %28
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !46
  br label %37

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = and i32 %30, -2
  store i32 %31, ptr %29, align 4, !tbaa !46
  br label %37

32:                                               ; preds = %16
  br i1 %15, label %33, label %37

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = and i32 %35, -2
  store i32 %36, ptr %34, align 4, !tbaa !46
  br label %37

37:                                               ; preds = %23, %28, %24, %33, %32
  %38 = load ptr, ptr %17, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16, !llvm.loop !157

40:                                               ; preds = %37, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_select_border_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @WM_border_select_invoke) #17
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_x(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.47) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @ED_markers_get_first_selected(ptr noundef nonnull %3) #17
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 1, i32 2
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %6, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12, %30
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  switch i32 %13, label %30 [
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !46
  br label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = and i32 %24, -2
  store i32 %25, ptr %23, align 4, !tbaa !46
  br label %30

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = xor i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !46
  br label %30

30:                                               ; preds = %18, %22, %26, %16
  %31 = load ptr, ptr %17, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !158

33:                                               ; preds = %30, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_delete_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @WM_operator_confirm) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi i1 [ false, %18 ], [ true, %2 ]
  %8 = phi ptr [ %11, %18 ], [ %4, %2 ]
  br label %9

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %11, %16 ], [ %8, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %10, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = icmp eq ptr %11, null
  br i1 %17, label %20, label %9, !llvm.loop !159

18:                                               ; preds = %9
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %10) #16
  %19 = icmp eq ptr %11, null
  br i1 %19, label %21, label %6, !llvm.loop !159

20:                                               ; preds = %16
  br i1 %7, label %22, label %21

21:                                               ; preds = %18, %20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  br label %22

22:                                               ; preds = %2, %20, %21
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_rename_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %5 = tail call ptr @ED_markers_get_first_selected(ptr noundef nonnull %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %5, i64 0, i32 3
  tail call void @RNA_string_set(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull %10) #16
  br label %11

11:                                               ; preds = %7, %3
  %12 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @WM_operator_props_popup_confirm) #17
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_rename_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %4 = tail call ptr @ED_markers_get_first_selected(ptr noundef nonnull %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = getelementptr inbounds %struct.TimeMarker, ptr %4, i64 0, i32 3
  tail call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull %9) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_popup_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_make_links_scene_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.59) #16
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 24
  br label %19

19:                                               ; preds = %17, %28
  %20 = phi ptr [ %15, %17 ], [ %29, %28 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !45
  %27 = tail call ptr %26(ptr noundef nonnull %20) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef nonnull %27) #16
  br label %28

28:                                               ; preds = %19, %25
  %29 = load ptr, ptr %20, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %19, !llvm.loop !160

31:                                               ; preds = %11, %2
  %32 = phi ptr [ @.str.61, %2 ], [ @.str.62, %11 ]
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  tail call void @BKE_report(ptr noundef %34, i32 noundef 32, ptr noundef nonnull %32) #16
  br label %35

35:                                               ; preds = %28, %31, %14
  %36 = phi i32 [ 4, %14 ], [ 2, %31 ], [ 4, %28 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ed_marker_make_links_scene_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @ed_markers_opwrap_invoke_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @WM_menu_invoke) #17
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_scene_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ed_marker_camera_bind_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %6 = tail call ptr @ED_context_get_markers(ptr noundef %0) #17
  %7 = tail call ptr @ED_markers_get_first_selected(ptr noundef nonnull %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 5
  store ptr %5, ptr %10, align 8, !tbaa !76
  %11 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %4) #16
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef %3) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %4) #16
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 72}
!6 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"ListBase", !7, i64 0, !7, i64 8}
!14 = !{!6, !7, i64 96}
!15 = !{!16, !8, i64 336}
!16 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !8, i64 40, !18, i64 56, !7, i64 216, !20, i64 224, !8, i64 336, !8, i64 337, !12, i64 338, !17, i64 340}
!17 = !{!"float", !8, i64 0}
!18 = !{!"View2D", !19, i64 0, !19, i64 16, !10, i64 32, !10, i64 48, !10, i64 64, !8, i64 80, !8, i64 88, !17, i64 96, !17, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!19 = !{!"rctf", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!20 = !{!"bDopeSheet", !7, i64 0, !13, i64 8, !7, i64 24, !8, i64 32, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108}
!21 = !{!16, !7, i64 216}
!22 = !{!16, !12, i64 338}
!23 = !{!24, !7, i64 48}
!24 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!25 = !{!24, !7, i64 16}
!26 = !{!27, !11, i64 680}
!27 = !{!"Scene", !28, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !13, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !29, i64 280, !36, i64 4264, !13, i64 4296, !13, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !11, i64 4380, !13, i64 4384, !37, i64 4400, !38, i64 4416, !41, i64 4600, !7, i64 4608, !42, i64 4616, !7, i64 4640, !43, i64 4648, !43, i64 4656, !31, i64 4664, !32, i64 4824, !44, i64 4888, !7, i64 4952}
!28 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!29 = !{!"RenderData", !30, i64 0, !7, i64 248, !7, i64 256, !33, i64 264, !34, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !17, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !12, i64 432, !12, i64 434, !17, i64 436, !17, i64 440, !17, i64 444, !17, i64 448, !17, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !11, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !11, i64 484, !11, i64 488, !12, i64 492, !12, i64 494, !11, i64 496, !11, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !19, i64 544, !19, i64 560, !10, i64 576, !13, i64 592, !12, i64 608, !12, i64 610, !17, i64 612, !17, i64 616, !17, i64 620, !17, i64 624, !11, i64 628, !17, i64 632, !17, i64 636, !17, i64 640, !17, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !17, i64 660, !17, i64 664, !12, i64 668, !12, i64 670, !17, i64 672, !17, i64 676, !8, i64 680, !11, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !12, i64 2524, !12, i64 2526, !17, i64 2528, !17, i64 2532, !12, i64 2536, !12, i64 2538, !17, i64 2540, !12, i64 2544, !12, i64 2546, !11, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !17, i64 2560, !17, i64 2564, !7, i64 2568, !11, i64 2576, !17, i64 2580, !8, i64 2584, !35, i64 2616, !11, i64 3976, !11, i64 3980}
!30 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !17, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !31, i64 24, !32, i64 184}
!31 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !17, i64 136, !17, i64 140, !7, i64 144, !7, i64 152}
!32 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!33 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !12, i64 48, !12, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!34 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !17, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!35 = !{!"BakeData", !30, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !17, i64 1280, !17, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!36 = !{!"AudioData", !11, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !11, i64 16, !12, i64 20, !12, i64 22, !17, i64 24, !17, i64 28}
!37 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!38 = !{!"GameData", !37, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !39, i64 40, !12, i64 64, !12, i64 66, !17, i64 68, !40, i64 72, !17, i64 128, !17, i64 132, !11, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !17, i64 164, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180}
!39 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !17, i64 8, !17, i64 12, !7, i64 16}
!40 = !{!"RecastData", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !11, i64 40, !17, i64 44, !17, i64 48, !12, i64 52, !12, i64 54}
!41 = !{!"UnitSettings", !17, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!42 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!43 = !{!"long", !8, i64 0}
!44 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!45 = !{!7, !7, i64 0}
!46 = !{!47, !11, i64 84}
!47 = !{!"TimeMarker", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 20, !11, i64 84, !7, i64 88}
!48 = !{!47, !11, i64 16}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!13, !7, i64 0}
!53 = !{!13, !7, i64 8}
!54 = !{!47, !7, i64 0}
!55 = distinct !{!55, !50}
!56 = !{!17, !17, i64 0}
!57 = distinct !{!57, !50}
!58 = !{!59, !17, i64 16}
!59 = !{!"CfraElem", !7, i64 0, !7, i64 8, !17, i64 16, !11, i64 20}
!60 = distinct !{!60, !50}
!61 = !{!59, !11, i64 20}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = !{i8 0, i8 2}
!65 = !{!18, !17, i64 16}
!66 = !{!18, !17, i64 20}
!67 = !{!68, !17, i64 10908}
!68 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !12, i64 8496, !12, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !13, i64 8536, !13, i64 8552, !13, i64 8568, !13, i64 8584, !13, i64 8600, !13, i64 8616, !13, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !11, i64 8912, !11, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !17, i64 8956, !17, i64 8960, !11, i64 8964, !12, i64 8968, !12, i64 8970, !17, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !69, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !17, i64 10904, !17, i64 10908, !11, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !70, i64 10928}
!69 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!70 = !{!"WalkNavigation", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !12, i64 24, !8, i64 26}
!71 = !{!68, !11, i64 8524}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = !{!10, !11, i64 12}
!75 = !{!10, !11, i64 8}
!76 = !{!47, !7, i64 88}
!77 = !{!18, !17, i64 28}
!78 = !{!8, !8, i64 0}
!79 = !{!80, !8, i64 1160}
!80 = !{!"Object", !28, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !81, i64 312, !7, i64 360, !13, i64 368, !13, i64 384, !13, i64 400, !13, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !17, i64 616, !17, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !17, i64 988, !17, i64 992, !17, i64 996, !17, i64 1000, !17, i64 1004, !17, i64 1008, !17, i64 1012, !17, i64 1016, !17, i64 1020, !17, i64 1024, !17, i64 1028, !17, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !17, i64 1048, !17, i64 1052, !13, i64 1056, !13, i64 1072, !13, i64 1088, !13, i64 1104, !17, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !13, i64 1176, !13, i64 1192, !13, i64 1208, !13, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !17, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !43, i64 1304, !43, i64 1312, !11, i64 1320, !11, i64 1324, !13, i64 1328, !13, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !13, i64 1400, !7, i64 1416}
!81 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!82 = !{!83, !7, i64 0}
!83 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !13, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !84, i64 152, !12, i64 184}
!84 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!85 = !{!83, !7, i64 24}
!86 = !{!83, !7, i64 8}
!87 = !{!83, !7, i64 32}
!88 = !{!83, !7, i64 48}
!89 = !{!83, !7, i64 72}
!90 = !{!83, !12, i64 184}
!91 = !{!83, !7, i64 64}
!92 = !{!83, !7, i64 56}
!93 = !{!83, !7, i64 88}
!94 = !{!83, !7, i64 104}
!95 = !{!96, !7, i64 176}
!96 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = !{!100, !7, i64 88}
!100 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !13, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!101 = !{!100, !7, i64 120}
!102 = !{!100, !7, i64 96}
!103 = !{!104, !12, i64 18}
!104 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !11, i64 48, !11, i64 52, !105, i64 56, !11, i64 64, !11, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !11, i64 108, !7, i64 112}
!105 = !{!"double", !8, i64 0}
!106 = !{!100, !7, i64 112}
!107 = !{!27, !12, i64 820}
!108 = !{!27, !17, i64 900}
!109 = !{!104, !12, i64 16}
!110 = !{!111, !11, i64 16}
!111 = !{!"MarkerMove", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !11, i64 32, !11, i64 36, !112, i64 40}
!112 = !{!"NumInput", !12, i64 0, !11, i64 4, !8, i64 8, !8, i64 20, !12, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !12, i64 68, !8, i64 70, !11, i64 136}
!113 = !{!104, !11, i64 20}
!114 = !{!111, !11, i64 32}
!115 = !{!111, !11, i64 36}
!116 = !{!111, !7, i64 0}
!117 = !{!118, !11, i64 32}
!118 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !8, i64 40}
!119 = !{!104, !12, i64 72}
!120 = !{!104, !12, i64 74}
!121 = distinct !{!121, !50}
!122 = !{!111, !7, i64 8}
!123 = !{!111, !7, i64 24}
!124 = !{!111, !12, i64 40}
!125 = !{!12, !12, i64 0}
!126 = !{!27, !8, i64 4604}
!127 = !{!111, !11, i64 44}
!128 = !{!11, !11, i64 0}
!129 = distinct !{!129, !50}
!130 = !{!27, !7, i64 128}
!131 = distinct !{!131, !50}
!132 = !{!133, !11, i64 220}
!133 = !{!"SpaceTime", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !18, i64 40, !13, i64 200, !11, i64 216, !11, i64 220}
!134 = !{!135, !11, i64 232}
!135 = !{!"SpaceSeq", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !8, i64 40, !18, i64 56, !17, i64 216, !17, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !11, i64 232, !17, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !136, i64 256}
!136 = !{!"SequencerScopes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!137 = !{!138, !11, i64 244}
!138 = !{!"SpaceIpo", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !8, i64 40, !18, i64 56, !7, i64 216, !13, i64 224, !12, i64 240, !12, i64 242, !11, i64 244, !17, i64 248, !11, i64 252}
!139 = !{!140, !12, i64 58}
!140 = !{!"SpaceNla", !7, i64 0, !7, i64 8, !13, i64 16, !11, i64 32, !17, i64 36, !8, i64 40, !12, i64 56, !12, i64 58, !11, i64 60, !7, i64 64, !18, i64 72}
!141 = distinct !{!141, !50}
!142 = !{!19, !17, i64 4}
!143 = !{!19, !17, i64 0}
!144 = !{!10, !11, i64 4}
!145 = !{!10, !11, i64 0}
!146 = !{i32 4, i32 9}
!147 = distinct !{!147, !50}
!148 = !{i32 1, i32 3}
!149 = !{i32 8, i32 13}
!150 = !{!151, !11, i64 176}
!151 = !{!"ARegion", !7, i64 0, !7, i64 8, !18, i64 16, !10, i64 176, !10, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !17, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !13, i64 248, !13, i64 264, !13, i64 280, !13, i64 296, !13, i64 312, !13, i64 328, !13, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = distinct !{!156, !50}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
