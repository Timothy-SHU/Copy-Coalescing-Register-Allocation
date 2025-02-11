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
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
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
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.GHOST_TEventTrackpadData = type { i32, i32, i32, i32, i32 }
%struct.GHOST_TEventKeyData = type { i32, i8, [6 x i8] }
%struct.GHOST_TEventNDOFButtonData = type { i32, i16 }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.GHOST_TEventNDOFMotionData = type { float, float, float, float, float, float, float, i32 }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.wmPaintCursor = type { ptr, ptr, ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_add(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !9
  tail call fastcc void @update_tablet_data(ptr noundef %0, ptr noundef %4) #25
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 27
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_tablet_data(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = tail call ptr @GHOST_GetTabletData(ptr noundef %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.31) #24
  %13 = load i32, ptr %5, align 4, !tbaa !20
  store i32 %13, ptr %12, align 4, !tbaa !23
  %14 = getelementptr inbounds %struct.GHOST_TabletData, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct.wmTabletData, ptr %12, i64 0, i32 1
  %16 = load <2 x float>, ptr %14, align 4, !tbaa !25
  store <2 x float> %16, ptr %15, align 4, !tbaa !25
  %17 = getelementptr inbounds %struct.GHOST_TabletData, ptr %5, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !26
  %19 = getelementptr inbounds %struct.wmTabletData, ptr %12, i64 0, i32 3
  store float %18, ptr %19, align 4, !tbaa !27
  br label %20

20:                                               ; preds = %2, %7, %10
  %21 = phi ptr [ %12, %10 ], [ null, %7 ], [ null, %2 ]
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 24
  store ptr %21, ptr %22, align 8, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 26
  %7 = load i16, ptr %6, align 2, !tbaa !31
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 25
  %11 = load i16, ptr %10, align 8, !tbaa !32
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @WM_drag_free_list(ptr noundef nonnull %3) #24
  br label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %15(ptr noundef nonnull %3) #24
  br label %16

16:                                               ; preds = %5, %14, %13, %1
  %17 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %21(ptr noundef nonnull %18) #24
  br label %22

22:                                               ; preds = %20, %16
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %23(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare void @WM_drag_free_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_free_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 27
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @wm_event_free(ptr noundef nonnull %6) #25
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !33

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @wm_event_init_from_window(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_add_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %5 = tail call fastcc zeroext i8 @wm_test_duplicate_notifier(ptr noundef %4, i32 noundef %1, ptr noundef %2) #25, !range !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.1) #24
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %9, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %9) #24
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %9, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !39
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 7
  %18 = load i16, ptr %17, align 4, !tbaa !40
  %19 = sext i16 %18 to i32
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %9, i64 0, i32 4
  store i32 %19, ptr %20, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %16, %7
  %22 = insertelement <4 x i32> poison, i32 %1, i64 0
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = and <4 x i32> %23, <i32 -16777216, i32 16711680, i32 65280, i32 255>
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %9, i64 0, i32 5
  store <4 x i32> %24, ptr %25, align 4, !tbaa !12
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %9, i64 0, i32 9
  store ptr %2, ptr %26, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %3, %21
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @wm_test_duplicate_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %8, i64 0, i32 5
  %10 = load <4 x i32>, ptr %9, align 4, !tbaa !12
  %11 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %10)
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %8, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %20, label %17

17:                                               ; preds = %7, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !47

20:                                               ; preds = %13, %17, %3
  %21 = phi i8 [ 0, %3 ], [ 0, %17 ], [ 1, %13 ]
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_main_add_notifier(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @wm_test_duplicate_notifier(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %1) #25, !range !36
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %12 = tail call ptr %11(i64 noundef 64, ptr noundef nonnull @.str.1) #24
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %12, i64 0, i32 2
  store ptr %5, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %12) #24
  %15 = insertelement <4 x i32> poison, i32 %0, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %17 = and <4 x i32> %16, <i32 -16777216, i32 16711680, i32 65280, i32 255>
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %12, i64 0, i32 5
  store <4 x i32> %17, ptr %18, align 4, !tbaa !12
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %12, i64 0, i32 9
  store ptr %1, ptr %19, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %2, %7, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_main_remove_notifier_reference(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @G, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %17
  %11 = phi ptr [ %12, %17 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %11, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call fastcc void @wm_notifier_clear(ptr noundef nonnull %11) #25
  br label %17

17:                                               ; preds = %10, %16
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %10, !llvm.loop !58

19:                                               ; preds = %17, %6, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @wm_notifier_clear(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_do_notifiers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %227, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 8
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 5
  br label %15

11:                                               ; preds = %110, %4
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 8
  %13 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #24
  %14 = icmp eq ptr %13, null
  br i1 %14, label %120, label %113

15:                                               ; preds = %8, %110
  %16 = phi ptr [ %6, %8 ], [ %111, %110 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %16) #24
  %17 = load ptr, ptr %9, align 8, !tbaa !53
  %18 = icmp eq ptr %17, null
  br i1 %18, label %110, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 29
  %21 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  br label %22

22:                                               ; preds = %19, %97
  %23 = phi ptr [ %17, %19 ], [ %25, %97 ]
  %24 = phi i8 [ 0, %19 ], [ %92, %97 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 16777216
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !60
  switch i32 %31, label %34 [
    i32 65536, label %32
    i32 131072, label %32
    i32 196608, label %33
  ]

32:                                               ; preds = %29, %29
  store i16 1, ptr %10, align 4, !tbaa !61
  br label %33

33:                                               ; preds = %29, %32
  tail call void @wm_window_title(ptr noundef nonnull %2, ptr noundef nonnull %16) #24
  br label %34

34:                                               ; preds = %33, %29, %22
  %35 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = icmp eq ptr %36, %16
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i32, ptr %26, align 4, !tbaa !59
  %40 = icmp eq i32 %39, 50331648
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !60
  switch i32 %43, label %61 [
    i32 65536, label %44
    i32 131072, label %50
  ]

44:                                               ; preds = %41
  tail call void @UI_remove_popup_handlers_all(ptr noundef %0, ptr noundef nonnull %20) #24
  %45 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef %46) #24
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %56

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  tail call void @ED_screen_delete(ptr noundef %0, ptr noundef %52) #24
  %53 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50, %44
  %57 = phi ptr [ %45, %44 ], [ %51, %50 ]
  %58 = phi ptr [ @.str.2, %44 ], [ @.str.3, %50 ]
  %59 = load ptr, ptr %57, align 8, !tbaa !46
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull @__func__.wm_event_do_notifiers, ptr noundef %59) #25
  br label %61

61:                                               ; preds = %56, %44, %50, %41
  %62 = load ptr, ptr %35, align 8, !tbaa !39
  br label %63

63:                                               ; preds = %61, %34
  %64 = phi ptr [ %62, %61 ], [ %36, %34 ]
  %65 = icmp eq ptr %64, %16
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = icmp eq ptr %64, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %21, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.bScreen, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !64
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %63, %68, %72
  %78 = load i32, ptr %26, align 4, !tbaa !59
  br label %79

79:                                               ; preds = %38, %77
  %80 = phi i32 [ %78, %77 ], [ %39, %38 ]
  %81 = icmp eq i32 %80, 67108864
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.wmNotifier, ptr %23, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !60
  %85 = icmp eq i32 %84, 196608
  %86 = select i1 %85, i8 1, i8 %24
  br label %87

87:                                               ; preds = %66, %72, %82
  %88 = phi i8 [ %86, %82 ], [ %24, %66 ], [ %24, %72 ]
  %89 = load i32, ptr %26, align 4, !tbaa !59
  br label %90

90:                                               ; preds = %87, %79
  %91 = phi i32 [ %89, %87 ], [ %80, %79 ]
  %92 = phi i8 [ %88, %87 ], [ %24, %79 ]
  switch i32 %91, label %97 [
    i32 67108864, label %93
    i32 83886080, label %93
    i32 268435456, label %93
    i32 16777216, label %93
  ]

93:                                               ; preds = %90, %90, %90, %90
  %94 = load ptr, ptr %21, align 8, !tbaa !63
  %95 = getelementptr inbounds %struct.bScreen, ptr %94, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !64
  tail call void @ED_info_stats_clear(ptr noundef %96) #24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251854848, ptr noundef null) #25
  br label %97

97:                                               ; preds = %90, %93
  %98 = icmp eq ptr %25, null
  br i1 %98, label %99, label %22, !llvm.loop !66

99:                                               ; preds = %97
  %100 = icmp ne i8 %92, 0
  %101 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = tail call ptr @CTX_data_main(ptr noundef %0) #24
  %106 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !63
  %108 = getelementptr inbounds %struct.bScreen, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !64
  tail call void @ED_update_for_newframe(ptr noundef %105, ptr noundef %109, i32 noundef 1) #24
  br label %110

110:                                              ; preds = %15, %104, %99
  %111 = load ptr, ptr %16, align 8, !tbaa !5
  %112 = icmp eq ptr %111, null
  br i1 %112, label %11, label %15, !llvm.loop !67

113:                                              ; preds = %11, %177
  %114 = phi ptr [ %179, %177 ], [ %13, %11 ]
  %115 = load ptr, ptr %5, align 8, !tbaa !5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %177, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.wmNotifier, ptr %114, i64 0, i32 5
  %119 = getelementptr inbounds %struct.wmNotifier, ptr %114, i64 0, i32 9
  br label %123

120:                                              ; preds = %177, %11
  %121 = load ptr, ptr %5, align 8, !tbaa !5
  %122 = icmp eq ptr %121, null
  br i1 %122, label %226, label %184

123:                                              ; preds = %117, %174
  %124 = phi ptr [ %115, %117 ], [ %175, %174 ]
  %125 = load i32, ptr %118, align 4, !tbaa !59
  switch i32 %125, label %142 [
    i32 50331648, label %126
    i32 67108864, label %133
  ]

126:                                              ; preds = %123
  %127 = load ptr, ptr %119, align 8, !tbaa !46
  %128 = icmp eq ptr %127, null
  br i1 %128, label %142, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.wmWindow, ptr %124, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  %132 = icmp eq ptr %127, %131
  br i1 %132, label %142, label %174

133:                                              ; preds = %123
  %134 = load ptr, ptr %119, align 8, !tbaa !46
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.wmWindow, ptr %124, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !63
  %139 = getelementptr inbounds %struct.bScreen, ptr %138, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !64
  %141 = icmp eq ptr %134, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %123, %126, %129, %136, %133
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %124) #24
  tail call void @ED_screen_do_listen(ptr noundef %0, ptr noundef nonnull %114) #24
  %143 = getelementptr inbounds %struct.wmWindow, ptr %124, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !63
  %145 = getelementptr inbounds %struct.bScreen, ptr %144, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %142, %148
  %149 = phi ptr [ %151, %148 ], [ %146, %142 ]
  %150 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @ED_region_do_listen(ptr noundef %150, ptr noundef null, ptr noundef nonnull %149, ptr noundef nonnull %114) #24
  %151 = load ptr, ptr %149, align 8, !tbaa !5
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %148, !llvm.loop !68

153:                                              ; preds = %148
  %154 = load ptr, ptr %143, align 8, !tbaa !63
  br label %155

155:                                              ; preds = %153, %142
  %156 = phi ptr [ %154, %153 ], [ %144, %142 ]
  %157 = getelementptr inbounds %struct.bScreen, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = icmp eq ptr %158, null
  br i1 %159, label %174, label %163

160:                                              ; preds = %169, %163
  %161 = load ptr, ptr %164, align 8, !tbaa !5
  %162 = icmp eq ptr %161, null
  br i1 %162, label %174, label %163, !llvm.loop !69

163:                                              ; preds = %155, %160
  %164 = phi ptr [ %161, %160 ], [ %158, %155 ]
  %165 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @ED_area_do_listen(ptr noundef %165, ptr noundef nonnull %164, ptr noundef nonnull %114) #24
  %166 = getelementptr inbounds %struct.ScrArea, ptr %164, i64 0, i32 20
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = icmp eq ptr %167, null
  br i1 %168, label %160, label %169

169:                                              ; preds = %163, %169
  %170 = phi ptr [ %172, %169 ], [ %167, %163 ]
  %171 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @ED_region_do_listen(ptr noundef %171, ptr noundef nonnull %164, ptr noundef nonnull %170, ptr noundef nonnull %114) #24
  %172 = load ptr, ptr %170, align 8, !tbaa !5
  %173 = icmp eq ptr %172, null
  br i1 %173, label %160, label %169, !llvm.loop !70

174:                                              ; preds = %160, %155, %129, %136
  %175 = load ptr, ptr %124, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %123, !llvm.loop !71

177:                                              ; preds = %174, %113
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %178(ptr noundef nonnull %114) #24
  %179 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #24
  %180 = icmp eq ptr %179, null
  br i1 %180, label %120, label %113, !llvm.loop !72

181:                                              ; preds = %184
  %182 = load ptr, ptr %5, align 8, !tbaa !5
  %183 = icmp eq ptr %182, null
  br i1 %183, label %226, label %193

184:                                              ; preds = %120, %184
  %185 = phi ptr [ %191, %184 ], [ %121, %120 ]
  %186 = phi i64 [ %190, %184 ], [ 0, %120 ]
  %187 = getelementptr inbounds %struct.wmWindow, ptr %185, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !63
  %189 = tail call i64 @ED_view3d_screen_datamask(ptr noundef %188) #24
  %190 = or i64 %189, %186
  %191 = load ptr, ptr %185, align 8, !tbaa !5
  %192 = icmp eq ptr %191, null
  br i1 %192, label %181, label %184, !llvm.loop !73

193:                                              ; preds = %181, %223
  %194 = phi ptr [ %224, %223 ], [ %182, %181 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %194) #24
  %195 = getelementptr inbounds %struct.wmWindow, ptr %194, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = getelementptr inbounds %struct.bScreen, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  %199 = icmp eq ptr %198, null
  br i1 %199, label %209, label %200

200:                                              ; preds = %193, %206
  %201 = phi ptr [ %207, %206 ], [ %198, %193 ]
  %202 = getelementptr inbounds %struct.ScrArea, ptr %201, i64 0, i32 13
  %203 = load i16, ptr %202, align 8, !tbaa !74
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %201) #24
  tail call void @ED_area_do_refresh(ptr noundef %0, ptr noundef nonnull %201) #24
  br label %206

206:                                              ; preds = %200, %205
  %207 = load ptr, ptr %201, align 8, !tbaa !5
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %200, !llvm.loop !76

209:                                              ; preds = %206, %193
  %210 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !77
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = tail call ptr @CTX_data_main(ptr noundef %0) #24
  %214 = load ptr, ptr %195, align 8, !tbaa !63
  %215 = getelementptr inbounds %struct.bScreen, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !64
  %217 = getelementptr inbounds %struct.Scene, ptr %216, i64 0, i32 42
  %218 = getelementptr inbounds %struct.Scene, ptr %216, i64 0, i32 43
  %219 = load i64, ptr %218, align 8, !tbaa !78
  %220 = or i64 %219, %190
  store i64 %220, ptr %217, align 8, !tbaa !95
  %221 = getelementptr inbounds %struct.Main, ptr %213, i64 0, i32 46
  %222 = load ptr, ptr %221, align 8, !tbaa !96
  tail call void @BKE_scene_update_tagged(ptr noundef %222, ptr noundef %213, ptr noundef %216) #24
  br label %223

223:                                              ; preds = %212, %209
  %224 = load ptr, ptr %194, align 8, !tbaa !5
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %193, !llvm.loop !97

226:                                              ; preds = %223, %120, %181
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #24
  br label %227

227:                                              ; preds = %1, %226
  ret void
}

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @wm_window_title(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_remove_popup_handlers_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @ED_screen_delete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_info_stats_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_screen_do_listen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_do_listen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_do_listen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ED_view3d_screen_datamask(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_do_refresh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_scene_update_tagged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %6, i64 0, i32 2
  %10 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %9, i8 noundef zeroext 0) #24
  %11 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %10) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %4, !llvm.loop !98

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0) #24
  br label %25

25:                                               ; preds = %8, %19, %23, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ], [ 1, %19 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_poll_context(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i16 noundef signext %2, i8 noundef zeroext 1) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #24
  %7 = icmp ne ptr %1, null
  %8 = icmp ne ptr %0, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %60

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_window(ptr noundef nonnull %0) #24
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
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #24
  br label %60

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !35
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
  %23 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #24
  %24 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #24
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
  %33 = load i16, ptr %32, align 2, !tbaa !103
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
  %42 = tail call ptr @BKE_area_find_region_active_win(ptr noundef nonnull %24) #24
  br label %45

43:                                               ; preds = %40
  %44 = tail call ptr @BKE_area_find_region_type(ptr noundef nonnull %24, i32 noundef %29) #24
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef nonnull %46) #24
  br label %49

49:                                               ; preds = %45, %48, %38, %31
  %50 = tail call fastcc i32 @wm_operator_invoke(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5) #25
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef %23) #24
  br label %60

51:                                               ; preds = %20, %20
  %52 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #24
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef null) #24
  %53 = tail call fastcc i32 @wm_operator_invoke(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5) #25
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef %52) #24
  br label %60

54:                                               ; preds = %20, %20
  %55 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #24
  %56 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #24
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef null) #24
  tail call void @CTX_wm_area_set(ptr noundef nonnull %0, ptr noundef null) #24
  %57 = tail call fastcc i32 @wm_operator_invoke(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5) #25
  tail call void @CTX_wm_area_set(ptr noundef nonnull %0, ptr noundef %56) #24
  tail call void @CTX_wm_region_set(ptr noundef nonnull %0, ptr noundef %55) #24
  br label %60

58:                                               ; preds = %20, %20
  %59 = tail call fastcc i32 @wm_operator_invoke(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %21, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5) #25
  br label %60

60:                                               ; preds = %14, %16, %49, %51, %54, %58, %6, %20
  %61 = phi i32 [ 0, %20 ], [ 0, %6 ], [ 0, %14 ], [ 0, %16 ], [ %50, %49 ], [ %53, %51 ], [ %57, %54 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_region_active_win_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !103
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 20
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull %12, ptr noundef nonnull %5) #24
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 15
  store i16 %14, ptr %15, align 4, !tbaa !104
  br label %16

16:                                               ; preds = %4, %7, %11, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ReportList, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #26
  call void @BKE_reports_init(ptr noundef nonnull %4, i32 noundef 2) #24
  call void @BKE_report(ptr noundef nonnull %4, i32 noundef %1, ptr noundef %2) #24
  call fastcc void @wm_add_reports(ptr noundef %0, ptr noundef nonnull %4) #25
  call void @BKE_reports_clear(ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_add_reports(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ReportList, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %12 = tail call ptr @CTX_wm_reports(ptr noundef %0) #24
  tail call void @BLI_movelisttolist(ptr noundef %12, ptr noundef nonnull %1) #24
  %13 = getelementptr inbounds %struct.ReportList, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  tail call void @WM_event_remove_timer(ptr noundef %11, ptr noundef null, ptr noundef %14) #24
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %16 = tail call ptr @WM_event_add_timer(ptr noundef %11, ptr noundef %15, i32 noundef 278, double noundef 5.000000e-02) #24
  store ptr %16, ptr %13, align 8, !tbaa !107
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %18 = tail call ptr %17(i64 noundef 20, ptr noundef nonnull @.str.20) #24
  %19 = load ptr, ptr %13, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 5
  store ptr %18, ptr %20, align 8, !tbaa !108
  br label %21

21:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_reportf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %5 = tail call ptr @BLI_dynstr_new() #24
  call void @llvm.va_start(ptr nonnull %4)
  call void @BLI_dynstr_vappendf(ptr noundef %5, ptr noundef %2, ptr noundef nonnull %4) #24
  call void @llvm.va_end(ptr nonnull %4)
  %6 = call ptr @BLI_dynstr_get_cstring(ptr noundef %5) #24
  call void @WM_report(ptr noundef %0, i32 noundef %1, ptr noundef %6) #25
  call void @BLI_dynstr_free(ptr noundef %5) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: optsize
declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2) #25, !range !110
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef null) #24
  %6 = icmp eq ptr %1, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef nonnull %9) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 19
  %21 = load i16, ptr %20, align 8, !tbaa !114
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !115
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !115
  br label %28

