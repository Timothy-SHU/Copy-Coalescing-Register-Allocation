; ModuleID = 'blender/source/blender/blenkernel/intern/blender.c'
source_filename = "blender/source/blender/blenkernel/intern/blender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapDiffItem = type { ptr, ptr, ptr, ptr }
%struct.bAddon = type { ptr, ptr, [64 x i8], ptr }
%struct.uiFont = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16 }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.BlendFileData = type { ptr, ptr, i32, i32, i32, i32, [1024 x i8], ptr, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.UndoElem = type { ptr, ptr, [1024 x i8], [64 x i8], %struct.MemFile, i64 }
%struct.MemFile = type { %struct.ListBase, i32 }
%struct.MemFileChunk = type { ptr, ptr, ptr, i32, i32 }
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

@versionstr = dso_local global [48 x i8] zeroinitializer, align 16
@G = dso_local local_unnamed_addr global %struct.Global zeroinitializer, align 8
@U = dso_local global %struct.UserDef zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"v%d.%02d.%d\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"startup.blend\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"read blend: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Loading '%s' failed: \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Loading failed: \00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"empty main\00", align 1
@blender_test_break_cb = internal unnamed_addr global ptr null, align 8
@undobase = internal global %struct.ListBase zeroinitializer, align 8
@curundo = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"undo file\00", align 1
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"undo %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"redo %s\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"No undo buffer to save recovery file\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Unable to save '%s': %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Unknown error opening file\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Unknown error writing file\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"copybuffer\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"File written by newer Blender binary (%d.%d), expect loss of data!\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_blender() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_main_free(ptr noundef %1) #16
  store ptr null, ptr @G, align 8, !tbaa !34
  tail call void @BKE_spacetypes_free() #16
  tail call void @IMB_exit() #16
  tail call void @BKE_images_exit() #16
  tail call void @DAG_exit() #16
  tail call void @BKE_brush_system_exit() #16
  tail call void @RE_exit_texture_rng() #16
  tail call void @BLI_callback_global_finalize() #16
  tail call void @BKE_sequencer_cache_destruct() #16
  tail call void @IMB_moviecache_destruct() #16
  tail call void @free_nodesystem() #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_spacetypes_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_images_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_brush_system_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_exit_texture_rng() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_callback_global_finalize() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_sequencer_cache_destruct() local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_moviecache_destruct() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_nodesystem() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initglobals() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2320) @G, i8 0, i64 2320, i1 false)
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !42
  %1 = tail call ptr @BKE_main_new() #16
  store ptr %1, ptr @G, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false) #16
  %2 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @versionstr, i64 noundef 48, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 72, i32 noundef 1) #16
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %4 = or i32 %3, 8192
  store i32 %4, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @BKE_main_new() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_userdef_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %0, %34
  %4 = phi ptr [ %35, %34 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3, %23
  %9 = phi ptr [ %24, %23 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call fastcc void @keymap_item_free(ptr noundef nonnull %11) #17
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %15 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void %14(ptr noundef %15) #16
  br label %16

16:                                               ; preds = %13, %8
  %17 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call fastcc void @keymap_item_free(ptr noundef nonnull %18) #17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %22 = load ptr, ptr %17, align 8, !tbaa !51
  tail call void %21(ptr noundef %22) #16
  br label %23

23:                                               ; preds = %16, %20
  %24 = load ptr, ptr %9, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %8, !llvm.loop !52

26:                                               ; preds = %23, %3
  %27 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %32, %30 ], [ %28, %26 ]
  tail call fastcc void @keymap_item_free(ptr noundef nonnull %31) #17
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30, !llvm.loop !54

34:                                               ; preds = %30, %26
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #16
  tail call void @BLI_freelistN(ptr noundef nonnull %27) #16
  %35 = load ptr, ptr %4, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %3, !llvm.loop !55

37:                                               ; preds = %34, %0
  %38 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), align 8, !tbaa !56
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %52, %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !48
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %55

43:                                               ; preds = %37, %52
  %44 = phi ptr [ %45, %52 ], [ %38, %37 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.bAddon, ptr %44, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  tail call void @IDP_FreeProperty(ptr noundef nonnull %47) #16
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %51 = load ptr, ptr %46, align 8, !tbaa !59
  tail call void %50(ptr noundef %51) #16
  br label %52

52:                                               ; preds = %49, %43
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %53(ptr noundef nonnull %44) #16
  %54 = icmp eq ptr %45, null
  br i1 %54, label %40, label %43, !llvm.loop !60

55:                                               ; preds = %40, %55
  %56 = phi ptr [ %60, %55 ], [ %41, %40 ]
  %57 = getelementptr inbounds %struct.uiFont, ptr %56, i64 0, i32 3
  %58 = load i16, ptr %57, align 8, !tbaa !61
  %59 = sext i16 %58 to i32
  tail call void @BLF_unload_id(i32 noundef %59) #16
  %60 = load ptr, ptr %56, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %55, !llvm.loop !63

62:                                               ; preds = %55, %40
  tail call void @BLF_default_set(i32 noundef -1) #16
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44)) #16
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40)) #16
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39)) #16
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38)) #16
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42)) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keymap_item_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #16
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %7 = load ptr, ptr %2, align 8, !tbaa !65
  tail call void %6(ptr noundef %7) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %13(ptr noundef nonnull %10) #16
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_unload_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_default_set(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_userdef_state() local_unnamed_addr #0 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  %2 = fcmp oeq float %1, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi float [ 1.000000e+00, %3 ], [ %1, %0 ]
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !69
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fptosi float %8 to i32
  tail call void @BLF_default_dpi(i32 noundef %9) #16
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !69
  %12 = sitofp i32 %11 to float
  %13 = fmul float %10, %12
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 2.000000e+01, float 3.600000e+01)
  %15 = fdiv float %14, 7.200000e+01
  %16 = fptosi float %15 to i16
  store i16 %16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @BLF_default_dpi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_read_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.2) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1) #17
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call ptr @BLO_read_from_file(ptr noundef %1, ptr noundef %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BlendFileData, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 1, i32 2
  %16 = load ptr, ptr %9, align 8, !tbaa !73
  tail call fastcc void @handle_subversion_warning(ptr noundef %16, ptr noundef %2) #17
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %9) #17
  br label %18

17:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @BKE_reports_prependf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %18

18:                                               ; preds = %11, %17
  %19 = phi i32 [ %15, %11 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLO_read_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_subversion_warning(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 4, !tbaa !75
  %5 = icmp sgt i16 %4, 272
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !78
  br label %15

9:                                                ; preds = %2
  %10 = icmp eq i16 %4, 272
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !78
  %14 = icmp sgt i16 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %6, %11
  %16 = phi i16 [ %8, %6 ], [ %13, %11 ]
  %17 = zext nneg i16 %4 to i32
  %18 = sext i16 %16 to i32
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %18) #16
  br label %19

19:                                               ; preds = %15, %11, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_app_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 26
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %7) #17, !range !80
  %9 = icmp eq i8 %8, 0
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  br i1 %9, label %13, label %11

11:                                               ; preds = %2
  %12 = and i32 %10, 8388608
  br label %20

13:                                               ; preds = %2
  %14 = and i32 %10, 1024
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %10, 8388608
  tail call void @RE_FreeAllRenderResults() #16
  %17 = load ptr, ptr %1, align 8, !tbaa !73
  tail call fastcc void @clean_paths(ptr noundef %17) #17
  br i1 %15, label %56, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !73
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi ptr [ %6, %11 ], [ %19, %18 ]
  %22 = phi i32 [ %12, %11 ], [ %16, %18 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %23 = load ptr, ptr @G, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !82
  %25 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !82
  %26 = load ptr, ptr %1, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.Main, ptr %26, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %28 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !82
  %29 = load ptr, ptr %1, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !82
  %31 = load ptr, ptr %1, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.Main, ptr %31, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %33 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !82
  %34 = load ptr, ptr %1, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !82
  %36 = load ptr, ptr %1, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %38 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %39 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %20
  %43 = load ptr, ptr %1, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.Main, ptr %43, i64 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call ptr @BKE_scene_add(ptr noundef nonnull %43, ptr noundef nonnull @.str.18) #16
  br label %49

49:                                               ; preds = %20, %47, %42
  %50 = phi ptr [ %48, %47 ], [ %45, %42 ], [ %40, %20 ]
  %51 = icmp eq ptr %38, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 5
  store ptr %50, ptr %53, align 8, !tbaa !85
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %1, align 8, !tbaa !73
  tail call void @blo_lib_link_screen_restore(ptr noundef %55, ptr noundef %38, ptr noundef %50) #16
  br label %56

56:                                               ; preds = %54, %13
  %57 = phi i1 [ false, %54 ], [ true, %13 ]
  %58 = phi i32 [ %22, %54 ], [ %16, %13 ]
  %59 = phi ptr [ %50, %54 ], [ null, %13 ]
  tail call fastcc void @clear_global() #17
  tail call void @RNA_property_update_cache_free() #16
  %60 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %60, ptr @G, align 8, !tbaa !34
  tail call void @CTX_data_main_set(ptr noundef %0, ptr noundef %60) #16
  %61 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @sound_init_main(ptr noundef %61) #16
  %62 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !71
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  tail call void @BKE_userdef_free() #17
  %66 = load ptr, ptr %62, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10960) @U, ptr noundef nonnull align 8 dereferenceable(10960) %66, i64 10960, i1 false), !tbaa.struct !88
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %68 = load ptr, ptr %62, align 8, !tbaa !71
  tail call void %67(ptr noundef %68) #16
  br label %69

69:                                               ; preds = %65, %56
  br i1 %57, label %71, label %70

70:                                               ; preds = %69
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %59) #16
  br label %88

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !93
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 11), align 2, !tbaa !94
  %75 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !95
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 12), align 8, !tbaa !96
  %78 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !97
  store i32 %79, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  %80 = load ptr, ptr @G, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.Main, ptr %80, i64 0, i32 40
  %82 = load ptr, ptr %81, align 8, !tbaa !98
  tail call void @CTX_wm_manager_set(ptr noundef %0, ptr noundef %82) #16
  %83 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !99
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef %84) #16
  %85 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %86) #16
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #16
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #16
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #16
  %87 = load ptr, ptr %85, align 8, !tbaa !83
  br label %88

88:                                               ; preds = %71, %70
  %89 = phi ptr [ %59, %70 ], [ %87, %71 ]
  %90 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load ptr, ptr @G, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.Main, ptr %93, i64 0, i32 11
  %95 = load ptr, ptr %94, align 8, !tbaa !84
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = tail call ptr @BKE_scene_add(ptr noundef nonnull %93, ptr noundef nonnull @.str.19) #16
  %99 = load ptr, ptr @G, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.Main, ptr %99, i64 0, i32 11
  %101 = load ptr, ptr %100, align 8, !tbaa !84
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi ptr [ %101, %97 ], [ %95, %92 ]
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %103) #16
  %104 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %105 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  %106 = getelementptr inbounds %struct.bScreen, ptr %105, i64 0, i32 5
  store ptr %104, ptr %106, align 8, !tbaa !85
  %107 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  br label %108

