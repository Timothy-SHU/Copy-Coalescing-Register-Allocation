; ModuleID = 'blender/source/blender/editors/render/render_preview.c'
source_filename = "blender/source/blender/editors/render/render_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShaderPreview = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], i32, i32, ptr, i32, ptr }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.IconPreview = type { ptr, ptr, ptr, %struct.ListBase }
%struct.IconPreviewSize = type { ptr, ptr, i32, i32, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
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
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [11 x i8] c"brushicons\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Icon Preview\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"icon preview\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Shader Preview\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"shader preview\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Preview %p\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SecondPreview %p\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"ed_preview_draw_rect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"IconPreviewSize\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Icon ShaderPreview\00", align 1
@RE_engine_id_BLENDER_RENDER = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"Lamp.002\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CameraAtmo\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_brush_icon(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %12, i64 noundef 1024) #16
  %17 = load ptr, ptr @G, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %18) #16
  %20 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 385, ptr noundef null) #16
  store ptr %20, ptr %3, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = call ptr @BLI_get_folder(i32 noundef 2, ptr noundef nonnull @.str) #16
  %24 = load ptr, ptr @G, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %23, ptr noundef nonnull %12) #16
  %26 = load i8, ptr %2, align 16, !tbaa !46
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 385, ptr noundef null) #16
  store ptr %29, ptr %3, align 8, !tbaa !34
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %15
  %36 = call i32 @BKE_icon_getid(ptr noundef nonnull %0) #16
  call void @BKE_icon_changed(i32 noundef %36) #16
  %37 = load ptr, ptr %3, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %11, %32, %6, %35
  %40 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %40, align 8, !tbaa !50
  br label %41

41:                                               ; preds = %1, %39, %35
  %42 = phi ptr [ null, %39 ], [ %37, %35 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #15
  ret ptr %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ED_preview_init_dbase() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ED_preview_free_dbase() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_preview_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @WM_jobs_customdata(ptr noundef %9, ptr noundef %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %14 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %4) #17
  %15 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %4) #17
  %16 = load i32, ptr %4, align 4, !tbaa !54
  store i32 %16, ptr %6, align 4, !tbaa !54
  %17 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %19, ptr %20, align 4, !tbaa !56
  %21 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %19, ptr %21, align 4, !tbaa !57
  %22 = icmp eq ptr %2, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %8
  %24 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef nonnull %10, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %6) #17, !range !58
  %25 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %6) #17, !range !58
  %26 = and i8 %25, %24
  br label %29

27:                                               ; preds = %8
  %28 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %6) #17, !range !58
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i8 [ %26, %23 ], [ %28, %27 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !59
  br label %33

33:                                               ; preds = %32, %29
  %34 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !61
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 12
  %39 = load i16, ptr %38, align 2, !tbaa !65
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37, %33
  br i1 %31, label %42, label %45

42:                                               ; preds = %41
  %43 = tail call zeroext i8 @WM_jobs_test(ptr noundef %9, ptr noundef nonnull %10, i32 noundef 3) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42, %41
  %46 = icmp eq ptr %13, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ShaderPreview, ptr %13, i64 0, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !66
  %50 = sub nsw i32 %49, %14
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ShaderPreview, ptr %13, i64 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !68
  %56 = sub nsw i32 %55, %15
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = icmp ugt i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %47, %42, %37
  %60 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 12
  store i16 0, ptr %60, align 2, !tbaa !65
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %14, i32 noundef %15, i32 noundef 0) #17
  br label %61

61:                                               ; preds = %59, %53, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %62

62:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_jobs_customdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = load i32, ptr %0, align 4, !tbaa !54
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !70 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !57
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ed_preview_draw_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !71 {
  %6 = alloca %struct.RenderResult, align 8
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %3) #17
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %3) #17
  %10 = icmp eq i32 %1, 0
  %11 = icmp ne i32 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %0) #16
  br label %20

15:                                               ; preds = %5
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %0) #16
  br i1 %10, label %23, label %17

17:                                               ; preds = %15
  br i1 %11, label %18, label %20

18:                                               ; preds = %17
  %19 = sdiv i32 %8, 2
  br label %23

20:                                               ; preds = %13, %17
  %21 = sdiv i32 %8, 2
  %22 = sub nsw i32 %8, %21
  br label %23

23:                                               ; preds = %18, %20, %15
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ], [ %8, %15 ]
  %25 = phi i32 [ 0, %18 ], [ %21, %20 ], [ 0, %15 ]
  %26 = call ptr @RE_GetRender(ptr noundef nonnull %7) #16
  call void @RE_AcquireResultImage(ptr noundef %26, ptr noundef nonnull %6) #16
  %27 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %72, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !74
  %33 = sub nsw i32 %32, %24
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = sub nsw i32 %38, %9
  %40 = call i32 @llvm.abs.i32(i32 %39, i1 true)
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !55
  %45 = load i32, ptr %3, align 4, !tbaa !54
  %46 = add i32 %32, %25
  %47 = add i32 %46, %45
  %48 = call fastcc i32 @max_ii(i32 noundef %44, i32 noundef %47) #17
  store i32 %48, ptr %43, align 4, !tbaa !55
  %49 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !57
  %51 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !56
  %53 = add nsw i32 %52, %38
  %54 = call fastcc i32 @max_ii(i32 noundef %50, i32 noundef %53) #17
  store i32 %54, ptr %49, align 4, !tbaa !57
  %55 = icmp ne i32 %32, 0
  %56 = icmp ne i32 %38, 0
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %72

58:                                               ; preds = %42
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %60 = mul nsw i32 %38, %32
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 2
  %63 = call ptr %59(i64 noundef %62, ptr noundef nonnull @.str.7) #16
  %64 = load i32, ptr %3, align 4, !tbaa !54
  %65 = add nsw i32 %64, %25
  %66 = sitofp i32 %65 to float
  %67 = load i32, ptr %51, align 4, !tbaa !56
  %68 = sitofp i32 %67 to float
  call void @RE_AcquiredResultGet32(ptr noundef %26, ptr noundef nonnull %6, ptr noundef %63) #16
  %69 = load i32, ptr %31, align 8, !tbaa !74
  %70 = load i32, ptr %37, align 4, !tbaa !76
  call void @glaDrawPixelsSafe(float noundef %66, float noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %69, i32 noundef 6408, i32 noundef 5121, ptr noundef %63) #16
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %71(ptr noundef %63) #16
  br label %72

72:                                               ; preds = %30, %36, %58, %42, %23
  %73 = phi i8 [ 1, %58 ], [ 0, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %23 ]
  call void @RE_ReleaseResultImage(ptr noundef %26) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #15
  ret i8 %73
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #16
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !77
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %10) #16
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i32 %7, 2
  %16 = and i1 %15, %14
  %17 = icmp ne i16 %12, 17748
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %45, label %19

19:                                               ; preds = %8
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %22 = tail call ptr @WM_jobs_get(ptr noundef %20, ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 3) #16
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %24 = tail call ptr %23(i64 noundef 136, ptr noundef nonnull @.str.4) #16
  %25 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 3
  store ptr %10, ptr %25, align 8, !tbaa !78
  store ptr %1, ptr %24, align 8, !tbaa !79
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 12
  store i32 %5, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 13
  store i32 %6, ptr %27, align 4, !tbaa !68
  %28 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 15
  store i32 %7, ptr %28, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 4
  store ptr %2, ptr %29, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 5
  store ptr %3, ptr %30, align 8, !tbaa !82
  %31 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 6
  store ptr %4, ptr %31, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 16
  store ptr null, ptr %32, align 8
  %33 = icmp eq ptr %9, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %36 = load i32, ptr %35, align 8, !tbaa !84
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11
  %40 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %39, ptr noundef nonnull %40) #17
  br label %43

41:                                               ; preds = %34, %19
  %42 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %42, align 8, !tbaa !88
  br label %43

43:                                               ; preds = %41, %38
  tail call void @WM_jobs_customdata_set(ptr noundef %22, ptr noundef nonnull %24, ptr noundef nonnull @shader_preview_free) #16
  tail call void @WM_jobs_timer(ptr noundef %22, double noundef 1.000000e-01, i32 noundef 100663296, i32 noundef 100663296) #16
  tail call void @WM_jobs_callbacks(ptr noundef %22, ptr noundef nonnull @common_preview_startjob, ptr noundef null, ptr noundef nonnull @shader_preview_updatejob, ptr noundef null) #16
  %44 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  tail call void @WM_jobs_start(ptr noundef %44, ptr noundef %22) #16
  br label %45

