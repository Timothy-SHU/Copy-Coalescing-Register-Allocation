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
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.bAddon = type { ptr, ptr, [64 x i8], ptr }
%struct.uiFont = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16 }
%struct.BlendFileData = type { ptr, ptr, i32, i32, i32, i32, [1024 x i8], ptr, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.UndoElem = type { ptr, ptr, [1024 x i8], [64 x i8], %struct.MemFile, i64 }
%struct.MemFile = type { %struct.ListBase, i32 }
%struct.MemFileChunk = type { ptr, ptr, ptr, i32, i32 }

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

; Function Attrs: nounwind uwtable
define dso_local void @free_blender() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_main_free(ptr noundef %1) #15
  store ptr null, ptr @G, align 8, !tbaa !34
  tail call void @BKE_spacetypes_free() #15
  tail call void @IMB_exit() #15
  tail call void @BKE_images_exit() #15
  tail call void @DAG_exit() #15
  tail call void @BKE_brush_system_exit() #15
  tail call void @RE_exit_texture_rng() #15
  tail call void @BLI_callback_global_finalize() #15
  tail call void @BKE_sequencer_cache_destruct() #15
  tail call void @IMB_moviecache_destruct() #15
  tail call void @free_nodesystem() #15
  ret void
}

declare void @BKE_main_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_spacetypes_free() local_unnamed_addr #1

declare void @IMB_exit() local_unnamed_addr #1

declare void @BKE_images_exit() local_unnamed_addr #1

declare void @DAG_exit() local_unnamed_addr #1

declare void @BKE_brush_system_exit() local_unnamed_addr #1

declare void @RE_exit_texture_rng() local_unnamed_addr #1

declare void @BLI_callback_global_finalize() local_unnamed_addr #1

declare void @BKE_sequencer_cache_destruct() local_unnamed_addr #1

declare void @IMB_moviecache_destruct() local_unnamed_addr #1

declare void @free_nodesystem() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @initglobals() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2320) @G, i8 0, i64 2320, i1 false)
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !42
  %1 = tail call ptr @BKE_main_new() #15
  store ptr %1, ptr @G, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 1), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false) #15
  %2 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @versionstr, i64 noundef 48, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 72, i32 noundef 1) #15
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %4 = or i32 %3, 8192
  store i32 %4, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @BKE_main_new() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_userdef_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %76, label %3

3:                                                ; preds = %0, %73
  %4 = phi ptr [ %74, %73 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %3, %49
  %9 = phi ptr [ %50, %49 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void @IDP_FreeProperty(ptr noundef nonnull %15) #15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %19 = load ptr, ptr %14, align 8, !tbaa !51
  tail call void %18(ptr noundef %19) #15
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %25(ptr noundef nonnull %22) #15
  br label %26

26:                                               ; preds = %20, %24
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %28 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void %27(ptr noundef %28) #15
  br label %29

29:                                               ; preds = %26, %8
  %30 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %9, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  tail call void @IDP_FreeProperty(ptr noundef nonnull %35) #15
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %39 = load ptr, ptr %34, align 8, !tbaa !51
  tail call void %38(ptr noundef %39) #15
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %45(ptr noundef nonnull %42) #15
  br label %46

46:                                               ; preds = %40, %44
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %48 = load ptr, ptr %30, align 8, !tbaa !54
  tail call void %47(ptr noundef %48) #15
  br label %49

49:                                               ; preds = %29, %46
  %50 = load ptr, ptr %9, align 8, !tbaa !48
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %8, !llvm.loop !55

52:                                               ; preds = %49, %3
  %53 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %52, %70
  %57 = phi ptr [ %71, %70 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  tail call void @IDP_FreeProperty(ptr noundef nonnull %59) #15
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %63 = load ptr, ptr %58, align 8, !tbaa !51
  tail call void %62(ptr noundef %63) #15
  br label %64

64:                                               ; preds = %61, %56
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %69(ptr noundef nonnull %66) #15
  br label %70

70:                                               ; preds = %64, %68
  %71 = load ptr, ptr %57, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %56, !llvm.loop !58

73:                                               ; preds = %70, %52
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #15
  tail call void @BLI_freelistN(ptr noundef nonnull %53) #15
  %74 = load ptr, ptr %4, align 8, !tbaa !48
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %3, !llvm.loop !59

76:                                               ; preds = %73, %0
  %77 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), align 8, !tbaa !60
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %91, %76
  %80 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39), align 8, !tbaa !48
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %94

82:                                               ; preds = %76, %91
  %83 = phi ptr [ %84, %91 ], [ %77, %76 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.bAddon, ptr %83, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  tail call void @IDP_FreeProperty(ptr noundef nonnull %86) #15
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %90 = load ptr, ptr %85, align 8, !tbaa !63
  tail call void %89(ptr noundef %90) #15
  br label %91

91:                                               ; preds = %88, %82
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %92(ptr noundef nonnull %83) #15
  %93 = icmp eq ptr %84, null
  br i1 %93, label %79, label %82, !llvm.loop !64

94:                                               ; preds = %79, %94
  %95 = phi ptr [ %99, %94 ], [ %80, %79 ]
  %96 = getelementptr inbounds %struct.uiFont, ptr %95, i64 0, i32 3
  %97 = load i16, ptr %96, align 8, !tbaa !65
  %98 = sext i16 %97 to i32
  tail call void @BLF_unload_id(i32 noundef %98) #15
  %99 = load ptr, ptr %95, align 8, !tbaa !48
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %94, !llvm.loop !67

101:                                              ; preds = %94, %79
  tail call void @BLF_default_set(i32 noundef -1) #15
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44)) #15
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40)) #15
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 39)) #15
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38)) #15
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42)) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

