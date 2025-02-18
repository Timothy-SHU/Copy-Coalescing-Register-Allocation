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
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }

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

; Function Attrs: nounwind uwtable
define dso_local void @RE_engines_init() local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull @R_engines, ptr noundef nonnull @internal_render_type) #10
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engines_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @R_engines, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %5, %19 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  tail call void @BLI_remlink(ptr noundef nonnull @R_engines, ptr noundef nonnull %4) #10
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
  tail call void %12(ptr noundef %16) #10
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %18(ptr noundef nonnull %4) #10
  br label %19

19:                                               ; preds = %3, %17
  %20 = icmp eq ptr %5, null
  br i1 %20, label %21, label %3, !llvm.loop !47

21:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @RE_engines_find(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef %0, i32 noundef 16) #10
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @internal_render_type, ptr %2
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @RE_engine_is_external(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %3 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef nonnull %2, i32 noundef 16) #10
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @internal_render_type, ptr %3
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RE_engine_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 712, ptr noundef nonnull @.str) #10
  store ptr %0, ptr %3, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RE_engine_create_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %4 = tail call ptr %3(i64 noundef 712, ptr noundef nonnull @.str) #10
  store ptr %0, ptr %4, align 8, !tbaa !51
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RenderEngine, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = or i32 %8, 64
  store i32 %9, ptr %7, align 8, !tbaa !56
  tail call void @BLI_begin_threaded_malloc() #10
  br label %10

10:                                               ; preds = %6, %2
  ret ptr %4
}

declare void @BLI_begin_threaded_malloc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BLI_end_threaded_malloc() #10
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef %0) #10
  ret void
}

declare void @BLI_end_threaded_malloc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_engine_begin_result(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.rcti, align 4
  %8 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.RenderResult, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !72
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 %1)
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ 0, %6 ], [ %16, %11 ]
  %19 = icmp slt i32 %2, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.RenderResult, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !74
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %2)
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %20 ]
  %28 = icmp slt i32 %3, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.RenderResult, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !72
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 %3)
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %29 ]
  %37 = icmp slt i32 %4, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.RenderResult, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 %4)
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i32 [ 0, %35 ], [ %43, %38 ]
  %46 = add nsw i32 %36, %18
  %47 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.RenderResult, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = icmp sgt i32 %46, %50
  %52 = sub nsw i32 %50, %18
  %53 = select i1 %51, i32 %52, i32 %36
  %54 = add nsw i32 %45, %27
  %55 = getelementptr inbounds %struct.RenderResult, ptr %48, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = icmp sgt i32 %54, %56
  %58 = sub nsw i32 %56, %27
  %59 = select i1 %57, i32 %58, i32 %45
  store i32 %18, ptr %7, align 4, !tbaa !75
  %60 = add nsw i32 %53, %18
  %61 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !76
  %62 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  store i32 %27, ptr %62, align 4, !tbaa !77
  %63 = add nsw i32 %59, %27
  %64 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %63, ptr %64, align 4, !tbaa !78
  %65 = call ptr @render_result_new(ptr noundef %9, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, ptr noundef %5) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %121, label %67

67:                                               ; preds = %44
  %68 = load ptr, ptr %47, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.RenderResult, ptr %68, i64 0, i32 15
  %70 = load i32, ptr %69, align 8, !tbaa !79
  %71 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 15
  store i32 %70, ptr %71, align 8, !tbaa !79
  %72 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %72, ptr noundef nonnull %65) #10
  %73 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 15
  %74 = load i32, ptr %73, align 4, !tbaa !80
  %75 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !81
  %77 = add nsw i32 %76, %74
  store i32 %77, ptr %75, align 8, !tbaa !81
  %78 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 9, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !82
  %80 = add nsw i32 %79, %74
  store i32 %80, ptr %78, align 4, !tbaa !82
  %81 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 15, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !83
  %83 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 9, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !84
  %85 = add nsw i32 %84, %82
  store i32 %85, ptr %83, align 8, !tbaa !84
  %86 = getelementptr inbounds %struct.RenderResult, ptr %65, i64 0, i32 9, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !85
  %88 = add nsw i32 %87, %82
  store i32 %88, ptr %86, align 4, !tbaa !85
  %89 = getelementptr inbounds %struct.Render, ptr %9, i64 0, i32 50
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %67, %113
  %93 = phi ptr [ %114, %113 ], [ %90, %67 ]
  %94 = getelementptr inbounds %struct.RenderPart, ptr %93, i64 0, i32 13
  %95 = load i32, ptr %94, align 8, !tbaa !86
  %96 = sub nsw i32 %95, %74
  %97 = icmp eq i32 %77, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.RenderPart, ptr %93, i64 0, i32 13, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !88
  %101 = sub nsw i32 %100, %82
  %102 = icmp eq i32 %85, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.RenderPart, ptr %93, i64 0, i32 13, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !89
  %106 = sub nsw i32 %105, %74
  %107 = icmp eq i32 %80, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.RenderPart, ptr %93, i64 0, i32 13, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !90
  %111 = sub nsw i32 %110, %82
  %112 = icmp eq i32 %88, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %108, %103, %98, %92
  %114 = load ptr, ptr %93, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %92, !llvm.loop !91

116:                                              ; preds = %108, %113, %67
  %117 = phi ptr [ null, %67 ], [ %93, %108 ], [ null, %113 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.RenderPart, ptr %117, i64 0, i32 18
  store i16 1, ptr %120, align 2, !tbaa !92
  br label %121

121:                                              ; preds = %116, %119, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret ptr %65
}

