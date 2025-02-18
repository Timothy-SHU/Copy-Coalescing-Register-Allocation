; ModuleID = 'blender/source/blender/windowmanager/intern/wm_event_system.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_event_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.GHOST_TabletData = type { i32, float, float, float }
%struct.wmTabletData = type { i32, float, float, float }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
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
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%union.IDPropertyTemplate = type { %struct.anon }
%struct.anon = type { ptr, i16, i8 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon.2, ptr, ptr }
%struct.anon.2 = type { ptr }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmPaintCursor = type { ptr, ptr, ptr, ptr, ptr }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.GHOST_TEventTrackpadData = type { i32, i32, i32, i32, i32 }
%struct.GHOST_TEventKeyData = type { i32, i8, [6 x i8] }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.GHOST_TEventNDOFMotionData = type { float, float, float, float, float, float, float, i32 }
%struct.GHOST_TEventNDOFButtonData = type { i32, i16 }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"wmEvent\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"notifier\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: screen set %p\0A\00", align 1
@__func__.wm_event_do_notifiers = private unnamed_addr constant [22 x i8] c"wm_event_do_notifiers\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: screen delete %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"wmOperatorProperties\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: loading previous properties for '%s'\0A\00", align 1
@__func__.WM_operator_last_properties_init = private unnamed_addr constant [33 x i8] c"WM_operator_last_properties_init\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: storing properties for '%s'\0A\00", align 1
@__func__.WM_operator_last_properties_store = private unnamed_addr constant [34 x i8] c"WM_operator_last_properties_store\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [55 x i8] c"Entered region unintended for SPEC CPU purposes %s:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"blender/source/blender/windowmanager/intern/wm_event_system.c\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GL error: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"fileselect handler\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"event modal handler\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%s: called with NULL keymap\0A\00", align 1
@__func__.WM_event_add_keymap_handler = private unnamed_addr constant [28 x i8] c"WM_event_add_keymap_handler\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"event keymap handler\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"event ui handler\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"dropbox handler\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%s Send double click\0A\00", align 1
@__func__.wm_event_add_ghostevent = private unnamed_addr constant [24 x i8] c"wm_event_add_ghostevent\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"%s: ghost on your platform is misbehaving, utf8 events on key up!\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s: ghost detected an invalid unicode character '%d'!\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%s sending NDOF_MOTION, prev = %d %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"ReportTimerInfo\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Missing 'window' in context\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"%s: handle evt %d win %d op %s\0A\00", align 1
@__func__.wm_operator_invoke = private unnamed_addr constant [19 x i8] c"wm_operator_invoke\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"%s: invalid operator call '%s'\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"wmOperatorPtrRNA\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"wmOperatorReportList\00", align 1
@wm_operator_create.motherop = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"%s: handling CLICK\0A\00", align 1
@__func__.wm_handlers_do = private unnamed_addr constant [15 x i8] c"wm_handlers_do\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"%s:       handled! '%s'\0A\00", align 1
@__func__.wm_handlers_do_intern = private unnamed_addr constant [22 x i8] c"wm_handlers_do_intern\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"%s:       handled - and pass on! '%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"%s: error '%s' missing modal\0A\00", align 1
@__func__.wm_handler_operator_call = private unnamed_addr constant [25 x i8] c"wm_handler_operator_call\00", align 1
@wm_handler_ui_call.do_wheel_ui = internal unnamed_addr global i1 false, align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"customdata tablet\00", align 1
@wm_eventemulation.mmb_emulated = internal unnamed_addr global i1 false, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"customdata NDOF\00", align 1
@switch.table.wm_event_add_ghostevent = private unnamed_addr constant [7 x i16] [i16 1, i16 2, i16 3, i16 7, i16 8, i16 18, i16 19], align 2

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_add(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !38
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call ptr @GHOST_GetTabletData(ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 4, !tbaa !49
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %15 = load i32, ptr %7, align 4, !tbaa !49
  store i32 %15, ptr %14, align 4, !tbaa !52
  %16 = getelementptr inbounds %struct.GHOST_TabletData, ptr %7, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !54
  %18 = getelementptr inbounds %struct.wmTabletData, ptr %14, i64 0, i32 1
  store float %17, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.GHOST_TabletData, ptr %7, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !56
  %21 = getelementptr inbounds %struct.wmTabletData, ptr %14, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.GHOST_TabletData, ptr %7, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.wmTabletData, ptr %14, i64 0, i32 3
  store float %23, ptr %24, align 4, !tbaa !59
  br label %25

25:                                               ; preds = %2, %9, %12
  %26 = phi ptr [ %14, %12 ], [ null, %9 ], [ null, %2 ]
  %27 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 24
  store ptr %26, ptr %27, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %4) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 26
  %7 = load i16, ptr %6, align 2, !tbaa !63
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 25
  %11 = load i16, ptr %10, align 8, !tbaa !64
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @WM_drag_free_list(ptr noundef nonnull %3) #19
  br label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %3) #19
  br label %16

16:                                               ; preds = %5, %14, %13, %1
  %17 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %18) #19
  br label %22

22:                                               ; preds = %20, %16
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef %0) #19
  ret void
}

declare void @WM_drag_free_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_free_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 27
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %29, %27 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 26
  %12 = load i16, ptr %11, align 2, !tbaa !63
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  %16 = load i16, ptr %15, align 8, !tbaa !64
  %17 = icmp eq i16 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @WM_drag_free_list(ptr noundef nonnull %8) #19
  br label %21

19:                                               ; preds = %14
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %8) #19
  br label %21

21:                                               ; preds = %19, %18, %10, %5
  %22 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 24
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %23) #19
  br label %27

27:                                               ; preds = %21, %25
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %6) #19
  %29 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !llvm.loop !65

31:                                               ; preds = %27, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_event_init_from_window(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_add_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %3, %27
  %9 = phi i1 [ %29, %27 ], [ %7, %3 ]
  %10 = phi ptr [ %28, %27 ], [ %6, %3 ]
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !71
  %15 = or i32 %14, %12
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %10, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !72
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %10, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = or i32 %18, %20
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %10, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %8
  %28 = load ptr, ptr %10, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %8, !llvm.loop !75

30:                                               ; preds = %23
  br i1 %9, label %31, label %54

31:                                               ; preds = %27, %3, %30
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = tail call ptr %32(i64 noundef 64, ptr noundef nonnull @.str.1) #19
  %34 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 2
  store ptr %4, ptr %34, align 8, !tbaa !76
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %33) #19
  %35 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !77
  %37 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 7
  %41 = load i16, ptr %40, align 4, !tbaa !78
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 4
  store i32 %42, ptr %43, align 8, !tbaa !83
  br label %44

44:                                               ; preds = %39, %31
  %45 = and i32 %1, -16777216
  %46 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 5
  store i32 %45, ptr %46, align 4, !tbaa !69
  %47 = and i32 %1, 16711680
  %48 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 6
  store i32 %47, ptr %48, align 8, !tbaa !71
  %49 = and i32 %1, 65280
  %50 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 7
  store i32 %49, ptr %50, align 4, !tbaa !72
  %51 = and i32 %1, 255
  %52 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 8
  store i32 %51, ptr %52, align 8, !tbaa !73
  %53 = getelementptr inbounds %struct.wmNotifier, ptr %33, i64 0, i32 9
  store ptr %2, ptr %53, align 8, !tbaa !74
  br label %54

54:                                               ; preds = %30, %44
  ret void
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_main_add_notifier(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7, %30
  %12 = phi i1 [ %32, %30 ], [ %10, %7 ]
  %13 = phi ptr [ %31, %30 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %13, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !71
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %13, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !72
  %21 = or i32 %18, %20
  %22 = getelementptr inbounds %struct.wmNotifier, ptr %13, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !73
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %26, label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %13, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %11
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %11, !llvm.loop !75

33:                                               ; preds = %26
  br i1 %12, label %34, label %47

34:                                               ; preds = %30, %7, %33
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 64, ptr noundef nonnull @.str.1) #19
  %37 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 2
  store ptr %5, ptr %37, align 8, !tbaa !76
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %36) #19
  %38 = and i32 %0, -16777216
  %39 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 5
  store i32 %38, ptr %39, align 4, !tbaa !69
  %40 = and i32 %0, 16711680
  %41 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 6
  store i32 %40, ptr %41, align 8, !tbaa !71
  %42 = and i32 %0, 65280
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 7
  store i32 %42, ptr %43, align 4, !tbaa !72
  %44 = and i32 %0, 255
  %45 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 8
  store i32 %44, ptr %45, align 8, !tbaa !73
  %46 = getelementptr inbounds %struct.wmNotifier, ptr %36, i64 0, i32 9
  store ptr %1, ptr %46, align 8, !tbaa !74
  br label %47

47:                                               ; preds = %2, %33, %34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_main_remove_notifier_reference(ptr noundef readnone %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @G, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %18
  %11 = phi ptr [ %12, %18 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %11, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %11, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %17, i8 0, i64 48, i1 false)
  br label %18

18:                                               ; preds = %10, %16
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %10, !llvm.loop !94

20:                                               ; preds = %18, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_do_notifiers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %224, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 8
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 5
  br label %15

11:                                               ; preds = %105, %4
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 8
  %13 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %116, label %108

15:                                               ; preds = %8, %105
  %16 = phi ptr [ %6, %8 ], [ %106, %105 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %16) #19
  %17 = load ptr, ptr %9, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 29
  %21 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  %22 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  br label %23

23:                                               ; preds = %19, %91
  %24 = phi ptr [ %17, %19 ], [ %26, %91 ]
  %25 = phi i8 [ 0, %19 ], [ %85, %91 ]
  %26 = load ptr, ptr %24, align 8, !tbaa !93
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = icmp eq i32 %28, 16777216
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !71
  switch i32 %32, label %35 [
    i32 65536, label %33
    i32 131072, label %33
    i32 196608, label %34
  ]

33:                                               ; preds = %30, %30
  store i16 1, ptr %10, align 4, !tbaa !95
  br label %34

34:                                               ; preds = %30, %33
  tail call void @wm_window_title(ptr noundef nonnull %2, ptr noundef nonnull %16) #19
  br label %35

35:                                               ; preds = %34, %30, %23
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = icmp eq ptr %37, %16
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load i32, ptr %27, align 4, !tbaa !69
  %41 = icmp eq i32 %40, 50331648
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !71
  switch i32 %44, label %62 [
    i32 65536, label %45
    i32 131072, label %51
  ]

45:                                               ; preds = %42
  tail call void @UI_remove_popup_handlers_all(ptr noundef %0, ptr noundef nonnull %20) #19
  %46 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef %47) #19
  %48 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %57

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  tail call void @ED_screen_delete(ptr noundef %0, ptr noundef %53) #19
  %54 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51, %45
  %58 = phi ptr [ %46, %45 ], [ %52, %51 ]
  %59 = phi ptr [ @.str.2, %45 ], [ @.str.3, %51 ]
  %60 = load ptr, ptr %58, align 8, !tbaa !74
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull @__func__.wm_event_do_notifiers, ptr noundef %60)
  br label %62

62:                                               ; preds = %57, %42, %39, %51, %45, %35
  %63 = load ptr, ptr %36, align 8, !tbaa !77
  %64 = icmp eq ptr %63, %16
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = icmp eq ptr %63, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !74
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %21, align 8, !tbaa !97
  %73 = getelementptr inbounds %struct.bScreen, ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !98
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %67, %62
  %77 = load i32, ptr %27, align 4, !tbaa !69
  %78 = icmp eq i32 %77, 67108864
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.wmNotifier, ptr %24, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !71
  %82 = icmp eq i32 %81, 196608
  %83 = select i1 %82, i8 1, i8 %25
  br label %84

84:                                               ; preds = %79, %76, %71, %65
  %85 = phi i8 [ %25, %76 ], [ %25, %71 ], [ %25, %65 ], [ %83, %79 ]
  %86 = load i32, ptr %27, align 4, !tbaa !69
  switch i32 %86, label %91 [
    i32 67108864, label %87
    i32 83886080, label %87
    i32 268435456, label %87
    i32 16777216, label %87
  ]

87:                                               ; preds = %84, %84, %84, %84
  %88 = load ptr, ptr %22, align 8, !tbaa !97
  %89 = getelementptr inbounds %struct.bScreen, ptr %88, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  tail call void @ED_info_stats_clear(ptr noundef %90) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251854848, ptr noundef null)
  br label %91

91:                                               ; preds = %84, %87
  %92 = icmp eq ptr %26, null
  br i1 %92, label %93, label %23, !llvm.loop !100

93:                                               ; preds = %91, %15
  %94 = phi i8 [ 0, %15 ], [ %85, %91 ]
  %95 = icmp ne i8 %94, 0
  %96 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %101 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !97
  %103 = getelementptr inbounds %struct.bScreen, ptr %102, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !98
  tail call void @ED_update_for_newframe(ptr noundef %100, ptr noundef %104, i32 noundef 1) #19
  br label %105

105:                                              ; preds = %99, %93
  %106 = load ptr, ptr %16, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %11, label %15, !llvm.loop !101

108:                                              ; preds = %11, %173
  %109 = phi ptr [ %175, %173 ], [ %13, %11 ]
  %110 = load ptr, ptr %5, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %173, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.wmNotifier, ptr %109, i64 0, i32 5
  %114 = getelementptr inbounds %struct.wmNotifier, ptr %109, i64 0, i32 9
  %115 = getelementptr inbounds %struct.wmNotifier, ptr %109, i64 0, i32 9
  br label %119

116:                                              ; preds = %173, %11
  %117 = load ptr, ptr %5, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %177, label %181

119:                                              ; preds = %112, %170
  %120 = phi ptr [ %110, %112 ], [ %171, %170 ]
  %121 = load i32, ptr %113, align 4, !tbaa !69
  switch i32 %121, label %140 [
    i32 50331648, label %122
    i32 67108864, label %131
  ]

122:                                              ; preds = %119
  %123 = load ptr, ptr %114, align 8, !tbaa !74
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.wmWindow, ptr %120, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !97
  %128 = icmp eq ptr %123, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %125, %122
  %130 = icmp eq i32 %121, 67108864
  br i1 %130, label %131, label %140

131:                                              ; preds = %119, %129
  %132 = load ptr, ptr %115, align 8, !tbaa !74
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.wmWindow, ptr %120, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !97
  %137 = getelementptr inbounds %struct.bScreen, ptr %136, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !98
  %139 = icmp eq ptr %132, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %119, %134, %131, %129
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %120) #19
  tail call void @ED_screen_do_listen(ptr noundef %0, ptr noundef nonnull %109) #19
  %141 = getelementptr inbounds %struct.wmWindow, ptr %120, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !97
  %143 = getelementptr inbounds %struct.bScreen, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %140, %146
  %147 = phi ptr [ %149, %146 ], [ %144, %140 ]
  %148 = load ptr, ptr %141, align 8, !tbaa !97
  tail call void @ED_region_do_listen(ptr noundef %148, ptr noundef null, ptr noundef nonnull %147, ptr noundef nonnull %109) #19
  %149 = load ptr, ptr %147, align 8, !tbaa !34
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %146, !llvm.loop !102

151:                                              ; preds = %146, %140
  %152 = load ptr, ptr %141, align 8, !tbaa !97
  %153 = getelementptr inbounds %struct.bScreen, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %170, label %159

156:                                              ; preds = %165, %159
  %157 = load ptr, ptr %160, align 8, !tbaa !34
  %158 = icmp eq ptr %157, null
  br i1 %158, label %170, label %159, !llvm.loop !103

159:                                              ; preds = %151, %156
  %160 = phi ptr [ %157, %156 ], [ %154, %151 ]
  %161 = load ptr, ptr %141, align 8, !tbaa !97
  tail call void @ED_area_do_listen(ptr noundef %161, ptr noundef nonnull %160, ptr noundef nonnull %109) #19
  %162 = getelementptr inbounds %struct.ScrArea, ptr %160, i64 0, i32 20
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = icmp eq ptr %163, null
  br i1 %164, label %156, label %165

165:                                              ; preds = %159, %165
  %166 = phi ptr [ %168, %165 ], [ %163, %159 ]
  %167 = load ptr, ptr %141, align 8, !tbaa !97
  tail call void @ED_region_do_listen(ptr noundef %167, ptr noundef nonnull %160, ptr noundef nonnull %166, ptr noundef nonnull %109) #19
  %168 = load ptr, ptr %166, align 8, !tbaa !34
  %169 = icmp eq ptr %168, null
  br i1 %169, label %156, label %165, !llvm.loop !104

170:                                              ; preds = %156, %151, %125, %134
  %171 = load ptr, ptr %120, align 8, !tbaa !34
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %119, !llvm.loop !105

173:                                              ; preds = %170, %108
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %174(ptr noundef nonnull %109) #19
  %175 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #19
  %176 = icmp eq ptr %175, null
  br i1 %176, label %116, label %108, !llvm.loop !106

177:                                              ; preds = %181, %116
  %178 = phi i64 [ 0, %116 ], [ %187, %181 ]
  %179 = load ptr, ptr %5, align 8, !tbaa !34
  %180 = icmp eq ptr %179, null
  br i1 %180, label %223, label %190

181:                                              ; preds = %116, %181
  %182 = phi ptr [ %188, %181 ], [ %117, %116 ]
  %183 = phi i64 [ %187, %181 ], [ 0, %116 ]
  %184 = getelementptr inbounds %struct.wmWindow, ptr %182, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !97
  %186 = tail call i64 @ED_view3d_screen_datamask(ptr noundef %185) #19
  %187 = or i64 %186, %183
  %188 = load ptr, ptr %182, align 8, !tbaa !34
  %189 = icmp eq ptr %188, null
  br i1 %189, label %177, label %181, !llvm.loop !107

190:                                              ; preds = %177, %220
  %191 = phi ptr [ %221, %220 ], [ %179, %177 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %191) #19
  %192 = getelementptr inbounds %struct.wmWindow, ptr %191, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !97
  %194 = getelementptr inbounds %struct.bScreen, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !34
  %196 = icmp eq ptr %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %190, %203
  %198 = phi ptr [ %204, %203 ], [ %195, %190 ]
  %199 = getelementptr inbounds %struct.ScrArea, ptr %198, i64 0, i32 13
  %200 = load i16, ptr %199, align 8, !tbaa !108
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %198) #19
  tail call void @ED_area_do_refresh(ptr noundef %0, ptr noundef nonnull %198) #19
  br label %203

203:                                              ; preds = %197, %202
  %204 = load ptr, ptr %198, align 8, !tbaa !34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %197, !llvm.loop !110

206:                                              ; preds = %203, %190
  %207 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !111
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %206
  %210 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %211 = load ptr, ptr %192, align 8, !tbaa !97
  %212 = getelementptr inbounds %struct.bScreen, ptr %211, i64 0, i32 5
  %213 = load ptr, ptr %212, align 8, !tbaa !98
  %214 = getelementptr inbounds %struct.Scene, ptr %213, i64 0, i32 42
  store i64 %178, ptr %214, align 8, !tbaa !112
  %215 = getelementptr inbounds %struct.Scene, ptr %213, i64 0, i32 43
  %216 = load i64, ptr %215, align 8, !tbaa !129
  %217 = or i64 %216, %178
  store i64 %217, ptr %214, align 8, !tbaa !112
  %218 = getelementptr inbounds %struct.Main, ptr %210, i64 0, i32 46
  %219 = load ptr, ptr %218, align 8, !tbaa !130
  tail call void @BKE_scene_update_tagged(ptr noundef %219, ptr noundef %210, ptr noundef %213) #19
  br label %220

220:                                              ; preds = %209, %206
  %221 = load ptr, ptr %191, align 8, !tbaa !34
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %190, !llvm.loop !131

223:                                              ; preds = %220, %177
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #19
  br label %224

224:                                              ; preds = %1, %223
  ret void
}

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_window_title(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_remove_popup_handlers_all(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @ED_screen_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_info_stats_clear(ptr noundef) local_unnamed_addr #3

declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare void @ED_screen_do_listen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_do_listen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_do_listen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ED_view3d_screen_datamask(ptr noundef) local_unnamed_addr #3

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_do_refresh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_scene_update_tagged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %6, i64 0, i32 2
  %10 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %9, i8 noundef zeroext 0) #19
  %11 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %4, !llvm.loop !132

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #19
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0) #19
  br label %25

25:                                               ; preds = %8, %19, %23, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ], [ 1, %19 ], [ 0, %8 ]
  ret i32 %26
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i16 noundef signext %2, i8 noundef zeroext 1)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #19
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %0, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %63

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  switch i16 %4, label %20 [
    i16 0, label %12
    i16 1, label %12
    i16 4, label %12
    i16 5, label %12
  ]

12:                                               ; preds = %10, %10, %10, %10
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp eq i8 %5, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %14
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.21) #19
  br label %60

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %10, %17
  %21 = phi ptr [ %19, %17 ], [ null, %10 ]
  switch i16 %4, label %60 [
    i16 7, label %22
    i16 1, label %22
    i16 8, label %22
    i16 2, label %22
    i16 9, label %22
    i16 3, label %22
    i16 10, label %51
    i16 4, label %51
    i16 11, label %54
    i16 5, label %54
    i16 6, label %58
    i16 0, label %58
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20
  %23 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %24 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  switch i16 %4, label %26 [
    i16 8, label %27
    i16 2, label %27
    i16 9, label %25
    i16 3, label %25
  ]

25:                                               ; preds = %22, %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %22, %22, %26, %25
  %28 = phi i1 [ true, %26 ], [ false, %25 ], [ false, %22 ], [ false, %22 ]
  %29 = phi i32 [ 0, %26 ], [ 7, %25 ], [ 2, %22 ], [ 2, %22 ]
  %30 = icmp eq ptr %23, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !137
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %29, %34
  %36 = icmp ne ptr %24, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %40, label %49

38:                                               ; preds = %27
  %39 = icmp eq ptr %24, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %31, %38
  br i1 %28, label %41, label %43

41:                                               ; preds = %40
  %42 = tail call ptr @BKE_area_find_region_active_win(ptr noundef %24) #19
  br label %45

43:                                               ; preds = %40
  %44 = tail call ptr @BKE_area_find_region_type(ptr noundef %24, i32 noundef %29) #19
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %46) #19
  br label %49

49:                                               ; preds = %45, %48, %38, %31
  %50 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5)
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %23) #19
  br label %60

51:                                               ; preds = %20, %20
  %52 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #19
  %53 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5)
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %52) #19
  br label %60

54:                                               ; preds = %20, %20
  %55 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %56 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #19
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  %57 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5)
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %56) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %55) #19
  br label %60

58:                                               ; preds = %20, %20
  %59 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5)
  br label %60

60:                                               ; preds = %20, %14, %16, %58, %54, %51, %49
  %61 = phi i1 [ false, %58 ], [ false, %54 ], [ false, %51 ], [ false, %49 ], [ false, %16 ], [ false, %14 ], [ true, %20 ]
  %62 = phi i32 [ %59, %58 ], [ %57, %54 ], [ %53, %51 ], [ %50, %49 ], [ 0, %16 ], [ 0, %14 ], [ undef, %20 ]
  br i1 %61, label %63, label %64

63:                                               ; preds = %60, %6
  br label %64

64:                                               ; preds = %60, %63
  %65 = phi i32 [ 0, %63 ], [ %62, %60 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_operator_region_active_win_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !137
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull %12, ptr noundef nonnull %5) #19
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 15
  store i16 %14, ptr %15, align 4, !tbaa !138
  br label %16

16:                                               ; preds = %4, %7, %11, %1
  ret void
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ReportList, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  call void @BKE_reports_init(ptr noundef nonnull %4, i32 noundef 2) #19
  call void @BKE_report(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #19
  call fastcc void @wm_add_reports(ptr noundef %0, ptr noundef nonnull %4)
  call void @BKE_reports_clear(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  ret void
}

declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_add_reports(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ReportList, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !140
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %12 = tail call ptr @CTX_wm_reports(ptr noundef %0) #19
  tail call void @BLI_movelisttolist(ptr noundef %12, ptr noundef nonnull %1) #19
  %13 = getelementptr inbounds %struct.ReportList, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  tail call void @WM_event_remove_timer(ptr noundef %11, ptr noundef null, ptr noundef %14) #19
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %16 = tail call ptr @WM_event_add_timer(ptr noundef %11, ptr noundef %15, i32 noundef 278, double noundef 5.000000e-02) #19
  store ptr %16, ptr %13, align 8, !tbaa !141
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 20, ptr noundef nonnull @.str.20) #19
  %19 = load ptr, ptr %13, align 8, !tbaa !141
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 5
  store ptr %18, ptr %20, align 8, !tbaa !142
  br label %21

21:                                               ; preds = %10, %5, %2
  ret void
}

declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_reportf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.ReportList, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %6 = tail call ptr @BLI_dynstr_new() #19
  call void @llvm.va_start(ptr nonnull %5)
  call void @BLI_dynstr_vappendf(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %5) #19
  call void @llvm.va_end(ptr %5)
  %7 = call ptr @BLI_dynstr_get_cstring(ptr noundef %6) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  call void @BKE_reports_init(ptr noundef nonnull %4, i32 noundef 2) #19
  call void @BKE_report(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %7) #19
  call fastcc void @wm_add_reports(ptr noundef %0, ptr noundef nonnull %4)
  call void @BKE_reports_clear(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  call void @BLI_dynstr_free(ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

declare ptr @BLI_dynstr_new() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #3

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2), !range !144
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #19
  %6 = icmp eq ptr %1, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef nonnull %9)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %92, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !tbaa !145
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 19
  %21 = load i16, ptr %20, align 8, !tbaa !148
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !149
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !149
  br label %28

28:                                               ; preds = %24, %19
  %29 = tail call i32 %17(ptr noundef %0, ptr noundef nonnull %1) #19
  %30 = load ptr, ptr %8, align 8, !tbaa !145
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %30, i64 0, i32 19
  %32 = load i16, ptr %31, align 8, !tbaa !148
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !149
  %41 = add i16 %40, -1
  store i16 %41, ptr %39, align 2, !tbaa !149
  br label %42

42:                                               ; preds = %28, %35, %38, %14
  %43 = phi i32 [ %29, %38 ], [ %29, %35 ], [ %29, %28 ], [ 2, %14 ]
  %44 = and i32 %43, 6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %43, i8 noundef zeroext 0)
  br label %47

47:                                               ; preds = %46, %42
  %48 = and i32 %43, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %47
  %51 = icmp eq i8 %3, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %54 = load i16, ptr %53, align 2, !tbaa !149
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = load ptr, ptr %8, align 8, !tbaa !145
  %58 = getelementptr inbounds %struct.wmOperatorType, ptr %57, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !150
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  tail call void @IDP_FreeProperty(ptr noundef nonnull %59) #19
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %63 = load ptr, ptr %8, align 8, !tbaa !145
  %64 = getelementptr inbounds %struct.wmOperatorType, ptr %63, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !150
  tail call void %62(ptr noundef %65) #19
  %66 = load ptr, ptr %8, align 8, !tbaa !145
  %67 = getelementptr inbounds %struct.wmOperatorType, ptr %66, i64 0, i32 12
  store ptr null, ptr %67, align 8, !tbaa !150
  br label %68

68:                                               ; preds = %61, %56
  %69 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !151
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %8, align 8, !tbaa !145
  %78 = getelementptr inbounds %struct.wmOperatorType, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !152
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.WM_operator_last_properties_store, ptr noundef %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load ptr, ptr %69, align 8, !tbaa !151
  %83 = tail call ptr @IDP_CopyProperty(ptr noundef %82) #19
  %84 = load ptr, ptr %8, align 8, !tbaa !145
  %85 = getelementptr inbounds %struct.wmOperatorType, ptr %84, i64 0, i32 12
  store ptr %83, ptr %85, align 8, !tbaa !150
  br label %86

86:                                               ; preds = %81, %68, %52, %50
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2)
  br label %90

87:                                               ; preds = %47
  %88 = icmp eq i8 %2, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  tail call void @WM_operator_free(ptr noundef nonnull %1) #19
  br label %90

90:                                               ; preds = %87, %89, %86
  %91 = or i32 %43, 16
  br label %92