108:                                              ; preds = %102, %88
  %109 = phi ptr [ %107, %102 ], [ %89, %88 ]
  %110 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %111 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !100
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = and i32 %112, -24579
  %116 = and i32 %110, 24578
  %117 = or disjoint i32 %115, %116
  store i32 %117, ptr %111, align 4, !tbaa !100
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi i32 [ %117, %114 ], [ %110, %108 ]
  store i32 %119, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %120 = load ptr, ptr @G, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.Main, ptr %120, i64 0, i32 3
  %122 = load i16, ptr %121, align 8, !tbaa !101
  %123 = icmp slt i16 %122, 250
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  tail call void @do_versions_ipos_to_animato(ptr noundef nonnull %120) #16
  %125 = load ptr, ptr @G, align 8, !tbaa !34
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %120, %118 ]
  %128 = getelementptr inbounds %struct.Main, ptr %127, i64 0, i32 9
  store i16 0, ptr %128, align 8, !tbaa !102
  %129 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 6
  %130 = load i8, ptr %129, align 8, !tbaa !90
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.Main, ptr %127, i64 0, i32 2
  store i8 0, ptr %133, align 8, !tbaa !90
  br label %145

134:                                              ; preds = %126
  %135 = icmp ne i32 %58, 0
  %136 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8
  %137 = icmp ne i8 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  store i16 1, ptr %128, align 8, !tbaa !102
  %140 = getelementptr inbounds %struct.Main, ptr %127, i64 0, i32 2
  %141 = icmp eq ptr %140, %129
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = tail call ptr @BLI_strncpy(ptr noundef nonnull %140, ptr noundef nonnull %129, i64 noundef 1024) #16
  %144 = load ptr, ptr @G, align 8, !tbaa !34
  br label %145

145:                                              ; preds = %134, %142, %139, %132
  %146 = phi ptr [ %127, %134 ], [ %144, %142 ], [ %127, %139 ], [ %127, %132 ]
  br i1 %57, label %147, label %173

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.Main, ptr %146, i64 0, i32 40
  %149 = load ptr, ptr %148, align 8, !tbaa !98
  %150 = icmp eq ptr %149, null
  br i1 %150, label %173, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.wmWindowManager, ptr %149, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  %154 = icmp eq ptr %153, null
  br i1 %154, label %173, label %155

155:                                              ; preds = %151, %168
  %156 = phi ptr [ %169, %168 ], [ %153, %151 ]
  %157 = getelementptr inbounds %struct.wmWindow, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !103
  %159 = icmp eq ptr %158, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.bScreen, ptr %158, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !85
  %163 = icmp eq ptr %162, null
  %164 = icmp eq ptr %162, %109
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_scene_set_background(ptr noundef %167, ptr noundef nonnull %162) #16
  br label %168

168:                                              ; preds = %155, %160, %166
  %169 = load ptr, ptr %156, align 8, !tbaa !48
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %155, !llvm.loop !105

171:                                              ; preds = %168
  %172 = load ptr, ptr @G, align 8, !tbaa !34
  br label %173

173:                                              ; preds = %171, %151, %147, %145
  %174 = phi ptr [ %172, %171 ], [ %146, %151 ], [ %146, %147 ], [ %146, %145 ]
  tail call void @BKE_scene_set_background(ptr noundef %174, ptr noundef %109) #16
  br i1 %9, label %175, label %177

175:                                              ; preds = %173
  %176 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @IMB_colormanagement_check_file_config(ptr noundef %176) #16
  br label %177