declare ptr @render_result_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_update_result(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  store ptr %8, ptr %9, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 86
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 87
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  tail call void %11(ptr noundef %13, ptr noundef nonnull %1, ptr noundef null) #10
  br label %14

14:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_end_result(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %1, null
  br i1 %7, label %107, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 50
  %12 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 3
  %13 = load ptr, ptr %11, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 15
  %19 = load i32, ptr %18, align 4, !tbaa !80
  %20 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 2
  %21 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 15, i32 2
  %22 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 9, i32 1
  br label %23

23:                                               ; preds = %48, %15
  %24 = phi ptr [ %13, %15 ], [ %49, %48 ]
  %25 = getelementptr inbounds %struct.RenderPart, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !86
  %27 = sub nsw i32 %26, %19
  %28 = icmp eq i32 %17, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32, ptr %20, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.RenderPart, ptr %24, i64 0, i32 13, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !88
  %33 = load i32, ptr %21, align 4, !tbaa !83
  %34 = sub nsw i32 %32, %33
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load i32, ptr %22, align 4, !tbaa !82
  %38 = getelementptr inbounds %struct.RenderPart, ptr %24, i64 0, i32 13, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !89
  %40 = sub nsw i32 %39, %19
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, ptr %12, align 4, !tbaa !85
  %44 = getelementptr inbounds %struct.RenderPart, ptr %24, i64 0, i32 13, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !90
  %46 = sub nsw i32 %45, %33
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42, %36, %29, %23
  %49 = load ptr, ptr %24, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %23, !llvm.loop !91

51:                                               ; preds = %42, %48, %10
  %52 = phi ptr [ null, %10 ], [ %24, %42 ], [ null, %48 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.RenderPart, ptr %52, i64 0, i32 18
  store i16 2, ptr %55, align 2, !tbaa !92
  br label %65

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.RenderResult, ptr %58, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !79
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr @stderr, align 8, !tbaa !46
  %64 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %63) #11
  br label %65

65:                                               ; preds = %54, %62, %56, %8
  %66 = icmp ne i32 %3, 0
  %67 = or i1 %9, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.RenderResult, ptr %70, i64 0, i32 15
  %72 = load i32, ptr %71, align 8, !tbaa !79
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  br i1 %9, label %75, label %90

75:                                               ; preds = %74
  tail call void @render_result_exr_file_merge(ptr noundef %70, ptr noundef nonnull %1) #10
  br label %90

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 96
  %78 = load ptr, ptr %77, align 8, !tbaa !97
  %79 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 97
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = tail call i32 %78(ptr noundef %80) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 45, i32 46
  %85 = load i32, ptr %84, align 4, !tbaa !99
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %76
  %89 = load ptr, ptr %69, align 8, !tbaa !58
  tail call void @render_result_merge(ptr noundef %89, ptr noundef nonnull %1) #10
  br label %90

90:                                               ; preds = %83, %88, %74, %75
  %91 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 96
  %92 = load ptr, ptr %91, align 8, !tbaa !97
  %93 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 97
  %94 = load ptr, ptr %93, align 8, !tbaa !98
  %95 = tail call i32 %92(ptr noundef %94) #10
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 12
  %99 = load ptr, ptr %98, align 8, !tbaa !93
  %100 = getelementptr inbounds %struct.RenderResult, ptr %1, i64 0, i32 14
  store ptr %99, ptr %100, align 8, !tbaa !94
  %101 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 86
  %102 = load ptr, ptr %101, align 8, !tbaa !95
  %103 = getelementptr inbounds %struct.Render, ptr %6, i64 0, i32 87
  %104 = load ptr, ptr %103, align 8, !tbaa !96
  tail call void %102(ptr noundef %104, ptr noundef nonnull %1, ptr noundef null) #10
  br label %105

105:                                              ; preds = %90, %97, %65
  %106 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %106, ptr noundef nonnull %1) #10
  tail call void @render_result_free(ptr noundef nonnull %1) #10
  br label %107

107:                                              ; preds = %4, %105
  ret void
}

declare void @render_result_exr_file_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @render_result_merge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @render_result_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @RE_engine_test_break(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 96
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 97
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = tail call i32 %7(ptr noundef %9) #10
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_update_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98
  %9 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 17
  store ptr %1, ptr %9, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 16
  store ptr %2, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 90
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 91
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  tail call void %12(ptr noundef %14, ptr noundef nonnull %8) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 8, !tbaa !104
  %17 = icmp eq ptr %1, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %1, align 1, !tbaa !104
  %20 = icmp ne i8 %19, 0
  %21 = icmp ne ptr %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8, ptr %2, align 1, !tbaa !104
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 512, ptr noundef nonnull @.str.2, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  br label %41

28:                                               ; preds = %23, %18, %15
  %29 = icmp eq ptr %2, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = load i8, ptr %2, align 1, !tbaa !104
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %2, i64 noundef 512) #10
  br label %41

35:                                               ; preds = %30, %28
  br i1 %17, label %41, label %36

36:                                               ; preds = %35
  %37 = load i8, ptr %1, align 1, !tbaa !104
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %1, i64 noundef 512) #10
  br label %41

