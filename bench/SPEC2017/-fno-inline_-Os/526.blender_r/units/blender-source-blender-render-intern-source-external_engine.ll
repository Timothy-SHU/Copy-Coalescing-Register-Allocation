; ModuleID = 'blender/source/blender/render/intern/source/external_engine.c'
source_filename = "blender/source/blender/render/intern/source/external_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.StructRNA = type opaque
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@R_engines = dso_local global %struct.ListBase zeroinitializer, align 8
@internal_render_type = internal global %struct.RenderEngineType { ptr null, ptr null, [64 x i8] c"BLENDER_RENDER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"Blender Render\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ExtensionRNA zeroinitializer }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"RenderEngine\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"RenderEngine.end_result: dimensions do not match any OpenEXR tile.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s | %s\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"current engine tiles\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.RE_engine_get_current_tiles = private unnamed_addr constant [28 x i8] c"RE_engine_get_current_tiles\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@RNA_SceneRenderLayer = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"layers_exclude\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engines_init() local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull @R_engines, ptr noundef nonnull @internal_render_type) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engines_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @R_engines, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %5, %19 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @BLI_remlink(ptr noundef nonnull @R_engines, ptr noundef nonnull %4) #12
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 11, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  tail call void %12(ptr noundef %16) #12
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %18(ptr noundef nonnull %4) #12
  br label %19

19:                                               ; preds = %3, %17
  %20 = icmp eq ptr %5, null
  br i1 %20, label %21, label %3, !llvm.loop !47

21:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @RE_engines_find(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef %0, i32 noundef 16) #12
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @internal_render_type, ptr %2
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RE_engine_is_external(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #13
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_engine_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @RE_engine_create_ex(ptr noundef %0, i8 noundef zeroext 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_engine_create_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %4 = tail call ptr %3(i64 noundef 712, ptr noundef nonnull @.str) #12
  store ptr %0, ptr %4, align 8, !tbaa !50
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderEngine, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = or i32 %8, 64
  store i32 %9, ptr %7, align 8, !tbaa !55
  tail call void @BLI_begin_threaded_malloc() #12
  br label %10

10:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BLI_end_threaded_malloc() #12
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_engine_begin_result(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !71
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %1)
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %11 ]
  %19 = icmp slt i32 %2, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.RenderResult, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %2)
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %20 ]
  %28 = icmp slt i32 %3, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !71
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 %3)
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %29 ]
  %37 = icmp slt i32 %4, 0
  %38 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.RenderResult, ptr %39, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !73
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %4)
  %43 = select i1 %37, i32 0, i32 %42
  %44 = add nsw i32 %36, %18
  %45 = getelementptr inbounds %struct.RenderResult, ptr %39, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !71
  %47 = icmp sgt i32 %44, %46
  %48 = sub nsw i32 %46, %18
  %49 = select i1 %47, i32 %48, i32 %36
  %50 = add nsw i32 %43, %27
  %51 = icmp sgt i32 %50, %41
  %52 = sub nsw i32 %41, %27
  %53 = select i1 %51, i32 %52, i32 %43
  store i32 %18, ptr %7, align 4, !tbaa !74
  %54 = add nsw i32 %49, %18
  %55 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %54, ptr %55, align 4, !tbaa !75
  %56 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  store i32 %27, ptr %56, align 4, !tbaa !76
  %57 = add nsw i32 %53, %27
  %58 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %57, ptr %58, align 4, !tbaa !77
  %59 = call ptr @render_result_new(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef %5) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %82, label %61

61:                                               ; preds = %35
  %62 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !57
  %64 = getelementptr inbounds %struct.RenderResult, ptr %63, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !78
  %66 = getelementptr inbounds %struct.RenderResult, ptr %59, i64 0, i32 15
  store i32 %65, ptr %66, align 8, !tbaa !78
  %67 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %67, ptr noundef nonnull %59) #12
  %68 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 15
  %69 = load i32, ptr %68, align 4, !tbaa !79
  %70 = getelementptr inbounds %struct.RenderResult, ptr %59, i64 0, i32 9
  %71 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 15, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !80
  %73 = load <4 x i32>, ptr %70, align 8, !tbaa !81
  %74 = insertelement <4 x i32> poison, i32 %69, i64 0
  %75 = insertelement <4 x i32> %74, i32 %72, i64 1
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %77 = add nsw <4 x i32> %73, %76
  store <4 x i32> %77, ptr %70, align 8, !tbaa !81
  %78 = call fastcc ptr @get_part_from_result(ptr noundef nonnull %9, ptr noundef nonnull %59) #13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.RenderPart, ptr %78, i64 0, i32 18
  store i16 1, ptr %81, align 2, !tbaa !82
  br label %82

82:                                               ; preds = %61, %80, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret ptr %59
}

; Function Attrs: optsize
declare ptr @render_result_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_part_from_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %4 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 3
  %5 = load ptr, ptr %3, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %11 = load i32, ptr %10, align 4, !tbaa !79
  %12 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15, i32 2
  %14 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 1
  br label %15

15:                                               ; preds = %7, %40
  %16 = phi ptr [ %5, %7 ], [ %41, %40 ]
  %17 = getelementptr inbounds %struct.RenderPart, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = sub nsw i32 %18, %11
  %20 = icmp eq i32 %9, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load i32, ptr %12, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.RenderPart, ptr %16, i64 0, i32 13, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !88
  %25 = load i32, ptr %13, align 4, !tbaa !80
  %26 = sub nsw i32 %24, %25
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, ptr %14, align 4, !tbaa !89
  %30 = getelementptr inbounds %struct.RenderPart, ptr %16, i64 0, i32 13, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !90
  %32 = sub nsw i32 %31, %11
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, ptr %4, align 4, !tbaa !91
  %36 = getelementptr inbounds %struct.RenderPart, ptr %16, i64 0, i32 13, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !92
  %38 = sub nsw i32 %37, %25
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %15, %21, %28, %34
  %41 = load ptr, ptr %16, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %15, !llvm.loop !93