177:                                              ; preds = %175, %173
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %178(ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_reports_prependf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_read_file_from_memory(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BLO_read_from_memory(ptr noundef %1, i32 noundef %2, ptr noundef %3) #16
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void @BLO_update_defaults_startup_blend(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %10, %8
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %6) #17
  br label %14

13:                                               ; preds = %5
  tail call void @BKE_reports_prepend(ptr noundef %3, ptr noundef nonnull @.str.6) #16
  br label %14

14:                                               ; preds = %13, %12
  %15 = zext i1 %7 to i8
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @BLO_read_from_memory(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_update_defaults_startup_blend(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reports_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_read_file_from_memfile(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %5 = load ptr, ptr @G, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = tail call ptr @BLO_read_from_memfile(ptr noundef %4, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #16
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %19, %9
  %15 = phi ptr [ %10, %9 ], [ %22, %19 ]
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %26

19:                                               ; preds = %9, %19
  %20 = phi ptr [ %24, %19 ], [ %12, %9 ]
  %21 = phi ptr [ %22, %19 ], [ %10, %9 ]
  tail call void @BKE_libblock_free_ex(ptr noundef nonnull %21, ptr noundef nonnull %20, i8 noundef zeroext 1) #16
  %22 = load ptr, ptr %7, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 40
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = icmp eq ptr %24, null
  br i1 %25, label %14, label %19, !llvm.loop !107

26:                                               ; preds = %14, %26
  %27 = phi ptr [ %31, %26 ], [ %17, %14 ]
  %28 = phi ptr [ %29, %26 ], [ %15, %14 ]
  tail call void @BKE_libblock_free_ex(ptr noundef nonnull %28, ptr noundef nonnull %27, i8 noundef zeroext 1) #16
  %29 = load ptr, ptr %7, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !108

33:                                               ; preds = %26, %14
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %7) #17
  br label %35

34:                                               ; preds = %3
  tail call void @BKE_reports_prepend(ptr noundef %2, ptr noundef nonnull @.str.6) #16
  br label %35

35:                                               ; preds = %34, %33
  %36 = zext i1 %8 to i8
  ret i8 %36
}

; Function Attrs: optsize
declare ptr @BLO_read_from_memfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_libblock_free_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_read_file_userdef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLO_read_from_file(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BlendFileData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void @BKE_userdef_free() #17
  %10 = load ptr, ptr %6, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10960) @U, ptr noundef nonnull align 8 dereferenceable(10960) %10, i64 10960, i1 false), !tbaa.struct !88
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %12 = load ptr, ptr %6, align 8, !tbaa !71
  tail call void %11(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 2, %9 ], [ 0, %5 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void @BKE_main_free(ptr noundef %15) #16
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %16(ptr noundef nonnull %3) #16
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %14, %13 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_write_file_userdef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %4 = tail call ptr %3(i64 noundef 1904, ptr noundef nonnull @.str.8) #16
  %5 = tail call i32 @BLO_write_file(ptr noundef %4, ptr noundef %0, i32 noundef 512, ptr noundef %1, ptr noundef null) #16
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %8(ptr noundef %4) #16
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_blender_test_break_cb(ptr noundef %0) local_unnamed_addr #9 {
  store ptr %0, ptr @blender_test_break_cb, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @blender_test_break() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !109
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr @blender_test_break_cb, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void %3() #16
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !110
  %9 = icmp eq i8 %8, 1
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_write_undo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !111
  %4 = and i32 %3, 8192
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %105, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !112
  %11 = load ptr, ptr @curundo, align 8, !tbaa !48
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %10, %9 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.UndoElem, ptr %14, i64 0, i32 4
  tail call void @BLO_free_memfile(ptr noundef nonnull %15) #16
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %16(ptr noundef %14) #16
  %17 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !112
  %18 = load ptr, ptr @curundo, align 8, !tbaa !48
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %13, !llvm.loop !113

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %22 = tail call ptr %21(i64 noundef 1136, ptr noundef nonnull @.str.9) #16
  store ptr %22, ptr @curundo, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.UndoElem, ptr %22, i64 0, i32 3
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %1, i64 noundef 64) #16
  tail call void @BLI_addtail(ptr noundef nonnull @undobase, ptr noundef %22) #16
  %25 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %20
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !114
  %29 = sext i16 %28 to i32
  br label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %25, %27 ], [ %40, %38 ]
  %32 = phi i32 [ 0, %27 ], [ %33, %38 ]
  %33 = add nuw nsw i32 %32, 1
  %34 = icmp eq i32 %33, %29
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr @undobase, align 8, !tbaa !115
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %50, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.UndoElem, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %30, !llvm.loop !116

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %48, %42 ], [ %36, %35 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %43) #16
  %44 = getelementptr inbounds %struct.UndoElem, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %43, align 8, !tbaa !117
  %46 = getelementptr inbounds %struct.UndoElem, ptr %45, i64 0, i32 4
  tail call void @BLO_merge_memfile(ptr noundef nonnull %44, ptr noundef nonnull %46) #16
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %47(ptr noundef nonnull %43) #16
  %48 = load ptr, ptr @undobase, align 8, !tbaa !115
  %49 = icmp eq ptr %48, %31
  br i1 %49, label %50, label %42, !llvm.loop !120

50:                                               ; preds = %38, %42, %20, %35
  %51 = load ptr, ptr @curundo, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.UndoElem, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !121
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.UndoElem, ptr %53, i64 0, i32 4
  %56 = select i1 %54, ptr null, ptr %55
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %58 = tail call i64 %57() #16
  %59 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %60 = load ptr, ptr @curundo, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.UndoElem, ptr %60, i64 0, i32 4
  %62 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  %63 = tail call i32 @BLO_write_file_mem(ptr noundef %59, ptr noundef %56, ptr noundef nonnull %61, i32 noundef %62) #16
  %64 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %65 = tail call i64 %64() #16
  %66 = sub i64 %65, %58
  %67 = load ptr, ptr @curundo, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.UndoElem, ptr %67, i64 0, i32 5
  store i64 %66, ptr %68, align 8, !tbaa !122
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !123
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %50
  %72 = sext i16 %69 to i64
  %73 = shl nsw i64 %72, 20
  %74 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !112
  br label %75

75:                                               ; preds = %83, %71
  %76 = phi ptr [ %74, %71 ], [ %81, %83 ]
  %77 = phi i64 [ 0, %71 ], [ %86, %83 ]
  %78 = icmp eq ptr %76, null
  br i1 %78, label %105, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.UndoElem, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !121
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.UndoElem, ptr %76, i64 0, i32 5
  %85 = load i64, ptr %84, align 8, !tbaa !122
  %86 = add i64 %85, %77
  %87 = icmp ugt i64 %86, %73
  br i1 %87, label %88, label %75, !llvm.loop !124

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.UndoElem, ptr %81, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !121
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr %76, ptr %81
  br label %93

93:                                               ; preds = %79, %88
  %94 = phi ptr [ %92, %88 ], [ %76, %79 ]
  %95 = load ptr, ptr @undobase, align 8, !tbaa !115
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %105, label %97

97:                                               ; preds = %93, %97
  %98 = phi ptr [ %103, %97 ], [ %95, %93 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %98) #16
  %99 = getelementptr inbounds %struct.UndoElem, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %98, align 8, !tbaa !117
  %101 = getelementptr inbounds %struct.UndoElem, ptr %100, i64 0, i32 4
  tail call void @BLO_merge_memfile(ptr noundef nonnull %99, ptr noundef nonnull %101) #16
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %102(ptr noundef nonnull %98) #16
  %103 = load ptr, ptr @undobase, align 8, !tbaa !115
  %104 = icmp eq ptr %103, %94
  br i1 %104, label %105, label %97, !llvm.loop !125

105:                                              ; preds = %75, %97, %93, %50, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_free_memfile(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_merge_memfile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLO_write_file_mem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @curundo, align 8, !tbaa !48
  switch i32 %1, label %23 [
    i32 0, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %2
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef %3) #17
  br label %37

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !126
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 3
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %16) #17
  %18 = load ptr, ptr @curundo, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.UndoElem, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi ptr [ %20, %15 ], [ %9, %11 ]
  store ptr %22, ptr @curundo, align 8, !tbaa !48
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef %22) #17
  br label %37