declare void @BLF_unload_id(i32 noundef) local_unnamed_addr #1

declare void @BLF_default_set(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_userdef_state() local_unnamed_addr #0 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  %2 = fcmp oeq float %1, 0.000000e+00
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  br label %4

4:                                                ; preds = %3, %0
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !68
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !69
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fptosi float %8 to i32
  tail call void @BLF_default_dpi(i32 noundef %9) #15
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

declare void @BLF_default_dpi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_read_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.2) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call ptr @BLO_read_from_file(ptr noundef %1, ptr noundef %2) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BlendFileData, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 1, i32 2
  %16 = load ptr, ptr %9, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 4, !tbaa !74
  %19 = icmp sgt i16 %18, 272
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = icmp eq i16 %18, 272
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !77
  %25 = icmp sgt i16 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %11
  %27 = sext i16 %18 to i32
  %28 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 6
  %29 = load i16, ptr %28, align 2, !tbaa !77
  %30 = sext i16 %29 to i32
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %27, i32 noundef %30) #15
  br label %31

31:                                               ; preds = %20, %22, %26
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %9)
  br label %33

32:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @BKE_reports_prependf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %1) #15
  br label %33

33:                                               ; preds = %31, %32
  %34 = phi i32 [ %15, %31 ], [ 0, %32 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare ptr @BLO_read_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_app_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  %14 = and i32 %10, 8388608
  br i1 %9, label %15, label %25

15:                                               ; preds = %2
  tail call void @RE_FreeAllRenderResults() #15
  %16 = load ptr, ptr %1, align 8, !tbaa !73
  tail call void @BKE_bpath_traverse_main(ptr noundef %16, ptr noundef nonnull @clean_paths_visit_cb, i32 noundef 16, ptr noundef null) #15
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %23, %20 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 22, i32 84
  tail call void @BLI_path_native_slash(ptr noundef nonnull %22) #15
  %23 = load ptr, ptr %21, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !79

25:                                               ; preds = %20, %15, %2
  br i1 %13, label %64, label %26

26:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %27 = load ptr, ptr @G, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Main, ptr %27, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !80
  %29 = load ptr, ptr %1, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !80
  %31 = load ptr, ptr %1, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.Main, ptr %31, i64 0, i32 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %33 = getelementptr inbounds %struct.Main, ptr %27, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !80
  %34 = load ptr, ptr %1, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !80
  %36 = load ptr, ptr %1, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %38 = getelementptr inbounds %struct.Main, ptr %27, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !80
  %39 = load ptr, ptr %1, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !80
  %41 = load ptr, ptr %1, align 8, !tbaa !73
  %42 = getelementptr inbounds %struct.Main, ptr %41, i64 0, i32 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %43 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %44 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load ptr, ptr %1, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.Main, ptr %48, i64 0, i32 11
  %50 = load ptr, ptr %49, align 8, !tbaa !82
  br label %51

51:                                               ; preds = %47, %26
  %52 = phi ptr [ %50, %47 ], [ %45, %26 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr %1, align 8, !tbaa !73
  %56 = tail call ptr @BKE_scene_add(ptr noundef %55, ptr noundef nonnull @.str.18) #15
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %56, %54 ], [ %52, %51 ]
  %59 = icmp eq ptr %43, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.bScreen, ptr %43, i64 0, i32 5
  store ptr %58, ptr %61, align 8, !tbaa !83
  br label %62

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr %1, align 8, !tbaa !73
  tail call void @blo_lib_link_screen_restore(ptr noundef %63, ptr noundef %43, ptr noundef %58) #15
  br label %64

64:                                               ; preds = %62, %25
  %65 = phi ptr [ %58, %62 ], [ null, %25 ]
  %66 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_main_free(ptr noundef %66) #15
  store ptr null, ptr @G, align 8, !tbaa !34
  tail call void @RNA_property_update_cache_free() #15
  %67 = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %67, ptr @G, align 8, !tbaa !34
  tail call void @CTX_data_main_set(ptr noundef %0, ptr noundef %67) #15
  %68 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @sound_init_main(ptr noundef %68) #15
  %69 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  tail call void @BKE_userdef_free()
  %73 = load ptr, ptr %69, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10960) @U, ptr noundef nonnull align 8 dereferenceable(10960) %73, i64 10960, i1 false), !tbaa.struct !86
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %75 = load ptr, ptr %69, align 8, !tbaa !71
  tail call void %74(ptr noundef %75) #15
  br label %76

76:                                               ; preds = %72, %64
  br i1 %13, label %78, label %77

77:                                               ; preds = %76
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %65) #15
  br label %95

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !91
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 11), align 2, !tbaa !92
  %82 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !93
  %84 = trunc i32 %83 to i16
  store i16 %84, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 12), align 8, !tbaa !94
  %85 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !95
  store i32 %86, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !96
  %87 = load ptr, ptr @G, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.Main, ptr %87, i64 0, i32 40
  %89 = load ptr, ptr %88, align 8, !tbaa !97
  tail call void @CTX_wm_manager_set(ptr noundef %0, ptr noundef %89) #15
  %90 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !98
  tail call void @CTX_wm_screen_set(ptr noundef %0, ptr noundef %91) #15
  %92 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !81
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %93) #15
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #15
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #15
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #15
  %94 = load ptr, ptr %92, align 8, !tbaa !81
  br label %95