43:                                               ; preds = %34, %40, %2
  %44 = phi ptr [ null, %2 ], [ null, %40 ], [ %16, %34 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_update_result(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  store ptr %8, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 86
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 87
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  tail call void %11(ptr noundef %13, ptr noundef nonnull %1, ptr noundef null) #12
  br label %14

14:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_end_result(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq ptr %1, null
  br i1 %7, label %71, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = tail call fastcc ptr @get_part_from_result(ptr noundef %6, ptr noundef nonnull %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.RenderPart, ptr %11, i64 0, i32 18
  store i16 2, ptr %14, align 2, !tbaa !82
  br label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.RenderResult, ptr %17, i64 0, i32 15
  %19 = load i32, ptr %18, align 8, !tbaa !78
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @stderr, align 8, !tbaa !46
  %23 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %22) #15
  br label %26

24:                                               ; preds = %8
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %69, label %32

26:                                               ; preds = %15, %21, %13
  %27 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.RenderResult, ptr %28, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !78
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.RenderResult, ptr %34, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !78
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %54

38:                                               ; preds = %26
  tail call void @render_result_exr_file_merge(ptr noundef nonnull %28, ptr noundef nonnull %1) #12
  br label %54

39:                                               ; preds = %32, %26
  %40 = phi ptr [ %33, %32 ], [ %27, %26 ]
  %41 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 96
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 97
  %44 = load ptr, ptr %43, align 8, !tbaa !99
  %45 = tail call i32 %42(ptr noundef %44) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 45, i32 46
  %49 = load i32, ptr %48, align 4, !tbaa !100
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %39
  %53 = load ptr, ptr %40, align 8, !tbaa !57
  tail call void @render_result_merge(ptr noundef %53, ptr noundef nonnull %1) #12
  br label %54

54:                                               ; preds = %32, %47, %52, %38
  %55 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 96
  %56 = load ptr, ptr %55, align 8, !tbaa !98
  %57 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 97
  %58 = load ptr, ptr %57, align 8, !tbaa !99
  %59 = tail call i32 %56(ptr noundef %58) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  store ptr %63, ptr %64, align 8, !tbaa !95
  %65 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 86
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  %67 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 87
  %68 = load ptr, ptr %67, align 8, !tbaa !97
  tail call void %66(ptr noundef %68, ptr noundef nonnull %1, ptr noundef null) #12
  br label %69

69:                                               ; preds = %54, %61, %24
  %70 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %70, ptr noundef nonnull %1) #12
  tail call void @render_result_free(ptr noundef nonnull %1) #12
  br label %71

71:                                               ; preds = %4, %69
  ret void
}

; Function Attrs: optsize
declare void @render_result_exr_file_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RE_engine_test_break(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 96
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 97
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = tail call i32 %7(ptr noundef %9) #12
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_update_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98
  %9 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 17
  store ptr %1, ptr %9, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 16
  store ptr %2, ptr %10, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 90
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  tail call void %12(ptr noundef %14, ptr noundef nonnull %8) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 8, !tbaa !105
  %17 = icmp eq ptr %1, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %1, align 1, !tbaa !105
  %20 = icmp ne i8 %19, 0
  %21 = icmp ne ptr %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8, ptr %2, align 1, !tbaa !105
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 512, ptr noundef nonnull @.str.2, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  br label %41

28:                                               ; preds = %18, %15
  %29 = icmp eq ptr %2, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = load i8, ptr %2, align 1, !tbaa !105
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %2, i64 noundef 512) #12
  br label %41

35:                                               ; preds = %30, %28
  br i1 %17, label %41, label %36

36:                                               ; preds = %35
  %37 = load i8, ptr %1, align 1, !tbaa !105
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %23, %36
  %40 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %1, i64 noundef 512) #12
  br label %41