23:                                               ; preds = %2
  %24 = icmp eq ptr %3, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 8, !tbaa !117
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef nonnull %26) #17
  %29 = load ptr, ptr @curundo, align 8, !tbaa !48
  %30 = load ptr, ptr %29, align 8, !tbaa !117
  store ptr %30, ptr @curundo, align 8, !tbaa !48
  %31 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !126
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.UndoElem, ptr %30, i64 0, i32 3
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %35) #17
  br label %37

37:                                               ; preds = %5, %7, %21, %28, %34, %23, %25, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_undosave(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #19
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #16
  tail call void @WM_jobs_kill_all_except(ptr noundef %4, ptr noundef %5) #16
  %6 = load ptr, ptr @G, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 1024) #16
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  %10 = or i32 %9, 1024
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  %11 = getelementptr inbounds %struct.UndoElem, ptr %1, i64 0, i32 4
  %12 = call zeroext i8 @BKE_read_file_from_memfile(ptr noundef %0, ptr noundef nonnull %11, ptr noundef null) #17, !range !80
  %13 = load ptr, ptr @G, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 1024) #16
  store i32 %9, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !81
  %16 = icmp eq i8 %12, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr @G, align 8, !tbaa !34
  call void @DAG_on_visible_update(ptr noundef %18, i8 noundef zeroext 0) #16
  br label %19

19:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_reset_undo() local_unnamed_addr #0 {
  %1 = load ptr, ptr @undobase, align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  tail call void @BLO_free_memfile(ptr noundef nonnull %5) #16
  %6 = load ptr, ptr %4, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !128

8:                                                ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undobase) #16
  store ptr null, ptr @curundo, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_undo_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @undobase, i32 noundef %1) #16
  store ptr %3, ptr @curundo, align 8, !tbaa !48
  tail call void @BKE_undo_step(ptr noundef %0, i32 noundef 0) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_undo_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_rfindstring(ptr noundef nonnull @undobase, ptr noundef %1, i32 noundef 1040) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store ptr %7, ptr @curundo, align 8, !tbaa !48
  tail call void @BKE_undo_step(ptr noundef %0, i32 noundef 0) #17
  br label %10

10:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rfindstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_undo_valid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BLI_rfindstring(ptr noundef nonnull @undobase, ptr noundef nonnull %0, i32 noundef 1040) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 1
  br label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr @undobase, align 8, !tbaa !115
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ null, %6 ], [ %9, %8 ]
  %12 = phi ptr [ %7, %6 ], [ getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp ne ptr %13, %11
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ 0, %3 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_undo_get_name(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @undobase, i32 noundef %0) #16
  %4 = icmp ne ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !89
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %3, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @curundo, align 8
  %10 = icmp eq ptr %3, %9
  %11 = select i1 %4, i1 %10, i1 false
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, ptr %1, align 4, !tbaa !89
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 3
  br label %15

15:                                               ; preds = %6, %13
  %16 = phi ptr [ %14, %13 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_undo_save_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !111
  %3 = and i32 %2, 8192
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @curundo, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !48
  %10 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 37, i64 1, ptr %9) #20
  br label %53

11:                                               ; preds = %5
  %12 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 131649, i32 noundef 438) #16
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !48
  %16 = tail call ptr @__errno_location() #21
  %17 = load i32, ptr %16, align 4, !tbaa !89
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @strerror(i32 noundef %17) #16
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ @.str.14, %14 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef %22) #22
  br label %53

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.UndoElem, ptr %6, i64 0, i32 4
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ %25, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MemFileChunk, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct.MemFileChunk, ptr %28, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !131
  %35 = zext i32 %34 to i64
  %36 = tail call i64 @write(i32 noundef %12, ptr noundef %32, i64 noundef %35) #16
  %37 = load i32, ptr %33, align 4, !tbaa !131
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %26, label %40, !llvm.loop !132

40:                                               ; preds = %30
  %41 = tail call i32 @close(i32 noundef %12) #16
  %42 = load ptr, ptr @stderr, align 8, !tbaa !48
  %43 = tail call ptr @__errno_location() #21
  %44 = load i32, ptr %43, align 4, !tbaa !89
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @strerror(i32 noundef %44) #16
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %47, %46 ], [ @.str.15, %40 ]
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef %49) #22
  br label %53