95:                                               ; preds = %78, %77
  %96 = phi ptr [ %65, %77 ], [ %94, %78 ]
  %97 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load ptr, ptr @G, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.Main, ptr %100, i64 0, i32 11
  %102 = load ptr, ptr %101, align 8, !tbaa !82
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = tail call ptr @BKE_scene_add(ptr noundef %100, ptr noundef nonnull @.str.19) #15
  br label %106

106:                                              ; preds = %104, %99
  %107 = load ptr, ptr @G, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.Main, ptr %107, i64 0, i32 11
  %109 = load ptr, ptr %108, align 8, !tbaa !82
  tail call void @CTX_data_scene_set(ptr noundef %0, ptr noundef %109) #15
  %110 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %111 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %112 = getelementptr inbounds %struct.bScreen, ptr %111, i64 0, i32 5
  store ptr %110, ptr %112, align 8, !tbaa !83
  %113 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  br label %114

114:                                              ; preds = %106, %95
  %115 = phi ptr [ %113, %106 ], [ %96, %95 ]
  %116 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %117 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !99
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = and i32 %118, -24579
  %122 = and i32 %116, 24578
  %123 = or disjoint i32 %121, %122
  store i32 %123, ptr %117, align 4, !tbaa !99
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i32, ptr %117, align 4, !tbaa !99
  store i32 %125, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !47
  %126 = load ptr, ptr @G, align 8, !tbaa !34
  %127 = getelementptr inbounds %struct.Main, ptr %126, i64 0, i32 3
  %128 = load i16, ptr %127, align 8, !tbaa !100
  %129 = icmp slt i16 %128, 250
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  tail call void @do_versions_ipos_to_animato(ptr noundef %126) #15
  br label %131

131:                                              ; preds = %130, %124
  %132 = load ptr, ptr @G, align 8, !tbaa !34
  %133 = getelementptr inbounds %struct.Main, ptr %132, i64 0, i32 9
  store i16 0, ptr %133, align 8, !tbaa !101
  %134 = getelementptr inbounds %struct.BlendFileData, ptr %1, i64 0, i32 6
  %135 = load i8, ptr %134, align 8, !tbaa !88
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.Main, ptr %132, i64 0, i32 2
  store i8 0, ptr %138, align 8, !tbaa !88
  br label %149

139:                                              ; preds = %131
  %140 = icmp ne i32 %14, 0
  %141 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8
  %142 = icmp ne i8 %141, 0
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  store i16 1, ptr %133, align 8, !tbaa !101
  %145 = getelementptr inbounds %struct.Main, ptr %132, i64 0, i32 2
  %146 = icmp eq ptr %145, %134
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call ptr @BLI_strncpy(ptr noundef nonnull %145, ptr noundef nonnull %134, i64 noundef 1024) #15
  br label %149

149:                                              ; preds = %139, %147, %144, %137
  br i1 %13, label %150, label %175

150:                                              ; preds = %149
  %151 = load ptr, ptr @G, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.Main, ptr %151, i64 0, i32 40
  %153 = load ptr, ptr %152, align 8, !tbaa !97
  %154 = icmp eq ptr %153, null
  br i1 %154, label %175, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.wmWindowManager, ptr %153, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !48
  %158 = icmp eq ptr %157, null
  br i1 %158, label %175, label %159

159:                                              ; preds = %155, %172
  %160 = phi ptr [ %173, %172 ], [ %157, %155 ]
  %161 = getelementptr inbounds %struct.wmWindow, ptr %160, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !102
  %163 = icmp eq ptr %162, null
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.bScreen, ptr %162, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !83
  %167 = icmp eq ptr %166, null
  %168 = icmp eq ptr %166, %115
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %172, label %170

170:                                              ; preds = %164
  %171 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_scene_set_background(ptr noundef %171, ptr noundef nonnull %166) #15
  br label %172

172:                                              ; preds = %159, %164, %170
  %173 = load ptr, ptr %160, align 8, !tbaa !48
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %159, !llvm.loop !104

175:                                              ; preds = %172, %155, %150, %149
  %176 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BKE_scene_set_background(ptr noundef %176, ptr noundef %115) #15
  br i1 %9, label %177, label %179

177:                                              ; preds = %175
  %178 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @IMB_colormanagement_check_file_config(ptr noundef %178) #15
  br label %179

179:                                              ; preds = %177, %175
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %180(ptr noundef nonnull %1) #15
  ret void
}

declare void @BKE_reports_prependf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_read_file_from_memory(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BLO_read_from_memory(ptr noundef %1, i32 noundef %2, ptr noundef %3) #15
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void @BLO_update_defaults_startup_blend(ptr noundef %11) #15
  br label %12

12:                                               ; preds = %10, %8
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %6)
  br label %14

13:                                               ; preds = %5
  tail call void @BKE_reports_prepend(ptr noundef %3, ptr noundef nonnull @.str.6) #15
  br label %14

14:                                               ; preds = %13, %12
  %15 = zext i1 %7 to i8
  ret i8 %15
}

