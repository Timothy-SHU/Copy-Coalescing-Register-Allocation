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

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_context_get_markers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 12
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 9
  %13 = load i8, ptr %12, align 8, !tbaa !44
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !51
  %22 = and i16 %21, 64
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 4
  %25 = select i1 %23, ptr undef, ptr %24
  br label %26

26:                                               ; preds = %19, %15, %9
  %27 = phi ptr [ undef, %9 ], [ undef, %15 ], [ %25, %19 ]
  %28 = phi i1 [ true, %9 ], [ true, %15 ], [ %23, %19 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %5, %1
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 24
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %27, %26 ], [ %30, %29 ]
  ret ptr %32
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_animcontext_get_markers(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i8 %11, 12
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 9
  %17 = load i8, ptr %16, align 8, !tbaa !44
  %18 = icmp ult i8 %17, 2
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !51
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 4
  %29 = select i1 %27, ptr undef, ptr %28
  br label %30

30:                                               ; preds = %23, %19, %13
  %31 = phi ptr [ undef, %13 ], [ undef, %19 ], [ %29, %23 ]
  %32 = phi i1 [ true, %13 ], [ true, %19 ], [ %27, %23 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %9, %3
  %34 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 24
  br label %35

35:                                               ; preds = %33, %30, %1
  %36 = phi ptr [ null, %1 ], [ %31, %30 ], [ %34, %33 ]
  ret ptr %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ED_markers_post_apply_transform(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = sitofp i32 %7 to float
  %9 = icmp eq ptr %0, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !74
  %12 = icmp eq ptr %11, null
  br i1 %12, label %60, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %4, 82
  %15 = fadd float %3, 5.000000e-01
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = fptosi float %16 to i32
  br label %18

18:                                               ; preds = %13, %56
  %19 = phi ptr [ %11, %13 ], [ %58, %56 ]
  %20 = phi i32 [ 0, %13 ], [ %57, %56 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !75
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %18
  switch i32 %2, label %56 [
    i32 19, label %26
    i32 22, label %26
    i32 21, label %43
  ]

26:                                               ; preds = %25, %25
  switch i8 %4, label %56 [
    i8 66, label %38
    i8 76, label %27
    i8 82, label %33
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = sitofp i32 %29 to float
  %31 = fcmp olt float %30, %8
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  br i1 %14, label %33, label %56

33:                                               ; preds = %26, %32
  %34 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !77
  %36 = sitofp i32 %35 to float
  %37 = fcmp ult float %36, %8
  br i1 %37, label %56, label %38

38:                                               ; preds = %26, %33, %27
  %39 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = add nsw i32 %40, %17
  store i32 %41, ptr %39, align 8, !tbaa !77
  %42 = add nsw i32 %20, 1
  br label %56

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !77
  %46 = sitofp i32 %45 to float
  %47 = fsub float %46, %8
  %48 = fmul float %47, %3
  %49 = fadd float %48, 5.000000e-01
  %50 = tail call float @llvm.floor.f32(float %49)
  %51 = fptosi float %50 to i32
  %52 = sitofp i32 %51 to float
  %53 = fadd float %8, %52
  %54 = fptosi float %53 to i32
  store i32 %54, ptr %44, align 8, !tbaa !77
  %55 = add nsw i32 %20, 1
  br label %56

56:                                               ; preds = %26, %18, %32, %33, %38, %25, %43
  %57 = phi i32 [ %20, %25 ], [ %55, %43 ], [ %42, %38 ], [ %20, %33 ], [ %20, %32 ], [ %20, %18 ], [ %20, %26 ]
  %58 = load ptr, ptr %19, align 8, !tbaa !74
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %18, !llvm.loop !78

60:                                               ; preds = %56, %10, %5
  %61 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %57, %56 ]
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_markers_find_nearest_marker(ptr noundef readonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %19, %7 ], [ %5, %4 ]
  %9 = phi float [ %18, %7 ], [ 1.000000e+06, %4 ]
  %10 = phi ptr [ %17, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = sitofp i32 %12 to float
  %14 = fsub float %13, %1
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %9
  %17 = select i1 %16, ptr %8, ptr %10
  %18 = select i1 %16, float %15, float %9
  %19 = load ptr, ptr %8, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !81

21:                                               ; preds = %7, %4, %2
  %22 = phi ptr [ null, %2 ], [ null, %4 ], [ %17, %7 ]
  ret ptr %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_markers_find_nearest_marker_time(ptr noundef readonly %0, float noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %19, %7 ], [ %5, %4 ]
  %9 = phi float [ %18, %7 ], [ 1.000000e+06, %4 ]
  %10 = phi ptr [ %17, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = sitofp i32 %12 to float
  %14 = fsub float %13, %1
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %9
  %17 = select i1 %16, ptr %8, ptr %10
  %18 = select i1 %16, float %15, float %9
  %19 = load ptr, ptr %8, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !81

21:                                               ; preds = %7, %4, %2
  %22 = phi ptr [ null, %2 ], [ null, %4 ], [ %17, %7 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
  br label %31

27:                                               ; preds = %21
  %28 = fadd float %1, 5.000000e-01
  %29 = tail call float @llvm.floor.f32(float %28)
  %30 = fptosi float %29 to i32
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %26, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_markers_get_minmax(ptr noundef readonly %0, i16 noundef signext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !83
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
  %21 = load i32, ptr %20, align 4, !tbaa !75
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
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
  %35 = load ptr, ptr %18, align 8, !tbaa !84
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !85

37:                                               ; preds = %32, %4, %6, %9
  %38 = phi float [ 0.000000e+00, %9 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %4 ], [ %33, %32 ]
  %39 = phi float [ 0.000000e+00, %9 ], [ 0.000000e+00, %6 ], [ 0.000000e+00, %4 ], [ %34, %32 ]
  store float %38, ptr %2, align 4, !tbaa !86
  store float %39, ptr %3, align 4, !tbaa !86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_markers_make_cfra_list(ptr noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %5
  %9 = icmp eq i16 %2, 0
  br label %10

10:                                               ; preds = %8, %52
  %11 = phi ptr [ %6, %8 ], [ %53, %52 ]
  br i1 %9, label %17, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !75
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %12, %10
  %18 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 2
  br label %19

19:                                               ; preds = %34, %17
  %20 = phi ptr [ %1, %17 ], [ %21, %34 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.CfraElem, ptr %21, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !87
  %26 = load i32, ptr %18, align 8, !tbaa !77
  %27 = sitofp i32 %26 to float
  %28 = fcmp oeq float %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !75
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %48

34:                                               ; preds = %23
  %35 = fcmp ogt float %25, %27
  br i1 %35, label %36, label %19, !llvm.loop !89

36:                                               ; preds = %34, %19
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %38 = tail call ptr %37(i64 noundef 24, ptr noundef nonnull @.str.16) #14
  br i1 %22, label %40, label %39

39:                                               ; preds = %36
  tail call void @BLI_insertlinkbefore(ptr noundef %1, ptr noundef nonnull %21, ptr noundef %38) #14
  br label %41

40:                                               ; preds = %36
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %38) #14
  br label %41

41:                                               ; preds = %40, %39
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !77
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.CfraElem, ptr %38, i64 0, i32 2
  store float %44, ptr %45, align 8, !tbaa !87
  %46 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !75
  br label %48

48:                                               ; preds = %29, %41
  %49 = phi ptr [ %38, %41 ], [ %21, %29 ]
  %50 = phi i32 [ %47, %41 ], [ %31, %29 ]
  %51 = getelementptr inbounds %struct.CfraElem, ptr %49, i64 0, i32 3
  store i32 %50, ptr %51, align 4, !tbaa !90
  br label %52

52:                                               ; preds = %48, %12, %29
  %53 = load ptr, ptr %11, align 8, !tbaa !74
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %10, !llvm.loop !91

55:                                               ; preds = %52, %5, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_markers_get_first_selected(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %5, %7 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TimeMarker, ptr %5, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !75
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !92

12:                                               ; preds = %3, %7, %1
  %13 = phi ptr [ null, %1 ], [ %5, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug_markers_print_list(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = load ptr, ptr %0, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 3
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !75
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %9, i32 noundef %11, ptr noundef nonnull %8, i32 noundef %13)
  %15 = load ptr, ptr %8, align 8, !tbaa !74
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !93

17:                                               ; preds = %7, %3, %1
  %18 = phi ptr [ @str.66, %1 ], [ @str.65, %3 ], [ @str.65, %7 ]
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) %18)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @ED_markers_draw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x i8], align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i8 %12, 12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 9
  %18 = load i8, ptr %17, align 8, !tbaa !44
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 11
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = and i16 %26, 64
  %28 = icmp eq i16 %27, 0
  %29 = getelementptr inbounds %struct.bAction, ptr %22, i64 0, i32 4
  %30 = select i1 %28, ptr undef, ptr %29
  br label %31

31:                                               ; preds = %24, %20, %14
  %32 = phi ptr [ undef, %14 ], [ undef, %20 ], [ %30, %24 ]
  %33 = phi i1 [ true, %14 ], [ true, %20 ], [ %28, %24 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %10, %2
  %35 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 24
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %32, %31 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %219, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !82
  %41 = icmp eq ptr %40, null
  br i1 %41, label %219, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %44 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #14
  %45 = and i32 %1, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 268435456, ptr %6, align 4
  call void @glColor4ubv(ptr noundef nonnull %6) #14
  call void @glEnable(i32 noundef 3042) #14
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  %48 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 1
  %49 = load float, ptr %48, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 1, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !95
  %52 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fdiv float %55, 7.200000e+01
  %57 = fmul float %56, 4.200000e+01
  call void @glRectf(float noundef %49, float noundef 0.000000e+00, float noundef %51, float noundef %57) #14
  call void @glDisable(i32 noundef 3042) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %58

58:                                               ; preds = %47, %42
  %59 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 4, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !101
  %61 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 4, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !102
  %63 = sub nsw i32 %60, %62
  %64 = sitofp i32 %63 to float
  call void @UI_view2d_scale_get(ptr noundef %44, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %65 = load float, ptr %4, align 4, !tbaa !86
  %66 = fdiv float 1.000000e+00, %65
  call void @glScalef(float noundef %66, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  %67 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %68 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %69 = sitofp i32 %68 to float
  %70 = fmul float %67, %69
  %71 = fdiv float %70, 7.200000e+01
  %72 = fmul float %71, 1.000000e+01
  %73 = load float, ptr %4, align 4, !tbaa !86
  %74 = fdiv float %72, %73
  %75 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 1
  %76 = load float, ptr %75, align 8, !tbaa !94
  %77 = call float @llvm.fmuladd.f32(float %74, float -6.400000e+01, float %76)
  %78 = fptosi float %77 to i32
  %79 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 1, i32 1
  %80 = load float, ptr %79, align 4, !tbaa !95
  %81 = fadd float %80, %74
  %82 = fptosi float %81 to i32
  %83 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 22, i32 5
  %84 = and i32 %1, 1
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr inbounds %struct.View2D, ptr %44, i64 0, i32 1, i32 3
  %87 = and i32 %1, 2
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  br label %90

90:                                               ; preds = %58, %214
  %91 = phi i32 [ 0, %58 ], [ %215, %214 ]
  %92 = load ptr, ptr %37, align 8, !tbaa !74
  %93 = icmp eq ptr %92, null
  br i1 %93, label %214, label %94

94:                                               ; preds = %90, %211
  %95 = phi ptr [ %212, %211 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.TimeMarker, ptr %95, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !75
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, %91
  br i1 %99, label %100, label %211

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.TimeMarker, ptr %95, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !77
  %103 = icmp slt i32 %102, %78
  %104 = icmp sgt i32 %102, %82
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %211, label %106

106:                                              ; preds = %100
  %107 = load i32, ptr %83, align 8, !tbaa !55
  %108 = load float, ptr %4, align 4, !tbaa !86
  %109 = load float, ptr %5, align 4, !tbaa !86
  %110 = sitofp i32 %102 to float
  %111 = fmul float %108, %110
  call void @glEnable(i32 noundef 3042) #14
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  %112 = getelementptr inbounds %struct.TimeMarker, ptr %95, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !103
  %114 = icmp eq ptr %113, null
  %115 = and i1 %85, %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %106
  call void @setlinestyle(i32 noundef 3) #14
  %117 = load i32, ptr %96, align 4, !tbaa !75
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 96) #14
  br label %122

121:                                              ; preds = %116
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 96) #14
  br label %122

122:                                              ; preds = %121, %120
  call void @glBegin(i32 noundef 1) #14
  %123 = fadd float %111, 5.000000e-01
  call void @glVertex2f(float noundef %123, float noundef 1.200000e+01) #14
  %124 = load float, ptr %86, align 4, !tbaa !104
  %125 = fadd float %124, 1.200000e+01
  %126 = fmul float %109, %125
  call void @glVertex2f(float noundef %123, float noundef %126) #14
  call void @glEnd() #14
  call void @setlinestyle(i32 noundef 0) #14
  br label %127

127:                                              ; preds = %122, %106
  %128 = load i32, ptr %96, align 4, !tbaa !75
  br i1 %88, label %135, label %129

129:                                              ; preds = %127
  %130 = and i32 %128, 2
  %131 = icmp eq i32 %130, 0
  %132 = and i32 %128, 1
  %133 = xor i32 %132, 507
  %134 = select i1 %131, i32 %133, i32 505
  br label %138

135:                                              ; preds = %127
  %136 = and i32 %128, 1
  %137 = xor i32 %136, 509
  br label %138

138:                                              ; preds = %135, %129
  %139 = phi i32 [ %134, %129 ], [ %137, %135 ]
  %140 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %141 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %142 = sitofp i32 %141 to float
  %143 = fmul float %140, %142
  %144 = fdiv float %143, 7.200000e+01
  %145 = fmul float %144, 1.600000e+01
  %146 = call float @llvm.fmuladd.f32(float %145, float 0xBFDCCCCCC0000000, float %111)
  call void @UI_icon_draw(float noundef %146, float noundef %145, i32 noundef %139) #14
  call void @glDisable(i32 noundef 3042) #14
  %147 = getelementptr inbounds %struct.TimeMarker, ptr %95, i64 0, i32 3
  %148 = load i8, ptr %147, align 4, !tbaa !105
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %211, label %150

150:                                              ; preds = %138
  %151 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %152 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %153 = sitofp i32 %152 to float
  %154 = fmul float %151, %153
  %155 = fdiv float %154, 7.200000e+01
  %156 = fmul float %155, 1.700000e+01
  %157 = fptosi float %156 to i32
  %158 = load i32, ptr %96, align 4, !tbaa !75
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %150
  call void @UI_ThemeColor(i32 noundef 4) #14
  %162 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %163 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %164 = sitofp i32 %163 to float
  %165 = fmul float %162, %164
  %166 = fdiv float %165, 7.200000e+01
  %167 = call float @llvm.fmuladd.f32(float %166, float 4.000000e+00, float %111)
  %168 = fmul float %166, 3.900000e+01
  %169 = fcmp ult float %168, %64
  %170 = call float @llvm.fmuladd.f32(float %166, float -1.000000e+01, float %64)
  %171 = fmul float %166, 2.900000e+01
  %172 = select i1 %169, float %171, float %170
  %173 = fptosi float %172 to i32
  %174 = call i32 @llvm.smax.i32(i32 %157, i32 %173)
  %175 = sitofp i32 %174 to float
  br label %199

176:                                              ; preds = %150
  call void @UI_ThemeColor(i32 noundef 3) #14
  %177 = load i32, ptr %101, align 8, !tbaa !77
  %178 = icmp sle i32 %177, %107
  %179 = add nsw i32 %177, 5
  %180 = icmp sgt i32 %179, %107
  %181 = select i1 %178, i1 %180, i1 false
  %182 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !96
  %183 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !100
  %184 = sitofp i32 %183 to float
  %185 = fmul float %182, %184
  %186 = fdiv float %185, 7.200000e+01
  %187 = call float @llvm.fmuladd.f32(float %186, float 8.000000e+00, float %111)
  br i1 %181, label %188, label %197

188:                                              ; preds = %176
  %189 = fmul float %186, 3.900000e+01
  %190 = fcmp ult float %189, %64
  %191 = call float @llvm.fmuladd.f32(float %186, float -1.000000e+01, float %64)
  %192 = fmul float %186, 2.900000e+01
  %193 = select i1 %190, float %192, float %191
  %194 = fptosi float %193 to i32
  %195 = call i32 @llvm.smax.i32(i32 %157, i32 %194)
  %196 = sitofp i32 %195 to float
  br label %199

197:                                              ; preds = %176
  %198 = fmul float %186, 1.700000e+01
  br label %199

199:                                              ; preds = %197, %188, %161
  %200 = phi float [ %167, %161 ], [ %187, %188 ], [ %187, %197 ]
  %201 = phi float [ %175, %161 ], [ %196, %188 ], [ %198, %197 ]
  %202 = load ptr, ptr %112, align 8, !tbaa !103
  %203 = icmp eq ptr %202, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 102
  %206 = load i8, ptr %205, align 8, !tbaa !106
  %207 = and i8 %206, 4
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %3) #14
  store float 0x3FD99999A0000000, ptr %89, align 4, !tbaa !86
  call void @glColor4fv(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %210

210:                                              ; preds = %209, %204, %199
  call void @UI_DrawString(float noundef %200, float noundef %201, ptr noundef nonnull %147) #14
  br label %211

211:                                              ; preds = %210, %138, %94, %100
  %212 = load ptr, ptr %95, align 8, !tbaa !74
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %94, !llvm.loop !109

214:                                              ; preds = %211, %90
  %215 = add nuw nsw i32 %91, 1
  %216 = icmp eq i32 %91, 0
  br i1 %216, label %90, label %217, !llvm.loop !110

217:                                              ; preds = %214
  %218 = load float, ptr %4, align 4, !tbaa !86
  call void @glScalef(float noundef %218, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  br label %219

219:                                              ; preds = %36, %39, %217
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #1

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_marker() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_add) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_move) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_duplicate) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select_border) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_select_all) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_delete) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_rename) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_make_links_scene) #14
  tail call void @WM_operatortype_append(ptr noundef nonnull @MARKER_OT_camera_bind) #14
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_add(ptr nocapture noundef writeonly %0) #10 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_add_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_animview_active, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_move_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_move_invoke_wrapper, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @ed_marker_move_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %7, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ed_marker_move_cancel, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %9, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef -2147483648, i32 noundef 2147483647) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_duplicate(ptr nocapture noundef %0) #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_duplicate_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_duplicate_invoke_wrapper, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @ed_marker_move_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %7, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @ed_marker_move_cancel, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef -2147483648, i32 noundef 2147483647) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_select_invoke_wrapper, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #14
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !122
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #14
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_select_border(ptr noundef %0) #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_border_select_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_select_border_invoke_wrapper, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %8, align 8, !tbaa !118
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !119
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_select_all(ptr noundef %0) #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_select_all_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_markers_exist, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_delete(ptr nocapture noundef writeonly %0) #10 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_delete_invoke_wrapper, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_delete_exec, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_rename(ptr nocapture noundef %0) #0 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_rename_invoke_wrapper, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_rename_exec, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 64, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #14
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MARKER_OT_make_links_scene(ptr nocapture noundef %0) #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_make_links_scene_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_marker_make_links_scene_invoke_wrapper, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.59, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.26) #14
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_scene_itemf) #14
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #14
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @MARKER_OT_camera_bind(ptr nocapture noundef writeonly %0) #10 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !111
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !114
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !115
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ed_marker_camera_bind_exec, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ed_markers_opwrap_invoke, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ed_markers_poll_selected_markers, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !119
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_marker(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0) #14
  %3 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %4 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #14
  %5 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %6 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #14
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef 1) #14
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef 0) #14
  %13 = load ptr, ptr %11, align 8, !tbaa !124
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 1) #14
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef 1, i32 noundef 3, i32 noundef 0) #14
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef 1) #14
  %17 = load ptr, ptr %15, align 8, !tbaa !124
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef 1) #14
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %19 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %22 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_marker_keymap_animedit_conflictfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #14
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 109, i32 noundef 1, i32 noundef 2, i32 noundef 0) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @setlinestyle(i32 noundef) local_unnamed_addr #1

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @glBegin(i32 noundef) local_unnamed_addr #1

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glEnd() local_unnamed_addr #1

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #1

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %35 = getelementptr inbounds %struct.Scene, ptr %34, i64 0, i32 22, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !55
  %37 = icmp eq ptr %33, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %32, %45
  %39 = phi ptr [ %40, %45 ], [ %33, %32 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %33, align 8, !tbaa !74
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %49

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TimeMarker, ptr %40, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = icmp eq i32 %47, %36
  br i1 %48, label %63, label %38, !llvm.loop !126

49:                                               ; preds = %42, %49
  %50 = phi ptr [ %54, %49 ], [ %43, %42 ]
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !75
  %53 = and i32 %52, -2
  store i32 %53, ptr %51, align 4, !tbaa !75
  %54 = load ptr, ptr %50, align 8, !tbaa !74
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %49, !llvm.loop !127

56:                                               ; preds = %49, %42
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %58 = tail call ptr %57(i64 noundef 96, ptr noundef nonnull @.str.19) #14
  %59 = getelementptr inbounds %struct.TimeMarker, ptr %58, i64 0, i32 4
  store i32 1, ptr %59, align 4, !tbaa !75
  %60 = getelementptr inbounds %struct.TimeMarker, ptr %58, i64 0, i32 2
  store i32 %36, ptr %60, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.TimeMarker, ptr %58, i64 0, i32 3
  %62 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %61, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %36) #14
  tail call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %58) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %63