28:                                               ; preds = %24, %19
  %29 = tail call i32 %17(ptr noundef %0, ptr noundef nonnull %1) #24
  %30 = load ptr, ptr %8, align 8, !tbaa !111
  %31 = getelementptr inbounds %struct.wmOperatorType, ptr %30, i64 0, i32 19
  %32 = load i16, ptr %31, align 8, !tbaa !114
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !115
  %41 = add i16 %40, -1
  store i16 %41, ptr %39, align 2, !tbaa !115
  br label %42

42:                                               ; preds = %28, %35, %38
  %43 = and i32 %29, 6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %14, %42
  %46 = phi i32 [ %29, %42 ], [ 2, %14 ]
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %46, i8 noundef zeroext 0) #25
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %46, %45 ], [ %29, %42 ]
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = icmp eq i8 %3, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %55 = load i16, ptr %54, align 2, !tbaa !115
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call zeroext i8 @WM_operator_last_properties_store(ptr noundef nonnull %1) #25, !range !36
  br label %59

59:                                               ; preds = %53, %57, %51
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2) #25
  br label %63

60:                                               ; preds = %47
  %61 = icmp eq i8 %2, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void @WM_operator_free(ptr noundef nonnull %1) #24
  br label %63

63:                                               ; preds = %60, %62, %59
  %64 = or i32 %48, 16
  br label %65

65:                                               ; preds = %11, %4, %7, %63
  %66 = phi i32 [ %64, %63 ], [ 2, %7 ], [ 2, %4 ], [ 2, %11 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_call(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @WM_operator_call_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #25, !range !110
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_call_notest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_operator_exec_notest(ptr noundef %0, ptr noundef %1) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_operator_exec_notest(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %14

14:                                               ; preds = %2, %4, %8, %12
  %15 = phi i32 [ %13, %12 ], [ 2, %8 ], [ 2, %4 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_repeat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_operator_exec(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #25, !range !110
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_operator_repeat_check(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %10, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %19, i64 0, i32 2
  %21 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %20, i8 noundef zeroext 0) #24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !117

30:                                               ; preds = %27, %23, %12, %8, %2
  %31 = phi i8 [ 1, %2 ], [ 0, %8 ], [ 1, %12 ], [ 1, %27 ], [ 0, %23 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @WM_operator_last_properties_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %union.IDPropertyTemplate, align 8
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %10 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #24
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.WM_operator_last_properties_init, ptr noundef %17) #25
  br label %19

19:                                               ; preds = %14, %9
  %20 = load ptr, ptr %4, align 8, !tbaa !111
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  %23 = call ptr @RNA_struct_iterator_property(ptr noundef %22) #24
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #26
  %24 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  call void @RNA_property_collection_begin(ptr noundef %25, ptr noundef %23, ptr noundef nonnull %3) #24
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !122
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  br label %31

31:                                               ; preds = %29, %54
  %32 = phi i8 [ 0, %29 ], [ %55, %54 ]
  %33 = load ptr, ptr %30, align 8, !tbaa.struct !126
  %34 = call i32 @RNA_property_flag(ptr noundef %33) #24
  %35 = and i32 %34, 268435456
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load ptr, ptr %24, align 8, !tbaa !121
  %39 = call zeroext i8 @RNA_property_is_set(ptr noundef %38, ptr noundef %33) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = call ptr @RNA_property_identifier(ptr noundef %33) #24
  %43 = load ptr, ptr %4, align 8, !tbaa !111
  %44 = getelementptr inbounds %struct.wmOperatorType, ptr %43, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !118
  %46 = call ptr @IDP_GetPropertyFromGroup(ptr noundef %45, ptr noundef %42) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = call ptr @IDP_CopyProperty(ptr noundef nonnull %46) #24
  %50 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !127
  %52 = or i16 %51, 128
  store i16 %52, ptr %50, align 2, !tbaa !127
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef %10, ptr noundef %49) #24
  br label %54

54:                                               ; preds = %41, %48, %37, %31
  %55 = phi i8 [ %32, %37 ], [ %32, %31 ], [ 1, %48 ], [ %32, %41 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #24
  %56 = load i32, ptr %26, align 8, !tbaa !122
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %31, !llvm.loop !130

58:                                               ; preds = %54, %19
  %59 = phi i8 [ 0, %19 ], [ %55, %54 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #26
  %60 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !131
  call void @IDP_MergeGroup(ptr noundef %61, ptr noundef %10, i8 noundef zeroext 1) #24
  call void @IDP_FreeProperty(ptr noundef %10) #24
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %62(ptr noundef %10) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  br label %63

63:                                               ; preds = %58, %1
  %64 = phi i8 [ %59, %58 ], [ 0, %1 ]
  ret i8 %64
}

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IDP_GetPropertyFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IDP_MergeGroup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_operator_last_properties_store(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %5) #24
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %9 = load ptr, ptr %2, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  tail call void %8(ptr noundef %11) #24
  %12 = load ptr, ptr %2, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 12
  store ptr null, ptr %13, align 8, !tbaa !118
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %12, %7 ], [ %3, %1 ]
  %16 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !131
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !119
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.WM_operator_last_properties_store, ptr noundef %25) #25
  %27 = load ptr, ptr %16, align 8, !tbaa !131
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi ptr [ %27, %23 ], [ %17, %19 ]
  %30 = tail call ptr @IDP_CopyProperty(ptr noundef %29) #24
  %31 = load ptr, ptr %2, align 8, !tbaa !111
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %31, i64 0, i32 12
  store ptr %30, ptr %32, align 8, !tbaa !118
  br label %33

33:                                               ; preds = %14, %28
  %34 = phi i8 [ 1, %28 ], [ 0, %14 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef null, i16 noundef signext %2, i8 noundef zeroext 0) #25
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %2, ptr noundef %3) #25
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_operator_call_py(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %8 = icmp eq i8 %5, 0
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i16 noundef signext %2, i8 noundef zeroext 0) #25
  br label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !115
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 2, !tbaa !115
  %17 = tail call fastcc i32 @wm_operator_call_internal(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i16 noundef signext %2, i8 noundef zeroext 0) #25
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %19 = icmp eq ptr %7, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i16, ptr %14, align 2, !tbaa !115
  %22 = add i16 %21, -1
  store i16 %22, ptr %14, align 2, !tbaa !115
  br label %23

23:                                               ; preds = %11, %20, %13
  %24 = phi i32 [ %17, %20 ], [ %17, %13 ], [ %12, %11 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_free_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %2(ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_remove_handlers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %4 = tail call ptr @BLI_pophead(ptr noundef %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %75
  %9 = phi ptr [ %4, %6 ], [ %76, %75 ]
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  tail call fastcc void @wm_handler_op_context(ptr noundef %0, ptr noundef nonnull %9) #25
  %22 = load ptr, ptr %10, align 8, !tbaa !132
  %23 = getelementptr inbounds %struct.wmOperator, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.wmOperatorType, ptr %24, i64 0, i32 19
  %26 = load i16, ptr %25, align 8, !tbaa !114
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i16, ptr %7, align 2, !tbaa !115
  %31 = add i16 %30, 1
  store i16 %31, ptr %7, align 2, !tbaa !115
  br label %32

32:                                               ; preds = %29, %19
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %24, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  tail call void %34(ptr noundef %0, ptr noundef nonnull %22) #24
  %35 = load ptr, ptr %10, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.wmOperator, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !111
  %38 = getelementptr inbounds %struct.wmOperatorType, ptr %37, i64 0, i32 19
  %39 = load i16, ptr %38, align 8, !tbaa !114
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i16, ptr %7, align 2, !tbaa !115
  %44 = add i16 %43, -1
  store i16 %44, ptr %7, align 2, !tbaa !115
  br label %45

45:                                               ; preds = %42, %32
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %20) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %21) #24
  br label %46

46:                                               ; preds = %45, %13
  %47 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  tail call void @WM_cursor_grab_disable(ptr noundef %47, ptr noundef null) #24
  %48 = load ptr, ptr %10, align 8, !tbaa !132
  tail call void @WM_operator_free(ptr noundef %48) #24
  br label %75

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  %52 = icmp eq ptr %51, null
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %55 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %56 = tail call ptr @CTX_wm_menu(ptr noundef %0) #24
  %57 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !136
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %58) #24
  br label %61

61:                                               ; preds = %60, %53
  %62 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !137
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %63) #24
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 15
  %68 = load ptr, ptr %67, align 8, !tbaa !138
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %68) #24
  br label %71

71:                                               ; preds = %70, %66
  %72 = load ptr, ptr %50, align 8, !tbaa !135
  %73 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !139
  tail call void %72(ptr noundef %0, ptr noundef %74) #24
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %54) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %55) #24
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef %56) #24
  br label %75

75:                                               ; preds = %49, %71, %46
  tail call void @wm_event_free_handler(ptr noundef nonnull %9) #25
  %76 = tail call ptr @BLI_pophead(ptr noundef %1) #24
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %8, !llvm.loop !140

78:                                               ; preds = %75, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_handler_op_context(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #24
  br label %33

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %11
  br i1 %21, label %22, label %16, !llvm.loop !142

22:                                               ; preds = %20
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %11) #24
  %23 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 20
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 9
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %23, %22 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %24, align 8, !tbaa !143
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %32, label %25, !llvm.loop !144

32:                                               ; preds = %29
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %27) #24
  br label %33

33:                                               ; preds = %16, %25, %32, %13, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_cursor_grab_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @WM_userdef_event_map(i32 noundef %0) local_unnamed_addr #10 {
  switch i32 %0, label %32 [
    i32 6, label %2
    i32 5, label %7
    i32 20486, label %12
    i32 20487, label %17
    i32 13, label %22
    i32 12, label %27
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 3, i32 1
  br label %32

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %9 = and i32 %8, 16384
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 3
  br label %32

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 20483, i32 20485
  br label %32

17:                                               ; preds = %1
  %18 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 20485, i32 20483
  br label %32

22:                                               ; preds = %1
  %23 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !149
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 11, i32 10
  br label %32

27:                                               ; preds = %1
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !149
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 10, i32 11
  br label %32

32:                                               ; preds = %1, %27, %22, %17, %12, %7, %2
  %33 = phi i32 [ %31, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %7 ], [ %6, %2 ], [ %0, %1 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_do_handlers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wmEvent, align 8
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  tail call void @WM_keyconfig_update(ptr noundef %3) #24
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %177, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 12
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  br label %12

12:                                               ; preds = %7, %174
  %13 = phi ptr [ %5, %7 ], [ %175, %174 ]
  %14 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @wm_event_free_all(ptr noundef nonnull %13) #25
  br label %42

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @sound_scene_playing(ptr noundef nonnull %20) #24
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %13) #24
  %26 = load ptr, ptr %14, align 8, !tbaa !63
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef %26) #24
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef nonnull %20) #24
  %27 = tail call ptr @ED_screen_animation_playing(ptr noundef %3) #24
  %28 = icmp ne ptr %27, null
  %29 = icmp ne i32 %23, 1
  %30 = select i1 %29, i1 true, i1 %28
  %31 = xor i1 %30, true
  %32 = icmp eq i32 %23, 0
  %33 = select i1 %32, i1 %28, i1 false
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef -1, i32 noundef 1) #24
  br label %37

37:                                               ; preds = %25, %35
  br i1 %32, label %38, label %41

38:                                               ; preds = %37
  %39 = load ptr, ptr @stderr, align 8, !tbaa !5
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2253) #27
  tail call void @exit(i32 noundef -1) #28
  unreachable

41:                                               ; preds = %37
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef null) #24
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef null) #24
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #24
  br label %42

42:                                               ; preds = %18, %41, %22, %17
  %43 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 27
  %44 = load ptr, ptr %43, align 8, !tbaa !150
  %45 = icmp eq ptr %44, null
  br i1 %45, label %164, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 29
  %48 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 17
  %49 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 28
  %50 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 21
  br label %51

51:                                               ; preds = %46, %161
  %52 = phi ptr [ %44, %46 ], [ %162, %161 ]
  %53 = tail call fastcc zeroext i8 @wm_event_pie_filter(ptr noundef nonnull %13, ptr noundef nonnull %52) #25, !range !36
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %161, !llvm.loop !151

55:                                               ; preds = %51
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %13) #24
  %56 = getelementptr inbounds %struct.wmEvent, ptr %52, i64 0, i32 4
  %57 = tail call fastcc ptr @area_event_inside(ptr noundef %0, ptr noundef nonnull %56) #25
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %57) #24
  %58 = tail call fastcc ptr @region_event_inside(ptr noundef %0, ptr noundef nonnull %56) #25
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %58) #24
  tail call void @wm_window_make_drawable(ptr noundef %3, ptr noundef nonnull %13) #24
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef nonnull %52) #25
  %59 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %47) #25
  %60 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %186, label %62

62:                                               ; preds = %55
  tail call fastcc void @wm_event_drag_test(ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %52) #25
  tail call void @wm_tweakevent_test(ptr noundef %0, ptr noundef nonnull %52, i32 noundef %59) #24
  %63 = and i32 %59, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %161

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.wmEvent, ptr %52, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !152
  switch i16 %67, label %70 [
    i16 4, label %68
    i16 400, label %69
  ]

68:                                               ; preds = %65
  tail call void @ED_screen_set_subwinactive(ptr noundef %0, ptr noundef nonnull %52) #24
  tail call fastcc void @wm_paintcursor_test(ptr noundef %0, ptr noundef nonnull %52) #25
  br label %70

69:                                               ; preds = %65
  store i16 1, ptr %48, align 2, !tbaa !153
  br label %70

70:                                               ; preds = %65, %69, %68
  %71 = load ptr, ptr %14, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.bScreen, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %135, label %75

75:                                               ; preds = %70, %130
  %76 = phi ptr [ %133, %130 ], [ %73, %70 ]
  %77 = phi i32 [ %132, %130 ], [ 0, %70 ]
  %78 = phi i32 [ %131, %130 ], [ %59, %70 ]
  %79 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 7
  %80 = tail call fastcc i32 @wm_event_inside_i(ptr noundef nonnull %52, ptr noundef nonnull %79) #25, !range !154
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %130, label %82

82:                                               ; preds = %75
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %76) #24
  %83 = and i32 %78, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %119, label %89

89:                                               ; preds = %85, %114
  %90 = phi ptr [ %117, %114 ], [ %87, %85 ]
  %91 = phi i32 [ %116, %114 ], [ %77, %85 ]
  %92 = phi i32 [ %115, %114 ], [ %78, %85 ]
  %93 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 3
  %94 = tail call fastcc i32 @wm_event_inside_i(ptr noundef nonnull %52, ptr noundef nonnull %93) #25, !range !154
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %89
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %90) #24
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef nonnull %52) #25
  %97 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %8) #25, !range !36
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i16, ptr %66, align 8, !tbaa !152
  switch i16 %100, label %102 [
    i16 4, label %101
    i16 20515, label %101
    i16 217, label %101
    i16 216, label %101
    i16 215, label %101
    i16 214, label %101
    i16 213, label %101
    i16 212, label %101
    i16 172, label %101
  ]

101:                                              ; preds = %99, %99, %99, %99, %99, %99, %99, %99, %99
  tail call void @wm_drags_check_ops(ptr noundef %0, ptr noundef nonnull %52) #24
  br label %102

102:                                              ; preds = %99, %101, %96
  %103 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 26
  %104 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %103) #25
  %105 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %106 = icmp eq ptr %105, null
  br i1 %106, label %186, label %107

107:                                              ; preds = %102
  %108 = or i32 %104, %92
  %109 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %93, ptr noundef nonnull %56) #24
  %110 = zext i8 %109 to i32
  %111 = or i32 %91, %110
  %112 = and i32 %108, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %89, %107
  %115 = phi i32 [ %108, %107 ], [ %92, %89 ]
  %116 = phi i32 [ %111, %107 ], [ %91, %89 ]
  %117 = load ptr, ptr %90, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %89, !llvm.loop !155

119:                                              ; preds = %107, %114, %85, %82
  %120 = phi i32 [ %78, %82 ], [ %78, %85 ], [ %108, %107 ], [ %115, %114 ]
  %121 = phi i32 [ %77, %82 ], [ %77, %85 ], [ %111, %107 ], [ %116, %114 ]
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #24
  %122 = and i32 %120, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef nonnull %52) #25
  %125 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 21
  %126 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %125) #25
  %127 = or i32 %126, %120
  br label %128

128:                                              ; preds = %124, %119
  %129 = phi i32 [ %127, %124 ], [ %120, %119 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #24
  br label %130

130:                                              ; preds = %75, %128
  %131 = phi i32 [ %129, %128 ], [ %78, %75 ]
  %132 = phi i32 [ %121, %128 ], [ %77, %75 ]
  %133 = load ptr, ptr %76, align 8, !tbaa !5
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %75, !llvm.loop !156

135:                                              ; preds = %130, %70
  %136 = phi i32 [ %59, %70 ], [ %131, %130 ]
  %137 = phi i32 [ 0, %70 ], [ %132, %130 ]
  %138 = and i32 %136, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = tail call fastcc ptr @area_event_inside(ptr noundef %0, ptr noundef nonnull %56) #25
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %141) #24
  %142 = tail call fastcc ptr @region_event_inside(ptr noundef %0, ptr noundef nonnull %56) #25
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %142) #24
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef nonnull %52) #25
  %143 = tail call fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %49) #25
  %144 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %145 = icmp eq ptr %144, null
  br i1 %145, label %186, label %146

146:                                              ; preds = %140, %135
  %147 = icmp eq i32 %137, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %146
  %149 = load ptr, ptr %14, align 8, !tbaa !63
  %150 = icmp eq ptr %149, null
  br i1 %150, label %161, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.bScreen, ptr %149, i64 0, i32 19
  %153 = load i16, ptr %152, align 4, !tbaa !157
  %154 = getelementptr inbounds %struct.bScreen, ptr %149, i64 0, i32 18
  %155 = load i16, ptr %154, align 2, !tbaa !158
  %156 = icmp eq i16 %153, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load ptr, ptr %50, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.wmEvent, ptr %158, i64 0, i32 12
  %160 = load <2 x i32>, ptr %56, align 4, !tbaa !12
  store <2 x i32> %160, ptr %159, align 8, !tbaa !12
  br label %161

161:                                              ; preds = %62, %157, %151, %148, %146, %51
  tail call void @BLI_remlink(ptr noundef nonnull %43, ptr noundef nonnull %52) #24
  tail call void @wm_event_free(ptr noundef nonnull %52) #25
  %162 = load ptr, ptr %43, align 8, !tbaa !150
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %51