92:                                               ; preds = %11, %4, %7, %90
  %93 = phi i32 [ %91, %90 ], [ 2, %7 ], [ 2, %4 ], [ 2, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_call(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !144
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %14

14:                                               ; preds = %2, %4, %8, %12
  %15 = phi i32 [ %13, %12 ], [ 2, %8 ], [ 2, %4 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_repeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !144
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_operator_repeat_check(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %19, i64 0, i32 2
  %21 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %20, i8 noundef zeroext 0) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !154

30:                                               ; preds = %27, %23, %12, %8, %2
  %31 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 1, %12 ], [ 0, %23 ], [ 1, %27 ]
  ret i8 %31
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @WM_operator_last_properties_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %union.IDPropertyTemplate, align 8
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %10 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #19
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !145
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.WM_operator_last_properties_init, ptr noundef %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load ptr, ptr %4, align 8, !tbaa !145
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  %23 = call ptr @RNA_struct_iterator_property(ptr noundef %22) #19
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  call void @RNA_property_collection_begin(ptr noundef %25, ptr noundef %23, ptr noundef nonnull %3) #19
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !157
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  br label %31

31:                                               ; preds = %29, %54
  %32 = phi i8 [ 0, %29 ], [ %55, %54 ]
  %33 = load ptr, ptr %30, align 8, !tbaa.struct !161
  %34 = call i32 @RNA_property_flag(ptr noundef %33) #19
  %35 = and i32 %34, 268435456
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load ptr, ptr %24, align 8, !tbaa !156
  %39 = call zeroext i8 @RNA_property_is_set(ptr noundef %38, ptr noundef %33) #19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = call ptr @RNA_property_identifier(ptr noundef %33) #19
  %43 = load ptr, ptr %4, align 8, !tbaa !145
  %44 = getelementptr inbounds %struct.wmOperatorType, ptr %43, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !150
  %46 = call ptr @IDP_GetPropertyFromGroup(ptr noundef %45, ptr noundef %42) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = call ptr @IDP_CopyProperty(ptr noundef nonnull %46) #19
  %50 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !162
  %52 = or i16 %51, 128
  store i16 %52, ptr %50, align 2, !tbaa !162
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef %10, ptr noundef %49) #19
  br label %54

54:                                               ; preds = %41, %48, %37, %31
  %55 = phi i8 [ %32, %37 ], [ %32, %31 ], [ 1, %48 ], [ %32, %41 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #19
  %56 = load i32, ptr %26, align 8, !tbaa !157
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %31, !llvm.loop !165

58:                                               ; preds = %54, %19
  %59 = phi i8 [ 0, %19 ], [ %55, %54 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #19
  %60 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !151
  call void @IDP_MergeGroup(ptr noundef %61, ptr noundef %10, i8 noundef zeroext 1) #19
  call void @IDP_FreeProperty(ptr noundef %10) #19
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %62(ptr noundef %10) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  br label %63

63:                                               ; preds = %58, %1
  %64 = phi i8 [ %59, %58 ], [ 0, %1 ]
  ret i8 %64
}

declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @IDP_GetPropertyFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

declare void @IDP_MergeGroup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_operator_last_properties_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %5) #19
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %9 = load ptr, ptr %2, align 8, !tbaa !145
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  tail call void %8(ptr noundef %11) #19
  %12 = load ptr, ptr %2, align 8, !tbaa !145
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 12
  store ptr null, ptr %13, align 8, !tbaa !150
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !145
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !152
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.WM_operator_last_properties_store, ptr noundef %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load ptr, ptr %15, align 8, !tbaa !151
  %29 = tail call ptr @IDP_CopyProperty(ptr noundef %28) #19
  %30 = load ptr, ptr %2, align 8, !tbaa !145
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %30, i64 0, i32 12
  store ptr %29, ptr %31, align 8, !tbaa !150
  br label %32

32:                                               ; preds = %14, %27
  %33 = phi i8 [ 1, %27 ], [ 0, %14 ]
  ret i8 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef null, i16 noundef signext %2, i8 noundef zeroext 0)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %3, ptr noundef null, i16 noundef signext %2, i8 noundef zeroext 0)
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_operator_call_py(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %8 = icmp eq i8 %5, 0
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !149
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 2, !tbaa !149
  br label %15

15:                                               ; preds = %11, %6
  %16 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i16 noundef signext %2, i8 noundef zeroext 0)
  br i1 %10, label %17, label %24

17:                                               ; preds = %15
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %19 = icmp eq ptr %7, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !149
  %23 = add i16 %22, -1
  store i16 %23, ptr %21, align 2, !tbaa !149
  br label %24

24:                                               ; preds = %20, %17, %15
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_free_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_remove_handlers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %4 = tail call ptr @BLI_pophead(ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %110, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 6
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %106
  %10 = phi ptr [ %4, %6 ], [ %108, %106 ]
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  %13 = icmp eq ptr %12, null
  br i1 %13, label %80, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %23 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %11, align 8, !tbaa !166
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !169
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  br label %52

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bScreen, ptr %23, i64 0, i32 3
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, %30
  br i1 %40, label %41, label %35, !llvm.loop !170

41:                                               ; preds = %39
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %37) #19
  %42 = getelementptr inbounds %struct.ScrArea, ptr %37, i64 0, i32 20
  %43 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 9
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi ptr [ %42, %41 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %43, align 8, !tbaa !171
  %50 = icmp eq ptr %46, %49
  br i1 %50, label %51, label %44, !llvm.loop !172

51:                                               ; preds = %48
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %46) #19
  br label %52

52:                                               ; preds = %35, %44, %20, %25, %32, %51
  %53 = load ptr, ptr %11, align 8, !tbaa !166
  %54 = getelementptr inbounds %struct.wmOperator, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !145
  %56 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 19
  %57 = load i16, ptr %56, align 8, !tbaa !148
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i16, ptr %7, align 2, !tbaa !149
  %62 = add i16 %61, 1
  store i16 %62, ptr %7, align 2, !tbaa !149
  br label %63

63:                                               ; preds = %60, %52
  %64 = getelementptr inbounds %struct.wmOperatorType, ptr %55, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !168
  tail call void %65(ptr noundef %0, ptr noundef %53) #19
  %66 = load ptr, ptr %11, align 8, !tbaa !166
  %67 = getelementptr inbounds %struct.wmOperator, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !145
  %69 = getelementptr inbounds %struct.wmOperatorType, ptr %68, i64 0, i32 19
  %70 = load i16, ptr %69, align 8, !tbaa !148
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i16, ptr %8, align 2, !tbaa !149
  %75 = add i16 %74, -1
  store i16 %75, ptr %8, align 2, !tbaa !149
  br label %76

76:                                               ; preds = %73, %63
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %21) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %22) #19
  br label %77

77:                                               ; preds = %76, %14
  %78 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  tail call void @WM_cursor_grab_disable(ptr noundef %78, ptr noundef null) #19
  %79 = load ptr, ptr %11, align 8, !tbaa !166
  tail call void @WM_operator_free(ptr noundef %79) #19
  br label %106

80:                                               ; preds = %9
  %81 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !173
  %83 = icmp eq ptr %82, null
  br i1 %83, label %106, label %84

84:                                               ; preds = %80
  %85 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %86 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %87 = tail call ptr @CTX_wm_menu(ptr noundef %0) #19
  %88 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 13
  %89 = load ptr, ptr %88, align 8, !tbaa !174
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %89) #19
  br label %92

92:                                               ; preds = %91, %84
  %93 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 14
  %94 = load ptr, ptr %93, align 8, !tbaa !175
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %94) #19
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !176
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %99) #19
  br label %102

102:                                              ; preds = %101, %97
  %103 = load ptr, ptr %81, align 8, !tbaa !173
  %104 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !177
  tail call void %103(ptr noundef %0, ptr noundef %105) #19
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %85) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %86) #19
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef %87) #19
  br label %106

106:                                              ; preds = %80, %102, %77
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %107(ptr noundef nonnull %10) #19
  %108 = tail call ptr @BLI_pophead(ptr noundef %1) #19
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %9, !llvm.loop !178

110:                                              ; preds = %106, %2
  ret void
}

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_cursor_grab_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_free(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #3

declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @WM_userdef_event_map(i32 noundef %0) local_unnamed_addr #8 {
  switch i32 %0, label %32 [
    i32 6, label %2
    i32 5, label %7
    i32 20486, label %12
    i32 20487, label %17
    i32 13, label %22
    i32 12, label %27
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 3, i32 1
  br label %32

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %9 = and i32 %8, 16384
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 3
  br label %32

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 20483, i32 20485
  br label %32

17:                                               ; preds = %1
  %18 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 20485, i32 20483
  br label %32

22:                                               ; preds = %1
  %23 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !183
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 11, i32 10
  br label %32

27:                                               ; preds = %1
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !183
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 10, i32 11
  br label %32

32:                                               ; preds = %1, %27, %22, %17, %12, %7, %2
  %33 = phi i32 [ %31, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %7 ], [ %6, %2 ], [ %0, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_do_handlers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { [2 x i32], [6 x i8], i8, i8, i16, i16 }, align 8
  %4 = alloca { double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }, align 8
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  tail call void @WM_keyconfig_update(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 12
  br label %8

8:                                                ; preds = %588, %1
  %9 = phi ptr [ %6, %1 ], [ %10, %588 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %591, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 27
  %18 = tail call ptr @BLI_pophead(ptr noundef nonnull %17) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %44, %42 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.wmEvent, ptr %21, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmEvent, ptr %21, i64 0, i32 26
  %27 = load i16, ptr %26, align 2, !tbaa !63
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmEvent, ptr %21, i64 0, i32 25
  %31 = load i16, ptr %30, align 8, !tbaa !64
  %32 = icmp eq i16 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @WM_drag_free_list(ptr noundef nonnull %23) #19
  br label %36

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef nonnull %23) #19
  br label %36

36:                                               ; preds = %34, %33, %25, %20
  %37 = getelementptr inbounds %struct.wmEvent, ptr %21, i64 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %38) #19
  br label %42

42:                                               ; preds = %36, %40
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %21) #19
  %44 = tail call ptr @BLI_pophead(ptr noundef nonnull %17) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %70, label %20, !llvm.loop !65

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @sound_scene_playing(ptr noundef nonnull %48) #19
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %10) #19
  %54 = load ptr, ptr %13, align 8, !tbaa !97
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef %54) #19
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef nonnull %48) #19
  %55 = tail call ptr @ED_screen_animation_playing(ptr noundef %5) #19
  %56 = icmp ne ptr %55, null
  %57 = icmp ne i32 %51, 1
  %58 = select i1 %57, i1 true, i1 %56
  %59 = xor i1 %58, true
  %60 = icmp eq i32 %51, 0
  %61 = select i1 %60, i1 %56, i1 false
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef -1, i32 noundef 1) #19
  br label %65

65:                                               ; preds = %53, %63
  br i1 %60, label %66, label %69

66:                                               ; preds = %65
  %67 = load ptr, ptr @stderr, align 8, !tbaa !34
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2253) #20
  tail call void @exit(i32 noundef -1) #21
  unreachable

69:                                               ; preds = %65
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef null) #19
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef null) #19
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #19
  br label %70

70:                                               ; preds = %42, %16, %46, %69, %50
  %71 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 27
  %72 = load ptr, ptr %71, align 8, !tbaa !184
  %73 = icmp eq ptr %72, null
  br i1 %73, label %537, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 19
  %76 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 29
  %77 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 24
  %78 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 17
  %79 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 28
  %80 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 21
  br label %81

81:                                               ; preds = %74, %534
  %82 = phi ptr [ %72, %74 ], [ %535, %534 ]
  %83 = load i16, ptr %75, align 4, !tbaa !185
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 2
  %87 = load i16, ptr %86, align 8, !tbaa !186
  %88 = icmp eq i16 %83, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !187
  %92 = icmp eq i16 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i16 0, ptr %75, align 4, !tbaa !185
  br label %114

94:                                               ; preds = %89
  tail call void @BLI_remlink(ptr noundef nonnull %71, ptr noundef nonnull %82) #19
  %95 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 28
  %96 = load ptr, ptr %95, align 8, !tbaa !62
  %97 = icmp eq ptr %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 26
  %100 = load i16, ptr %99, align 2, !tbaa !63
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 25
  %104 = load i16, ptr %103, align 8, !tbaa !64
  %105 = icmp eq i16 %104, 3
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call void @WM_drag_free_list(ptr noundef nonnull %96) #19
  br label %109

107:                                              ; preds = %102
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %108(ptr noundef nonnull %96) #19
  br label %109

109:                                              ; preds = %107, %106, %98, %94
  %110 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 24
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  %112 = icmp eq ptr %111, null
  br i1 %112, label %529, label %113, !llvm.loop !188

113:                                              ; preds = %109
  br label %525, !llvm.loop !188

114:                                              ; preds = %93, %85, %81
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %10) #19
  %115 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 4
  %116 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bScreen, ptr %116, i64 0, i32 3
  br label %120

120:                                              ; preds = %124, %118
  %121 = phi ptr [ %119, %118 ], [ %122, %124 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.ScrArea, ptr %122, i64 0, i32 7
  %126 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %125, ptr noundef nonnull %115) #19
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %120, label %128, !llvm.loop !189

128:                                              ; preds = %120, %124, %114
  %129 = phi ptr [ null, %114 ], [ %122, %124 ], [ null, %120 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %129) #19
  %130 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %131 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %132 = icmp ne ptr %130, null
  %133 = icmp ne ptr %131, null
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ScrArea, ptr %131, i64 0, i32 20
  br label %137

137:                                              ; preds = %141, %135
  %138 = phi ptr [ %136, %135 ], [ %139, %141 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ARegion, ptr %139, i64 0, i32 3
  %143 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %142, ptr noundef nonnull %115) #19
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %137, label %145, !llvm.loop !190

145:                                              ; preds = %137, %141, %128
  %146 = phi ptr [ null, %128 ], [ %139, %141 ], [ null, %137 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %146) #19
  tail call void @wm_window_make_drawable(ptr noundef %5, ptr noundef nonnull %10) #19
  %147 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %148 = icmp eq ptr %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr %115, align 4, !tbaa !191
  %151 = getelementptr inbounds %struct.ARegion, ptr %147, i64 0, i32 3
  %152 = load i32, ptr %151, align 8, !tbaa !192
  %153 = sub nsw i32 %150, %152
  %154 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  store i32 %153, ptr %154, align 4, !tbaa !41
  %155 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 5
  %156 = load i32, ptr %155, align 8, !tbaa !193
  %157 = getelementptr inbounds %struct.ARegion, ptr %147, i64 0, i32 3, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !194
  %159 = sub nsw i32 %156, %158
  br label %162

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  store i32 -1, ptr %161, align 4, !tbaa !41
  br label %162

162:                                              ; preds = %149, %160
  %163 = phi i32 [ %159, %149 ], [ -1, %160 ]
  %164 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  store i32 %163, ptr %164, align 4, !tbaa !41
  %165 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %76)
  %166 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %167 = icmp eq ptr %166, null
  br i1 %167, label %532, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %7, align 8, !tbaa !195
  %170 = icmp eq ptr %169, null
  br i1 %170, label %205, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 2
  %173 = load i16, ptr %172, align 8, !tbaa !186
  switch i16 %173, label %195 [
    i16 217, label %192
    i16 216, label %192
    i16 215, label %192
    i16 214, label %192
    i16 213, label %192
    i16 212, label %192
    i16 4, label %192
    i16 172, label %192
    i16 218, label %174
    i16 1, label %175
  ]

174:                                              ; preds = %171
  tail call void @WM_drag_free_list(ptr noundef nonnull %7) #19
  br label %192

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 3
  %177 = load i16, ptr %176, align 2, !tbaa !187
  %178 = icmp eq i16 %177, 2
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  store i16 20515, ptr %172, align 8, !tbaa !186
  %180 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 28
  %181 = load ptr, ptr %180, align 8, !tbaa !62
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 26
  %185 = load i16, ptr %184, align 2, !tbaa !63
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %188(ptr noundef nonnull %181) #19
  br label %189

189:                                              ; preds = %187, %183, %179
  %190 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 25
  store i16 3, ptr %190, align 8, !tbaa !64
  store ptr %7, ptr %180, align 8, !tbaa !62
  %191 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 26
  store i16 1, ptr %191, align 2, !tbaa !63
  br label %192

192:                                              ; preds = %171, %171, %171, %171, %171, %171, %171, %171, %174, %189
  %193 = load ptr, ptr %13, align 8, !tbaa !97
  %194 = getelementptr inbounds %struct.bScreen, ptr %193, i64 0, i32 16
  store i16 1, ptr %194, align 2, !tbaa !196
  br label %195

195:                                              ; preds = %192, %171, %175
  %196 = load ptr, ptr %13, align 8, !tbaa !97
  %197 = getelementptr inbounds %struct.bScreen, ptr %196, i64 0, i32 16
  %198 = load i16, ptr %197, align 2, !tbaa !196
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load i32, ptr %77, align 8, !tbaa !197
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.bScreen, ptr %196, i64 0, i32 12
  store i16 1, ptr %204, align 2, !tbaa !198
  br label %205

205:                                              ; preds = %168, %195, %200, %203
  tail call void @wm_tweakevent_test(ptr noundef %0, ptr noundef nonnull %82, i32 noundef %165) #19
  %206 = and i32 %165, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %506

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 2
  %210 = load i16, ptr %209, align 8, !tbaa !186
  switch i16 %210, label %294 [
    i16 4, label %211
    i16 400, label %293
  ]

211:                                              ; preds = %208
  tail call void @ED_screen_set_subwinactive(ptr noundef %0, ptr noundef nonnull %82) #19
  %212 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %213 = getelementptr inbounds %struct.wmWindowManager, ptr %212, i64 0, i32 11
  %214 = load ptr, ptr %213, align 8, !tbaa !199
  %215 = icmp eq ptr %214, null
  br i1 %215, label %294, label %216

216:                                              ; preds = %211
  %217 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %218 = icmp eq ptr %217, null
  br i1 %218, label %240, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %213, align 8, !tbaa !199
  %221 = icmp eq ptr %220, null
  br i1 %221, label %235, label %222

222:                                              ; preds = %219, %232
  %223 = phi ptr [ %233, %232 ], [ %220, %219 ]
  %224 = getelementptr inbounds %struct.wmPaintCursor, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !200
  %226 = icmp eq ptr %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = tail call i32 %225(ptr noundef %0) #19
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %227, %222
  %231 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %231, ptr noundef nonnull %217) #19
  br label %232

232:                                              ; preds = %230, %227
  %233 = load ptr, ptr %223, align 8, !tbaa !202
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %222

235:                                              ; preds = %232, %219
  %236 = getelementptr inbounds %struct.ARegion, ptr %217, i64 0, i32 3
  %237 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 12
  %238 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %236, ptr noundef nonnull %237) #19
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %294

240:                                              ; preds = %235, %216
  %241 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %242 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 12
  %243 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %244 = icmp eq ptr %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.bScreen, ptr %243, i64 0, i32 3
  br label %247

247:                                              ; preds = %251, %245
  %248 = phi ptr [ %246, %245 ], [ %249, %251 ]
  %249 = load ptr, ptr %248, align 8, !tbaa !34
  %250 = icmp eq ptr %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.ScrArea, ptr %249, i64 0, i32 7
  %253 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %252, ptr noundef nonnull %242) #19
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %247, label %255, !llvm.loop !189

255:                                              ; preds = %251, %247, %240
  %256 = phi ptr [ null, %240 ], [ %249, %251 ], [ null, %247 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %256) #19
  %257 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %258 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %259 = icmp ne ptr %257, null
  %260 = icmp ne ptr %258, null
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %272

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.ScrArea, ptr %258, i64 0, i32 20
  br label %264

264:                                              ; preds = %268, %262
  %265 = phi ptr [ %263, %262 ], [ %266, %268 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !34
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.ARegion, ptr %266, i64 0, i32 3
  %270 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %269, ptr noundef nonnull %242) #19
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %264, label %272, !llvm.loop !190

272:                                              ; preds = %264, %268, %255
  %273 = phi ptr [ null, %255 ], [ %266, %268 ], [ null, %264 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %273) #19
  %274 = load ptr, ptr %213, align 8, !tbaa !199
  %275 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %276 = icmp ne ptr %275, null
  %277 = icmp ne ptr %274, null
  %278 = and i1 %277, %276
  br i1 %278, label %279, label %292

279:                                              ; preds = %272, %289
  %280 = phi ptr [ %290, %289 ], [ %274, %272 ]
  %281 = getelementptr inbounds %struct.wmPaintCursor, ptr %280, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !200
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = tail call i32 %282(ptr noundef %0) #19
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284, %279
  %288 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %288, ptr noundef nonnull %275) #19
  br label %289

289:                                              ; preds = %287, %284
  %290 = load ptr, ptr %280, align 8, !tbaa !202
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %279

292:                                              ; preds = %289, %272
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %241) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %217) #19
  br label %294

293:                                              ; preds = %208
  store i16 1, ptr %78, align 2, !tbaa !203
  br label %294

294:                                              ; preds = %292, %235, %211, %208, %293
  %295 = load ptr, ptr %13, align 8, !tbaa !97
  %296 = getelementptr inbounds %struct.bScreen, ptr %295, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !34
  %298 = icmp eq ptr %297, null
  br i1 %298, label %430, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 12
  %301 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 12
  %302 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  %303 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 5
  %304 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  %305 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  %306 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  %307 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  %308 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 5
  %309 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  %310 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  %311 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  br label %312

312:                                              ; preds = %299, %425
  %313 = phi ptr [ %297, %299 ], [ %428, %425 ]
  %314 = phi i32 [ 0, %299 ], [ %427, %425 ]
  %315 = phi i32 [ %165, %299 ], [ %426, %425 ]
  %316 = getelementptr inbounds %struct.ScrArea, ptr %313, i64 0, i32 7
  %317 = load i16, ptr %209, align 8, !tbaa !186
  %318 = freeze i16 %317
  %319 = and i16 %318, -16
  %320 = icmp eq i16 %319, 272
  br i1 %320, label %332, label %321

321:                                              ; preds = %312
  switch i16 %318, label %322 [
    i16 20513, label %332
    i16 260, label %332
  ]

322:                                              ; preds = %321
  %323 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %316, ptr noundef nonnull %115) #19
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %322
  %326 = load i16, ptr %209, align 8, !tbaa !186
  %327 = icmp eq i16 %326, 4
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %316, ptr noundef nonnull %300) #19
  %330 = icmp ne i8 %329, 0
  %331 = zext i1 %330 to i32
  br label %332

332:                                              ; preds = %312, %321, %321, %322, %325, %328
  %333 = phi i32 [ 1, %321 ], [ 1, %322 ], [ %331, %328 ], [ 0, %325 ], [ 1, %312 ], [ 1, %321 ]
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %425, label %335

335:                                              ; preds = %332
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %313) #19
  %336 = and i32 %315, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %401

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ScrArea, ptr %313, i64 0, i32 20
  %340 = load ptr, ptr %339, align 8, !tbaa !34
  %341 = icmp eq ptr %340, null
  br i1 %341, label %401, label %342

342:                                              ; preds = %338, %396
  %343 = phi ptr [ %399, %396 ], [ %340, %338 ]
  %344 = phi i32 [ %398, %396 ], [ %314, %338 ]
  %345 = phi i32 [ %397, %396 ], [ %315, %338 ]
  %346 = getelementptr inbounds %struct.ARegion, ptr %343, i64 0, i32 3
  %347 = load i16, ptr %209, align 8, !tbaa !186
  %348 = freeze i16 %347
  %349 = and i16 %348, -16
  %350 = icmp eq i16 %349, 272
  br i1 %350, label %362, label %351

351:                                              ; preds = %342
  switch i16 %348, label %352 [
    i16 20513, label %362
    i16 260, label %362
  ]

352:                                              ; preds = %351
  %353 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %346, ptr noundef nonnull %115) #19
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %352
  %356 = load i16, ptr %209, align 8, !tbaa !186
  %357 = icmp eq i16 %356, 4
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %346, ptr noundef nonnull %301) #19
  %360 = icmp ne i8 %359, 0
  %361 = zext i1 %360 to i32
  br label %362

362:                                              ; preds = %342, %351, %351, %352, %355, %358
  %363 = phi i32 [ 1, %351 ], [ 1, %352 ], [ %361, %358 ], [ 0, %355 ], [ 1, %342 ], [ 1, %351 ]
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %396, label %365

365:                                              ; preds = %362
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %343) #19
  %366 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %367 = icmp eq ptr %366, null
  br i1 %367, label %377, label %368

368:                                              ; preds = %365
  %369 = load i32, ptr %115, align 4, !tbaa !191
  %370 = getelementptr inbounds %struct.ARegion, ptr %366, i64 0, i32 3
  %371 = load i32, ptr %370, align 8, !tbaa !192
  %372 = sub nsw i32 %369, %371
  store i32 %372, ptr %302, align 4, !tbaa !41
  %373 = load i32, ptr %303, align 8, !tbaa !193
  %374 = getelementptr inbounds %struct.ARegion, ptr %366, i64 0, i32 3, i32 2
  %375 = load i32, ptr %374, align 8, !tbaa !194
  %376 = sub nsw i32 %373, %375
  store i32 %376, ptr %304, align 4, !tbaa !41
  br label %378

377:                                              ; preds = %365
  store i32 -1, ptr %305, align 4, !tbaa !41
  store i32 -1, ptr %306, align 4, !tbaa !41
  br label %378

378:                                              ; preds = %368, %377
  %379 = load ptr, ptr %7, align 8, !tbaa !195
  %380 = icmp eq ptr %379, null
  br i1 %380, label %384, label %381

381:                                              ; preds = %378
  %382 = load i16, ptr %209, align 8, !tbaa !186
  switch i16 %382, label %384 [
    i16 4, label %383
    i16 20515, label %383
    i16 217, label %383
    i16 216, label %383
    i16 215, label %383
    i16 214, label %383
    i16 213, label %383
    i16 212, label %383
    i16 172, label %383
  ]

383:                                              ; preds = %381, %381, %381, %381, %381, %381, %381, %381, %381
  tail call void @wm_drags_check_ops(ptr noundef %0, ptr noundef nonnull %82) #19
  br label %384

384:                                              ; preds = %381, %383, %378
  %385 = getelementptr inbounds %struct.ARegion, ptr %343, i64 0, i32 26
  %386 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %385)
  %387 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %388 = icmp eq ptr %387, null
  br i1 %388, label %532, label %389

389:                                              ; preds = %384
  %390 = or i32 %386, %345
  %391 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %346, ptr noundef nonnull %115) #19
  %392 = zext i8 %391 to i32
  %393 = or i32 %344, %392
  %394 = and i32 %390, 1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %362, %389
  %397 = phi i32 [ %390, %389 ], [ %345, %362 ]
  %398 = phi i32 [ %393, %389 ], [ %344, %362 ]
  %399 = load ptr, ptr %343, align 8, !tbaa !34
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %342, !llvm.loop !204

401:                                              ; preds = %389, %396, %338, %335
  %402 = phi i32 [ %315, %335 ], [ %315, %338 ], [ %397, %396 ], [ %390, %389 ]
  %403 = phi i32 [ %314, %335 ], [ %314, %338 ], [ %398, %396 ], [ %393, %389 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #19
  %404 = and i32 %402, 1
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %423

406:                                              ; preds = %401
  %407 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %408 = icmp eq ptr %407, null
  br i1 %408, label %418, label %409

409:                                              ; preds = %406
  %410 = load i32, ptr %115, align 4, !tbaa !191
  %411 = getelementptr inbounds %struct.ARegion, ptr %407, i64 0, i32 3
  %412 = load i32, ptr %411, align 8, !tbaa !192
  %413 = sub nsw i32 %410, %412
  store i32 %413, ptr %307, align 4, !tbaa !41
  %414 = load i32, ptr %308, align 8, !tbaa !193
  %415 = getelementptr inbounds %struct.ARegion, ptr %407, i64 0, i32 3, i32 2
  %416 = load i32, ptr %415, align 8, !tbaa !194
  %417 = sub nsw i32 %414, %416
  store i32 %417, ptr %309, align 4, !tbaa !41
  br label %419

418:                                              ; preds = %406
  store i32 -1, ptr %310, align 4, !tbaa !41
  store i32 -1, ptr %311, align 4, !tbaa !41
  br label %419

419:                                              ; preds = %409, %418
  %420 = getelementptr inbounds %struct.ScrArea, ptr %313, i64 0, i32 21
  %421 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %420)
  %422 = or i32 %421, %402
  br label %423

423:                                              ; preds = %419, %401
  %424 = phi i32 [ %422, %419 ], [ %402, %401 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  br label %425

425:                                              ; preds = %332, %423
  %426 = phi i32 [ %424, %423 ], [ %315, %332 ]
  %427 = phi i32 [ %403, %423 ], [ %314, %332 ]
  %428 = load ptr, ptr %313, align 8, !tbaa !34
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %312, !llvm.loop !205

430:                                              ; preds = %425, %294
  %431 = phi i32 [ %165, %294 ], [ %426, %425 ]
  %432 = phi i32 [ 0, %294 ], [ %427, %425 ]
  %433 = and i32 %431, 1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %488

435:                                              ; preds = %430
  %436 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %437 = icmp eq ptr %436, null
  br i1 %437, label %448, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.bScreen, ptr %436, i64 0, i32 3
  br label %440

440:                                              ; preds = %444, %438
  %441 = phi ptr [ %439, %438 ], [ %442, %444 ]
  %442 = load ptr, ptr %441, align 8, !tbaa !34
  %443 = icmp eq ptr %442, null
  br i1 %443, label %448, label %444

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.ScrArea, ptr %442, i64 0, i32 7
  %446 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %445, ptr noundef nonnull %115) #19
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %440, label %448, !llvm.loop !189

448:                                              ; preds = %440, %444, %435
  %449 = phi ptr [ null, %435 ], [ %442, %444 ], [ null, %440 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %449) #19
  %450 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %451 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %452 = icmp ne ptr %450, null
  %453 = icmp ne ptr %451, null
  %454 = select i1 %452, i1 %453, i1 false
  br i1 %454, label %455, label %465

455:                                              ; preds = %448
  %456 = getelementptr inbounds %struct.ScrArea, ptr %451, i64 0, i32 20
  br label %457

457:                                              ; preds = %461, %455
  %458 = phi ptr [ %456, %455 ], [ %459, %461 ]
  %459 = load ptr, ptr %458, align 8, !tbaa !34
  %460 = icmp eq ptr %459, null
  br i1 %460, label %465, label %461

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.ARegion, ptr %459, i64 0, i32 3
  %463 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %462, ptr noundef nonnull %115) #19
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %457, label %465, !llvm.loop !190