63:                                               ; preds = %45, %32, %56
  %64 = phi i32 [ 4, %56 ], [ 2, %32 ], [ 2, %45 ]
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_markers_opwrap_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #14
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.21) #14
  br label %15

15:                                               ; preds = %10, %12
  %16 = phi i32 [ %11, %10 ], [ 8, %12 ]
  %17 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %18 = load i8, ptr %17, align 8, !tbaa !34
  %19 = icmp ne i8 %18, 15
  %20 = and i32 %16, 36
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  %23 = or i32 %16, 8
  %24 = select i1 %22, i32 %23, i32 %16
  ret i32 %24
}

declare i32 @ED_operator_animview_active(ptr noundef) #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_move_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1), !range !131
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.MarkerMove, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  tail call void %8(ptr noundef %10) #14
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %12 = load ptr, ptr %6, align 8, !tbaa !132
  tail call void %11(ptr noundef %12) #14
  store ptr null, ptr %6, align 8, !tbaa !132
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %13, ptr noundef null) #14
  br label %14

14:                                               ; preds = %2, %5
  %15 = phi i32 [ 4, %5 ], [ 8, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_move_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1), !range !131
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !136
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 5
  store i32 %11, ptr %13, align 4, !tbaa !140
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !141
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !142
  %18 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef 0) #14
  tail call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1)
  br label %21