41:                                               ; preds = %33, %39, %36, %35, %26
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_update_progress(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = fcmp olt float %1, 0.000000e+00
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = fcmp ogt float %1, 1.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %6, %8, %10
  %12 = phi float [ 1.000000e+00, %10 ], [ %1, %8 ], [ 0.000000e+00, %6 ]
  %13 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 92
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 93
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  tail call void %14(ptr noundef %16, float noundef %12) #12
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RE_engine_update_memory_stats(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 19
  store float %1, ptr %8, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 20
  store float %2, ptr %9, align 4, !tbaa !109
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_report(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 99
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  tail call void @BKE_report(ptr noundef %9, i32 noundef %1, ptr noundef %2) #12
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef nonnull %12, i32 noundef %1, ptr noundef %2) #12
  br label %15

15:                                               ; preds = %10, %14, %7
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_get_current_tiles(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderEngine, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %12, %59
  %17 = phi ptr [ %63, %59 ], [ %14, %12 ]
  %18 = phi i32 [ %62, %59 ], [ 0, %12 ]
  %19 = phi ptr [ %61, %59 ], [ null, %12 ]
  %20 = phi i32 [ %60, %59 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.RenderPart, ptr %17, i64 0, i32 18
  %22 = load i16, ptr %21, align 2, !tbaa !82
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %59

24:                                               ; preds = %16
  %25 = icmp slt i32 %20, %18
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = icmp eq ptr %19, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %30 = tail call ptr %29(i64 noundef 16, ptr noundef nonnull @.str.3) #12
  br label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !46
  %33 = add nsw i32 %20, 1
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 4
  %36 = tail call ptr %32(ptr noundef nonnull %19, i64 noundef %35, ptr noundef nonnull @__func__.RE_engine_get_current_tiles) #12
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi ptr [ %30, %28 ], [ %36, %31 ]
  %39 = add nsw i32 %18, 1
  br label %40

40:                                               ; preds = %37, %24
  %41 = phi ptr [ %38, %37 ], [ %19, %24 ]
  %42 = phi i32 [ %39, %37 ], [ %18, %24 ]
  %43 = sext i32 %20 to i64
  %44 = getelementptr inbounds %struct.rcti, ptr %41, i64 %43
  %45 = getelementptr inbounds %struct.RenderPart, ptr %17, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !113
  %46 = getelementptr inbounds %struct.RenderPart, ptr %17, i64 0, i32 17
  %47 = load i16, ptr %46, align 4, !tbaa !114
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = sext i16 %47 to i32
  %51 = load <4 x i32>, ptr %44, align 4, !tbaa !81
  %52 = insertelement <4 x i32> poison, i32 %50, i64 0
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> zeroinitializer
  %54 = add nsw <4 x i32> %51, %53
  %55 = sub nsw <4 x i32> %51, %53
  %56 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %56, ptr %44, align 4, !tbaa !81
  br label %57

57:                                               ; preds = %49, %40
  %58 = add nsw i32 %20, 1
  br label %59

59:                                               ; preds = %16, %57
  %60 = phi i32 [ %58, %57 ], [ %20, %16 ]
  %61 = phi ptr [ %41, %57 ], [ %19, %16 ]
  %62 = phi i32 [ %42, %57 ], [ %18, %16 ]
  %63 = load ptr, ptr %17, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %16, !llvm.loop !115

65:                                               ; preds = %59, %12, %7
  %66 = phi i32 [ 0, %7 ], [ 0, %12 ], [ %60, %59 ]
  %67 = phi ptr [ null, %7 ], [ null, %12 ], [ %61, %59 ]
  store i32 %66, ptr %1, align 4, !tbaa !81
  store ptr %67, ptr %2, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RE_engine_get_render_data(ptr noundef readnone %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_bake_engine_set_engine_parameters(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %6, ptr noundef nonnull align 8 dereferenceable(3984) %7, i64 3984, i1 false), !tbaa.struct !118
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !121 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RE_bake_has_engine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #13
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %9 = tail call ptr @RE_engines_find(ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %11 = load i32, ptr %10, align 8, !tbaa !123
  %12 = and i32 %11, 67108864
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %16, ptr %17, align 8, !tbaa !135
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %19 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4, i64 2
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 62) #12
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %21, i8 0, i64 20, i1 false)
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = tail call ptr @RE_engine_create(ptr noundef nonnull %9) #13
  store ptr %26, ptr %22, align 8, !tbaa !112
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi ptr [ %23, %7 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.RenderEngine, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !55
  %31 = or i32 %30, 16
  store i32 %31, ptr %29, align 8, !tbaa !55
  %32 = getelementptr inbounds %struct.RenderEngine, ptr %28, i64 0, i32 7
  store ptr %0, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %34 = getelementptr inbounds %struct.RenderEngine, ptr %28, i64 0, i32 10
  %35 = load <2 x i32>, ptr %33, align 4, !tbaa !81
  store <2 x i32> %35, ptr %34, align 8, !tbaa !81
  tail call void @RE_parts_init(ptr noundef nonnull %0, i8 noundef zeroext 0) #12
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 37
  %37 = getelementptr inbounds %struct.RenderEngine, ptr %28, i64 0, i32 5
  %38 = getelementptr inbounds %struct.RenderEngine, ptr %28, i64 0, i32 6
  %39 = load <2 x i32>, ptr %36, align 8, !tbaa !81
  store <2 x i32> %39, ptr %37, align 4, !tbaa !81
  %40 = getelementptr inbounds %struct.RenderEngineType, ptr %9, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %45 = load ptr, ptr %44, align 8, !tbaa !117
  %46 = load ptr, ptr %13, align 8, !tbaa !116
  tail call void %41(ptr noundef nonnull %28, ptr noundef %45, ptr noundef %46) #12
  br label %47

47:                                               ; preds = %43, %27
  %48 = getelementptr inbounds %struct.RenderEngineType, ptr %9, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !122
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %13, align 8, !tbaa !116
  %53 = trunc i64 %3 to i32
  tail call void %49(ptr noundef nonnull %28, ptr noundef %52, ptr noundef %1, i32 noundef %5, ptr noundef %2, i32 noundef %53, i32 noundef %4, ptr noundef %6) #12
  br label %54

54:                                               ; preds = %51, %47
  store i32 0, ptr %37, align 4, !tbaa !137
  store i32 0, ptr %38, align 8, !tbaa !138
  %55 = load i32, ptr %29, align 8, !tbaa !55
  %56 = and i32 %55, -17
  store i32 %56, ptr %29, align 8, !tbaa !55
  %57 = icmp eq i32 %12, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %22, align 8, !tbaa !112
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %54
  tail call void @RE_engine_free(ptr noundef nonnull %28) #13
  store ptr null, ptr %22, align 8, !tbaa !112
  br label %62

62:                                               ; preds = %61, %58
  tail call void @RE_parts_free(ptr noundef nonnull %0) #12
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %64 = load ptr, ptr %63, align 8, !tbaa !110
  %65 = tail call zeroext i8 @BKE_reports_contain(ptr noundef %64, i32 noundef 32) #12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !139
  br label %68

68:                                               ; preds = %67, %62
  ret i8 1
}

; Function Attrs: optsize
declare void @RE_parts_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_parts_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_reports_contain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_engine_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = sitofp i32 %1 to double
  %9 = fpext float %2 to double
  %10 = fadd double %8, %9
  %11 = fcmp olt double %10, -3.000000e+05
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = fcmp ogt double %10, 3.000000e+05
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %3, %12, %14
  %16 = phi double [ 3.000000e+05, %14 ], [ %10, %12 ], [ -3.000000e+05, %3 ]
  tail call void @BKE_scene_frame_set(ptr noundef %7, double noundef %16) #12
  %17 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 101
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  tail call void @BKE_scene_update_for_newframe_ex(ptr noundef %18, ptr noundef %20, ptr noundef %7, i32 noundef 1048575, i8 noundef zeroext 1) #12
  %21 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %7) #12
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_frame_set(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RE_engine_render(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %4 = tail call ptr @RE_engines_find(ptr noundef nonnull %3) #13
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !123
  %7 = and i32 %6, 67108864
  %8 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %236, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %13 = load i32, ptr %12, align 4, !tbaa !100
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !43
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %236, label %21

21:                                               ; preds = %16, %11
  %22 = icmp eq i32 %1, 0
  %23 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %22, label %28, label %27

27:                                               ; preds = %21
  br i1 %26, label %236, label %29

28:                                               ; preds = %21
  br i1 %26, label %29, label %236

29:                                               ; preds = %27, %28
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %35 = load ptr, ptr %34, align 8, !tbaa !143
  tail call void %31(ptr noundef %35, i32 noundef 1) #12
  %36 = load i32, ptr %12, align 4, !tbaa !100
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %36, %33 ], [ %13, %29 ]
  %39 = and i32 %38, 16392
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %43 = load i32, ptr %42, align 8, !tbaa !144
  %44 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !43
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %41
  %49 = and i32 %38, 512
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  br i1 %50, label %67, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %54 = load i16, ptr %53, align 8, !tbaa !145
  %55 = sext i16 %54 to i32
  %56 = tail call ptr @BLI_findlink(ptr noundef nonnull %51, i32 noundef %55) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %92, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.SceneRenderLayer, ptr %56, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !146
  %61 = xor i32 %60, -1
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %63 = load ptr, ptr %62, align 8, !tbaa !116
  %64 = tail call fastcc zeroext i8 @render_layer_exclude_animated(ptr noundef %63, ptr noundef nonnull %56) #13
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 %61, i32 -1
  br label %92

67:                                               ; preds = %48
  %68 = load ptr, ptr %51, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %92, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  br label %72

72:                                               ; preds = %70, %88
  %73 = phi ptr [ %68, %70 ], [ %90, %88 ]
  %74 = phi i32 [ 0, %70 ], [ %89, %88 ]
  %75 = getelementptr inbounds %struct.SceneRenderLayer, ptr %73, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !149
  %77 = and i32 %76, 131072
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.SceneRenderLayer, ptr %73, i64 0, i32 7
  %81 = load i32, ptr %80, align 8, !tbaa !146
  %82 = xor i32 %81, -1
  %83 = or i32 %74, %82
  %84 = load ptr, ptr %71, align 8, !tbaa !116
  %85 = tail call fastcc zeroext i8 @render_layer_exclude_animated(ptr noundef %84, ptr noundef nonnull %73) #13
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, i32 %83, i32 -1
  br label %88

88:                                               ; preds = %79, %72
  %89 = phi i32 [ %74, %72 ], [ %87, %79 ]
  %90 = load ptr, ptr %73, align 8, !tbaa !46
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %72, !llvm.loop !150

92:                                               ; preds = %88, %67, %58, %52
  %93 = phi i32 [ 0, %52 ], [ %66, %58 ], [ 0, %67 ], [ %89, %88 ]
  %94 = and i32 %93, %43
  br label %95

95:                                               ; preds = %92, %41
  %96 = phi i32 [ %94, %92 ], [ %43, %41 ]
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %98 = load ptr, ptr %97, align 8, !tbaa !141
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %100 = load ptr, ptr %99, align 8, !tbaa !117
  %101 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %102 = load ptr, ptr %101, align 8, !tbaa !116
  tail call void @BKE_scene_update_for_newframe_ex(ptr noundef %98, ptr noundef %100, ptr noundef %102, i32 noundef %96, i8 noundef zeroext 1) #12
  %103 = load ptr, ptr %101, align 8, !tbaa !116
  %104 = getelementptr inbounds %struct.Scene, ptr %103, i64 0, i32 22
  tail call void @render_update_anim_renderdata(ptr noundef %0, ptr noundef nonnull %104) #12
  br label %105

105:                                              ; preds = %95, %37
  %106 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %106, i32 noundef 2) #12
  %107 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !57
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %12, align 4, !tbaa !100
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  tail call void @render_result_free(ptr noundef nonnull %108) #12
  br label %115

115:                                              ; preds = %105, %114
  %116 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !43
  %118 = and i32 %117, 64
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %12, align 4, !tbaa !100
  %122 = lshr i32 %121, 10
  %123 = and i32 %122, 1
  br label %124

124:                                              ; preds = %120, %115
  %125 = phi i32 [ 0, %115 ], [ %123, %120 ]
  %126 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %127 = tail call ptr @render_result_new(ptr noundef nonnull %0, ptr noundef nonnull %126, i32 noundef 0, i32 noundef %125, ptr noundef null) #12
  store ptr %127, ptr %107, align 8, !tbaa !57
  br label %128

128:                                              ; preds = %124, %110
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %106) #12
  %129 = load ptr, ptr %107, align 8, !tbaa !57
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load ptr, ptr %30, align 8, !tbaa !142
  %133 = icmp eq ptr %132, null
  br i1 %133, label %236, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  tail call void %132(ptr noundef %136, i32 noundef 0) #12
  br label %236

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %139 = load ptr, ptr %138, align 8, !tbaa !116
  %140 = getelementptr inbounds %struct.Scene, ptr %139, i64 0, i32 22, i32 5
  %141 = load i32, ptr %140, align 8, !tbaa !124
  %142 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %141, ptr %142, align 8, !tbaa !135
  %143 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %144 = getelementptr inbounds %struct.ID, ptr %139, i64 0, i32 4, i64 2
  %145 = tail call ptr @BLI_strncpy(ptr noundef nonnull %143, ptr noundef nonnull %144, i64 noundef 64) #12
  %146 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %147 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %146, i8 0, i64 20, i1 false)
  %148 = load ptr, ptr %147, align 8, !tbaa !112
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %137
  %151 = tail call ptr @RE_engine_create(ptr noundef nonnull %4) #13
  store ptr %151, ptr %147, align 8, !tbaa !112
  br label %152

152:                                              ; preds = %150, %137
  %153 = phi ptr [ %148, %137 ], [ %151, %150 ]
  %154 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !55
  %156 = or i32 %155, 16
  store i32 %156, ptr %154, align 8, !tbaa !55
  %157 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 7
  store ptr %0, ptr %157, align 8, !tbaa !56
  %158 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %159 = load i16, ptr %158, align 8, !tbaa !151
  %160 = and i16 %159, 128
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = or i32 %155, 17
  store i32 %163, ptr %154, align 8, !tbaa !55
  br label %164

164:                                              ; preds = %162, %152
  %165 = phi i32 [ %163, %162 ], [ %156, %152 ]
  %166 = load i32, ptr %12, align 4, !tbaa !100
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = or i32 %165, 2
  store i32 %170, ptr %154, align 8, !tbaa !55
  br label %171

171:                                              ; preds = %169, %164
  %172 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  %173 = load ptr, ptr %172, align 8, !tbaa !152
  %174 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 3
  store ptr %173, ptr %174, align 8, !tbaa !153
  %175 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 49
  %176 = load i32, ptr %175, align 4, !tbaa !154
  %177 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 4
  store i32 %176, ptr %177, align 8, !tbaa !155
  %178 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %179 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 10
  %180 = load <2 x i32>, ptr %178, align 4, !tbaa !81
  store <2 x i32> %180, ptr %179, align 8, !tbaa !81
  tail call void @RE_parts_init(ptr noundef nonnull %0, i8 noundef zeroext 0) #12
  %181 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %182 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 5
  %183 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 6
  %184 = load <2 x i32>, ptr %181, align 8, !tbaa !81
  store <2 x i32> %184, ptr %182, align 4, !tbaa !81
  %185 = load ptr, ptr %107, align 8, !tbaa !57
  %186 = getelementptr inbounds %struct.RenderResult, ptr %185, i64 0, i32 15
  %187 = load i32, ptr %186, align 8, !tbaa !78
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %171
  tail call void @render_result_exr_file_begin(ptr noundef nonnull %0) #12
  br label %190

190:                                              ; preds = %189, %171
  %191 = getelementptr inbounds %struct.RenderEngineType, ptr %4, i64 0, i32 5
  %192 = load ptr, ptr %191, align 8, !tbaa !136
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %196 = load ptr, ptr %195, align 8, !tbaa !117
  %197 = load ptr, ptr %138, align 8, !tbaa !116
  tail call void %192(ptr noundef nonnull %153, ptr noundef %196, ptr noundef %197) #12
  br label %198

198:                                              ; preds = %194, %190
  %199 = load ptr, ptr %30, align 8, !tbaa !142
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %203 = load ptr, ptr %202, align 8, !tbaa !143
  tail call void %199(ptr noundef %203, i32 noundef 0) #12
  br label %204

204:                                              ; preds = %201, %198
  %205 = load ptr, ptr %8, align 8, !tbaa !49
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr %138, align 8, !tbaa !116
  tail call void %205(ptr noundef nonnull %153, ptr noundef %208) #12
  br label %209

209:                                              ; preds = %207, %204
  store i32 0, ptr %182, align 4, !tbaa !137
  store i32 0, ptr %183, align 8, !tbaa !138
  %210 = load i32, ptr %154, align 8, !tbaa !55
  %211 = and i32 %210, -17
  store i32 %211, ptr %154, align 8, !tbaa !55
  %212 = getelementptr inbounds %struct.RenderEngine, ptr %153, i64 0, i32 8
  %213 = load ptr, ptr %212, align 8, !tbaa !156
  tail call void @render_result_free_list(ptr noundef nonnull %212, ptr noundef %213) #12
  %214 = icmp eq i32 %7, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = load ptr, ptr %147, align 8, !tbaa !112
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %215, %209
  tail call void @RE_engine_free(ptr noundef nonnull %153) #13
  store ptr null, ptr %147, align 8, !tbaa !112
  br label %219

219:                                              ; preds = %218, %215
  %220 = load ptr, ptr %107, align 8, !tbaa !57
  %221 = getelementptr inbounds %struct.RenderResult, ptr %220, i64 0, i32 15
  %222 = load i32, ptr %221, align 8, !tbaa !78
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %106, i32 noundef 2) #12
  tail call void @render_result_exr_file_end(ptr noundef nonnull %0) #12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %106) #12
  br label %225