41:                                               ; preds = %33, %39, %36, %35, %26
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_update_progress(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !57
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
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.Render, ptr %4, i64 0, i32 93
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  tail call void %14(ptr noundef %16, float noundef %12) #10
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RE_engine_update_memory_stats(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 19
  store float %1, ptr %8, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 98, i32 20
  store float %2, ptr %9, align 4, !tbaa !108
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_report(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 99
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  tail call void @BKE_report(ptr noundef %9, i32 noundef %1, ptr noundef %2) #10
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef nonnull %12, i32 noundef %1, ptr noundef %2) #10
  br label %15

15:                                               ; preds = %10, %14, %7
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_get_current_tiles(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RenderEngine, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %70, label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 50
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %12, %64
  %17 = phi ptr [ %68, %64 ], [ %14, %12 ]
  %18 = phi i32 [ %67, %64 ], [ 0, %12 ]
  %19 = phi ptr [ %66, %64 ], [ null, %12 ]
  %20 = phi i32 [ %65, %64 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.RenderPart, ptr %17, i64 0, i32 18
  %22 = load i16, ptr %21, align 2, !tbaa !92
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %64

24:                                               ; preds = %16
  %25 = icmp slt i32 %20, %18
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = icmp eq ptr %19, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %30 = tail call ptr %29(i64 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !46
  %33 = add nsw i32 %20, 1
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 4
  %36 = tail call ptr %32(ptr noundef nonnull %19, i64 noundef %35, ptr noundef nonnull @__func__.RE_engine_get_current_tiles) #10
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i64 16, i1 false), !tbaa.struct !112
  %46 = getelementptr inbounds %struct.RenderPart, ptr %17, i64 0, i32 17
  %47 = load i16, ptr %46, align 4, !tbaa !114
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %40
  %50 = sext i16 %47 to i32
  %51 = load i32, ptr %44, align 4, !tbaa !75
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr %44, align 4, !tbaa !75
  %53 = getelementptr inbounds %struct.rcti, ptr %41, i64 %43, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !77
  %55 = add nsw i32 %54, %50
  store i32 %55, ptr %53, align 4, !tbaa !77
  %56 = getelementptr inbounds %struct.rcti, ptr %41, i64 %43, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !76
  %58 = sub nsw i32 %57, %50
  store i32 %58, ptr %56, align 4, !tbaa !76
  %59 = getelementptr inbounds %struct.rcti, ptr %41, i64 %43, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !78
  %61 = sub nsw i32 %60, %50
  store i32 %61, ptr %59, align 4, !tbaa !78
  br label %62

62:                                               ; preds = %49, %40
  %63 = add nsw i32 %20, 1
  br label %64

64:                                               ; preds = %16, %62
  %65 = phi i32 [ %63, %62 ], [ %20, %16 ]
  %66 = phi ptr [ %41, %62 ], [ %19, %16 ]
  %67 = phi i32 [ %42, %62 ], [ %18, %16 ]
  %68 = load ptr, ptr %17, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %16, !llvm.loop !115

70:                                               ; preds = %64, %12, %7
  %71 = phi i32 [ 0, %7 ], [ 0, %12 ], [ %65, %64 ]
  %72 = phi ptr [ null, %7 ], [ null, %12 ], [ %66, %64 ]
  store i32 %71, ptr %1, align 4, !tbaa !113
  store ptr %72, ptr %2, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @RE_engine_get_render_data(ptr noundef readnone %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_bake_engine_set_engine_parameters(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %5, align 8, !tbaa !117
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %6, ptr noundef nonnull align 8 dereferenceable(3984) %7, i64 3984, i1 false), !tbaa.struct !118
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @RE_bake_has_engine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %3 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef nonnull %2, i32 noundef 16) #10
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @internal_render_type, ptr %3
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @RE_bake_engine(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %9 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef nonnull %8, i32 noundef 16) #10
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @internal_render_type, ptr %9
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %13 = load i32, ptr %12, align 8, !tbaa !122
  %14 = and i32 %13, 67108864
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %18, ptr %19, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %21 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %21, i64 noundef 62) #10
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %23, i8 0, i64 20, i1 false)
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %29 = tail call ptr %28(i64 noundef 712, ptr noundef nonnull @.str) #10
  store ptr %11, ptr %29, align 8, !tbaa !51
  store ptr %29, ptr %24, align 8, !tbaa !111
  br label %30

30:                                               ; preds = %27, %7
  %31 = phi ptr [ %25, %7 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = or i32 %33, 16
  store i32 %34, ptr %32, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 7
  store ptr %0, ptr %35, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %37 = load i32, ptr %36, align 4, !tbaa !135
  %38 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 10
  store i32 %37, ptr %38, align 8, !tbaa !136
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 8, !tbaa !137
  %41 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 11
  store i32 %40, ptr %41, align 4, !tbaa !138
  tail call void @RE_parts_init(ptr noundef %0, i8 noundef zeroext 0) #10
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 37
  %43 = load i32, ptr %42, align 8, !tbaa !139
  %44 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 5
  store i32 %43, ptr %44, align 4, !tbaa !140
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 38
  %46 = load i32, ptr %45, align 4, !tbaa !141
  %47 = getelementptr inbounds %struct.RenderEngine, ptr %31, i64 0, i32 6
  store i32 %46, ptr %47, align 8, !tbaa !142
  %48 = getelementptr inbounds %struct.RenderEngineType, ptr %11, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %53 = load ptr, ptr %52, align 8, !tbaa !117
  %54 = load ptr, ptr %15, align 8, !tbaa !116
  tail call void %49(ptr noundef nonnull %31, ptr noundef %53, ptr noundef %54) #10
  br label %55

55:                                               ; preds = %51, %30
  %56 = getelementptr inbounds %struct.RenderEngineType, ptr %11, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !121
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %15, align 8, !tbaa !116
  %61 = trunc i64 %3 to i32
  tail call void %57(ptr noundef nonnull %31, ptr noundef %60, ptr noundef %1, i32 noundef %5, ptr noundef %2, i32 noundef %61, i32 noundef %4, ptr noundef %6) #10
  br label %62

62:                                               ; preds = %59, %55
  store i32 0, ptr %44, align 4, !tbaa !140
  store i32 0, ptr %47, align 8, !tbaa !142
  %63 = load i32, ptr %32, align 8, !tbaa !56
  %64 = and i32 %63, -17
  store i32 %64, ptr %32, align 8, !tbaa !56
  %65 = icmp eq i32 %14, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %24, align 8, !tbaa !111
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66, %62
  %70 = and i32 %63, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @BLI_end_threaded_malloc() #10
  br label %73

73:                                               ; preds = %69, %72
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %74(ptr noundef nonnull %31) #10
  store ptr null, ptr %24, align 8, !tbaa !111
  br label %75

75:                                               ; preds = %73, %66
  tail call void @RE_parts_free(ptr noundef %0) #10
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %77 = load ptr, ptr %76, align 8, !tbaa !109
  %78 = tail call zeroext i8 @BKE_reports_contain(ptr noundef %77, i32 noundef 32) #10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !144
  br label %81

81:                                               ; preds = %80, %75
  ret i8 1
}

declare void @RE_parts_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @RE_parts_free(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_reports_contain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_engine_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderEngine, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !57
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
  tail call void @BKE_scene_frame_set(ptr noundef %7, double noundef %16) #10
  %17 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 101
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  tail call void @BKE_scene_update_for_newframe_ex(ptr noundef %18, ptr noundef %20, ptr noundef %7, i32 noundef 1048575, i8 noundef zeroext 1) #10
  %21 = tail call i32 @BKE_scene_camera_switch_update(ptr noundef %7) #10
  ret void
}

declare void @BKE_scene_frame_set(ptr noundef, double noundef) local_unnamed_addr #1

declare void @BKE_scene_update_for_newframe_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BKE_scene_camera_switch_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RE_engine_render(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 115
  %6 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef nonnull %5, i32 noundef 16) #10
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @internal_render_type, ptr %6
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !122
  %11 = and i32 %10, 67108864
  %12 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %254, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %17 = load i32, ptr %16, align 4, !tbaa !99
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !43
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %254, label %25

25:                                               ; preds = %20, %15
  %26 = icmp eq i32 %1, 0
  %27 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !43
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %26, label %32, label %31

31:                                               ; preds = %25
  br i1 %30, label %254, label %33

32:                                               ; preds = %25
  br i1 %30, label %33, label %254

33:                                               ; preds = %31, %32
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 94
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  tail call void %35(ptr noundef %39, i32 noundef 1) #10
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, ptr %16, align 4, !tbaa !99
  %42 = and i32 %41, 16392
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %46 = load i32, ptr %45, align 8, !tbaa !149
  %47 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !43
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %100, label %51

51:                                               ; preds = %44
  %52 = and i32 %41, 512
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  br i1 %53, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 61
  %57 = load i16, ptr %56, align 8, !tbaa !150
  %58 = sext i16 %57 to i32
  %59 = tail call ptr @BLI_findlink(ptr noundef nonnull %54, i32 noundef %58) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %97, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.SceneRenderLayer, ptr %59, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !151
  %64 = xor i32 %63, -1
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %66 = load ptr, ptr %65, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @RNA_pointer_create(ptr noundef %66, ptr noundef nonnull @RNA_SceneRenderLayer, ptr noundef nonnull %59, ptr noundef nonnull %3) #10
  %67 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #10
  %68 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %3, ptr noundef %67) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 %64, i32 -1
  br label %97

71:                                               ; preds = %51
  %72 = load ptr, ptr %54, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %97, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  br label %76

76:                                               ; preds = %74, %93
  %77 = phi ptr [ %72, %74 ], [ %95, %93 ]
  %78 = phi i32 [ 0, %74 ], [ %94, %93 ]
  %79 = getelementptr inbounds %struct.SceneRenderLayer, ptr %77, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !154
  %81 = and i32 %80, 131072
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.SceneRenderLayer, ptr %77, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !151
  %86 = xor i32 %85, -1
  %87 = or i32 %78, %86
  %88 = load ptr, ptr %75, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @RNA_pointer_create(ptr noundef %88, ptr noundef nonnull @RNA_SceneRenderLayer, ptr noundef nonnull %77, ptr noundef nonnull %4) #10
  %89 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.4) #10
  %90 = call zeroext i8 @RNA_property_animated(ptr noundef nonnull %4, ptr noundef %89) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 %87, i32 -1
  br label %93