21:                                               ; preds = %3, %7
  %22 = phi i32 [ 1, %7 ], [ 2, %3 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !34
  %25 = icmp eq i8 %24, 15
  %26 = or disjoint i32 %22, 8
  %27 = select i1 %25, i32 %22, i32 %26
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_move_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 6
  %12 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #14
  %13 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef %9), !range !131
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !144
  %16 = icmp eq i16 %15, 1
  %17 = icmp ne i8 %12, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = tail call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !143
  %25 = tail call i32 @RNA_int_get(ptr noundef %24, ptr noundef nonnull @.str.24) #14
  %26 = sitofp i32 %25 to float
  store float %26, ptr %4, align 4, !tbaa !86
  %27 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4) #14
  %28 = icmp eq i8 %13, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %31 = load i16, ptr %30, align 4, !tbaa !145
  %32 = sitofp i16 %31 to double
  %33 = load float, ptr %4, align 4, !tbaa !86
  %34 = fpext float %33 to double
  %35 = fmul double %32, %34
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %37 = load float, ptr %36, align 4, !tbaa !146
  %38 = fpext float %37 to double
  %39 = fdiv double %35, %38
  %40 = fptrunc double %39 to float
  store float %40, ptr %4, align 4, !tbaa !86
  br label %41

41:                                               ; preds = %29, %22
  %42 = load ptr, ptr %23, align 8, !tbaa !143
  %43 = load float, ptr %4, align 4, !tbaa !86
  %44 = fptosi float %43 to i32
  call void @RNA_int_set(ptr noundef %42, ptr noundef nonnull @.str.24, i32 noundef %44) #14
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %169

45:                                               ; preds = %19, %3
  %46 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %47 = load i16, ptr %46, align 8, !tbaa !141
  switch i16 %47, label %137 [
    i16 218, label %48
    i16 3, label %58
    i16 220, label %71
    i16 163, label %71
    i16 1, label %71
    i16 2, label %71
    i16 4, label %84
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  tail call void @RNA_int_set(ptr noundef %50, ptr noundef nonnull @.str.24, i32 noundef 0) #14
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  %51 = load ptr, ptr %8, align 8, !tbaa !132
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %53 = getelementptr inbounds %struct.MarkerMove, ptr %51, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !133
  tail call void %52(ptr noundef %54) #14
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %56 = load ptr, ptr %8, align 8, !tbaa !132
  tail call void %55(ptr noundef %56) #14
  store ptr null, ptr %8, align 8, !tbaa !132
  %57 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %57, ptr noundef null) #14
  br label %166

58:                                               ; preds = %45
  %59 = load i16, ptr %14, align 2, !tbaa !144
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !143
  tail call void @RNA_int_set(ptr noundef %63, ptr noundef nonnull @.str.24, i32 noundef 0) #14
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  %64 = load ptr, ptr %8, align 8, !tbaa !132
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.MarkerMove, ptr %64, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !133
  tail call void %65(ptr noundef %67) #14
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %69 = load ptr, ptr %8, align 8, !tbaa !132
  tail call void %68(ptr noundef %69) #14
  store ptr null, ptr %8, align 8, !tbaa !132
  %70 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %70, ptr noundef null) #14
  br label %166

71:                                               ; preds = %58, %45, %45, %45, %45
  %72 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !142
  %74 = tail call zeroext i8 @WM_modal_tweak_exit(ptr noundef %2, i32 noundef %73) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %137, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %8, align 8, !tbaa !132
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %79 = getelementptr inbounds %struct.MarkerMove, ptr %77, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !133
  tail call void %78(ptr noundef %80) #14
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %82 = load ptr, ptr %8, align 8, !tbaa !132
  tail call void %81(ptr noundef %82) #14
  store ptr null, ptr %8, align 8, !tbaa !132
  %83 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %83, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %166