45:                                               ; preds = %8, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_preview_icon_job(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %9 = tail call ptr @WM_jobs_get(ptr noundef %7, ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 10, i32 noundef 3) #16
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.2) #16
  %12 = tail call ptr @WM_jobs_customdata_get(ptr noundef %9) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 3
  %16 = getelementptr inbounds %struct.IconPreview, ptr %12, i64 0, i32 3
  tail call void @BLI_movelisttolist(ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  br label %17

17:                                               ; preds = %14, %6
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  store ptr %18, ptr %11, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !92
  tail call fastcc void @icon_preview_add_size(ptr noundef nonnull %11, ptr noundef %3, i32 noundef %4, i32 noundef %5) #17
  tail call void @WM_jobs_customdata_set(ptr noundef %9, ptr noundef nonnull %11, ptr noundef nonnull @icon_preview_free) #16
  tail call void @WM_jobs_timer(ptr noundef %9, double noundef 1.000000e-01, i32 noundef 100663296, i32 noundef 100663296) #16
  tail call void @WM_jobs_callbacks(ptr noundef %9, ptr noundef nonnull @icon_preview_startjob_all_sizes, ptr noundef null, ptr noundef null, ptr noundef nonnull @icon_preview_endjob) #16
  %21 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  tail call void @WM_jobs_start(ptr noundef %21, ptr noundef %9) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_jobs_customdata_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_preview_add_size(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !93 {
  %5 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4, %17
  %9 = phi ptr [ %18, %17 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.IconPreviewSize, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !94
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.IconPreviewSize, ptr %9, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !96
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %26, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !97

20:                                               ; preds = %17, %4
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %22 = tail call ptr %21(i64 noundef 32, ptr noundef nonnull @.str.8) #16
  %23 = getelementptr inbounds %struct.IconPreviewSize, ptr %22, i64 0, i32 2
  store i32 %2, ptr %23, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.IconPreviewSize, ptr %22, i64 0, i32 3
  store i32 %3, ptr %24, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.IconPreviewSize, ptr %22, i64 0, i32 4
  store ptr %1, ptr %25, align 8, !tbaa !99
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %22) #16
  br label %26

26:                                               ; preds = %13, %20
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @icon_preview_free(ptr noundef %0) #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #16
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %3(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @icon_preview_startjob_all_sizes(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 !PGOFuncName !101 {
  %5 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = load ptr, ptr %0, align 8, !tbaa !89
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #16
  %9 = icmp eq ptr %6, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %6, %10 ], [ %30, %13 ]
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %16 = tail call ptr %15(i64 noundef 136, ptr noundef nonnull @.str.9) #16
  %17 = load ptr, ptr %0, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !78
  %19 = load ptr, ptr %11, align 8, !tbaa !91
  store ptr %19, ptr %16, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.IconPreviewSize, ptr %14, i64 0, i32 2
  %21 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 12
  %22 = load <2 x i32>, ptr %20, align 8, !tbaa !60
  store <2 x i32> %22, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 15
  store i32 1, ptr %23, align 8, !tbaa !80
  %24 = getelementptr inbounds %struct.IconPreviewSize, ptr %14, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 14
  store ptr %25, ptr %26, align 8, !tbaa !103
  %27 = load ptr, ptr %12, align 8, !tbaa !92
  %28 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 16
  store ptr null, ptr %29, align 8, !tbaa !104
  tail call void @common_preview_startjob(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2, ptr poison) #17
  tail call void @shader_preview_free(ptr noundef nonnull %16) #17
  %30 = load ptr, ptr %14, align 8, !tbaa !105
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !106

32:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @icon_preview_endjob(ptr nocapture noundef readonly %0) #0 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !77
  %8 = icmp eq i16 %7, 21058
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef nonnull %3) #16
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !108 {
  %3 = load float, ptr %1, align 4, !tbaa !88
  store float %3, ptr %0, align 4, !tbaa !88
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !88
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !88
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shader_preview_free(ptr noundef %0) #0 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  tail call void @shader_preview_updatejob(ptr noundef nonnull %0) #17
  %8 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 17
  %9 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef %9) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @BKE_material_free_ex(ptr noundef %10, i8 noundef zeroext 0) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !110
  %12 = tail call ptr @IDP_GetProperties(ptr noundef %11, i8 noundef zeroext 0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @IDP_FreeProperty(ptr noundef nonnull %12) #16
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %15(ptr noundef nonnull %12) #16
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %18 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void %17(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  tail call void @shader_preview_updatejob(ptr noundef nonnull %0) #17
  %24 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %25 = load ptr, ptr %20, align 8, !tbaa !111
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef %25) #16
  %26 = load ptr, ptr %20, align 8, !tbaa !111
  tail call void @BKE_texture_free(ptr noundef %26) #16
  %27 = load ptr, ptr %20, align 8, !tbaa !111
  %28 = tail call ptr @IDP_GetProperties(ptr noundef %27, i8 noundef zeroext 0) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  tail call void @IDP_FreeProperty(ptr noundef nonnull %28) #16
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %31(ptr noundef nonnull %28) #16
  br label %32

32:                                               ; preds = %30, %23
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %34 = load ptr, ptr %20, align 8, !tbaa !111
  tail call void %33(ptr noundef %34) #16
  br label %35

35:                                               ; preds = %32, %19
  %36 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  tail call void @shader_preview_updatejob(ptr noundef nonnull %0) #17
  %40 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 25
  %41 = load ptr, ptr %36, align 8, !tbaa !112
  tail call void @BLI_remlink(ptr noundef nonnull %40, ptr noundef %41) #16
  %42 = load ptr, ptr %36, align 8, !tbaa !112
  tail call void @BKE_world_free_ex(ptr noundef %42, i8 noundef zeroext 1) #16
  %43 = load ptr, ptr %36, align 8, !tbaa !112
  %44 = tail call ptr @IDP_GetProperties(ptr noundef %43, i8 noundef zeroext 0) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  tail call void @IDP_FreeProperty(ptr noundef nonnull %44) #16
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %47(ptr noundef nonnull %44) #16
  br label %48

48:                                               ; preds = %46, %39
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %50 = load ptr, ptr %36, align 8, !tbaa !112
  tail call void %49(ptr noundef %50) #16
  br label %51

51:                                               ; preds = %48, %35
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  tail call void @shader_preview_updatejob(ptr noundef nonnull %0) #17
  %56 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 21
  %57 = load ptr, ptr %52, align 8, !tbaa !113
  tail call void @BLI_remlink(ptr noundef nonnull %56, ptr noundef %57) #16
  %58 = load ptr, ptr %52, align 8, !tbaa !113
  tail call void @BKE_lamp_free(ptr noundef %58) #16
  %59 = load ptr, ptr %52, align 8, !tbaa !113
  %60 = tail call ptr @IDP_GetProperties(ptr noundef %59, i8 noundef zeroext 0) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  tail call void @IDP_FreeProperty(ptr noundef nonnull %60) #16
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %63(ptr noundef nonnull %60) #16
  br label %64

64:                                               ; preds = %62, %55
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %66 = load ptr, ptr %52, align 8, !tbaa !113
  tail call void %65(ptr noundef %66) #16
  br label %67

67:                                               ; preds = %64, %51
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %68(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @common_preview_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !114 {
  %5 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @icon_preview_startjob(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #17
  br label %10

9:                                                ; preds = %4
  tail call fastcc void @shader_preview_startjob(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #17
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shader_preview_updatejob(ptr nocapture noundef readonly %0) #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !80
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !77
  switch i16 %11, label %64 [
    i16 16717, label %12
    i16 17748, label %25
    i16 20311, label %38
    i16 16716, label %51
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 103
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  tail call void @ntreeLocalSync(ptr noundef nonnull %22, ptr noundef nonnull %18) #16
  br label %64

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 52
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 52
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  tail call void @ntreeLocalSync(ptr noundef nonnull %35, ptr noundef nonnull %31) #16
  br label %64

38:                                               ; preds = %9
  %39 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !112
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 75
  %44 = load ptr, ptr %43, align 8, !tbaa !123
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.World, ptr %40, i64 0, i32 75
  %48 = load ptr, ptr %47, align 8, !tbaa !123
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  tail call void @ntreeLocalSync(ptr noundef nonnull %48, ptr noundef nonnull %44) #16
  br label %64

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !113
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 74
  %57 = load ptr, ptr %56, align 8, !tbaa !125
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Lamp, ptr %53, i64 0, i32 74
  %61 = load ptr, ptr %60, align 8, !tbaa !125
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @ntreeLocalSync(ptr noundef nonnull %61, ptr noundef nonnull %57) #16
  br label %64

64:                                               ; preds = %51, %55, %59, %63, %9, %38, %42, %46, %50, %25, %29, %33, %37, %12, %16, %20, %24, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_preview_kill_jobs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @WM_jobs_kill(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @common_preview_startjob) #16
  br label %5

5:                                                ; preds = %4, %1
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_kill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_viewport_render_kill_jobs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !127 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @RE_AcquiredResultGet32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_texture_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_world_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lamp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_preview_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !128 {
  %4 = alloca %struct.ImageUser, align 8
  %5 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !77
  switch i16 %8, label %55 [
    i16 19785, label %9
    i16 21058, label %33
  ]

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 9
  %12 = load i16, ptr %11, align 4, !tbaa !129
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 1
  store i32 1, ptr %15, align 8, !tbaa !132
  %16 = getelementptr inbounds %struct.ImageUser, ptr %4, i64 0, i32 7
  store i8 1, ptr %16, align 2, !tbaa !133
  %17 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  store ptr %18, ptr %4, align 8, !tbaa !134
  %19 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef null) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %14
  call void @BKE_image_release_ibuf(ptr noundef nonnull %6, ptr noundef %19, ptr noundef null) #16
  br label %74

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !68
  %31 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  call fastcc void @icon_copy_rect(ptr noundef nonnull %19, i32 noundef %28, i32 noundef %30, ptr noundef %32) #17
  store i16 1, ptr %2, align 2, !tbaa !77
  call void @BKE_image_release_ibuf(ptr noundef nonnull %6, ptr noundef nonnull %19, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %75

33:                                               ; preds = %3
  %34 = tail call ptr @get_brush_icon(ptr noundef nonnull %6) #17
  %35 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = mul nsw i32 %41, %39
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %37, i8 -120, i64 %44, i1 false)
  %45 = load ptr, ptr %35, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %75, label %47

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !135
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %38, align 8, !tbaa !66
  %53 = load i32, ptr %40, align 4, !tbaa !68
  %54 = load ptr, ptr %36, align 8, !tbaa !103
  tail call fastcc void @icon_copy_rect(ptr noundef nonnull %45, i32 noundef %52, i32 noundef %53, ptr noundef %54) #17
  store i16 1, ptr %2, align 2, !tbaa !77
  br label %75

55:                                               ; preds = %3
  tail call fastcc void @shader_preview_startjob(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #17
  switch i16 %8, label %75 [
    i16 20311, label %56
    i16 16717, label %63
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %60 = load i32, ptr %59, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %62 = load i32, ptr %61, align 4, !tbaa !68
  tail call fastcc void @set_alpha(ptr noundef %58, i32 noundef %60, i32 noundef %62) #17
  br label %75

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 2
  %65 = load i16, ptr %64, align 8, !tbaa !138
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %69 = load ptr, ptr %68, align 8, !tbaa !103
  %70 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %71 = load i32, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %73 = load i32, ptr %72, align 4, !tbaa !68
  tail call fastcc void @set_alpha(ptr noundef %69, i32 noundef %71, i32 noundef %73) #17
  br label %75

74:                                               ; preds = %9, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  br label %75

75:                                               ; preds = %56, %26, %51, %55, %67, %63, %47, %33, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shader_preview_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !139 {
  %4 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !140
  %5 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  br i1 %8, label %13, label %11

11:                                               ; preds = %3
  tail call fastcc void @shader_preview_render(ptr noundef nonnull %0, ptr noundef %10, i32 noundef 1, i32 noundef 1) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !82
  tail call fastcc void @shader_preview_render(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 1, i32 noundef 0) #17
  br label %14

13:                                               ; preds = %3
  tail call fastcc void @shader_preview_render(ptr noundef nonnull %0, ptr noundef %10, i32 noundef 0, i32 noundef 0) #17
  br label %14

14:                                               ; preds = %13, %11
  store i16 1, ptr %2, align 2, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icon_copy_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !142 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %8, %4
  %13 = tail call ptr @IMB_dupImBuf(ptr noundef nonnull %0) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !144
  %18 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !145
  %20 = icmp sgt i32 %17, %19
  %21 = sitofp i32 %19 to float
  br i1 %20, label %22, label %27

22:                                               ; preds = %15
  %23 = uitofp i32 %1 to float
  %24 = sitofp i32 %17 to float
  %25 = fdiv float %21, %24
  %26 = fmul float %25, %23
  br label %32

27:                                               ; preds = %15
  %28 = sitofp i32 %17 to float
  %29 = fdiv float %28, %21
  %30 = uitofp i32 %2 to float
  %31 = fmul float %29, %30
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi float [ %26, %22 ], [ %30, %27 ]
  %34 = phi float [ %23, %22 ], [ %31, %27 ]
  %35 = fptosi float %34 to i16
  %36 = fptosi float %33 to i16
  %37 = sext i16 %35 to i32
  %38 = sub i32 %1, %37
  %39 = sext i16 %36 to i32
  %40 = sub i32 %2, %39
  %41 = tail call ptr @IMB_scalefastImBuf(ptr noundef nonnull %13, i32 noundef %37, i32 noundef %39) #16
  %42 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !135
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  tail call void @IMB_rect_from_float(ptr noundef nonnull %13) #16
  br label %46

46:                                               ; preds = %45, %32
  %47 = icmp sgt i16 %36, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = shl i32 %40, 15
  %50 = ashr i32 %49, 16
  %51 = mul i32 %50, %1
  %52 = shl i32 %38, 15
  %53 = ashr i32 %52, 16
  %54 = add i32 %51, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %3, i64 %55
  %57 = load ptr, ptr %42, align 8, !tbaa !135
  %58 = sext i16 %35 to i64
  %59 = shl nsw i64 %58, 2
  %60 = zext i32 %1 to i64
  br label %61

61:                                               ; preds = %48, %61
  %62 = phi ptr [ %56, %48 ], [ %65, %61 ]
  %63 = phi ptr [ %57, %48 ], [ %68, %61 ]
  %64 = phi i16 [ %36, %48 ], [ %69, %61 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %62, ptr align 4 %63, i64 %59, i1 false)
  %65 = getelementptr inbounds i32, ptr %62, i64 %60
  %66 = load i32, ptr %16, align 8, !tbaa !144
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  %69 = add nsw i16 %64, -1
  %70 = icmp ugt i16 %64, 1
  br i1 %70, label %61, label %71, !llvm.loop !146

71:                                               ; preds = %61, %46
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #16
  br label %72

72:                                               ; preds = %12, %8, %71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @set_alpha(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !147 {
  %4 = mul nsw i32 %2, %1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %11, %6 ], [ %0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %9 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 -1, ptr %9, align 1, !tbaa !46
  %10 = add nuw nsw i32 %8, 1
  %11 = getelementptr inbounds i8, ptr %7, i64 4
  %12 = icmp eq i32 %10, %4
  br i1 %12, label %13, label %6, !llvm.loop !148

13:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_scalefastImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !149 {
  %5 = alloca [32 x i8], align 16
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %8 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 0
  %13 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !66
  br i1 %12, label %17, label %15

15:                                               ; preds = %11
  %16 = sdiv i32 %14, 2
  br label %23

17:                                               ; preds = %11
  %18 = sdiv i32 %14, -2
  %19 = add i32 %18, %14
  br label %23

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %15, %17, %20
  %24 = phi i32 [ %16, %15 ], [ %19, %17 ], [ %22, %20 ]
  %25 = tail call fastcc ptr @preview_get_scene(ptr noundef %9) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 22, i32 33
  store i32 %24, ptr %28, align 4, !tbaa !150
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !68
  %31 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 22, i32 34
  store i32 %30, ptr %31, align 8, !tbaa !166
  %32 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 22, i32 30
  store i16 100, ptr %32, align 2, !tbaa !167
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = sext i16 %7 to i32
  %37 = tail call fastcc ptr @preview_prepare_scene(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %36, ptr noundef nonnull %0) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %108, label %39

39:                                               ; preds = %33
  %40 = icmp ne i32 %3, 0
  %41 = or i1 %10, %40
  %42 = load ptr, ptr %0, align 8, !tbaa !79
  %43 = select i1 %41, ptr @.str.5, ptr @.str.6
  %44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %43, ptr noundef %42) #16
  %45 = call ptr @RE_GetRender(ptr noundef nonnull %5) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call ptr @RE_NewRender(ptr noundef nonnull %5) #16
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi ptr [ %48, %47 ], [ %45, %39 ]
  %51 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 46
  %52 = load i32, ptr %51, align 4, !tbaa !168
  %53 = and i32 %52, -266273
  store i32 %53, ptr %51, align 4, !tbaa !168
  %54 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !80
  switch i32 %55, label %70 [
    i32 1, label %56
    i32 2, label %61
  ]

56:                                               ; preds = %49
  %57 = or disjoint i32 %53, 4096
  store i32 %57, ptr %51, align 4, !tbaa !168
  %58 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 47
  %59 = load i32, ptr %58, align 8, !tbaa !169
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !169
  br label %76

61:                                               ; preds = %49
  switch i16 %7, label %66 [
    i16 16717, label %63
    i16 17748, label %62
  ]

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %61, %62
  %64 = phi i32 [ 262144, %62 ], [ 32, %61 ]
  %65 = or disjoint i32 %53, %64
  store i32 %65, ptr %51, align 4, !tbaa !168
  br label %66

66:                                               ; preds = %63, %61
  %67 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 47
  %68 = load i32, ptr %67, align 8, !tbaa !169
  %69 = and i32 %68, -2
  store i32 %69, ptr %67, align 8, !tbaa !169
  br label %75

70:                                               ; preds = %49
  %71 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 22, i32 47
  %72 = load i32, ptr %71, align 8, !tbaa !169
  %73 = or i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !169
  %74 = icmp eq i32 %55, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %66
  call void @RE_display_update_cb(ptr noundef %50, ptr noundef nonnull %0, ptr noundef nonnull @shader_preview_update) #16
  br label %76

76:                                               ; preds = %70, %56, %75
  call void @RE_test_break_cb(ptr noundef %50, ptr noundef nonnull %0, ptr noundef nonnull @shader_preview_break) #16
  %77 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !170
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !171
  %81 = getelementptr inbounds %struct.Camera, ptr %80, i64 0, i32 8
  %82 = load float, ptr %81, align 8, !tbaa !172
  %83 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %84 = load i32, ptr %83, align 4, !tbaa !68
  %85 = icmp sgt i32 %24, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = sitofp i32 %84 to float
  %88 = sitofp i32 %24 to float
  %89 = fdiv float %87, %88
  %90 = fmul float %82, %89
  store float %90, ptr %81, align 8, !tbaa !172
  br label %91

91:                                               ; preds = %86, %76
  call void @RE_PreviewRender(ptr noundef %50, ptr noundef %9, ptr noundef nonnull %37) #16
  %92 = load ptr, ptr %77, align 8, !tbaa !170
  %93 = getelementptr inbounds %struct.Object, ptr %92, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !171
  %95 = getelementptr inbounds %struct.Camera, ptr %94, i64 0, i32 8
  store float %82, ptr %95, align 8, !tbaa !172
  %96 = load i32, ptr %54, align 8, !tbaa !80
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %100 = load ptr, ptr %99, align 8, !tbaa !103
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @RE_ResultGet32(ptr noundef %50, ptr noundef nonnull %100) #16
  br label %103

103:                                              ; preds = %98, %102, %91
  %104 = load ptr, ptr %34, align 8, !tbaa !78
  %105 = load i16, ptr %6, align 8, !tbaa !77
  %106 = sext i16 %105 to i32
  %107 = call fastcc ptr @preview_prepare_scene(ptr noundef %104, ptr noundef null, i32 noundef %106, ptr noundef nonnull %0) #17
  br label %108

108:                                              ; preds = %33, %103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @preview_get_scene(ptr noundef readonly %0) unnamed_addr #4 !PGOFuncName !174 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @preview_prepare_scene(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !177 {
  %5 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = tail call fastcc ptr @preview_get_scene(ptr noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %456, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 46
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = or i32 %11, 8
  store i32 %12, ptr %10, align 4, !tbaa !168
  %13 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  %15 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !179
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.World, ptr %17, i64 0, i32 16
  %21 = getelementptr inbounds %struct.World, ptr %14, i64 0, i32 16
  %22 = load <2 x float>, ptr %20, align 8, !tbaa !88
  store <2 x float> %22, ptr %21, align 8, !tbaa !88
  br label %23

23:                                               ; preds = %19, %9
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 67
  %25 = load i32, ptr %24, align 4, !tbaa !180
  %26 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 67
  store i32 %25, ptr %26, align 4, !tbaa !180
  %27 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 45
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  tail call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %27, ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %29) #16
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %29, ptr noundef nonnull %30) #16
  %31 = icmp eq ptr %1, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 33
  %34 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 37
  %35 = load <2 x i32>, ptr %33, align 4, !tbaa !60
  %36 = sdiv <2 x i32> %35, <i32 4, i32 4>
  store <2 x i32> %36, ptr %34, align 8, !tbaa !60
  br label %53

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = icmp slt i32 %39, 40
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 33
  %43 = load <2 x i32>, ptr %42, align 4, !tbaa !60
  %44 = sdiv <2 x i32> %43, <i32 4, i32 4>
  br label %45

45:                                               ; preds = %37, %41
  %46 = phi <2 x i32> [ %44, %41 ], [ <i32 64, i32 64>, %37 ]
  %47 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 37
  store <2 x i32> %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !80
  %50 = icmp eq i32 %49, 1
  %51 = icmp ne i32 %2, 20311
  %52 = and i1 %51, %50
  br i1 %52, label %54, label %53

53:                                               ; preds = %32, %45
  br label %54

54:                                               ; preds = %45, %53
  %55 = phi i16 [ 0, %53 ], [ 1, %45 ]
  %56 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 53
  store i16 %55, ptr %56, align 8, !tbaa !181
  %57 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !182
  %59 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  store i32 %58, ptr %59, align 8, !tbaa !182
  %60 = icmp eq i32 %2, 17748
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = tail call fastcc zeroext i8 @check_engine_supports_textures(ptr noundef nonnull %0) #17, !range !183
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 115
  br i1 %63, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %67 = tail call ptr @BLI_strncpy(ptr noundef nonnull %64, ptr noundef nonnull %66, i64 noundef 32) #16
  br label %269

68:                                               ; preds = %61
  %69 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !75
  %70 = tail call ptr @BLI_strncpy(ptr noundef nonnull %64, ptr noundef %69, i64 noundef 32) #16
  br label %269

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 115
  %73 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %74 = tail call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef nonnull %73, i64 noundef 32) #16
  switch i32 %2, label %456 [
    i32 16717, label %75
    i32 16716, label %362
    i32 20311, label %431
  ]

75:                                               ; preds = %71
  br i1 %31, label %219, label %76

76:                                               ; preds = %75
  %77 = tail call ptr @localize_material(ptr noundef nonnull %1) #16
  %78 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 7
  store ptr %77, ptr %78, align 8, !tbaa !110
  %79 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 17
  tail call void @BLI_addtail(ptr noundef nonnull %79, ptr noundef %77) #16
  %80 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %0) #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %178

82:                                               ; preds = %76
  tail call void @init_render_material(ptr noundef %77, i32 noundef 0, ptr noundef null) #16
  tail call void @end_render_material(ptr noundef %77) #16
  %83 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %84 = load i32, ptr %83, align 8, !tbaa !80
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 50
  %88 = load i16, ptr %87, align 2, !tbaa !184
  %89 = and i16 %88, -3
  store i16 %89, ptr %87, align 2, !tbaa !184
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 52
  %92 = load i32, ptr %91, align 8, !tbaa !185
  %93 = and i32 %92, 262144
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 47
  %97 = load i32, ptr %96, align 8, !tbaa !169
  %98 = or i32 %97, 65536
  store i32 %98, ptr %96, align 8, !tbaa !169
  br label %99

99:                                               ; preds = %95, %90
  %100 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 2
  %101 = load i16, ptr %100, align 8, !tbaa !138
  %102 = icmp eq i16 %101, 2
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 47
  %105 = load i32, ptr %104, align 8, !tbaa !169
  %106 = or i32 %105, 65536
  store i32 %106, ptr %104, align 8, !tbaa !169
  br label %107

107:                                              ; preds = %103, %99
  %108 = and i32 %92, 196608
  %109 = icmp eq i32 %108, 196608
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 47
  %112 = load i32, ptr %111, align 8, !tbaa !169
  %113 = or i32 %112, 65536
  store i32 %113, ptr %111, align 8, !tbaa !169
  br label %114

114:                                              ; preds = %110, %107
  %115 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef nonnull %77, ptr noundef null) #17, !range !186
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 47
  %119 = load i32, ptr %118, align 8, !tbaa !169
  %120 = or i32 %119, 2097152
  store i32 %120, ptr %118, align 8, !tbaa !169
  br label %121

121:                                              ; preds = %117, %114
  %122 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !75
  %124 = icmp eq ptr %123, null
  br i1 %124, label %184, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 53
  br label %130

127:                                              ; preds = %153
  %128 = load ptr, ptr %122, align 8, !tbaa !75
  %129 = icmp eq ptr %128, null
  br i1 %129, label %184, label %156

130:                                              ; preds = %125, %153
  %131 = phi ptr [ %123, %125 ], [ %154, %153 ]
  %132 = getelementptr inbounds %struct.Base, ptr %131, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !187
  %134 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 4, i64 2
  %135 = load i8, ptr %134, align 2, !tbaa !46
  %136 = icmp eq i8 %135, 99
  br i1 %136, label %137, label %153

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 32
  %139 = load i32, ptr %138, align 4, !tbaa !189
  %140 = trunc i32 %139 to i16
  %141 = tail call ptr @give_current_material(ptr noundef nonnull %133, i16 noundef signext %140) #16
  %142 = icmp eq ptr %141, null
  br i1 %142, label %153, label %143

143:                                              ; preds = %137
  %144 = load i32, ptr %126, align 4, !tbaa !190
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.Material, ptr %141, i64 0, i32 73
  br i1 %146, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, ptr %147, align 8, !tbaa !191
  %150 = or i32 %149, 1
  br label %151

151:                                              ; preds = %143, %148
  %152 = phi i32 [ %150, %148 ], [ 0, %143 ]
  store i32 %152, ptr %147, align 8, !tbaa !191
  br label %153

153:                                              ; preds = %151, %137, %130
  %154 = load ptr, ptr %131, align 8, !tbaa !75
  %155 = icmp eq ptr %154, null
  br i1 %155, label %127, label %130, !llvm.loop !192

156:                                              ; preds = %127, %175
  %157 = phi ptr [ %176, %175 ], [ %128, %127 ]
  %158 = getelementptr inbounds %struct.Base, ptr %157, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !187
  %160 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 3
  %161 = load i16, ptr %160, align 8, !tbaa !193
  %162 = icmp eq i16 %161, 10
  br i1 %162, label %163, label %175

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.ID, ptr %159, i64 0, i32 4, i64 2
  %165 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(9) @.str.10) #18
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load i16, ptr %100, align 8, !tbaa !138
  %169 = icmp eq i16 %168, 2
  %170 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 102
  %171 = load i8, ptr %170, align 8, !tbaa !194
  %172 = and i8 %171, -5
  %173 = select i1 %169, i8 4, i8 0
  %174 = or disjoint i8 %172, %173
  store i8 %174, ptr %170, align 8, !tbaa !194
  br label %175

175:                                              ; preds = %167, %156, %163
  %176 = load ptr, ptr %157, align 8, !tbaa !75
  %177 = icmp eq ptr %176, null
  br i1 %177, label %184, label %156, !llvm.loop !195

178:                                              ; preds = %76
  %179 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 76
  %180 = load i8, ptr %179, align 2, !tbaa !196
  %181 = icmp eq i8 %180, 4
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load ptr, ptr %16, align 8, !tbaa !179
  store ptr %183, ptr %15, align 8, !tbaa !179
  br label %184

184:                                              ; preds = %175, %121, %127, %178, %182
  %185 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %186 = load i32, ptr %185, align 8, !tbaa !80
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 2
  %190 = load i16, ptr %189, align 8, !tbaa !138
  %191 = icmp eq i16 %190, 1
  %192 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  br i1 %191, label %193, label %194

193:                                              ; preds = %188
  store i32 1, ptr %192, align 8, !tbaa !197
  br label %223

194:                                              ; preds = %188
  store i32 16, ptr %192, align 8, !tbaa !197
  %195 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #16
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %223, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %16, align 8, !tbaa !179
  store ptr %198, ptr %15, align 8, !tbaa !179
  br label %223

199:                                              ; preds = %184
  %200 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 76
  %201 = load i8, ptr %200, align 2, !tbaa !196
  %202 = zext nneg i8 %201 to i32
  %203 = shl nuw i32 1, %202
  %204 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  store i32 %203, ptr %204, align 8, !tbaa !197
  %205 = getelementptr inbounds %struct.Material, ptr %77, i64 0, i32 103
  %206 = load ptr, ptr %205, align 8, !tbaa !116
  %207 = icmp ne ptr %206, null
  %208 = icmp eq i32 %186, 2
  %209 = and i1 %208, %207
  br i1 %209, label %210, label %223

210:                                              ; preds = %199
  %211 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %212 = load i32, ptr %211, align 8, !tbaa !66
  %213 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %214 = load i32, ptr %213, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef nonnull %206, i32 noundef %212, i32 noundef %214, i32 noundef 1) #16
  %215 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %216 = load ptr, ptr %215, align 8, !tbaa !116
  %217 = load i32, ptr %211, align 8, !tbaa !66
  %218 = load i32, ptr %213, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef 1) #16
  br label %223

219:                                              ; preds = %75
  %220 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 47
  %221 = load i32, ptr %220, align 8, !tbaa !169
  %222 = and i32 %221, -2162690
  store i32 %222, ptr %220, align 8, !tbaa !169
  br label %223

223:                                              ; preds = %194, %197, %193, %210, %199, %219
  %224 = phi ptr [ %77, %193 ], [ %77, %197 ], [ %77, %194 ], [ %77, %210 ], [ %77, %199 ], [ null, %219 ]
  %225 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %226 = load ptr, ptr %225, align 8, !tbaa !75
  %227 = icmp eq ptr %226, null
  br i1 %227, label %456, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 11
  br label %230

230:                                              ; preds = %228, %266
  %231 = phi ptr [ %226, %228 ], [ %267, %266 ]
  %232 = getelementptr inbounds %struct.Base, ptr %231, i64 0, i32 7
  %233 = load ptr, ptr %232, align 8, !tbaa !187
  %234 = getelementptr inbounds %struct.ID, ptr %233, i64 0, i32 4, i64 2
  %235 = load i8, ptr %234, align 2, !tbaa !46
  %236 = icmp eq i8 %235, 112
  br i1 %236, label %237, label %266

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.Object, ptr %233, i64 0, i32 98
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %238, ptr noundef nonnull %229) #17
  %239 = load ptr, ptr %232, align 8, !tbaa !187
  %240 = getelementptr inbounds %struct.Object, ptr %239, i64 0, i32 3
  %241 = load i16, ptr %240, align 8, !tbaa !193
  %242 = add i16 %241, -1
  %243 = icmp ult i16 %242, 5
  br i1 %243, label %244, label %260

244:                                              ; preds = %237
  %245 = tail call ptr @give_matarar(ptr noundef nonnull %239) #16
  %246 = load ptr, ptr %232, align 8, !tbaa !187
  %247 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 32
  %248 = load i32, ptr %247, align 4, !tbaa !189
  %249 = add nsw i32 %248, -1
  %250 = tail call fastcc i32 @max_ii(i32 noundef %249, i32 noundef 0) #17
  %251 = icmp eq ptr %245, null
  br i1 %251, label %266, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 31
  %254 = load i32, ptr %253, align 8, !tbaa !84
  %255 = icmp slt i32 %250, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %252
  %257 = load ptr, ptr %245, align 8, !tbaa !75
  %258 = sext i32 %250 to i64
  %259 = getelementptr inbounds ptr, ptr %257, i64 %258
  store ptr %224, ptr %259, align 8, !tbaa !75
  br label %266

260:                                              ; preds = %237
  %261 = icmp eq i16 %241, 10
  br i1 %261, label %262, label %266

262:                                              ; preds = %260
  %263 = getelementptr inbounds %struct.Object, ptr %239, i64 0, i32 102
  %264 = load i8, ptr %263, align 8, !tbaa !194
  %265 = and i8 %264, -5
  store i8 %265, ptr %263, align 8, !tbaa !194
  br label %266

266:                                              ; preds = %244, %252, %256, %230, %260, %262
  %267 = load ptr, ptr %231, align 8, !tbaa !75
  %268 = icmp eq ptr %267, null
  br i1 %268, label %456, label %230, !llvm.loop !198

269:                                              ; preds = %65, %68
  br i1 %31, label %274, label %270

270:                                              ; preds = %269
  %271 = tail call ptr @localize_texture(ptr noundef nonnull %1) #16
  %272 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 8
  store ptr %271, ptr %272, align 8, !tbaa !111
  %273 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %273, ptr noundef %271) #16
  br label %274

274:                                              ; preds = %270, %269
  %275 = phi ptr [ %271, %270 ], [ null, %269 ]
  %276 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  store i32 32, ptr %276, align 8, !tbaa !197
  %277 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %278 = load ptr, ptr %277, align 8, !tbaa !75
  %279 = icmp eq ptr %278, null
  br i1 %279, label %342, label %280

280:                                              ; preds = %274
  %281 = icmp eq ptr %275, null
  %282 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 6
  %283 = getelementptr inbounds %struct.Tex, ptr %275, i64 0, i32 31
  %284 = getelementptr inbounds %struct.Tex, ptr %275, i64 0, i32 32
  %285 = getelementptr inbounds %struct.Tex, ptr %275, i64 0, i32 30
  br label %286

286:                                              ; preds = %280, %339
  %287 = phi ptr [ %278, %280 ], [ %340, %339 ]
  %288 = getelementptr inbounds %struct.Base, ptr %287, i64 0, i32 7
  %289 = load ptr, ptr %288, align 8, !tbaa !187
  %290 = getelementptr inbounds %struct.ID, ptr %289, i64 0, i32 4, i64 2
  %291 = load i8, ptr %290, align 2, !tbaa !46
  %292 = icmp eq i8 %291, 116
  br i1 %292, label %293, label %339

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.Object, ptr %289, i64 0, i32 32
  %295 = load i32, ptr %294, align 4, !tbaa !189
  %296 = trunc i32 %295 to i16
  %297 = tail call ptr @give_current_material(ptr noundef nonnull %289, i16 noundef signext %296) #16
  %298 = icmp eq ptr %297, null
  br i1 %298, label %339, label %299

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.Material, ptr %297, i64 0, i32 102
  %301 = load ptr, ptr %300, align 8, !tbaa !75
  %302 = icmp eq ptr %301, null
  br i1 %302, label %339, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.MTex, ptr %301, i64 0, i32 5
  store ptr %275, ptr %304, align 8, !tbaa !199
  br i1 %281, label %313, label %305

305:                                              ; preds = %303
  %306 = load ptr, ptr %282, align 8, !tbaa !83
  %307 = icmp eq ptr %306, null
  %308 = load ptr, ptr %300, align 8, !tbaa !75
  br i1 %307, label %319, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.MTex, ptr %306, i64 0, i32 19
  %311 = load i16, ptr %310, align 2, !tbaa !200
  %312 = getelementptr inbounds %struct.MTex, ptr %308, i64 0, i32 19
  store i16 %311, ptr %312, align 2, !tbaa !200
  br label %319

313:                                              ; preds = %303
  %314 = load ptr, ptr %300, align 8, !tbaa !75
  %315 = getelementptr inbounds %struct.MTex, ptr %314, i64 0, i32 1
  %316 = load i16, ptr %315, align 2, !tbaa !201
  %317 = and i16 %316, -129
  store i16 %317, ptr %315, align 2, !tbaa !201
  %318 = getelementptr inbounds %struct.Material, ptr %297, i64 0, i32 21
  store float 1.000000e+00, ptr %318, align 8, !tbaa !202
  br label %334

319:                                              ; preds = %309, %305
  %320 = getelementptr inbounds %struct.MTex, ptr %308, i64 0, i32 1
  %321 = load i16, ptr %320, align 2, !tbaa !201
  %322 = and i16 %321, -129
  store i16 %322, ptr %320, align 2, !tbaa !201
  %323 = getelementptr inbounds %struct.Material, ptr %297, i64 0, i32 21
  store float 1.000000e+00, ptr %323, align 8, !tbaa !202
  %324 = load i16, ptr %283, align 2, !tbaa !203
  %325 = and i16 %324, 32
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %319
  %328 = load i16, ptr %284, align 8, !tbaa !204
  %329 = icmp eq i16 %328, 8
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i16, ptr %285, align 4, !tbaa !205
  %332 = and i16 %331, 34
  %333 = icmp eq i16 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %313, %330, %327
  %335 = phi ptr [ %315, %313 ], [ %320, %330 ], [ %320, %327 ]
  %336 = phi i16 [ %317, %313 ], [ %322, %330 ], [ %322, %327 ]
  %337 = phi ptr [ %318, %313 ], [ %323, %330 ], [ %323, %327 ]
  %338 = or disjoint i16 %336, 128
  store i16 %338, ptr %335, align 2, !tbaa !201
  store float 0.000000e+00, ptr %337, align 8, !tbaa !202
  br label %339

339:                                              ; preds = %293, %299, %330, %334, %319, %286
  %340 = load ptr, ptr %287, align 8, !tbaa !75
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %286, !llvm.loop !206

342:                                              ; preds = %339, %274
  %343 = icmp eq ptr %275, null
  br i1 %343, label %456, label %344

344:                                              ; preds = %342
  %345 = getelementptr inbounds %struct.Tex, ptr %275, i64 0, i32 52
  %346 = load ptr, ptr %345, align 8, !tbaa !120
  %347 = icmp eq ptr %346, null
  br i1 %347, label %456, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %350 = load i32, ptr %349, align 8, !tbaa !80
  %351 = icmp eq i32 %350, 2
  br i1 %351, label %352, label %456

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  %354 = load ptr, ptr %353, align 8, !tbaa !120
  %355 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %356 = load i32, ptr %355, align 8, !tbaa !66
  %357 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %358 = load i32, ptr %357, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %354, i32 noundef %356, i32 noundef %358, i32 noundef 1) #16
  %359 = load ptr, ptr %345, align 8, !tbaa !120
  %360 = load i32, ptr %355, align 8, !tbaa !66
  %361 = load i32, ptr %357, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %359, i32 noundef %360, i32 noundef %361, i32 noundef 1) #16
  br label %456

362:                                              ; preds = %71
  br i1 %31, label %367, label %363

363:                                              ; preds = %362
  %364 = tail call ptr @localize_lamp(ptr noundef nonnull %1) #16
  %365 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 9
  store ptr %364, ptr %365, align 8, !tbaa !113
  %366 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 21
  tail call void @BLI_addtail(ptr noundef nonnull %366, ptr noundef %364) #16
  br label %367

367:                                              ; preds = %363, %362
  %368 = phi ptr [ %364, %363 ], [ null, %362 ]
  %369 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  store i32 64, ptr %369, align 8, !tbaa !197
  %370 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %0) #16
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %391

372:                                              ; preds = %367
  %373 = icmp eq ptr %368, null
  br i1 %373, label %385, label %374

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.Lamp, ptr %368, i64 0, i32 2
  %376 = load i16, ptr %375, align 8, !tbaa !207
  %377 = icmp eq i16 %376, 1
  br i1 %377, label %378, label %385

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.Lamp, ptr %368, i64 0, i32 51
  %380 = load i16, ptr %379, align 4, !tbaa !208
  %381 = and i16 %380, 1
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %378
  store i32 2048, ptr %369, align 8, !tbaa !197
  %384 = load ptr, ptr %16, align 8, !tbaa !179
  br label %385

385:                                              ; preds = %372, %374, %378, %383
  %386 = phi ptr [ %384, %383 ], [ null, %378 ], [ null, %374 ], [ null, %372 ]
  %387 = phi ptr [ @.str.11, %383 ], [ @.str.12, %378 ], [ @.str.12, %374 ], [ @.str.12, %372 ]
  store ptr %386, ptr %15, align 8, !tbaa !179
  %388 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 13
  %389 = tail call ptr @BLI_findstring(ptr noundef nonnull %388, ptr noundef nonnull %387, i32 noundef 34) #16
  %390 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 2
  store ptr %389, ptr %390, align 8, !tbaa !170
  br label %391

391:                                              ; preds = %385, %367
  %392 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %393 = load ptr, ptr %392, align 8, !tbaa !75
  %394 = icmp eq ptr %393, null
  br i1 %394, label %411, label %395

395:                                              ; preds = %391, %408
  %396 = phi ptr [ %409, %408 ], [ %393, %391 ]
  %397 = getelementptr inbounds %struct.Base, ptr %396, i64 0, i32 7
  %398 = load ptr, ptr %397, align 8, !tbaa !187
  %399 = getelementptr inbounds %struct.ID, ptr %398, i64 0, i32 4, i64 2
  %400 = load i8, ptr %399, align 2, !tbaa !46
  %401 = icmp eq i8 %400, 112
  br i1 %401, label %402, label %408

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.Object, ptr %398, i64 0, i32 3
  %404 = load i16, ptr %403, align 8, !tbaa !193
  %405 = icmp eq i16 %404, 10
  br i1 %405, label %406, label %408

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.Object, ptr %398, i64 0, i32 19
  store ptr %368, ptr %407, align 8, !tbaa !171
  br label %408

408:                                              ; preds = %395, %406, %402
  %409 = load ptr, ptr %396, align 8, !tbaa !75
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %395, !llvm.loop !209

411:                                              ; preds = %408, %391
  %412 = icmp eq ptr %368, null
  br i1 %412, label %456, label %413

413:                                              ; preds = %411
  %414 = getelementptr inbounds %struct.Lamp, ptr %368, i64 0, i32 74
  %415 = load ptr, ptr %414, align 8, !tbaa !125
  %416 = icmp eq ptr %415, null
  br i1 %416, label %456, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %419 = load i32, ptr %418, align 8, !tbaa !80
  %420 = icmp eq i32 %419, 2
  br i1 %420, label %421, label %456

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  %423 = load ptr, ptr %422, align 8, !tbaa !125
  %424 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %425 = load i32, ptr %424, align 8, !tbaa !66
  %426 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %427 = load i32, ptr %426, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %423, i32 noundef %425, i32 noundef %427, i32 noundef 1) #16
  %428 = load ptr, ptr %414, align 8, !tbaa !125
  %429 = load i32, ptr %424, align 8, !tbaa !66
  %430 = load i32, ptr %426, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %428, i32 noundef %429, i32 noundef %430, i32 noundef 1) #16
  br label %456

431:                                              ; preds = %71
  br i1 %31, label %432, label %434

432:                                              ; preds = %431
  %433 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  store i32 128, ptr %433, align 8, !tbaa !197
  store ptr null, ptr %15, align 8, !tbaa !179
  br label %456

434:                                              ; preds = %431
  %435 = tail call ptr @localize_world(ptr noundef nonnull %1) #16
  %436 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 10
  store ptr %435, ptr %436, align 8, !tbaa !112
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %435) #16
  %437 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 12
  store i32 128, ptr %437, align 8, !tbaa !197
  store ptr %435, ptr %15, align 8, !tbaa !179
  %438 = icmp eq ptr %435, null
  br i1 %438, label %456, label %439

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.World, ptr %435, i64 0, i32 75
  %441 = load ptr, ptr %440, align 8, !tbaa !123
  %442 = icmp eq ptr %441, null
  br i1 %442, label %456, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %445 = load i32, ptr %444, align 8, !tbaa !80
  %446 = icmp eq i32 %445, 2
  br i1 %446, label %447, label %456

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %449 = load i32, ptr %448, align 8, !tbaa !66
  %450 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %451 = load i32, ptr %450, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef nonnull %441, i32 noundef %449, i32 noundef %451, i32 noundef 1) #16
  %452 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 75
  %453 = load ptr, ptr %452, align 8, !tbaa !123
  %454 = load i32, ptr %448, align 8, !tbaa !66
  %455 = load i32, ptr %450, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %453, i32 noundef %454, i32 noundef %455, i32 noundef 1) #16
  br label %456