164:                                              ; preds = %161, %42
  %165 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 17
  %166 = load i16, ptr %165, align 2, !tbaa !153
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 21
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %170, i64 120, i1 false), !tbaa.struct !9
  store i16 4, ptr %9, align 8, !tbaa !152
  %173 = load <2 x i32>, ptr %10, align 4, !tbaa !12
  store <2 x i32> %173, ptr %11, align 8, !tbaa !12
  call void @wm_event_add(ptr noundef nonnull %13, ptr noundef nonnull %2) #25
  store i16 0, ptr %165, align 2, !tbaa !153
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #26
  br label %174

174:                                              ; preds = %164, %168, %172
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #24
  %175 = load ptr, ptr %13, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %12, !llvm.loop !159

177:                                              ; preds = %174, %1
  tail call void @WM_keyconfig_update(ptr noundef %3) #24
  %178 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = tail call i32 @glGetError() #24
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = tail call ptr @gluErrorString(i32 noundef %181) #24
  %185 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %184) #25
  br label %186

186:                                              ; preds = %55, %140, %102, %177, %183, %180
  ret void
}

; Function Attrs: optsize
declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sound_scene_playing(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_screen_animation_play(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @wm_event_pie_filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 19
  %4 = load i16, ptr %3, align 4, !tbaa !160
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !152
  %9 = icmp eq i16 %4, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !161
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i16 0, ptr %3, align 4, !tbaa !160
  br label %15

15:                                               ; preds = %2, %6, %10, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %10 ], [ 0, %6 ], [ 0, %2 ]
  ret i8 %16
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @area_event_inside(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 7
  %13 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %12, ptr noundef %1) #24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %7, label %15, !llvm.loop !162

15:                                               ; preds = %7, %11, %2
  %16 = phi ptr [ null, %2 ], [ null, %7 ], [ %9, %11 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @region_event_inside(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %9, %8 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 3
  %16 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %15, ptr noundef %1) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %10, label %18, !llvm.loop !163

18:                                               ; preds = %10, %14, %2
  %19 = phi ptr [ null, %2 ], [ null, %10 ], [ %12, %14 ]
  ret ptr %19
}

; Function Attrs: optsize
declare void @wm_window_make_drawable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_region_mouse_co(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !164
  %8 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !165
  %10 = sub nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !12
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !166
  %14 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !167
  %16 = sub nsw i32 %13, %15
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  store i32 -1, ptr %18, align 4, !tbaa !12
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ -1, %17 ], [ %16, %5 ]
  %21 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  store i32 %20, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_handlers_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !152
  switch i16 %9, label %10 [
    i16 4, label %61
    i16 17, label %61
    i16 0, label %61
  ]

10:                                               ; preds = %7
  %11 = and i16 %9, -16
  %12 = icmp eq i16 %11, 272
  br i1 %12, label %61, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @wm_action_not_handled(i32 noundef %4) #25, !range !154
  %15 = icmp eq i32 %14, 0
  %16 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %17 = icmp eq ptr %16, null
  br i1 %15, label %56, label %18

18:                                               ; preds = %13
  br i1 %17, label %61, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !161
  %22 = icmp eq i16 %21, 1
  %23 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br i1 %22, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.wmEvent, ptr %24, i64 0, i32 10
  %27 = load i16, ptr %26, align 4, !tbaa !168
  %28 = load i16, ptr %8, align 8, !tbaa !152
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %32, label %61

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.wmEvent, ptr %24, i64 0, i32 22
  store i16 1, ptr %31, align 2, !tbaa !169
  br label %61

32:                                               ; preds = %25
  switch i16 %21, label %61 [
    i16 2, label %33
    i16 4, label %50
  ]

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.wmEvent, ptr %24, i64 0, i32 11
  %35 = load i16, ptr %34, align 2, !tbaa !170
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.wmEvent, ptr %24, i64 0, i32 22
  %39 = load i16, ptr %38, align 2, !tbaa !169
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  store i16 3, ptr %20, align 2, !tbaa !161
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull @__func__.wm_handlers_do) #25
  br label %47

47:                                               ; preds = %45, %41
  %48 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  %49 = or i32 %48, %4
  store i16 2, ptr %20, align 2, !tbaa !161
  br label %61

50:                                               ; preds = %32
  store i16 1, ptr %20, align 2, !tbaa !161
  %51 = tail call fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  %52 = or i32 %51, %4
  %53 = tail call fastcc i32 @wm_action_not_handled(i32 noundef %52) #25, !range !154
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  store i16 4, ptr %20, align 2, !tbaa !161
  br label %61

56:                                               ; preds = %13
  br i1 %17, label %61, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 21
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.wmEvent, ptr %59, i64 0, i32 22
  store i16 0, ptr %60, align 2, !tbaa !169
  br label %61

61:                                               ; preds = %32, %30, %33, %37, %7, %7, %7, %10, %18, %47, %50, %55, %25, %57, %56, %3
  %62 = phi i32 [ %4, %3 ], [ %4, %7 ], [ %4, %7 ], [ %4, %7 ], [ %4, %10 ], [ %49, %47 ], [ %52, %55 ], [ %52, %50 ], [ %4, %25 ], [ %4, %18 ], [ %4, %57 ], [ %4, %56 ], [ %4, %37 ], [ %4, %33 ], [ %4, %30 ], [ %4, %32 ]
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_event_drag_test(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 12
  %5 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #25, !range !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !152
  switch i16 %9, label %32 [
    i16 217, label %28
    i16 216, label %28
    i16 215, label %28
    i16 214, label %28
    i16 213, label %28
    i16 212, label %28
    i16 4, label %28
    i16 172, label %28
    i16 218, label %10
    i16 1, label %11
  ]

10:                                               ; preds = %7
  tail call void @WM_drag_free_list(ptr noundef nonnull %4) #24
  br label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !161
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  store i16 20515, ptr %8, align 8, !tbaa !152
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 26
  %21 = load i16, ptr %20, align 2, !tbaa !31
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %24(ptr noundef nonnull %17) #24
  br label %25

25:                                               ; preds = %19, %23, %15
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 25
  store i16 3, ptr %26, align 8, !tbaa !32
  store ptr %4, ptr %16, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 26
  store i16 1, ptr %27, align 2, !tbaa !31
  br label %28

28:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %25, %10
  %29 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 16
  store i16 1, ptr %31, align 2, !tbaa !171
  br label %32

32:                                               ; preds = %28, %7, %11
  %33 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.bScreen, ptr %34, i64 0, i32 16
  %36 = load i16, ptr %35, align 2, !tbaa !171
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 24
  %40 = load i32, ptr %39, align 8, !tbaa !172
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bScreen, ptr %34, i64 0, i32 12
  store i16 1, ptr %43, align 2, !tbaa !173
  br label %44

44:                                               ; preds = %38, %42, %3, %32
  ret void
}

; Function Attrs: optsize
declare void @wm_tweakevent_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_screen_set_subwinactive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_paintcursor_test(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !174
  tail call fastcc void @wm_paintcursor_tag(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %8) #25
  %12 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %14 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %12, ptr noundef nonnull %13) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %7, %10
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %19 = tail call fastcc ptr @area_event_inside(ptr noundef %0, ptr noundef nonnull %18) #25
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %19) #24
  %20 = tail call fastcc ptr @region_event_inside(ptr noundef %0, ptr noundef nonnull %18) #25
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %20) #24
  %21 = load ptr, ptr %4, align 8, !tbaa !174
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  tail call fastcc void @wm_paintcursor_tag(ptr noundef %0, ptr noundef %21, ptr noundef %22) #25
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %17) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %8) #24
  br label %23

23:                                               ; preds = %10, %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_event_inside_i(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_event_always_pass(ptr noundef %0) #25, !range !154
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 4
  %7 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef %1, ptr noundef nonnull %6) #24
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !152
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 12
  %15 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef %1, ptr noundef nonnull %14) #24
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %9, %13, %5, %2
  %19 = phi i32 [ 1, %2 ], [ 1, %5 ], [ %17, %13 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @wm_drags_check_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @glGetError() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gluErrorString(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_fileselect_event(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wmEvent, align 8
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %10 = trunc i32 %2 to i16
  %11 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %6, %8 ], [ %17, %13 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #26
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %16, i64 112, i1 false), !tbaa.struct !9
  store i16 20512, ptr %9, align 8, !tbaa !152
  store i16 %10, ptr %11, align 2, !tbaa !161
  store ptr %1, ptr %12, align 8, !tbaa !30
  call void @wm_event_add(ptr noundef nonnull %14, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #26
  %17 = load ptr, ptr %14, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !176

19:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %2, %40
  %9 = phi ptr [ %10, %40 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !179
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 7
  br label %21

21:                                               ; preds = %19, %33
  %22 = phi ptr [ %17, %19 ], [ %34, %33 ]
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !180
  %25 = icmp eq i8 %24, 5
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds %struct.SpaceFile, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = load ptr, ptr %20, align 8, !tbaa !132
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %26, %21
  %34 = load ptr, ptr %22, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %21, !llvm.loop !184

36:                                               ; preds = %26
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %22) #24
  br label %37

37:                                               ; preds = %33, %14, %36
  %38 = phi i32 [ 4, %36 ], [ 5, %14 ], [ 5, %33 ]
  %39 = tail call fastcc i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef %38) #25, !range !154
  br label %40

40:                                               ; preds = %37, %8
  %41 = icmp eq ptr %10, null
  br i1 %41, label %42, label %8, !llvm.loop !185

42:                                               ; preds = %40, %2
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %44 = tail call ptr %43(i64 noundef 136, ptr noundef nonnull @.str.10) #24
  %45 = getelementptr inbounds %struct.wmEventHandler, ptr %44, i64 0, i32 2
  store i32 1, ptr %45, align 8, !tbaa !179
  %46 = getelementptr inbounds %struct.wmEventHandler, ptr %44, i64 0, i32 7
  store ptr %1, ptr %46, align 8, !tbaa !132
  %47 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %48 = getelementptr inbounds %struct.wmEventHandler, ptr %44, i64 0, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !141
  %49 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %50 = getelementptr inbounds %struct.wmEventHandler, ptr %44, i64 0, i32 9
  store ptr %49, ptr %50, align 8, !tbaa !143
  %51 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %52 = getelementptr inbounds %struct.wmEventHandler, ptr %44, i64 0, i32 16
  store ptr %51, ptr %52, align 8, !tbaa !186
  tail call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %44) #24
  %53 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !111
  %55 = getelementptr inbounds %struct.wmOperatorType, ptr %54, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !187
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %42
  %59 = tail call zeroext i8 %56(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %60

60:                                               ; preds = %58, %42
  tail call void @WM_event_fileselect_event(ptr noundef %3, ptr noundef nonnull %1, i32 noundef 2) #25
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  switch i32 %3, label %156 [
    i32 1, label %6
    i32 2, label %6
    i32 3, label %28
    i32 4, label %28
    i32 5, label %28
  ]

6:                                                ; preds = %4, %4
  %7 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %15, i32 noundef 5) #24
  br label %20

18:                                               ; preds = %14
  %19 = tail call ptr @ED_screen_full_newspace(ptr noundef %0, ptr noundef %15, i32 noundef 5) #24
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi ptr [ %15, %17 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.SpaceFile, ptr %23, i64 0, i32 9
  store ptr %25, ptr %26, align 8, !tbaa !182
  %27 = tail call signext i16 @ED_fileselect_set_params(ptr noundef %23) #24
  br label %156

28:                                               ; preds = %4, %4, %4
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef %2) #24
  %30 = icmp eq i32 %3, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call fastcc void @wm_handler_op_context(ptr noundef %0, ptr noundef %2) #25
  br label %124

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !186
  %35 = icmp eq ptr %29, %34
  %36 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  br i1 %35, label %38, label %37

37:                                               ; preds = %32
  tail call void @ED_screen_full_prevspace(ptr noundef %0, ptr noundef %36) #24
  br label %39

38:                                               ; preds = %32
  tail call void @ED_area_prevspace(ptr noundef %0, ptr noundef %36) #24
  br label %39

39:                                               ; preds = %37, %38
  tail call fastcc void @wm_handler_op_context(ptr noundef %0, ptr noundef nonnull %2) #25
  %40 = icmp eq i32 %3, 3
  br i1 %40, label %41, label %124

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !132
  %44 = getelementptr inbounds %struct.wmOperator, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !111
  %46 = getelementptr inbounds %struct.wmOperatorType, ptr %45, i64 0, i32 19
  %47 = load i16, ptr %46, align 8, !tbaa !114
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %52 = load i16, ptr %51, align 2, !tbaa !115
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 2, !tbaa !115
  br label %54

54:                                               ; preds = %50, %41
  %55 = getelementptr inbounds %struct.wmOperatorType, ptr %45, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !113
  %57 = tail call i32 %56(ptr noundef %0, ptr noundef nonnull %43) #24
  %58 = load ptr, ptr %42, align 8, !tbaa !132
  %59 = getelementptr inbounds %struct.wmOperator, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = getelementptr inbounds %struct.wmOperatorType, ptr %60, i64 0, i32 19
  %62 = load i16, ptr %61, align 8, !tbaa !114
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %54
  %66 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %67 = icmp eq ptr %66, %5
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %70 = load i16, ptr %69, align 2, !tbaa !115
  %71 = add i16 %70, -1
  store i16 %71, ptr %69, align 2, !tbaa !115
  br label %72

72:                                               ; preds = %68, %65, %54
  %73 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %74 = icmp eq ptr %73, %5
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !115
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load ptr, ptr %42, align 8, !tbaa !132
  %81 = getelementptr inbounds %struct.wmOperator, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !111
  %83 = getelementptr inbounds %struct.wmOperatorType, ptr %82, i64 0, i32 19
  %84 = load i16, ptr %83, align 8, !tbaa !114
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef nonnull %80) #24
  br label %88

88:                                               ; preds = %79, %87, %75, %72
  %89 = load ptr, ptr %42, align 8, !tbaa !132
  %90 = getelementptr inbounds %struct.wmOperator, ptr %89, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !189
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %88
  %95 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %96 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %97 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %98 = icmp eq ptr %95, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %101 = getelementptr inbounds %struct.wmWindowManager, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !190
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %102) #24
  br label %103

103:                                              ; preds = %99, %94
  %104 = load ptr, ptr %42, align 8, !tbaa !132
  %105 = getelementptr inbounds %struct.wmOperator, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !189
  tail call void @BKE_report_print_level_set(ptr noundef %106, i32 noundef 16) #24
  %107 = load ptr, ptr %42, align 8, !tbaa !132
  %108 = getelementptr inbounds %struct.wmOperator, ptr %107, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !189
  tail call void @uiPupMenuReports(ptr noundef %0, ptr noundef %109) #24
  %110 = tail call ptr @CTX_wm_reports(ptr noundef %0) #24
  %111 = load ptr, ptr %42, align 8, !tbaa !132
  %112 = getelementptr inbounds %struct.wmOperator, ptr %111, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !189
  tail call void @BLI_movelisttolist(ptr noundef %110, ptr noundef %113) #24
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %95) #24
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %96) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %97) #24
  %114 = load ptr, ptr %42, align 8, !tbaa !132
  br label %115

115:                                              ; preds = %103, %88
  %116 = phi ptr [ %114, %103 ], [ %89, %88 ]
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef %116, i32 noundef %57, i8 noundef zeroext 1) #25
  %117 = and i32 %57, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %42, align 8, !tbaa !132
  %121 = tail call zeroext i8 @WM_operator_last_properties_store(ptr noundef %120) #25, !range !36
  br label %122

122:                                              ; preds = %119, %115
  %123 = load ptr, ptr %42, align 8, !tbaa !132
  tail call void @WM_operator_free(ptr noundef %123) #24
  br label %155

124:                                              ; preds = %31, %39
  %125 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !132
  %127 = getelementptr inbounds %struct.wmOperator, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !111
  %129 = getelementptr inbounds %struct.wmOperatorType, ptr %128, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !134
  %131 = icmp eq ptr %130, null
  br i1 %131, label %153, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.wmOperatorType, ptr %128, i64 0, i32 19
  %134 = load i16, ptr %133, align 8, !tbaa !114
  %135 = and i16 %134, 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %139 = load i16, ptr %138, align 2, !tbaa !115
  %140 = add i16 %139, 1
  store i16 %140, ptr %138, align 2, !tbaa !115
  br label %141

141:                                              ; preds = %137, %132
  tail call void %130(ptr noundef %0, ptr noundef nonnull %126) #24
  %142 = load ptr, ptr %125, align 8, !tbaa !132
  %143 = getelementptr inbounds %struct.wmOperator, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !111
  %145 = getelementptr inbounds %struct.wmOperatorType, ptr %144, i64 0, i32 19
  %146 = load i16, ptr %145, align 8, !tbaa !114
  %147 = and i16 %146, 2
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 6
  %151 = load i16, ptr %150, align 2, !tbaa !115
  %152 = add i16 %151, -1
  store i16 %152, ptr %150, align 2, !tbaa !115
  br label %153

153:                                              ; preds = %141, %149, %124
  %154 = phi ptr [ %142, %141 ], [ %142, %149 ], [ %126, %124 ]
  tail call void @WM_operator_free(ptr noundef nonnull %154) #24
  br label %155

155:                                              ; preds = %153, %122
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %2) #25
  br label %156

156:                                              ; preds = %4, %155, %20
  %157 = phi i32 [ 0, %4 ], [ 1, %155 ], [ 1, %20 ]
  ret i32 %157
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 136, ptr noundef nonnull @.str.11) #24
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %7, i64 0, i32 10
  store ptr %1, ptr %10, align 8, !tbaa !116
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %7, %9 ], [ %1, %2 ]
  %13 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 7
  store ptr %12, ptr %13, align 8
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %15 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 8
  store ptr %14, ptr %15, align 8, !tbaa !141
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %4, i64 0, i32 9
  store ptr %16, ptr %17, align 8, !tbaa !143
  %18 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 29
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef nonnull %4) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_keymap_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull @__func__.WM_event_add_keymap_handler) #25
  br label %18

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %8, %10 ], [ %0, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !191
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %6, !llvm.loop !192

14:                                               ; preds = %6
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %16 = tail call ptr %15(i64 noundef 136, ptr noundef nonnull @.str.13) #24
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %16) #24
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !191
  br label %18

18:                                               ; preds = %10, %14, %4
  %19 = phi ptr [ %16, %14 ], [ null, %4 ], [ %8, %10 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_event_add_keymap_handler_priority(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @WM_event_remove_keymap_handler(ptr noundef %0, ptr noundef %1) #25
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %5 = tail call ptr %4(i64 noundef 136, ptr noundef nonnull @.str.13) #24
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %5) #24
  %6 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 4
  store ptr %1, ptr %6, align 8, !tbaa !191
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_remove_keymap_handler(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %3, !llvm.loop !193

11:                                               ; preds = %7
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef nonnull %5) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %5) #25
  br label %12

12:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_keymap_handler_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @WM_event_add_keymap_handler(ptr noundef %0, ptr noundef %1) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 5
  store ptr %2, ptr %8, align 8, !tbaa !194
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 6
  store ptr %3, ptr %9, align 8, !tbaa !195
  br label %10