225:                                              ; preds = %224, %219
  %226 = load i32, ptr %12, align 4, !tbaa !100
  %227 = and i32 %226, 1048576
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void @BLI_rw_mutex_lock(ptr noundef nonnull %106, i32 noundef 2) #12
  tail call void @render_result_exr_file_cache_write(ptr noundef nonnull %0) #12
  tail call void @BLI_rw_mutex_unlock(ptr noundef nonnull %106) #12
  br label %230

230:                                              ; preds = %229, %225
  tail call void @RE_parts_free(ptr noundef nonnull %0) #12
  %231 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %232 = load ptr, ptr %231, align 8, !tbaa !110
  %233 = tail call zeroext i8 @BKE_reports_contain(ptr noundef %232, i32 noundef 32) #12
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !139
  br label %236

236:                                              ; preds = %230, %235, %131, %134, %28, %27, %16, %2
  %237 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 0, %27 ], [ 0, %28 ], [ 1, %134 ], [ 1, %131 ], [ 1, %235 ], [ 1, %230 ]
  ret i32 %237
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @render_layer_exclude_animated(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !157 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_SceneRenderLayer, ptr noundef %1, ptr noundef nonnull %3) #12
  %4 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #12
  %5 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %3, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: optsize
declare void @render_update_anim_renderdata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_result_exr_file_cache_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animated(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { cold }

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
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !41, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !42, i64 200}
!41 = !{!"int", !37, i64 0}
!42 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!43 = !{!40, !41, i64 144}
!44 = !{!40, !36, i64 224}
!45 = !{!40, !36, i64 200}
!46 = !{!36, !36, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!40, !36, i64 160}
!50 = !{!51, !36, i64 0}
!51 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !35, i64 56, !37, i64 72, !41, i64 584, !41, i64 588, !36, i64 592, !41, i64 600, !41, i64 604, !52, i64 608, !54, i64 624, !37, i64 640, !41, i64 704, !41, i64 708}
!52 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!53 = !{!"float", !37, i64 0}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!51, !41, i64 16}
!56 = !{!51, !36, i64 48}
!57 = !{!58, !36, i64 112}
!58 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !59, i64 96, !59, i64 98, !59, i64 100, !59, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !35, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !54, i64 156, !52, i64 172, !53, i64 188, !53, i64 192, !53, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !53, i64 544, !53, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !60, i64 1104, !67, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !35, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !53, i64 5680, !36, i64 5688, !35, i64 5696, !53, i64 5712, !53, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !35, i64 5752, !35, i64 5768, !35, i64 5784, !36, i64 5800, !35, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !35, i64 5872, !36, i64 5888, !35, i64 5896, !35, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !69, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!59 = !{!"short", !37, i64 0}
!60 = !{!"RenderData", !61, i64 0, !36, i64 248, !36, i64 256, !64, i64 264, !65, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !53, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !59, i64 432, !59, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !59, i64 456, !59, i64 458, !59, i64 460, !59, i64 462, !59, i64 464, !59, i64 466, !41, i64 468, !59, i64 472, !59, i64 474, !59, i64 476, !59, i64 478, !59, i64 480, !59, i64 482, !41, i64 484, !41, i64 488, !59, i64 492, !59, i64 494, !41, i64 496, !41, i64 500, !59, i64 504, !59, i64 506, !59, i64 508, !59, i64 510, !59, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !59, i64 528, !59, i64 530, !59, i64 532, !59, i64 534, !59, i64 536, !59, i64 538, !59, i64 540, !59, i64 542, !52, i64 544, !52, i64 560, !54, i64 576, !35, i64 592, !59, i64 608, !59, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !41, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !59, i64 648, !59, i64 650, !59, i64 652, !59, i64 654, !59, i64 656, !59, i64 658, !53, i64 660, !53, i64 664, !59, i64 668, !59, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !41, i64 1704, !59, i64 1708, !59, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !59, i64 2524, !59, i64 2526, !53, i64 2528, !53, i64 2532, !59, i64 2536, !59, i64 2538, !53, i64 2540, !59, i64 2544, !59, i64 2546, !41, i64 2548, !59, i64 2552, !59, i64 2554, !59, i64 2556, !59, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !41, i64 2576, !53, i64 2580, !37, i64 2584, !66, i64 2616, !41, i64 3976, !41, i64 3980}
!61 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !59, i64 8, !59, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!64 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !59, i64 48, !59, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!65 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !53, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!66 = !{!"BakeData", !61, i64 0, !37, i64 248, !59, i64 1272, !59, i64 1274, !59, i64 1276, !59, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!67 = !{!"World", !68, i64 0, !36, i64 120, !59, i64 128, !59, i64 130, !59, i64 132, !59, i64 134, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180, !53, i64 184, !53, i64 188, !53, i64 192, !53, i64 196, !59, i64 200, !59, i64 202, !59, i64 204, !59, i64 206, !59, i64 208, !59, i64 210, !59, i64 212, !59, i64 214, !53, i64 216, !53, i64 220, !53, i64 224, !53, i64 228, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !59, i64 264, !59, i64 266, !59, i64 268, !59, i64 270, !53, i64 272, !53, i64 276, !53, i64 280, !53, i64 284, !59, i64 288, !59, i64 290, !59, i64 292, !59, i64 294, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !59, i64 324, !59, i64 326, !59, i64 328, !59, i64 330, !59, i64 332, !59, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !59, i64 504, !59, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!68 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !59, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!69 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !59, i64 28, !59, i64 30, !59, i64 32, !59, i64 34, !59, i64 36, !59, i64 38, !37, i64 40, !70, i64 48, !70, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !53, i64 144, !53, i64 148}
!70 = !{!"double", !37, i64 0}
!71 = !{!72, !41, i64 16}
!72 = !{!"RenderResult", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !59, i64 24, !59, i64 26, !36, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !41, i64 72, !41, i64 76, !35, i64 80, !54, i64 96, !36, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !36, i64 136}
!73 = !{!72, !41, i64 20}
!74 = !{!54, !41, i64 0}
!75 = !{!54, !41, i64 4}
!76 = !{!54, !41, i64 8}
!77 = !{!54, !41, i64 12}
!78 = !{!72, !41, i64 120}
!79 = !{!58, !41, i64 156}
!80 = !{!58, !41, i64 164}
!81 = !{!41, !41, i64 0}
!82 = !{!83, !59, i64 142}
!83 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !54, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !59, i64 140, !59, i64 142, !59, i64 144, !59, i64 146, !36, i64 152}
!84 = !{!"external_engine.c:get_part_from_result"}
!85 = !{!72, !41, i64 56}
!86 = !{!83, !41, i64 112}
!87 = !{!72, !41, i64 64}
!88 = !{!83, !41, i64 120}
!89 = !{!72, !41, i64 60}
!90 = !{!83, !41, i64 116}
!91 = !{!72, !41, i64 68}
!92 = !{!83, !41, i64 124}
!93 = distinct !{!93, !48}
!94 = !{!72, !36, i64 80}
!95 = !{!72, !36, i64 112}
!96 = !{!58, !36, i64 5968}
!97 = !{!58, !36, i64 5976}
!98 = !{!58, !36, i64 6048}
!99 = !{!58, !36, i64 6056}
!100 = !{!58, !41, i64 1620}
!101 = !{!58, !36, i64 6136}
!102 = !{!58, !36, i64 6128}
!103 = !{!58, !36, i64 6000}
!104 = !{!58, !36, i64 6008}
!105 = !{!37, !37, i64 0}
!106 = !{!58, !36, i64 6016}
!107 = !{!58, !36, i64 6024}
!108 = !{!58, !53, i64 6208}
!109 = !{!58, !53, i64 6212}
!110 = !{!58, !36, i64 6216}
!111 = !{!51, !36, i64 592}
!112 = !{!58, !36, i64 5648}
!113 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81}
!114 = !{!83, !59, i64 140}
!115 = distinct !{!115, !48}
!116 = !{!58, !36, i64 1096}
!117 = !{!58, !36, i64 1088}
!118 = !{i64 0, i64 1, !105, i64 1, i64 1, !105, i64 2, i64 1, !105, i64 3, i64 1, !105, i64 4, i64 1, !105, i64 5, i64 1, !105, i64 6, i64 1, !105, i64 7, i64 1, !105, i64 8, i64 2, !119, i64 10, i64 2, !119, i64 12, i64 4, !120, i64 16, i64 1, !105, i64 17, i64 1, !105, i64 18, i64 6, !105, i64 24, i64 4, !81, i64 28, i64 4, !81, i64 32, i64 64, !105, i64 96, i64 64, !105, i64 160, i64 4, !120, i64 164, i64 4, !120, i64 168, i64 8, !46, i64 176, i64 8, !46, i64 184, i64 64, !105, i64 248, i64 8, !46, i64 256, i64 8, !46, i64 264, i64 4, !81, i64 268, i64 4, !81, i64 272, i64 4, !81, i64 276, i64 4, !81, i64 280, i64 4, !81, i64 284, i64 4, !81, i64 288, i64 4, !81, i64 292, i64 4, !81, i64 296, i64 4, !81, i64 300, i64 4, !81, i64 304, i64 4, !81, i64 308, i64 4, !81, i64 312, i64 2, !119, i64 314, i64 2, !119, i64 316, i64 4, !81, i64 320, i64 4, !81, i64 324, i64 4, !81, i64 328, i64 4, !81, i64 332, i64 4, !81, i64 336, i64 4, !81, i64 340, i64 4, !81, i64 344, i64 4, !81, i64 348, i64 4, !81, i64 352, i64 4, !81, i64 356, i64 4, !81, i64 360, i64 4, !120, i64 364, i64 4, !81, i64 368, i64 4, !81, i64 372, i64 4, !81, i64 376, i64 4, !81, i64 380, i64 4, !81, i64 384, i64 4, !81, i64 388, i64 4, !81, i64 392, i64 8, !46, i64 400, i64 4, !81, i64 404, i64 4, !81, i64 408, i64 4, !81, i64 412, i64 4, !120, i64 416, i64 4, !81, i64 420, i64 4, !81, i64 424, i64 4, !81, i64 428, i64 4, !81, i64 432, i64 2, !119, i64 434, i64 2, !119, i64 436, i64 4, !120, i64 440, i64 4, !120, i64 444, i64 4, !120, i64 448, i64 4, !120, i64 452, i64 4, !120, i64 456, i64 2, !119, i64 458, i64 2, !119, i64 460, i64 2, !119, i64 462, i64 2, !119, i64 464, i64 2, !119, i64 466, i64 2, !119, i64 468, i64 4, !81, i64 472, i64 2, !119, i64 474, i64 2, !119, i64 476, i64 2, !119, i64 478, i64 2, !119, i64 480, i64 2, !119, i64 482, i64 2, !119, i64 484, i64 4, !81, i64 488, i64 4, !81, i64 492, i64 2, !119, i64 494, i64 2, !119, i64 496, i64 4, !81, i64 500, i64 4, !81, i64 504, i64 2, !119, i64 506, i64 2, !119, i64 508, i64 2, !119, i64 510, i64 2, !119, i64 512, i64 2, !119, i64 514, i64 1, !105, i64 515, i64 1, !105, i64 516, i64 4, !81, i64 520, i64 4, !81, i64 524, i64 4, !81, i64 528, i64 2, !119, i64 530, i64 2, !119, i64 532, i64 2, !119, i64 534, i64 2, !119, i64 536, i64 2, !119, i64 538, i64 2, !119, i64 540, i64 2, !119, i64 542, i64 2, !119, i64 544, i64 4, !120, i64 548, i64 4, !120, i64 552, i64 4, !120, i64 556, i64 4, !120, i64 560, i64 4, !120, i64 564, i64 4, !120, i64 568, i64 4, !120, i64 572, i64 4, !120, i64 576, i64 4, !81, i64 580, i64 4, !81, i64 584, i64 4, !81, i64 588, i64 4, !81, i64 592, i64 8, !46, i64 600, i64 8, !46, i64 608, i64 2, !119, i64 610, i64 2, !119, i64 612, i64 4, !120, i64 616, i64 4, !120, i64 620, i64 4, !120, i64 624, i64 4, !120, i64 628, i64 4, !81, i64 632, i64 4, !120, i64 636, i64 4, !120, i64 640, i64 4, !120, i64 644, i64 4, !120, i64 648, i64 2, !119, i64 650, i64 2, !119, i64 652, i64 2, !119, i64 654, i64 2, !119, i64 656, i64 2, !119, i64 658, i64 2, !119, i64 660, i64 4, !120, i64 664, i64 4, !120, i64 668, i64 2, !119, i64 670, i64 2, !119, i64 672, i64 4, !120, i64 676, i64 4, !120, i64 680, i64 1024, !105, i64 1704, i64 4, !81, i64 1708, i64 2, !119, i64 1710, i64 2, !119, i64 1712, i64 768, !105, i64 2480, i64 16, !105, i64 2496, i64 16, !105, i64 2512, i64 1, !105, i64 2513, i64 1, !105, i64 2514, i64 1, !105, i64 2515, i64 5, !105, i64 2520, i64 4, !81, i64 2524, i64 2, !119, i64 2526, i64 2, !119, i64 2528, i64 4, !120, i64 2532, i64 4, !120, i64 2536, i64 2, !119, i64 2538, i64 2, !119, i64 2540, i64 4, !120, i64 2544, i64 2, !119, i64 2546, i64 2, !119, i64 2548, i64 4, !81, i64 2552, i64 2, !119, i64 2554, i64 2, !119, i64 2556, i64 2, !119, i64 2558, i64 2, !119, i64 2560, i64 4, !120, i64 2564, i64 4, !120, i64 2568, i64 8, !46, i64 2576, i64 4, !81, i64 2580, i64 4, !120, i64 2584, i64 32, !105, i64 2616, i64 1, !105, i64 2617, i64 1, !105, i64 2618, i64 1, !105, i64 2619, i64 1, !105, i64 2620, i64 1, !105, i64 2621, i64 1, !105, i64 2622, i64 1, !105, i64 2623, i64 1, !105, i64 2624, i64 2, !119, i64 2626, i64 2, !119, i64 2628, i64 4, !120, i64 2632, i64 1, !105, i64 2633, i64 1, !105, i64 2634, i64 6, !105, i64 2640, i64 4, !81, i64 2644, i64 4, !81, i64 2648, i64 64, !105, i64 2712, i64 64, !105, i64 2776, i64 4, !120, i64 2780, i64 4, !120, i64 2784, i64 8, !46, i64 2792, i64 8, !46, i64 2800, i64 64, !105, i64 2864, i64 1024, !105, i64 3888, i64 2, !119, i64 3890, i64 2, !119, i64 3892, i64 2, !119, i64 3894, i64 2, !119, i64 3896, i64 4, !120, i64 3900, i64 4, !120, i64 3904, i64 3, !105, i64 3907, i64 1, !105, i64 3908, i64 1, !105, i64 3909, i64 3, !105, i64 3912, i64 64, !105, i64 3976, i64 4, !81, i64 3980, i64 4, !81}
!119 = !{!59, !59, i64 0}
!120 = !{!53, !53, i64 0}
!121 = !{!"external_engine.c:BLI_listbase_clear"}
!122 = !{!40, !36, i64 168}
!123 = !{!58, !41, i64 1624}
!124 = !{!125, !41, i64 680}
!125 = !{!"Scene", !68, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !59, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !60, i64 280, !126, i64 4264, !35, i64 4296, !35, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !59, i64 4376, !59, i64 4378, !41, i64 4380, !35, i64 4384, !127, i64 4400, !128, i64 4416, !131, i64 4600, !36, i64 4608, !132, i64 4616, !36, i64 4640, !133, i64 4648, !133, i64 4656, !62, i64 4664, !63, i64 4824, !134, i64 4888, !36, i64 4952}
!126 = !{!"AudioData", !41, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !59, i64 20, !59, i64 22, !53, i64 24, !53, i64 28}
!127 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!128 = !{!"GameData", !127, i64 0, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !59, i64 32, !37, i64 34, !129, i64 40, !59, i64 64, !59, i64 66, !53, i64 68, !130, i64 72, !53, i64 128, !53, i64 132, !41, i64 136, !59, i64 140, !59, i64 142, !59, i64 144, !59, i64 146, !59, i64 148, !59, i64 150, !59, i64 152, !59, i64 154, !59, i64 156, !59, i64 158, !59, i64 160, !59, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!129 = !{!"GameDome", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!130 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !41, i64 40, !53, i64 44, !53, i64 48, !59, i64 52, !59, i64 54}
!131 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !59, i64 6}
!132 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!133 = !{!"long", !37, i64 0}
!134 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!135 = !{!58, !41, i64 6064}
!136 = !{!40, !36, i64 152}
!137 = !{!51, !41, i64 36}
!138 = !{!51, !41, i64 40}
!139 = !{!140, !37, i64 2080}
!140 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !59, i64 2084, !59, i64 2086, !59, i64 2088, !37, i64 2090, !59, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!141 = !{!58, !36, i64 6232}
!142 = !{!58, !36, i64 6032}
!143 = !{!58, !36, i64 6040}
!144 = !{!58, !41, i64 5624}
!145 = !{!58, !59, i64 1712}
!146 = !{!147, !41, i64 104}
!147 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !53, i64 124, !148, i64 128}
!148 = !{!"FreestyleConfig", !35, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !35, i64 40}
!149 = !{!147, !41, i64 108}
!150 = distinct !{!150, !48}
!151 = !{!58, !59, i64 96}
!152 = !{!58, !36, i64 5616}
!153 = !{!51, !36, i64 24}
!154 = !{!58, !41, i64 5628}
!155 = !{!51, !41, i64 32}
!156 = !{!51, !36, i64 56}
!157 = !{!"external_engine.c:render_layer_exclude_animated"}