51:                                               ; preds = %26
  %52 = tail call i32 @close(i32 noundef %12) #16
  br label %53

53:                                               ; preds = %51, %1, %48, %21, %8
  %54 = phi i8 [ 0, %8 ], [ 0, %21 ], [ 0, %48 ], [ 0, %1 ], [ 1, %51 ]
  ret i8 %54
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_undo_get_main(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr @curundo, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLO_read_from_memfile(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !73
  %10 = icmp eq ptr %0, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BlendFileData, ptr %6, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  store ptr %13, ptr %0, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %15(ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %9, %14 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_copybuffer_begin(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_main_id_flag_all(ptr noundef %0, i16 noundef signext 1032, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_id_flag_all(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_copybuffer_tag_ID(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !133
  %4 = or i16 %3, 1032
  store i16 %4, ptr %2, align 2, !tbaa !133
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_copybuffer_save(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [35 x ptr], align 16
  %4 = alloca [35 x ptr], align 16
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %6 = tail call ptr %5(i64 noundef 1904, ptr noundef nonnull @.str.16) #16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #19
  %7 = load ptr, ptr @G, align 8, !tbaa !34
  %8 = tail call ptr @BKE_bpath_list_backup(ptr noundef %7, i32 noundef 20) #16
  tail call void @BLO_main_expander(ptr noundef nonnull @copybuffer_doit) #16
  %9 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BLO_expand_main(ptr noundef null, ptr noundef %9) #16
  %10 = load ptr, ptr @G, align 8, !tbaa !34
  %11 = call i32 @set_listbasepointers(ptr noundef %10, ptr noundef nonnull %4) #16
  %12 = call i32 @set_listbasepointers(ptr noundef %6, ptr noundef nonnull %3) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = sext i32 %12 to i64
  br label %19

16:                                               ; preds = %36, %19
  %17 = and i64 %21, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %38, label %19, !llvm.loop !134

19:                                               ; preds = %14, %16
  %20 = phi i64 [ %15, %14 ], [ %21, %16 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %26, null
  br i1 %27, label %16, label %28

28:                                               ; preds = %19, %36
  %29 = phi ptr [ %30, %36 ], [ %26, %19 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %32 = load i16, ptr %31, align 2, !tbaa !133
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %29) #16
  call void @BLI_addtail(ptr noundef %23, ptr noundef nonnull %29) #16
  br label %36

36:                                               ; preds = %28, %35
  %37 = icmp eq ptr %30, null
  br i1 %37, label %16, label %28, !llvm.loop !136

38:                                               ; preds = %16, %2
  %39 = call i32 @BLO_write_file(ptr noundef %6, ptr noundef %0, i32 noundef 16777216, ptr noundef %1, ptr noundef null) #16
  %40 = load ptr, ptr @G, align 8, !tbaa !34
  %41 = call i32 @set_listbasepointers(ptr noundef %40, ptr noundef nonnull %3) #16
  %42 = call i32 @set_listbasepointers(ptr noundef %6, ptr noundef nonnull %4) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = sext i32 %42 to i64
  br label %49

46:                                               ; preds = %58, %49
  %47 = and i64 %51, 4294967295
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %62, label %49, !llvm.loop !137

49:                                               ; preds = %44, %46
  %50 = phi i64 [ %45, %44 ], [ %51, %46 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %51
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = call ptr @BLI_pophead(ptr noundef %55) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %46, label %58

58:                                               ; preds = %49, %58
  %59 = phi ptr [ %60, %58 ], [ %56, %49 ]
  call void @BLI_addtail(ptr noundef %53, ptr noundef nonnull %59) #16
  call void @id_sort_by_name(ptr noundef %53, ptr noundef nonnull %59) #16
  %60 = call ptr @BLI_pophead(ptr noundef %55) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %46, label %58, !llvm.loop !138

62:                                               ; preds = %46, %38
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %63(ptr noundef %6) #16
  %64 = load ptr, ptr @G, align 8, !tbaa !34
  call void @BKE_main_id_flag_all(ptr noundef %64, i16 noundef signext 1032, i8 noundef zeroext 0) #16
  %65 = icmp eq ptr %8, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @G, align 8, !tbaa !34
  call void @BKE_bpath_list_restore(ptr noundef %67, i32 noundef 20, ptr noundef nonnull %8) #16
  call void @BKE_bpath_list_free(ptr noundef nonnull %8) #16
  br label %68

68:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #19
  ret i32 %39
}

; Function Attrs: optsize
declare ptr @BKE_bpath_list_backup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_main_expander(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @copybuffer_doit(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #13 !PGOFuncName !139 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !133
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = or i16 %7, 1032
  store i16 %11, ptr %6, align 2, !tbaa !133
  br label %12

12:                                               ; preds = %5, %10, %3
  ret void
}

; Function Attrs: optsize
declare void @BLO_expand_main(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_sort_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bpath_list_restore(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bpath_list_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_copybuffer_paste(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %7 = tail call ptr @BLO_blendhandle_from_file(ptr noundef %1, ptr noundef %2) #16
  store ptr %7, ptr %4, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  tail call void @BKE_scene_base_deselect_all(ptr noundef %6) #16
  tail call void @BKE_main_id_flag_all(ptr noundef %5, i16 noundef signext 2048, i8 noundef zeroext 1) #16
  %10 = call ptr @BLO_library_append_begin(ptr noundef %5, ptr noundef nonnull %4, ptr noundef %1) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !48
  call void @BLO_library_append_all(ptr noundef %10, ptr noundef %11) #16
  call void @BLO_library_append_end(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0, i16 noundef signext 0) #16
  call void @BKE_main_lib_objects_recalc_all(ptr noundef %5) #16
  call void @IMB_colormanagement_check_file_config(ptr noundef %5) #16
  %12 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 12
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef %1, i32 noundef 1160) #16
  call void @BKE_library_make_local(ptr noundef %5, ptr noundef %13, i8 noundef zeroext 1) #16
  call void @BKE_main_id_flag_all(ptr noundef %5, i16 noundef signext 2048, i8 noundef zeroext 0) #16
  call void @DAG_relations_tag_update(ptr noundef %5) #16
  %14 = load ptr, ptr %4, align 8, !tbaa !48
  call void @BLO_blendhandle_close(ptr noundef %14) #16
  br label %15

15:                                               ; preds = %3, %9
  %16 = phi i32 [ 1, %9 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLO_library_append_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_library_append_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_library_append_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_main_lib_objects_recalc_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_check_file_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !115
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @RE_FreeAllRenderResults() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_paths(ptr noundef %0) unnamed_addr #0 !PGOFuncName !141 {
  tail call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @clean_paths_visit_cb, i32 noundef 16, ptr noundef null) #16
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 84
  tail call void @BLI_path_native_slash(ptr noundef nonnull %7) #16
  %8 = load ptr, ptr %6, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !142

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @blo_lib_link_screen_restore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_global() unnamed_addr #0 !PGOFuncName !143 {
  %1 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_main_free(ptr noundef %1) #16
  store ptr null, ptr @G, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_update_cache_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_main_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_init_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @do_versions_ipos_to_animato(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_bpath_traverse_main(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @clean_paths_visit_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !144 {
  %4 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #16
  tail call void @BLI_path_native_slash(ptr noundef %1) #16
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #18
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare void @BLI_path_native_slash(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @WM_jobs_kill_all_except(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { cold optsize }

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
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !41, i64 16}
!43 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !45, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !46, i64 10928}
!44 = !{!"float", !37, i64 0}
!45 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!46 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !37, i64 26}
!47 = !{!35, !41, i64 2096}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !36, i64 24}
!50 = !{!"wmKeyMapDiffItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!51 = !{!50, !36, i64 16}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = !{!43, !36, i64 8616}
!57 = !{!58, !36, i64 0}
!58 = !{!"bAddon", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80}
!59 = !{!58, !36, i64 80}
!60 = distinct !{!60, !53}
!61 = !{!62, !40, i64 1040}
!62 = !{!"uiFont", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046}
!63 = distinct !{!63, !53}
!64 = !{!"blender.c:keymap_item_free"}
!65 = !{!66, !36, i64 80}
!66 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176}
!67 = !{!66, !36, i64 176}
!68 = !{!43, !44, i64 10908}
!69 = !{!43, !41, i64 8524}
!70 = !{!43, !40, i64 8948}
!71 = !{!72, !36, i64 8}
!72 = !{!"BlendFileData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 1056, !36, i64 1064, !41, i64 1072}
!73 = !{!72, !36, i64 0}
!74 = !{!"blender.c:handle_subversion_warning"}
!75 = !{!76, !40, i64 1044}
!76 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !77, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!77 = !{!"long", !37, i64 0}
!78 = !{!76, !40, i64 1046}
!79 = !{!"blender.c:setup_app_data"}
!80 = !{i8 0, i8 2}
!81 = !{!35, !41, i64 2108}
!82 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!83 = !{!72, !36, i64 1064}
!84 = !{!76, !36, i64 1088}
!85 = !{!86, !36, i64 184}
!86 = !{!"bScreen", !87, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 240}
!87 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!88 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 4, !89, i64 20, i64 768, !90, i64 788, i64 768, !90, i64 1556, i64 1024, !90, i64 2580, i64 768, !90, i64 3348, i64 768, !90, i64 4116, i64 768, !90, i64 4884, i64 768, !90, i64 5652, i64 768, !90, i64 6420, i64 1024, !90, i64 7444, i64 1024, !90, i64 8468, i64 4, !89, i64 8472, i64 2, !91, i64 8474, i64 2, !91, i64 8476, i64 2, !91, i64 8478, i64 2, !91, i64 8480, i64 2, !91, i64 8482, i64 2, !91, i64 8484, i64 4, !89, i64 8488, i64 4, !89, i64 8492, i64 4, !89, i64 8496, i64 2, !91, i64 8498, i64 2, !91, i64 8500, i64 4, !89, i64 8504, i64 4, !89, i64 8508, i64 4, !89, i64 8512, i64 4, !89, i64 8516, i64 4, !89, i64 8520, i64 4, !89, i64 8524, i64 4, !89, i64 8528, i64 2, !91, i64 8530, i64 2, !91, i64 8532, i64 2, !91, i64 8534, i64 2, !91, i64 8536, i64 8, !48, i64 8544, i64 8, !48, i64 8552, i64 8, !48, i64 8560, i64 8, !48, i64 8568, i64 8, !48, i64 8576, i64 8, !48, i64 8584, i64 8, !48, i64 8592, i64 8, !48, i64 8600, i64 8, !48, i64 8608, i64 8, !48, i64 8616, i64 8, !48, i64 8624, i64 8, !48, i64 8632, i64 8, !48, i64 8640, i64 8, !48, i64 8648, i64 64, !90, i64 8712, i64 2, !91, i64 8714, i64 2, !91, i64 8716, i64 2, !91, i64 8718, i64 2, !91, i64 8720, i64 2, !91, i64 8722, i64 2, !91, i64 8724, i64 2, !91, i64 8726, i64 2, !91, i64 8728, i64 168, !90, i64 8896, i64 2, !91, i64 8898, i64 2, !91, i64 8900, i64 2, !91, i64 8902, i64 2, !91, i64 8904, i64 2, !91, i64 8906, i64 2, !91, i64 8908, i64 2, !91, i64 8910, i64 2, !91, i64 8912, i64 4, !89, i64 8916, i64 4, !89, i64 8920, i64 2, !91, i64 8922, i64 2, !91, i64 8924, i64 2, !91, i64 8926, i64 2, !91, i64 8928, i64 2, !91, i64 8930, i64 2, !91, i64 8932, i64 2, !91, i64 8934, i64 2, !91, i64 8936, i64 2, !91, i64 8938, i64 2, !91, i64 8940, i64 1, !90, i64 8941, i64 1, !90, i64 8942, i64 1, !90, i64 8943, i64 1, !90, i64 8944, i64 2, !91, i64 8946, i64 2, !91, i64 8948, i64 2, !91, i64 8950, i64 2, !91, i64 8952, i64 2, !91, i64 8954, i64 2, !91, i64 8956, i64 4, !92, i64 8960, i64 4, !92, i64 8964, i64 4, !89, i64 8968, i64 2, !91, i64 8970, i64 2, !91, i64 8972, i64 4, !92, i64 8976, i64 2, !91, i64 8978, i64 2, !91, i64 8980, i64 2, !91, i64 8982, i64 2, !91, i64 8984, i64 2, !91, i64 8986, i64 2, !91, i64 8988, i64 1, !90, i64 8989, i64 1, !90, i64 8990, i64 1, !90, i64 8991, i64 1, !90, i64 8992, i64 768, !90, i64 9760, i64 12, !90, i64 9772, i64 16, !90, i64 9788, i64 2, !91, i64 9790, i64 1, !90, i64 9791, i64 1, !90, i64 9792, i64 80, !90, i64 9872, i64 1024, !90, i64 10896, i64 4, !89, i64 10900, i64 4, !89, i64 10904, i64 4, !92, i64 10908, i64 4, !92, i64 10912, i64 4, !89, i64 10916, i64 2, !91, i64 10918, i64 2, !91, i64 10920, i64 2, !91, i64 10922, i64 2, !91, i64 10924, i64 2, !91, i64 10926, i64 2, !91, i64 10928, i64 4, !92, i64 10932, i64 4, !92, i64 10936, i64 4, !92, i64 10940, i64 4, !92, i64 10944, i64 4, !92, i64 10948, i64 4, !92, i64 10952, i64 2, !91, i64 10954, i64 6, !90}
!89 = !{!41, !41, i64 0}
!90 = !{!37, !37, i64 0}
!91 = !{!40, !40, i64 0}
!92 = !{!44, !44, i64 0}
!93 = !{!72, !41, i64 16}
!94 = !{!35, !40, i64 2086}
!95 = !{!72, !41, i64 24}
!96 = !{!35, !40, i64 2088}
!97 = !{!72, !41, i64 20}
!98 = !{!76, !36, i64 1552}
!99 = !{!72, !36, i64 1056}
!100 = !{!72, !41, i64 28}
!101 = !{!76, !40, i64 1040}
!102 = !{!76, !40, i64 1072}
!103 = !{!104, !36, i64 24}
!104 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!105 = distinct !{!105, !53}
!106 = !{!76, !36, i64 1328}
!107 = distinct !{!107, !53}
!108 = distinct !{!108, !53}
!109 = !{!35, !37, i64 2081}
!110 = !{!35, !37, i64 2080}
!111 = !{!43, !41, i64 8484}
!112 = !{!39, !36, i64 8}
!113 = distinct !{!113, !53}
!114 = !{!43, !40, i64 8712}
!115 = !{!39, !36, i64 0}
!116 = distinct !{!116, !53}
!117 = !{!118, !36, i64 0}
!118 = !{!"UndoElem", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 1040, !119, i64 1104, !77, i64 1128}
!119 = !{!"MemFile", !39, i64 0, !41, i64 16}
!120 = distinct !{!120, !53}
!121 = !{!118, !36, i64 8}
!122 = !{!118, !77, i64 1128}
!123 = !{!43, !40, i64 8714}
!124 = distinct !{!124, !53}
!125 = distinct !{!125, !53}
!126 = !{!35, !41, i64 2100}
!127 = !{!"blender.c:read_undosave"}
!128 = distinct !{!128, !53}
!129 = !{!130, !36, i64 16}
!130 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28}
!131 = !{!130, !41, i64 28}
!132 = distinct !{!132, !53}
!133 = !{!87, !40, i64 98}
!134 = distinct !{!134, !53}
!135 = !{!87, !36, i64 0}
!136 = distinct !{!136, !53}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !53}
!139 = !{!"blender.c:copybuffer_doit"}
!140 = !{!"blender.c:BLI_listbase_is_empty"}
!141 = !{!"blender.c:clean_paths"}
!142 = distinct !{!142, !53}
!143 = !{!"blender.c:clear_global"}
!144 = !{!"blender.c:clean_paths_visit_cb"}