10:                                               ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %8 = tail call ptr %7(i64 noundef 136, ptr noundef nonnull @.str.14) #24
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 10
  store ptr %2, ptr %9, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 11
  store ptr %3, ptr %10, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 12
  store ptr %4, ptr %11, align 8, !tbaa !139
  %12 = icmp eq ptr %0, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #24
  %15 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 13
  store ptr %14, ptr %15, align 8, !tbaa !136
  %16 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #24
  %17 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 14
  store ptr %16, ptr %17, align 8, !tbaa !137
  %18 = tail call ptr @CTX_wm_menu(ptr noundef nonnull %0) #24
  br label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ null, %19 ], [ %18, %13 ]
  %23 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 15
  store ptr %22, ptr %23, align 8
  %24 = icmp eq i8 %5, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !197
  %28 = or i32 %27, 4
  store i32 %28, ptr %26, align 4, !tbaa !197
  br label %29

29:                                               ; preds = %25, %21
  tail call void @BLI_addhead(ptr noundef %1, ptr noundef nonnull %8) #24
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_remove_ui_handler(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5, %28
  %9 = phi ptr [ %29, %28 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = icmp eq i8 %4, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.wmEventHandler, ptr %9, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !197
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4, !tbaa !197
  br label %31

27:                                               ; preds = %21
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %9) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %9) #25
  br label %31

28:                                               ; preds = %8, %13, %17
  %29 = load ptr, ptr %9, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8, !llvm.loop !198

31:                                               ; preds = %28, %5, %23, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_free_ui_handler_all(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4, %20
  %8 = phi ptr [ %9, %20 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !178
  %10 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !139
  tail call void %3(ptr noundef %0, ptr noundef %19) #24
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %8) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %8) #25
  br label %20

20:                                               ; preds = %7, %13, %17
  %21 = icmp eq ptr %9, null
  br i1 %21, label %22, label %7, !llvm.loop !199

22:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_dropbox_handler(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %5, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %3, !llvm.loop !201

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %13 = tail call ptr %12(i64 noundef 136, ptr noundef nonnull @.str.15) #24
  %14 = getelementptr inbounds %struct.wmEventHandler, ptr %13, i64 0, i32 17
  store ptr %1, ptr %14, align 8, !tbaa !200
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %13) #24
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi ptr [ %13, %11 ], [ %5, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_remove_area_handler(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %16
  %6 = phi ptr [ %7, %16 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !179
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wmEventHandler, ptr %6, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %6) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %6) #25
  br label %16

16:                                               ; preds = %5, %15, %11
  %17 = icmp eq ptr %7, null
  br i1 %17, label %18, label %5, !llvm.loop !202

18:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_add_mousemove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 17
  store i16 1, ptr %3, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @WM_modal_tweak_exit(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !161
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_event_add_ghostevent(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.wmEvent, align 8
  %7 = alloca %struct.wmEvent, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #26
  %11 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %12, i64 120, i1 false), !tbaa.struct !9
  switch i32 %2, label %330 [
    i32 1, label %13
    i32 5, label %25
    i32 2, label %52
    i32 3, label %52
    i32 8, label %111
    i32 9, label %111
    i32 4, label %291
    i32 23, label %297
    i32 6, label %303
    i32 7, label %315
    i32 13, label %328
  ]

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %14, ptr noundef %4) #25
  %15 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 4, ptr %15, align 8, !tbaa !152
  call fastcc void @wm_event_add_mousemove(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  %16 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %16, ptr noundef nonnull %14) #25
  %17 = call fastcc ptr @wm_event_cursor_other_windows(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %330, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #26
  %20 = getelementptr inbounds %struct.wmWindow, ptr %17, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %21, i64 120, i1 false), !tbaa.struct !9
  %22 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %22, ptr noundef nonnull %14) #25
  %23 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 2
  store i16 4, ptr %23, align 8, !tbaa !152
  call fastcc void @wm_event_add_mousemove(ptr noundef nonnull %17, ptr noundef nonnull %7) #25
  %24 = getelementptr inbounds %struct.wmEvent, ptr %21, i64 0, i32 4
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %24, ptr noundef nonnull %22) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #26
  br label %330

25:                                               ; preds = %5
  %26 = load i32, ptr %4, align 4, !tbaa !203
  %27 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  switch i32 %26, label %33 [
    i32 4, label %28
    i32 2, label %32
  ]

28:                                               ; preds = %25
  store i16 15, ptr %27, align 8, !tbaa !152
  %29 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 3
  %30 = load <2 x i32>, ptr %29, align 4, !tbaa !12
  %31 = sub nsw <2 x i32> zeroinitializer, %30
  store <2 x i32> %31, ptr %29, align 4, !tbaa !12
  br label %34

32:                                               ; preds = %25
  store i16 16, ptr %27, align 8, !tbaa !152
  br label %34

33:                                               ; preds = %25
  store i16 14, ptr %27, align 8, !tbaa !152
  br label %34

34:                                               ; preds = %33, %32, %28
  %35 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !205
  %37 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  store i32 %36, ptr %37, align 4, !tbaa !164
  %38 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  store i32 %36, ptr %38, align 4, !tbaa !164
  %39 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !206
  %41 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 5
  store i32 %40, ptr %41, align 8, !tbaa !166
  %42 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %40, ptr %42, align 8, !tbaa !166
  %43 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %43, align 2, !tbaa !161
  %44 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !207
  %46 = sub nsw i32 %36, %45
  %47 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 12
  store i32 %46, ptr %47, align 8, !tbaa !208
  %48 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %4, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !209
  %50 = add nsw i32 %49, %40
  %51 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 13
  store i32 %50, ptr %51, align 4, !tbaa !210
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

52:                                               ; preds = %5, %5
  %53 = icmp eq i32 %2, 2
  %54 = select i1 %53, i16 1, i16 2
  %55 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %54, ptr %55, align 2, !tbaa !161
  %56 = load i32, ptr %4, align 4, !tbaa !211
  %57 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %58 = icmp ult i32 %56, 7
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = zext nneg i32 %56 to i64
  %61 = getelementptr inbounds [7 x i16], ptr @switch.table.wm_event_add_ghostevent, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2
  br label %63

63:                                               ; preds = %52, %59
  %64 = phi i16 [ %62, %59 ], [ 2, %52 ]
  store i16 %64, ptr %57, align 8, !tbaa !152
  call fastcc void @wm_eventemulation(ptr noundef nonnull %6) #25
  %65 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 2
  %66 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 10
  %67 = load <2 x i16>, ptr %65, align 8, !tbaa !10
  store <2 x i16> %67, ptr %66, align 4, !tbaa !10
  %68 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  %69 = load <2 x i16>, ptr %68, align 8, !tbaa !10
  store <2 x i16> %69, ptr %65, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 12
  %71 = load i16, ptr %70, align 4, !tbaa !213
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #26
  call void @wm_get_cursor_position(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %74 = load i32, ptr %8, align 4, !tbaa !12
  %75 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 4
  store i32 %74, ptr %75, align 4, !tbaa !164
  %76 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  store i32 %74, ptr %76, align 4, !tbaa !164
  %77 = load i32, ptr %9, align 4, !tbaa !12
  %78 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 5
  store i32 %77, ptr %78, align 8, !tbaa !166
  %79 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  store i32 %77, ptr %79, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  br label %80

80:                                               ; preds = %73, %63
  %81 = call fastcc zeroext i8 @wm_event_is_double_click(ptr noundef nonnull %6, ptr noundef nonnull %12) #25, !range !36
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %85 = and i32 %84, 24
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @__func__.wm_event_add_ghostevent) #25
  br label %89

89:                                               ; preds = %83, %87
  store i16 4, ptr %55, align 2, !tbaa !161
  br label %99

90:                                               ; preds = %80
  %91 = load i16, ptr %55, align 2, !tbaa !161
  %92 = icmp eq i16 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = call double @PIL_check_seconds_timer() #24
  %95 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 14
  store double %94, ptr %95, align 8, !tbaa !214
  %96 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %97 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 15
  %98 = load <2 x i32>, ptr %96, align 4, !tbaa !12
  store <2 x i32> %98, ptr %97, align 8, !tbaa !12
  br label %99

99:                                               ; preds = %89, %93, %90
  %100 = call fastcc ptr @wm_event_cursor_other_windows(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %10) #26
  %103 = getelementptr inbounds %struct.wmWindow, ptr %100, i64 0, i32 21
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef nonnull align 8 dereferenceable(120) %104, i64 120, i1 false), !tbaa.struct !9
  %105 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %106 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 4
  %107 = load <2 x i32>, ptr %105, align 4, !tbaa !12
  store <2 x i32> %107, ptr %106, align 4, !tbaa !12
  %108 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 2
  %109 = load <2 x i16>, ptr %68, align 8, !tbaa !10
  store <2 x i16> %109, ptr %108, align 8, !tbaa !10
  call void @wm_event_add(ptr noundef nonnull %100, ptr noundef nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %10) #26
  br label %330

110:                                              ; preds = %99
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

111:                                              ; preds = %5, %5
  %112 = load i32, ptr %4, align 4, !tbaa !215
  %113 = tail call fastcc i32 @convert_key(i32 noundef %112) #25, !range !217
  %114 = trunc i32 %113 to i16
  %115 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 %114, ptr %115, align 8, !tbaa !152
  %116 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %4, i64 0, i32 1
  %117 = load i8, ptr %116, align 4, !tbaa !218
  %118 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 8
  store i8 %117, ptr %118, align 2, !tbaa !219
  %119 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 7
  %120 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %119, ptr noundef nonnull align 1 dereferenceable(6) %120, i64 6, i1 false)
  %121 = icmp eq i32 %2, 8
  %122 = select i1 %121, i16 1, i16 2
  %123 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %122, ptr %123, align 2, !tbaa !161
  call fastcc void @wm_eventemulation(ptr noundef nonnull %6) #25
  %124 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 3
  %125 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 2
  %126 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 10
  %127 = load <2 x i16>, ptr %125, align 8, !tbaa !10
  store <2 x i16> %127, ptr %126, align 4, !tbaa !10
  %128 = load <2 x i16>, ptr %115, align 8, !tbaa !10
  store <2 x i16> %128, ptr %125, align 8, !tbaa !10
  %129 = icmp eq i32 %2, 9
  br i1 %129, label %130, label %135

130:                                              ; preds = %111
  store i8 0, ptr %118, align 2, !tbaa !219
  %131 = load i8, ptr %119, align 4, !tbaa !14
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %130
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.wm_event_add_ghostevent) #25
  br label %153

135:                                              ; preds = %111
  %136 = load i8, ptr %118, align 2
  %137 = add i8 %136, -1
  %138 = icmp ult i8 %137, 31
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i8 0, ptr %118, align 2, !tbaa !219
  br label %140

140:                                              ; preds = %139, %135
  %141 = load i8, ptr %119, align 4
  %142 = add i8 %141, -1
  %143 = icmp ult i8 %142, 31
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = icmp eq i8 %141, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %144
  %147 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %119) #24
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8, ptr %119, align 4, !tbaa !14
  %151 = zext i8 %150 to i32
  %152 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.wm_event_add_ghostevent, i32 noundef %151) #25
  br label %153

153:                                              ; preds = %140, %130, %133, %149
  store i8 0, ptr %119, align 4, !tbaa !14
  br label %154

154:                                              ; preds = %153, %146, %144
  %155 = load i16, ptr %115, align 8, !tbaa !152
  switch i16 %155, label %232 [
    i16 217, label %156
    i16 216, label %156
    i16 212, label %175
    i16 215, label %175
    i16 213, label %194
    i16 214, label %194
    i16 172, label %213
  ]

156:                                              ; preds = %154, %154
  %157 = load i16, ptr %123, align 2, !tbaa !161
  %158 = icmp eq i16 %157, 1
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 18
  %161 = load i16, ptr %160, align 2, !tbaa !220
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 19
  %165 = load i16, ptr %164, align 4, !tbaa !221
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 20
  %169 = load i16, ptr %168, align 2, !tbaa !222
  %170 = icmp eq i16 %169, 0
  %171 = select i1 %170, i16 1, i16 3
  br label %172

172:                                              ; preds = %159, %163, %167, %156
  %173 = phi i16 [ 0, %156 ], [ 3, %163 ], [ 3, %159 ], [ %171, %167 ]
  %174 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 17
  store i16 %173, ptr %174, align 8, !tbaa !223
  br label %247

175:                                              ; preds = %154, %154
  %176 = load i16, ptr %123, align 2, !tbaa !161
  %177 = icmp eq i16 %176, 1
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 17
  %180 = load i16, ptr %179, align 8, !tbaa !223
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 19
  %184 = load i16, ptr %183, align 4, !tbaa !221
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 20
  %188 = load i16, ptr %187, align 2, !tbaa !222
  %189 = icmp eq i16 %188, 0
  %190 = select i1 %189, i16 1, i16 3
  br label %191

191:                                              ; preds = %178, %182, %186, %175
  %192 = phi i16 [ 0, %175 ], [ 3, %182 ], [ 3, %178 ], [ %190, %186 ]
  %193 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 18
  store i16 %192, ptr %193, align 2, !tbaa !220
  br label %247

194:                                              ; preds = %154, %154
  %195 = load i16, ptr %123, align 2, !tbaa !161
  %196 = icmp eq i16 %195, 1
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 18
  %199 = load i16, ptr %198, align 2, !tbaa !220
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 17
  %203 = load i16, ptr %202, align 8, !tbaa !223
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 20
  %207 = load i16, ptr %206, align 2, !tbaa !222
  %208 = icmp eq i16 %207, 0
  %209 = select i1 %208, i16 1, i16 3
  br label %210

210:                                              ; preds = %197, %201, %205, %194
  %211 = phi i16 [ 0, %194 ], [ 3, %201 ], [ 3, %197 ], [ %209, %205 ]
  %212 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 19
  store i16 %211, ptr %212, align 4, !tbaa !221
  br label %247

213:                                              ; preds = %154
  %214 = load i16, ptr %123, align 2, !tbaa !161
  %215 = icmp eq i16 %214, 1
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 18
  %218 = load i16, ptr %217, align 2, !tbaa !220
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 19
  %222 = load i16, ptr %221, align 4, !tbaa !221
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 17
  %226 = load i16, ptr %225, align 8, !tbaa !223
  %227 = icmp eq i16 %226, 0
  %228 = select i1 %227, i16 1, i16 3
  br label %229

229:                                              ; preds = %216, %220, %224, %213
  %230 = phi i16 [ 0, %213 ], [ 3, %220 ], [ 3, %216 ], [ %228, %224 ]
  %231 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 20
  store i16 %230, ptr %231, align 2, !tbaa !222
  br label %247

232:                                              ; preds = %154
  %233 = load i16, ptr %123, align 2, !tbaa !161
  %234 = icmp eq i16 %233, 1
  %235 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  %236 = load i16, ptr %235, align 8
  %237 = icmp eq i16 %236, 0
  %238 = select i1 %234, i1 %237, i1 false
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 21
  store i16 %155, ptr %240, align 8, !tbaa !224
  br label %247

241:                                              ; preds = %232
  %242 = icmp eq i16 %233, 2
  %243 = icmp eq i16 %236, %155
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 21
  store i16 0, ptr %246, align 8, !tbaa !224
  store i16 0, ptr %235, align 8, !tbaa !224
  br label %247

247:                                              ; preds = %239, %245, %241, %229, %210, %191, %172
  %248 = call fastcc zeroext i8 @wm_event_is_double_click(ptr noundef nonnull %6, ptr noundef nonnull %12) #25, !range !36
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %252 = and i32 %251, 24
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @__func__.wm_event_add_ghostevent) #25
  br label %256

256:                                              ; preds = %254, %250
  store i16 4, ptr %123, align 2, !tbaa !161
  store i16 4, ptr %124, align 2, !tbaa !161
  br label %257

257:                                              ; preds = %256, %247
  %258 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  %259 = load i16, ptr %258, align 8, !tbaa !224
  %260 = load i16, ptr %115, align 8, !tbaa !152
  %261 = icmp eq i16 %259, %260
  %262 = icmp eq i16 %259, 171
  %263 = or i1 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  store i16 0, ptr %258, align 8, !tbaa !224
  br label %265

265:                                              ; preds = %257, %264
  %266 = icmp eq i16 %260, 218
  %267 = load i16, ptr %123, align 2
  %268 = icmp eq i16 %267, 1
  %269 = select i1 %266, i1 %268, i1 false
  %270 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 17
  %271 = load i16, ptr %270, align 8
  %272 = icmp eq i16 %271, 0
  %273 = select i1 %269, i1 %272, i1 false
  %274 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 18
  %275 = load i16, ptr %274, align 2
  %276 = icmp eq i16 %275, 0
  %277 = select i1 %273, i1 %276, i1 false
  %278 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 19
  %279 = load i16, ptr %278, align 4
  %280 = icmp eq i16 %279, 0
  %281 = select i1 %277, i1 %280, i1 false
  br i1 %281, label %282, label %283

282:                                              ; preds = %265
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !225
  br label %284

283:                                              ; preds = %265
  br i1 %268, label %284, label %290

284:                                              ; preds = %282, %283
  %285 = call double @PIL_check_seconds_timer() #24
  %286 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 14
  store double %285, ptr %286, align 8, !tbaa !214
  %287 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %288 = getelementptr inbounds %struct.wmEvent, ptr %12, i64 0, i32 15
  %289 = load <2 x i32>, ptr %287, align 4, !tbaa !12
  store <2 x i32> %289, ptr %288, align 8, !tbaa !12
  br label %290

290:                                              ; preds = %284, %283
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

291:                                              ; preds = %5
  %292 = load i32, ptr %4, align 4, !tbaa !211
  %293 = icmp sgt i32 %292, 0
  %294 = select i1 %293, i16 10, i16 11
  %295 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 %294, ptr %295, align 8
  %296 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 1, ptr %296, align 2, !tbaa !161
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

297:                                              ; preds = %5
  %298 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 272, ptr %298, align 8, !tbaa !152
  %299 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  store i16 2, ptr %299, align 8, !tbaa !32
  %300 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  store ptr %4, ptr %300, align 8, !tbaa !30
  %301 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %301, align 2, !tbaa !161
  %302 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 21
  store i16 0, ptr %302, align 8, !tbaa !224
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

303:                                              ; preds = %5
  %304 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 400, ptr %304, align 8, !tbaa !152
  %305 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 0, ptr %305, align 2, !tbaa !161
  call fastcc void @attach_ndof_data(ptr noundef nonnull %6, ptr noundef %4) #25
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  %306 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %307 = and i32 %306, 24
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 4
  %311 = load i32, ptr %310, align 4, !tbaa !164
  %312 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 5
  %313 = load i32, ptr %312, align 8, !tbaa !166
  %314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @__func__.wm_event_add_ghostevent, i32 noundef %311, i32 noundef %313) #25
  br label %330

315:                                              ; preds = %5
  %316 = getelementptr inbounds %struct.GHOST_TEventNDOFButtonData, ptr %4, i64 0, i32 1
  %317 = load i16, ptr %316, align 4, !tbaa !226
  %318 = add i16 %317, 400
  %319 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 %318, ptr %319, align 8, !tbaa !152
  %320 = load i32, ptr %4, align 4, !tbaa !228
  switch i32 %320, label %325 [
    i32 0, label %322
    i32 1, label %321
  ]

321:                                              ; preds = %315
  br label %322

322:                                              ; preds = %315, %321
  %323 = phi i16 [ 2, %321 ], [ 1, %315 ]
  %324 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 3
  store i16 %323, ptr %324, align 2, !tbaa !161
  br label %325