declare ptr @BLO_read_from_memory(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLO_update_defaults_startup_blend(ptr noundef) local_unnamed_addr #1

declare void @BKE_reports_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_read_file_from_memfile(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = load ptr, ptr @G, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 2
  %7 = tail call ptr @BLO_read_from_memfile(ptr noundef %4, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #15
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %19, %9
  %15 = load ptr, ptr %7, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 26
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %26

19:                                               ; preds = %9, %19
  %20 = phi ptr [ %24, %19 ], [ %12, %9 ]
  %21 = phi ptr [ %22, %19 ], [ %10, %9 ]
  tail call void @BKE_libblock_free_ex(ptr noundef %21, ptr noundef nonnull %20, i8 noundef zeroext 1) #15
  %22 = load ptr, ptr %7, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 40
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = icmp eq ptr %24, null
  br i1 %25, label %14, label %19, !llvm.loop !106

26:                                               ; preds = %14, %26
  %27 = phi ptr [ %31, %26 ], [ %17, %14 ]
  %28 = phi ptr [ %29, %26 ], [ %15, %14 ]
  tail call void @BKE_libblock_free_ex(ptr noundef %28, ptr noundef nonnull %27, i8 noundef zeroext 1) #15
  %29 = load ptr, ptr %7, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.Main, ptr %29, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !107

33:                                               ; preds = %26, %14
  tail call fastcc void @setup_app_data(ptr noundef %0, ptr noundef nonnull %7)
  br label %35

34:                                               ; preds = %3
  tail call void @BKE_reports_prepend(ptr noundef %2, ptr noundef nonnull @.str.6) #15
  br label %35

35:                                               ; preds = %34, %33
  %36 = zext i1 %8 to i8
  ret i8 %36
}

declare ptr @BLO_read_from_memfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @BKE_libblock_free_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_read_file_userdef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLO_read_from_file(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BlendFileData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void @BKE_userdef_free()
  %10 = load ptr, ptr %6, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10960) @U, ptr noundef nonnull align 8 dereferenceable(10960) %10, i64 10960, i1 false), !tbaa.struct !86
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %12 = load ptr, ptr %6, align 8, !tbaa !71
  tail call void %11(ptr noundef %12) #15
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 2, %9 ], [ 0, %5 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void @BKE_main_free(ptr noundef %15) #15
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %16(ptr noundef nonnull %3) #15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %14, %13 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_write_file_userdef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %4 = tail call ptr %3(i64 noundef 1904, ptr noundef nonnull @.str.8) #15
  %5 = tail call i32 @BLO_write_file(ptr noundef %4, ptr noundef %0, i32 noundef 512, ptr noundef %1, ptr noundef null) #15
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %8(ptr noundef %4) #15
  ret i32 %7
}

declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_blender_test_break_cb(ptr noundef %0) local_unnamed_addr #9 {
  store ptr %0, ptr @blender_test_break_cb, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @blender_test_break() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !108
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr @blender_test_break_cb, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void %3() #15
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !109
  %9 = icmp eq i8 %8, 1
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_write_undo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !110
  %4 = and i32 %3, 8192
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %106, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !111
  %11 = load ptr, ptr @curundo, align 8, !tbaa !48
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %17, %13 ], [ %10, %9 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.UndoElem, ptr %14, i64 0, i32 4
  tail call void @BLO_free_memfile(ptr noundef nonnull %15) #15
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %16(ptr noundef %14) #15
  %17 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !111
  %18 = load ptr, ptr @curundo, align 8, !tbaa !48
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %13, !llvm.loop !112

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %22 = tail call ptr %21(i64 noundef 1136, ptr noundef nonnull @.str.9) #15
  store ptr %22, ptr @curundo, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.UndoElem, ptr %22, i64 0, i32 3
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef %1, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull @undobase, ptr noundef %22) #15
  %25 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %20
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !113
  %29 = sext i16 %28 to i32
  br label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %25, %27 ], [ %40, %38 ]
  %32 = phi i32 [ 0, %27 ], [ %33, %38 ]
  %33 = add nuw nsw i32 %32, 1
  %34 = icmp eq i32 %33, %29
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr @undobase, align 8, !tbaa !78
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %50, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.UndoElem, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %30, !llvm.loop !114

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %48, %42 ], [ %36, %35 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %43) #15
  %44 = getelementptr inbounds %struct.UndoElem, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %43, align 8, !tbaa !115
  %46 = getelementptr inbounds %struct.UndoElem, ptr %45, i64 0, i32 4
  tail call void @BLO_merge_memfile(ptr noundef nonnull %44, ptr noundef nonnull %46) #15
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %47(ptr noundef nonnull %43) #15
  %48 = load ptr, ptr @undobase, align 8, !tbaa !78
  %49 = icmp eq ptr %48, %31
  br i1 %49, label %50, label %42, !llvm.loop !118

50:                                               ; preds = %38, %42, %20, %35
  %51 = load ptr, ptr @curundo, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.UndoElem, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !119
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.UndoElem, ptr %53, i64 0, i32 4
  %56 = select i1 %54, ptr null, ptr %55
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %58 = tail call i64 %57() #15
  %59 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %60 = load ptr, ptr @curundo, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.UndoElem, ptr %60, i64 0, i32 4
  %62 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !96
  %63 = tail call i32 @BLO_write_file_mem(ptr noundef %59, ptr noundef %56, ptr noundef nonnull %61, i32 noundef %62) #15
  %64 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %65 = tail call i64 %64() #15
  %66 = sub i64 %65, %58
  %67 = load ptr, ptr @curundo, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.UndoElem, ptr %67, i64 0, i32 5
  store i64 %66, ptr %68, align 8, !tbaa !120
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 47), align 2, !tbaa !121
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %50
  %72 = sext i16 %69 to i64
  %73 = shl nsw i64 %72, 20
  %74 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @undobase, i64 0, i32 1), align 8, !tbaa !111
  br label %75