465:                                              ; preds = %457, %461, %448
  %466 = phi ptr [ null, %448 ], [ %459, %461 ], [ null, %457 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %466) #19
  %467 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %468 = icmp eq ptr %467, null
  br i1 %468, label %480, label %469

469:                                              ; preds = %465
  %470 = load i32, ptr %115, align 4, !tbaa !191
  %471 = getelementptr inbounds %struct.ARegion, ptr %467, i64 0, i32 3
  %472 = load i32, ptr %471, align 8, !tbaa !192
  %473 = sub nsw i32 %470, %472
  %474 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  store i32 %473, ptr %474, align 4, !tbaa !41
  %475 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 5
  %476 = load i32, ptr %475, align 8, !tbaa !193
  %477 = getelementptr inbounds %struct.ARegion, ptr %467, i64 0, i32 3, i32 2
  %478 = load i32, ptr %477, align 8, !tbaa !194
  %479 = sub nsw i32 %476, %478
  br label %482

480:                                              ; preds = %465
  %481 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6
  store i32 -1, ptr %481, align 4, !tbaa !41
  br label %482

482:                                              ; preds = %469, %480
  %483 = phi i32 [ %479, %469 ], [ -1, %480 ]
  %484 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 6, i64 1
  store i32 %483, ptr %484, align 4, !tbaa !41
  %485 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %79)
  %486 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %487 = icmp eq ptr %486, null
  br i1 %487, label %532, label %488

488:                                              ; preds = %482, %430
  %489 = icmp eq i32 %432, 0
  br i1 %489, label %506, label %490

490:                                              ; preds = %488
  %491 = load ptr, ptr %13, align 8, !tbaa !97
  %492 = icmp eq ptr %491, null
  br i1 %492, label %506, label %493

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.bScreen, ptr %491, i64 0, i32 19
  %495 = load i16, ptr %494, align 4, !tbaa !206
  %496 = getelementptr inbounds %struct.bScreen, ptr %491, i64 0, i32 18
  %497 = load i16, ptr %496, align 2, !tbaa !207
  %498 = icmp eq i16 %495, %497
  br i1 %498, label %506, label %499

499:                                              ; preds = %493
  %500 = load i32, ptr %115, align 4, !tbaa !191
  %501 = load ptr, ptr %80, align 8, !tbaa !68
  %502 = getelementptr inbounds %struct.wmEvent, ptr %501, i64 0, i32 12
  store i32 %500, ptr %502, align 8, !tbaa !208
  %503 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 5
  %504 = load i32, ptr %503, align 8, !tbaa !193
  %505 = getelementptr inbounds %struct.wmEvent, ptr %501, i64 0, i32 13
  store i32 %504, ptr %505, align 4, !tbaa !209
  br label %506

506:                                              ; preds = %488, %490, %493, %499, %205
  tail call void @BLI_remlink(ptr noundef nonnull %71, ptr noundef nonnull %82) #19
  %507 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 28
  %508 = load ptr, ptr %507, align 8, !tbaa !62
  %509 = icmp eq ptr %508, null
  br i1 %509, label %521, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 26
  %512 = load i16, ptr %511, align 2, !tbaa !63
  %513 = icmp eq i16 %512, 0
  br i1 %513, label %521, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 25
  %516 = load i16, ptr %515, align 8, !tbaa !64
  %517 = icmp eq i16 %516, 3
  br i1 %517, label %518, label %519

518:                                              ; preds = %514
  tail call void @WM_drag_free_list(ptr noundef nonnull %508) #19
  br label %521

519:                                              ; preds = %514
  %520 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %520(ptr noundef nonnull %508) #19
  br label %521

521:                                              ; preds = %519, %518, %510, %506
  %522 = getelementptr inbounds %struct.wmEvent, ptr %82, i64 0, i32 24
  %523 = load ptr, ptr %522, align 8, !tbaa !60
  %524 = icmp eq ptr %523, null
  br i1 %524, label %529, label %525

525:                                              ; preds = %521, %113
  %526 = phi ptr [ %111, %113 ], [ %523, %521 ]
  %527 = phi i32 [ 5, %113 ], [ 0, %521 ]
  %528 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %528(ptr noundef nonnull %526) #19
  br label %529

529:                                              ; preds = %525, %521, %109
  %530 = phi i32 [ 5, %109 ], [ 0, %521 ], [ %527, %525 ]
  %531 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %531(ptr noundef nonnull %82) #19
  br label %532

532:                                              ; preds = %384, %529, %482, %162
  %533 = phi i32 [ 1, %162 ], [ 1, %482 ], [ %530, %529 ], [ 1, %384 ]
  switch i32 %533, label %588 [
    i32 0, label %534
    i32 5, label %534
  ]

534:                                              ; preds = %532, %532
  %535 = load ptr, ptr %71, align 8, !tbaa !184
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %81, !llvm.loop !188

537:                                              ; preds = %534, %70
  %538 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 17
  %539 = load i16, ptr %538, align 2, !tbaa !203
  %540 = icmp eq i16 %539, 0
  br i1 %540, label %587, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 21
  %543 = load ptr, ptr %542, align 8, !tbaa !68
  %544 = icmp eq ptr %543, null
  br i1 %544, label %587, label %545

545:                                              ; preds = %541
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %543, i64 16, i1 false), !tbaa.struct !38
  %546 = getelementptr inbounds i8, ptr %543, i64 18
  %547 = load i16, ptr %546, align 2, !tbaa.struct !210
  %548 = getelementptr inbounds i8, ptr %543, i64 20
  %549 = load i32, ptr %548, align 4, !tbaa.struct !211
  %550 = getelementptr inbounds i8, ptr %543, i64 24
  %551 = load i32, ptr %550, align 8, !tbaa.struct !212
  %552 = getelementptr inbounds i8, ptr %543, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %552, i64 20, i1 false), !tbaa.struct !213
  %553 = getelementptr inbounds i8, ptr %543, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %553, i64 64, i1 false), !tbaa.struct !214
  %554 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %555 = tail call ptr %554(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %555, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  %556 = getelementptr inbounds i8, ptr %555, i64 16
  store i16 4, ptr %556, align 8, !tbaa.struct !215
  %557 = getelementptr inbounds i8, ptr %555, i64 18
  store i16 %547, ptr %557, align 2, !tbaa.struct !210
  %558 = getelementptr inbounds i8, ptr %555, i64 20
  store i32 %549, ptr %558, align 4, !tbaa.struct !211
  %559 = getelementptr inbounds i8, ptr %555, i64 24
  store i32 %551, ptr %559, align 8, !tbaa.struct !212
  %560 = getelementptr inbounds i8, ptr %555, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %560, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !213
  %561 = getelementptr inbounds i8, ptr %555, i64 48
  store i32 %549, ptr %561, align 8, !tbaa.struct !216
  %562 = getelementptr inbounds i8, ptr %555, i64 52
  store i32 %551, ptr %562, align 4, !tbaa.struct !217
  %563 = getelementptr inbounds i8, ptr %555, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %563, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !214
  %564 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 2
  %565 = load ptr, ptr %564, align 8, !tbaa !46
  %566 = tail call ptr @GHOST_GetTabletData(ptr noundef %565) #19
  %567 = icmp eq ptr %566, null
  br i1 %567, label %584, label %568

568:                                              ; preds = %545
  %569 = load i32, ptr %566, align 4, !tbaa !49
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %584, label %571

571:                                              ; preds = %568
  %572 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %573 = tail call ptr %572(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %574 = load i32, ptr %566, align 4, !tbaa !49
  store i32 %574, ptr %573, align 4, !tbaa !52
  %575 = getelementptr inbounds %struct.GHOST_TabletData, ptr %566, i64 0, i32 1
  %576 = load float, ptr %575, align 4, !tbaa !54
  %577 = getelementptr inbounds %struct.wmTabletData, ptr %573, i64 0, i32 1
  store float %576, ptr %577, align 4, !tbaa !55
  %578 = getelementptr inbounds %struct.GHOST_TabletData, ptr %566, i64 0, i32 2
  %579 = load float, ptr %578, align 4, !tbaa !56
  %580 = getelementptr inbounds %struct.wmTabletData, ptr %573, i64 0, i32 2
  store float %579, ptr %580, align 4, !tbaa !57
  %581 = getelementptr inbounds %struct.GHOST_TabletData, ptr %566, i64 0, i32 3
  %582 = load float, ptr %581, align 4, !tbaa !58
  %583 = getelementptr inbounds %struct.wmTabletData, ptr %573, i64 0, i32 3
  store float %582, ptr %583, align 4, !tbaa !59
  br label %584

584:                                              ; preds = %545, %568, %571
  %585 = phi ptr [ %573, %571 ], [ null, %568 ], [ null, %545 ]
  %586 = getelementptr inbounds %struct.wmEvent, ptr %555, i64 0, i32 24
  store ptr %585, ptr %586, align 8, !tbaa !60
  tail call void @BLI_addtail(ptr noundef nonnull %71, ptr noundef %555) #19
  store i16 0, ptr %538, align 2, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4)
  br label %587

587:                                              ; preds = %584, %541, %537
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #19
  br label %588

588:                                              ; preds = %532, %587
  %589 = phi i32 [ 0, %587 ], [ %533, %532 ]
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %8, label %600, !llvm.loop !218

591:                                              ; preds = %8
  tail call void @WM_keyconfig_update(ptr noundef %5) #19
  %592 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %600, label %594

594:                                              ; preds = %591
  %595 = tail call i32 @glGetError() #19
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %600, label %597

597:                                              ; preds = %594
  %598 = tail call ptr @gluErrorString(i32 noundef %595) #19
  %599 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %598)
  br label %600

600:                                              ; preds = %588, %591, %597, %594
  ret void
}

declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #3

declare i32 @sound_scene_playing(ptr noundef) local_unnamed_addr #3

declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #3

declare i32 @ED_screen_animation_play(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_window_make_drawable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !186
  switch i16 %9, label %10 [
    i16 4, label %63
    i16 17, label %63
    i16 0, label %63
  ]

10:                                               ; preds = %7
  %11 = and i16 %9, -16
  %12 = icmp eq i16 %11, 272
  br i1 %12, label %63, label %13

13:                                               ; preds = %10
  switch i32 %4, label %56 [
    i32 5, label %14
    i32 0, label %14
  ]

14:                                               ; preds = %13, %13
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !187
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmWindow, ptr %15, i64 0, i32 21
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = getelementptr inbounds %struct.wmEvent, ptr %23, i64 0, i32 22
  store i16 1, ptr %24, align 2, !tbaa !219
  br label %25

25:                                               ; preds = %17, %21
  %26 = getelementptr inbounds %struct.wmWindow, ptr %15, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.wmEvent, ptr %27, i64 0, i32 10
  %29 = load i16, ptr %28, align 4, !tbaa !220
  %30 = load i16, ptr %8, align 8, !tbaa !186
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  switch i16 %19, label %63 [
    i16 2, label %33
    i16 4, label %52
  ]

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.wmEvent, ptr %27, i64 0, i32 11
  %35 = load i16, ptr %34, align 2, !tbaa !221
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.wmEvent, ptr %27, i64 0, i32 22
  %39 = load i16, ptr %38, align 2, !tbaa !219
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  store i16 3, ptr %18, align 2, !tbaa !187
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @__func__.wm_handlers_do)
  br label %47

47:                                               ; preds = %45, %41
  %48 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %49 = or i32 %48, %4
  store i16 2, ptr %18, align 2, !tbaa !187
  br label %63

50:                                               ; preds = %37, %33
  %51 = icmp eq i16 %19, 4
  br i1 %51, label %52, label %63

52:                                               ; preds = %32, %50
  store i16 1, ptr %18, align 2, !tbaa !187
  %53 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %54 = or i32 %53, %4
  switch i32 %54, label %63 [
    i32 5, label %55
    i32 0, label %55
  ]

55:                                               ; preds = %52, %52
  store i16 4, ptr %18, align 2, !tbaa !187
  br label %63

56:                                               ; preds = %13
  %57 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.wmWindow, ptr %57, i64 0, i32 21
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  %62 = getelementptr inbounds %struct.wmEvent, ptr %61, i64 0, i32 22
  store i16 0, ptr %62, align 2, !tbaa !219
  br label %63

63:                                               ; preds = %52, %32, %7, %7, %7, %10, %14, %47, %55, %50, %25, %59, %56, %3
  %64 = phi i32 [ %4, %3 ], [ %4, %7 ], [ %4, %7 ], [ %4, %7 ], [ %4, %10 ], [ %49, %47 ], [ %54, %55 ], [ %54, %52 ], [ %4, %50 ], [ %4, %25 ], [ %4, %14 ], [ %4, %59 ], [ %4, %56 ], [ %4, %32 ]
  ret i32 %64
}

declare void @wm_tweakevent_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_screen_set_subwinactive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_drags_check_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @glGetError() local_unnamed_addr #3

declare ptr @gluErrorString(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_fileselect_event(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca { ptr, ptr }, align 8
  %5 = alloca [92 x i8], align 4
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = trunc i32 %2 to i16
  br label %11

11:                                               ; preds = %9, %42
  %12 = phi ptr [ %7, %9 ], [ %46, %42 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %5)
  %13 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !38
  %15 = getelementptr inbounds i8, ptr %14, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %5, ptr noundef nonnull align 4 dereferenceable(92) %15, i64 92, i1 false), !tbaa.struct !211
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !38
  %18 = getelementptr inbounds i8, ptr %17, i64 16
  store i16 20512, ptr %18, align 8, !tbaa.struct !215
  %19 = getelementptr inbounds i8, ptr %17, i64 18
  store i16 %10, ptr %19, align 2, !tbaa.struct !210
  %20 = getelementptr inbounds i8, ptr %17, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %20, ptr noundef nonnull align 4 dereferenceable(92) %5, i64 92, i1 false), !tbaa.struct !211
  %21 = getelementptr inbounds i8, ptr %17, i64 112
  store ptr %1, ptr %21, align 8, !tbaa.struct !161
  %22 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call ptr @GHOST_GetTabletData(ptr noundef %23) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %11
  %27 = load i32, ptr %24, align 4, !tbaa !49
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %32 = load i32, ptr %24, align 4, !tbaa !49
  store i32 %32, ptr %31, align 4, !tbaa !52
  %33 = getelementptr inbounds %struct.GHOST_TabletData, ptr %24, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = getelementptr inbounds %struct.wmTabletData, ptr %31, i64 0, i32 1
  store float %34, ptr %35, align 4, !tbaa !55
  %36 = getelementptr inbounds %struct.GHOST_TabletData, ptr %24, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !56
  %38 = getelementptr inbounds %struct.wmTabletData, ptr %31, i64 0, i32 2
  store float %37, ptr %38, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.GHOST_TabletData, ptr %24, i64 0, i32 3
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.wmTabletData, ptr %31, i64 0, i32 3
  store float %40, ptr %41, align 4, !tbaa !59
  br label %42

42:                                               ; preds = %11, %26, %29
  %43 = phi ptr [ %31, %29 ], [ null, %26 ], [ null, %11 ]
  %44 = getelementptr inbounds %struct.wmEvent, ptr %17, i64 0, i32 24
  store ptr %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %45, ptr noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %5)
  %46 = load ptr, ptr %12, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %11, !llvm.loop !222

48:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca { ptr, ptr }, align 8
  %4 = alloca [92 x i8], align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !223
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %2, %42
  %11 = phi ptr [ %12, %42 ], [ %8, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !224
  %13 = getelementptr inbounds %struct.wmEventHandler, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !225
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %18 = getelementptr inbounds %struct.bScreen, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmEventHandler, ptr %11, i64 0, i32 7
  br label %23

23:                                               ; preds = %21, %36
  %24 = phi ptr [ %19, %21 ], [ %37, %36 ]
  %25 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 8
  %26 = load i8, ptr %25, align 8, !tbaa !226
  %27 = icmp eq i8 %26, 5
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !227
  %31 = getelementptr inbounds %struct.SpaceFile, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !228
  %33 = load ptr, ptr %22, align 8, !tbaa !166
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %24) #19
  br label %39

36:                                               ; preds = %28, %23
  %37 = load ptr, ptr %24, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %23, !llvm.loop !230

39:                                               ; preds = %36, %16, %35
  %40 = phi i32 [ 4, %35 ], [ 5, %16 ], [ 5, %36 ]
  %41 = tail call fastcc i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %11, i32 noundef %40), !range !231
  br label %42

42:                                               ; preds = %39, %10
  %43 = icmp eq ptr %12, null
  br i1 %43, label %44, label %10, !llvm.loop !232

44:                                               ; preds = %42, %2
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = tail call ptr %45(i64 noundef 136, ptr noundef nonnull @.str.10) #19
  %47 = getelementptr inbounds %struct.wmEventHandler, ptr %46, i64 0, i32 2
  store i32 1, ptr %47, align 8, !tbaa !225
  %48 = getelementptr inbounds %struct.wmEventHandler, ptr %46, i64 0, i32 7
  store ptr %1, ptr %48, align 8, !tbaa !166
  %49 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %50 = getelementptr inbounds %struct.wmEventHandler, ptr %46, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !169
  %51 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %52 = getelementptr inbounds %struct.wmEventHandler, ptr %46, i64 0, i32 9
  store ptr %51, ptr %52, align 8, !tbaa !171
  %53 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %54 = getelementptr inbounds %struct.wmEventHandler, ptr %46, i64 0, i32 16
  store ptr %53, ptr %54, align 8, !tbaa !233
  tail call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %46) #19
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !145
  %57 = getelementptr inbounds %struct.wmOperatorType, ptr %56, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !234
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %44
  %61 = tail call zeroext i8 %58(ptr noundef %0, ptr noundef %1) #19
  br label %62

62:                                               ; preds = %60, %44
  %63 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %103, label %66

66:                                               ; preds = %62, %97
  %67 = phi ptr [ %101, %97 ], [ %64, %62 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4)
  %68 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 21
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %69, i64 16, i1 false), !tbaa.struct !38
  %70 = getelementptr inbounds i8, ptr %69, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %4, ptr noundef nonnull align 4 dereferenceable(92) %70, i64 92, i1 false), !tbaa.struct !211
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %72 = tail call ptr %71(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !38
  %73 = getelementptr inbounds i8, ptr %72, i64 16
  store i16 20512, ptr %73, align 8, !tbaa.struct !215
  %74 = getelementptr inbounds i8, ptr %72, i64 18
  store i16 2, ptr %74, align 2, !tbaa.struct !210
  %75 = getelementptr inbounds i8, ptr %72, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %75, ptr noundef nonnull align 4 dereferenceable(92) %4, i64 92, i1 false), !tbaa.struct !211
  %76 = getelementptr inbounds i8, ptr %72, i64 112
  store ptr %1, ptr %76, align 8, !tbaa.struct !161
  %77 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = tail call ptr @GHOST_GetTabletData(ptr noundef %78) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %66
  %82 = load i32, ptr %79, align 4, !tbaa !49
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %86 = tail call ptr %85(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %87 = load i32, ptr %79, align 4, !tbaa !49
  store i32 %87, ptr %86, align 4, !tbaa !52
  %88 = getelementptr inbounds %struct.GHOST_TabletData, ptr %79, i64 0, i32 1
  %89 = load float, ptr %88, align 4, !tbaa !54
  %90 = getelementptr inbounds %struct.wmTabletData, ptr %86, i64 0, i32 1
  store float %89, ptr %90, align 4, !tbaa !55
  %91 = getelementptr inbounds %struct.GHOST_TabletData, ptr %79, i64 0, i32 2
  %92 = load float, ptr %91, align 4, !tbaa !56
  %93 = getelementptr inbounds %struct.wmTabletData, ptr %86, i64 0, i32 2
  store float %92, ptr %93, align 4, !tbaa !57
  %94 = getelementptr inbounds %struct.GHOST_TabletData, ptr %79, i64 0, i32 3
  %95 = load float, ptr %94, align 4, !tbaa !58
  %96 = getelementptr inbounds %struct.wmTabletData, ptr %86, i64 0, i32 3
  store float %95, ptr %96, align 4, !tbaa !59
  br label %97

97:                                               ; preds = %66, %81, %84
  %98 = phi ptr [ %86, %84 ], [ null, %81 ], [ null, %66 ]
  %99 = getelementptr inbounds %struct.wmEvent, ptr %72, i64 0, i32 24
  store ptr %98, ptr %99, align 8, !tbaa !60
  %100 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %100, ptr noundef %72) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4)
  %101 = load ptr, ptr %67, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %66, !llvm.loop !222

103:                                              ; preds = %97, %62
  ret void
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  switch i32 %3, label %208 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %28
    i32 4, label %28
    i32 5, label %28
  ]

6:                                                ; preds = %4, %4
  %7 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !235
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %15, i32 noundef 5) #19
  br label %20

18:                                               ; preds = %14
  %19 = tail call ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %15, i32 noundef 5) #19
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi ptr [ %15, %17 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !227
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !166
  %26 = getelementptr inbounds %struct.SpaceFile, ptr %23, i64 0, i32 9
  store ptr %25, ptr %26, align 8, !tbaa !228
  %27 = tail call signext i16 @ED_fileselect_set_params(ptr noundef %23) #19
  br label %208

28:                                               ; preds = %4, %4, %4
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef %2) #19
  %30 = icmp eq i32 %3, 5
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !233
  %34 = icmp eq ptr %29, %33
  %35 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  br i1 %34, label %37, label %36

36:                                               ; preds = %31
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef %35) #19
  br label %38

37:                                               ; preds = %31
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %35) #19
  br label %38

38:                                               ; preds = %36, %37, %28
  %39 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !166
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !169
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  br label %69

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.bScreen, ptr %39, i64 0, i32 3
  br label %52

52:                                               ; preds = %56, %50
  %53 = phi ptr [ %51, %50 ], [ %54, %56 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = icmp eq ptr %54, %47
  br i1 %57, label %58, label %52, !llvm.loop !170

58:                                               ; preds = %56
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %54) #19
  %59 = getelementptr inbounds %struct.ScrArea, ptr %54, i64 0, i32 20
  %60 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 9
  br label %61

61:                                               ; preds = %65, %58
  %62 = phi ptr [ %59, %58 ], [ %63, %65 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %60, align 8, !tbaa !171
  %67 = icmp eq ptr %63, %66
  br i1 %67, label %68, label %61, !llvm.loop !172

68:                                               ; preds = %65
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %63) #19
  br label %69

69:                                               ; preds = %52, %61, %38, %41, %49, %68
  %70 = icmp eq i32 %3, 3
  %71 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !166
  %73 = getelementptr inbounds %struct.wmOperator, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !145
  br i1 %70, label %75, label %180

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.wmOperatorType, ptr %74, i64 0, i32 19
  %77 = load i16, ptr %76, align 8, !tbaa !148
  %78 = and i16 %77, 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %82 = load i16, ptr %81, align 2, !tbaa !149
  %83 = add i16 %82, 1
  store i16 %83, ptr %81, align 2, !tbaa !149
  br label %84

84:                                               ; preds = %80, %75
  %85 = getelementptr inbounds %struct.wmOperatorType, ptr %74, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !147
  %87 = tail call i32 %86(ptr noundef %0, ptr noundef %72) #19
  %88 = load ptr, ptr %71, align 8, !tbaa !166
  %89 = getelementptr inbounds %struct.wmOperator, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !145
  %91 = getelementptr inbounds %struct.wmOperatorType, ptr %90, i64 0, i32 19
  %92 = load i16, ptr %91, align 8, !tbaa !148
  %93 = and i16 %92, 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %84
  %96 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %97 = icmp eq ptr %96, %5
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %100 = load i16, ptr %99, align 2, !tbaa !149
  %101 = add i16 %100, -1
  store i16 %101, ptr %99, align 2, !tbaa !149
  br label %102

102:                                              ; preds = %98, %95, %84
  %103 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %104 = icmp eq ptr %103, %5
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %107 = load i16, ptr %106, align 2, !tbaa !149
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load ptr, ptr %71, align 8, !tbaa !166
  %111 = getelementptr inbounds %struct.wmOperator, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !145
  %113 = getelementptr inbounds %struct.wmOperatorType, ptr %112, i64 0, i32 19
  %114 = load i16, ptr %113, align 8, !tbaa !148
  %115 = and i16 %114, 2
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef %110) #19
  br label %118

118:                                              ; preds = %109, %117, %105, %102
  %119 = load ptr, ptr %71, align 8, !tbaa !166
  %120 = getelementptr inbounds %struct.wmOperator, ptr %119, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !236
  %122 = load ptr, ptr %121, align 8, !tbaa !139
  %123 = icmp eq ptr %122, null
  br i1 %123, label %144, label %124

124:                                              ; preds = %118
  %125 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %126 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %127 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %128 = icmp eq ptr %125, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %131 = getelementptr inbounds %struct.wmWindowManager, ptr %130, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !237
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %132) #19
  br label %133

133:                                              ; preds = %129, %124
  %134 = load ptr, ptr %71, align 8, !tbaa !166
  %135 = getelementptr inbounds %struct.wmOperator, ptr %134, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !236
  tail call void @BKE_report_print_level_set(ptr noundef %136, i32 noundef 16) #19
  %137 = load ptr, ptr %71, align 8, !tbaa !166
  %138 = getelementptr inbounds %struct.wmOperator, ptr %137, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !236
  tail call void @uiPupMenuReports(ptr noundef %0, ptr noundef %139) #19
  %140 = tail call ptr @CTX_wm_reports(ptr noundef %0) #19
  %141 = load ptr, ptr %71, align 8, !tbaa !166
  %142 = getelementptr inbounds %struct.wmOperator, ptr %141, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !236
  tail call void @BLI_movelisttolist(ptr noundef %140, ptr noundef %143) #19
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %125) #19
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %126) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %127) #19
  br label %144

144:                                              ; preds = %133, %118
  %145 = load ptr, ptr %71, align 8, !tbaa !166
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef %145, i32 noundef %87, i8 noundef zeroext 1)
  %146 = and i32 %87, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %205, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %71, align 8, !tbaa !166
  %150 = getelementptr inbounds %struct.wmOperator, ptr %149, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !145
  %152 = getelementptr inbounds %struct.wmOperatorType, ptr %151, i64 0, i32 12
  %153 = load ptr, ptr %152, align 8, !tbaa !150
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  tail call void @IDP_FreeProperty(ptr noundef nonnull %153) #19
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %157 = load ptr, ptr %150, align 8, !tbaa !145
  %158 = getelementptr inbounds %struct.wmOperatorType, ptr %157, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !150
  tail call void %156(ptr noundef %159) #19
  %160 = load ptr, ptr %150, align 8, !tbaa !145
  %161 = getelementptr inbounds %struct.wmOperatorType, ptr %160, i64 0, i32 12
  store ptr null, ptr %161, align 8, !tbaa !150
  br label %162

162:                                              ; preds = %155, %148
  %163 = getelementptr inbounds %struct.wmOperator, ptr %149, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !151
  %165 = icmp eq ptr %164, null
  br i1 %165, label %205, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %168 = and i32 %167, 32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %150, align 8, !tbaa !145
  %172 = getelementptr inbounds %struct.wmOperatorType, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !152
  %174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.WM_operator_last_properties_store, ptr noundef %173)
  br label %175

175:                                              ; preds = %170, %166
  %176 = load ptr, ptr %163, align 8, !tbaa !151
  %177 = tail call ptr @IDP_CopyProperty(ptr noundef %176) #19
  %178 = load ptr, ptr %150, align 8, !tbaa !145
  %179 = getelementptr inbounds %struct.wmOperatorType, ptr %178, i64 0, i32 12
  store ptr %177, ptr %179, align 8, !tbaa !150
  br label %205

180:                                              ; preds = %69
  %181 = getelementptr inbounds %struct.wmOperatorType, ptr %74, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !168
  %183 = icmp eq ptr %182, null
  br i1 %183, label %205, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.wmOperatorType, ptr %74, i64 0, i32 19
  %186 = load i16, ptr %185, align 8, !tbaa !148
  %187 = and i16 %186, 2
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %191 = load i16, ptr %190, align 2, !tbaa !149
  %192 = add i16 %191, 1
  store i16 %192, ptr %190, align 2, !tbaa !149
  br label %193

193:                                              ; preds = %189, %184
  tail call void %182(ptr noundef %0, ptr noundef %72) #19
  %194 = load ptr, ptr %71, align 8, !tbaa !166
  %195 = getelementptr inbounds %struct.wmOperator, ptr %194, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !145
  %197 = getelementptr inbounds %struct.wmOperatorType, ptr %196, i64 0, i32 19
  %198 = load i16, ptr %197, align 8, !tbaa !148
  %199 = and i16 %198, 2
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %203 = load i16, ptr %202, align 2, !tbaa !149
  %204 = add i16 %203, -1
  store i16 %204, ptr %202, align 2, !tbaa !149
  br label %205

205:                                              ; preds = %180, %201, %193, %144, %162, %175
  %206 = load ptr, ptr %71, align 8, !tbaa !166
  tail call void @WM_operator_free(ptr noundef %206) #19
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %207(ptr noundef %2) #19
  br label %208

208:                                              ; preds = %4, %205, %20
  %209 = phi i32 [ 0, %4 ], [ 1, %205 ], [ 1, %20 ]
  ret i32 %209
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 136, ptr noundef nonnull @.str.11) #19
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 7
  br i1 %8, label %12, label %10

10:                                               ; preds = %2
  store ptr %7, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 10
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ %9, %2 ]
  store ptr %1, ptr %13, align 8, !tbaa !34
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %15 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !169
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 9
  store ptr %16, ptr %17, align 8, !tbaa !171
  %18 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 29
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef %4) #19
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_keymap_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @__func__.WM_event_add_keymap_handler)
  br label %18

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %6, !llvm.loop !239