93:                                               ; preds = %83, %76
  %94 = phi i32 [ %78, %76 ], [ %92, %83 ]
  %95 = load ptr, ptr %77, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %76, !llvm.loop !155

97:                                               ; preds = %93, %71, %61, %55
  %98 = phi i32 [ 0, %55 ], [ %70, %61 ], [ 0, %71 ], [ %94, %93 ]
  %99 = and i32 %98, %46
  br label %100

100:                                              ; preds = %97, %44
  %101 = phi i32 [ %99, %97 ], [ %46, %44 ]
  %102 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %103 = load ptr, ptr %102, align 8, !tbaa !146
  %104 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %105 = load ptr, ptr %104, align 8, !tbaa !117
  %106 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %107 = load ptr, ptr %106, align 8, !tbaa !116
  call void @BKE_scene_update_for_newframe_ex(ptr noundef %103, ptr noundef %105, ptr noundef %107, i32 noundef %101, i8 noundef zeroext 1) #10
  %108 = load ptr, ptr %106, align 8, !tbaa !116
  %109 = getelementptr inbounds %struct.Scene, ptr %108, i64 0, i32 22
  call void @render_update_anim_renderdata(ptr noundef %0, ptr noundef nonnull %109) #10
  br label %110

110:                                              ; preds = %100, %40
  %111 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 12
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %111, i32 noundef 2) #10
  %112 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !58
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %16, align 4, !tbaa !99
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  br i1 %114, label %121, label %120

120:                                              ; preds = %119
  call void @render_result_free(ptr noundef nonnull %113) #10
  br label %121

121:                                              ; preds = %110, %120, %119
  %122 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !43
  %124 = and i32 %123, 64
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load i32, ptr %16, align 4, !tbaa !99
  %128 = lshr i32 %127, 10
  %129 = and i32 %128, 1
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i32 [ 0, %121 ], [ %129, %126 ]
  %132 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 15
  %133 = call ptr @render_result_new(ptr noundef %0, ptr noundef nonnull %132, i32 noundef 0, i32 noundef %131, ptr noundef null) #10
  store ptr %133, ptr %112, align 8, !tbaa !58
  br label %134