84:                                               ; preds = %45
  %85 = icmp eq i8 %12, 0
  br i1 %85, label %86, label %137

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !136
  %89 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !139
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %137, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 4, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !147
  %95 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 4
  %96 = load i32, ptr %95, align 4, !tbaa !148
  %97 = sub nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 1, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !149
  %100 = getelementptr inbounds %struct.View2D, ptr %10, i64 0, i32 1
  %101 = load float, ptr %100, align 4, !tbaa !150
  %102 = fsub float %99, %101
  %103 = sitofp i32 %97 to float
  %104 = fdiv float %102, %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 %88, ptr %89, align 8, !tbaa !139
  %105 = getelementptr inbounds %struct.MarkerMove, ptr %9, i64 0, i32 5
  %106 = load i32, ptr %105, align 4, !tbaa !140
  %107 = sub nsw i32 %88, %106
  %108 = sitofp i32 %107 to float
  %109 = fmul float %104, %108
  store float %109, ptr %5, align 4, !tbaa !86
  %110 = load ptr, ptr %9, align 8, !tbaa !151
  %111 = getelementptr inbounds %struct.SpaceLink, ptr %110, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !152
  %113 = icmp eq i32 %112, 15
  %114 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %115 = load i16, ptr %114, align 8, !tbaa !154
  %116 = sext i16 %115 to i32
  %117 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %118 = load i16, ptr %117, align 2, !tbaa !155
  %119 = sext i16 %118 to i32
  br i1 %113, label %120, label %131

120:                                              ; preds = %92
  %121 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %122 = load i16, ptr %121, align 4, !tbaa !145
  %123 = sitofp i16 %122 to double
  %124 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %125 = load float, ptr %124, align 4, !tbaa !146
  %126 = fpext float %125 to double
  %127 = fdiv double %123, %126
  %128 = fptrunc double %127 to float
  %129 = fmul double %127, 1.000000e-01
  %130 = fptrunc double %129 to float
  call void @apply_keyb_grid(i32 noundef %116, i32 noundef %119, ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef %128, float noundef %130, i32 noundef 0) #14
  br label %132

131:                                              ; preds = %92
  call void @apply_keyb_grid(i32 noundef %116, i32 noundef %119, ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB99999A0000000, i32 noundef 0) #14
  br label %132

132:                                              ; preds = %131, %120
  %133 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !143
  %135 = load float, ptr %5, align 4, !tbaa !86
  %136 = fptosi float %135 to i32
  call void @RNA_int_set(ptr noundef %134, ptr noundef nonnull @.str.24, i32 noundef %136) #14
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %137

137:                                              ; preds = %45, %71, %84, %132, %86
  %138 = load i16, ptr %14, align 2, !tbaa !144
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %166

140:                                              ; preds = %137
  %141 = call zeroext i8 @handleNumInput(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2) #14
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %166, label %143

143:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %144 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !143
  %146 = call i32 @RNA_int_get(ptr noundef %145, ptr noundef nonnull @.str.24) #14
  %147 = sitofp i32 %146 to float
  store float %147, ptr %6, align 4, !tbaa !86
  %148 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %6) #14
  %149 = icmp eq i8 %13, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %152 = load i16, ptr %151, align 4, !tbaa !145
  %153 = sitofp i16 %152 to double
  %154 = load float, ptr %6, align 4, !tbaa !86
  %155 = fpext float %154 to double
  %156 = fmul double %153, %155
  %157 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 65
  %158 = load float, ptr %157, align 4, !tbaa !146
  %159 = fpext float %158 to double
  %160 = fdiv double %156, %159
  %161 = fptrunc double %160 to float
  store float %161, ptr %6, align 4, !tbaa !86
  br label %162

162:                                              ; preds = %150, %143
  %163 = load ptr, ptr %144, align 8, !tbaa !143
  %164 = load float, ptr %6, align 4, !tbaa !86
  %165 = fptosi float %164 to i32
  call void @RNA_int_set(ptr noundef %163, ptr noundef nonnull @.str.24, i32 noundef %165) #14
  call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %166

166:                                              ; preds = %137, %140, %162, %76, %61, %48
  %167 = phi i1 [ false, %76 ], [ false, %61 ], [ false, %48 ], [ true, %162 ], [ true, %140 ], [ true, %137 ]
  %168 = phi i32 [ 4, %76 ], [ 2, %61 ], [ 2, %48 ], [ undef, %162 ], [ undef, %140 ], [ undef, %137 ]
  br i1 %167, label %169, label %170

169:                                              ; preds = %166, %41
  br label %170

170:                                              ; preds = %166, %169
  %171 = phi i32 [ 1, %169 ], [ %168, %166 ]
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_markers_poll_selected_markers(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 12
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 9
  %13 = load i8, ptr %12, align 8, !tbaa !44
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !51
  %22 = and i16 %21, 64
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 4
  %25 = select i1 %23, ptr undef, ptr %24
  br label %26

26:                                               ; preds = %19, %15, %9
  %27 = phi ptr [ undef, %9 ], [ undef, %15 ], [ %25, %19 ]
  %28 = phi i1 [ true, %9 ], [ true, %15 ], [ %23, %19 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %5, %1
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 24
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %27, %26 ], [ %30, %29 ]
  %33 = tail call i32 @ED_operator_animview_active(ptr noundef %0) #14
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %32, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31, %41
  %38 = phi ptr [ %39, %41 ], [ %32, %31 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %37, label %46, !llvm.loop !92

46:                                               ; preds = %41, %37, %31
  %47 = phi i32 [ 0, %31 ], [ 1, %41 ], [ 0, %37 ]
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal void @ed_marker_move_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  tail call void @RNA_int_set(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef 0) #14
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.MarkerMove, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void %7(ptr noundef %9) #14
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %11 = load ptr, ptr %5, align 8, !tbaa !132
  tail call void %10(ptr noundef %11) #14
  store ptr null, ptr %5, align 8, !tbaa !132
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %12, ptr noundef null) #14
  ret void
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i8 %9, 12
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !44
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 11
  %23 = load i16, ptr %22, align 2, !tbaa !51
  %24 = and i16 %23, 64
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 4
  %27 = select i1 %25, ptr undef, ptr %26
  br label %28

28:                                               ; preds = %21, %17, %11
  %29 = phi ptr [ undef, %11 ], [ undef, %17 ], [ %27, %21 ]
  %30 = phi i1 [ true, %11 ], [ true, %17 ], [ %25, %21 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %7, %2
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 24
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %29, %28 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %94, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !74
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %46, %39 ], [ %37, %36 ]
  %41 = phi i32 [ %45, %39 ], [ 0, %36 ]
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %40, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = and i32 %43, 1
  %45 = add i32 %44, %41
  %46 = load ptr, ptr %40, align 8, !tbaa !74
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !156

48:                                               ; preds = %39, %36
  %49 = phi i32 [ 0, %36 ], [ %45, %39 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %94, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %53 = tail call ptr %52(i64 noundef 184, ptr noundef nonnull @.str.27) #14
  %54 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %53, ptr %54, align 8, !tbaa !132
  %55 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #14
  store ptr %55, ptr %53, align 8, !tbaa !151
  %56 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 1
  store ptr %34, ptr %56, align 8, !tbaa !157
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %58 = sext i32 %49 to i64
  %59 = shl nsw i64 %58, 2
  %60 = tail call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.28) #14
  %61 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 3
  store ptr %60, ptr %61, align 8, !tbaa !133
  %62 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 6
  tail call void @initNumInput(ptr noundef nonnull %62) #14
  store i16 0, ptr %62, align 8, !tbaa !158
  %63 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 6, i32 5
  %64 = load i16, ptr %63, align 8, !tbaa !159
  %65 = or i16 %64, 8
  store i16 %65, ptr %63, align 8, !tbaa !159
  %66 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38, i32 1
  %67 = load i8, ptr %66, align 4, !tbaa !160
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 6, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !161
  %70 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef nonnull %53), !range !131
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.MarkerMove, ptr %53, i64 0, i32 6, i32 2
  store i32 %72, ptr %73, align 8, !tbaa !162
  %74 = load ptr, ptr %34, align 8, !tbaa !74
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %51, %90
  %77 = phi ptr [ %92, %90 ], [ %74, %51 ]
  %78 = phi i32 [ %91, %90 ], [ 0, %51 ]
  %79 = getelementptr inbounds %struct.TimeMarker, ptr %77, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !75
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.TimeMarker, ptr %77, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !77
  %86 = load ptr, ptr %61, align 8, !tbaa !133
  %87 = sext i32 %78 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  store i32 %85, ptr %88, align 4, !tbaa !162
  %89 = add nsw i32 %78, 1
  br label %90

90:                                               ; preds = %76, %83
  %91 = phi i32 [ %89, %83 ], [ %78, %76 ]
  %92 = load ptr, ptr %77, align 8, !tbaa !74
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %76, !llvm.loop !163