14:                                               ; preds = %6
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 136, ptr noundef nonnull @.str.13) #19
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !238
  br label %18

18:                                               ; preds = %10, %14, %4
  %19 = phi ptr [ %16, %14 ], [ null, %4 ], [ %8, %10 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_event_add_keymap_handler_priority(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !240

12:                                               ; preds = %8
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef nonnull %6) #19
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %6) #19
  br label %14

14:                                               ; preds = %4, %12
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 136, ptr noundef nonnull @.str.13) #19
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %16) #19
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !238
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_remove_keymap_handler(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !238
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %3, !llvm.loop !240

11:                                               ; preds = %7
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef nonnull %5) #19
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %5) #19
  br label %13

13:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_keymap_handler_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @__func__.WM_event_add_keymap_handler)
  br label %20

8:                                                ; preds = %4, %12
  %9 = phi ptr [ %10, %12 ], [ %0, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmEventHandler, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !238
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %20, label %8, !llvm.loop !239

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 136, ptr noundef nonnull @.str.13) #19
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %18) #19
  %19 = getelementptr inbounds %struct.wmEventHandler, ptr %18, i64 0, i32 4
  store ptr %1, ptr %19, align 8, !tbaa !238
  br label %20

20:                                               ; preds = %12, %6, %16
  %21 = phi ptr [ %18, %16 ], [ null, %6 ], [ %10, %12 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %21, i64 0, i32 5
  store ptr %2, ptr %24, align 8, !tbaa !241
  %25 = getelementptr inbounds %struct.wmEventHandler, ptr %21, i64 0, i32 6
  store ptr %3, ptr %25, align 8, !tbaa !242
  br label %26

26:                                               ; preds = %23, %20
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 136, ptr noundef nonnull @.str.14) #19
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 10
  store ptr %2, ptr %9, align 8, !tbaa !243
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 11
  store ptr %3, ptr %10, align 8, !tbaa !173
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 12
  store ptr %4, ptr %11, align 8, !tbaa !177
  %12 = icmp eq ptr %0, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #19
  %15 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 13
  store ptr %14, ptr %15, align 8, !tbaa !174
  %16 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #19
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 14
  store ptr %16, ptr %17, align 8, !tbaa !175
  %18 = tail call ptr @CTX_wm_menu(ptr noundef nonnull %0) #19
  %19 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 15
  store ptr %18, ptr %19, align 8, !tbaa !176
  br label %22

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br label %22

22:                                               ; preds = %20, %13
  %23 = icmp eq i8 %5, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !244
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4, !tbaa !244
  br label %28

28:                                               ; preds = %24, %22
  tail call void @BLI_addhead(ptr noundef %1, ptr noundef %8) #19
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_remove_ui_handler(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %5, %29
  %9 = phi ptr [ %30, %29 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = icmp eq i8 %4, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !244
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4, !tbaa !244
  br label %32

27:                                               ; preds = %21
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %9) #19
  br label %32

29:                                               ; preds = %8, %13, %17
  %30 = load ptr, ptr %9, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8, !llvm.loop !245

32:                                               ; preds = %29, %5, %23, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_free_ui_handler_all(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !195
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4, %21
  %8 = phi ptr [ %9, %21 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  tail call void %3(ptr noundef %0, ptr noundef %19) #19
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %8) #19
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %8) #19
  br label %21

21:                                               ; preds = %7, %13, %17
  %22 = icmp eq ptr %9, null
  br i1 %22, label %23, label %7, !llvm.loop !246

23:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_dropbox_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %3, !llvm.loop !248

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 136, ptr noundef nonnull @.str.15) #19
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %13, i64 0, i32 17
  store ptr %1, ptr %14, align 8, !tbaa !247
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %13) #19
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi ptr [ %13, %11 ], [ %5, %7 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_remove_area_handler(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !195
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %17
  %6 = phi ptr [ %7, %17 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !225
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wmEventHandler, ptr %6, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !174
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %6) #19
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %6) #19
  br label %17

17:                                               ; preds = %5, %15, %11
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %5, !llvm.loop !249

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_add_mousemove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 17
  store i16 1, ptr %3, align 2, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_modal_tweak_exit(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !187
  %8 = icmp eq i16 %7, 2
  br i1 %5, label %16, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %13

10:                                               ; preds = %9
  %11 = add i32 %1, -20483
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %18, label %17

13:                                               ; preds = %9
  %14 = add i32 %1, -20486
  %15 = icmp ult i32 %14, -3
  br i1 %15, label %18, label %17

16:                                               ; preds = %2
  br i1 %8, label %17, label %18

17:                                               ; preds = %10, %16, %13
  br label %18

18:                                               ; preds = %16, %13, %10, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %10 ], [ 1, %13 ], [ 1, %16 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_event_add_ghostevent(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.wmEvent, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = alloca [92 x i8], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca { ptr, ptr }, align 8
  %12 = alloca [92 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #19
  %13 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %14, i64 120, i1 false), !tbaa.struct !38
  switch i32 %2, label %880 [
    i32 1, label %15
    i32 5, label %135
    i32 2, label %191
    i32 3, label %191
    i32 8, label %351
    i32 9, label %351
    i32 4, label %670
    i32 23, label %702
    i32 6, label %734
    i32 7, label %813
    i32 13, label %852
  ]

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %17 = load i32, ptr %4, align 4, !tbaa !41
  store i32 %17, ptr %16, align 4, !tbaa !41
  %18 = getelementptr inbounds i32, ptr %4, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 4, ptr %21, align 8, !tbaa !186
  %22 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !250
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.wmEvent, ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !186
  %28 = icmp eq i16 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i16 17, ptr %26, align 8, !tbaa !186
  br label %30

30:                                               ; preds = %29, %25, %15
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %32, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %33 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = tail call ptr @GHOST_GetTabletData(ptr noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %35, align 4, !tbaa !49
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %42 = tail call ptr %41(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %43 = load i32, ptr %35, align 4, !tbaa !49
  store i32 %43, ptr %42, align 4, !tbaa !52
  %44 = getelementptr inbounds %struct.GHOST_TabletData, ptr %35, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !54
  %46 = getelementptr inbounds %struct.wmTabletData, ptr %42, i64 0, i32 1
  store float %45, ptr %46, align 4, !tbaa !55
  %47 = getelementptr inbounds %struct.GHOST_TabletData, ptr %35, i64 0, i32 2
  %48 = load float, ptr %47, align 4, !tbaa !56
  %49 = getelementptr inbounds %struct.wmTabletData, ptr %42, i64 0, i32 2
  store float %48, ptr %49, align 4, !tbaa !57
  %50 = getelementptr inbounds %struct.GHOST_TabletData, ptr %35, i64 0, i32 3
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = getelementptr inbounds %struct.wmTabletData, ptr %42, i64 0, i32 3
  store float %51, ptr %52, align 4, !tbaa !59
  br label %53

53:                                               ; preds = %30, %37, %40
  %54 = phi ptr [ %42, %40 ], [ null, %37 ], [ null, %30 ]
  %55 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 24
  store ptr %54, ptr %55, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %56, ptr noundef %32) #19
  %57 = load ptr, ptr %22, align 8, !tbaa !250
  br i1 %24, label %58, label %60

58:                                               ; preds = %53
  %59 = load ptr, ptr %13, align 8, !tbaa !68
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %59, %58 ], [ %23, %53 ]
  %62 = getelementptr inbounds %struct.wmEvent, ptr %57, i64 0, i32 12
  %63 = getelementptr inbounds %struct.wmEvent, ptr %61, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !41
  store i32 %64, ptr %62, align 4, !tbaa !41
  %65 = getelementptr inbounds %struct.wmEvent, ptr %61, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !41
  %67 = getelementptr inbounds %struct.wmEvent, ptr %57, i64 0, i32 13
  store i32 %66, ptr %67, align 4, !tbaa !41
  %68 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 4
  %69 = load i32, ptr %16, align 4, !tbaa !41
  store i32 %69, ptr %68, align 4, !tbaa !41
  %70 = load i32, ptr %20, align 8, !tbaa !41
  %71 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 5
  store i32 %70, ptr %71, align 4, !tbaa !41
  %72 = call fastcc ptr @wm_event_cursor_other_windows(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %880, label %74

74:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %8)
  %75 = getelementptr inbounds %struct.wmWindow, ptr %72, i64 0, i32 21
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %76, i64 16, i1 false), !tbaa.struct !38
  %77 = getelementptr inbounds i8, ptr %76, i64 18
  %78 = load i16, ptr %77, align 2, !tbaa.struct !210
  %79 = getelementptr inbounds i8, ptr %76, i64 20
  %80 = getelementptr inbounds i8, ptr %76, i64 24
  %81 = getelementptr inbounds i8, ptr %76, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %8, ptr noundef nonnull align 4 dereferenceable(92) %81, i64 92, i1 false), !tbaa.struct !213
  %82 = load i32, ptr %16, align 4, !tbaa !41
  %83 = load i32, ptr %20, align 8, !tbaa !41
  %84 = getelementptr inbounds %struct.wmWindow, ptr %72, i64 0, i32 27, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !250
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.wmEvent, ptr %85, i64 0, i32 2
  %89 = load i16, ptr %88, align 8, !tbaa !186
  %90 = icmp eq i16 %89, 4
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i16 17, ptr %88, align 8, !tbaa !186
  br label %92

92:                                               ; preds = %91, %87, %74
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %94 = tail call ptr %93(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !38
  %95 = getelementptr inbounds i8, ptr %94, i64 16
  store i16 4, ptr %95, align 8, !tbaa.struct !215
  %96 = getelementptr inbounds i8, ptr %94, i64 18
  store i16 %78, ptr %96, align 2, !tbaa.struct !210
  %97 = getelementptr inbounds i8, ptr %94, i64 20
  store i32 %82, ptr %97, align 4, !tbaa.struct !211
  %98 = getelementptr inbounds i8, ptr %94, i64 24
  store i32 %83, ptr %98, align 8, !tbaa.struct !212
  %99 = getelementptr inbounds i8, ptr %94, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %99, ptr noundef nonnull align 4 dereferenceable(92) %8, i64 92, i1 false), !tbaa.struct !213
  %100 = getelementptr inbounds %struct.wmWindow, ptr %72, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = tail call ptr @GHOST_GetTabletData(ptr noundef %101) #19
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %92
  %105 = load i32, ptr %102, align 4, !tbaa !49
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %109 = tail call ptr %108(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %110 = load i32, ptr %102, align 4, !tbaa !49
  store i32 %110, ptr %109, align 4, !tbaa !52
  %111 = getelementptr inbounds %struct.GHOST_TabletData, ptr %102, i64 0, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !54
  %113 = getelementptr inbounds %struct.wmTabletData, ptr %109, i64 0, i32 1
  store float %112, ptr %113, align 4, !tbaa !55
  %114 = getelementptr inbounds %struct.GHOST_TabletData, ptr %102, i64 0, i32 2
  %115 = load float, ptr %114, align 4, !tbaa !56
  %116 = getelementptr inbounds %struct.wmTabletData, ptr %109, i64 0, i32 2
  store float %115, ptr %116, align 4, !tbaa !57
  %117 = getelementptr inbounds %struct.GHOST_TabletData, ptr %102, i64 0, i32 3
  %118 = load float, ptr %117, align 4, !tbaa !58
  %119 = getelementptr inbounds %struct.wmTabletData, ptr %109, i64 0, i32 3
  store float %118, ptr %119, align 4, !tbaa !59
  br label %120

120:                                              ; preds = %92, %104, %107
  %121 = phi ptr [ %109, %107 ], [ null, %104 ], [ null, %92 ]
  %122 = getelementptr inbounds %struct.wmEvent, ptr %94, i64 0, i32 24
  store ptr %121, ptr %122, align 8, !tbaa !60
  %123 = getelementptr inbounds %struct.wmWindow, ptr %72, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %123, ptr noundef %94) #19
  %124 = load ptr, ptr %84, align 8, !tbaa !250
  br i1 %86, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %75, align 8, !tbaa !68
  br label %127

127:                                              ; preds = %120, %125
  %128 = phi ptr [ %126, %125 ], [ %85, %120 ]
  %129 = getelementptr inbounds %struct.wmEvent, ptr %124, i64 0, i32 12
  %130 = getelementptr inbounds %struct.wmEvent, ptr %128, i64 0, i32 4
  %131 = load i32, ptr %130, align 4, !tbaa !41
  store i32 %131, ptr %129, align 4, !tbaa !41
  %132 = getelementptr inbounds %struct.wmEvent, ptr %128, i64 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !41
  %134 = getelementptr inbounds %struct.wmEvent, ptr %124, i64 0, i32 13
  store i32 %133, ptr %134, align 4, !tbaa !41
  store i32 %82, ptr %79, align 4, !tbaa !41
  store i32 %83, ptr %80, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %8)
  br label %880

135:                                              ; preds = %5
  %136 = load i32, ptr %4, align 4, !tbaa !251
  %137 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  switch i32 %136, label %146 [
    i32 4, label %138
    i32 2, label %145
  ]

138:                                              ; preds = %135
  store i16 15, ptr %137, align 8, !tbaa !186
  %139 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !253
  %141 = sub nsw i32 0, %140
  store i32 %141, ptr %139, align 4, !tbaa !253
  %142 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 4
  %143 = load i32, ptr %142, align 4, !tbaa !254
  %144 = sub nsw i32 0, %143
  store i32 %144, ptr %142, align 4, !tbaa !254
  br label %147

145:                                              ; preds = %135
  store i16 16, ptr %137, align 8, !tbaa !186
  br label %147

146:                                              ; preds = %135
  store i16 14, ptr %137, align 8, !tbaa !186
  br label %147

147:                                              ; preds = %146, %145, %138
  %148 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !255
  %150 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 4
  store i32 %149, ptr %150, align 4, !tbaa !191
  %151 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  store i32 %149, ptr %151, align 4, !tbaa !191
  %152 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !256
  %154 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 5
  store i32 %153, ptr %154, align 8, !tbaa !193
  %155 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %153, ptr %155, align 8, !tbaa !193
  %156 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %156, align 2, !tbaa !187
  %157 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !253
  %159 = sub nsw i32 %149, %158
  %160 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 12
  store i32 %159, ptr %160, align 8, !tbaa !208
  %161 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 4
  %162 = load i32, ptr %161, align 4, !tbaa !254
  %163 = add nsw i32 %162, %153
  %164 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 13
  store i32 %163, ptr %164, align 4, !tbaa !209
  %165 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %166 = tail call ptr %165(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %166, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %167 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  %169 = tail call ptr @GHOST_GetTabletData(ptr noundef %168) #19
  %170 = icmp eq ptr %169, null
  br i1 %170, label %187, label %171

171:                                              ; preds = %147
  %172 = load i32, ptr %169, align 4, !tbaa !49
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %176 = tail call ptr %175(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %177 = load i32, ptr %169, align 4, !tbaa !49
  store i32 %177, ptr %176, align 4, !tbaa !52
  %178 = getelementptr inbounds %struct.GHOST_TabletData, ptr %169, i64 0, i32 1
  %179 = load float, ptr %178, align 4, !tbaa !54
  %180 = getelementptr inbounds %struct.wmTabletData, ptr %176, i64 0, i32 1
  store float %179, ptr %180, align 4, !tbaa !55
  %181 = getelementptr inbounds %struct.GHOST_TabletData, ptr %169, i64 0, i32 2
  %182 = load float, ptr %181, align 4, !tbaa !56
  %183 = getelementptr inbounds %struct.wmTabletData, ptr %176, i64 0, i32 2
  store float %182, ptr %183, align 4, !tbaa !57
  %184 = getelementptr inbounds %struct.GHOST_TabletData, ptr %169, i64 0, i32 3
  %185 = load float, ptr %184, align 4, !tbaa !58
  %186 = getelementptr inbounds %struct.wmTabletData, ptr %176, i64 0, i32 3
  store float %185, ptr %186, align 4, !tbaa !59
  br label %187

187:                                              ; preds = %147, %171, %174
  %188 = phi ptr [ %176, %174 ], [ null, %171 ], [ null, %147 ]
  %189 = getelementptr inbounds %struct.wmEvent, ptr %166, i64 0, i32 24
  store ptr %188, ptr %189, align 8, !tbaa !60
  %190 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %190, ptr noundef %166) #19
  br label %880

191:                                              ; preds = %5, %5
  %192 = icmp eq i32 %2, 2
  %193 = select i1 %192, i16 1, i16 2
  %194 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %193, ptr %194, align 2, !tbaa !187
  %195 = load i32, ptr %4, align 4, !tbaa !257
  %196 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %197 = icmp ult i32 %195, 7
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = zext nneg i32 %195 to i64
  %200 = getelementptr inbounds [7 x i16], ptr @switch.table.wm_event_add_ghostevent, i64 0, i64 %199
  %201 = load i16, ptr %200, align 2
  br label %202

202:                                              ; preds = %191, %198
  %203 = phi i16 [ %201, %198 ], [ 2, %191 ]
  store i16 %203, ptr %196, align 8, !tbaa !186
  call fastcc void @wm_eventemulation(ptr noundef nonnull %6)
  %204 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 3
  %205 = load i16, ptr %204, align 2, !tbaa !187
  %206 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 11
  store i16 %205, ptr %206, align 2, !tbaa !221
  %207 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 2
  %208 = load i16, ptr %207, align 8, !tbaa !186
  %209 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 10
  store i16 %208, ptr %209, align 4, !tbaa !220
  %210 = load i16, ptr %194, align 2, !tbaa !187
  store i16 %210, ptr %204, align 2, !tbaa !187
  %211 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %212 = load i16, ptr %211, align 8, !tbaa !186
  store i16 %212, ptr %207, align 8, !tbaa !186
  %213 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 12
  %214 = load i16, ptr %213, align 4, !tbaa !259
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #19
  call void @wm_get_cursor_position(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %217 = load i32, ptr %9, align 4, !tbaa !41
  %218 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 4
  store i32 %217, ptr %218, align 4, !tbaa !191
  %219 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  store i32 %217, ptr %219, align 4, !tbaa !191
  %220 = load i32, ptr %10, align 4, !tbaa !41
  %221 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 5
  store i32 %220, ptr %221, align 8, !tbaa !193
  %222 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %220, ptr %222, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %223

223:                                              ; preds = %216, %202
  %224 = load i16, ptr %211, align 8, !tbaa !186
  %225 = load i16, ptr %209, align 4, !tbaa !220
  %226 = icmp eq i16 %224, %225
  br i1 %226, label %227, label %268

227:                                              ; preds = %223
  %228 = load i16, ptr %206, align 2, !tbaa !221
  %229 = icmp eq i16 %228, 2
  %230 = load i16, ptr %194, align 2
  %231 = icmp eq i16 %230, 1
  %232 = select i1 %229, i1 %231, i1 false
  br i1 %232, label %233, label %268

233:                                              ; preds = %227
  %234 = add i16 %224, -20
  %235 = icmp ult i16 %234, -19
  br i1 %235, label %252, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %238 = load i32, ptr %237, align 4, !tbaa !191
  %239 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 15
  %240 = load i32, ptr %239, align 8, !tbaa !260
  %241 = sub nsw i32 %238, %240
  %242 = call i32 @llvm.abs.i32(i32 %241, i1 true)
  %243 = icmp ult i32 %242, 3
  br i1 %243, label %244, label %268

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %246 = load i32, ptr %245, align 8, !tbaa !193
  %247 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 16
  %248 = load i32, ptr %247, align 4, !tbaa !261
  %249 = sub nsw i32 %246, %248
  %250 = call i32 @llvm.abs.i32(i32 %249, i1 true)
  %251 = icmp ult i32 %250, 3
  br i1 %251, label %252, label %268

252:                                              ; preds = %244, %233
  %253 = call double @PIL_check_seconds_timer() #19
  %254 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 14
  %255 = load double, ptr %254, align 8, !tbaa !262
  %256 = fsub double %253, %255
  %257 = fmul double %256, 1.000000e+03
  %258 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !263
  %259 = sitofp i16 %258 to double
  %260 = fcmp olt double %257, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %252
  %262 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %263 = and i32 %262, 24
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @__func__.wm_event_add_ghostevent)
  br label %267

267:                                              ; preds = %265, %261
  store i16 4, ptr %194, align 2, !tbaa !187
  br label %268

268:                                              ; preds = %223, %227, %236, %244, %252, %267
  %269 = load i16, ptr %194, align 2, !tbaa !187
  %270 = icmp eq i16 %269, 1
  br i1 %270, label %271, label %280

271:                                              ; preds = %268
  %272 = call double @PIL_check_seconds_timer() #19
  %273 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 14
  store double %272, ptr %273, align 8, !tbaa !262
  %274 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %275 = load i32, ptr %274, align 4, !tbaa !191
  %276 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 15
  store i32 %275, ptr %276, align 8, !tbaa !260
  %277 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %278 = load i32, ptr %277, align 8, !tbaa !193
  %279 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 16
  store i32 %278, ptr %279, align 4, !tbaa !261
  br label %280

280:                                              ; preds = %271, %268
  %281 = call fastcc ptr @wm_event_cursor_other_windows(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %282 = icmp eq ptr %281, null
  br i1 %282, label %324, label %283

283:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %12)
  %284 = getelementptr inbounds %struct.wmWindow, ptr %281, i64 0, i32 21
  %285 = load ptr, ptr %284, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %285, i64 16, i1 false), !tbaa.struct !38
  %286 = getelementptr inbounds i8, ptr %285, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %12, ptr noundef nonnull align 4 dereferenceable(92) %286, i64 92, i1 false), !tbaa.struct !213
  %287 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %288 = load i32, ptr %287, align 4, !tbaa !191
  %289 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %290 = load i32, ptr %289, align 8, !tbaa !193
  %291 = load i16, ptr %211, align 8, !tbaa !186
  %292 = load i16, ptr %194, align 2, !tbaa !187
  %293 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %294 = call ptr %293(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !38
  %295 = getelementptr inbounds i8, ptr %294, i64 16
  store i16 %291, ptr %295, align 8, !tbaa.struct !215
  %296 = getelementptr inbounds i8, ptr %294, i64 18
  store i16 %292, ptr %296, align 2, !tbaa.struct !210
  %297 = getelementptr inbounds i8, ptr %294, i64 20
  store i32 %288, ptr %297, align 4, !tbaa.struct !211
  %298 = getelementptr inbounds i8, ptr %294, i64 24
  store i32 %290, ptr %298, align 8, !tbaa.struct !212
  %299 = getelementptr inbounds i8, ptr %294, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %299, ptr noundef nonnull align 4 dereferenceable(92) %12, i64 92, i1 false), !tbaa.struct !213
  %300 = getelementptr inbounds %struct.wmWindow, ptr %281, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  %302 = call ptr @GHOST_GetTabletData(ptr noundef %301) #19
  %303 = icmp eq ptr %302, null
  br i1 %303, label %320, label %304

304:                                              ; preds = %283
  %305 = load i32, ptr %302, align 4, !tbaa !49
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %320, label %307

307:                                              ; preds = %304
  %308 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %309 = call ptr %308(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %310 = load i32, ptr %302, align 4, !tbaa !49
  store i32 %310, ptr %309, align 4, !tbaa !52
  %311 = getelementptr inbounds %struct.GHOST_TabletData, ptr %302, i64 0, i32 1
  %312 = load float, ptr %311, align 4, !tbaa !54
  %313 = getelementptr inbounds %struct.wmTabletData, ptr %309, i64 0, i32 1
  store float %312, ptr %313, align 4, !tbaa !55
  %314 = getelementptr inbounds %struct.GHOST_TabletData, ptr %302, i64 0, i32 2
  %315 = load float, ptr %314, align 4, !tbaa !56
  %316 = getelementptr inbounds %struct.wmTabletData, ptr %309, i64 0, i32 2
  store float %315, ptr %316, align 4, !tbaa !57
  %317 = getelementptr inbounds %struct.GHOST_TabletData, ptr %302, i64 0, i32 3
  %318 = load float, ptr %317, align 4, !tbaa !58
  %319 = getelementptr inbounds %struct.wmTabletData, ptr %309, i64 0, i32 3
  store float %318, ptr %319, align 4, !tbaa !59
  br label %320

320:                                              ; preds = %283, %304, %307
  %321 = phi ptr [ %309, %307 ], [ null, %304 ], [ null, %283 ]
  %322 = getelementptr inbounds %struct.wmEvent, ptr %294, i64 0, i32 24
  store ptr %321, ptr %322, align 8, !tbaa !60
  %323 = getelementptr inbounds %struct.wmWindow, ptr %281, i64 0, i32 27
  call void @BLI_addtail(ptr noundef nonnull %323, ptr noundef %294) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %12)
  br label %880