456:                                              ; preds = %266, %223, %71, %432, %4, %352, %348, %344, %342, %421, %417, %413, %411, %447, %443, %439, %434
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_display_update_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @shader_preview_update(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !210 {
  %4 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  store i16 1, ptr %5, align 2, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @shader_preview_break(ptr nocapture noundef readonly %0) #11 !PGOFuncName !211 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = load i16, ptr %3, align 2, !tbaa !77
  %5 = sext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare void @RE_PreviewRender(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_ResultGet32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_engine_supports_textures(ptr noundef %0) unnamed_addr #0 !PGOFuncName !212 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #16
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !213
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, -128
  ret i8 %7
}

; Function Attrs: optsize
declare ptr @localize_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_render_material(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_render_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @preview_mat_has_sss(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #12 !PGOFuncName !216 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 123
  %6 = load i16, ptr %5, align 4, !tbaa !217
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef null, ptr noundef nonnull %11) #17, !range !186
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %44, label %45

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18, %41
  %23 = phi ptr [ %42, %41 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !218
  %26 = icmp eq i16 %25, 2
  %27 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !220
  %29 = icmp eq ptr %28, null
  br i1 %26, label %30, label %34

30:                                               ; preds = %22
  br i1 %29, label %41, label %31

31:                                               ; preds = %30
  %32 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef null, ptr noundef nonnull %28) #17, !range !186
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %45

34:                                               ; preds = %22
  br i1 %29, label %41, label %35

35:                                               ; preds = %34
  switch i16 %25, label %41 [
    i16 100, label %36
    i16 118, label %36
  ]

36:                                               ; preds = %35, %35
  %37 = getelementptr inbounds %struct.Material, ptr %28, i64 0, i32 123
  %38 = load i16, ptr %37, align 4, !tbaa !217
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30, %35, %31, %36, %34
  %42 = load ptr, ptr %23, align 8, !tbaa !75
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !221

44:                                               ; preds = %41, %18, %16, %9, %13
  br label %45

45:                                               ; preds = %31, %36, %13, %4, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %4 ], [ 1, %13 ], [ 1, %36 ], [ 1, %31 ]
  ret i32 %46
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @BKE_node_preview_init_tree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @localize_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @localize_lamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @localize_world(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeLocalSync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !37, i64 784}
!35 = !{!"Brush", !36, i64 0, !42, i64 120, !37, i64 144, !44, i64 152, !44, i64 464, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !38, i64 816, !43, i64 1840, !40, i64 1844, !40, i64 1846, !43, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !43, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !43, i64 1884, !43, i64 1888, !38, i64 1892, !43, i64 1904, !38, i64 1908, !41, i64 1920, !43, i64 1924, !43, i64 1928, !41, i64 1932, !41, i64 1936, !41, i64 1940, !38, i64 1944, !38, i64 1945, !38, i64 1946, !38, i64 1947, !43, i64 1948, !43, i64 1952, !43, i64 1956, !43, i64 1960, !43, i64 1964, !41, i64 1968, !41, i64 1972, !41, i64 1976, !43, i64 1980, !43, i64 1984, !41, i64 1988, !41, i64 1992, !43, i64 1996, !38, i64 2000, !38, i64 2012, !38, i64 2024, !38, i64 2032, !38, i64 2040, !38, i64 2048}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"BrushClone", !37, i64 0, !38, i64 8, !43, i64 16, !43, i64 20}
!43 = !{!"float", !38, i64 0}
!44 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !43, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308}
!45 = !{!35, !41, i64 1856}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !37, i64 0}
!48 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !49, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!49 = !{!"ListBase", !37, i64 0, !37, i64 8}
!50 = !{!35, !41, i64 104}
!51 = !{!52, !37, i64 96}
!52 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !53, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !49, i64 96, !49, i64 112, !49, i64 128, !49, i64 144}
!53 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!54 = !{!53, !41, i64 0}
!55 = !{!53, !41, i64 4}
!56 = !{!53, !41, i64 8}
!57 = !{!53, !41, i64 12}
!58 = !{i8 0, i8 2}
!59 = !{i64 0, i64 4, !60, i64 4, i64 4, !60, i64 8, i64 4, !60, i64 12, i64 4, !60}
!60 = !{!41, !41, i64 0}
!61 = !{!62, !41, i64 32}
!62 = !{!"SpaceButs", !37, i64 0, !37, i64 8, !49, i64 16, !41, i64 32, !43, i64 36, !38, i64 40, !63, i64 56, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !38, i64 232, !38, i64 233, !37, i64 240, !41, i64 248, !41, i64 252, !37, i64 256, !37, i64 264}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !53, i64 32, !53, i64 48, !53, i64 64, !38, i64 80, !38, i64 88, !43, i64 96, !43, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!64 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!65 = !{!62, !40, i64 226}
!66 = !{!67, !41, i64 104}
!67 = !{!"ShaderPreview", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !41, i64 104, !41, i64 108, !37, i64 112, !41, i64 120, !37, i64 128}
!68 = !{!67, !41, i64 108}
!69 = !{!"render_preview.c:BLI_rcti_size_x"}
!70 = !{!"render_preview.c:BLI_rcti_size_y"}
!71 = !{!"render_preview.c:ed_preview_draw_rect"}
!72 = !{!73, !37, i64 40}
!73 = !{!"RenderResult", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !37, i64 32, !37, i64 40, !37, i64 48, !53, i64 56, !41, i64 72, !41, i64 76, !49, i64 80, !53, i64 96, !37, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !37, i64 136}
!74 = !{!73, !41, i64 16}
!75 = !{!37, !37, i64 0}
!76 = !{!73, !41, i64 20}
!77 = !{!40, !40, i64 0}
!78 = !{!67, !37, i64 24}
!79 = !{!67, !37, i64 0}
!80 = !{!67, !41, i64 120}
!81 = !{!67, !37, i64 32}
!82 = !{!67, !37, i64 40}
!83 = !{!67, !37, i64 48}
!84 = !{!85, !41, i64 456}
!85 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !86, i64 312, !37, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !87, i64 1304, !87, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !49, i64 1400, !37, i64 1416}
!86 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!87 = !{!"long", !38, i64 0}
!88 = !{!43, !43, i64 0}
!89 = !{!90, !37, i64 0}
!90 = !{!"IconPreview", !37, i64 0, !37, i64 8, !37, i64 16, !49, i64 24}
!91 = !{!90, !37, i64 8}
!92 = !{!90, !37, i64 16}
!93 = !{!"render_preview.c:icon_preview_add_size"}
!94 = !{!95, !41, i64 16}
!95 = !{!"IconPreviewSize", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !37, i64 24}
!96 = !{!95, !41, i64 20}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!95, !37, i64 24}
!100 = !{!"render_preview.c:icon_preview_free"}
!101 = !{!"render_preview.c:icon_preview_startjob_all_sizes"}
!102 = !{!90, !37, i64 24}
!103 = !{!67, !37, i64 112}
!104 = !{!67, !37, i64 128}
!105 = !{!95, !37, i64 0}
!106 = distinct !{!106, !98}
!107 = !{!"render_preview.c:icon_preview_endjob"}
!108 = !{!"render_preview.c:copy_v4_v4"}
!109 = !{!"render_preview.c:shader_preview_free"}
!110 = !{!67, !37, i64 56}
!111 = !{!67, !37, i64 64}
!112 = !{!67, !37, i64 80}
!113 = !{!67, !37, i64 72}
!114 = !{!"render_preview.c:common_preview_startjob"}
!115 = !{!"render_preview.c:shader_preview_updatejob"}
!116 = !{!117, !37, i64 768}
!117 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !118, i64 224, !119, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !49, i64 928}
!118 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!119 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!120 = !{!121, !37, i64 336}
!121 = !{!"Tex", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !122, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!122 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!123 = !{!124, !37, i64 520}
!124 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!125 = !{!126, !37, i64 512}
!126 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!127 = !{!"render_preview.c:max_ii"}
!128 = !{!"render_preview.c:icon_preview_startjob"}
!129 = !{!130, !40, i64 1244}
!130 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !43, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !43, i64 1336, !43, i64 1340, !131, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!131 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!132 = !{!122, !41, i64 8}
!133 = !{!122, !38, i64 26}
!134 = !{!122, !37, i64 0}
!135 = !{!136, !37, i64 40}
!136 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !53, i64 2436, !137, i64 2456}
!137 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!138 = !{!117, !40, i64 128}
!139 = !{!"render_preview.c:shader_preview_startjob"}
!140 = !{!67, !37, i64 8}
!141 = !{!67, !37, i64 16}
!142 = !{!"render_preview.c:icon_copy_rect"}
!143 = !{!136, !37, i64 48}
!144 = !{!136, !41, i64 16}
!145 = !{!136, !41, i64 20}
!146 = distinct !{!146, !98}
!147 = !{!"render_preview.c:set_alpha"}
!148 = distinct !{!148, !98}
!149 = !{!"render_preview.c:shader_preview_render"}
!150 = !{!151, !41, i64 764}
!151 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !49, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !152, i64 280, !159, i64 4264, !49, i64 4296, !49, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !49, i64 4384, !160, i64 4400, !161, i64 4416, !164, i64 4600, !37, i64 4608, !165, i64 4616, !37, i64 4640, !87, i64 4648, !87, i64 4656, !154, i64 4664, !155, i64 4824, !131, i64 4888, !37, i64 4952}
!152 = !{!"RenderData", !153, i64 0, !37, i64 248, !37, i64 256, !156, i64 264, !157, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !53, i64 576, !49, i64 592, !40, i64 608, !40, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !41, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !43, i64 660, !43, i64 664, !40, i64 668, !40, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !43, i64 2528, !43, i64 2532, !40, i64 2536, !40, i64 2538, !43, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !41, i64 2576, !43, i64 2580, !38, i64 2584, !158, i64 2616, !41, i64 3976, !41, i64 3980}
!153 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !154, i64 24, !155, i64 184}
!154 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!155 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!156 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!157 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !43, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!158 = !{!"BakeData", !153, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!159 = !{!"AudioData", !41, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !43, i64 24, !43, i64 28}
!160 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!161 = !{!"GameData", !160, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !162, i64 40, !40, i64 64, !40, i64 66, !43, i64 68, !163, i64 72, !43, i64 128, !43, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!162 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!163 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !41, i64 40, !43, i64 44, !43, i64 48, !40, i64 52, !40, i64 54}
!164 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!165 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!166 = !{!151, !41, i64 768}
!167 = !{!151, !40, i64 758}
!168 = !{!151, !41, i64 796}
!169 = !{!151, !41, i64 800}
!170 = !{!151, !37, i64 128}
!171 = !{!85, !37, i64 296}
!172 = !{!173, !43, i64 144}
!173 = !{!"Camera", !36, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!174 = !{!"render_preview.c:preview_get_scene"}
!175 = !{!176, !37, i64 1088}
!176 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !87, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!177 = !{!"render_preview.c:preview_prepare_scene"}
!178 = !{!176, !37, i64 1312}
!179 = !{!151, !37, i64 136}
!180 = !{!151, !41, i64 908}
!181 = !{!151, !40, i64 816}
!182 = !{!151, !41, i64 680}
!183 = !{i8 0, i8 -127}
!184 = !{!117, !40, i64 394}
!185 = !{!117, !41, i64 400}
!186 = !{i32 0, i32 2}
!187 = !{!188, !37, i64 32}
!188 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!189 = !{!85, !41, i64 460}
!190 = !{!117, !41, i64 404}
!191 = !{!117, !41, i64 536}
!192 = distinct !{!192, !98}
!193 = !{!85, !40, i64 136}
!194 = !{!85, !38, i64 1160}
!195 = distinct !{!195, !98}
!196 = !{!117, !38, i64 542}
!197 = !{!151, !41, i64 232}
!198 = distinct !{!198, !98}
!199 = !{!44, !37, i64 16}
!200 = !{!44, !40, i64 130}
!201 = !{!44, !40, i64 2}
!202 = !{!117, !43, i64 200}
!203 = !{!121, !40, i64 230}
!204 = !{!121, !40, i64 232}
!205 = !{!121, !40, i64 228}
!206 = distinct !{!206, !98}
!207 = !{!126, !40, i64 128}
!208 = !{!126, !40, i64 284}
!209 = distinct !{!209, !98}
!210 = !{!"render_preview.c:shader_preview_update"}
!211 = !{!"render_preview.c:shader_preview_break"}
!212 = !{!"render_preview.c:check_engine_supports_textures"}
!213 = !{!214, !41, i64 144}
!214 = !{!"RenderEngineType", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !41, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !215, i64 200}
!215 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!216 = !{!"render_preview.c:preview_mat_has_sss"}
!217 = !{!117, !40, i64 876}
!218 = !{!219, !40, i64 172}
!219 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !49, i64 200, !49, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !49, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !43, i64 380, !43, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !64, i64 400, !64, i64 416, !64, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!220 = !{!219, !37, i64 240}
!221 = distinct !{!221, !98}