94:                                               ; preds = %90, %51, %48, %33
  %95 = phi i8 [ 0, %33 ], [ 0, %48 ], [ 1, %51 ], [ 1, %90 ]
  ret i8 %95
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ed_marker_move_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.24) #14
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MarkerMove, ptr %8, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %33
  %19 = phi ptr [ %14, %16 ], [ %35, %33 ]
  %20 = phi i32 [ 0, %16 ], [ %34, %33 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !75
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %17, align 8, !tbaa !133
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !162
  %30 = add nsw i32 %29, %11
  %31 = getelementptr inbounds %struct.TimeMarker, ptr %19, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !77
  %32 = add nsw i32 %20, 1
  br label %33

33:                                               ; preds = %18, %25
  %34 = phi i32 [ %32, %25 ], [ %20, %18 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !74
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18, !llvm.loop !165

37:                                               ; preds = %33, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  %38 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %4) #14
  %39 = load ptr, ptr %5, align 8, !tbaa !164
  %40 = icmp eq ptr %6, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %4) #14
  br label %42

42:                                               ; preds = %41, %37
  ret void
}

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

declare void @initNumInput(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ed_marker_move_use_time(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.SpaceLink, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !152
  switch i32 %4, label %35 [
    i32 15, label %5
    i32 8, label %11
    i32 12, label %17
    i32 2, label %23
    i32 13, label %30
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %2, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !166
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  switch i32 %4, label %35 [
    i32 8, label %11
    i32 12, label %17
    i32 2, label %23
    i32 13, label %30
  ]

11:                                               ; preds = %1, %10
  %12 = getelementptr inbounds %struct.SpaceSeq, ptr %2, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !168
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  switch i32 %4, label %35 [
    i32 12, label %17
    i32 2, label %23
    i32 13, label %30
  ]

17:                                               ; preds = %1, %10, %16
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %2, i64 0, i32 11
  %19 = load i16, ptr %18, align 2, !tbaa !51
  %20 = and i16 %19, 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  switch i32 %4, label %35 [
    i32 2, label %23
    i32 13, label %30
  ]

23:                                               ; preds = %1, %10, %16, %22
  %24 = getelementptr inbounds %struct.SpaceIpo, ptr %2, i64 0, i32 11
  %25 = load i32, ptr %24, align 4, !tbaa !171
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %4, 13
  br i1 %29, label %30, label %35

30:                                               ; preds = %1, %10, %16, %22, %28
  %31 = getelementptr inbounds %struct.SpaceNla, ptr %2, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !173
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1, %10, %16, %22, %30, %28
  br label %36

36:                                               ; preds = %5, %11, %17, %23, %30, %35
  %37 = phi i8 [ 0, %35 ], [ 1, %30 ], [ 1, %23 ], [ 1, %17 ], [ 1, %11 ], [ 1, %5 ]
  ret i8 %37
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_screen_view3d_scene_sync(ptr noundef) local_unnamed_addr #1

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.24) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %11 = tail call fastcc zeroext i8 @ed_marker_move_use_time(ptr noundef %7), !range !131
  %12 = getelementptr inbounds %struct.MarkerMove, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %26, %16 ], [ %14, %2 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %2 ]
  %19 = phi ptr [ %24, %16 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.TimeMarker, ptr %17, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !75
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr %19, ptr %17
  %25 = add i32 %22, %18
  %26 = load ptr, ptr %17, align 8, !tbaa !74
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !175

28:                                               ; preds = %16
  %29 = icmp eq i32 %25, 1
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi ptr [ null, %2 ], [ %24, %28 ]
  %32 = phi i1 [ false, %2 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.MarkerMove, ptr %7, i64 0, i32 6
  %34 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %33) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %37) #14
  br label %53

38:                                               ; preds = %30
  %39 = icmp eq i8 %11, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 65
  %42 = load float, ptr %41, align 4, !tbaa !146
  %43 = fpext float %42 to double
  %44 = sitofp i32 %10 to double
  %45 = fmul double %44, %43
  %46 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 55
  %47 = load i16, ptr %46, align 4, !tbaa !145
  %48 = sitofp i16 %47 to double
  %49 = fdiv double %45, %48
  %50 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.29, double noundef %49) #14
  br label %53

51:                                               ; preds = %38
  %52 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.30, i32 noundef %10) #14
  br label %53

53:                                               ; preds = %40, %51, %36
  %54 = icmp ne ptr %31, null
  %55 = select i1 %32, i1 %54, i1 false
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = icmp eq i8 %11, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 65
  %60 = load float, ptr %59, align 4, !tbaa !146
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds %struct.TimeMarker, ptr %31, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !77
  %64 = sitofp i32 %63 to double
  %65 = fmul double %61, %64
  %66 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 55
  %67 = load i16, ptr %66, align 4, !tbaa !145
  %68 = sitofp i16 %67 to double
  %69 = fdiv double %65, %68
  %70 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.31, double noundef %69, ptr noundef nonnull %4) #14
  br label %77

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.TimeMarker, ptr %31, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !77
  %74 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %73, ptr noundef nonnull %4) #14
  br label %77

75:                                               ; preds = %53
  %76 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.33, ptr noundef nonnull %4) #14
  br label %77

77:                                               ; preds = %58, %71, %75
  %78 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_headerprint(ptr noundef %78, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  ret void
}

declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #1

declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_modal_tweak_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @apply_keyb_grid(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_duplicate_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !74
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %35, %58
  %39 = phi ptr [ %59, %58 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = and i32 %41, -2
  store i32 %45, ptr %40, align 4, !tbaa !75
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %47 = tail call ptr %46(i64 noundef 96, ptr noundef nonnull @.str.19) #14
  %48 = getelementptr inbounds %struct.TimeMarker, ptr %47, i64 0, i32 4
  store i32 1, ptr %48, align 4, !tbaa !75
  %49 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !77
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %47, i64 0, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.TimeMarker, ptr %47, i64 0, i32 3
  %53 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 3
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %52, ptr noundef nonnull %53, i64 noundef 64) #14
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !103
  %57 = getelementptr inbounds %struct.TimeMarker, ptr %47, i64 0, i32 5
  store ptr %56, ptr %57, align 8, !tbaa !103
  tail call void @BLI_addhead(ptr noundef nonnull %33, ptr noundef %47) #14
  br label %58

58:                                               ; preds = %44, %38
  %59 = load ptr, ptr %39, align 8, !tbaa !74
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %38, !llvm.loop !176

61:                                               ; preds = %58, %32, %35
  %62 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1), !range !131
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  tail call fastcc void @ed_marker_move_apply(ptr noundef %0, ptr noundef %1)
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !132
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %68 = getelementptr inbounds %struct.MarkerMove, ptr %66, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !133
  tail call void %67(ptr noundef %69) #14
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !74
  %71 = load ptr, ptr %65, align 8, !tbaa !132
  tail call void %70(ptr noundef %71) #14
  store ptr null, ptr %65, align 8, !tbaa !132
  %72 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %72, ptr noundef null) #14
  br label %73

73:                                               ; preds = %61, %64
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_duplicate_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i8 %10, 12
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !44
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 11
  %24 = load i16, ptr %23, align 2, !tbaa !51
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 4
  %28 = select i1 %26, ptr undef, ptr %27
  br label %29

29:                                               ; preds = %22, %18, %12
  %30 = phi ptr [ undef, %12 ], [ undef, %18 ], [ %28, %22 ]
  %31 = phi i1 [ true, %12 ], [ true, %18 ], [ %26, %22 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %8, %3
  %33 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 24
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %30, %29 ], [ %33, %32 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %37, %60
  %41 = phi ptr [ %61, %60 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %40
  %47 = and i32 %43, -2
  store i32 %47, ptr %42, align 4, !tbaa !75
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !74
  %49 = tail call ptr %48(i64 noundef 96, ptr noundef nonnull @.str.19) #14
  %50 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 4
  store i32 1, ptr %50, align 4, !tbaa !75
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %41, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 3
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %41, i64 0, i32 3
  %56 = tail call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef nonnull %55, i64 noundef 64) #14
  %57 = getelementptr inbounds %struct.TimeMarker, ptr %41, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 5
  store ptr %58, ptr %59, align 8, !tbaa !103
  tail call void @BLI_addhead(ptr noundef nonnull %35, ptr noundef %49) #14
  br label %60

60:                                               ; preds = %46, %40
  %61 = load ptr, ptr %41, align 8, !tbaa !74
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %40, !llvm.loop !176

63:                                               ; preds = %60, %34, %37
  %64 = tail call fastcc zeroext i8 @ed_marker_move_init(ptr noundef %0, ptr noundef %1), !range !131
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !132
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !136
  %71 = getelementptr inbounds %struct.MarkerMove, ptr %68, i64 0, i32 4
  store i32 %70, ptr %71, align 8, !tbaa !139
  %72 = getelementptr inbounds %struct.MarkerMove, ptr %68, i64 0, i32 5
  store i32 %70, ptr %72, align 4, !tbaa !140
  %73 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %74 = load i16, ptr %73, align 8, !tbaa !141
  %75 = sext i16 %74 to i32
  %76 = getelementptr inbounds %struct.MarkerMove, ptr %68, i64 0, i32 2
  store i32 %75, ptr %76, align 8, !tbaa !142
  %77 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  %78 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !143
  tail call void @RNA_int_set(ptr noundef %79, ptr noundef nonnull @.str.24, i32 noundef 0) #14
  tail call fastcc void @ed_marker_move_update_header(ptr noundef %0, ptr noundef %1)
  br label %80

80:                                               ; preds = %63, %66
  %81 = phi i32 [ 1, %66 ], [ 2, %63 ]
  %82 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %83 = load i8, ptr %82, align 8, !tbaa !34
  %84 = icmp eq i8 %83, 15
  %85 = or disjoint i32 %81, 8
  %86 = select i1 %84, i32 %81, i32 %85
  ret i32 %86
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_select_invoke_wrapper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.9) #14
  %8 = load ptr, ptr %5, align 8, !tbaa !143
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.10) #14
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !34
  %16 = icmp eq i8 %15, 12
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %19, i64 0, i32 9
  %21 = load i8, ptr %20, align 8, !tbaa !44
  %22 = icmp ult i8 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.SpaceAction, ptr %19, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.SpaceAction, ptr %19, i64 0, i32 11
  %29 = load i16, ptr %28, align 2, !tbaa !51
  %30 = and i16 %29, 64
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %struct.bAction, ptr %25, i64 0, i32 4
  %33 = select i1 %31, ptr undef, ptr %32
  br label %34