325:                                              ; preds = %322, %315
  %326 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 25
  store i16 0, ptr %326, align 8, !tbaa !32
  %327 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 28
  store ptr null, ptr %327, align 8, !tbaa !30
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

328:                                              ; preds = %5
  %329 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 2
  store i16 260, ptr %329, align 8, !tbaa !152
  call void @wm_event_add(ptr noundef nonnull %1, ptr noundef nonnull %6) #25
  br label %330

330:                                              ; preds = %102, %110, %13, %19, %303, %309, %5, %328, %325, %297, %291, %290, %34
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load i32, ptr %1, align 4, !tbaa !12
  store i32 %3, ptr %0, align 4, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_event_add_mousemove(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 27, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !152
  %9 = icmp eq i16 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i16 17, ptr %7, align 8, !tbaa !152
  br label %11

11:                                               ; preds = %10, %6
  tail call void @wm_event_add(ptr noundef nonnull %0, ptr noundef %1) #25
  br label %15

12:                                               ; preds = %2
  tail call void @wm_event_add(ptr noundef nonnull %0, ptr noundef %1) #25
  %13 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %11, %12
  %16 = phi ptr [ %14, %12 ], [ %4, %11 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !229
  %18 = getelementptr inbounds %struct.wmEvent, ptr %17, i64 0, i32 12
  %19 = getelementptr inbounds %struct.wmEvent, ptr %16, i64 0, i32 4
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_event_cursor_other_windows(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %5 = load <2 x i32>, ptr %4, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %91, label %11

11:                                               ; preds = %3
  %12 = icmp slt <2 x i32> %5, zeroinitializer
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @WM_window_pixels_x(ptr noundef %1) #24
  %18 = extractelement <2 x i32> %5, i64 0
  %19 = icmp sgt i32 %18, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #24
  %22 = add nsw i32 %21, 30
  %23 = extractelement <2 x i32> %5, i64 1
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %25, label %91

25:                                               ; preds = %20, %16, %11
  %26 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 29
  br label %27

27:                                               ; preds = %35, %25
  %28 = phi ptr [ %26, %25 ], [ %29, %35 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmEventHandler, ptr %29, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !132
  %38 = icmp eq ptr %37, null
  br i1 %38, label %27, label %91, !llvm.loop !231

39:                                               ; preds = %27
  %40 = load <4 x float>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %41 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %42 = load <2 x i16>, ptr %41, align 8, !tbaa !10
  %43 = sitofp <2 x i16> %42 to <2 x float>
  %44 = shufflevector <4 x float> %40, <4 x float> poison, <2 x i32> zeroinitializer
  %45 = fmul <2 x float> %44, %43
  %46 = fptosi <2 x float> %45 to <2 x i32>
  %47 = add nsw <2 x i32> %5, %46
  %48 = load ptr, ptr %6, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %91, label %50

50:                                               ; preds = %39
  %51 = extractelement <2 x i32> %47, i64 0
  %52 = extractelement <2 x i32> %47, i64 1
  br label %53

53:                                               ; preds = %50, %88
  %54 = phi ptr [ %89, %88 ], [ %48, %50 ]
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %88, label %56

56:                                               ; preds = %53
  %57 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !232
  %58 = getelementptr inbounds %struct.wmWindow, ptr %54, i64 0, i32 6
  %59 = load i16, ptr %58, align 8, !tbaa !233
  %60 = sitofp i16 %59 to float
  %61 = fmul float %57, %60
  %62 = fptosi float %61 to i32
  %63 = getelementptr inbounds %struct.wmWindow, ptr %54, i64 0, i32 7
  %64 = load i16, ptr %63, align 2, !tbaa !234
  %65 = sitofp i16 %64 to float
  %66 = fmul float %57, %65
  %67 = fptosi float %66 to i32
  %68 = sub nsw i32 %51, %62
  %69 = icmp sgt i32 %68, -1
  %70 = icmp sgt i16 %64, -1
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %88

72:                                               ; preds = %56
  %73 = tail call i32 @WM_window_pixels_x(ptr noundef nonnull %54) #24
  %74 = icmp sgt i32 %68, %73
  br i1 %74, label %88, label %75

75:                                               ; preds = %72
  %76 = sub nsw i32 %52, %67
  %77 = tail call i32 @WM_window_pixels_y(ptr noundef nonnull %54) #24
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.wmWindow, ptr %54, i64 0, i32 6
  %81 = load <4 x float>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %82 = load <2 x i16>, ptr %80, align 8, !tbaa !10
  %83 = sitofp <2 x i16> %82 to <2 x float>
  %84 = shufflevector <4 x float> %81, <4 x float> poison, <2 x i32> zeroinitializer
  %85 = fmul <2 x float> %84, %83
  %86 = fptosi <2 x float> %85 to <2 x i32>
  %87 = sub nsw <2 x i32> %47, %86
  store <2 x i32> %87, ptr %4, align 4, !tbaa !12
  br label %91

88:                                               ; preds = %56, %72, %75, %53
  %89 = load ptr, ptr %54, align 8, !tbaa !5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %53, !llvm.loop !235

91:                                               ; preds = %31, %35, %88, %39, %79, %20, %3
  %92 = phi ptr [ null, %3 ], [ null, %20 ], [ %54, %79 ], [ null, %39 ], [ null, %88 ], [ null, %35 ], [ null, %31 ]
  ret ptr %92
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wm_eventemulation(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !145
  %3 = and i32 %2, 4096
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !152
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !161
  switch i16 %11, label %26 [
    i16 1, label %12
    i16 2, label %17
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  %14 = load i16, ptr %13, align 4, !tbaa !221
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  store i16 2, ptr %6, align 8, !tbaa !152
  br label %21

17:                                               ; preds = %9
  %18 = load i1, ptr @wm_eventemulation.mmb_emulated, align 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  store i16 2, ptr %6, align 8, !tbaa !152
  %20 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ %13, %16 ]
  %23 = phi i1 [ false, %19 ], [ true, %16 ]
  store i16 0, ptr %22, align 4, !tbaa !221
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  store i1 %25, ptr @wm_eventemulation.mmb_emulated, align 4
  br label %26

26:                                               ; preds = %24, %9, %12, %5, %1
  %27 = and i32 %2, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !152
  switch i16 %31, label %46 [
    i16 48, label %44
    i16 49, label %32
    i16 50, label %33
    i16 51, label %34
    i16 52, label %35
    i16 53, label %36
    i16 54, label %37
    i16 55, label %38
    i16 56, label %39
    i16 57, label %40
    i16 230, label %41
    i16 234, label %42
    i16 233, label %43
  ]

32:                                               ; preds = %29
  br label %44

33:                                               ; preds = %29
  br label %44

34:                                               ; preds = %29
  br label %44

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %29
  br label %44

38:                                               ; preds = %29
  br label %44

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %44

41:                                               ; preds = %29
  br label %44

42:                                               ; preds = %29
  br label %44

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %29, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32
  %45 = phi i16 [ 151, %32 ], [ 152, %33 ], [ 153, %34 ], [ 154, %35 ], [ 155, %36 ], [ 156, %37 ], [ 157, %38 ], [ 158, %39 ], [ 159, %40 ], [ 162, %41 ], [ 164, %42 ], [ 161, %43 ], [ 150, %29 ]
  store i16 %45, ptr %30, align 8, !tbaa !152
  br label %46

46:                                               ; preds = %44, %29, %26
  ret void
}

; Function Attrs: optsize
declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @wm_event_is_double_click(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 4, !tbaa !168
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 11
  %10 = load i16, ptr %9, align 2, !tbaa !170
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !161
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = add i16 %4, -20
  %18 = icmp ult i16 %17, -19
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !164
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !236
  %24 = sub nsw i32 %21, %23
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !166
  %30 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 16
  %31 = load i32, ptr %30, align 4, !tbaa !237
  %32 = sub nsw i32 %29, %31
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 true)
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %44

35:                                               ; preds = %27, %16
  %36 = tail call double @PIL_check_seconds_timer() #24
  %37 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 14
  %38 = load double, ptr %37, align 8, !tbaa !214
  %39 = fsub double %36, %38
  %40 = fmul double %39, 1.000000e+03
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !238
  %42 = sitofp i16 %41 to double
  %43 = fcmp olt double %40, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %19, %27, %35, %12, %8, %2
  br label %45

45:                                               ; preds = %35, %44
  %46 = phi i8 [ 0, %44 ], [ 1, %35 ]
  ret i8 %46
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @convert_key(i32 noundef %0) unnamed_addr #15 {
  %2 = add i32 %0, -65
  %3 = icmp ult i32 %2, 26
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = or disjoint i32 %0, 32
  br label %71

6:                                                ; preds = %1
  %7 = add i32 %0, -48
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %71, label %9

9:                                                ; preds = %6
  %10 = add i32 %0, -279
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nsw i32 %0, -129
  br label %71

14:                                               ; preds = %9
  %15 = add i32 %0, -295
  %16 = icmp ult i32 %15, 19
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %0, 5
  br label %71

19:                                               ; preds = %14
  switch i32 %0, label %70 [
    i32 0, label %71
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
    i32 13, label %23
    i32 27, label %24
    i32 32, label %25
    i32 39, label %26
    i32 44, label %27
    i32 45, label %28
    i32 46, label %29
    i32 47, label %30
    i32 59, label %31
    i32 61, label %32
    i32 91, label %33
    i32 93, label %34
    i32 92, label %35
    i32 96, label %36
    i32 256, label %37
    i32 257, label %38
    i32 258, label %39
    i32 259, label %40
    i32 262, label %41
    i32 260, label %42
    i32 261, label %43
    i32 264, label %44
    i32 265, label %45
    i32 266, label %46
    i32 267, label %47
    i32 268, label %48
    i32 269, label %49
    i32 270, label %50
    i32 271, label %51
    i32 272, label %52
    i32 273, label %53
    i32 274, label %54
    i32 275, label %55
    i32 276, label %56
    i32 277, label %57
    i32 278, label %58
    i32 289, label %59
    i32 290, label %60
    i32 291, label %61
    i32 292, label %62
    i32 293, label %63
    i32 294, label %64
    i32 263, label %65
    i32 319, label %66
    i32 320, label %67
    i32 321, label %68
    i32 322, label %69
  ]

20:                                               ; preds = %19
  br label %71

21:                                               ; preds = %19
  br label %71

22:                                               ; preds = %19
  br label %71

23:                                               ; preds = %19
  br label %71

24:                                               ; preds = %19
  br label %71

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %19
  br label %71

27:                                               ; preds = %19
  br label %71

28:                                               ; preds = %19
  br label %71

29:                                               ; preds = %19
  br label %71

30:                                               ; preds = %19
  br label %71

31:                                               ; preds = %19
  br label %71

32:                                               ; preds = %19
  br label %71

33:                                               ; preds = %19
  br label %71

34:                                               ; preds = %19
  br label %71

35:                                               ; preds = %19
  br label %71

36:                                               ; preds = %19
  br label %71

37:                                               ; preds = %19
  br label %71

38:                                               ; preds = %19
  br label %71

39:                                               ; preds = %19
  br label %71

40:                                               ; preds = %19
  br label %71

41:                                               ; preds = %19
  br label %71

42:                                               ; preds = %19
  br label %71

43:                                               ; preds = %19
  br label %71

44:                                               ; preds = %19
  br label %71

45:                                               ; preds = %19
  br label %71

46:                                               ; preds = %19
  br label %71

47:                                               ; preds = %19
  br label %71

48:                                               ; preds = %19
  br label %71

49:                                               ; preds = %19
  br label %71

50:                                               ; preds = %19
  br label %71

51:                                               ; preds = %19
  br label %71

52:                                               ; preds = %19
  br label %71

53:                                               ; preds = %19
  br label %71

54:                                               ; preds = %19
  br label %71

55:                                               ; preds = %19
  br label %71

56:                                               ; preds = %19
  br label %71

57:                                               ; preds = %19
  br label %71

58:                                               ; preds = %19
  br label %71

59:                                               ; preds = %19
  br label %71

60:                                               ; preds = %19
  br label %71

61:                                               ; preds = %19
  br label %71

62:                                               ; preds = %19
  br label %71

63:                                               ; preds = %19
  br label %71

64:                                               ; preds = %19
  br label %71

65:                                               ; preds = %19
  br label %71

66:                                               ; preds = %19
  br label %71

67:                                               ; preds = %19
  br label %71

68:                                               ; preds = %19
  br label %71

69:                                               ; preds = %19
  br label %71

70:                                               ; preds = %19
  br label %71

71:                                               ; preds = %19, %6, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %17, %12, %4
  %72 = phi i32 [ %5, %4 ], [ %13, %12 ], [ %18, %17 ], [ 171, %70 ], [ 177, %69 ], [ 176, %68 ], [ 175, %67 ], [ 174, %66 ], [ 173, %65 ], [ 161, %64 ], [ 160, %63 ], [ 162, %62 ], [ 164, %61 ], [ 163, %60 ], [ 199, %59 ], [ 169, %58 ], [ 168, %57 ], [ 170, %56 ], [ 167, %55 ], [ 224, %54 ], [ 166, %53 ], [ 165, %52 ], [ 0, %51 ], [ 138, %50 ], [ 140, %49 ], [ 139, %48 ], [ 137, %47 ], [ 0, %46 ], [ 0, %45 ], [ 211, %44 ], [ 214, %43 ], [ 213, %42 ], [ 172, %41 ], [ 215, %40 ], [ 212, %39 ], [ 216, %38 ], [ 217, %37 ], [ 229, %36 ], [ 233, %35 ], [ 236, %34 ], [ 235, %33 ], [ 234, %32 ], [ 225, %31 ], [ 232, %30 ], [ 226, %29 ], [ 230, %28 ], [ 227, %27 ], [ 228, %26 ], [ 221, %25 ], [ 218, %24 ], [ 220, %23 ], [ 0, %22 ], [ 222, %21 ], [ 219, %20 ], [ %0, %6 ], [ 223, %19 ]
  ret i32 %72
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attach_ndof_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.32) #24
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !239
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !240
  tail call fastcc void @mul_v3_v3fl(ptr noundef %4, ptr noundef %1, float noundef %5) #25
  %7 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %1, i64 0, i32 3
  tail call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %6) #25
  %9 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !241
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !25
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !25
  %17 = fneg float %16
  store float %17, ptr %13, align 4, !tbaa !25
  store float %14, ptr %15, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %1, i64 0, i32 6
  %20 = load float, ptr %19, align 4, !tbaa !242
  %21 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %4, i64 0, i32 2
  store float %20, ptr %21, align 4, !tbaa !244
  %22 = getelementptr inbounds %struct.GHOST_TEventNDOFMotionData, ptr %1, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !246
  %24 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %4, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !247
  %25 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 25
  store i16 4, ptr %25, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 28
  store ptr %4, ptr %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 26
  store i16 1, ptr %27, align 2, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_set_locked_interface(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 19
  store i8 %5, ptr %6, align 8, !tbaa !248
  tail call void @BKE_spacedata_draw_locks(i32 noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacedata_draw_locks(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_ndof_pan_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #16 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, i32 16384, i32 256
  %6 = load float, ptr %0, align 4, !tbaa !25
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !241
  %8 = and i32 %7, 4096
  %9 = icmp eq i32 %8, 0
  %10 = fneg float %6
  %11 = select i1 %9, float %6, float %10
  store float %11, ptr %1, align 4, !tbaa !25
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !25
  %14 = and i32 %7, 8192
  %15 = icmp eq i32 %14, 0
  %16 = fneg float %13
  %17 = select i1 %15, float %13, float %16
  %18 = getelementptr inbounds float, ptr %1, i64 1
  store float %17, ptr %18, align 4, !tbaa !25
  %19 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !25
  %21 = and i32 %7, %5
  %22 = icmp eq i32 %21, 0
  %23 = fneg float %20
  %24 = select i1 %22, float %20, float %23
  %25 = getelementptr inbounds float, ptr %1, i64 2
  store float %24, ptr %25, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_ndof_rotate_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !25
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !241
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  %8 = fneg float %4
  %9 = select i1 %7, float %4, float %8
  store float %9, ptr %1, align 4, !tbaa !25
  %10 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !25
  %12 = and i32 %5, 1024
  %13 = icmp eq i32 %12, 0
  %14 = fneg float %11
  %15 = select i1 %13, float %11, float %14
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !25
  %17 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !25
  %19 = and i32 %5, 2048
  %20 = icmp eq i32 %19, 0
  %21 = fneg float %18
  %22 = select i1 %20, float %18, float %21
  %23 = getelementptr inbounds float, ptr %1, i64 2
  store float %22, ptr %23, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @WM_event_ndof_to_axis_angle(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %4 = tail call fastcc float @normalize_v3_v3(ptr noundef %1, ptr noundef nonnull %3) #25
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !241
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !25
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %9 = and <2 x i32> %8, <i32 512, i32 1024>
  %10 = icmp eq <2 x i32> %9, zeroinitializer
  %11 = fneg <2 x float> %6
  %12 = select <2 x i1> %10, <2 x float> %6, <2 x float> %11
  store <2 x float> %12, ptr %1, align 4, !tbaa !25
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !25
  %15 = and i32 %5, 2048
  %16 = icmp eq i32 %15, 0
  %17 = fneg float %14
  %18 = select i1 %16, float %14, float %17
  store float %18, ptr %13, align 4, !tbaa !25
  %19 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !244
  %21 = fmul float %4, %20
  ret float %21
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #18 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #24
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_ndof_to_quat(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  %4 = call float @WM_event_ndof_to_axis_angle(ptr noundef %0, ptr noundef nonnull %3) #25
  call void @axis_angle_to_quat(ptr noundef %1, ptr noundef nonnull %3, float noundef %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local float @WM_event_tablet_data(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @zero_v2(ptr noundef nonnull %2) #25
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 4, !tbaa !23
  %12 = icmp eq i32 %11, 2
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmTabletData, ptr %8, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !249
  br i1 %4, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmTabletData, ptr %8, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !250
  store float %19, ptr %2, align 4, !tbaa !25
  %20 = getelementptr inbounds %struct.wmTabletData, ptr %8, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !27
  %22 = getelementptr inbounds float, ptr %2, i64 1
  store float %21, ptr %22, align 4, !tbaa !25
  br label %23

23:                                               ; preds = %10, %17, %14, %6
  %24 = phi float [ 1.000000e+00, %6 ], [ %16, %17 ], [ %16, %14 ], [ 1.000000e+00, %10 ]
  %25 = phi i1 [ false, %6 ], [ %12, %17 ], [ %12, %14 ], [ %12, %10 ]
  %26 = icmp eq ptr %1, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = zext i1 %25 to i32
  store i32 %28, ptr %1, align 4, !tbaa !12
  br label %29

29:                                               ; preds = %27, %23
  ret float %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_event_is_tablet(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !189
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %15 = icmp eq ptr %12, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %19) #24
  br label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !189
  tail call void @uiPupMenuReports(ptr noundef %0, ptr noundef %21) #24
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %12) #24
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %13) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %14) #24
  br label %22

22:                                               ; preds = %6, %20, %4
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @wm_operator_print(ptr noundef %0, ptr noundef %1) #25
  br label %30

30:                                               ; preds = %29, %25
  br i1 %5, label %31, label %34

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !189
  tail call void @BKE_reports_print(ptr noundef %33, i32 noundef 1) #24
  br label %34

34:                                               ; preds = %31, %30
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !111
  %37 = getelementptr inbounds %struct.wmOperatorType, ptr %36, i64 0, i32 19
  %38 = load i16, ptr %37, align 8, !tbaa !114
  %39 = and i16 %38, 1
  %40 = icmp ne i16 %39, 0
  %41 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #24
  %46 = tail call ptr @CTX_wm_reports(ptr noundef %0) #24
  tail call void @BKE_report(ptr noundef %46, i32 noundef 4, ptr noundef %45) #24
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %47(ptr noundef %45) #24
  br label %48

48:                                               ; preds = %34, %44, %22
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !189
  tail call fastcc void @wm_add_reports(ptr noundef %0, ptr noundef %50) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !251
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !115
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 19
  %13 = load i16, ptr %12, align 8, !tbaa !114
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @ED_undo_push_op(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %17

17:                                               ; preds = %9, %16, %3
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %17
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #24
  %25 = tail call ptr @CTX_wm_reports(ptr noundef %0) #24
  tail call void @BKE_report(ptr noundef %25, i32 noundef 4, ptr noundef %24) #24
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %26(ptr noundef %24) #24
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  %30 = tail call fastcc zeroext i8 @wm_operator_register_check(ptr noundef nonnull %4, ptr noundef %29) #25, !range !36
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !189
  %35 = getelementptr inbounds %struct.ReportList, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !106
  %37 = or i32 %36, 4
  store i32 %37, ptr %35, align 8, !tbaa !106
  tail call void @wm_operator_register(ptr noundef %0, ptr noundef nonnull %1) #24
  tail call void @WM_operator_region_active_win_set(ptr noundef %0) #25
  br label %39

38:                                               ; preds = %27
  tail call void @WM_operator_free(ptr noundef nonnull %1) #24
  br label %39

39:                                               ; preds = %32, %38, %17
  ret void
}

; Function Attrs: optsize
declare void @uiPupMenuReports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_operator_print(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @WM_operator_pystring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #24
  %4 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %3) #25
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %5(ptr noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_reports_print(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_operator_pystring(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: optsize
declare void @ED_undo_push_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @wm_operator_register_check(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 6
  %6 = load i16, ptr %5, align 2, !tbaa !115
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 19
  %10 = load i16, ptr %9, align 8, !tbaa !114
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = phi i8 [ 0, %4 ], [ 0, %2 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @wm_operator_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_area_find_region_active_win(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [4 x i32], align 16
  %8 = icmp eq i8 %5, 0
  %9 = tail call i32 @WM_operator_poll(ptr noundef %0, ptr noundef %1) #25
  br i1 %8, label %10, label %209

10:                                               ; preds = %6
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %209, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %14 = tail call fastcc ptr @wm_operator_create(ptr noundef %13, ptr noundef %1, ptr noundef %3, ptr noundef %4) #25
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %13, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !115
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.wmOperator, ptr %14, i64 0, i32 12
  %19 = load i16, ptr %18, align 8, !tbaa !252
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 8, !tbaa !252
  br i1 %17, label %21, label %23

21:                                               ; preds = %12
  %22 = tail call zeroext i8 @WM_operator_last_properties_init(ptr noundef nonnull %14) #25, !range !36
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %2, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !152
  %32 = icmp eq i16 %31, 4
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = sext i16 %31 to i32
  br label %35

35:                                               ; preds = %27, %33
  %36 = phi i32 [ %34, %33 ], [ 0, %27 ]
  %37 = tail call ptr @CTX_wm_screen(ptr noundef %0) #24
  %38 = getelementptr inbounds %struct.bScreen, ptr %37, i64 0, i32 19
  %39 = load i16, ptr %38, align 4, !tbaa !157
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !119
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull @__func__.wm_operator_invoke, i32 noundef %36, i32 noundef %40, ptr noundef %42) #25
  br label %44

44:                                               ; preds = %35, %29, %23
  %45 = getelementptr inbounds %struct.wmOperator, ptr %14, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !111
  %47 = getelementptr inbounds %struct.wmOperatorType, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !253
  %49 = icmp ne ptr %48, null
  %50 = icmp ne ptr %2, null
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %76

52:                                               ; preds = %44
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef nonnull %2) #25
  %53 = load ptr, ptr %45, align 8, !tbaa !111
  %54 = getelementptr inbounds %struct.wmOperatorType, ptr %53, i64 0, i32 19
  %55 = load i16, ptr %54, align 8, !tbaa !114
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i16, ptr %15, align 2, !tbaa !115
  %60 = add i16 %59, 1
  store i16 %60, ptr %15, align 2, !tbaa !115
  br label %61

61:                                               ; preds = %58, %52
  %62 = getelementptr inbounds %struct.wmOperatorType, ptr %53, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !253
  %64 = tail call i32 %63(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %2) #24
  %65 = load ptr, ptr %45, align 8, !tbaa !111
  %66 = getelementptr inbounds %struct.wmOperatorType, ptr %65, i64 0, i32 19
  %67 = load i16, ptr %66, align 8, !tbaa !114
  %68 = and i16 %67, 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %61
  %71 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %72 = icmp eq ptr %71, %13
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load i16, ptr %15, align 2, !tbaa !115
  %75 = add i16 %74, -1
  store i16 %75, ptr %15, align 2, !tbaa !115
  br label %105

76:                                               ; preds = %44
  %77 = getelementptr inbounds %struct.wmOperatorType, ptr %46, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !113
  %79 = icmp eq ptr %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.wmOperatorType, ptr %46, i64 0, i32 19
  %82 = load i16, ptr %81, align 8, !tbaa !114
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i16, ptr %15, align 2, !tbaa !115
  %87 = add i16 %86, 1
  store i16 %87, ptr %15, align 2, !tbaa !115
  br label %88

88:                                               ; preds = %85, %80
  %89 = tail call i32 %78(ptr noundef %0, ptr noundef nonnull %14) #24
  %90 = load ptr, ptr %45, align 8, !tbaa !111
  %91 = getelementptr inbounds %struct.wmOperatorType, ptr %90, i64 0, i32 19
  %92 = load i16, ptr %91, align 8, !tbaa !114
  %93 = and i16 %92, 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %88
  %96 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %97 = icmp eq ptr %96, %13
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i16, ptr %15, align 2, !tbaa !115
  %100 = add i16 %99, -1
  store i16 %100, ptr %15, align 2, !tbaa !115
  br label %105

101:                                              ; preds = %76
  %102 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !119
  %104 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.wm_operator_invoke, ptr noundef %103) #25
  br label %105

105:                                              ; preds = %101, %98, %95, %88, %61, %70, %73
  %106 = phi i32 [ %64, %73 ], [ %64, %70 ], [ %64, %61 ], [ %89, %98 ], [ %89, %95 ], [ %89, %88 ], [ 8, %101 ]
  %107 = and i32 %106, 16
  %108 = icmp ne i32 %107, 0
  %109 = and i32 %106, 6
  %110 = icmp eq i32 %109, 0
  %111 = or i1 %108, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = icmp ne ptr %4, null
  %114 = zext i1 %113 to i8
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %106, i8 noundef zeroext %114) #25
  br label %116

115:                                              ; preds = %105
  br i1 %108, label %209, label %116

116:                                              ; preds = %112, %115
  %117 = and i32 %106, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  br i1 %17, label %120, label %122

120:                                              ; preds = %119
  %121 = tail call zeroext i8 @WM_operator_last_properties_store(ptr noundef nonnull %14) #25, !range !36
  br label %122

122:                                              ; preds = %120, %119
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef nonnull %14, i8 noundef zeroext 0) #25
  br label %209

123:                                              ; preds = %116
  %124 = and i32 %106, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %208, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.wmOperator, ptr %14, i64 0, i32 8
  %128 = load ptr, ptr %127, align 8, !tbaa !189
  %129 = getelementptr inbounds %struct.ReportList, ptr %128, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !106
  %131 = or i32 %130, 4
  store i32 %131, ptr %129, align 8, !tbaa !106
  %132 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 19
  %133 = load i16, ptr %132, align 8, !tbaa !114
  %134 = and i16 %133, 4
  %135 = icmp eq i16 %134, 0
  %136 = getelementptr inbounds %struct.wmOperator, ptr %14, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !116
  br i1 %135, label %138, label %148

138:                                              ; preds = %126
  %139 = icmp eq ptr %137, null
  br i1 %139, label %207, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.wmOperator, ptr %137, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !111
  %143 = getelementptr inbounds %struct.wmOperatorType, ptr %142, i64 0, i32 19
  %144 = load i16, ptr %143, align 8, !tbaa !114
  %145 = and i16 %144, 4
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %207, label %147

147:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 -1, i64 16, i1 false)
  br label %150

148:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 -1, i64 16, i1 false)
  %149 = icmp eq ptr %137, null
  br i1 %149, label %164, label %150

150:                                              ; preds = %147, %148
  %151 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !149
  %152 = and i32 %151, 16777216
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %204, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.wmOperator, ptr %137, i64 0, i32 12
  %156 = load i16, ptr %155, align 8, !tbaa !252
  %157 = and i16 %156, 1
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.wmOperator, ptr %137, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !111
  %162 = getelementptr inbounds %struct.wmOperatorType, ptr %161, i64 0, i32 19
  %163 = load i16, ptr %162, align 8, !tbaa !114
  br label %172

164:                                              ; preds = %148
  %165 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !149
  %166 = and i32 %165, 16777216
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %204, label %168

168:                                              ; preds = %164
  %169 = load i16, ptr %18, align 8, !tbaa !252
  %170 = and i16 %169, 1
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168, %159
  %173 = phi i16 [ %163, %159 ], [ %133, %168 ]
  %174 = and i16 %173, 16
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %204, label %176

176:                                              ; preds = %168, %154, %172
  %177 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ARegion, ptr %177, i64 0, i32 8
  %181 = load i16, ptr %180, align 2, !tbaa !103
  %182 = icmp eq i16 %181, 1
  br i1 %182, label %204, label %183

183:                                              ; preds = %176, %179
  %184 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %185 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %186 = icmp eq ptr %184, null
  br i1 %186, label %197, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.ARegion, ptr %184, i64 0, i32 8
  %189 = load i16, ptr %188, align 2, !tbaa !103
  %190 = icmp eq i16 %189, 0
  %191 = and i1 %50, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.ARegion, ptr %184, i64 0, i32 3
  %194 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %195 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %193, ptr noundef nonnull %194) #24
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192, %187, %183
  %198 = icmp eq ptr %185, null
  %199 = getelementptr inbounds %struct.ScrArea, ptr %185, i64 0, i32 7
  br i1 %198, label %204, label %200

200:                                              ; preds = %192, %197
  %201 = phi ptr [ %199, %197 ], [ %193, %192 ]
  %202 = load <4 x i32>, ptr %201, align 4, !tbaa !12
  %203 = shufflevector <4 x i32> %202, <4 x i32> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  store <4 x i32> %203, ptr %7, align 16, !tbaa !12
  br label %204

204:                                              ; preds = %179, %164, %150, %172, %197, %200
  %205 = phi i8 [ 1, %200 ], [ 1, %197 ], [ 0, %172 ], [ 0, %150 ], [ 0, %164 ], [ 0, %179 ]
  %206 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  call void @WM_cursor_grab_enable(ptr noundef %206, i8 noundef zeroext %205, i8 noundef zeroext 0, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #26
  br label %207

207:                                              ; preds = %204, %140, %138
  call fastcc void @wm_handler_ui_cancel(ptr noundef %0) #25
  br label %209

208:                                              ; preds = %123
  tail call void @WM_operator_free(ptr noundef nonnull %14) #24
  br label %209

209:                                              ; preds = %6, %10, %122, %208, %207, %115
  %210 = phi i32 [ 8, %10 ], [ %106, %122 ], [ %106, %208 ], [ %106, %207 ], [ %106, %115 ], [ %9, %6 ]
  ret i32 %210
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %union.IDPropertyTemplate, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = tail call ptr %8(i64 noundef 168, ptr noundef %10) #24
  %12 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %9, align 8, !tbaa !119
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef %14, i64 noundef 64) #24
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %17 = tail call ptr %16(i64 noundef 24, ptr noundef nonnull @.str.24) #24
  %18 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !121
  %19 = icmp eq ptr %2, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %22) #24
  %26 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 3
  store ptr %25, ptr %26, align 8, !tbaa !131
  br label %30

27:                                               ; preds = %20, %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %28 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull @.str.4) #24
  %29 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi ptr [ %28, %27 ], [ %25, %24 ]
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = load ptr, ptr %18, align 8, !tbaa !121
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef %33, ptr noundef %31, ptr noundef %34) #24
  %35 = icmp eq ptr %3, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 8
  store ptr %3, ptr %37, align 8, !tbaa !189
  br label %42

38:                                               ; preds = %30
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !5
  %40 = call ptr %39(i64 noundef 40, ptr noundef nonnull @.str.25) #24
  %41 = getelementptr inbounds %struct.wmOperator, ptr %11, i64 0, i32 8
  store ptr %40, ptr %41, align 8, !tbaa !189
  call void @BKE_reports_init(ptr noundef %40, i32 noundef 6) #24
  br label %42

42:                                               ; preds = %38, %36
  %43 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %100, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store ptr %11, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  br label %50

50:                                               ; preds = %49, %46
  br i1 %19, label %85, label %51

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #26
  %52 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !255
  %54 = call ptr @RNA_struct_iterator_property(ptr noundef %53) #24
  call void @RNA_property_collection_begin(ptr noundef nonnull %2, ptr noundef %54, ptr noundef nonnull %6) #24
  %55 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !122
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %51, %80
  %60 = phi ptr [ %81, %80 ], [ %44, %51 ]
  %61 = load ptr, ptr %55, align 8, !tbaa !256
  %62 = icmp eq ptr %60, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = call ptr @RNA_property_identifier(ptr noundef %61) #24
  %65 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %60, i64 0, i32 2
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %65) #29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = call ptr @WM_operatortype_find(ptr noundef nonnull %65, i8 noundef zeroext 0) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %2, ptr noundef %61) #24
  %70 = call fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %69, ptr noundef nonnull %7, ptr noundef null) #25
  %71 = getelementptr inbounds %struct.wmOperator, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %60, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !257
  call void @IDP_ReplaceGroupInGroup(ptr noundef %72, ptr noundef %74) #24
  %75 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.wmOperator, ptr %75, i64 0, i32 9
  call void @BLI_addtail(ptr noundef nonnull %76, ptr noundef %70) #24
  %77 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.wmOperator, ptr %70, i64 0, i32 10
  store ptr %77, ptr %78, align 8, !tbaa !116
  %79 = load ptr, ptr %60, align 8, !tbaa !259
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  br label %80