324:                                              ; preds = %280
  %325 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %326 = call ptr %325(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %326, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %327 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !46
  %329 = call ptr @GHOST_GetTabletData(ptr noundef %328) #19
  %330 = icmp eq ptr %329, null
  br i1 %330, label %347, label %331

331:                                              ; preds = %324
  %332 = load i32, ptr %329, align 4, !tbaa !49
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %347, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %336 = call ptr %335(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %337 = load i32, ptr %329, align 4, !tbaa !49
  store i32 %337, ptr %336, align 4, !tbaa !52
  %338 = getelementptr inbounds %struct.GHOST_TabletData, ptr %329, i64 0, i32 1
  %339 = load float, ptr %338, align 4, !tbaa !54
  %340 = getelementptr inbounds %struct.wmTabletData, ptr %336, i64 0, i32 1
  store float %339, ptr %340, align 4, !tbaa !55
  %341 = getelementptr inbounds %struct.GHOST_TabletData, ptr %329, i64 0, i32 2
  %342 = load float, ptr %341, align 4, !tbaa !56
  %343 = getelementptr inbounds %struct.wmTabletData, ptr %336, i64 0, i32 2
  store float %342, ptr %343, align 4, !tbaa !57
  %344 = getelementptr inbounds %struct.GHOST_TabletData, ptr %329, i64 0, i32 3
  %345 = load float, ptr %344, align 4, !tbaa !58
  %346 = getelementptr inbounds %struct.wmTabletData, ptr %336, i64 0, i32 3
  store float %345, ptr %346, align 4, !tbaa !59
  br label %347

347:                                              ; preds = %324, %331, %334
  %348 = phi ptr [ %336, %334 ], [ null, %331 ], [ null, %324 ]
  %349 = getelementptr inbounds %struct.wmEvent, ptr %326, i64 0, i32 24
  store ptr %348, ptr %349, align 8, !tbaa !60
  %350 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  call void @BLI_addtail(ptr noundef nonnull %350, ptr noundef %326) #19
  br label %880

351:                                              ; preds = %5, %5
  %352 = load i32, ptr %4, align 4, !tbaa !264
  %353 = add i32 %352, -65
  %354 = icmp ult i32 %353, 26
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = or disjoint i32 %352, 32
  br label %422

357:                                              ; preds = %351
  %358 = add i32 %352, -48
  %359 = icmp ult i32 %358, 10
  br i1 %359, label %422, label %360

360:                                              ; preds = %357
  %361 = add i32 %352, -279
  %362 = icmp ult i32 %361, 10
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  %364 = add nsw i32 %352, -129
  br label %422

365:                                              ; preds = %360
  %366 = add i32 %352, -295
  %367 = icmp ult i32 %366, 19
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = add nuw nsw i32 %352, 5
  br label %422

370:                                              ; preds = %365
  switch i32 %352, label %421 [
    i32 0, label %422
    i32 1, label %371
    i32 2, label %372
    i32 3, label %373
    i32 13, label %374
    i32 27, label %375
    i32 32, label %376
    i32 39, label %377
    i32 44, label %378
    i32 45, label %379
    i32 46, label %380
    i32 47, label %381
    i32 59, label %382
    i32 61, label %383
    i32 91, label %384
    i32 93, label %385
    i32 92, label %386
    i32 96, label %387
    i32 256, label %388
    i32 257, label %389
    i32 258, label %390
    i32 259, label %391
    i32 262, label %392
    i32 260, label %393
    i32 261, label %394
    i32 264, label %395
    i32 265, label %396
    i32 266, label %397
    i32 267, label %398
    i32 268, label %399
    i32 269, label %400
    i32 270, label %401
    i32 271, label %402
    i32 272, label %403
    i32 273, label %404
    i32 274, label %405
    i32 275, label %406
    i32 276, label %407
    i32 277, label %408
    i32 278, label %409
    i32 289, label %410
    i32 290, label %411
    i32 291, label %412
    i32 292, label %413
    i32 293, label %414
    i32 294, label %415
    i32 263, label %416
    i32 319, label %417
    i32 320, label %418
    i32 321, label %419
    i32 322, label %420
  ]

371:                                              ; preds = %370
  br label %422

372:                                              ; preds = %370
  br label %422

373:                                              ; preds = %370
  br label %422

374:                                              ; preds = %370
  br label %422

375:                                              ; preds = %370
  br label %422

376:                                              ; preds = %370
  br label %422

377:                                              ; preds = %370
  br label %422

378:                                              ; preds = %370
  br label %422

379:                                              ; preds = %370
  br label %422

380:                                              ; preds = %370
  br label %422

381:                                              ; preds = %370
  br label %422

382:                                              ; preds = %370
  br label %422

383:                                              ; preds = %370
  br label %422

384:                                              ; preds = %370
  br label %422

385:                                              ; preds = %370
  br label %422

386:                                              ; preds = %370
  br label %422

387:                                              ; preds = %370
  br label %422

388:                                              ; preds = %370
  br label %422

389:                                              ; preds = %370
  br label %422

390:                                              ; preds = %370
  br label %422

391:                                              ; preds = %370
  br label %422

392:                                              ; preds = %370
  br label %422

393:                                              ; preds = %370
  br label %422

394:                                              ; preds = %370
  br label %422

395:                                              ; preds = %370
  br label %422

396:                                              ; preds = %370
  br label %422

397:                                              ; preds = %370
  br label %422

398:                                              ; preds = %370
  br label %422

399:                                              ; preds = %370
  br label %422

400:                                              ; preds = %370
  br label %422

401:                                              ; preds = %370
  br label %422

402:                                              ; preds = %370
  br label %422

403:                                              ; preds = %370
  br label %422

404:                                              ; preds = %370
  br label %422

405:                                              ; preds = %370
  br label %422

406:                                              ; preds = %370
  br label %422

407:                                              ; preds = %370
  br label %422

408:                                              ; preds = %370
  br label %422

409:                                              ; preds = %370
  br label %422

410:                                              ; preds = %370
  br label %422

411:                                              ; preds = %370
  br label %422

412:                                              ; preds = %370
  br label %422

413:                                              ; preds = %370
  br label %422

414:                                              ; preds = %370
  br label %422

415:                                              ; preds = %370
  br label %422

416:                                              ; preds = %370
  br label %422

417:                                              ; preds = %370
  br label %422

418:                                              ; preds = %370
  br label %422

419:                                              ; preds = %370
  br label %422

420:                                              ; preds = %370
  br label %422

421:                                              ; preds = %370
  br label %422

422:                                              ; preds = %355, %357, %363, %368, %370, %371, %372, %373, %374, %375, %376, %377, %378, %379, %380, %381, %382, %383, %384, %385, %386, %387, %388, %389, %390, %391, %392, %393, %394, %395, %396, %397, %398, %399, %400, %401, %402, %403, %404, %405, %406, %407, %408, %409, %410, %411, %412, %413, %414, %415, %416, %417, %418, %419, %420, %421
  %423 = phi i32 [ %356, %355 ], [ %364, %363 ], [ %369, %368 ], [ 171, %421 ], [ 177, %420 ], [ 176, %419 ], [ 175, %418 ], [ 174, %417 ], [ 173, %416 ], [ 161, %415 ], [ 160, %414 ], [ 162, %413 ], [ 164, %412 ], [ 163, %411 ], [ 199, %410 ], [ 169, %409 ], [ 168, %408 ], [ 170, %407 ], [ 167, %406 ], [ 224, %405 ], [ 166, %404 ], [ 165, %403 ], [ 0, %402 ], [ 138, %401 ], [ 140, %400 ], [ 139, %399 ], [ 137, %398 ], [ 0, %397 ], [ 0, %396 ], [ 211, %395 ], [ 214, %394 ], [ 213, %393 ], [ 172, %392 ], [ 215, %391 ], [ 212, %390 ], [ 216, %389 ], [ 217, %388 ], [ 229, %387 ], [ 233, %386 ], [ 236, %385 ], [ 235, %384 ], [ 234, %383 ], [ 225, %382 ], [ 232, %381 ], [ 226, %380 ], [ 230, %379 ], [ 227, %378 ], [ 228, %377 ], [ 221, %376 ], [ 218, %375 ], [ 220, %374 ], [ 0, %373 ], [ 222, %372 ], [ 219, %371 ], [ %352, %357 ], [ 223, %370 ]
  %424 = trunc i32 %423 to i16
  %425 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 %424, ptr %425, align 8, !tbaa !186
  %426 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %4, i64 0, i32 1
  %427 = load i8, ptr %426, align 4, !tbaa !266
  %428 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 8
  store i8 %427, ptr %428, align 2, !tbaa !267
  %429 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 7
  %430 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %429, ptr noundef nonnull align 1 dereferenceable(6) %430, i64 6, i1 false)
  %431 = icmp eq i32 %2, 8
  %432 = select i1 %431, i16 1, i16 2
  %433 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %432, ptr %433, align 2, !tbaa !187
  call fastcc void @wm_eventemulation(ptr noundef nonnull %6)
  %434 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 3
  %435 = load i16, ptr %434, align 2, !tbaa !187
  %436 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 11
  store i16 %435, ptr %436, align 2, !tbaa !221
  %437 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 2
  %438 = load i16, ptr %437, align 8, !tbaa !186
  %439 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 10
  store i16 %438, ptr %439, align 4, !tbaa !220
  %440 = load i16, ptr %433, align 2, !tbaa !187
  store i16 %440, ptr %434, align 2, !tbaa !187
  %441 = load i16, ptr %425, align 8, !tbaa !186
  store i16 %441, ptr %437, align 8, !tbaa !186
  %442 = icmp eq i32 %2, 9
  br i1 %442, label %443, label %448

443:                                              ; preds = %422
  store i8 0, ptr %428, align 2, !tbaa !267
  %444 = load i8, ptr %429, align 4, !tbaa !43
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %457, label %446

446:                                              ; preds = %443
  %447 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.wm_event_add_ghostevent)
  br label %457

448:                                              ; preds = %422
  %449 = load i8, ptr %428, align 2
  %450 = add i8 %449, -1
  %451 = icmp ult i8 %450, 31
  br i1 %451, label %452, label %453

452:                                              ; preds = %448
  store i8 0, ptr %428, align 2, !tbaa !267
  br label %453

453:                                              ; preds = %452, %448
  %454 = load i8, ptr %429, align 4
  %455 = add i8 %454, -1
  %456 = icmp ult i8 %455, 31
  br i1 %456, label %457, label %458

457:                                              ; preds = %453, %443, %446
  store i8 0, ptr %429, align 4, !tbaa !43
  br label %458

458:                                              ; preds = %457, %453
  %459 = load i8, ptr %429, align 4, !tbaa !43
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %468, label %461

461:                                              ; preds = %458
  %462 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %429) #19
  %463 = icmp eq i32 %462, -1
  br i1 %463, label %464, label %468

464:                                              ; preds = %461
  %465 = load i8, ptr %429, align 4, !tbaa !43
  %466 = zext i8 %465 to i32
  %467 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.wm_event_add_ghostevent, i32 noundef %466)
  store i8 0, ptr %429, align 4, !tbaa !43
  br label %468

468:                                              ; preds = %461, %464, %458
  %469 = load i16, ptr %425, align 8, !tbaa !186
  switch i16 %469, label %546 [
    i16 217, label %470
    i16 216, label %470
    i16 212, label %489
    i16 215, label %489
    i16 213, label %508
    i16 214, label %508
    i16 172, label %527
  ]

470:                                              ; preds = %468, %468
  %471 = load i16, ptr %433, align 2, !tbaa !187
  %472 = icmp eq i16 %471, 1
  br i1 %472, label %473, label %486

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 18
  %475 = load i16, ptr %474, align 2, !tbaa !268
  %476 = icmp eq i16 %475, 0
  br i1 %476, label %477, label %486

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 19
  %479 = load i16, ptr %478, align 4, !tbaa !269
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %481, label %486

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 20
  %483 = load i16, ptr %482, align 2, !tbaa !270
  %484 = icmp eq i16 %483, 0
  %485 = select i1 %484, i16 1, i16 3
  br label %486

486:                                              ; preds = %473, %477, %481, %470
  %487 = phi i16 [ 0, %470 ], [ 3, %477 ], [ 3, %473 ], [ %485, %481 ]
  %488 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 17
  store i16 %487, ptr %488, align 8, !tbaa !271
  br label %561

489:                                              ; preds = %468, %468
  %490 = load i16, ptr %433, align 2, !tbaa !187
  %491 = icmp eq i16 %490, 1
  br i1 %491, label %492, label %505

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 17
  %494 = load i16, ptr %493, align 8, !tbaa !271
  %495 = icmp eq i16 %494, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 19
  %498 = load i16, ptr %497, align 4, !tbaa !269
  %499 = icmp eq i16 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 20
  %502 = load i16, ptr %501, align 2, !tbaa !270
  %503 = icmp eq i16 %502, 0
  %504 = select i1 %503, i16 1, i16 3
  br label %505

505:                                              ; preds = %492, %496, %500, %489
  %506 = phi i16 [ 0, %489 ], [ 3, %496 ], [ 3, %492 ], [ %504, %500 ]
  %507 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 18
  store i16 %506, ptr %507, align 2, !tbaa !268
  br label %561

508:                                              ; preds = %468, %468
  %509 = load i16, ptr %433, align 2, !tbaa !187
  %510 = icmp eq i16 %509, 1
  br i1 %510, label %511, label %524

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 18
  %513 = load i16, ptr %512, align 2, !tbaa !268
  %514 = icmp eq i16 %513, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 17
  %517 = load i16, ptr %516, align 8, !tbaa !271
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 20
  %521 = load i16, ptr %520, align 2, !tbaa !270
  %522 = icmp eq i16 %521, 0
  %523 = select i1 %522, i16 1, i16 3
  br label %524

524:                                              ; preds = %511, %515, %519, %508
  %525 = phi i16 [ 0, %508 ], [ 3, %515 ], [ 3, %511 ], [ %523, %519 ]
  %526 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 19
  store i16 %525, ptr %526, align 4, !tbaa !269
  br label %561

527:                                              ; preds = %468
  %528 = load i16, ptr %433, align 2, !tbaa !187
  %529 = icmp eq i16 %528, 1
  br i1 %529, label %530, label %543

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 18
  %532 = load i16, ptr %531, align 2, !tbaa !268
  %533 = icmp eq i16 %532, 0
  br i1 %533, label %534, label %543

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 19
  %536 = load i16, ptr %535, align 4, !tbaa !269
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 17
  %540 = load i16, ptr %539, align 8, !tbaa !271
  %541 = icmp eq i16 %540, 0
  %542 = select i1 %541, i16 1, i16 3
  br label %543

543:                                              ; preds = %530, %534, %538, %527
  %544 = phi i16 [ 0, %527 ], [ 3, %534 ], [ 3, %530 ], [ %542, %538 ]
  %545 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 20
  store i16 %544, ptr %545, align 2, !tbaa !270
  br label %561

546:                                              ; preds = %468
  %547 = load i16, ptr %433, align 2, !tbaa !187
  %548 = icmp eq i16 %547, 1
  %549 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  %550 = load i16, ptr %549, align 8
  %551 = icmp eq i16 %550, 0
  %552 = select i1 %548, i1 %551, i1 false
  br i1 %552, label %553, label %555

553:                                              ; preds = %546
  %554 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 21
  store i16 %469, ptr %554, align 8, !tbaa !272
  br label %561

555:                                              ; preds = %546
  %556 = icmp eq i16 %547, 2
  %557 = icmp eq i16 %550, %469
  %558 = select i1 %556, i1 %557, i1 false
  br i1 %558, label %559, label %561

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 21
  store i16 0, ptr %560, align 8, !tbaa !272
  store i16 0, ptr %549, align 8, !tbaa !272
  br label %561

561:                                              ; preds = %553, %559, %555, %543, %524, %505, %486
  %562 = load i16, ptr %439, align 4, !tbaa !220
  %563 = icmp eq i16 %469, %562
  br i1 %563, label %564, label %605

564:                                              ; preds = %561
  %565 = load i16, ptr %436, align 2, !tbaa !221
  %566 = icmp eq i16 %565, 2
  %567 = load i16, ptr %433, align 2
  %568 = icmp eq i16 %567, 1
  %569 = select i1 %566, i1 %568, i1 false
  br i1 %569, label %570, label %605

570:                                              ; preds = %564
  %571 = add i16 %469, -20
  %572 = icmp ult i16 %571, -19
  br i1 %572, label %589, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %575 = load i32, ptr %574, align 4, !tbaa !191
  %576 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 15
  %577 = load i32, ptr %576, align 8, !tbaa !260
  %578 = sub nsw i32 %575, %577
  %579 = call i32 @llvm.abs.i32(i32 %578, i1 true)
  %580 = icmp ult i32 %579, 3
  br i1 %580, label %581, label %605

581:                                              ; preds = %573
  %582 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %583 = load i32, ptr %582, align 8, !tbaa !193
  %584 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 16
  %585 = load i32, ptr %584, align 4, !tbaa !261
  %586 = sub nsw i32 %583, %585
  %587 = call i32 @llvm.abs.i32(i32 %586, i1 true)
  %588 = icmp ult i32 %587, 3
  br i1 %588, label %589, label %605

589:                                              ; preds = %581, %570
  %590 = call double @PIL_check_seconds_timer() #19
  %591 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 14
  %592 = load double, ptr %591, align 8, !tbaa !262
  %593 = fsub double %590, %592
  %594 = fmul double %593, 1.000000e+03
  %595 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !263
  %596 = sitofp i16 %595 to double
  %597 = fcmp olt double %594, %596
  br i1 %597, label %598, label %605

598:                                              ; preds = %589
  %599 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %600 = and i32 %599, 24
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %598
  %603 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @__func__.wm_event_add_ghostevent)
  br label %604

604:                                              ; preds = %602, %598
  store i16 4, ptr %433, align 2, !tbaa !187
  store i16 4, ptr %434, align 2, !tbaa !187
  br label %605

605:                                              ; preds = %561, %564, %573, %581, %589, %604
  %606 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  %607 = load i16, ptr %606, align 8, !tbaa !272
  %608 = load i16, ptr %425, align 8, !tbaa !186
  %609 = icmp eq i16 %607, %608
  br i1 %609, label %610, label %611

610:                                              ; preds = %605
  store i16 0, ptr %606, align 8, !tbaa !272
  br label %611

611:                                              ; preds = %610, %605
  %612 = load i16, ptr %606, align 8, !tbaa !272
  %613 = icmp eq i16 %612, 171
  br i1 %613, label %614, label %615

614:                                              ; preds = %611
  store i16 0, ptr %606, align 8, !tbaa !272
  br label %615

615:                                              ; preds = %614, %611
  %616 = icmp eq i16 %608, 218
  %617 = load i16, ptr %433, align 2
  %618 = icmp eq i16 %617, 1
  %619 = select i1 %616, i1 %618, i1 false
  %620 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 17
  %621 = load i16, ptr %620, align 8
  %622 = icmp eq i16 %621, 0
  %623 = select i1 %619, i1 %622, i1 false
  %624 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 18
  %625 = load i16, ptr %624, align 2
  %626 = icmp eq i16 %625, 0
  %627 = select i1 %623, i1 %626, i1 false
  %628 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 19
  %629 = load i16, ptr %628, align 4
  %630 = icmp eq i16 %629, 0
  %631 = select i1 %627, i1 %630, i1 false
  br i1 %631, label %632, label %633

632:                                              ; preds = %615
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !273
  br label %633

633:                                              ; preds = %632, %615
  br i1 %618, label %634, label %643

634:                                              ; preds = %633
  %635 = call double @PIL_check_seconds_timer() #19
  %636 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 14
  store double %635, ptr %636, align 8, !tbaa !262
  %637 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %638 = load i32, ptr %637, align 4, !tbaa !191
  %639 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 15
  store i32 %638, ptr %639, align 8, !tbaa !260
  %640 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %641 = load i32, ptr %640, align 8, !tbaa !193
  %642 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 16
  store i32 %641, ptr %642, align 4, !tbaa !261
  br label %643