34:                                               ; preds = %27, %23, %17
  %35 = phi ptr [ undef, %17 ], [ undef, %23 ], [ %33, %27 ]
  %36 = phi i1 [ true, %17 ], [ true, %23 ], [ %31, %27 ]
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %13, %3
  %38 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 24
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %35, %34 ], [ %38, %37 ]
  %41 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %42 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #14
  %43 = icmp eq ptr %40, null
  br i1 %43, label %176, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !136
  %47 = getelementptr inbounds %struct.ARegion, ptr %41, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !177
  %49 = sub nsw i32 %46, %48
  %50 = sitofp i32 %49 to float
  %51 = tail call float @UI_view2d_region_to_view_x(ptr noundef %42, float noundef %50) #14
  %52 = load ptr, ptr %40, align 8, !tbaa !74
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %44, %54
  %55 = phi ptr [ %66, %54 ], [ %52, %44 ]
  %56 = phi float [ %65, %54 ], [ 1.000000e+06, %44 ]
  %57 = phi ptr [ %64, %54 ], [ null, %44 ]
  %58 = getelementptr inbounds %struct.TimeMarker, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !77
  %60 = sitofp i32 %59 to float
  %61 = fsub float %60, %51
  %62 = tail call float @llvm.fabs.f32(float %61)
  %63 = fcmp olt float %62, %56
  %64 = select i1 %63, ptr %55, ptr %57
  %65 = select i1 %63, float %62, float %56
  %66 = load ptr, ptr %55, align 8, !tbaa !74
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %54, !llvm.loop !81