80:                                               ; preds = %68, %63
  %81 = phi ptr [ %60, %63 ], [ %79, %68 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #24
  %82 = load i32, ptr %56, align 8, !tbaa !122
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %59, !llvm.loop !260

84:                                               ; preds = %80, %59, %51
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #26
  br label %98

85:                                               ; preds = %50, %85
  %86 = phi ptr [ %96, %85 ], [ %44, %50 ]
  %87 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %86, i64 0, i32 2
  %88 = call ptr @WM_operatortype_find(ptr noundef nonnull %87, i8 noundef zeroext 0) #24
  %89 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %86, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !261
  %91 = call fastcc ptr @wm_operator_create(ptr noundef %0, ptr noundef %88, ptr noundef %90, ptr noundef null) #25
  %92 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.wmOperator, ptr %92, i64 0, i32 9
  call void @BLI_addtail(ptr noundef nonnull %93, ptr noundef %91) #24
  %94 = load ptr, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.wmOperator, ptr %91, i64 0, i32 10
  store ptr %94, ptr %95, align 8, !tbaa !116
  %96 = load ptr, ptr %86, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %85, !llvm.loop !262

98:                                               ; preds = %85, %84
  br i1 %48, label %99, label %100

99:                                               ; preds = %98
  store ptr null, ptr @wm_operator_create.motherop, align 8, !tbaa !5
  br label %100

100:                                              ; preds = %98, %99, %42
  %101 = load ptr, ptr %18, align 8, !tbaa !121
  call void @WM_operator_properties_sanitize(ptr noundef %101, i8 noundef zeroext 0) #24
  ret ptr %11
}