643:                                              ; preds = %634, %633
  %644 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %645 = call ptr %644(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %645, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %646 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %647 = load ptr, ptr %646, align 8, !tbaa !46
  %648 = call ptr @GHOST_GetTabletData(ptr noundef %647) #19
  %649 = icmp eq ptr %648, null
  br i1 %649, label %666, label %650

650:                                              ; preds = %643
  %651 = load i32, ptr %648, align 4, !tbaa !49
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %666, label %653

653:                                              ; preds = %650
  %654 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %655 = call ptr %654(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %656 = load i32, ptr %648, align 4, !tbaa !49
  store i32 %656, ptr %655, align 4, !tbaa !52
  %657 = getelementptr inbounds %struct.GHOST_TabletData, ptr %648, i64 0, i32 1
  %658 = load float, ptr %657, align 4, !tbaa !54
  %659 = getelementptr inbounds %struct.wmTabletData, ptr %655, i64 0, i32 1
  store float %658, ptr %659, align 4, !tbaa !55
  %660 = getelementptr inbounds %struct.GHOST_TabletData, ptr %648, i64 0, i32 2
  %661 = load float, ptr %660, align 4, !tbaa !56
  %662 = getelementptr inbounds %struct.wmTabletData, ptr %655, i64 0, i32 2
  store float %661, ptr %662, align 4, !tbaa !57
  %663 = getelementptr inbounds %struct.GHOST_TabletData, ptr %648, i64 0, i32 3
  %664 = load float, ptr %663, align 4, !tbaa !58
  %665 = getelementptr inbounds %struct.wmTabletData, ptr %655, i64 0, i32 3
  store float %664, ptr %665, align 4, !tbaa !59
  br label %666

666:                                              ; preds = %643, %650, %653
  %667 = phi ptr [ %655, %653 ], [ null, %650 ], [ null, %643 ]
  %668 = getelementptr inbounds %struct.wmEvent, ptr %645, i64 0, i32 24
  store ptr %667, ptr %668, align 8, !tbaa !60
  %669 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  call void @BLI_addtail(ptr noundef nonnull %669, ptr noundef %645) #19
  br label %880

670:                                              ; preds = %5
  %671 = load i32, ptr %4, align 4, !tbaa !257
  %672 = icmp sgt i32 %671, 0
  %673 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %674 = select i1 %672, i16 10, i16 11
  store i16 %674, ptr %673, align 8, !tbaa !186
  %675 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 1, ptr %675, align 2, !tbaa !187
  %676 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %677 = tail call ptr %676(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %677, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %678 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !46
  %680 = tail call ptr @GHOST_GetTabletData(ptr noundef %679) #19
  %681 = icmp eq ptr %680, null
  br i1 %681, label %698, label %682

682:                                              ; preds = %670
  %683 = load i32, ptr %680, align 4, !tbaa !49
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %698, label %685

685:                                              ; preds = %682
  %686 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %687 = tail call ptr %686(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %688 = load i32, ptr %680, align 4, !tbaa !49
  store i32 %688, ptr %687, align 4, !tbaa !52
  %689 = getelementptr inbounds %struct.GHOST_TabletData, ptr %680, i64 0, i32 1
  %690 = load float, ptr %689, align 4, !tbaa !54
  %691 = getelementptr inbounds %struct.wmTabletData, ptr %687, i64 0, i32 1
  store float %690, ptr %691, align 4, !tbaa !55
  %692 = getelementptr inbounds %struct.GHOST_TabletData, ptr %680, i64 0, i32 2
  %693 = load float, ptr %692, align 4, !tbaa !56
  %694 = getelementptr inbounds %struct.wmTabletData, ptr %687, i64 0, i32 2
  store float %693, ptr %694, align 4, !tbaa !57
  %695 = getelementptr inbounds %struct.GHOST_TabletData, ptr %680, i64 0, i32 3
  %696 = load float, ptr %695, align 4, !tbaa !58
  %697 = getelementptr inbounds %struct.wmTabletData, ptr %687, i64 0, i32 3
  store float %696, ptr %697, align 4, !tbaa !59
  br label %698

698:                                              ; preds = %670, %682, %685
  %699 = phi ptr [ %687, %685 ], [ null, %682 ], [ null, %670 ]
  %700 = getelementptr inbounds %struct.wmEvent, ptr %677, i64 0, i32 24
  store ptr %699, ptr %700, align 8, !tbaa !60
  %701 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %701, ptr noundef %677) #19
  br label %880

702:                                              ; preds = %5
  %703 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 272, ptr %703, align 8, !tbaa !186
  %704 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  store i16 2, ptr %704, align 8, !tbaa !64
  %705 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  store ptr %4, ptr %705, align 8, !tbaa !62
  %706 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %706, align 2, !tbaa !187
  %707 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  store i16 0, ptr %707, align 8, !tbaa !272
  %708 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %709 = tail call ptr %708(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %709, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %710 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %711 = load ptr, ptr %710, align 8, !tbaa !46
  %712 = tail call ptr @GHOST_GetTabletData(ptr noundef %711) #19
  %713 = icmp eq ptr %712, null
  br i1 %713, label %730, label %714

714:                                              ; preds = %702
  %715 = load i32, ptr %712, align 4, !tbaa !49
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %730, label %717

717:                                              ; preds = %714
  %718 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %719 = tail call ptr %718(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %720 = load i32, ptr %712, align 4, !tbaa !49
  store i32 %720, ptr %719, align 4, !tbaa !52
  %721 = getelementptr inbounds %struct.GHOST_TabletData, ptr %712, i64 0, i32 1
  %722 = load float, ptr %721, align 4, !tbaa !54
  %723 = getelementptr inbounds %struct.wmTabletData, ptr %719, i64 0, i32 1
  store float %722, ptr %723, align 4, !tbaa !55
  %724 = getelementptr inbounds %struct.GHOST_TabletData, ptr %712, i64 0, i32 2
  %725 = load float, ptr %724, align 4, !tbaa !56
  %726 = getelementptr inbounds %struct.wmTabletData, ptr %719, i64 0, i32 2
  store float %725, ptr %726, align 4, !tbaa !57
  %727 = getelementptr inbounds %struct.GHOST_TabletData, ptr %712, i64 0, i32 3
  %728 = load float, ptr %727, align 4, !tbaa !58
  %729 = getelementptr inbounds %struct.wmTabletData, ptr %719, i64 0, i32 3
  store float %728, ptr %729, align 4, !tbaa !59
  br label %730

730:                                              ; preds = %702, %714, %717
  %731 = phi ptr [ %719, %717 ], [ null, %714 ], [ null, %702 ]
  %732 = getelementptr inbounds %struct.wmEvent, ptr %709, i64 0, i32 24
  store ptr %731, ptr %732, align 8, !tbaa !60
  %733 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %733, ptr noundef %709) #19
  br label %880

734:                                              ; preds = %5
  %735 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 400, ptr %735, align 8, !tbaa !186
  %736 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %736, align 2, !tbaa !187
  %737 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %738 = tail call ptr %737(i64 noundef 32, ptr noundef nonnull @.str.32) #19
  %739 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !274
  %740 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !275
  %741 = load float, ptr %4, align 4, !tbaa !276
  %742 = fmul float %739, %741
  store float %742, ptr %738, align 4, !tbaa !276
  %743 = getelementptr inbounds float, ptr %4, i64 1
  %744 = load float, ptr %743, align 4, !tbaa !276
  %745 = fmul float %739, %744
  %746 = getelementptr inbounds float, ptr %738, i64 1
  store float %745, ptr %746, align 4, !tbaa !276
  %747 = getelementptr inbounds float, ptr %4, i64 2
  %748 = load float, ptr %747, align 4, !tbaa !276
  %749 = fmul float %739, %748
  %750 = getelementptr inbounds float, ptr %738, i64 2
  store float %749, ptr %750, align 4, !tbaa !276
  %751 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %738, i64 0, i32 1
  %752 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %4, i64 0, i32 3
  %753 = load float, ptr %752, align 4, !tbaa !276
  %754 = fmul float %740, %753
  store float %754, ptr %751, align 4, !tbaa !276
  %755 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %4, i64 0, i32 4
  %756 = load float, ptr %755, align 4, !tbaa !276
  %757 = fmul float %740, %756
  %758 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %738, i64 0, i32 1, i64 1
  store float %757, ptr %758, align 4, !tbaa !276
  %759 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %4, i64 0, i32 5
  %760 = load float, ptr %759, align 4, !tbaa !276
  %761 = fmul float %740, %760
  %762 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %738, i64 0, i32 1, i64 2
  store float %761, ptr %762, align 4, !tbaa !276
  %763 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %764 = and i32 %763, 128
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %768, label %766

766:                                              ; preds = %734
  %767 = fneg float %749
  store float %767, ptr %746, align 4, !tbaa !276
  store float %745, ptr %750, align 4, !tbaa !276
  br label %768

768:                                              ; preds = %734, %766
  %769 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %4, i64 0, i32 6
  %770 = load float, ptr %769, align 4, !tbaa !278
  %771 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %738, i64 0, i32 2
  store float %770, ptr %771, align 4, !tbaa !280
  %772 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %4, i64 0, i32 7
  %773 = load i32, ptr %772, align 4, !tbaa !282
  %774 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %738, i64 0, i32 3
  store i32 %773, ptr %774, align 4, !tbaa !283
  %775 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  store i16 4, ptr %775, align 8, !tbaa !64
  %776 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  store ptr %738, ptr %776, align 8, !tbaa !62
  %777 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 26
  store i16 1, ptr %777, align 2, !tbaa !63
  %778 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %779 = tail call ptr %778(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %779, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %780 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %781 = load ptr, ptr %780, align 8, !tbaa !46
  %782 = tail call ptr @GHOST_GetTabletData(ptr noundef %781) #19
  %783 = icmp eq ptr %782, null
  br i1 %783, label %800, label %784

784:                                              ; preds = %768
  %785 = load i32, ptr %782, align 4, !tbaa !49
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %800, label %787

787:                                              ; preds = %784
  %788 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %789 = tail call ptr %788(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %790 = load i32, ptr %782, align 4, !tbaa !49
  store i32 %790, ptr %789, align 4, !tbaa !52
  %791 = getelementptr inbounds %struct.GHOST_TabletData, ptr %782, i64 0, i32 1
  %792 = load float, ptr %791, align 4, !tbaa !54
  %793 = getelementptr inbounds %struct.wmTabletData, ptr %789, i64 0, i32 1
  store float %792, ptr %793, align 4, !tbaa !55
  %794 = getelementptr inbounds %struct.GHOST_TabletData, ptr %782, i64 0, i32 2
  %795 = load float, ptr %794, align 4, !tbaa !56
  %796 = getelementptr inbounds %struct.wmTabletData, ptr %789, i64 0, i32 2
  store float %795, ptr %796, align 4, !tbaa !57
  %797 = getelementptr inbounds %struct.GHOST_TabletData, ptr %782, i64 0, i32 3
  %798 = load float, ptr %797, align 4, !tbaa !58
  %799 = getelementptr inbounds %struct.wmTabletData, ptr %789, i64 0, i32 3
  store float %798, ptr %799, align 4, !tbaa !59
  br label %800

800:                                              ; preds = %768, %784, %787
  %801 = phi ptr [ %789, %787 ], [ null, %784 ], [ null, %768 ]
  %802 = getelementptr inbounds %struct.wmEvent, ptr %779, i64 0, i32 24
  store ptr %801, ptr %802, align 8, !tbaa !60
  %803 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %803, ptr noundef %779) #19
  %804 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %805 = and i32 %804, 24
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %880, label %807

807:                                              ; preds = %800
  %808 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %809 = load i32, ptr %808, align 4, !tbaa !191
  %810 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %811 = load i32, ptr %810, align 8, !tbaa !193
  %812 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @__func__.wm_event_add_ghostevent, i32 noundef %809, i32 noundef %811)
  br label %880

813:                                              ; preds = %5
  %814 = getelementptr inbounds %struct.GHOST_TEventNDOFButtonData, ptr %4, i64 0, i32 1
  %815 = load i16, ptr %814, align 4, !tbaa !284
  %816 = add i16 %815, 400
  %817 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 %816, ptr %817, align 8, !tbaa !186
  %818 = load i32, ptr %4, align 4, !tbaa !286
  switch i32 %818, label %823 [
    i32 0, label %820
    i32 1, label %819
  ]

819:                                              ; preds = %813
  br label %820

820:                                              ; preds = %813, %819
  %821 = phi i16 [ 2, %819 ], [ 1, %813 ]
  %822 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %821, ptr %822, align 2, !tbaa !187
  br label %823

823:                                              ; preds = %820, %813
  %824 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  store i16 0, ptr %824, align 8, !tbaa !64
  %825 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  store ptr null, ptr %825, align 8, !tbaa !62
  %826 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %827 = tail call ptr %826(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %827, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %828 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %829 = load ptr, ptr %828, align 8, !tbaa !46
  %830 = tail call ptr @GHOST_GetTabletData(ptr noundef %829) #19
  %831 = icmp eq ptr %830, null
  br i1 %831, label %848, label %832

832:                                              ; preds = %823
  %833 = load i32, ptr %830, align 4, !tbaa !49
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %848, label %835

835:                                              ; preds = %832
  %836 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %837 = tail call ptr %836(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %838 = load i32, ptr %830, align 4, !tbaa !49
  store i32 %838, ptr %837, align 4, !tbaa !52
  %839 = getelementptr inbounds %struct.GHOST_TabletData, ptr %830, i64 0, i32 1
  %840 = load float, ptr %839, align 4, !tbaa !54
  %841 = getelementptr inbounds %struct.wmTabletData, ptr %837, i64 0, i32 1
  store float %840, ptr %841, align 4, !tbaa !55
  %842 = getelementptr inbounds %struct.GHOST_TabletData, ptr %830, i64 0, i32 2
  %843 = load float, ptr %842, align 4, !tbaa !56
  %844 = getelementptr inbounds %struct.wmTabletData, ptr %837, i64 0, i32 2
  store float %843, ptr %844, align 4, !tbaa !57
  %845 = getelementptr inbounds %struct.GHOST_TabletData, ptr %830, i64 0, i32 3
  %846 = load float, ptr %845, align 4, !tbaa !58
  %847 = getelementptr inbounds %struct.wmTabletData, ptr %837, i64 0, i32 3
  store float %846, ptr %847, align 4, !tbaa !59
  br label %848

848:                                              ; preds = %823, %832, %835
  %849 = phi ptr [ %837, %835 ], [ null, %832 ], [ null, %823 ]
  %850 = getelementptr inbounds %struct.wmEvent, ptr %827, i64 0, i32 24
  store ptr %849, ptr %850, align 8, !tbaa !60
  %851 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %851, ptr noundef %827) #19
  br label %880

852:                                              ; preds = %5
  %853 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 260, ptr %853, align 8, !tbaa !186
  %854 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %855 = tail call ptr %854(i64 noundef 120, ptr noundef nonnull @.str) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %855, ptr noundef nonnull align 8 dereferenceable(120) %6, i64 120, i1 false), !tbaa.struct !38
  %856 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %857 = load ptr, ptr %856, align 8, !tbaa !46
  %858 = tail call ptr @GHOST_GetTabletData(ptr noundef %857) #19
  %859 = icmp eq ptr %858, null
  br i1 %859, label %876, label %860

860:                                              ; preds = %852
  %861 = load i32, ptr %858, align 4, !tbaa !49
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %876, label %863

863:                                              ; preds = %860
  %864 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %865 = tail call ptr %864(i64 noundef 16, ptr noundef nonnull @.str.31) #19
  %866 = load i32, ptr %858, align 4, !tbaa !49
  store i32 %866, ptr %865, align 4, !tbaa !52
  %867 = getelementptr inbounds %struct.GHOST_TabletData, ptr %858, i64 0, i32 1
  %868 = load float, ptr %867, align 4, !tbaa !54
  %869 = getelementptr inbounds %struct.wmTabletData, ptr %865, i64 0, i32 1
  store float %868, ptr %869, align 4, !tbaa !55
  %870 = getelementptr inbounds %struct.GHOST_TabletData, ptr %858, i64 0, i32 2
  %871 = load float, ptr %870, align 4, !tbaa !56
  %872 = getelementptr inbounds %struct.wmTabletData, ptr %865, i64 0, i32 2
  store float %871, ptr %872, align 4, !tbaa !57
  %873 = getelementptr inbounds %struct.GHOST_TabletData, ptr %858, i64 0, i32 3
  %874 = load float, ptr %873, align 4, !tbaa !58
  %875 = getelementptr inbounds %struct.wmTabletData, ptr %865, i64 0, i32 3
  store float %874, ptr %875, align 4, !tbaa !59
  br label %876

876:                                              ; preds = %852, %860, %863
  %877 = phi ptr [ %865, %863 ], [ null, %860 ], [ null, %852 ]
  %878 = getelementptr inbounds %struct.wmEvent, ptr %855, i64 0, i32 24
  store ptr %877, ptr %878, align 8, !tbaa !60
  %879 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %879, ptr noundef %855) #19
  br label %880

880:                                              ; preds = %320, %347, %60, %127, %800, %807, %5, %876, %848, %730, %698, %666, %187
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_event_cursor_other_windows(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !191
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !287
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %104, label %13

13:                                               ; preds = %3
  %14 = icmp slt i32 %5, 0
  %15 = icmp slt i32 %7, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #19
  %19 = icmp sgt i32 %5, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #19
  %22 = add nsw i32 %21, 30
  %23 = icmp sgt i32 %7, %22
  br i1 %23, label %24, label %103

24:                                               ; preds = %20, %17, %13
  %25 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 29
  br label %26

26:                                               ; preds = %34, %24
  %27 = phi ptr [ %25, %24 ], [ %28, %34 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmEventHandler, ptr %28, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !243
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %100

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmEventHandler, ptr %28, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !166
  %37 = icmp eq ptr %36, null
  br i1 %37, label %26, label %100, !llvm.loop !288

38:                                               ; preds = %26
  %39 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !289
  %40 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %41 = load i16, ptr %40, align 8, !tbaa !290
  %42 = sitofp i16 %41 to float
  %43 = fmul float %39, %42
  %44 = fptosi float %43 to i32
  %45 = add nsw i32 %5, %44
  %46 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 7
  %47 = load i16, ptr %46, align 2, !tbaa !291
  %48 = sitofp i16 %47 to float
  %49 = fmul float %39, %48
  %50 = fptosi float %49 to i32
  %51 = add nsw i32 %7, %50
  %52 = load ptr, ptr %8, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %100, label %54

54:                                               ; preds = %38, %96
  %55 = phi ptr [ %98, %96 ], [ %52, %38 ]
  %56 = phi ptr [ %97, %96 ], [ undef, %38 ]
  %57 = icmp eq ptr %55, %1
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !289
  %60 = getelementptr inbounds %struct.wmWindow, ptr %55, i64 0, i32 6
  %61 = load i16, ptr %60, align 8, !tbaa !290
  %62 = sitofp i16 %61 to float
  %63 = fmul float %59, %62
  %64 = fptosi float %63 to i32
  %65 = getelementptr inbounds %struct.wmWindow, ptr %55, i64 0, i32 7
  %66 = load i16, ptr %65, align 2, !tbaa !291
  %67 = sitofp i16 %66 to float
  %68 = fmul float %59, %67
  %69 = fptosi float %68 to i32
  %70 = sub nsw i32 %45, %64
  %71 = icmp sgt i32 %70, -1
  %72 = icmp sgt i16 %66, -1
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %93

74:                                               ; preds = %58
  %75 = tail call i32 @WM_window_pixels_x(ptr noundef nonnull %55) #19
  %76 = icmp sgt i32 %70, %75
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = sub nsw i32 %51, %69
  %79 = tail call i32 @WM_window_pixels_y(ptr noundef nonnull %55) #19
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !289
  %83 = load i16, ptr %60, align 8, !tbaa !290
  %84 = sitofp i16 %83 to float
  %85 = fmul float %82, %84
  %86 = fptosi float %85 to i32
  %87 = sub nsw i32 %45, %86
  store i32 %87, ptr %4, align 4, !tbaa !191
  %88 = load i16, ptr %65, align 2, !tbaa !291
  %89 = sitofp i16 %88 to float
  %90 = fmul float %82, %89
  %91 = fptosi float %90 to i32
  %92 = sub nsw i32 %51, %91
  store i32 %92, ptr %6, align 8, !tbaa !193
  br label %93

93:                                               ; preds = %58, %74, %77, %81
  %94 = phi i1 [ false, %81 ], [ true, %77 ], [ true, %74 ], [ true, %58 ]
  %95 = phi ptr [ %55, %81 ], [ %56, %77 ], [ %56, %74 ], [ %56, %58 ]
  br i1 %94, label %96, label %100

96:                                               ; preds = %54, %93
  %97 = phi ptr [ %95, %93 ], [ %56, %54 ]
  %98 = load ptr, ptr %55, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %54, !llvm.loop !292

100:                                              ; preds = %30, %34, %93, %96, %38
  %101 = phi i1 [ true, %38 ], [ true, %96 ], [ false, %93 ], [ false, %34 ], [ false, %30 ]
  %102 = phi ptr [ undef, %38 ], [ %97, %96 ], [ %95, %93 ], [ null, %34 ], [ null, %30 ]
  br i1 %101, label %103, label %104

103:                                              ; preds = %100, %20
  br label %104

104:                                              ; preds = %3, %100, %103
  %105 = phi ptr [ null, %103 ], [ %102, %100 ], [ null, %3 ]
  ret ptr %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wm_eventemulation(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %3 = and i32 %2, 4096
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !186
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !187
  switch i16 %11, label %28 [
    i16 1, label %12
    i16 2, label %19
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  %14 = load i16, ptr %13, align 4, !tbaa !269
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i16 2, ptr %6, align 8, !tbaa !186
  br label %23

17:                                               ; preds = %12
  %18 = icmp eq i16 %11, 2
  br i1 %18, label %19, label %28

19:                                               ; preds = %9, %17
  %20 = load i1, ptr @wm_eventemulation.mmb_emulated, align 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  store i16 2, ptr %6, align 8, !tbaa !186
  %22 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %13, %16 ]
  %25 = phi i1 [ false, %21 ], [ true, %16 ]
  store i16 0, ptr %24, align 4, !tbaa !269
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  store i1 %27, ptr @wm_eventemulation.mmb_emulated, align 4
  br label %28

28:                                               ; preds = %26, %9, %5, %17, %1
  %29 = and i32 %2, 8192
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !186
  switch i16 %33, label %48 [
    i16 48, label %46
    i16 49, label %34
    i16 50, label %35
    i16 51, label %36
    i16 52, label %37
    i16 53, label %38
    i16 54, label %39
    i16 55, label %40
    i16 56, label %41
    i16 57, label %42
    i16 230, label %43
    i16 234, label %44
    i16 233, label %45
  ]

34:                                               ; preds = %31
  br label %46

35:                                               ; preds = %31
  br label %46

36:                                               ; preds = %31
  br label %46

37:                                               ; preds = %31
  br label %46

38:                                               ; preds = %31
  br label %46

39:                                               ; preds = %31
  br label %46

40:                                               ; preds = %31
  br label %46

41:                                               ; preds = %31
  br label %46

42:                                               ; preds = %31
  br label %46

43:                                               ; preds = %31
  br label %46

44:                                               ; preds = %31
  br label %46

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %31, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  %47 = phi i16 [ 151, %34 ], [ 152, %35 ], [ 153, %36 ], [ 154, %37 ], [ 155, %38 ], [ 156, %39 ], [ 157, %40 ], [ 158, %41 ], [ 159, %42 ], [ 162, %43 ], [ 164, %44 ], [ 161, %45 ], [ 150, %31 ]
  store i16 %47, ptr %32, align 8, !tbaa !186
  br label %48

48:                                               ; preds = %46, %31, %28
  ret void
}

declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @WM_set_locked_interface(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 19
  store i8 %5, ptr %6, align 8, !tbaa !293
  tail call void @BKE_spacedata_draw_locks(i32 noundef %3) #19
  ret void
}

declare void @BKE_spacedata_draw_locks(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_ndof_pan_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #11 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, i32 16384, i32 256
  %6 = load float, ptr %0, align 4, !tbaa !276
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %8 = and i32 %7, 4096
  %9 = icmp eq i32 %8, 0
  %10 = fneg float %6
  %11 = select i1 %9, float %6, float %10
  store float %11, ptr %1, align 4, !tbaa !276
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !276
  %14 = and i32 %7, 8192
  %15 = icmp eq i32 %14, 0
  %16 = fneg float %13
  %17 = select i1 %15, float %13, float %16
  %18 = getelementptr inbounds float, ptr %1, i64 1
  store float %17, ptr %18, align 4, !tbaa !276
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !276
  %21 = and i32 %7, %5
  %22 = icmp eq i32 %21, 0
  %23 = fneg float %20
  %24 = select i1 %22, float %20, float %23
  %25 = getelementptr inbounds float, ptr %1, i64 2
  store float %24, ptr %25, align 4, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_ndof_rotate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !276
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  %8 = fneg float %4
  %9 = select i1 %7, float %4, float %8
  store float %9, ptr %1, align 4, !tbaa !276
  %10 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !276
  %12 = and i32 %5, 1024
  %13 = icmp eq i32 %12, 0
  %14 = fneg float %11
  %15 = select i1 %13, float %11, float %14
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !276
  %17 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !276
  %19 = and i32 %5, 2048
  %20 = icmp eq i32 %19, 0
  %21 = fneg float %18
  %22 = select i1 %20, float %18, float %21
  %23 = getelementptr inbounds float, ptr %1, i64 2
  store float %22, ptr %23, align 4, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @WM_event_ndof_to_axis_angle(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !276
  %5 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !276
  %7 = fmul float %6, %6
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !276
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = tail call float @sqrtf(float noundef %11) #19
  %15 = fdiv float 1.000000e+00, %14
  %16 = load float, ptr %3, align 4, !tbaa !276
  %17 = fmul float %16, %15
  store float %17, ptr %1, align 4, !tbaa !276
  %18 = load float, ptr %5, align 4, !tbaa !276
  %19 = fmul float %15, %18
  %20 = getelementptr inbounds float, ptr %1, i64 1
  store float %19, ptr %20, align 4, !tbaa !276
  %21 = load float, ptr %9, align 4, !tbaa !276
  %22 = fmul float %15, %21
  br label %25

23:                                               ; preds = %2
  store float 0.000000e+00, ptr %1, align 4, !tbaa !276
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %24, align 4, !tbaa !276
  br label %25

25:                                               ; preds = %13, %23
  %26 = phi float [ %22, %13 ], [ 0.000000e+00, %23 ]
  %27 = phi float [ %14, %13 ], [ 0.000000e+00, %23 ]
  %28 = getelementptr inbounds float, ptr %1, i64 2
  store float %26, ptr %28, align 4, !tbaa !276
  %29 = load float, ptr %1, align 4, !tbaa !276
  %30 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  %33 = fneg float %29
  %34 = select i1 %32, float %29, float %33
  store float %34, ptr %1, align 4, !tbaa !276
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !276
  %37 = and i32 %30, 1024
  %38 = icmp eq i32 %37, 0
  %39 = fneg float %36
  %40 = select i1 %38, float %36, float %39
  store float %40, ptr %35, align 4, !tbaa !276
  %41 = getelementptr inbounds float, ptr %1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !276
  %43 = and i32 %30, 2048
  %44 = icmp eq i32 %43, 0
  %45 = fneg float %42
  %46 = select i1 %44, float %42, float %45
  store float %46, ptr %41, align 4, !tbaa !276
  %47 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %48 = load float, ptr %47, align 4, !tbaa !280
  %49 = fmul float %27, %48
  ret float %49
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_ndof_to_quat(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !276
  %6 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !276
  %8 = fmul float %7, %7
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %8)
  %10 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !276
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %9)
  %13 = fcmp ogt float %12, 0x38AA95A5C0000000
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = tail call float @sqrtf(float noundef %12) #19
  %16 = fdiv float 1.000000e+00, %15
  %17 = load float, ptr %4, align 4, !tbaa !276
  %18 = fmul float %17, %16
  store float %18, ptr %3, align 4, !tbaa !276
  %19 = load float, ptr %6, align 4, !tbaa !276
  %20 = fmul float %16, %19
  %21 = getelementptr inbounds float, ptr %3, i64 1
  store float %20, ptr %21, align 4, !tbaa !276
  %22 = load float, ptr %10, align 4, !tbaa !276
  %23 = fmul float %16, %22
  br label %26

24:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !276
  %25 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %25, align 4, !tbaa !276
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi float [ %23, %14 ], [ 0.000000e+00, %24 ]
  %28 = phi float [ %15, %14 ], [ 0.000000e+00, %24 ]
  %29 = getelementptr inbounds float, ptr %3, i64 2
  store float %27, ptr %29, align 4, !tbaa !276
  %30 = load float, ptr %3, align 4, !tbaa !276
  %31 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  %34 = fneg float %30
  %35 = select i1 %33, float %30, float %34
  store float %35, ptr %3, align 4, !tbaa !276
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !276
  %38 = and i32 %31, 1024
  %39 = icmp eq i32 %38, 0
  %40 = fneg float %37
  %41 = select i1 %39, float %37, float %40
  store float %41, ptr %36, align 4, !tbaa !276
  %42 = getelementptr inbounds float, ptr %3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !276
  %44 = and i32 %31, 2048
  %45 = icmp eq i32 %44, 0
  %46 = fneg float %43
  %47 = select i1 %45, float %43, float %46
  store float %47, ptr %42, align 4, !tbaa !276
  %48 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !280
  %50 = fmul float %28, %49
  call void @axis_angle_to_quat(ptr noundef %1, ptr noundef nonnull %3, float noundef %50) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @WM_event_tablet_data(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !276
  %6 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !276
  br label %7

7:                                                ; preds = %5, %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 4, !tbaa !52
  %13 = icmp eq i32 %12, 2
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmTabletData, ptr %9, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !55
  br i1 %4, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmTabletData, ptr %9, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !57
  store float %20, ptr %2, align 4, !tbaa !276
  %21 = getelementptr inbounds %struct.wmTabletData, ptr %9, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = getelementptr inbounds float, ptr %2, i64 1
  store float %22, ptr %23, align 4, !tbaa !276
  br label %24

24:                                               ; preds = %11, %18, %15, %7
  %25 = phi float [ 1.000000e+00, %7 ], [ %17, %18 ], [ %17, %15 ], [ 1.000000e+00, %11 ]
  %26 = phi i1 [ false, %7 ], [ %13, %18 ], [ %13, %15 ], [ %13, %11 ]
  %27 = icmp eq ptr %1, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = zext i1 %26 to i32
  store i32 %29, ptr %1, align 4, !tbaa !41
  br label %30

30:                                               ; preds = %28, %24
  ret float %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_event_is_tablet(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !236
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !237
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %19) #19
  br label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !236
  tail call void @uiPupMenuReports(ptr noundef %0, ptr noundef %21) #19
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %12) #19
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %13) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %14) #19
  br label %22

22:                                               ; preds = %6, %20, %4
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  %31 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %30)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef %30) #19
  br label %33

33:                                               ; preds = %29, %25
  br i1 %5, label %34, label %37

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !236
  tail call void @BKE_reports_print(ptr noundef %36, i32 noundef 1) #19
  br label %37

37:                                               ; preds = %34, %33
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !145
  %40 = getelementptr inbounds %struct.wmOperatorType, ptr %39, i64 0, i32 19
  %41 = load i16, ptr %40, align 8, !tbaa !148
  %42 = and i16 %41, 1
  %43 = icmp ne i16 %42, 0
  %44 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  %49 = tail call ptr @CTX_wm_reports(ptr noundef %0) #19
  tail call void @BKE_report(ptr noundef %49, i32 noundef 4, ptr noundef %48) #19
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef %48) #19
  br label %51

51:                                               ; preds = %37, %47, %22
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !236
  tail call fastcc void @wm_add_reports(ptr noundef %0, ptr noundef %53)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !294
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !149
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  %13 = load i16, ptr %12, align 8, !tbaa !148
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef %1) #19
  br label %17

17:                                               ; preds = %9, %16, %3
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %17
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  %25 = tail call ptr @CTX_wm_reports(ptr noundef %0) #19
  tail call void @BKE_report(ptr noundef %25, i32 noundef 4, ptr noundef %24) #19
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef %24) #19
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !145
  %30 = icmp eq ptr %4, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %6, align 2, !tbaa !149
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.wmOperatorType, ptr %29, i64 0, i32 19
  %36 = load i16, ptr %35, align 8, !tbaa !148
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !236
  %42 = getelementptr inbounds %struct.ReportList, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !140
  %44 = or i32 %43, 4
  store i32 %44, ptr %42, align 8, !tbaa !140
  tail call void @wm_operator_register(ptr noundef %0, ptr noundef %1) #19
  %45 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %39
  %48 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !137
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 20
  %56 = tail call i32 @BLI_findindex(ptr noundef nonnull %55, ptr noundef nonnull %48) #19
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 15
  store i16 %57, ptr %58, align 4, !tbaa !138
  br label %60

59:                                               ; preds = %31, %27, %34
  tail call void @WM_operator_free(ptr noundef %1) #19
  br label %60

60:                                               ; preds = %54, %50, %47, %39, %59, %17
  ret void
}

declare void @uiPupMenuReports(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_reports_print(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WM_operator_pystring(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

declare void @ED_undo_push_op(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @wm_operator_register(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.wmEvent, align 8
  %8 = alloca [4 x i32], align 16
  %9 = icmp eq i8 %5, 0
  %10 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %1)
  br i1 %9, label %11, label %299

11:                                               ; preds = %6
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %299, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %15 = tail call fastcc ptr @wm_operator_create(ptr noundef %14, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  %16 = getelementptr inbounds %struct.wmWindowManager, ptr %14, i64 0, i32 6
  %17 = load i16, ptr %16, align 2, !tbaa !149
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 12
  %20 = load i16, ptr %19, align 8, !tbaa !295
  %21 = or i16 %20, 2
  store i16 %21, ptr %19, align 8, !tbaa !295
  br i1 %18, label %22, label %24

22:                                               ; preds = %13
  %23 = tail call zeroext i8 @WM_operator_last_properties_init(ptr noundef %15), !range !296
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %2, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !186
  %33 = icmp eq i16 %32, 4
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = sext i16 %32 to i32
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i32 [ 0, %28 ], [ %35, %34 ]
  %38 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %39 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 19
  %40 = load i16, ptr %39, align 4, !tbaa !206
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !152
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull @__func__.wm_operator_invoke, i32 noundef %37, i32 noundef %41, ptr noundef %43)
  br label %45

45:                                               ; preds = %36, %30, %24
  %46 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !145
  %48 = getelementptr inbounds %struct.wmOperatorType, ptr %47, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !297
  %50 = icmp ne ptr %49, null
  %51 = icmp ne ptr %2, null
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %96

53:                                               ; preds = %45
  %54 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !191
  %59 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !192
  %61 = sub nsw i32 %58, %60
  %62 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  store i32 %61, ptr %62, align 4, !tbaa !41
  %63 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !193
  %65 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 3, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !194
  %67 = sub nsw i32 %64, %66
  br label %70

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  store i32 -1, ptr %69, align 4, !tbaa !41
  br label %70

70:                                               ; preds = %56, %68
  %71 = phi i32 [ %67, %56 ], [ -1, %68 ]
  %72 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  store i32 %71, ptr %72, align 4, !tbaa !41
  %73 = load ptr, ptr %46, align 8, !tbaa !145
  %74 = getelementptr inbounds %struct.wmOperatorType, ptr %73, i64 0, i32 19
  %75 = load i16, ptr %74, align 8, !tbaa !148
  %76 = and i16 %75, 2
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = load i16, ptr %16, align 2, !tbaa !149
  %80 = add i16 %79, 1
  store i16 %80, ptr %16, align 2, !tbaa !149
  br label %81

81:                                               ; preds = %78, %70
  %82 = getelementptr inbounds %struct.wmOperatorType, ptr %73, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !297
  %84 = tail call i32 %83(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %2) #19
  %85 = load ptr, ptr %46, align 8, !tbaa !145
  %86 = getelementptr inbounds %struct.wmOperatorType, ptr %85, i64 0, i32 19
  %87 = load i16, ptr %86, align 8, !tbaa !148
  %88 = and i16 %87, 2
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %125, label %90

90:                                               ; preds = %81
  %91 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %92 = icmp eq ptr %91, %14
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load i16, ptr %16, align 2, !tbaa !149
  %95 = add i16 %94, -1
  store i16 %95, ptr %16, align 2, !tbaa !149
  br label %125

96:                                               ; preds = %45
  %97 = getelementptr inbounds %struct.wmOperatorType, ptr %47, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !147
  %99 = icmp eq ptr %98, null
  br i1 %99, label %121, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.wmOperatorType, ptr %47, i64 0, i32 19
  %102 = load i16, ptr %101, align 8, !tbaa !148
  %103 = and i16 %102, 2
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i16, ptr %16, align 2, !tbaa !149
  %107 = add i16 %106, 1
  store i16 %107, ptr %16, align 2, !tbaa !149
  br label %108

108:                                              ; preds = %105, %100
  %109 = tail call i32 %98(ptr noundef %0, ptr noundef %15) #19
  %110 = load ptr, ptr %46, align 8, !tbaa !145
  %111 = getelementptr inbounds %struct.wmOperatorType, ptr %110, i64 0, i32 19
  %112 = load i16, ptr %111, align 8, !tbaa !148
  %113 = and i16 %112, 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %108
  %116 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %117 = icmp eq ptr %116, %14
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i16, ptr %16, align 2, !tbaa !149
  %120 = add i16 %119, -1
  store i16 %120, ptr %16, align 2, !tbaa !149
  br label %125

121:                                              ; preds = %96
  %122 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !152
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.wm_operator_invoke, ptr noundef %123)
  br label %125

125:                                              ; preds = %121, %118, %115, %108, %81, %90, %93
  %126 = phi i32 [ %84, %93 ], [ %84, %90 ], [ %84, %81 ], [ %109, %118 ], [ %109, %115 ], [ %109, %108 ], [ 8, %121 ]
  %127 = and i32 %126, 16
  %128 = icmp ne i32 %127, 0
  %129 = and i32 %126, 6
  %130 = icmp eq i32 %129, 0
  %131 = or i1 %128, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = icmp ne ptr %4, null
  %134 = zext i1 %133 to i8
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef %15, i32 noundef %126, i8 noundef zeroext %134)
  br label %135

135:                                              ; preds = %132, %125
  br i1 %128, label %299, label %136

136:                                              ; preds = %135
  %137 = and i32 %126, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %171, label %139

139:                                              ; preds = %136
  br i1 %18, label %140, label %170

140:                                              ; preds = %139
  %141 = load ptr, ptr %46, align 8, !tbaa !145
  %142 = getelementptr inbounds %struct.wmOperatorType, ptr %141, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !150
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  tail call void @IDP_FreeProperty(ptr noundef nonnull %143) #19
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %147 = load ptr, ptr %46, align 8, !tbaa !145
  %148 = getelementptr inbounds %struct.wmOperatorType, ptr %147, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !150
  tail call void %146(ptr noundef %149) #19
  %150 = load ptr, ptr %46, align 8, !tbaa !145
  %151 = getelementptr inbounds %struct.wmOperatorType, ptr %150, i64 0, i32 12
  store ptr null, ptr %151, align 8, !tbaa !150
  br label %152

152:                                              ; preds = %145, %140
  %153 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !151
  %155 = icmp eq ptr %154, null
  br i1 %155, label %170, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %158 = and i32 %157, 32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %46, align 8, !tbaa !145
  %162 = getelementptr inbounds %struct.wmOperatorType, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !152
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.WM_operator_last_properties_store, ptr noundef %163)
  br label %165

165:                                              ; preds = %160, %156
  %166 = load ptr, ptr %153, align 8, !tbaa !151
  %167 = tail call ptr @IDP_CopyProperty(ptr noundef %166) #19
  %168 = load ptr, ptr %46, align 8, !tbaa !145
  %169 = getelementptr inbounds %struct.wmOperatorType, ptr %168, i64 0, i32 12
  store ptr %167, ptr %169, align 8, !tbaa !150
  br label %170

170:                                              ; preds = %165, %152, %139
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef %15, i8 noundef zeroext 0)
  br label %299

171:                                              ; preds = %136
  %172 = and i32 %126, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %298, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 8
  %176 = load ptr, ptr %175, align 8, !tbaa !236
  %177 = getelementptr inbounds %struct.ReportList, ptr %176, i64 0, i32 3
  %178 = load i32, ptr %177, align 8, !tbaa !140
  %179 = or i32 %178, 4
  store i32 %179, ptr %177, align 8, !tbaa !140
  %180 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 19
  %181 = load i16, ptr %180, align 8, !tbaa !148
  %182 = and i16 %181, 4
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 10
  %186 = load ptr, ptr %185, align 8, !tbaa !153
  %187 = icmp eq ptr %186, null
  br i1 %187, label %273, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.wmOperator, ptr %186, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !145
  %191 = getelementptr inbounds %struct.wmOperatorType, ptr %190, i64 0, i32 19
  %192 = load i16, ptr %191, align 8, !tbaa !148
  %193 = and i16 %192, 4
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %273, label %195

195:                                              ; preds = %188, %174
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  %196 = getelementptr inbounds %struct.wmOperator, ptr %15, i64 0, i32 10
  %197 = load ptr, ptr %196, align 8, !tbaa !153
  %198 = icmp eq ptr %197, null
  %199 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !183
  %200 = and i32 %199, 16777216
  %201 = icmp eq i32 %200, 0
  br i1 %198, label %216, label %202

202:                                              ; preds = %195
  br i1 %201, label %225, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.wmOperator, ptr %197, i64 0, i32 12
  %205 = load i16, ptr %204, align 8, !tbaa !295
  %206 = and i16 %205, 1
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.wmOperator, ptr %197, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !145
  %211 = getelementptr inbounds %struct.wmOperatorType, ptr %210, i64 0, i32 19
  %212 = load i16, ptr %211, align 8, !tbaa !148
  %213 = trunc i16 %212 to i8
  %214 = lshr i8 %213, 4
  %215 = and i8 %214, 1
  br label %225

216:                                              ; preds = %195
  br i1 %201, label %225, label %217

217:                                              ; preds = %216
  %218 = load i16, ptr %19, align 8, !tbaa !295
  %219 = and i16 %218, 1
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = trunc i16 %181 to i8
  %223 = lshr i8 %222, 4
  %224 = and i8 %223, 1
  br label %225

225:                                              ; preds = %216, %221, %217, %202, %208, %203
  %226 = phi i8 [ 0, %202 ], [ 1, %203 ], [ %215, %208 ], [ 0, %216 ], [ 1, %217 ], [ %224, %221 ]
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %225
  %229 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %230 = icmp eq ptr %229, null
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.ARegion, ptr %229, i64 0, i32 8
  %233 = load i16, ptr %232, align 2, !tbaa !137
  %234 = icmp ne i16 %233, 1
  %235 = zext i1 %234 to i8
  br label %236

236:                                              ; preds = %231, %228, %225
  %237 = phi i8 [ 0, %225 ], [ 1, %228 ], [ %235, %231 ]
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %271, label %239

239:                                              ; preds = %236
  %240 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %241 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %242 = icmp eq ptr %240, null
  br i1 %242, label %253, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ARegion, ptr %240, i64 0, i32 8
  %245 = load i16, ptr %244, align 2, !tbaa !137
  %246 = icmp eq i16 %245, 0
  %247 = and i1 %51, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.ARegion, ptr %240, i64 0, i32 3
  %250 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %251 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %249, ptr noundef nonnull %250) #19
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %248, %243, %239
  %254 = icmp eq ptr %241, null
  %255 = getelementptr inbounds %struct.ScrArea, ptr %241, i64 0, i32 7
  %256 = select i1 %254, ptr null, ptr %255
  br label %257