75:                                               ; preds = %83, %71
  %76 = phi ptr [ %74, %71 ], [ %81, %83 ]
  %77 = phi i64 [ 0, %71 ], [ %86, %83 ]
  %78 = icmp eq ptr %76, null
  br i1 %78, label %106, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.UndoElem, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !119
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.UndoElem, ptr %76, i64 0, i32 5
  %85 = load i64, ptr %84, align 8, !tbaa !120
  %86 = add i64 %85, %77
  %87 = icmp ugt i64 %86, %73
  br i1 %87, label %88, label %75, !llvm.loop !122

88:                                               ; preds = %83
  br i1 %82, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.UndoElem, ptr %81, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !119
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr %76, ptr %81
  br label %94

94:                                               ; preds = %79, %89, %88
  %95 = phi ptr [ %76, %88 ], [ %93, %89 ], [ %76, %79 ]
  %96 = load ptr, ptr @undobase, align 8, !tbaa !78
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %106, label %98

98:                                               ; preds = %94, %98
  %99 = phi ptr [ %104, %98 ], [ %96, %94 ]
  tail call void @BLI_remlink(ptr noundef nonnull @undobase, ptr noundef %99) #15
  %100 = getelementptr inbounds %struct.UndoElem, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %99, align 8, !tbaa !115
  %102 = getelementptr inbounds %struct.UndoElem, ptr %101, i64 0, i32 4
  tail call void @BLO_merge_memfile(ptr noundef nonnull %100, ptr noundef nonnull %102) #15
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %103(ptr noundef nonnull %99) #15
  %104 = load ptr, ptr @undobase, align 8, !tbaa !78
  %105 = icmp eq ptr %104, %95
  br i1 %105, label %106, label %98, !llvm.loop !123

106:                                              ; preds = %75, %98, %94, %50, %2
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLO_free_memfile(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLO_merge_memfile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLO_write_file_mem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @curundo, align 8, !tbaa !48
  switch i32 %1, label %22 [
    i32 0, label %4
    i32 1, label %5
  ]

4:                                                ; preds = %2
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef %3)
  br label %36

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !124
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 3
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr @curundo, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.UndoElem, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !119
  store ptr %21, ptr @curundo, align 8, !tbaa !48
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef %21)
  br label %36

22:                                               ; preds = %2
  %23 = icmp eq ptr %3, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !115
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef nonnull %25)
  %28 = load ptr, ptr @curundo, align 8, !tbaa !48
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  store ptr %29, ptr @curundo, align 8, !tbaa !48
  %30 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !124
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.UndoElem, ptr %29, i64 0, i32 3
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %34)
  br label %36

36:                                               ; preds = %5, %7, %18, %27, %33, %22, %24, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_undosave(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @WM_jobs_kill_all_except(ptr noundef %4, ptr noundef %5) #15
  %6 = load ptr, ptr @G, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 2
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %7, i64 noundef 1024) #15
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !96
  %10 = or i32 %9, 1024
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !96
  %11 = getelementptr inbounds %struct.UndoElem, ptr %1, i64 0, i32 4
  %12 = call zeroext i8 @BKE_read_file_from_memfile(ptr noundef %0, ptr noundef nonnull %11, ptr noundef null), !range !125
  %13 = load ptr, ptr @G, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 1024) #15
  store i32 %9, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !96
  %16 = icmp eq i8 %12, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr @G, align 8, !tbaa !34
  call void @DAG_on_visible_update(ptr noundef %18, i8 noundef zeroext 0) #15
  br label %19

19:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reset_undo() local_unnamed_addr #0 {
  %1 = load ptr, ptr @undobase, align 8, !tbaa !48
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  tail call void @BLO_free_memfile(ptr noundef nonnull %5) #15
  %6 = load ptr, ptr %4, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !126

8:                                                ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @undobase) #15
  store ptr null, ptr @curundo, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_undo_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @undobase, i32 noundef %1) #15
  store ptr %3, ptr @curundo, align 8, !tbaa !48
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef %3)
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_undo_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_rfindstring(ptr noundef nonnull @undobase, ptr noundef %1, i32 noundef 1040) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store ptr %7, ptr @curundo, align 8, !tbaa !48
  tail call fastcc void @read_undosave(ptr noundef %0, ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %5, %2
  ret void
}

declare ptr @BLI_rfindstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_undo_valid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BLI_rfindstring(ptr noundef nonnull @undobase, ptr noundef nonnull %0, i32 noundef 1040) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 1
  br label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr @undobase, align 8, !tbaa !78
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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_undo_get_name(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findlink(ptr noundef nonnull @undobase, i32 noundef %0) #15
  %4 = icmp ne ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !87
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
  store i32 1, ptr %1, align 4, !tbaa !87
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.UndoElem, ptr %3, i64 0, i32 3
  br label %15

15:                                               ; preds = %6, %13
  %16 = phi ptr [ %14, %13 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_undo_save_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !110
  %3 = and i32 %2, 8192
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @curundo, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !48
  %10 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 37, i64 1, ptr %9) #17
  br label %53

11:                                               ; preds = %5
  %12 = tail call i32 @BLI_open(ptr noundef %0, i32 noundef 131649, i32 noundef 438) #15
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !48
  %16 = tail call ptr @__errno_location() #18
  %17 = load i32, ptr %16, align 4, !tbaa !87
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @strerror(i32 noundef %17) #15
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ @.str.14, %14 ]
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef %22) #17
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
  %32 = load ptr, ptr %31, align 8, !tbaa !127
  %33 = getelementptr inbounds %struct.MemFileChunk, ptr %28, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !129
  %35 = zext i32 %34 to i64
  %36 = tail call i64 @write(i32 noundef %12, ptr noundef %32, i64 noundef %35) #15
  %37 = load i32, ptr %33, align 4, !tbaa !129
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %26, label %40, !llvm.loop !130