; Function Attrs: optsize
declare void @WM_cursor_grab_enable(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_handler_ui_cancel(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wmEvent, align 8
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !263
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %23
  %13 = phi ptr [ %8, %10 ], [ %14, %23 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.wmEventHandler, ptr %13, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #26
  call void @wm_event_init_from_window(ptr noundef %3, ptr noundef nonnull %2) #25
  store i16 20516, ptr %11, align 8, !tbaa !152
  %19 = load ptr, ptr %15, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.wmEventHandler, ptr %13, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = call i32 %19(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %21) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #26
  br label %23

23:                                               ; preds = %12, %18
  %24 = icmp eq ptr %14, null
  br i1 %24, label %25, label %12, !llvm.loop !264

25:                                               ; preds = %23, %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IDP_ReplaceGroupInGroup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_sanitize(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_handlers_do_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %5 = icmp eq ptr %2, null
  br i1 %5, label %180, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !175
  %8 = icmp eq ptr %7, null
  br i1 %8, label %180, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 23
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 19
  %12 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 25
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  br label %15

15:                                               ; preds = %9, %172
  %16 = phi ptr [ %7, %9 ], [ %21, %172 ]
  %17 = phi i32 [ 0, %9 ], [ %161, %172 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !175
  %19 = icmp eq ptr %18, null
  br i1 %19, label %174, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !178
  %22 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !197
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %160

26:                                               ; preds = %20
  %27 = tail call fastcc zeroext i8 @handler_boundbox_test(ptr noundef nonnull %16, ptr noundef %1) #25, !range !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %160, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @wm_event_always_pass(ptr noundef %1) #25, !range !154
  %31 = load i32, ptr %22, align 4, !tbaa !197
  %32 = and i32 %31, 1
  %33 = or i32 %32, %17
  %34 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !191
  %36 = icmp eq ptr %35, null
  br i1 %36, label %81, label %37

37:                                               ; preds = %29
  %38 = tail call ptr @WM_keymap_active(ptr noundef %4, ptr noundef nonnull %35) #24
  %39 = getelementptr inbounds %struct.wmKeyMap, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !265
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 %40(ptr noundef %0) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %152, label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds %struct.wmKeyMap, ptr %38, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %152, label %49

49:                                               ; preds = %45, %77
  %50 = phi ptr [ %79, %77 ], [ %47, %45 ]
  %51 = phi i32 [ %78, %77 ], [ %33, %45 ]
  %52 = tail call fastcc i32 @wm_eventmatch(ptr noundef %1, ptr noundef nonnull %50) #25, !range !154
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 2
  store ptr %55, ptr %10, align 8, !tbaa !267
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !268
  %58 = tail call fastcc i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %1, ptr noundef %57) #25, !range !270
  %59 = or i32 %58, %51
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %64 = and i32 %63, 24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %152, label %66

66:                                               ; preds = %62
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull @__func__.wm_handlers_do_intern, ptr noundef nonnull %55) #25
  br label %152

68:                                               ; preds = %54
  %69 = and i32 %59, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !62
  %73 = and i32 %72, 24
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull @__func__.wm_handlers_do_intern, ptr noundef nonnull %55) #25
  br label %77

77:                                               ; preds = %49, %68, %75, %71
  %78 = phi i32 [ %59, %75 ], [ %59, %71 ], [ %59, %68 ], [ %51, %49 ]
  %79 = load ptr, ptr %50, align 8, !tbaa !5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %152, label %49, !llvm.loop !271

81:                                               ; preds = %29
  %82 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 10
  %83 = load ptr, ptr %82, align 8, !tbaa !196
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %11, align 8, !tbaa !248
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %152

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @wm_handler_ui_call(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1, i32 noundef %30) #25, !range !154
  %90 = or i32 %89, %33
  br label %152

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !179
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i8, ptr %11, align 8, !tbaa !248
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %152

98:                                               ; preds = %95
  %99 = tail call fastcc i32 @wm_handler_fileselect_call(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %1) #25, !range !154
  %100 = or i32 %99, %33
  br label %152

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.wmEventHandler, ptr %16, i64 0, i32 17
  %103 = load ptr, ptr %102, align 8, !tbaa !200
  %104 = icmp eq ptr %103, null
  br i1 %104, label %149, label %105

105:                                              ; preds = %101
  %106 = load i8, ptr %11, align 8, !tbaa !248
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %152

108:                                              ; preds = %105
  %109 = load i16, ptr %12, align 8, !tbaa !152
  %110 = icmp eq i16 %109, 20515
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  %112 = load ptr, ptr %103, align 8, !tbaa !5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %152, label %114

114:                                              ; preds = %111, %145
  %115 = phi ptr [ %147, %145 ], [ %112, %111 ]
  %116 = phi i32 [ %146, %145 ], [ %33, %111 ]
  %117 = load i16, ptr %13, align 8, !tbaa !32
  %118 = icmp eq i16 %117, 3
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = load ptr, ptr %14, align 8, !tbaa !30
  %121 = getelementptr inbounds %struct.wmDropBox, ptr %115, i64 0, i32 2
  br label %122

122:                                              ; preds = %126, %119
  %123 = phi ptr [ %120, %119 ], [ %124, %126 ]
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = icmp eq ptr %124, null
  br i1 %125, label %145, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %121, align 8, !tbaa !272
  %128 = tail call i32 %127(ptr noundef %0, ptr noundef nonnull %124, ptr noundef %1) #24
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %122, label %130, !llvm.loop !274

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.wmDropBox, ptr %115, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !275
  tail call void %132(ptr noundef nonnull %124, ptr noundef nonnull %115) #24
  tail call void @WM_drag_free_list(ptr noundef %120) #24
  store ptr null, ptr %14, align 8, !tbaa !30
  store i16 0, ptr %13, align 8, !tbaa !32
  %133 = getelementptr inbounds %struct.wmDropBox, ptr %115, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !276
  %135 = getelementptr inbounds %struct.wmOperatorType, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !119
  %137 = getelementptr inbounds %struct.wmDropBox, ptr %115, i64 0, i32 7
  %138 = load i16, ptr %137, align 8, !tbaa !277
  %139 = getelementptr inbounds %struct.wmDropBox, ptr %115, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !278
  %141 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %136, i16 noundef signext %138, ptr noundef %140) #25
  %142 = or i32 %116, 1
  %143 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %144 = icmp eq ptr %143, null
  br i1 %144, label %180, label %145

145:                                              ; preds = %122, %114, %130
  %146 = phi i32 [ %142, %130 ], [ %116, %114 ], [ %116, %122 ]
  %147 = load ptr, ptr %115, align 8, !tbaa !5
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %114, !llvm.loop !279

149:                                              ; preds = %101
  %150 = tail call fastcc i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %1, ptr noundef null) #25, !range !270
  %151 = or i32 %150, %33
  br label %152

152:                                              ; preds = %77, %145, %45, %111, %62, %66, %42, %88, %85, %149, %108, %105, %95, %98
  %153 = phi i32 [ %33, %85 ], [ %90, %88 ], [ %33, %95 ], [ %100, %98 ], [ %33, %105 ], [ %33, %108 ], [ %151, %149 ], [ %59, %66 ], [ %59, %62 ], [ %33, %42 ], [ %33, %111 ], [ %33, %45 ], [ %146, %145 ], [ %78, %77 ]
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = icmp eq i32 %30, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %156
  %159 = and i32 %153, -2
  br label %160

160:                                              ; preds = %26, %158, %152, %20
  %161 = phi i32 [ %17, %20 ], [ %159, %158 ], [ %153, %152 ], [ %17, %26 ]
  %162 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %163 = icmp eq ptr %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %160
  %165 = tail call i32 @BLI_findindex(ptr noundef nonnull %2, ptr noundef nonnull %16) #24
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %22, align 4, !tbaa !197
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %16) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %16) #25
  br label %172

172:                                              ; preds = %164, %171, %167
  %173 = icmp eq ptr %21, null
  br i1 %173, label %174, label %15, !llvm.loop !280

174:                                              ; preds = %15, %156, %172
  %175 = phi i32 [ %17, %15 ], [ %153, %156 ], [ %161, %172 ]
  %176 = icmp eq i32 %175, 5
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  %179 = tail call i32 @wm_cursor_arrow_move(ptr noundef %178, ptr noundef %1) #24
  br label %180

180:                                              ; preds = %160, %130, %6, %174, %177, %3
  %181 = phi i32 [ 0, %3 ], [ 5, %177 ], [ %175, %174 ], [ 0, %6 ], [ %142, %130 ], [ %161, %160 ]
  ret i32 %181
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @wm_action_not_handled(i32 noundef %0) unnamed_addr #15 {
  %2 = icmp eq i32 %0, 0
  %3 = icmp eq i32 %0, 5
  %4 = or i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @handler_boundbox_test(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = getelementptr inbounds %struct.wmEventHandler, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmEventHandler, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !281
  %12 = load i32, ptr %5, align 4, !tbaa !282
  %13 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !283
  call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %12, i32 noundef %14) #24
  %15 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %16 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %3, ptr noundef nonnull %15) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !152
  %21 = icmp eq i16 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %24 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %3, ptr noundef nonnull %23) #24
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %22, %11, %26
  %28 = phi i8 [ 0, %26 ], [ 1, %11 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  br label %43

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %31 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %5, ptr noundef nonnull %30) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !152
  %36 = icmp eq i16 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !195
  %39 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %40 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef %38, ptr noundef nonnull %39) #24
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %2, %37, %29, %42, %27
  %44 = phi i8 [ %28, %27 ], [ 0, %42 ], [ 1, %29 ], [ 1, %37 ], [ 1, %2 ]
  ret i8 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @wm_event_always_pass(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !152
  %4 = and i16 %3, -16
  %5 = icmp eq i16 %4, 272
  %6 = icmp eq i16 %3, 260
  %7 = or i1 %6, %5
  %8 = icmp eq i16 %3, 20513
  %9 = or i1 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @WM_keymap_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @wm_eventmatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 6
  %4 = load i16, ptr %3, align 2, !tbaa !284
  %5 = sext i16 %4 to i32
  %6 = tail call i32 @WM_userdef_event_map(i32 noundef %5) #25
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 13
  %8 = load i16, ptr %7, align 8, !tbaa !285
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %98

11:                                               ; preds = %2
  switch i32 %6, label %32 [
    i32 -2, label %12
    i32 -1, label %37
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !161
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !152
  %19 = add i16 %18, -32
  %20 = icmp ult i16 %19, 224
  %21 = add i16 %18, -300
  %22 = icmp ult i16 %21, 20
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 8
  %26 = load i8, ptr %25, align 2, !tbaa !219
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 7
  %30 = load i8, ptr %29, align 4, !tbaa !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %16, %28, %12, %11
  %33 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !152
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %6, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %11, %32
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 7
  %39 = load i16, ptr %38, align 4, !tbaa !286
  %40 = icmp eq i16 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  %43 = load i16, ptr %42, align 2, !tbaa !161
  %44 = icmp eq i16 %43, %39
  br i1 %44, label %45, label %98

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 8
  %47 = load i16, ptr %46, align 2, !tbaa !287
  %48 = icmp eq i16 %47, -1
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 17
  %51 = load i16, ptr %50, align 8, !tbaa !223
  %52 = icmp ne i16 %51, %47
  %53 = and i16 %51, %47
  %54 = icmp eq i16 %53, 0
  %55 = and i1 %52, %54
  br i1 %55, label %98, label %56

56:                                               ; preds = %49, %45
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 9
  %58 = load i16, ptr %57, align 8, !tbaa !288
  %59 = icmp eq i16 %58, -1
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 18
  %62 = load i16, ptr %61, align 2, !tbaa !220
  %63 = icmp ne i16 %62, %58
  %64 = and i16 %62, %58
  %65 = icmp eq i16 %64, 0
  %66 = and i1 %63, %65
  br i1 %66, label %98, label %67

67:                                               ; preds = %60, %56
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 10
  %69 = load i16, ptr %68, align 2, !tbaa !289
  %70 = icmp eq i16 %69, -1
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 19
  %73 = load i16, ptr %72, align 4, !tbaa !221
  %74 = icmp ne i16 %73, %69
  %75 = and i16 %73, %69
  %76 = icmp eq i16 %75, 0
  %77 = and i1 %74, %76
  br i1 %77, label %98, label %78

78:                                               ; preds = %71, %67
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 11
  %80 = load i16, ptr %79, align 4, !tbaa !290
  %81 = icmp eq i16 %80, -1
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 20
  %84 = load i16, ptr %83, align 2, !tbaa !222
  %85 = icmp ne i16 %84, %80
  %86 = and i16 %84, %80
  %87 = icmp eq i16 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %82, %78
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 12
  %91 = load i16, ptr %90, align 2, !tbaa !291
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 21
  %95 = load i16, ptr %94, align 8, !tbaa !224
  %96 = icmp eq i16 %95, %91
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %93, %82, %71, %60, %49, %41, %32, %24, %28, %2, %97
  %99 = phi i32 [ 1, %97 ], [ 0, %2 ], [ 1, %28 ], [ 1, %24 ], [ 0, %32 ], [ 0, %41 ], [ 0, %49 ], [ 0, %60 ], [ 0, %71 ], [ 0, %82 ], [ 0, %93 ]
  ret i32 %99
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_handler_operator_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmOperator, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = tail call fastcc zeroext i8 @wm_operator_check_locked_interface(ptr noundef %0, ptr noundef %12) #25, !range !36
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !292
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %21 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  store i8 0, ptr %6, align 1, !tbaa !14
  tail call fastcc void @wm_handler_op_context(ptr noundef %0, ptr noundef nonnull %2) #25
  tail call fastcc void @wm_region_mouse_co(ptr noundef %0, ptr noundef %3) #25
  call fastcc void @wm_event_modalkeymap(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, ptr noundef nonnull %6) #25
  %23 = getelementptr inbounds %struct.wmOperatorType, ptr %12, i64 0, i32 19
  %24 = load i16, ptr %23, align 8, !tbaa !114
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.wmWindowManager, ptr %20, i64 0, i32 6
  %29 = load i16, ptr %28, align 2, !tbaa !115
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 2, !tbaa !115
  br label %31

31:                                               ; preds = %27, %19
  %32 = load ptr, ptr %16, align 8, !tbaa !292
  %33 = tail call i32 %32(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3) #24
  %34 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %35 = icmp eq ptr %34, %20
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load i8, ptr %6, align 1, !tbaa !14
  tail call fastcc void @wm_event_modalmap_end(ptr noundef %3, i8 noundef zeroext %37) #25
  %38 = load i16, ptr %23, align 8, !tbaa !114
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.wmWindowManager, ptr %20, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !115
  %44 = add i16 %43, -1
  store i16 %44, ptr %42, align 2, !tbaa !115
  br label %45

45:                                               ; preds = %41, %36
  %46 = and i32 %33, 6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  tail call fastcc void @wm_operator_reports(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %33, i8 noundef zeroext 0) #25
  %49 = and i32 %33, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call fastcc void @wm_operator_finished(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0) #25
  br label %53

52:                                               ; preds = %48
  tail call void @WM_operator_free(ptr noundef nonnull %8) #24
  br label %53

53:                                               ; preds = %51, %52
  store ptr null, ptr %7, align 8, !tbaa !132
  br label %54

54:                                               ; preds = %53, %45
  %55 = and i32 %33, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @wm_event_always_pass(ptr noundef %3) #25, !range !154
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, ptr null, ptr %21
  %61 = select i1 %59, ptr null, ptr %22
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi ptr [ %21, %54 ], [ %60, %57 ]
  %64 = phi ptr [ %22, %54 ], [ %61, %57 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %63) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %64) #24
  br i1 %47, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  tail call void @WM_cursor_grab_disable(ptr noundef %66, ptr noundef null) #24
  tail call void @BLI_remlink(ptr noundef %1, ptr noundef nonnull %2) #24
  tail call void @wm_event_free_handler(ptr noundef nonnull %2) #25
  br label %67

67:                                               ; preds = %62, %65, %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  br label %81

68:                                               ; preds = %15
  %69 = getelementptr inbounds %struct.wmOperator, ptr %8, i64 0, i32 2
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull @__func__.wm_handler_operator_call, ptr noundef nonnull %69) #25
  br label %84

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 23
  %73 = load ptr, ptr %72, align 8, !tbaa !267
  %74 = tail call ptr @WM_operatortype_find(ptr noundef %73, i8 noundef zeroext 0) #24
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = tail call fastcc zeroext i8 @wm_operator_check_locked_interface(ptr noundef %0, ptr noundef nonnull %74) #25, !range !36
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = tail call fastcc i32 @wm_operator_invoke(ptr noundef %0, ptr noundef nonnull %74, ptr noundef nonnull %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext 0) #25
  br label %81

81:                                               ; preds = %79, %67
  %82 = phi i32 [ %33, %67 ], [ %80, %79 ]
  switch i32 %82, label %84 [
    i32 12, label %89
    i32 9, label %83
  ]

83:                                               ; preds = %81
  br label %89

84:                                               ; preds = %71, %76, %10, %68, %81
  %85 = phi i32 [ %82, %81 ], [ 8, %68 ], [ 8, %10 ], [ 8, %76 ], [ 8, %71 ]
  %86 = lshr i32 %85, 3
  %87 = and i32 %86, 1
  %88 = xor i32 %87, 1
  br label %89

89:                                               ; preds = %84, %81, %83
  %90 = phi i32 [ 5, %83 ], [ 2, %81 ], [ %88, %84 ]
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_handler_ui_call(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #24
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #24
  %7 = tail call ptr @CTX_wm_menu(ptr noundef %0) #24
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !152
  %10 = icmp ugt i16 %9, 14
  %11 = trunc i16 %9 to i15
  %12 = lshr i15 13311, %11
  %13 = and i15 %12, 1
  %14 = icmp ne i15 %13, 0
  %15 = select i1 %10, i1 true, i1 %14
  %16 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !197
  %18 = and i32 %17, 4
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq i16 %9, 1
  %21 = or i1 %20, %19
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !161
  %25 = icmp eq i16 %24, 4
  br i1 %25, label %63, label %26

26:                                               ; preds = %22, %4
  %27 = load i1, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  br i1 %15, label %29, label %63

29:                                               ; preds = %28
  %30 = tail call fastcc i32 @wm_event_always_pass(ptr noundef nonnull %2) #25, !range !154
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i1 false, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !136
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %35) #24
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !137
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %40) #24
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !138
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %45) #24
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !196
  %51 = getelementptr inbounds %struct.wmEventHandler, ptr %1, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !139
  %53 = tail call i32 %50(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %52) #24
  %54 = icmp ne i32 %53, 1
  %55 = icmp ne i32 %3, 0
  %56 = or i1 %55, %54
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #24
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #24
  br label %63

58:                                               ; preds = %48
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %5) #24
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %6) #24
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef %7) #24
  %59 = icmp eq i32 %53, 1
  %60 = or i1 %15, %59
  %61 = zext i1 %59 to i32
  br i1 %60, label %63, label %62

62:                                               ; preds = %58
  store i1 true, ptr @wm_handler_ui_call.do_wheel_ui, align 1
  br label %63

63:                                               ; preds = %57, %58, %62, %28, %22
  %64 = phi i32 [ 0, %22 ], [ 0, %28 ], [ %61, %58 ], [ 0, %62 ], [ 1, %57 ]
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_handler_fileselect_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !152
  %7 = icmp eq i16 %6, 20512
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !161
  %17 = sext i16 %16 to i32
  %18 = tail call fastcc i32 @wm_handler_fileselect_do(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %17) #25, !range !154
  br label %19