134:                                              ; preds = %130, %115
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %111) #10
  %135 = load ptr, ptr %112, align 8, !tbaa !58
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load ptr, ptr %34, align 8, !tbaa !147
  %139 = icmp eq ptr %138, null
  br i1 %139, label %254, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %142 = load ptr, ptr %141, align 8, !tbaa !148
  call void %138(ptr noundef %142, i32 noundef 0) #10
  br label %254

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %145 = load ptr, ptr %144, align 8, !tbaa !116
  %146 = getelementptr inbounds %struct.Scene, ptr %145, i64 0, i32 22, i32 5
  %147 = load i32, ptr %146, align 8, !tbaa !123
  %148 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store i32 %147, ptr %148, align 8, !tbaa !134
  %149 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %150 = getelementptr inbounds %struct.ID, ptr %145, i64 0, i32 4, i64 2
  %151 = call ptr @BLI_strncpy(ptr noundef nonnull %149, ptr noundef nonnull %150, i64 noundef 64) #10
  %152 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %153 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %152, i8 0, i64 20, i1 false)
  %154 = load ptr, ptr %153, align 8, !tbaa !111
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %158 = call ptr %157(i64 noundef 712, ptr noundef nonnull @.str) #10
  store ptr %8, ptr %158, align 8, !tbaa !51
  store ptr %158, ptr %153, align 8, !tbaa !111
  br label %159

159:                                              ; preds = %156, %143
  %160 = phi ptr [ %154, %143 ], [ %158, %156 ]
  %161 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !56
  %163 = or i32 %162, 16
  store i32 %163, ptr %161, align 8, !tbaa !56
  %164 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 7
  store ptr %0, ptr %164, align 8, !tbaa !57
  %165 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %166 = load i16, ptr %165, align 8, !tbaa !156
  %167 = and i16 %166, 128
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %159
  %170 = or i32 %162, 17
  store i32 %170, ptr %161, align 8, !tbaa !56
  br label %171

171:                                              ; preds = %169, %159
  %172 = load i32, ptr %16, align 4, !tbaa !99
  %173 = and i32 %172, 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %161, align 8, !tbaa !56
  %177 = or i32 %176, 2
  store i32 %177, ptr %161, align 8, !tbaa !56
  br label %178

178:                                              ; preds = %175, %171
  %179 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 47
  %180 = load ptr, ptr %179, align 8, !tbaa !157
  %181 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 3
  store ptr %180, ptr %181, align 8, !tbaa !158
  %182 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 49
  %183 = load i32, ptr %182, align 4, !tbaa !159
  %184 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 4
  store i32 %183, ptr %184, align 8, !tbaa !160
  %185 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %186 = load i32, ptr %185, align 4, !tbaa !135
  %187 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 10
  store i32 %186, ptr %187, align 8, !tbaa !136
  %188 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %189 = load i32, ptr %188, align 8, !tbaa !137
  %190 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 11
  store i32 %189, ptr %190, align 4, !tbaa !138
  call void @RE_parts_init(ptr noundef %0, i8 noundef zeroext 0) #10
  %191 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %192 = load i32, ptr %191, align 8, !tbaa !161
  %193 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 5
  store i32 %192, ptr %193, align 4, !tbaa !140
  %194 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 23
  %195 = load i32, ptr %194, align 4, !tbaa !162
  %196 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 6
  store i32 %195, ptr %196, align 8, !tbaa !142
  %197 = load ptr, ptr %112, align 8, !tbaa !58
  %198 = getelementptr inbounds %struct.RenderResult, ptr %197, i64 0, i32 15
  %199 = load i32, ptr %198, align 8, !tbaa !79
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %178
  call void @render_result_exr_file_begin(ptr noundef %0) #10
  br label %202

202:                                              ; preds = %201, %178
  %203 = getelementptr inbounds %struct.RenderEngineType, ptr %8, i64 0, i32 5
  %204 = load ptr, ptr %203, align 8, !tbaa !143
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %208 = load ptr, ptr %207, align 8, !tbaa !117
  %209 = load ptr, ptr %144, align 8, !tbaa !116
  call void %204(ptr noundef nonnull %160, ptr noundef %208, ptr noundef %209) #10
  br label %210

210:                                              ; preds = %206, %202
  %211 = load ptr, ptr %34, align 8, !tbaa !147
  %212 = icmp eq ptr %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 95
  %215 = load ptr, ptr %214, align 8, !tbaa !148
  call void %211(ptr noundef %215, i32 noundef 0) #10
  br label %216

216:                                              ; preds = %213, %210
  %217 = load ptr, ptr %12, align 8, !tbaa !50
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %144, align 8, !tbaa !116
  call void %217(ptr noundef nonnull %160, ptr noundef %220) #10
  br label %221

221:                                              ; preds = %219, %216
  store i32 0, ptr %193, align 4, !tbaa !140
  store i32 0, ptr %196, align 8, !tbaa !142
  %222 = load i32, ptr %161, align 8, !tbaa !56
  %223 = and i32 %222, -17
  store i32 %223, ptr %161, align 8, !tbaa !56
  %224 = getelementptr inbounds %struct.RenderEngine, ptr %160, i64 0, i32 8
  %225 = load ptr, ptr %224, align 8, !tbaa !163
  call void @render_result_free_list(ptr noundef nonnull %224, ptr noundef %225) #10
  %226 = icmp eq i32 %11, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %221
  %228 = load ptr, ptr %153, align 8, !tbaa !111
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %227, %221
  %231 = load i32, ptr %161, align 8, !tbaa !56
  %232 = and i32 %231, 64
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  call void @BLI_end_threaded_malloc() #10
  br label %235

235:                                              ; preds = %230, %234
  %236 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %236(ptr noundef nonnull %160) #10
  store ptr null, ptr %153, align 8, !tbaa !111
  br label %237

237:                                              ; preds = %235, %227
  %238 = load ptr, ptr %112, align 8, !tbaa !58
  %239 = getelementptr inbounds %struct.RenderResult, ptr %238, i64 0, i32 15
  %240 = load i32, ptr %239, align 8, !tbaa !79
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %111, i32 noundef 2) #10
  call void @render_result_exr_file_end(ptr noundef %0) #10
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %111) #10
  br label %243