257:                                              ; preds = %253, %248
  %258 = phi ptr [ %249, %248 ], [ %256, %253 ]
  %259 = icmp eq ptr %258, null
  br i1 %259, label %271, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %258, align 4, !tbaa !298
  store i32 %261, ptr %8, align 16, !tbaa !41
  %262 = getelementptr inbounds %struct.rcti, ptr %258, i64 0, i32 3
  %263 = load i32, ptr %262, align 4, !tbaa !299
  %264 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  store i32 %263, ptr %264, align 4, !tbaa !41
  %265 = getelementptr inbounds %struct.rcti, ptr %258, i64 0, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !300
  %267 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 2
  store i32 %266, ptr %267, align 8, !tbaa !41
  %268 = getelementptr inbounds %struct.rcti, ptr %258, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !301
  %270 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 3
  store i32 %269, ptr %270, align 4, !tbaa !41
  br label %271

271:                                              ; preds = %257, %260, %236
  %272 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  call void @WM_cursor_grab_enable(ptr noundef %272, i8 noundef zeroext %237, i8 noundef zeroext 0, ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %273

273:                                              ; preds = %271, %188, %184
  %274 = call ptr @CTX_wm_window(ptr noundef %0) #19
  %275 = call ptr @CTX_wm_region(ptr noundef %0) #19
  %276 = icmp eq ptr %275, null
  br i1 %276, label %299, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.ARegion, ptr %275, i64 0, i32 26
  %279 = load ptr, ptr %278, align 8, !tbaa !302
  %280 = icmp eq ptr %279, null
  br i1 %280, label %299, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.wmWindow, ptr %274, i64 0, i32 21
  %283 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 2
  br label %284

284:                                              ; preds = %281, %296
  %285 = phi ptr [ %279, %281 ], [ %286, %296 ]
  %286 = load ptr, ptr %285, align 8, !tbaa !224
  %287 = getelementptr inbounds %struct.wmEventHandler, ptr %285, i64 0, i32 10
  %288 = load ptr, ptr %287, align 8, !tbaa !243
  %289 = icmp eq ptr %288, null
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #19
  %291 = load ptr, ptr %282, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %291, i64 120, i1 false), !tbaa.struct !38
  store i16 20516, ptr %283, align 8, !tbaa !186
  %292 = load ptr, ptr %287, align 8, !tbaa !243
  %293 = getelementptr inbounds %struct.wmEventHandler, ptr %285, i64 0, i32 12
  %294 = load ptr, ptr %293, align 8, !tbaa !177
  %295 = call i32 %292(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %294) #19
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #19
  br label %296

296:                                              ; preds = %290, %284
  %297 = icmp eq ptr %286, null
  br i1 %297, label %299, label %284, !llvm.loop !303

298:                                              ; preds = %171
  tail call void @WM_operator_free(ptr noundef %15) #19
  br label %299

299:                                              ; preds = %296, %6, %277, %273, %11, %170, %298, %135
  %300 = phi i32 [ 8, %11 ], [ %126, %170 ], [ %126, %298 ], [ %126, %135 ], [ %126, %273 ], [ %126, %277 ], [ %10, %6 ], [ %126, %296 ]
  ret i32 %300
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %union.IDPropertyTemplate, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = tail call ptr %8(i64 noundef 168, ptr noundef %10) #19
  %12 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !145
  %13 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %9, align 8, !tbaa !152
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %14, i64 noundef 64) #19
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 24, ptr noundef nonnull @.str.24) #19
  %18 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !156
  %19 = icmp eq ptr %2, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !304
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %22) #19
  %26 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !151
  br label %30

27:                                               ; preds = %20, %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %28 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull @.str.4) #19
  %29 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !155
  %33 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !151
  %35 = load ptr, ptr %18, align 8, !tbaa !156
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef %32, ptr noundef %34, ptr noundef %35) #19
  %36 = icmp eq ptr %3, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 8
  store ptr %3, ptr %38, align 8, !tbaa !236
  br label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %41 = call ptr %40(i64 noundef 40, ptr noundef nonnull @.str.25) #19
  %42 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 8
  store ptr %41, ptr %42, align 8, !tbaa !236
  call void @BKE_reports_init(ptr noundef %41, i32 noundef 6) #19
  br label %43

43:                                               ; preds = %39, %37
  %44 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 14
  %45 = load ptr, ptr %44, align 8, !tbaa !305
  %46 = icmp eq ptr %45, null
  br i1 %46, label %106, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store ptr %11, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  br label %51

51:                                               ; preds = %50, %47
  br i1 %19, label %52, label %55

52:                                               ; preds = %51
  %53 = load ptr, ptr %44, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %104, label %91

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #19
  %56 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !306
  %58 = call ptr @RNA_struct_iterator_property(ptr noundef %57) #19
  call void @RNA_property_collection_begin(ptr noundef nonnull %2, ptr noundef %58, ptr noundef nonnull %6) #19
  %59 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !157
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %64

64:                                               ; preds = %62, %87
  %65 = phi ptr [ %45, %62 ], [ %86, %87 ]
  %66 = load ptr, ptr %63, align 8, !tbaa !307
  %67 = icmp eq ptr %65, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %64
  %69 = call ptr @RNA_property_identifier(ptr noundef %66) #19
  %70 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %65, i64 0, i32 2
  %71 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) %70) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = call ptr @WM_operatortype_find(ptr noundef nonnull %70, i8 noundef zeroext 0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %2, ptr noundef %66) #19
  %75 = call fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %74, ptr noundef nonnull %7, ptr noundef null)
  %76 = getelementptr inbounds %struct.wmOperator, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !151
  %78 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %65, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !308
  call void @IDP_ReplaceGroupInGroup(ptr noundef %77, ptr noundef %79) #19
  %80 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.wmOperator, ptr %80, i64 0, i32 9
  call void @BLI_addtail(ptr noundef nonnull %81, ptr noundef %75) #19
  %82 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.wmOperator, ptr %75, i64 0, i32 10
  store ptr %82, ptr %83, align 8, !tbaa !153
  %84 = load ptr, ptr %65, align 8, !tbaa !310
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  br label %85

85:                                               ; preds = %68, %73, %64
  %86 = phi ptr [ null, %64 ], [ %84, %73 ], [ %65, %68 ]
  br i1 %67, label %90, label %87

87:                                               ; preds = %85
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #19
  %88 = load i32, ptr %59, align 8, !tbaa !157
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %64, !llvm.loop !311

90:                                               ; preds = %87, %85, %55
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #19
  br label %104

91:                                               ; preds = %52, %91
  %92 = phi ptr [ %102, %91 ], [ %53, %52 ]
  %93 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %92, i64 0, i32 2
  %94 = call ptr @WM_operatortype_find(ptr noundef nonnull %93, i8 noundef zeroext 0) #19
  %95 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !312
  %97 = call fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %94, ptr noundef %96, ptr noundef null)
  %98 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.wmOperator, ptr %98, i64 0, i32 9
  call void @BLI_addtail(ptr noundef nonnull %99, ptr noundef %97) #19
  %100 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.wmOperator, ptr %97, i64 0, i32 10
  store ptr %100, ptr %101, align 8, !tbaa !153
  %102 = load ptr, ptr %92, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %91, !llvm.loop !313

104:                                              ; preds = %91, %52, %90
  br i1 %49, label %105, label %106

105:                                              ; preds = %104
  store ptr null, ptr @wm_operator_create.motherop, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %104, %105, %43
  %107 = load ptr, ptr %18, align 8, !tbaa !156
  call void @WM_operator_properties_sanitize(ptr noundef %107, i8 noundef zeroext 0) #19
  ret ptr %11
}

declare void @WM_cursor_grab_enable(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IDP_ReplaceGroupInGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %6 = icmp eq ptr %2, null
  br i1 %6, label %319, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !195
  %9 = icmp eq ptr %8, null
  br i1 %9, label %313, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %17 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 23
  %19 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 19
  %20 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 19
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 25
  %23 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %24 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 19
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %26 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  br label %27

27:                                               ; preds = %10, %311
  %28 = phi i32 [ undef, %10 ], [ %299, %311 ]
  %29 = phi ptr [ %8, %10 ], [ %34, %311 ]
  %30 = phi i32 [ 0, %10 ], [ %298, %311 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !195
  %32 = icmp eq ptr %31, null
  br i1 %32, label %313, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %29, align 8, !tbaa !224
  %35 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !244
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %297

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !242
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !241
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !314
  %48 = load i32, ptr %41, align 4, !tbaa !298
  %49 = getelementptr inbounds %struct.rcti, ptr %41, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !301
  call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %48, i32 noundef %50) #19
  %51 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %11) #19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i16, ptr %12, align 8, !tbaa !186
  %55 = icmp eq i16 %54, 4
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %13) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %56, %47
  %61 = phi i8 [ 0, %59 ], [ 1, %47 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %73

62:                                               ; preds = %43
  %63 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %41, ptr noundef nonnull %14) #19
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i16, ptr %15, align 8, !tbaa !186
  %67 = icmp eq i16 %66, 4
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load ptr, ptr %40, align 8, !tbaa !242
  %70 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef %69, ptr noundef nonnull %16) #19
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %39, %60, %62, %68, %72
  %74 = phi i8 [ %61, %60 ], [ 0, %72 ], [ 1, %62 ], [ 1, %68 ], [ 1, %39 ]
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %297, label %76

76:                                               ; preds = %73
  %77 = load i16, ptr %17, align 8, !tbaa !186
  %78 = freeze i16 %77
  %79 = and i16 %78, -16
  %80 = icmp eq i16 %79, 272
  %81 = icmp eq i16 %78, 260
  %82 = icmp eq i16 %78, 20513
  %83 = or i1 %81, %82
  %84 = load i32, ptr %35, align 4, !tbaa !244
  %85 = and i32 %84, 1
  %86 = or i32 %85, %30
  %87 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !238
  %89 = icmp eq ptr %88, null
  br i1 %89, label %134, label %90

90:                                               ; preds = %76
  %91 = call ptr @WM_keymap_active(ptr noundef %5, ptr noundef nonnull %88) #19
  %92 = getelementptr inbounds %struct.wmKeyMap, ptr %91, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !315
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = call i32 %93(ptr noundef %0) #19
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %288, label %98

98:                                               ; preds = %95, %90
  %99 = getelementptr inbounds %struct.wmKeyMap, ptr %91, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %288, label %102

102:                                              ; preds = %98, %130
  %103 = phi ptr [ %132, %130 ], [ %100, %98 ]
  %104 = phi i32 [ %131, %130 ], [ %86, %98 ]
  %105 = call fastcc i32 @wm_eventmatch(ptr noundef %1, ptr noundef nonnull %103), !range !231
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.wmKeyMapItem, ptr %103, i64 0, i32 2
  store ptr %108, ptr %18, align 8, !tbaa !317
  %109 = getelementptr inbounds %struct.wmKeyMapItem, ptr %103, i64 0, i32 17
  %110 = load ptr, ptr %109, align 8, !tbaa !318
  %111 = call fastcc i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %29, ptr noundef %1, ptr noundef %110), !range !320
  %112 = or i32 %111, %104
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %117 = and i32 %116, 24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %288, label %119

119:                                              ; preds = %115
  %120 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @__func__.wm_handlers_do_intern, ptr noundef nonnull %108)
  br label %288

121:                                              ; preds = %107
  %122 = and i32 %112, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !96
  %126 = and i32 %125, 24
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @__func__.wm_handlers_do_intern, ptr noundef nonnull %108)
  br label %130

130:                                              ; preds = %102, %121, %128, %124
  %131 = phi i32 [ %112, %128 ], [ %112, %124 ], [ %112, %121 ], [ %104, %102 ]
  %132 = load ptr, ptr %103, align 8, !tbaa !34
  %133 = icmp eq ptr %132, null
  br i1 %133, label %288, label %102, !llvm.loop !321

134:                                              ; preds = %76
  %135 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 10
  %136 = load ptr, ptr %135, align 8, !tbaa !243
  %137 = icmp eq ptr %136, null
  br i1 %137, label %201, label %138

138:                                              ; preds = %134
  %139 = load i8, ptr %19, align 8, !tbaa !293
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %288

141:                                              ; preds = %138
  %142 = call ptr @CTX_wm_area(ptr noundef %0) #19
  %143 = call ptr @CTX_wm_region(ptr noundef %0) #19
  %144 = call ptr @CTX_wm_menu(ptr noundef %0) #19
  %145 = load i16, ptr %17, align 8, !tbaa !186
  %146 = icmp ugt i16 %145, 14
  %147 = trunc i16 %145 to i15
  %148 = lshr i15 13311, %147
  %149 = and i15 %148, 1
  %150 = icmp ne i15 %149, 0
  %151 = select i1 %146, i1 true, i1 %150
  %152 = load i32, ptr %35, align 4, !tbaa !244
  %153 = and i32 %152, 4
  %154 = icmp ne i32 %153, 0
  %155 = icmp eq i16 %145, 1
  %156 = or i1 %155, %154
  br i1 %156, label %160, label %157

157:                                              ; preds = %141
  %158 = load i16, ptr %20, align 2, !tbaa !187
  %159 = icmp eq i16 %158, 4
  br i1 %159, label %198, label %160

160:                                              ; preds = %157, %141
  %161 = load i1, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br i1 %161, label %162, label %168

162:                                              ; preds = %160
  br i1 %151, label %163, label %198

163:                                              ; preds = %162
  %164 = and i16 %145, -16
  %165 = icmp eq i16 %164, 272
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  switch i16 %145, label %167 [
    i16 20513, label %168
    i16 260, label %168
  ]

167:                                              ; preds = %166
  store i1 false, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br label %168

168:                                              ; preds = %166, %166, %163, %167, %160
  %169 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 13
  %170 = load ptr, ptr %169, align 8, !tbaa !174
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %170) #19
  br label %173

173:                                              ; preds = %172, %168
  %174 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 14
  %175 = load ptr, ptr %174, align 8, !tbaa !175
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %175) #19
  br label %178

178:                                              ; preds = %177, %173
  %179 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 15
  %180 = load ptr, ptr %179, align 8, !tbaa !176
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %180) #19
  br label %183

183:                                              ; preds = %182, %178
  %184 = load ptr, ptr %135, align 8, !tbaa !243
  %185 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 12
  %186 = load ptr, ptr %185, align 8, !tbaa !177
  %187 = call i32 %184(ptr noundef %0, ptr noundef %1, ptr noundef %186) #19
  %188 = icmp ne i32 %187, 1
  %189 = or i1 %83, %188
  %190 = or i1 %189, %80
  %191 = select i1 %190, ptr %142, ptr null
  %192 = select i1 %190, ptr %143, ptr null
  %193 = select i1 %190, ptr %144, ptr null
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %191) #19
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %192) #19
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef %193) #19
  %194 = icmp eq i32 %187, 1
  %195 = or i1 %151, %194
  %196 = zext i1 %194 to i32
  br i1 %195, label %198, label %197

197:                                              ; preds = %183
  store i1 true, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br label %198

198:                                              ; preds = %157, %162, %183, %197
  %199 = phi i32 [ 0, %157 ], [ 0, %162 ], [ %196, %183 ], [ 0, %197 ]
  %200 = or i32 %199, %86
  br label %288

201:                                              ; preds = %134
  %202 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !225
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = load i8, ptr %24, align 8, !tbaa !293
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %288

208:                                              ; preds = %205
  %209 = icmp eq i16 %78, 20512
  br i1 %209, label %210, label %219

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 7
  %212 = load ptr, ptr %211, align 8, !tbaa !166
  %213 = load ptr, ptr %25, align 8, !tbaa !62
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i16, ptr %26, align 2, !tbaa !187
  %217 = sext i16 %216 to i32
  %218 = call fastcc i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %29, i32 noundef %217), !range !231
  br label %219

219:                                              ; preds = %208, %210, %215
  %220 = phi i32 [ %218, %215 ], [ 0, %208 ], [ 0, %210 ]
  %221 = or i32 %220, %86
  br label %288

222:                                              ; preds = %201
  %223 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 17
  %224 = load ptr, ptr %223, align 8, !tbaa !247
  %225 = icmp eq ptr %224, null
  br i1 %225, label %285, label %226

226:                                              ; preds = %222
  %227 = load i8, ptr %21, align 8, !tbaa !293
  %228 = icmp eq i8 %227, 0
  %229 = icmp eq i16 %78, 20515
  %230 = and i1 %228, %229
  br i1 %230, label %231, label %288

231:                                              ; preds = %226
  %232 = load ptr, ptr %224, align 8, !tbaa !34
  %233 = icmp eq ptr %232, null
  br i1 %233, label %281, label %234

234:                                              ; preds = %231, %276
  %235 = phi i1 [ %280, %276 ], [ %233, %231 ]
  %236 = phi ptr [ %279, %276 ], [ %232, %231 ]
  %237 = phi i32 [ %278, %276 ], [ %28, %231 ]
  %238 = phi i32 [ %277, %276 ], [ %86, %231 ]
  %239 = load i16, ptr %22, align 8, !tbaa !64
  %240 = icmp eq i16 %239, 3
  br i1 %240, label %241, label %276

241:                                              ; preds = %234
  %242 = load ptr, ptr %23, align 8, !tbaa !62
  %243 = getelementptr inbounds %struct.wmDropBox, ptr %236, i64 0, i32 2
  br label %244

244:                                              ; preds = %248, %241
  %245 = phi ptr [ %242, %241 ], [ %246, %248 ]
  %246 = load ptr, ptr %245, align 8, !tbaa !34
  %247 = icmp eq ptr %246, null
  br i1 %247, label %272, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %243, align 8, !tbaa !322
  %250 = call i32 %249(ptr noundef %0, ptr noundef nonnull %246, ptr noundef %1) #19
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %244, label %252, !llvm.loop !324

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.wmDropBox, ptr %236, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !325
  call void %254(ptr noundef nonnull %246, ptr noundef nonnull %236) #19
  call void @WM_drag_free_list(ptr noundef %242) #19
  store ptr null, ptr %23, align 8, !tbaa !62
  store i16 0, ptr %22, align 8, !tbaa !64
  %255 = getelementptr inbounds %struct.wmDropBox, ptr %236, i64 0, i32 4
  %256 = load ptr, ptr %255, align 8, !tbaa !326
  %257 = getelementptr inbounds %struct.wmOperatorType, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !152
  %259 = getelementptr inbounds %struct.wmDropBox, ptr %236, i64 0, i32 7
  %260 = load i16, ptr %259, align 8, !tbaa !327
  %261 = getelementptr inbounds %struct.wmDropBox, ptr %236, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !328
  %263 = call ptr @WM_operatortype_find(ptr noundef %258, i8 noundef zeroext 0) #19
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %252
  %266 = call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef nonnull %263, ptr noundef %262, ptr noundef null, i16 noundef signext %260, i8 noundef zeroext 0)
  br label %267

267:                                              ; preds = %252, %265
  %268 = or i32 %238, 1
  %269 = call ptr @CTX_wm_window(ptr noundef %0) #19
  %270 = icmp ne ptr %269, null
  %271 = select i1 %270, i32 %237, i32 %268
  br label %272

272:                                              ; preds = %244, %267
  %273 = phi i32 [ %268, %267 ], [ %238, %244 ]
  %274 = phi i1 [ %270, %267 ], [ true, %244 ]
  %275 = phi i32 [ %271, %267 ], [ %237, %244 ]
  br i1 %274, label %276, label %281

276:                                              ; preds = %234, %272
  %277 = phi i32 [ %273, %272 ], [ %238, %234 ]
  %278 = phi i32 [ %275, %272 ], [ %237, %234 ]
  %279 = load ptr, ptr %236, align 8, !tbaa !34
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %234, !llvm.loop !329

281:                                              ; preds = %272, %276, %231
  %282 = phi i1 [ %233, %231 ], [ %235, %272 ], [ %280, %276 ]
  %283 = phi i32 [ %86, %231 ], [ %273, %272 ], [ %277, %276 ]
  %284 = phi i32 [ %28, %231 ], [ %275, %272 ], [ %278, %276 ]
  br i1 %282, label %288, label %319

285:                                              ; preds = %222
  %286 = call fastcc i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %29, ptr noundef %1, ptr noundef null), !range !320
  %287 = or i32 %286, %86
  br label %288

288:                                              ; preds = %130, %98, %115, %119, %95, %198, %138, %285, %281, %226, %205, %219
  %289 = phi i32 [ %86, %138 ], [ %200, %198 ], [ %86, %205 ], [ %221, %219 ], [ %86, %226 ], [ %283, %281 ], [ %287, %285 ], [ %112, %119 ], [ %112, %115 ], [ %86, %95 ], [ %86, %98 ], [ %131, %130 ]
  %290 = phi i32 [ %28, %138 ], [ %28, %198 ], [ %28, %205 ], [ %28, %219 ], [ %28, %226 ], [ %284, %281 ], [ %28, %285 ], [ %28, %119 ], [ %28, %115 ], [ %28, %95 ], [ %28, %98 ], [ %28, %130 ]
  %291 = and i32 %289, 1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %288
  br i1 %80, label %295, label %294

294:                                              ; preds = %293
  switch i16 %78, label %313 [
    i16 20513, label %295
    i16 260, label %295
  ]

295:                                              ; preds = %294, %294, %293
  %296 = and i32 %289, -2
  br label %297

297:                                              ; preds = %73, %295, %288, %33
  %298 = phi i32 [ %30, %33 ], [ %296, %295 ], [ %289, %288 ], [ %30, %73 ]
  %299 = phi i32 [ %28, %33 ], [ %290, %295 ], [ %290, %288 ], [ %28, %73 ]
  %300 = call ptr @CTX_wm_window(ptr noundef %0) #19
  %301 = icmp eq ptr %300, null
  br i1 %301, label %319, label %302

302:                                              ; preds = %297
  %303 = call i32 @BLI_findindex(ptr noundef nonnull %2, ptr noundef nonnull %29) #19
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %311, label %305

305:                                              ; preds = %302
  %306 = load i32, ptr %35, align 4, !tbaa !244
  %307 = and i32 %306, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %29) #19
  %310 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %310(ptr noundef nonnull %29) #19
  br label %311

311:                                              ; preds = %302, %309, %305
  %312 = icmp eq ptr %34, null
  br i1 %312, label %313, label %27, !llvm.loop !330

313:                                              ; preds = %27, %294, %311, %7
  %314 = phi i32 [ 0, %7 ], [ %30, %27 ], [ %289, %294 ], [ %298, %311 ]
  %315 = icmp eq i32 %314, 5
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = call ptr @CTX_wm_window(ptr noundef %0) #19
  %318 = call i32 @wm_cursor_arrow_move(ptr noundef %317, ptr noundef %1) #19
  br label %319

319:                                              ; preds = %297, %281, %313, %316, %3
  %320 = phi i32 [ 0, %3 ], [ %314, %316 ], [ %314, %313 ], [ %284, %281 ], [ %298, %297 ]
  ret i32 %320
}

declare ptr @WM_keymap_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @wm_eventmatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 6
  %4 = load i16, ptr %3, align 2, !tbaa !331
  %5 = sext i16 %4 to i32
  switch i16 %4, label %36 [
    i16 6, label %6
    i16 5, label %11
    i16 20486, label %16
    i16 20487, label %21
    i16 13, label %26
    i16 12, label %31
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 3, i32 1
  br label %36

11:                                               ; preds = %2
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 3
  br label %36

16:                                               ; preds = %2
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 20483, i32 20485
  br label %36

21:                                               ; preds = %2
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !179
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 20485, i32 20483
  br label %36

26:                                               ; preds = %2
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !183
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 11, i32 10
  br label %36

31:                                               ; preds = %2
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !183
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 10, i32 11
  br label %36

36:                                               ; preds = %2, %6, %11, %16, %21, %26, %31
  %37 = phi i32 [ %35, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ], [ %5, %2 ]
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %39 = load i16, ptr %38, align 8, !tbaa !332
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %131

42:                                               ; preds = %36
  switch i32 %37, label %65 [
    i32 -2, label %43
    i32 -1, label %70
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !187
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %49 = load i16, ptr %48, align 8, !tbaa !186
  %50 = add i16 %49, -32
  %51 = icmp ult i16 %50, 224
  %52 = add i16 %49, -300
  %53 = icmp ult i16 %52, 20
  %54 = or i1 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 8
  %57 = load i8, ptr %56, align 2, !tbaa !267
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %131

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 7
  %61 = load i8, ptr %60, align 4, !tbaa !43
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %131

63:                                               ; preds = %47, %43, %59
  %64 = icmp eq i32 %37, -1
  br i1 %64, label %70, label %65

65:                                               ; preds = %42, %63
  %66 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !186
  %68 = sext i16 %67 to i32
  %69 = icmp eq i32 %37, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %42, %65, %63
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 7
  %72 = load i16, ptr %71, align 4, !tbaa !333
  %73 = icmp eq i16 %72, -1
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !187
  %77 = icmp eq i16 %76, %72
  br i1 %77, label %78, label %131

78:                                               ; preds = %74, %70
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 8
  %80 = load i16, ptr %79, align 2, !tbaa !334
  %81 = icmp eq i16 %80, -1
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 17
  %84 = load i16, ptr %83, align 8, !tbaa !271
  %85 = icmp ne i16 %84, %80
  %86 = and i16 %84, %80
  %87 = icmp eq i16 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %131, label %89

89:                                               ; preds = %82, %78
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 9
  %91 = load i16, ptr %90, align 8, !tbaa !335
  %92 = icmp eq i16 %91, -1
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 18
  %95 = load i16, ptr %94, align 2, !tbaa !268
  %96 = icmp ne i16 %95, %91
  %97 = and i16 %95, %91
  %98 = icmp eq i16 %97, 0
  %99 = and i1 %96, %98
  br i1 %99, label %131, label %100

100:                                              ; preds = %93, %89
  %101 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 10
  %102 = load i16, ptr %101, align 2, !tbaa !336
  %103 = icmp eq i16 %102, -1
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  %106 = load i16, ptr %105, align 4, !tbaa !269
  %107 = icmp ne i16 %106, %102
  %108 = and i16 %106, %102
  %109 = icmp eq i16 %108, 0
  %110 = and i1 %107, %109
  br i1 %110, label %131, label %111

111:                                              ; preds = %104, %100
  %112 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 11
  %113 = load i16, ptr %112, align 4, !tbaa !337
  %114 = icmp eq i16 %113, -1
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 20
  %117 = load i16, ptr %116, align 2, !tbaa !270
  %118 = icmp ne i16 %117, %113
  %119 = and i16 %117, %113
  %120 = icmp eq i16 %119, 0
  %121 = and i1 %118, %120
  br i1 %121, label %131, label %122

122:                                              ; preds = %115, %111
  %123 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 12
  %124 = load i16, ptr %123, align 2, !tbaa !338
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 21
  %128 = load i16, ptr %127, align 8, !tbaa !272
  %129 = icmp eq i16 %128, %124
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %126, %115, %104, %93, %82, %74, %65, %55, %59, %36, %130
  %132 = phi i32 [ 1, %130 ], [ 0, %36 ], [ 1, %59 ], [ 1, %55 ], [ 0, %65 ], [ 0, %74 ], [ 0, %82 ], [ 0, %93 ], [ 0, %104 ], [ 0, %115 ], [ 0, %126 ]
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = icmp eq ptr %7, null
  br i1 %8, label %181, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %12, i64 0, i32 19
  %14 = load i8, ptr %13, align 8, !tbaa !293
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  %18 = load i16, ptr %17, align 8, !tbaa !148
  %19 = and i16 %18, 128
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %198, label %21

21:                                               ; preds = %16, %9
  %22 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !339
  %24 = icmp eq ptr %23, null
  br i1 %24, label %178, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %27 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %28 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8, !tbaa !166
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !169
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #19
  br label %58

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.bScreen, ptr %29, i64 0, i32 3
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = icmp eq ptr %43, %36
  br i1 %46, label %47, label %41, !llvm.loop !170

47:                                               ; preds = %45
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %43) #19
  %48 = getelementptr inbounds %struct.ScrArea, ptr %43, i64 0, i32 20
  %49 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 9
  br label %50

50:                                               ; preds = %54, %47
  %51 = phi ptr [ %48, %47 ], [ %52, %54 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %49, align 8, !tbaa !171
  %56 = icmp eq ptr %52, %55
  br i1 %56, label %57, label %50, !llvm.loop !172

57:                                               ; preds = %54
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %52) #19
  br label %58

58:                                               ; preds = %41, %50, %25, %31, %38, %57
  %59 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !191
  %64 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !192
  %66 = sub nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  store i32 %66, ptr %67, align 4, !tbaa !41
  %68 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !193
  %70 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 3, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !194
  %72 = sub nsw i32 %69, %71
  br label %75

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  store i32 -1, ptr %74, align 4, !tbaa !41
  br label %75

75:                                               ; preds = %61, %73
  %76 = phi i32 [ %72, %61 ], [ -1, %73 ]
  %77 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6, i64 1
  store i32 %76, ptr %77, align 4, !tbaa !41
  %78 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !153
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, ptr %7, ptr %79
  %82 = getelementptr inbounds %struct.wmOperator, ptr %81, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !145
  %84 = getelementptr inbounds %struct.wmOperatorType, ptr %83, i64 0, i32 15
  %85 = load ptr, ptr %84, align 8, !tbaa !340
  %86 = icmp eq ptr %85, null
  br i1 %86, label %110, label %87

87:                                               ; preds = %75
  %88 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %89 = load ptr, ptr %82, align 8, !tbaa !145
  %90 = getelementptr inbounds %struct.wmOperatorType, ptr %89, i64 0, i32 15
  %91 = load ptr, ptr %90, align 8, !tbaa !340
  %92 = tail call ptr @WM_keymap_active(ptr noundef %88, ptr noundef %91) #19
  %93 = getelementptr inbounds %struct.wmKeyMap, ptr %92, i64 0, i32 2
  br label %94

94:                                               ; preds = %98, %87
  %95 = phi ptr [ %93, %87 ], [ %96, %98 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = tail call fastcc i32 @wm_eventmatch(ptr noundef %3, ptr noundef nonnull %96), !range !231
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %94, label %101, !llvm.loop !341

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %103 = load i16, ptr %102, align 8, !tbaa !186
  %104 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 10
  store i16 %103, ptr %104, align 4, !tbaa !220
  %105 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !187
  %107 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 11
  store i16 %106, ptr %107, align 2, !tbaa !221
  store i16 20514, ptr %102, align 8, !tbaa !186
  %108 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 5
  %109 = load i16, ptr %108, align 8, !tbaa !342
  store i16 %109, ptr %105, align 2, !tbaa !187
  br label %115

110:                                              ; preds = %75
  %111 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %112 = load i16, ptr %111, align 2, !tbaa !187
  %113 = icmp eq i16 %112, 4
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i16 1, ptr %111, align 2, !tbaa !187
  br label %115

115:                                              ; preds = %94, %101, %110, %114
  %116 = phi i1 [ false, %114 ], [ true, %110 ], [ true, %101 ], [ true, %94 ]
  %117 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  %118 = load i16, ptr %117, align 8, !tbaa !148
  %119 = and i16 %118, 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.wmWindowManager, ptr %26, i64 0, i32 6
  %123 = load i16, ptr %122, align 2, !tbaa !149
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 2, !tbaa !149
  br label %125

125:                                              ; preds = %121, %115
  %126 = load ptr, ptr %22, align 8, !tbaa !339
  %127 = tail call i32 %126(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %3) #19
  %128 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %129 = icmp eq ptr %128, %26
  br i1 %129, label %130, label %198

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %132 = load i16, ptr %131, align 8, !tbaa !186
  %133 = icmp eq i16 %132, 20514
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 10
  %136 = load i16, ptr %135, align 4, !tbaa !220
  store i16 %136, ptr %131, align 8, !tbaa !186
  store i16 0, ptr %135, align 4, !tbaa !220
  %137 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 11
  %138 = load i16, ptr %137, align 2, !tbaa !221
  %139 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  store i16 %138, ptr %139, align 2, !tbaa !187
  store i16 0, ptr %137, align 2, !tbaa !221
  br label %143

140:                                              ; preds = %130
  br i1 %116, label %143, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  store i16 4, ptr %142, align 2, !tbaa !187
  br label %143

143:                                              ; preds = %134, %140, %141
  %144 = load i16, ptr %117, align 8, !tbaa !148
  %145 = and i16 %144, 2
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.wmWindowManager, ptr %26, i64 0, i32 6
  %149 = load i16, ptr %148, align 2, !tbaa !149
  %150 = add i16 %149, -1
  store i16 %150, ptr %148, align 2, !tbaa !149
  br label %151

151:                                              ; preds = %147, %143
  %152 = and i32 %127, 6
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %127, i8 noundef zeroext 0)
  br label %155

155:                                              ; preds = %154, %151
  %156 = and i32 %127, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0)
  br label %161