40:                                               ; preds = %30
  %41 = tail call i32 @close(i32 noundef %12) #15
  %42 = load ptr, ptr @stderr, align 8, !tbaa !48
  %43 = tail call ptr @__errno_location() #18
  %44 = load i32, ptr %43, align 4, !tbaa !87
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @strerror(i32 noundef %44) #15
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %47, %46 ], [ @.str.15, %40 ]
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef %49) #17
  br label %53

51:                                               ; preds = %26
  %52 = tail call i32 @close(i32 noundef %12) #15
  br label %53

53:                                               ; preds = %51, %1, %48, %21, %8
  %54 = phi i8 [ 0, %8 ], [ 0, %21 ], [ 0, %48 ], [ 0, %1 ], [ 1, %51 ]
  ret i8 %54
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_undo_get_main(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr @curundo, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.UndoElem, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLO_read_from_memfile(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !73
  %10 = icmp eq ptr %0, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.BlendFileData, ptr %6, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  store ptr %13, ptr %0, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %15(ptr noundef nonnull %6) #15
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %9, %14 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_copybuffer_begin(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_main_id_flag_all(ptr noundef %0, i16 noundef signext 1032, i8 noundef zeroext 0) #15
  ret void
}

declare void @BKE_main_id_flag_all(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_copybuffer_tag_ID(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !131
  %4 = or i16 %3, 1032
  store i16 %4, ptr %2, align 2, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_copybuffer_save(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [35 x ptr], align 16
  %4 = alloca [35 x ptr], align 16
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %6 = tail call ptr %5(i64 noundef 1904, ptr noundef nonnull @.str.16) #15
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #15
  %7 = load ptr, ptr @G, align 8, !tbaa !34
  %8 = tail call ptr @BKE_bpath_list_backup(ptr noundef %7, i32 noundef 20) #15
  tail call void @BLO_main_expander(ptr noundef nonnull @copybuffer_doit) #15
  %9 = load ptr, ptr @G, align 8, !tbaa !34
  tail call void @BLO_expand_main(ptr noundef null, ptr noundef %9) #15
  %10 = load ptr, ptr @G, align 8, !tbaa !34
  %11 = call i32 @set_listbasepointers(ptr noundef %10, ptr noundef nonnull %4) #15
  %12 = call i32 @set_listbasepointers(ptr noundef %6, ptr noundef nonnull %3) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = sext i32 %12 to i64
  br label %19

16:                                               ; preds = %36, %19
  %17 = and i64 %21, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %38, label %19, !llvm.loop !132

19:                                               ; preds = %14, %16
  %20 = phi i64 [ %15, %14 ], [ %21, %16 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  br i1 %27, label %16, label %28

28:                                               ; preds = %19, %36
  %29 = phi ptr [ %30, %36 ], [ %26, %19 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !133
  %31 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %32 = load i16, ptr %31, align 2, !tbaa !131
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %29) #15
  call void @BLI_addtail(ptr noundef %23, ptr noundef nonnull %29) #15
  br label %36

36:                                               ; preds = %28, %35
  %37 = icmp eq ptr %30, null
  br i1 %37, label %16, label %28, !llvm.loop !134

38:                                               ; preds = %16, %2
  %39 = call i32 @BLO_write_file(ptr noundef %6, ptr noundef %0, i32 noundef 16777216, ptr noundef %1, ptr noundef null) #15
  %40 = load ptr, ptr @G, align 8, !tbaa !34
  %41 = call i32 @set_listbasepointers(ptr noundef %40, ptr noundef nonnull %3) #15
  %42 = call i32 @set_listbasepointers(ptr noundef %6, ptr noundef nonnull %4) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = sext i32 %42 to i64
  br label %49

46:                                               ; preds = %58, %49
  %47 = and i64 %51, 4294967295
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %62, label %49, !llvm.loop !135

49:                                               ; preds = %44, %46
  %50 = phi i64 [ %45, %44 ], [ %51, %46 ]
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %51
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = call ptr @BLI_pophead(ptr noundef %55) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %46, label %58

58:                                               ; preds = %49, %58
  %59 = phi ptr [ %60, %58 ], [ %56, %49 ]
  call void @BLI_addtail(ptr noundef %53, ptr noundef nonnull %59) #15
  call void @id_sort_by_name(ptr noundef %53, ptr noundef nonnull %59) #15
  %60 = call ptr @BLI_pophead(ptr noundef %55) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %46, label %58, !llvm.loop !136

62:                                               ; preds = %46, %38
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %63(ptr noundef %6) #15
  %64 = load ptr, ptr @G, align 8, !tbaa !34
  call void @BKE_main_id_flag_all(ptr noundef %64, i16 noundef signext 1032, i8 noundef zeroext 0) #15
  %65 = icmp eq ptr %8, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @G, align 8, !tbaa !34
  call void @BKE_bpath_list_restore(ptr noundef %67, i32 noundef 20, ptr noundef nonnull %8) #15
  call void @BKE_bpath_list_free(ptr noundef nonnull %8) #15
  br label %68

68:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #15
  ret i32 %39
}

declare ptr @BKE_bpath_list_backup(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLO_main_expander(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @copybuffer_doit(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #13 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !131
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = or i16 %7, 1032
  store i16 %11, ptr %6, align 2, !tbaa !131
  br label %12

12:                                               ; preds = %5, %10, %3
  ret void
}

declare void @BLO_expand_main(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

declare void @id_sort_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_bpath_list_restore(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_bpath_list_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_copybuffer_paste(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %7 = tail call ptr @BLO_blendhandle_from_file(ptr noundef %1, ptr noundef %2) #15
  store ptr %7, ptr %4, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  tail call void @BKE_scene_base_deselect_all(ptr noundef %6) #15
  tail call void @BKE_main_id_flag_all(ptr noundef %5, i16 noundef signext 2048, i8 noundef zeroext 1) #15
  %10 = call ptr @BLO_library_append_begin(ptr noundef %5, ptr noundef nonnull %4, ptr noundef %1) #15
  %11 = load ptr, ptr %4, align 8, !tbaa !48
  call void @BLO_library_append_all(ptr noundef %10, ptr noundef %11) #15
  call void @BLO_library_append_end(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0, i16 noundef signext 0) #15
  call void @BKE_main_lib_objects_recalc_all(ptr noundef %5) #15
  call void @IMB_colormanagement_check_file_config(ptr noundef %5) #15
  %12 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 12
  %13 = call ptr @BLI_findstring(ptr noundef nonnull %12, ptr noundef %1, i32 noundef 1160) #15
  call void @BKE_library_make_local(ptr noundef %5, ptr noundef %13, i8 noundef zeroext 1) #15
  call void @BKE_main_id_flag_all(ptr noundef %5, i16 noundef signext 2048, i8 noundef zeroext 0) #15
  call void @DAG_relations_tag_update(ptr noundef %5) #15
  %14 = load ptr, ptr %4, align 8, !tbaa !48
  call void @BLO_blendhandle_close(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %3, %9
  %16 = phi i32 [ 1, %9 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %16
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BLO_blendhandle_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #1

declare ptr @BLO_library_append_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLO_library_append_all(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLO_library_append_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BKE_main_lib_objects_recalc_all(ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_check_file_config(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_library_make_local(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

declare void @BLO_blendhandle_close(ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @RE_FreeAllRenderResults() local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_scene_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @blo_lib_link_screen_restore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_update_cache_free() local_unnamed_addr #1

declare void @CTX_data_main_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sound_init_main(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @do_versions_ipos_to_animato(ptr noundef) local_unnamed_addr #1

declare void @BKE_scene_set_background(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_bpath_traverse_main(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @clean_paths_visit_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #15
  tail call void @BLI_path_native_slash(ptr noundef %1) #15
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #16
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

declare void @BLI_path_native_slash(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @WM_jobs_kill_all_except(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }

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
!51 = !{!52, !36, i64 80}
!52 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176}
!53 = !{!52, !36, i64 176}
!54 = !{!50, !36, i64 16}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = distinct !{!59, !56, !57}
!60 = !{!43, !36, i64 8616}
!61 = !{!62, !36, i64 0}
!62 = !{!"bAddon", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80}
!63 = !{!62, !36, i64 80}
!64 = distinct !{!64, !56, !57}
!65 = !{!66, !40, i64 1040}
!66 = !{!"uiFont", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046}
!67 = distinct !{!67, !56, !57}
!68 = !{!43, !44, i64 10908}
!69 = !{!43, !41, i64 8524}
!70 = !{!43, !40, i64 8948}
!71 = !{!72, !36, i64 8}
!72 = !{!"BlendFileData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 1056, !36, i64 1064, !41, i64 1072}
!73 = !{!72, !36, i64 0}
!74 = !{!75, !40, i64 1044}
!75 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !76, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!76 = !{!"long", !37, i64 0}
!77 = !{!75, !40, i64 1046}
!78 = !{!39, !36, i64 0}
!79 = distinct !{!79, !56, !57}
!80 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!81 = !{!72, !36, i64 1064}
!82 = !{!75, !36, i64 1088}
!83 = !{!84, !36, i64 184}
!84 = !{!"bScreen", !85, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 240}
!85 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!86 = !{i64 0, i64 4, !87, i64 4, i64 4, !87, i64 8, i64 4, !87, i64 12, i64 4, !87, i64 16, i64 4, !87, i64 20, i64 768, !88, i64 788, i64 768, !88, i64 1556, i64 1024, !88, i64 2580, i64 768, !88, i64 3348, i64 768, !88, i64 4116, i64 768, !88, i64 4884, i64 768, !88, i64 5652, i64 768, !88, i64 6420, i64 1024, !88, i64 7444, i64 1024, !88, i64 8468, i64 4, !87, i64 8472, i64 2, !89, i64 8474, i64 2, !89, i64 8476, i64 2, !89, i64 8478, i64 2, !89, i64 8480, i64 2, !89, i64 8482, i64 2, !89, i64 8484, i64 4, !87, i64 8488, i64 4, !87, i64 8492, i64 4, !87, i64 8496, i64 2, !89, i64 8498, i64 2, !89, i64 8500, i64 4, !87, i64 8504, i64 4, !87, i64 8508, i64 4, !87, i64 8512, i64 4, !87, i64 8516, i64 4, !87, i64 8520, i64 4, !87, i64 8524, i64 4, !87, i64 8528, i64 2, !89, i64 8530, i64 2, !89, i64 8532, i64 2, !89, i64 8534, i64 2, !89, i64 8536, i64 8, !48, i64 8544, i64 8, !48, i64 8552, i64 8, !48, i64 8560, i64 8, !48, i64 8568, i64 8, !48, i64 8576, i64 8, !48, i64 8584, i64 8, !48, i64 8592, i64 8, !48, i64 8600, i64 8, !48, i64 8608, i64 8, !48, i64 8616, i64 8, !48, i64 8624, i64 8, !48, i64 8632, i64 8, !48, i64 8640, i64 8, !48, i64 8648, i64 64, !88, i64 8712, i64 2, !89, i64 8714, i64 2, !89, i64 8716, i64 2, !89, i64 8718, i64 2, !89, i64 8720, i64 2, !89, i64 8722, i64 2, !89, i64 8724, i64 2, !89, i64 8726, i64 2, !89, i64 8728, i64 168, !88, i64 8896, i64 2, !89, i64 8898, i64 2, !89, i64 8900, i64 2, !89, i64 8902, i64 2, !89, i64 8904, i64 2, !89, i64 8906, i64 2, !89, i64 8908, i64 2, !89, i64 8910, i64 2, !89, i64 8912, i64 4, !87, i64 8916, i64 4, !87, i64 8920, i64 2, !89, i64 8922, i64 2, !89, i64 8924, i64 2, !89, i64 8926, i64 2, !89, i64 8928, i64 2, !89, i64 8930, i64 2, !89, i64 8932, i64 2, !89, i64 8934, i64 2, !89, i64 8936, i64 2, !89, i64 8938, i64 2, !89, i64 8940, i64 1, !88, i64 8941, i64 1, !88, i64 8942, i64 1, !88, i64 8943, i64 1, !88, i64 8944, i64 2, !89, i64 8946, i64 2, !89, i64 8948, i64 2, !89, i64 8950, i64 2, !89, i64 8952, i64 2, !89, i64 8954, i64 2, !89, i64 8956, i64 4, !90, i64 8960, i64 4, !90, i64 8964, i64 4, !87, i64 8968, i64 2, !89, i64 8970, i64 2, !89, i64 8972, i64 4, !90, i64 8976, i64 2, !89, i64 8978, i64 2, !89, i64 8980, i64 2, !89, i64 8982, i64 2, !89, i64 8984, i64 2, !89, i64 8986, i64 2, !89, i64 8988, i64 1, !88, i64 8989, i64 1, !88, i64 8990, i64 1, !88, i64 8991, i64 1, !88, i64 8992, i64 768, !88, i64 9760, i64 12, !88, i64 9772, i64 16, !88, i64 9788, i64 2, !89, i64 9790, i64 1, !88, i64 9791, i64 1, !88, i64 9792, i64 80, !88, i64 9872, i64 1024, !88, i64 10896, i64 4, !87, i64 10900, i64 4, !87, i64 10904, i64 4, !90, i64 10908, i64 4, !90, i64 10912, i64 4, !87, i64 10916, i64 2, !89, i64 10918, i64 2, !89, i64 10920, i64 2, !89, i64 10922, i64 2, !89, i64 10924, i64 2, !89, i64 10926, i64 2, !89, i64 10928, i64 4, !90, i64 10932, i64 4, !90, i64 10936, i64 4, !90, i64 10940, i64 4, !90, i64 10944, i64 4, !90, i64 10948, i64 4, !90, i64 10952, i64 2, !89, i64 10954, i64 6, !88}
!87 = !{!41, !41, i64 0}
!88 = !{!37, !37, i64 0}
!89 = !{!40, !40, i64 0}
!90 = !{!44, !44, i64 0}
!91 = !{!72, !41, i64 16}
!92 = !{!35, !40, i64 2086}
!93 = !{!72, !41, i64 24}
!94 = !{!35, !40, i64 2088}
!95 = !{!72, !41, i64 20}
!96 = !{!35, !41, i64 2108}
!97 = !{!75, !36, i64 1552}
!98 = !{!72, !36, i64 1056}
!99 = !{!72, !41, i64 28}
!100 = !{!75, !40, i64 1040}
!101 = !{!75, !40, i64 1072}
!102 = !{!103, !36, i64 24}
!103 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!104 = distinct !{!104, !56, !57}
!105 = !{!75, !36, i64 1328}
!106 = distinct !{!106, !56, !57}
!107 = distinct !{!107, !56, !57}
!108 = !{!35, !37, i64 2081}
!109 = !{!35, !37, i64 2080}
!110 = !{!43, !41, i64 8484}
!111 = !{!39, !36, i64 8}
!112 = distinct !{!112, !56, !57}
!113 = !{!43, !40, i64 8712}
!114 = distinct !{!114, !56, !57}
!115 = !{!116, !36, i64 0}
!116 = !{!"UndoElem", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 1040, !117, i64 1104, !76, i64 1128}
!117 = !{!"MemFile", !39, i64 0, !41, i64 16}
!118 = distinct !{!118, !56, !57}
!119 = !{!116, !36, i64 8}
!120 = !{!116, !76, i64 1128}
!121 = !{!43, !40, i64 8714}
!122 = distinct !{!122, !56, !57}
!123 = distinct !{!123, !56, !57}
!124 = !{!35, !41, i64 2100}
!125 = !{i8 0, i8 2}
!126 = distinct !{!126, !56, !57}
!127 = !{!128, !36, i64 16}
!128 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28}
!129 = !{!128, !41, i64 28}
!130 = distinct !{!130, !56, !57}
!131 = !{!85, !40, i64 98}
!132 = distinct !{!132, !56, !57}
!133 = !{!85, !36, i64 0}
!134 = distinct !{!134, !56, !57}
!135 = distinct !{!135, !56, !57}
!136 = distinct !{!136, !56, !57}