243:                                              ; preds = %242, %237
  %244 = load i32, ptr %16, align 4, !tbaa !99
  %245 = and i32 %244, 1048576
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  call void @BLI_rw_mutex_lock(ptr noundef nonnull %111, i32 noundef 2) #10
  call void @render_result_exr_file_cache_write(ptr noundef %0) #10
  call void @BLI_rw_mutex_unlock(ptr noundef nonnull %111) #10
  br label %248

248:                                              ; preds = %247, %243
  call void @RE_parts_free(ptr noundef %0) #10
  %249 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 99
  %250 = load ptr, ptr %249, align 8, !tbaa !109
  %251 = call zeroext i8 @BKE_reports_contain(ptr noundef %250, i32 noundef 32) #10
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !144
  br label %254

254:                                              ; preds = %248, %253, %137, %140, %32, %31, %20, %2
  %255 = phi i32 [ 0, %2 ], [ 0, %20 ], [ 0, %31 ], [ 0, %32 ], [ 1, %140 ], [ 1, %137 ], [ 1, %253 ], [ 1, %248 ]
  ret i32 %255
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @render_update_anim_renderdata(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_begin(ptr noundef) local_unnamed_addr #1

declare void @render_result_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_end(ptr noundef) local_unnamed_addr #1

declare void @render_result_exr_file_cache_write(ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_animated(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold }

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
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!40, !36, i64 160}
!51 = !{!52, !36, i64 0}
!52 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !35, i64 56, !37, i64 72, !41, i64 584, !41, i64 588, !36, i64 592, !41, i64 600, !41, i64 604, !53, i64 608, !55, i64 624, !37, i64 640, !41, i64 704, !41, i64 708}
!53 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!54 = !{!"float", !37, i64 0}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!52, !41, i64 16}
!57 = !{!52, !36, i64 48}
!58 = !{!59, !36, i64 112}
!59 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !60, i64 96, !60, i64 98, !60, i64 100, !60, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !35, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !55, i64 156, !53, i64 172, !54, i64 188, !54, i64 192, !54, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !54, i64 544, !54, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !61, i64 1104, !68, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !35, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !54, i64 5680, !36, i64 5688, !35, i64 5696, !54, i64 5712, !54, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !35, i64 5752, !35, i64 5768, !35, i64 5784, !36, i64 5800, !35, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !35, i64 5872, !36, i64 5888, !35, i64 5896, !35, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !70, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!60 = !{!"short", !37, i64 0}
!61 = !{!"RenderData", !62, i64 0, !36, i64 248, !36, i64 256, !65, i64 264, !66, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !54, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !60, i64 432, !60, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !60, i64 456, !60, i64 458, !60, i64 460, !60, i64 462, !60, i64 464, !60, i64 466, !41, i64 468, !60, i64 472, !60, i64 474, !60, i64 476, !60, i64 478, !60, i64 480, !60, i64 482, !41, i64 484, !41, i64 488, !60, i64 492, !60, i64 494, !41, i64 496, !41, i64 500, !60, i64 504, !60, i64 506, !60, i64 508, !60, i64 510, !60, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !60, i64 528, !60, i64 530, !60, i64 532, !60, i64 534, !60, i64 536, !60, i64 538, !60, i64 540, !60, i64 542, !53, i64 544, !53, i64 560, !55, i64 576, !35, i64 592, !60, i64 608, !60, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !41, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !60, i64 648, !60, i64 650, !60, i64 652, !60, i64 654, !60, i64 656, !60, i64 658, !54, i64 660, !54, i64 664, !60, i64 668, !60, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !41, i64 1704, !60, i64 1708, !60, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !60, i64 2524, !60, i64 2526, !54, i64 2528, !54, i64 2532, !60, i64 2536, !60, i64 2538, !54, i64 2540, !60, i64 2544, !60, i64 2546, !41, i64 2548, !60, i64 2552, !60, i64 2554, !60, i64 2556, !60, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !41, i64 2576, !54, i64 2580, !37, i64 2584, !67, i64 2616, !41, i64 3976, !41, i64 3980}
!62 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !60, i64 8, !60, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !63, i64 24, !64, i64 184}
!63 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!65 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !60, i64 48, !60, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!66 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !54, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!67 = !{!"BakeData", !62, i64 0, !37, i64 248, !60, i64 1272, !60, i64 1274, !60, i64 1276, !60, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!68 = !{!"World", !69, i64 0, !36, i64 120, !60, i64 128, !60, i64 130, !60, i64 132, !60, i64 134, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !60, i64 200, !60, i64 202, !60, i64 204, !60, i64 206, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !60, i64 264, !60, i64 266, !60, i64 268, !60, i64 270, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !60, i64 288, !60, i64 290, !60, i64 292, !60, i64 294, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !60, i64 324, !60, i64 326, !60, i64 328, !60, i64 330, !60, i64 332, !60, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !60, i64 504, !60, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !60, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!70 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !60, i64 28, !60, i64 30, !60, i64 32, !60, i64 34, !60, i64 36, !60, i64 38, !37, i64 40, !71, i64 48, !71, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !54, i64 144, !54, i64 148}
!71 = !{!"double", !37, i64 0}
!72 = !{!73, !41, i64 16}
!73 = !{!"RenderResult", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !60, i64 24, !60, i64 26, !36, i64 32, !36, i64 40, !36, i64 48, !55, i64 56, !41, i64 72, !41, i64 76, !35, i64 80, !55, i64 96, !36, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !36, i64 136}
!74 = !{!73, !41, i64 20}
!75 = !{!55, !41, i64 0}
!76 = !{!55, !41, i64 4}
!77 = !{!55, !41, i64 8}
!78 = !{!55, !41, i64 12}
!79 = !{!73, !41, i64 120}
!80 = !{!59, !41, i64 156}
!81 = !{!73, !41, i64 56}
!82 = !{!73, !41, i64 60}
!83 = !{!59, !41, i64 164}
!84 = !{!73, !41, i64 64}
!85 = !{!73, !41, i64 68}
!86 = !{!87, !41, i64 112}
!87 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !55, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !60, i64 140, !60, i64 142, !60, i64 144, !60, i64 146, !36, i64 152}
!88 = !{!87, !41, i64 120}
!89 = !{!87, !41, i64 116}
!90 = !{!87, !41, i64 124}
!91 = distinct !{!91, !48, !49}
!92 = !{!87, !60, i64 142}
!93 = !{!73, !36, i64 80}
!94 = !{!73, !36, i64 112}
!95 = !{!59, !36, i64 5968}
!96 = !{!59, !36, i64 5976}
!97 = !{!59, !36, i64 6048}
!98 = !{!59, !36, i64 6056}
!99 = !{!59, !41, i64 1620}
!100 = !{!59, !36, i64 6136}
!101 = !{!59, !36, i64 6128}
!102 = !{!59, !36, i64 6000}
!103 = !{!59, !36, i64 6008}
!104 = !{!37, !37, i64 0}
!105 = !{!59, !36, i64 6016}
!106 = !{!59, !36, i64 6024}
!107 = !{!59, !54, i64 6208}
!108 = !{!59, !54, i64 6212}
!109 = !{!59, !36, i64 6216}
!110 = !{!52, !36, i64 592}
!111 = !{!59, !36, i64 5648}
!112 = !{i64 0, i64 4, !113, i64 4, i64 4, !113, i64 8, i64 4, !113, i64 12, i64 4, !113}
!113 = !{!41, !41, i64 0}
!114 = !{!87, !60, i64 140}
!115 = distinct !{!115, !48, !49}
!116 = !{!59, !36, i64 1096}
!117 = !{!59, !36, i64 1088}
!118 = !{i64 0, i64 1, !104, i64 1, i64 1, !104, i64 2, i64 1, !104, i64 3, i64 1, !104, i64 4, i64 1, !104, i64 5, i64 1, !104, i64 6, i64 1, !104, i64 7, i64 1, !104, i64 8, i64 2, !119, i64 10, i64 2, !119, i64 12, i64 4, !120, i64 16, i64 1, !104, i64 17, i64 1, !104, i64 18, i64 6, !104, i64 24, i64 4, !113, i64 28, i64 4, !113, i64 32, i64 64, !104, i64 96, i64 64, !104, i64 160, i64 4, !120, i64 164, i64 4, !120, i64 168, i64 8, !46, i64 176, i64 8, !46, i64 184, i64 64, !104, i64 248, i64 8, !46, i64 256, i64 8, !46, i64 264, i64 4, !113, i64 268, i64 4, !113, i64 272, i64 4, !113, i64 276, i64 4, !113, i64 280, i64 4, !113, i64 284, i64 4, !113, i64 288, i64 4, !113, i64 292, i64 4, !113, i64 296, i64 4, !113, i64 300, i64 4, !113, i64 304, i64 4, !113, i64 308, i64 4, !113, i64 312, i64 2, !119, i64 314, i64 2, !119, i64 316, i64 4, !113, i64 320, i64 4, !113, i64 324, i64 4, !113, i64 328, i64 4, !113, i64 332, i64 4, !113, i64 336, i64 4, !113, i64 340, i64 4, !113, i64 344, i64 4, !113, i64 348, i64 4, !113, i64 352, i64 4, !113, i64 356, i64 4, !113, i64 360, i64 4, !120, i64 364, i64 4, !113, i64 368, i64 4, !113, i64 372, i64 4, !113, i64 376, i64 4, !113, i64 380, i64 4, !113, i64 384, i64 4, !113, i64 388, i64 4, !113, i64 392, i64 8, !46, i64 400, i64 4, !113, i64 404, i64 4, !113, i64 408, i64 4, !113, i64 412, i64 4, !120, i64 416, i64 4, !113, i64 420, i64 4, !113, i64 424, i64 4, !113, i64 428, i64 4, !113, i64 432, i64 2, !119, i64 434, i64 2, !119, i64 436, i64 4, !120, i64 440, i64 4, !120, i64 444, i64 4, !120, i64 448, i64 4, !120, i64 452, i64 4, !120, i64 456, i64 2, !119, i64 458, i64 2, !119, i64 460, i64 2, !119, i64 462, i64 2, !119, i64 464, i64 2, !119, i64 466, i64 2, !119, i64 468, i64 4, !113, i64 472, i64 2, !119, i64 474, i64 2, !119, i64 476, i64 2, !119, i64 478, i64 2, !119, i64 480, i64 2, !119, i64 482, i64 2, !119, i64 484, i64 4, !113, i64 488, i64 4, !113, i64 492, i64 2, !119, i64 494, i64 2, !119, i64 496, i64 4, !113, i64 500, i64 4, !113, i64 504, i64 2, !119, i64 506, i64 2, !119, i64 508, i64 2, !119, i64 510, i64 2, !119, i64 512, i64 2, !119, i64 514, i64 1, !104, i64 515, i64 1, !104, i64 516, i64 4, !113, i64 520, i64 4, !113, i64 524, i64 4, !113, i64 528, i64 2, !119, i64 530, i64 2, !119, i64 532, i64 2, !119, i64 534, i64 2, !119, i64 536, i64 2, !119, i64 538, i64 2, !119, i64 540, i64 2, !119, i64 542, i64 2, !119, i64 544, i64 4, !120, i64 548, i64 4, !120, i64 552, i64 4, !120, i64 556, i64 4, !120, i64 560, i64 4, !120, i64 564, i64 4, !120, i64 568, i64 4, !120, i64 572, i64 4, !120, i64 576, i64 4, !113, i64 580, i64 4, !113, i64 584, i64 4, !113, i64 588, i64 4, !113, i64 592, i64 8, !46, i64 600, i64 8, !46, i64 608, i64 2, !119, i64 610, i64 2, !119, i64 612, i64 4, !120, i64 616, i64 4, !120, i64 620, i64 4, !120, i64 624, i64 4, !120, i64 628, i64 4, !113, i64 632, i64 4, !120, i64 636, i64 4, !120, i64 640, i64 4, !120, i64 644, i64 4, !120, i64 648, i64 2, !119, i64 650, i64 2, !119, i64 652, i64 2, !119, i64 654, i64 2, !119, i64 656, i64 2, !119, i64 658, i64 2, !119, i64 660, i64 4, !120, i64 664, i64 4, !120, i64 668, i64 2, !119, i64 670, i64 2, !119, i64 672, i64 4, !120, i64 676, i64 4, !120, i64 680, i64 1024, !104, i64 1704, i64 4, !113, i64 1708, i64 2, !119, i64 1710, i64 2, !119, i64 1712, i64 768, !104, i64 2480, i64 16, !104, i64 2496, i64 16, !104, i64 2512, i64 1, !104, i64 2513, i64 1, !104, i64 2514, i64 1, !104, i64 2515, i64 5, !104, i64 2520, i64 4, !113, i64 2524, i64 2, !119, i64 2526, i64 2, !119, i64 2528, i64 4, !120, i64 2532, i64 4, !120, i64 2536, i64 2, !119, i64 2538, i64 2, !119, i64 2540, i64 4, !120, i64 2544, i64 2, !119, i64 2546, i64 2, !119, i64 2548, i64 4, !113, i64 2552, i64 2, !119, i64 2554, i64 2, !119, i64 2556, i64 2, !119, i64 2558, i64 2, !119, i64 2560, i64 4, !120, i64 2564, i64 4, !120, i64 2568, i64 8, !46, i64 2576, i64 4, !113, i64 2580, i64 4, !120, i64 2584, i64 32, !104, i64 2616, i64 1, !104, i64 2617, i64 1, !104, i64 2618, i64 1, !104, i64 2619, i64 1, !104, i64 2620, i64 1, !104, i64 2621, i64 1, !104, i64 2622, i64 1, !104, i64 2623, i64 1, !104, i64 2624, i64 2, !119, i64 2626, i64 2, !119, i64 2628, i64 4, !120, i64 2632, i64 1, !104, i64 2633, i64 1, !104, i64 2634, i64 6, !104, i64 2640, i64 4, !113, i64 2644, i64 4, !113, i64 2648, i64 64, !104, i64 2712, i64 64, !104, i64 2776, i64 4, !120, i64 2780, i64 4, !120, i64 2784, i64 8, !46, i64 2792, i64 8, !46, i64 2800, i64 64, !104, i64 2864, i64 1024, !104, i64 3888, i64 2, !119, i64 3890, i64 2, !119, i64 3892, i64 2, !119, i64 3894, i64 2, !119, i64 3896, i64 4, !120, i64 3900, i64 4, !120, i64 3904, i64 3, !104, i64 3907, i64 1, !104, i64 3908, i64 1, !104, i64 3909, i64 3, !104, i64 3912, i64 64, !104, i64 3976, i64 4, !113, i64 3980, i64 4, !113}
!119 = !{!60, !60, i64 0}
!120 = !{!54, !54, i64 0}
!121 = !{!40, !36, i64 168}
!122 = !{!59, !41, i64 1624}
!123 = !{!124, !41, i64 680}
!124 = !{!"Scene", !69, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !60, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !61, i64 280, !125, i64 4264, !35, i64 4296, !35, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !60, i64 4376, !60, i64 4378, !41, i64 4380, !35, i64 4384, !126, i64 4400, !127, i64 4416, !130, i64 4600, !36, i64 4608, !131, i64 4616, !36, i64 4640, !132, i64 4648, !132, i64 4656, !63, i64 4664, !64, i64 4824, !133, i64 4888, !36, i64 4952}
!125 = !{!"AudioData", !41, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !41, i64 16, !60, i64 20, !60, i64 22, !54, i64 24, !54, i64 28}
!126 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!127 = !{!"GameData", !126, i64 0, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !60, i64 32, !37, i64 34, !128, i64 40, !60, i64 64, !60, i64 66, !54, i64 68, !129, i64 72, !54, i64 128, !54, i64 132, !41, i64 136, !60, i64 140, !60, i64 142, !60, i64 144, !60, i64 146, !60, i64 148, !60, i64 150, !60, i64 152, !60, i64 154, !60, i64 156, !60, i64 158, !60, i64 160, !60, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!128 = !{!"GameDome", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!129 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !41, i64 40, !54, i64 44, !54, i64 48, !60, i64 52, !60, i64 54}
!130 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !60, i64 6}
!131 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!132 = !{!"long", !37, i64 0}
!133 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!134 = !{!59, !41, i64 6064}
!135 = !{!59, !41, i64 148}
!136 = !{!52, !41, i64 584}
!137 = !{!59, !41, i64 152}
!138 = !{!52, !41, i64 588}
!139 = !{!59, !41, i64 1600}
!140 = !{!52, !41, i64 36}
!141 = !{!59, !41, i64 1604}
!142 = !{!52, !41, i64 40}
!143 = !{!40, !36, i64 152}
!144 = !{!145, !37, i64 2080}
!145 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !35, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !60, i64 2084, !60, i64 2086, !60, i64 2088, !37, i64 2090, !60, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!146 = !{!59, !36, i64 6232}
!147 = !{!59, !36, i64 6032}
!148 = !{!59, !36, i64 6040}
!149 = !{!59, !41, i64 5624}
!150 = !{!59, !60, i64 1712}
!151 = !{!152, !41, i64 104}
!152 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !54, i64 124, !153, i64 128}
!153 = !{!"FreestyleConfig", !35, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !35, i64 40}
!154 = !{!152, !41, i64 108}
!155 = distinct !{!155, !48, !49}
!156 = !{!59, !60, i64 96}
!157 = !{!59, !36, i64 5616}
!158 = !{!52, !36, i64 24}
!159 = !{!59, !41, i64 5628}
!160 = !{!52, !41, i64 32}
!161 = !{!59, !41, i64 208}
!162 = !{!59, !41, i64 212}
!163 = !{!52, !36, i64 56}