19:                                               ; preds = %8, %4, %14
  %20 = phi i32 [ %18, %14 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @wm_cursor_arrow_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @wm_operator_check_locked_interface(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 19
  %5 = load i8, ptr %4, align 8, !tbaa !248
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 19
  %9 = load i16, ptr %8, align 8, !tbaa !114
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %13

13:                                               ; preds = %7, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %7 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_event_modalkeymap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr %1, ptr %6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !293
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  %15 = tail call ptr @CTX_wm_manager(ptr noundef %0) #24
  %16 = load ptr, ptr %9, align 8, !tbaa !111
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %16, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !293
  %19 = tail call ptr @WM_keymap_active(ptr noundef %15, ptr noundef %18) #24
  %20 = getelementptr inbounds %struct.wmKeyMap, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %25, %14
  %22 = phi ptr [ %20, %14 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @wm_eventmatch(ptr noundef %2, ptr noundef nonnull %23) #25, !range !154
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %21, label %28, !llvm.loop !294

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 10
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %32 = load <2 x i16>, ptr %29, align 8, !tbaa !10
  store <2 x i16> %32, ptr %30, align 4, !tbaa !10
  store i16 20514, ptr %29, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 5
  %34 = load i16, ptr %33, align 8, !tbaa !295
  store i16 %34, ptr %31, align 2, !tbaa !161
  br label %40

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !161
  %38 = icmp eq i16 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i16 1, ptr %36, align 2, !tbaa !161
  store i8 1, ptr %3, align 1, !tbaa !14
  br label %40

40:                                               ; preds = %21, %28, %35, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @wm_event_modalmap_end(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !152
  %5 = icmp eq i16 %4, 20514
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 11
  %9 = load <2 x i16>, ptr %7, align 4, !tbaa !10
  store i16 0, ptr %7, align 4, !tbaa !168
  store <2 x i16> %9, ptr %3, align 8, !tbaa !10
  store i16 0, ptr %8, align 2, !tbaa !170
  br label %14

10:                                               ; preds = %2
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 3
  store i16 4, ptr %13, align 2, !tbaa !161
  br label %14

14:                                               ; preds = %10, %12, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_paintcursor_tag(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %20

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %1, %3 ]
  %9 = getelementptr inbounds %struct.wmPaintCursor, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !296
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %0) #24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %7
  %16 = tail call ptr @CTX_wm_window(ptr noundef %0) #24
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %16, ptr noundef nonnull %2) #24
  br label %17

17:                                               ; preds = %12, %15
  %18 = load ptr, ptr %8, align 8, !tbaa !298
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_screen_full_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ED_fileselect_set_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_screen_full_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_area_prevspace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report_print_level_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 {
  %4 = load float, ptr %1, align 4, !tbaa !25
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !25
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !25
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !25
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !25
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = load float, ptr %0, align 4, !tbaa !25
  %4 = load float, ptr %1, align 4, !tbaa !25
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !25
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !25
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !25
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !25
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !25
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { cold optsize }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 2, !10, i64 18, i64 2, !10, i64 20, i64 4, !12, i64 24, i64 4, !12, i64 28, i64 8, !14, i64 36, i64 6, !14, i64 42, i64 1, !14, i64 43, i64 1, !14, i64 44, i64 2, !10, i64 46, i64 2, !10, i64 48, i64 4, !12, i64 52, i64 4, !12, i64 56, i64 8, !15, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 2, !10, i64 74, i64 2, !10, i64 76, i64 2, !10, i64 78, i64 2, !10, i64 80, i64 2, !10, i64 82, i64 2, !10, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 2, !10, i64 106, i64 2, !10, i64 108, i64 4, !12, i64 112, i64 8, !5}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = !{!18, !6, i64 16}
!18 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !13, i64 128, !11, i64 132, !11, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !13, i64 160, !13, i64 164, !6, i64 168, !19, i64 176, !19, i64 192, !19, i64 208, !19, i64 224, !19, i64 240}
!19 = !{!"ListBase", !6, i64 0, !6, i64 8}
!20 = !{!21, !13, i64 0}
!21 = !{!"GHOST_TabletData", !13, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!22 = !{!"float", !7, i64 0}
!23 = !{!24, !13, i64 0}
!24 = !{!"wmTabletData", !13, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!22, !22, i64 0}
!26 = !{!21, !22, i64 12}
!27 = !{!24, !22, i64 12}
!28 = !{!29, !6, i64 96}
!29 = !{!"wmEvent", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 18, !13, i64 20, !13, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !11, i64 44, !11, i64 46, !13, i64 48, !13, i64 52, !16, i64 56, !13, i64 64, !13, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 106, !13, i64 108, !6, i64 112}
!30 = !{!29, !6, i64 112}
!31 = !{!29, !11, i64 106}
!32 = !{!29, !11, i64 104}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!18, !6, i64 136}
!36 = !{i8 0, i8 2}
!37 = !{!38, !6, i64 16}
!38 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !6, i64 56}
!39 = !{!38, !6, i64 24}
!40 = !{!41, !11, i64 212}
!41 = !{!"ARegion", !6, i64 0, !6, i64 8, !42, i64 16, !44, i64 176, !44, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !22, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !6, i64 240, !19, i64 248, !19, i64 264, !19, i64 280, !19, i64 296, !19, i64 312, !19, i64 328, !19, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !7, i64 80, !7, i64 88, !22, i64 96, !22, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !6, i64 128, !13, i64 136, !13, i64 140, !6, i64 144, !6, i64 152}
!43 = !{!"rctf", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!44 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!45 = !{!38, !13, i64 32}
!46 = !{!38, !6, i64 56}
!47 = distinct !{!47, !34}
!48 = !{!49, !6, i64 0}
!49 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !19, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !7, i64 2090, !11, i64 2092, !13, i64 2096, !13, i64 2100, !7, i64 2104, !13, i64 2108, !13, i64 2112, !7, i64 2116}
!50 = !{!51, !6, i64 1552}
!51 = !{!"Main", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 1040, !11, i64 1042, !11, i64 1044, !11, i64 1046, !52, i64 1048, !7, i64 1056, !11, i64 1072, !6, i64 1080, !19, i64 1088, !19, i64 1104, !19, i64 1120, !19, i64 1136, !19, i64 1152, !19, i64 1168, !19, i64 1184, !19, i64 1200, !19, i64 1216, !19, i64 1232, !19, i64 1248, !19, i64 1264, !19, i64 1280, !19, i64 1296, !19, i64 1312, !19, i64 1328, !19, i64 1344, !19, i64 1360, !19, i64 1376, !19, i64 1392, !19, i64 1408, !19, i64 1424, !19, i64 1440, !19, i64 1456, !19, i64 1472, !19, i64 1488, !19, i64 1504, !19, i64 1520, !19, i64 1536, !19, i64 1552, !19, i64 1568, !19, i64 1584, !19, i64 1600, !19, i64 1616, !7, i64 1632, !6, i64 1888, !6, i64 1896}
!52 = !{!"long", !7, i64 0}
!53 = !{!54, !6, i64 176}
!54 = !{!"wmWindowManager", !55, i64 0, !6, i64 120, !6, i64 128, !19, i64 136, !13, i64 152, !11, i64 156, !11, i64 158, !19, i64 160, !19, i64 176, !56, i64 192, !19, i64 232, !19, i64 248, !19, i64 264, !19, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !19, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!55 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !11, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !6, i64 112}
!56 = !{!"ReportList", !19, i64 0, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !6, i64 32}
!57 = !{!38, !6, i64 0}
!58 = distinct !{!58, !34}
!59 = !{!38, !13, i64 36}
!60 = !{!38, !13, i64 40}
!61 = !{!54, !11, i64 156}
!62 = !{!49, !13, i64 2100}
!63 = !{!18, !6, i64 24}
!64 = !{!65, !6, i64 184}
!65 = !{!"bScreen", !55, i64 0, !19, i64 120, !19, i64 136, !19, i64 152, !19, i64 168, !6, i64 184, !6, i64 192, !13, i64 200, !13, i64 204, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !6, i64 232, !6, i64 240}
!66 = distinct !{!66, !34}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = distinct !{!69, !34}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !34}
!73 = distinct !{!73, !34}
!74 = !{!75, !11, i64 80}
!75 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !44, i64 56, !7, i64 72, !7, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !19, i64 96, !19, i64 112, !19, i64 128, !19, i64 144}
!76 = distinct !{!76, !34}
!77 = !{!49, !7, i64 2090}
!78 = !{!79, !52, i64 4656}
!79 = !{!"Scene", !55, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !19, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !13, i64 232, !13, i64 236, !13, i64 240, !11, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !80, i64 280, !87, i64 4264, !19, i64 4296, !19, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !11, i64 4376, !11, i64 4378, !13, i64 4380, !19, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !6, i64 4608, !93, i64 4616, !6, i64 4640, !52, i64 4648, !52, i64 4656, !82, i64 4664, !83, i64 4824, !94, i64 4888, !6, i64 4952}
!80 = !{!"RenderData", !81, i64 0, !6, i64 248, !6, i64 256, !84, i64 264, !85, i64 328, !13, i64 400, !13, i64 404, !13, i64 408, !22, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !11, i64 432, !11, i64 434, !22, i64 436, !22, i64 440, !22, i64 444, !22, i64 448, !22, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !13, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !13, i64 484, !13, i64 488, !11, i64 492, !11, i64 494, !13, i64 496, !13, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !7, i64 514, !7, i64 515, !13, i64 516, !13, i64 520, !13, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !43, i64 544, !43, i64 560, !44, i64 576, !19, i64 592, !11, i64 608, !11, i64 610, !22, i64 612, !22, i64 616, !22, i64 620, !22, i64 624, !13, i64 628, !22, i64 632, !22, i64 636, !22, i64 640, !22, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !22, i64 660, !22, i64 664, !11, i64 668, !11, i64 670, !22, i64 672, !22, i64 676, !7, i64 680, !13, i64 1704, !11, i64 1708, !11, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !13, i64 2520, !11, i64 2524, !11, i64 2526, !22, i64 2528, !22, i64 2532, !11, i64 2536, !11, i64 2538, !22, i64 2540, !11, i64 2544, !11, i64 2546, !13, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !22, i64 2560, !22, i64 2564, !6, i64 2568, !13, i64 2576, !22, i64 2580, !7, i64 2584, !86, i64 2616, !13, i64 3976, !13, i64 3980}
!81 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !11, i64 8, !11, i64 10, !22, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !82, i64 24, !83, i64 184}
!82 = !{!"ColorManagedViewSettings", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !22, i64 136, !22, i64 140, !6, i64 144, !6, i64 152}
!83 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!84 = !{!"QuicktimeCodecSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !11, i64 48, !11, i64 50, !13, i64 52, !13, i64 56, !13, i64 60}
!85 = !{!"FFMpegCodecData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !22, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !6, i64 64}
!86 = !{!"BakeData", !81, i64 0, !7, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !22, i64 1280, !22, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!87 = !{!"AudioData", !13, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !13, i64 16, !11, i64 20, !11, i64 22, !22, i64 24, !22, i64 28}
!88 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!89 = !{!"GameData", !88, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !7, i64 34, !90, i64 40, !11, i64 64, !11, i64 66, !22, i64 68, !91, i64 72, !22, i64 128, !22, i64 132, !13, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180}
!90 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !22, i64 8, !22, i64 12, !6, i64 16}
!91 = !{!"RecastData", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !13, i64 40, !22, i64 44, !22, i64 48, !11, i64 52, !11, i64 54}
!92 = !{!"UnitSettings", !22, i64 0, !7, i64 4, !7, i64 5, !11, i64 6}
!93 = !{!"PhysicsSettings", !7, i64 0, !13, i64 12, !13, i64 16, !13, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!95 = !{!79, !52, i64 4648}
!96 = !{!51, !6, i64 1888}
!97 = distinct !{!97, !34}
!98 = distinct !{!98, !34}
!99 = !{!100, !6, i64 144}
!100 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !19, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !101, i64 152, !11, i64 184}
!101 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!102 = !{!100, !6, i64 72}
!103 = !{!41, !11, i64 214}
!104 = !{!75, !11, i64 84}
!105 = !{!56, !6, i64 0}
!106 = !{!56, !13, i64 24}
!107 = !{!56, !6, i64 32}
!108 = !{!109, !6, i64 40}
!109 = !{!"wmTimer", !6, i64 0, !6, i64 8, !6, i64 16, !16, i64 24, !13, i64 32, !6, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !13, i64 88}
!110 = !{i32 2, i32 0}
!111 = !{!112, !6, i64 88}
!112 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !19, i64 128, !6, i64 144, !6, i64 152, !11, i64 160, !7, i64 162}
!113 = !{!100, !6, i64 32}
!114 = !{!100, !11, i64 184}
!115 = !{!54, !11, i64 158}
!116 = !{!112, !6, i64 144}
!117 = distinct !{!117, !34}
!118 = !{!100, !6, i64 96}
!119 = !{!100, !6, i64 8}
!120 = !{!100, !6, i64 88}
!121 = !{!112, !6, i64 112}
!122 = !{!123, !13, i64 128}
!123 = !{!"CollectionPropertyIterator", !124, i64 0, !124, i64 24, !6, i64 48, !7, i64 56, !13, i64 96, !13, i64 100, !124, i64 104, !13, i64 128}
!124 = !{!"PointerRNA", !125, i64 0, !6, i64 8, !6, i64 16}
!125 = !{!"", !6, i64 0}
!126 = !{i64 0, i64 8, !5}
!127 = !{!128, !11, i64 18}
!128 = !{!"IDProperty", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 17, !11, i64 18, !7, i64 20, !13, i64 84, !129, i64 88, !13, i64 120, !13, i64 124}
!129 = !{!"IDPropertyData", !6, i64 0, !19, i64 8, !13, i64 24, !13, i64 28}
!130 = distinct !{!130, !34}
!131 = !{!112, !6, i64 80}
!132 = !{!133, !6, i64 48}
!133 = !{!"wmEventHandler", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 20, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!134 = !{!100, !6, i64 56}
!135 = !{!133, !6, i64 80}
!136 = !{!133, !6, i64 96}
!137 = !{!133, !6, i64 104}
!138 = !{!133, !6, i64 112}
!139 = !{!133, !6, i64 88}
!140 = distinct !{!140, !34}
!141 = !{!133, !6, i64 56}
!142 = distinct !{!142, !34}
!143 = !{!133, !6, i64 64}
!144 = distinct !{!144, !34}
!145 = !{!146, !13, i64 8}
!146 = !{!"UserDef", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !13, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !13, i64 8484, !13, i64 8488, !13, i64 8492, !11, i64 8496, !11, i64 8498, !13, i64 8500, !13, i64 8504, !13, i64 8508, !13, i64 8512, !13, i64 8516, !13, i64 8520, !13, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !19, i64 8536, !19, i64 8552, !19, i64 8568, !19, i64 8584, !19, i64 8600, !19, i64 8616, !19, i64 8632, !7, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !7, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !13, i64 8912, !13, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !22, i64 8956, !22, i64 8960, !13, i64 8964, !11, i64 8968, !11, i64 8970, !22, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !147, i64 8984, !7, i64 9760, !7, i64 9772, !11, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !13, i64 10896, !13, i64 10900, !22, i64 10904, !22, i64 10908, !13, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !148, i64 10928}
!147 = !{!"ColorBand", !11, i64 0, !11, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!148 = !{!"WalkNavigation", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !11, i64 24, !7, i64 26}
!149 = !{!146, !13, i64 8484}
!150 = !{!18, !6, i64 176}
!151 = distinct !{!151, !34}
!152 = !{!29, !11, i64 16}
!153 = !{!18, !11, i64 126}
!154 = !{i32 0, i32 2}
!155 = distinct !{!155, !34}
!156 = distinct !{!156, !34}
!157 = !{!65, !11, i64 228}
!158 = !{!65, !11, i64 226}
!159 = distinct !{!159, !34}
!160 = !{!18, !11, i64 132}
!161 = !{!29, !11, i64 18}
!162 = distinct !{!162, !34}
!163 = distinct !{!163, !34}
!164 = !{!29, !13, i64 20}
!165 = !{!41, !13, i64 176}
!166 = !{!29, !13, i64 24}
!167 = !{!41, !13, i64 184}
!168 = !{!29, !11, i64 44}
!169 = !{!29, !11, i64 82}
!170 = !{!29, !11, i64 46}
!171 = !{!65, !11, i64 222}
!172 = !{!18, !13, i64 160}
!173 = !{!65, !11, i64 214}
!174 = !{!54, !6, i64 248}
!175 = !{!19, !6, i64 0}
!176 = distinct !{!176, !34}
!177 = !{!18, !6, i64 208}
!178 = !{!133, !6, i64 0}
!179 = !{!133, !13, i64 16}
!180 = !{!75, !7, i64 72}
!181 = !{!75, !6, i64 96}
!182 = !{!183, !6, i64 72}
!183 = !{!"SpaceFile", !6, i64 0, !6, i64 8, !19, i64 16, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !11, i64 98, !11, i64 100, !11, i64 102}
!184 = distinct !{!184, !34}
!185 = distinct !{!185, !34}
!186 = !{!133, !6, i64 120}
!187 = !{!100, !6, i64 40}
!188 = !{!65, !6, i64 152}
!189 = !{!112, !6, i64 120}
!190 = !{!54, !6, i64 136}
!191 = !{!133, !6, i64 24}
!192 = distinct !{!192, !34}
!193 = distinct !{!193, !34}
!194 = !{!133, !6, i64 32}
!195 = !{!133, !6, i64 40}
!196 = !{!133, !6, i64 72}
!197 = !{!133, !13, i64 20}
!198 = distinct !{!198, !34}
!199 = distinct !{!199, !34}
!200 = !{!133, !6, i64 128}
!201 = distinct !{!201, !34}
!202 = distinct !{!202, !34}
!203 = !{!204, !13, i64 0}
!204 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16}
!205 = !{!204, !13, i64 4}
!206 = !{!204, !13, i64 8}
!207 = !{!204, !13, i64 12}
!208 = !{!29, !13, i64 48}
!209 = !{!204, !13, i64 16}
!210 = !{!29, !13, i64 52}
!211 = !{!212, !13, i64 0}
!212 = !{!"", !13, i64 0}
!213 = !{!18, !11, i64 116}
!214 = !{!29, !16, i64 56}
!215 = !{!216, !13, i64 0}
!216 = !{!"", !13, i64 0, !7, i64 4, !7, i64 5}
!217 = !{i32 0, i32 319}
!218 = !{!216, !7, i64 4}
!219 = !{!29, !7, i64 42}
!220 = !{!29, !11, i64 74}
!221 = !{!29, !11, i64 76}
!222 = !{!29, !11, i64 78}
!223 = !{!29, !11, i64 72}
!224 = !{!29, !11, i64 80}
!225 = !{!49, !7, i64 2080}
!226 = !{!227, !11, i64 4}
!227 = !{!"", !13, i64 0, !11, i64 4}
!228 = !{!227, !13, i64 0}
!229 = !{!18, !6, i64 184}
!230 = !{!54, !6, i64 144}
!231 = distinct !{!231, !34}
!232 = !{!146, !22, i64 10908}
!233 = !{!18, !11, i64 104}
!234 = !{!18, !11, i64 106}
!235 = distinct !{!235, !34}
!236 = !{!29, !13, i64 64}
!237 = !{!29, !13, i64 68}
!238 = !{!146, !11, i64 8478}
!239 = !{!146, !22, i64 8956}
!240 = !{!146, !22, i64 8960}
!241 = !{!146, !13, i64 8964}
!242 = !{!243, !22, i64 24}
!243 = !{!"", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !13, i64 28}
!244 = !{!245, !22, i64 24}
!245 = !{!"wmNDOFMotionData", !7, i64 0, !7, i64 12, !22, i64 24, !13, i64 28}
!246 = !{!243, !13, i64 28}
!247 = !{!245, !13, i64 28}
!248 = !{!54, !7, i64 344}
!249 = !{!24, !22, i64 4}
!250 = !{!24, !22, i64 8}
!251 = !{!112, !6, i64 96}
!252 = !{!112, !11, i64 160}
!253 = !{!100, !6, i64 48}
!254 = !{!124, !6, i64 16}
!255 = !{!124, !6, i64 8}
!256 = !{!123, !6, i64 120}
!257 = !{!258, !6, i64 80}
!258 = !{!"wmOperatorTypeMacro", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88}
!259 = !{!258, !6, i64 0}
!260 = distinct !{!260, !34}
!261 = !{!258, !6, i64 88}
!262 = distinct !{!262, !34}
!263 = !{!41, !6, i64 328}
!264 = distinct !{!264, !34}
!265 = !{!266, !6, i64 120}
!266 = !{!"wmKeyMap", !6, i64 0, !6, i64 8, !19, i64 16, !19, i64 32, !7, i64 48, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !6, i64 120, !6, i64 128}
!267 = !{!29, !6, i64 88}
!268 = !{!269, !6, i64 176}
!269 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !11, i64 164, !11, i64 166, !11, i64 168, !11, i64 170, !11, i64 172, !11, i64 174, !6, i64 176}
!270 = !{i32 0, i32 6}
!271 = distinct !{!271, !34}
!272 = !{!273, !6, i64 16}
!273 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !11, i64 56}
!274 = distinct !{!274, !34}
!275 = !{!273, !6, i64 24}
!276 = !{!273, !6, i64 32}
!277 = !{!273, !11, i64 56}
!278 = !{!273, !6, i64 48}
!279 = distinct !{!279, !34}
!280 = distinct !{!280, !34}
!281 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12}
!282 = !{!44, !13, i64 0}
!283 = !{!44, !13, i64 8}
!284 = !{!269, !11, i64 154}
!285 = !{!269, !11, i64 168}
!286 = !{!269, !11, i64 156}
!287 = !{!269, !11, i64 158}
!288 = !{!269, !11, i64 160}
!289 = !{!269, !11, i64 162}
!290 = !{!269, !11, i64 164}
!291 = !{!269, !11, i64 166}
!292 = !{!100, !6, i64 64}
!293 = !{!100, !6, i64 128}
!294 = distinct !{!294, !34}
!295 = !{!269, !11, i64 152}
!296 = !{!297, !6, i64 24}
!297 = !{!"wmPaintCursor", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!298 = !{!297, !6, i64 0}