68:                                               ; preds = %54, %44
  %69 = phi ptr [ null, %44 ], [ %64, %54 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TimeMarker, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !77
  br label %78

74:                                               ; preds = %68
  %75 = fadd float %51, 5.000000e-01
  %76 = tail call float @llvm.floor.f32(float %75)
  %77 = fptosi float %76 to i32
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i32 [ %73, %71 ], [ %77, %74 ]
  %80 = load ptr, ptr %40, align 8, !tbaa !74
  %81 = icmp eq ptr %80, null
  br i1 %81, label %97, label %82

82:                                               ; preds = %78, %94
  %83 = phi ptr [ %95, %94 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.TimeMarker, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !77
  %86 = icmp eq i32 %85, %79
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TimeMarker, ptr %83, i64 0, i32 4
  %89 = load i32, ptr %88, align 4, !tbaa !75
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %83, align 8, !tbaa !84
  br label %97

94:                                               ; preds = %87, %82
  %95 = load ptr, ptr %83, align 8, !tbaa !74
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %82, !llvm.loop !179

97:                                               ; preds = %94, %78, %92
  %98 = phi ptr [ %93, %92 ], [ null, %78 ], [ null, %94 ]
  %99 = and i32 %7, 255
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load ptr, ptr %40, align 8, !tbaa !74
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %109, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.TimeMarker, ptr %105, i64 0, i32 4
  %107 = load i32, ptr %106, align 4, !tbaa !75
  %108 = and i32 %107, -2
  store i32 %108, ptr %106, align 4, !tbaa !75
  %109 = load ptr, ptr %105, align 8, !tbaa !74
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %104, !llvm.loop !180

111:                                              ; preds = %104, %101, %97
  %112 = load ptr, ptr %40, align 8, !tbaa !82
  %113 = icmp eq ptr %112, null
  br i1 %113, label %131, label %114

114:                                              ; preds = %111
  %115 = icmp eq ptr %98, null
  %116 = select i1 %115, ptr %112, ptr %98
  br label %117

117:                                              ; preds = %126, %114
  %118 = phi ptr [ %116, %114 ], [ %129, %126 ]
  %119 = getelementptr inbounds %struct.TimeMarker, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !77
  %121 = icmp eq i32 %120, %79
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.TimeMarker, ptr %118, i64 0, i32 4
  %124 = load i32, ptr %123, align 4, !tbaa !75
  %125 = xor i32 %124, 1
  store i32 %125, ptr %123, align 4, !tbaa !75
  br label %131

126:                                              ; preds = %117
  %127 = load ptr, ptr %118, align 8, !tbaa !84
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr %112, ptr %127
  %130 = icmp eq ptr %129, %116
  br i1 %130, label %131, label %117, !llvm.loop !181

131:                                              ; preds = %126, %122, %111
  %132 = and i32 %9, 255
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %175, label %134

134:                                              ; preds = %131
  %135 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  br i1 %100, label %136, label %137

136:                                              ; preds = %134
  tail call void @BKE_scene_base_deselect_all(ptr noundef %135) #14
  br label %137

137:                                              ; preds = %136, %134
  br label %138

138:                                              ; preds = %137, %142
  %139 = phi ptr [ %140, %142 ], [ %40, %137 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !74
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TimeMarker, ptr %140, i64 0, i32 2
  %144 = load i32, ptr %143, align 8, !tbaa !77
  %145 = icmp eq i32 %144, %79
  br i1 %145, label %146, label %138, !llvm.loop !182

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TimeMarker, ptr %140, i64 0, i32 4
  %148 = load i32, ptr %147, align 4, !tbaa !75
  %149 = and i32 %148, 1
  br label %150

150:                                              ; preds = %138, %146
  %151 = phi i32 [ %149, %146 ], [ 0, %138 ]
  %152 = load ptr, ptr %40, align 8, !tbaa !74
  %153 = icmp eq ptr %152, null
  br i1 %153, label %174, label %154

154:                                              ; preds = %150
  %155 = trunc i32 %151 to i16
  %156 = icmp eq i32 %151, 0
  br label %157

157:                                              ; preds = %154, %171
  %158 = phi ptr [ %152, %154 ], [ %172, %171 ]
  %159 = getelementptr inbounds %struct.TimeMarker, ptr %158, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !103
  %161 = icmp eq ptr %160, null
  br i1 %161, label %171, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.TimeMarker, ptr %158, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !77
  %165 = icmp eq i32 %164, %79
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = tail call ptr @BKE_scene_base_find(ptr noundef %135, ptr noundef nonnull %160) #14
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  tail call void @ED_base_object_select(ptr noundef nonnull %167, i16 noundef signext %155) #14
  br i1 %156, label %171, label %170

170:                                              ; preds = %169
  tail call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %167) #14
  br label %171

171:                                              ; preds = %170, %169, %166, %162, %157
  %172 = load ptr, ptr %158, align 8, !tbaa !74
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %157, !llvm.loop !183

174:                                              ; preds = %171, %150
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %135) #14
  br label %175

175:                                              ; preds = %174, %131
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %176

176:                                              ; preds = %39, %175
  %177 = phi i32 [ 12, %175 ], [ 8, %39 ]
  ret i32 %177
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_markers_poll_markers_exist(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 12
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 9
  %13 = load i8, ptr %12, align 8, !tbaa !44
  %14 = icmp ult i8 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %11, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !51
  %22 = and i16 %21, 64
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.bAction, ptr %17, i64 0, i32 4
  %25 = select i1 %23, ptr undef, ptr %24
  br label %26

26:                                               ; preds = %19, %15, %9
  %27 = phi ptr [ undef, %9 ], [ undef, %15 ], [ %25, %19 ]
  %28 = phi i1 [ true, %9 ], [ true, %15 ], [ %23, %19 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %5, %1
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 24
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %27, %26 ], [ %30, %29 ]
  %33 = tail call i32 @ED_operator_animview_active(ptr noundef %0) #14
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %32, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 8, !tbaa !82
  %39 = icmp ne ptr %38, null
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ 0, %31 ], [ %40, %37 ]
  ret i32 %42
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare float @UI_view2d_region_to_view_x(ptr noundef, float noundef) local_unnamed_addr #1

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i8 %10, 12
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !44
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.SpaceAction, ptr %14, i64 0, i32 11
  %24 = load i16, ptr %23, align 2, !tbaa !51
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 4
  %28 = select i1 %26, ptr undef, ptr %27
  br label %29

29:                                               ; preds = %22, %18, %12
  %30 = phi ptr [ undef, %12 ], [ undef, %18 ], [ %28, %22 ]
  %31 = phi i1 [ true, %12 ], [ true, %18 ], [ %26, %22 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %8, %2
  %33 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 24
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %30, %29 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = tail call i32 @RNA_int_get(ptr noundef %37, ptr noundef nonnull @.str.44) #14
  %39 = load ptr, ptr %36, align 8, !tbaa !143
  %40 = tail call i32 @RNA_boolean_get(ptr noundef %39, ptr noundef nonnull @.str.9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #14
  call void @UI_view2d_region_to_view_rctf(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  %41 = icmp eq ptr %35, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %35, align 8, !tbaa !74
  %44 = icmp eq ptr %43, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %42
  %46 = and i32 %40, 255
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %45, %69
  %49 = phi ptr [ %43, %45 ], [ %70, %69 ]
  %50 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !77
  %52 = sitofp i32 %51 to float
  %53 = call zeroext i8 @BLI_rctf_isect_x(ptr noundef nonnull %3, float noundef %52) #14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  switch i32 %38, label %69 [
    i32 3, label %56
    i32 4, label %60
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !75
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !75
  br label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !75
  %63 = and i32 %62, -2
  store i32 %63, ptr %61, align 4, !tbaa !75
  br label %69

64:                                               ; preds = %48
  br i1 %47, label %65, label %69

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !75
  %68 = and i32 %67, -2
  store i32 %68, ptr %66, align 4, !tbaa !75
  br label %69

69:                                               ; preds = %55, %60, %56, %65, %64
  %70 = load ptr, ptr %49, align 8, !tbaa !74
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %48, !llvm.loop !184

72:                                               ; preds = %69, %42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %73

73:                                               ; preds = %34, %72
  %74 = phi i32 [ 1, %72 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_select_border_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  %6 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp ne i8 %7, 15
  %9 = and i32 %5, 36
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  %12 = or i32 %5, 8
  %13 = select i1 %11, i32 %12, i32 %5
  ret i32 %13
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #1

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_rctf_isect_x(ptr noundef, float noundef) local_unnamed_addr #1

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !143
  %36 = tail call i32 @RNA_enum_get(ptr noundef %35, ptr noundef nonnull @.str.47) #14
  %37 = icmp eq ptr %33, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %32
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %38, %44
  %41 = phi ptr [ %42, %44 ], [ %33, %38 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !74
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TimeMarker, ptr %42, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !75
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %40, label %49, !llvm.loop !92

49:                                               ; preds = %44, %40, %38
  %50 = phi i32 [ %36, %38 ], [ 2, %44 ], [ 1, %40 ]
  %51 = load ptr, ptr %33, align 8, !tbaa !74
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %49, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %49 ]
  switch i32 %50, label %67 [
    i32 1, label %55
    i32 2, label %59
    i32 3, label %63
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !75
  %58 = or i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !75
  br label %67

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !75
  %62 = and i32 %61, -2
  store i32 %62, ptr %60, align 4, !tbaa !75
  br label %67

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !75
  %66 = xor i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !75
  br label %67

67:                                               ; preds = %55, %59, %63, %53
  %68 = load ptr, ptr %54, align 8, !tbaa !74
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !185

70:                                               ; preds = %67, %49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %71

71:                                               ; preds = %32, %70
  %72 = phi i32 [ 4, %70 ], [ 2, %32 ]
  ret i32 %72
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_delete_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = tail call i32 @WM_operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  %6 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp ne i8 %7, 15
  %9 = and i32 %5, 36
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  %12 = or i32 %5, 8
  %13 = select i1 %11, i32 %12, i32 %5
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !82
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35, %47
  %39 = phi i8 [ %48, %47 ], [ 0, %35 ]
  %40 = phi ptr [ %41, %47 ], [ %36, %35 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %40, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !75
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  tail call void @BLI_freelinkN(ptr noundef nonnull %33, ptr noundef nonnull %40) #14
  br label %47

47:                                               ; preds = %38, %46
  %48 = phi i8 [ 1, %46 ], [ %39, %38 ]
  %49 = icmp eq ptr %41, null
  br i1 %49, label %50, label %38, !llvm.loop !186

50:                                               ; preds = %47
  %51 = icmp eq i8 %48, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %53

53:                                               ; preds = %35, %50, %52, %32
  %54 = phi i32 [ 2, %32 ], [ 4, %52 ], [ 4, %50 ], [ 4, %35 ]
  ret i32 %54
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_rename_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i8 %9, 12
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !44
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.SpaceAction, ptr %13, i64 0, i32 11
  %23 = load i16, ptr %22, align 2, !tbaa !51
  %24 = and i16 %23, 64
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds %struct.bAction, ptr %19, i64 0, i32 4
  %27 = select i1 %25, ptr undef, ptr %26
  br label %28

28:                                               ; preds = %21, %17, %11
  %29 = phi ptr [ undef, %11 ], [ undef, %17 ], [ %27, %21 ]
  %30 = phi i1 [ true, %11 ], [ true, %17 ], [ %25, %21 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %7, %3
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 24
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %29, %28 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33, %40
  %37 = phi ptr [ %38, %40 ], [ %34, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TimeMarker, ptr %38, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !75
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %36, label %45, !llvm.loop !92

45:                                               ; preds = %36, %40, %33
  %46 = phi ptr [ null, %33 ], [ %38, %40 ], [ null, %36 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %46, i64 0, i32 3
  tail call void @RNA_string_set(ptr noundef %50, ptr noundef nonnull @.str.52, ptr noundef nonnull %51) #14
  br label %52

52:                                               ; preds = %48, %45
  %53 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %54 = tail call i32 @WM_operator_props_popup_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  %55 = getelementptr inbounds %struct.ScrArea, ptr %53, i64 0, i32 8
  %56 = load i8, ptr %55, align 8, !tbaa !34
  %57 = icmp ne i8 %56, 15
  %58 = and i32 %54, 36
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  %61 = or i32 %54, 8
  %62 = select i1 %60, i32 %61, i32 %54
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_rename_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32, %39
  %36 = phi ptr [ %37, %39 ], [ %33, %32 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TimeMarker, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %35, label %44, !llvm.loop !92

44:                                               ; preds = %35, %39, %32
  %45 = phi ptr [ null, %32 ], [ %37, %39 ], [ null, %35 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct.TimeMarker, ptr %45, i64 0, i32 3
  tail call void @RNA_string_get(ptr noundef %49, ptr noundef nonnull @.str.52, ptr noundef nonnull %50) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  br label %51

51:                                               ; preds = %44, %47
  %52 = phi i32 [ 4, %47 ], [ 2, %44 ]
  ret i32 %52
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_props_popup_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_make_links_scene_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i8 %8, 12
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !44
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceAction, ptr %12, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !51
  %23 = and i16 %22, 64
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.bAction, ptr %18, i64 0, i32 4
  %26 = select i1 %24, ptr undef, ptr %25
  br label %27

27:                                               ; preds = %20, %16, %10
  %28 = phi ptr [ undef, %10 ], [ undef, %16 ], [ %26, %20 ]
  %29 = phi i1 [ true, %10 ], [ true, %16 ], [ %24, %20 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %6, %2
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 24
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  %34 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 11
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = tail call i32 @RNA_enum_get(ptr noundef %37, ptr noundef nonnull @.str.59) #14
  %39 = tail call ptr @BLI_findlink(ptr noundef nonnull %35, i32 noundef %38) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %32
  %42 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %33, align 8, !tbaa !74
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.Scene, ptr %39, i64 0, i32 24
  br label %49

49:                                               ; preds = %47, %58
  %50 = phi ptr [ %45, %47 ], [ %59, %58 ]
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !75
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !74
  %57 = tail call ptr %56(ptr noundef nonnull %50) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %48, ptr noundef nonnull %57) #14
  br label %58

58:                                               ; preds = %49, %55
  %59 = load ptr, ptr %50, align 8, !tbaa !74
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %49, !llvm.loop !187

61:                                               ; preds = %41, %32
  %62 = phi ptr [ @.str.61, %32 ], [ @.str.62, %41 ]
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %64, i32 noundef 32, ptr noundef nonnull %62) #14
  br label %65

65:                                               ; preds = %58, %61, %44
  %66 = phi i32 [ 4, %44 ], [ 2, %61 ], [ 4, %58 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_marker_make_links_scene_invoke_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %5 = tail call i32 @WM_menu_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  %6 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp ne i8 %7, 15
  %9 = and i32 %5, 36
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  %12 = or i32 %5, 8
  %13 = select i1 %11, i32 %12, i32 %5
  ret i32 %13
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_scene_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @ed_marker_camera_bind_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i8 %11, 12
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 9
  %17 = load i8, ptr %16, align 8, !tbaa !44
  %18 = icmp ult i8 %17, 2
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !51
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 4
  %29 = select i1 %27, ptr undef, ptr %28
  br label %30

30:                                               ; preds = %23, %19, %13
  %31 = phi ptr [ undef, %13 ], [ undef, %19 ], [ %29, %23 ]
  %32 = phi i1 [ true, %13 ], [ true, %19 ], [ %27, %23 ]
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %9, %2
  %34 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 24
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %31, %30 ], [ %34, %33 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35, %42
  %39 = phi ptr [ %40, %42 ], [ %36, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TimeMarker, ptr %40, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !75
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %38, label %47, !llvm.loop !92

47:                                               ; preds = %38, %42, %35
  %48 = phi ptr [ null, %35 ], [ %40, %42 ], [ null, %38 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %48, i64 0, i32 5
  store ptr %5, ptr %51, align 8, !tbaa !103
  %52 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %4) #14
  tail call void @BKE_screen_view3d_scene_sync(ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67239936, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 235012096, ptr noundef null) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %4) #14
  br label %53

53:                                               ; preds = %47, %50
  %54 = phi i32 [ 4, %50 ], [ 2, %47 ]
  ret i32 %54
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!35, !36, i64 96}
!44 = !{!45, !37, i64 336}
!45 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !37, i64 40, !47, i64 56, !36, i64 216, !49, i64 224, !37, i64 336, !37, i64 337, !41, i64 338, !46, i64 340}
!46 = !{!"float", !37, i64 0}
!47 = !{!"View2D", !48, i64 0, !48, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!49 = !{!"bDopeSheet", !36, i64 0, !42, i64 8, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108}
!50 = !{!45, !36, i64 216}
!51 = !{!45, !41, i64 338}
!52 = !{!53, !36, i64 48}
!53 = !{!"bAnimContext", !36, i64 0, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!54 = !{!53, !36, i64 16}
!55 = !{!56, !40, i64 680}
!56 = !{!"Scene", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !58, i64 280, !65, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !36, i64 4608, !71, i64 4616, !36, i64 4640, !72, i64 4648, !72, i64 4656, !60, i64 4664, !61, i64 4824, !73, i64 4888, !36, i64 4952}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!58 = !{!"RenderData", !59, i64 0, !36, i64 248, !36, i64 256, !62, i64 264, !63, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !46, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !48, i64 544, !48, i64 560, !39, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !40, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !46, i64 660, !46, i64 664, !41, i64 668, !41, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !46, i64 2528, !46, i64 2532, !41, i64 2536, !41, i64 2538, !46, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !40, i64 2576, !46, i64 2580, !37, i64 2584, !64, i64 2616, !40, i64 3976, !40, i64 3980}
!59 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!62 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!63 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !46, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!64 = !{!"BakeData", !59, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!65 = !{!"AudioData", !40, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !46, i64 24, !46, i64 28}
!66 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!67 = !{!"GameData", !66, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !68, i64 40, !41, i64 64, !41, i64 66, !46, i64 68, !69, i64 72, !46, i64 128, !46, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!68 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!69 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !40, i64 40, !46, i64 44, !46, i64 48, !41, i64 52, !41, i64 54}
!70 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!71 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!72 = !{!"long", !37, i64 0}
!73 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!74 = !{!36, !36, i64 0}
!75 = !{!76, !40, i64 84}
!76 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 20, !40, i64 84, !36, i64 88}
!77 = !{!76, !40, i64 16}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !79, !80}
!82 = !{!42, !36, i64 0}
!83 = !{!42, !36, i64 8}
!84 = !{!76, !36, i64 0}
!85 = distinct !{!85, !79, !80}
!86 = !{!46, !46, i64 0}
!87 = !{!88, !46, i64 16}
!88 = !{!"CfraElem", !36, i64 0, !36, i64 8, !46, i64 16, !40, i64 20}
!89 = distinct !{!89, !79, !80}
!90 = !{!88, !40, i64 20}
!91 = distinct !{!91, !79, !80}
!92 = distinct !{!92, !79, !80}
!93 = distinct !{!93, !79, !80}
!94 = !{!47, !46, i64 16}
!95 = !{!47, !46, i64 20}
!96 = !{!97, !46, i64 10908}
!97 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !46, i64 8956, !46, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !46, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !98, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !46, i64 10904, !46, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !99, i64 10928}
!98 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!99 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !41, i64 24, !37, i64 26}
!100 = !{!97, !40, i64 8524}
!101 = !{!39, !40, i64 12}
!102 = !{!39, !40, i64 8}
!103 = !{!76, !36, i64 88}
!104 = !{!47, !46, i64 28}
!105 = !{!37, !37, i64 0}
!106 = !{!107, !37, i64 1160}
!107 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !108, i64 312, !36, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !46, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !72, i64 1304, !72, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !42, i64 1400, !36, i64 1416}
!108 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!109 = distinct !{!109, !79, !80}
!110 = distinct !{!110, !79, !80}
!111 = !{!112, !36, i64 0}
!112 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !113, i64 152, !41, i64 184}
!113 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!114 = !{!112, !36, i64 24}
!115 = !{!112, !36, i64 8}
!116 = !{!112, !36, i64 32}
!117 = !{!112, !36, i64 48}
!118 = !{!112, !36, i64 72}
!119 = !{!112, !41, i64 184}
!120 = !{!112, !36, i64 64}
!121 = !{!112, !36, i64 56}
!122 = !{!112, !36, i64 88}
!123 = !{!112, !36, i64 104}
!124 = !{!125, !36, i64 176}
!125 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!126 = distinct !{!126, !79, !80}
!127 = distinct !{!127, !79, !80}
!128 = !{!129, !36, i64 88}
!129 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!130 = !{!129, !36, i64 120}
!131 = !{i8 0, i8 2}
!132 = !{!129, !36, i64 96}
!133 = !{!134, !36, i64 24}
!134 = !{!"MarkerMove", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !135, i64 40}
!135 = !{!"NumInput", !41, i64 0, !40, i64 4, !37, i64 8, !37, i64 20, !41, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !41, i64 68, !37, i64 70, !40, i64 136}
!136 = !{!137, !40, i64 20}
!137 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !40, i64 48, !40, i64 52, !138, i64 56, !40, i64 64, !40, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !40, i64 108, !36, i64 112}
!138 = !{!"double", !37, i64 0}
!139 = !{!134, !40, i64 32}
!140 = !{!134, !40, i64 36}
!141 = !{!137, !41, i64 16}
!142 = !{!134, !40, i64 16}
!143 = !{!129, !36, i64 112}
!144 = !{!137, !41, i64 18}
!145 = !{!56, !41, i64 820}
!146 = !{!56, !46, i64 900}
!147 = !{!39, !40, i64 4}
!148 = !{!39, !40, i64 0}
!149 = !{!48, !46, i64 4}
!150 = !{!48, !46, i64 0}
!151 = !{!134, !36, i64 0}
!152 = !{!153, !40, i64 32}
!153 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !37, i64 40}
!154 = !{!137, !41, i64 72}
!155 = !{!137, !41, i64 74}
!156 = distinct !{!156, !79, !80}
!157 = !{!134, !36, i64 8}
!158 = !{!134, !41, i64 40}
!159 = !{!41, !41, i64 0}
!160 = !{!56, !37, i64 4604}
!161 = !{!134, !40, i64 44}
!162 = !{!40, !40, i64 0}
!163 = distinct !{!163, !79, !80}
!164 = !{!56, !36, i64 128}
!165 = distinct !{!165, !79, !80}
!166 = !{!167, !40, i64 220}
!167 = !{!"SpaceTime", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !47, i64 40, !42, i64 200, !40, i64 216, !40, i64 220}
!168 = !{!169, !40, i64 232}
!169 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !37, i64 40, !47, i64 56, !46, i64 216, !46, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !46, i64 236, !40, i64 240, !40, i64 244, !36, i64 248, !170, i64 256}
!170 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!171 = !{!172, !40, i64 244}
!172 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !37, i64 40, !47, i64 56, !36, i64 216, !42, i64 224, !41, i64 240, !41, i64 242, !40, i64 244, !46, i64 248, !40, i64 252}
!173 = !{!174, !41, i64 58}
!174 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !37, i64 40, !41, i64 56, !41, i64 58, !40, i64 60, !36, i64 64, !47, i64 72}
!175 = distinct !{!175, !79, !80}
!176 = distinct !{!176, !79, !80}
!177 = !{!178, !40, i64 176}
!178 = !{!"ARegion", !36, i64 0, !36, i64 8, !47, i64 16, !39, i64 176, !39, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !46, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!179 = distinct !{!179, !79, !80}
!180 = distinct !{!180, !79, !80}
!181 = distinct !{!181, !79, !80}
!182 = distinct !{!182, !79, !80}
!183 = distinct !{!183, !79, !80}
!184 = distinct !{!184, !79, !80}
!185 = distinct !{!185, !79, !80}
!186 = distinct !{!186, !79, !80}
!187 = distinct !{!187, !79, !80}