159:                                              ; preds = %155
  br i1 %153, label %162, label %160

160:                                              ; preds = %159
  tail call void @WM_operator_free(ptr noundef nonnull %7) #19
  br label %161

161:                                              ; preds = %158, %160
  store ptr null, ptr %6, align 8, !tbaa !166
  br label %162

162:                                              ; preds = %161, %159
  %163 = and i32 %127, 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i16, ptr %131, align 8, !tbaa !186
  %167 = freeze i16 %166
  %168 = and i16 %167, -16
  %169 = icmp eq i16 %168, 272
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  switch i16 %167, label %171 [
    i16 20513, label %172
    i16 260, label %172
  ]

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %162, %165, %170, %170, %171
  %173 = phi ptr [ null, %171 ], [ %27, %170 ], [ %27, %170 ], [ %27, %165 ], [ %27, %162 ]
  %174 = phi ptr [ null, %171 ], [ %28, %170 ], [ %28, %170 ], [ %28, %165 ], [ %28, %162 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %173) #19
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %174) #19
  br i1 %153, label %198, label %175

175:                                              ; preds = %172
  %176 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  tail call void @WM_cursor_grab_disable(ptr noundef %176, ptr noundef null) #19
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef %2) #19
  %177 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %177(ptr noundef %2) #19
  br label %198

178:                                              ; preds = %21
  %179 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 2
  %180 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @__func__.wm_handler_operator_call, ptr noundef nonnull %179)
  br label %198

181:                                              ; preds = %5
  %182 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 23
  %183 = load ptr, ptr %182, align 8, !tbaa !317
  %184 = tail call ptr @WM_operatortype_find(ptr noundef %183, i8 noundef zeroext 0) #19
  %185 = icmp eq ptr %184, null
  br i1 %185, label %198, label %186

186:                                              ; preds = %181
  %187 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %188 = getelementptr inbounds %struct.wmWindowManager, ptr %187, i64 0, i32 19
  %189 = load i8, ptr %188, align 8, !tbaa !293
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.wmOperatorType, ptr %184, i64 0, i32 19
  %193 = load i16, ptr %192, align 8, !tbaa !148
  %194 = and i16 %193, 128
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %191, %186
  %197 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %184, ptr noundef %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext 0)
  br label %198

198:                                              ; preds = %191, %16, %125, %175, %172, %181, %196, %178
  %199 = phi i32 [ 8, %178 ], [ %197, %196 ], [ 8, %181 ], [ %127, %172 ], [ %127, %175 ], [ %127, %125 ], [ 8, %16 ], [ 8, %191 ]
  switch i32 %199, label %201 [
    i32 12, label %205
    i32 9, label %200
  ]

200:                                              ; preds = %198
  br label %205

201:                                              ; preds = %198
  %202 = lshr i32 %199, 3
  %203 = and i32 %202, 1
  %204 = xor i32 %203, 1
  br label %205

205:                                              ; preds = %201, %198, %200
  %206 = phi i32 [ 5, %200 ], [ 2, %198 ], [ %204, %201 ]
  ret i32 %206
}

declare i32 @wm_cursor_arrow_move(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ED_screen_full_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare signext i16 @ED_fileselect_set_params(ptr noundef) local_unnamed_addr #3

declare void @ED_screen_full_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_report_print_level_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #3

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #3

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 2, !39, i64 18, i64 2, !39, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 8, !43, i64 36, i64 6, !43, i64 42, i64 1, !43, i64 43, i64 1, !43, i64 44, i64 2, !39, i64 46, i64 2, !39, i64 48, i64 4, !41, i64 52, i64 4, !41, i64 56, i64 8, !44, i64 64, i64 4, !41, i64 68, i64 4, !41, i64 72, i64 2, !39, i64 74, i64 2, !39, i64 76, i64 2, !39, i64 78, i64 2, !39, i64 80, i64 2, !39, i64 82, i64 2, !39, i64 88, i64 8, !34, i64 96, i64 8, !34, i64 104, i64 2, !39, i64 106, i64 2, !39, i64 108, i64 4, !41, i64 112, i64 8, !34}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !36, i64 0}
!46 = !{!47, !35, i64 16}
!47 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !42, i64 128, !40, i64 132, !40, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !42, i64 160, !42, i64 164, !35, i64 168, !48, i64 176, !48, i64 192, !48, i64 208, !48, i64 224, !48, i64 240}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!50, !42, i64 0}
!50 = !{!"GHOST_TabletData", !42, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!51 = !{!"float", !36, i64 0}
!52 = !{!53, !42, i64 0}
!53 = !{!"wmTabletData", !42, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!54 = !{!50, !51, i64 4}
!55 = !{!53, !51, i64 4}
!56 = !{!50, !51, i64 8}
!57 = !{!53, !51, i64 8}
!58 = !{!50, !51, i64 12}
!59 = !{!53, !51, i64 12}
!60 = !{!61, !35, i64 96}
!61 = !{!"wmEvent", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !40, i64 44, !40, i64 46, !42, i64 48, !42, i64 52, !45, i64 56, !42, i64 64, !42, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !35, i64 88, !35, i64 96, !40, i64 104, !40, i64 106, !42, i64 108, !35, i64 112}
!62 = !{!61, !35, i64 112}
!63 = !{!61, !40, i64 106}
!64 = !{!61, !40, i64 104}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!47, !35, i64 136}
!69 = !{!70, !42, i64 36}
!70 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !35, i64 56}
!71 = !{!70, !42, i64 40}
!72 = !{!70, !42, i64 44}
!73 = !{!70, !42, i64 48}
!74 = !{!70, !35, i64 56}
!75 = distinct !{!75, !66, !67}
!76 = !{!70, !35, i64 16}
!77 = !{!70, !35, i64 24}
!78 = !{!79, !40, i64 212}
!79 = !{!"ARegion", !35, i64 0, !35, i64 8, !80, i64 16, !82, i64 176, !82, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !51, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !35, i64 240, !48, i64 248, !48, i64 264, !48, i64 280, !48, i64 296, !48, i64 312, !48, i64 328, !48, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!80 = !{!"View2D", !81, i64 0, !81, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !36, i64 80, !36, i64 88, !51, i64 96, !51, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !35, i64 128, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!81 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!82 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!83 = !{!70, !42, i64 32}
!84 = !{!85, !35, i64 0}
!85 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !48, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!86 = !{!87, !35, i64 1552}
!87 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !88, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !48, i64 1088, !48, i64 1104, !48, i64 1120, !48, i64 1136, !48, i64 1152, !48, i64 1168, !48, i64 1184, !48, i64 1200, !48, i64 1216, !48, i64 1232, !48, i64 1248, !48, i64 1264, !48, i64 1280, !48, i64 1296, !48, i64 1312, !48, i64 1328, !48, i64 1344, !48, i64 1360, !48, i64 1376, !48, i64 1392, !48, i64 1408, !48, i64 1424, !48, i64 1440, !48, i64 1456, !48, i64 1472, !48, i64 1488, !48, i64 1504, !48, i64 1520, !48, i64 1536, !48, i64 1552, !48, i64 1568, !48, i64 1584, !48, i64 1600, !48, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!88 = !{!"long", !36, i64 0}
!89 = !{!90, !35, i64 176}
!90 = !{!"wmWindowManager", !91, i64 0, !35, i64 120, !35, i64 128, !48, i64 136, !42, i64 152, !40, i64 156, !40, i64 158, !48, i64 160, !48, i64 176, !92, i64 192, !48, i64 232, !48, i64 248, !48, i64 264, !48, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !48, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!91 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!92 = !{!"ReportList", !48, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32}
!93 = !{!70, !35, i64 0}
!94 = distinct !{!94, !66, !67}
!95 = !{!90, !40, i64 156}
!96 = !{!85, !42, i64 2100}
!97 = !{!47, !35, i64 24}
!98 = !{!99, !35, i64 184}
!99 = !{!"bScreen", !91, i64 0, !48, i64 120, !48, i64 136, !48, i64 152, !48, i64 168, !35, i64 184, !35, i64 192, !42, i64 200, !42, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 240}
!100 = distinct !{!100, !66, !67}
!101 = distinct !{!101, !66, !67}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
!104 = distinct !{!104, !66, !67}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = distinct !{!107, !66, !67}
!108 = !{!109, !40, i64 80}
!109 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !82, i64 56, !36, i64 72, !36, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !48, i64 96, !48, i64 112, !48, i64 128, !48, i64 144}
!110 = distinct !{!110, !66, !67}
!111 = !{!85, !36, i64 2090}
!112 = !{!113, !88, i64 4648}
!113 = !{!"Scene", !91, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !114, i64 280, !121, i64 4264, !48, i64 4296, !48, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !42, i64 4380, !48, i64 4384, !122, i64 4400, !123, i64 4416, !126, i64 4600, !35, i64 4608, !127, i64 4616, !35, i64 4640, !88, i64 4648, !88, i64 4656, !116, i64 4664, !117, i64 4824, !128, i64 4888, !35, i64 4952}
!114 = !{!"RenderData", !115, i64 0, !35, i64 248, !35, i64 256, !118, i64 264, !119, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !51, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !40, i64 432, !40, i64 434, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !42, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !42, i64 484, !42, i64 488, !40, i64 492, !40, i64 494, !42, i64 496, !42, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !81, i64 544, !81, i64 560, !82, i64 576, !48, i64 592, !40, i64 608, !40, i64 610, !51, i64 612, !51, i64 616, !51, i64 620, !51, i64 624, !42, i64 628, !51, i64 632, !51, i64 636, !51, i64 640, !51, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !51, i64 660, !51, i64 664, !40, i64 668, !40, i64 670, !51, i64 672, !51, i64 676, !36, i64 680, !42, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !40, i64 2524, !40, i64 2526, !51, i64 2528, !51, i64 2532, !40, i64 2536, !40, i64 2538, !51, i64 2540, !40, i64 2544, !40, i64 2546, !42, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !51, i64 2560, !51, i64 2564, !35, i64 2568, !42, i64 2576, !51, i64 2580, !36, i64 2584, !120, i64 2616, !42, i64 3976, !42, i64 3980}
!115 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !51, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !116, i64 24, !117, i64 184}
!116 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !51, i64 136, !51, i64 140, !35, i64 144, !35, i64 152}
!117 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!118 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !40, i64 48, !40, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!119 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !51, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!120 = !{!"BakeData", !115, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !51, i64 1280, !51, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!121 = !{!"AudioData", !42, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !42, i64 16, !40, i64 20, !40, i64 22, !51, i64 24, !51, i64 28}
!122 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!123 = !{!"GameData", !122, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !124, i64 40, !40, i64 64, !40, i64 66, !51, i64 68, !125, i64 72, !51, i64 128, !51, i64 132, !42, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180}
!124 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !51, i64 8, !51, i64 12, !35, i64 16}
!125 = !{!"RecastData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !42, i64 40, !51, i64 44, !51, i64 48, !40, i64 52, !40, i64 54}
!126 = !{!"UnitSettings", !51, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!127 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!128 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!129 = !{!113, !88, i64 4656}
!130 = !{!87, !35, i64 1888}
!131 = distinct !{!131, !66, !67}
!132 = distinct !{!132, !66, !67}
!133 = !{!134, !35, i64 144}
!134 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !135, i64 152, !40, i64 184}
!135 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!136 = !{!134, !35, i64 72}
!137 = !{!79, !40, i64 214}
!138 = !{!109, !40, i64 84}
!139 = !{!92, !35, i64 0}
!140 = !{!92, !42, i64 24}
!141 = !{!92, !35, i64 32}
!142 = !{!143, !35, i64 40}
!143 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !45, i64 24, !42, i64 32, !35, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !42, i64 88}
!144 = !{i32 2, i32 0}
!145 = !{!146, !35, i64 88}
!146 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !48, i64 128, !35, i64 144, !35, i64 152, !40, i64 160, !36, i64 162}
!147 = !{!134, !35, i64 32}
!148 = !{!134, !40, i64 184}
!149 = !{!90, !40, i64 158}
!150 = !{!134, !35, i64 96}
!151 = !{!146, !35, i64 80}
!152 = !{!134, !35, i64 8}
!153 = !{!146, !35, i64 144}
!154 = distinct !{!154, !66, !67}
!155 = !{!134, !35, i64 88}
!156 = !{!146, !35, i64 112}
!157 = !{!158, !42, i64 128}
!158 = !{!"CollectionPropertyIterator", !159, i64 0, !159, i64 24, !35, i64 48, !36, i64 56, !42, i64 96, !42, i64 100, !159, i64 104, !42, i64 128}
!159 = !{!"PointerRNA", !160, i64 0, !35, i64 8, !35, i64 16}
!160 = !{!"", !35, i64 0}
!161 = !{i64 0, i64 8, !34}
!162 = !{!163, !40, i64 18}
!163 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !42, i64 84, !164, i64 88, !42, i64 120, !42, i64 124}
!164 = !{!"IDPropertyData", !35, i64 0, !48, i64 8, !42, i64 24, !42, i64 28}
!165 = distinct !{!165, !66, !67}
!166 = !{!167, !35, i64 48}
!167 = !{!"wmEventHandler", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!168 = !{!134, !35, i64 56}
!169 = !{!167, !35, i64 56}
!170 = distinct !{!170, !66, !67}
!171 = !{!167, !35, i64 64}
!172 = distinct !{!172, !66, !67}
!173 = !{!167, !35, i64 80}
!174 = !{!167, !35, i64 96}
!175 = !{!167, !35, i64 104}
!176 = !{!167, !35, i64 112}
!177 = !{!167, !35, i64 88}
!178 = distinct !{!178, !66, !67}
!179 = !{!180, !42, i64 8}
!180 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !40, i64 8496, !40, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !36, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !36, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !42, i64 8912, !42, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !51, i64 8956, !51, i64 8960, !42, i64 8964, !40, i64 8968, !40, i64 8970, !51, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !181, i64 8984, !36, i64 9760, !36, i64 9772, !40, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !51, i64 10904, !51, i64 10908, !42, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !182, i64 10928}
!181 = !{!"ColorBand", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!182 = !{!"WalkNavigation", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !40, i64 24, !36, i64 26}
!183 = !{!180, !42, i64 8484}
!184 = !{!47, !35, i64 176}
!185 = !{!47, !40, i64 132}
!186 = !{!61, !40, i64 16}
!187 = !{!61, !40, i64 18}
!188 = distinct !{!188, !66, !67}
!189 = distinct !{!189, !66, !67}
!190 = distinct !{!190, !66, !67}
!191 = !{!61, !42, i64 20}
!192 = !{!79, !42, i64 176}
!193 = !{!61, !42, i64 24}
!194 = !{!79, !42, i64 184}
!195 = !{!48, !35, i64 0}
!196 = !{!99, !40, i64 222}
!197 = !{!47, !42, i64 160}
!198 = !{!99, !40, i64 214}
!199 = !{!90, !35, i64 248}
!200 = !{!201, !35, i64 24}
!201 = !{!"wmPaintCursor", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!202 = !{!201, !35, i64 0}
!203 = !{!47, !40, i64 126}
!204 = distinct !{!204, !66, !67}
!205 = distinct !{!205, !66, !67}
!206 = !{!99, !40, i64 228}
!207 = !{!99, !40, i64 226}
!208 = !{!61, !42, i64 48}
!209 = !{!61, !42, i64 52}
!210 = !{i64 0, i64 2, !39, i64 2, i64 4, !41, i64 6, i64 4, !41, i64 10, i64 8, !43, i64 18, i64 6, !43, i64 24, i64 1, !43, i64 25, i64 1, !43, i64 26, i64 2, !39, i64 28, i64 2, !39, i64 30, i64 4, !41, i64 34, i64 4, !41, i64 38, i64 8, !44, i64 46, i64 4, !41, i64 50, i64 4, !41, i64 54, i64 2, !39, i64 56, i64 2, !39, i64 58, i64 2, !39, i64 60, i64 2, !39, i64 62, i64 2, !39, i64 64, i64 2, !39, i64 70, i64 8, !34, i64 78, i64 8, !34, i64 86, i64 2, !39, i64 88, i64 2, !39, i64 90, i64 4, !41, i64 94, i64 8, !34}
!211 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 8, !43, i64 16, i64 6, !43, i64 22, i64 1, !43, i64 23, i64 1, !43, i64 24, i64 2, !39, i64 26, i64 2, !39, i64 28, i64 4, !41, i64 32, i64 4, !41, i64 36, i64 8, !44, i64 44, i64 4, !41, i64 48, i64 4, !41, i64 52, i64 2, !39, i64 54, i64 2, !39, i64 56, i64 2, !39, i64 58, i64 2, !39, i64 60, i64 2, !39, i64 62, i64 2, !39, i64 68, i64 8, !34, i64 76, i64 8, !34, i64 84, i64 2, !39, i64 86, i64 2, !39, i64 88, i64 4, !41, i64 92, i64 8, !34}
!212 = !{i64 0, i64 4, !41, i64 4, i64 8, !43, i64 12, i64 6, !43, i64 18, i64 1, !43, i64 19, i64 1, !43, i64 20, i64 2, !39, i64 22, i64 2, !39, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 8, !44, i64 40, i64 4, !41, i64 44, i64 4, !41, i64 48, i64 2, !39, i64 50, i64 2, !39, i64 52, i64 2, !39, i64 54, i64 2, !39, i64 56, i64 2, !39, i64 58, i64 2, !39, i64 64, i64 8, !34, i64 72, i64 8, !34, i64 80, i64 2, !39, i64 82, i64 2, !39, i64 84, i64 4, !41, i64 88, i64 8, !34}
!213 = !{i64 0, i64 8, !43, i64 8, i64 6, !43, i64 14, i64 1, !43, i64 15, i64 1, !43, i64 16, i64 2, !39, i64 18, i64 2, !39, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 8, !44, i64 36, i64 4, !41, i64 40, i64 4, !41, i64 44, i64 2, !39, i64 46, i64 2, !39, i64 48, i64 2, !39, i64 50, i64 2, !39, i64 52, i64 2, !39, i64 54, i64 2, !39, i64 60, i64 8, !34, i64 68, i64 8, !34, i64 76, i64 2, !39, i64 78, i64 2, !39, i64 80, i64 4, !41, i64 84, i64 8, !34}
!214 = !{i64 0, i64 8, !44, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 2, !39, i64 18, i64 2, !39, i64 20, i64 2, !39, i64 22, i64 2, !39, i64 24, i64 2, !39, i64 26, i64 2, !39, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 2, !39, i64 50, i64 2, !39, i64 52, i64 4, !41, i64 56, i64 8, !34}
!215 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 8, !43, i64 20, i64 6, !43, i64 26, i64 1, !43, i64 27, i64 1, !43, i64 28, i64 2, !39, i64 30, i64 2, !39, i64 32, i64 4, !41, i64 36, i64 4, !41, i64 40, i64 8, !44, i64 48, i64 4, !41, i64 52, i64 4, !41, i64 56, i64 2, !39, i64 58, i64 2, !39, i64 60, i64 2, !39, i64 62, i64 2, !39, i64 64, i64 2, !39, i64 66, i64 2, !39, i64 72, i64 8, !34, i64 80, i64 8, !34, i64 88, i64 2, !39, i64 90, i64 2, !39, i64 92, i64 4, !41, i64 96, i64 8, !34}
!216 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 8, !44, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 2, !39, i64 26, i64 2, !39, i64 28, i64 2, !39, i64 30, i64 2, !39, i64 32, i64 2, !39, i64 34, i64 2, !39, i64 40, i64 8, !34, i64 48, i64 8, !34, i64 56, i64 2, !39, i64 58, i64 2, !39, i64 60, i64 4, !41, i64 64, i64 8, !34}
!217 = !{i64 0, i64 4, !41, i64 4, i64 8, !44, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 2, !39, i64 22, i64 2, !39, i64 24, i64 2, !39, i64 26, i64 2, !39, i64 28, i64 2, !39, i64 30, i64 2, !39, i64 36, i64 8, !34, i64 44, i64 8, !34, i64 52, i64 2, !39, i64 54, i64 2, !39, i64 56, i64 4, !41, i64 60, i64 8, !34}
!218 = distinct !{!218, !66, !67}
!219 = !{!61, !40, i64 82}
!220 = !{!61, !40, i64 44}
!221 = !{!61, !40, i64 46}
!222 = distinct !{!222, !66, !67}
!223 = !{!47, !35, i64 208}
!224 = !{!167, !35, i64 0}
!225 = !{!167, !42, i64 16}
!226 = !{!109, !36, i64 72}
!227 = !{!109, !35, i64 96}
!228 = !{!229, !35, i64 72}
!229 = !{!"SpaceFile", !35, i64 0, !35, i64 8, !48, i64 16, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!230 = distinct !{!230, !66, !67}
!231 = !{i32 0, i32 2}
!232 = distinct !{!232, !66, !67}
!233 = !{!167, !35, i64 120}
!234 = !{!134, !35, i64 40}
!235 = !{!99, !35, i64 152}
!236 = !{!146, !35, i64 120}
!237 = !{!90, !35, i64 136}
!238 = !{!167, !35, i64 24}
!239 = distinct !{!239, !66, !67}
!240 = distinct !{!240, !66, !67}
!241 = !{!167, !35, i64 32}
!242 = !{!167, !35, i64 40}
!243 = !{!167, !35, i64 72}
!244 = !{!167, !42, i64 20}
!245 = distinct !{!245, !66, !67}
!246 = distinct !{!246, !66, !67}
!247 = !{!167, !35, i64 128}
!248 = distinct !{!248, !66, !67}
!249 = distinct !{!249, !66, !67}
!250 = !{!47, !35, i64 184}
!251 = !{!252, !42, i64 0}
!252 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16}
!253 = !{!252, !42, i64 12}
!254 = !{!252, !42, i64 16}
!255 = !{!252, !42, i64 4}
!256 = !{!252, !42, i64 8}
!257 = !{!258, !42, i64 0}
!258 = !{!"", !42, i64 0}
!259 = !{!47, !40, i64 116}
!260 = !{!61, !42, i64 64}
!261 = !{!61, !42, i64 68}
!262 = !{!61, !45, i64 56}
!263 = !{!180, !40, i64 8478}
!264 = !{!265, !42, i64 0}
!265 = !{!"", !42, i64 0, !36, i64 4, !36, i64 5}
!266 = !{!265, !36, i64 4}
!267 = !{!61, !36, i64 42}
!268 = !{!61, !40, i64 74}
!269 = !{!61, !40, i64 76}
!270 = !{!61, !40, i64 78}
!271 = !{!61, !40, i64 72}
!272 = !{!61, !40, i64 80}
!273 = !{!85, !36, i64 2080}
!274 = !{!180, !51, i64 8956}
!275 = !{!180, !51, i64 8960}
!276 = !{!51, !51, i64 0}
!277 = !{!180, !42, i64 8964}
!278 = !{!279, !51, i64 24}
!279 = !{!"", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !42, i64 28}
!280 = !{!281, !51, i64 24}
!281 = !{!"wmNDOFMotionData", !36, i64 0, !36, i64 12, !51, i64 24, !42, i64 28}
!282 = !{!279, !42, i64 28}
!283 = !{!281, !42, i64 28}
!284 = !{!285, !40, i64 4}
!285 = !{!"", !42, i64 0, !40, i64 4}
!286 = !{!285, !42, i64 0}
!287 = !{!90, !35, i64 144}
!288 = distinct !{!288, !66, !67}
!289 = !{!180, !51, i64 10908}
!290 = !{!47, !40, i64 104}
!291 = !{!47, !40, i64 106}
!292 = distinct !{!292, !66, !67}
!293 = !{!90, !36, i64 344}
!294 = !{!146, !35, i64 96}
!295 = !{!146, !40, i64 160}
!296 = !{i8 0, i8 2}
!297 = !{!134, !35, i64 48}
!298 = !{!82, !42, i64 0}
!299 = !{!82, !42, i64 12}
!300 = !{!82, !42, i64 4}
!301 = !{!82, !42, i64 8}
!302 = !{!79, !35, i64 328}
!303 = distinct !{!303, !66, !67}
!304 = !{!159, !35, i64 16}
!305 = !{!134, !35, i64 112}
!306 = !{!159, !35, i64 8}
!307 = !{!158, !35, i64 120}
!308 = !{!309, !35, i64 80}
!309 = !{!"wmOperatorTypeMacro", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88}
!310 = !{!309, !35, i64 0}
!311 = distinct !{!311, !66, !67}
!312 = !{!309, !35, i64 88}
!313 = distinct !{!313, !66, !67}
!314 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!315 = !{!316, !35, i64 120}
!316 = !{!"wmKeyMap", !35, i64 0, !35, i64 8, !48, i64 16, !48, i64 32, !36, i64 48, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !35, i64 120, !35, i64 128}
!317 = !{!61, !35, i64 88}
!318 = !{!319, !35, i64 176}
!319 = !{!"wmKeyMapItem", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !36, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !35, i64 176}
!320 = !{i32 0, i32 6}
!321 = distinct !{!321, !66, !67}
!322 = !{!323, !35, i64 16}
!323 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !40, i64 56}
!324 = distinct !{!324, !66, !67}
!325 = !{!323, !35, i64 24}
!326 = !{!323, !35, i64 32}
!327 = !{!323, !40, i64 56}
!328 = !{!323, !35, i64 48}
!329 = distinct !{!329, !66, !67}
!330 = distinct !{!330, !66, !67}
!331 = !{!319, !40, i64 154}
!332 = !{!319, !40, i64 168}
!333 = !{!319, !40, i64 156}
!334 = !{!319, !40, i64 158}
!335 = !{!319, !40, i64 160}
!336 = !{!319, !40, i64 162}
!337 = !{!319, !40, i64 164}
!338 = !{!319, !40, i64 166}
!339 = !{!134, !35, i64 64}
!340 = !{!134, !35, i64 128}
!341 = distinct !{!341, !66, !67}
!342 = !{!319, !40, i64 152}
