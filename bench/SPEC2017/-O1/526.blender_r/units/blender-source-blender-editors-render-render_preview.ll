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
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
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
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @get_brush_icon(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 16
  %8 = load i32, ptr %7, align 8, !tbaa !45
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %12, i64 noundef 1024) #12
  %17 = load ptr, ptr @G, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %18) #12
  %20 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 385, ptr noundef null) #12
  store ptr %20, ptr %3, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = call ptr @BLI_get_folder(i32 noundef 2, ptr noundef nonnull @.str) #12
  %24 = load ptr, ptr @G, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %23, ptr noundef nonnull %12) #12
  %26 = load i8, ptr %2, align 16, !tbaa !46
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call ptr @IMB_loadiffname(ptr noundef nonnull %2, i32 noundef 385, ptr noundef null) #12
  store ptr %29, ptr %3, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %22, %28, %15
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @BKE_icon_getid(ptr noundef %0) #12
  call void @BKE_icon_changed(i32 noundef %34) #12
  br label %35

35:                                               ; preds = %6, %30, %33, %11, %1
  %36 = load ptr, ptr %3, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %39, align 8, !tbaa !50
  br label %40

40:                                               ; preds = %38, %35
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #12
  ret ptr %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #2

declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ED_preview_init_dbase() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ED_preview_free_dbase() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_preview_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rcti, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @WM_jobs_customdata(ptr noundef %9, ptr noundef %10) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %14 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !54
  %16 = load i32, ptr %4, align 4, !tbaa !55
  %17 = sub nsw i32 %15, %16
  %18 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !57
  %22 = sub nsw i32 %19, %21
  store i32 %16, ptr %6, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %16, ptr %23, align 4, !tbaa !54
  %24 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %21, ptr %24, align 4, !tbaa !57
  %25 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %21, ptr %25, align 4, !tbaa !56
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %6), !range !58
  %29 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %6), !range !58
  %30 = and i8 %29, %28
  br label %33

31:                                               ; preds = %8
  %32 = call fastcc zeroext i8 @ed_preview_draw_rect(ptr noundef %10, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %6), !range !58
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i8 [ %30, %27 ], [ %32, %31 ]
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !59
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 12
  %43 = load i16, ptr %42, align 2, !tbaa !65
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41, %37
  br i1 %35, label %46, label %49

46:                                               ; preds = %45
  %47 = tail call zeroext i8 @WM_jobs_test(ptr noundef %9, ptr noundef %10, i32 noundef 3) #12
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %46, %45
  %50 = icmp eq ptr %13, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %13, i64 0, i32 12
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = sub nsw i32 %53, %17
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ShaderPreview, ptr %13, i64 0, i32 13
  %59 = load i32, ptr %58, align 4, !tbaa !68
  %60 = sub nsw i32 %59, %22
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 true)
  %62 = icmp ugt i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %51, %46, %41
  %64 = getelementptr inbounds %struct.SpaceButs, ptr %12, i64 0, i32 12
  store i16 0, ptr %64, align 2, !tbaa !65
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %17, i32 noundef %22, i32 noundef 0)
  br label %65

65:                                               ; preds = %63, %57, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %66

66:                                               ; preds = %65, %5
  ret void
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @WM_jobs_customdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ed_preview_draw_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.RenderResult, align 8
  %7 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  %8 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = load i32, ptr %3, align 4, !tbaa !55
  %11 = sub nsw i32 %9, %10
  %12 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = sub i32 %15, %13
  %17 = icmp eq i32 %1, 0
  %18 = icmp ne i32 %2, 0
  %19 = or i1 %17, %18
  %20 = select i1 %19, ptr @.str.5, ptr @.str.6
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %20, ptr noundef %0) #12
  br i1 %17, label %27, label %22

22:                                               ; preds = %5
  %23 = sdiv i32 %11, 2
  %24 = sub nsw i32 %11, %23
  %25 = select i1 %18, i32 %23, i32 %24
  %26 = select i1 %18, i32 0, i32 %23
  br label %27

27:                                               ; preds = %22, %5
  %28 = phi i32 [ %11, %5 ], [ %25, %22 ]
  %29 = phi i32 [ 0, %5 ], [ %26, %22 ]
  %30 = call ptr @RE_GetRender(ptr noundef nonnull %7) #12
  call void @RE_AcquireResultImage(ptr noundef %30, ptr noundef nonnull %6) #12
  %31 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !71
  %37 = sub nsw i32 %36, %28
  %38 = call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %75

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.RenderResult, ptr %6, i64 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %16, %42
  %44 = call i32 @llvm.abs.i32(i32 %43, i1 true)
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !54
  %49 = load i32, ptr %3, align 4, !tbaa !55
  %50 = add i32 %36, %29
  %51 = add i32 %50, %49
  %52 = call i32 @llvm.smax.i32(i32 %51, i32 %48)
  store i32 %52, ptr %47, align 4, !tbaa !54
  %53 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = load i32, ptr %14, align 4, !tbaa !57
  %56 = add nsw i32 %55, %42
  %57 = call i32 @llvm.smax.i32(i32 %56, i32 %54)
  store i32 %57, ptr %53, align 4, !tbaa !56
  %58 = icmp ne i32 %36, 0
  %59 = icmp ne i32 %42, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %75

61:                                               ; preds = %46
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %63 = mul nsw i32 %42, %36
  %64 = sext i32 %63 to i64
  %65 = shl nsw i64 %64, 2
  %66 = call ptr %62(i64 noundef %65, ptr noundef nonnull @.str.7) #12
  %67 = load i32, ptr %3, align 4, !tbaa !55
  %68 = add nsw i32 %67, %29
  %69 = sitofp i32 %68 to float
  %70 = load i32, ptr %14, align 4, !tbaa !57
  %71 = sitofp i32 %70 to float
  call void @RE_AcquiredResultGet32(ptr noundef %30, ptr noundef nonnull %6, ptr noundef %66) #12
  %72 = load i32, ptr %35, align 8, !tbaa !71
  %73 = load i32, ptr %41, align 4, !tbaa !73
  call void @glaDrawPixelsSafe(float noundef %69, float noundef %71, i32 noundef %72, i32 noundef %73, i32 noundef %72, i32 noundef 6408, i32 noundef 5121, ptr noundef %66) #12
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %74(ptr noundef %66) #12
  br label %75

75:                                               ; preds = %34, %40, %61, %46, %27
  %76 = phi i8 [ 1, %61 ], [ 0, %46 ], [ 0, %40 ], [ 0, %34 ], [ 0, %27 ]
  call void @RE_ReleaseResultImage(ptr noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #12
  ret i8 %76
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !74
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %10) #12
  %14 = icmp ne i8 %13, 0
  %15 = icmp eq i32 %7, 2
  %16 = and i1 %15, %14
  %17 = icmp ne i16 %12, 17748
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %58, label %19

19:                                               ; preds = %8
  %20 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %21 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %22 = tail call ptr @WM_jobs_get(ptr noundef %20, ptr noundef %21, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 3) #12
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %24 = tail call ptr %23(i64 noundef 136, ptr noundef nonnull @.str.4) #12
  %25 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 3
  store ptr %10, ptr %25, align 8, !tbaa !75
  store ptr %1, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 12
  store i32 %5, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 13
  store i32 %6, ptr %27, align 4, !tbaa !68
  %28 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 15
  store i32 %7, ptr %28, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 4
  store ptr %2, ptr %29, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 5
  store ptr %3, ptr %30, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 6
  store ptr %4, ptr %31, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 16
  store ptr null, ptr %32, align 8, !tbaa !81
  %33 = icmp eq ptr %9, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %36 = load i32, ptr %35, align 8, !tbaa !82
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11
  %40 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98
  %41 = load float, ptr %40, align 4, !tbaa !86
  store float %41, ptr %39, align 4, !tbaa !86
  %42 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !86
  %44 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 1
  store float %43, ptr %44, align 4, !tbaa !86
  %45 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !86
  %47 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 2
  store float %46, ptr %47, align 4, !tbaa !86
  %48 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !86
  %50 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 3
  store float %49, ptr %50, align 4, !tbaa !86
  br label %56

51:                                               ; preds = %34, %19
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11
  %53 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 3
  store float 1.000000e+00, ptr %53, align 4, !tbaa !86
  %54 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 2
  store float 1.000000e+00, ptr %54, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.ShaderPreview, ptr %24, i64 0, i32 11, i64 1
  store float 1.000000e+00, ptr %55, align 4, !tbaa !86
  store float 1.000000e+00, ptr %52, align 8, !tbaa !86
  br label %56

56:                                               ; preds = %51, %38
  tail call void @WM_jobs_customdata_set(ptr noundef %22, ptr noundef nonnull %24, ptr noundef nonnull @shader_preview_free) #12
  tail call void @WM_jobs_timer(ptr noundef %22, double noundef 1.000000e-01, i32 noundef 100663296, i32 noundef 100663296) #12
  tail call void @WM_jobs_callbacks(ptr noundef %22, ptr noundef nonnull @common_preview_startjob, ptr noundef null, ptr noundef nonnull @shader_preview_updatejob, ptr noundef null) #12
  %57 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  tail call void @WM_jobs_start(ptr noundef %57, ptr noundef %22) #12
  br label %58

58:                                               ; preds = %8, %56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_preview_icon_job(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %9 = tail call ptr @WM_jobs_get(ptr noundef %7, ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 10, i32 noundef 3) #12
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.2) #12
  %12 = tail call ptr @WM_jobs_customdata_get(ptr noundef %9) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 3
  %16 = getelementptr inbounds %struct.IconPreview, ptr %12, i64 0, i32 3
  tail call void @BLI_movelisttolist(ptr noundef nonnull %15, ptr noundef nonnull %16) #12
  br label %17

17:                                               ; preds = %14, %6
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %18, ptr %11, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 1
  store ptr %2, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 2
  store ptr %2, ptr %20, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.IconPreview, ptr %11, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %17, %33
  %25 = phi ptr [ %34, %33 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.IconPreviewSize, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !91
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.IconPreviewSize, ptr %25, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !93
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %24
  %34 = load ptr, ptr %25, align 8, !tbaa !72
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !94

36:                                               ; preds = %33, %17
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %38 = tail call ptr %37(i64 noundef 32, ptr noundef nonnull @.str.8) #12
  %39 = getelementptr inbounds %struct.IconPreviewSize, ptr %38, i64 0, i32 2
  store i32 %4, ptr %39, align 8, !tbaa !91
  %40 = getelementptr inbounds %struct.IconPreviewSize, ptr %38, i64 0, i32 3
  store i32 %5, ptr %40, align 4, !tbaa !93
  %41 = getelementptr inbounds %struct.IconPreviewSize, ptr %38, i64 0, i32 4
  store ptr %3, ptr %41, align 8, !tbaa !97
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %38) #12
  br label %42

42:                                               ; preds = %29, %36
  tail call void @WM_jobs_customdata_set(ptr noundef %9, ptr noundef nonnull %11, ptr noundef nonnull @icon_preview_free) #12
  tail call void @WM_jobs_timer(ptr noundef %9, double noundef 1.000000e-01, i32 noundef 100663296, i32 noundef 100663296) #12
  tail call void @WM_jobs_callbacks(ptr noundef %9, ptr noundef nonnull @icon_preview_startjob_all_sizes, ptr noundef null, ptr noundef null, ptr noundef nonnull @icon_preview_endjob) #12
  %43 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  tail call void @WM_jobs_start(ptr noundef %43, ptr noundef %9) #12
  ret void
}

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @WM_jobs_customdata_get(ptr noundef) local_unnamed_addr #2

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @icon_preview_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %3(ptr noundef %0) #12
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @icon_preview_startjob_all_sizes(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = load ptr, ptr %0, align 8, !tbaa !87
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #12
  %9 = icmp eq ptr %6, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %6, %10 ], [ %33, %13 ]
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %16 = tail call ptr %15(i64 noundef 136, ptr noundef nonnull @.str.9) #12
  %17 = load ptr, ptr %0, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !75
  %19 = load ptr, ptr %11, align 8, !tbaa !89
  store ptr %19, ptr %16, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.IconPreviewSize, ptr %14, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 12
  store i32 %21, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.IconPreviewSize, ptr %14, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !93
  %25 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 13
  store i32 %24, ptr %25, align 4, !tbaa !68
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 15
  store i32 1, ptr %26, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.IconPreviewSize, ptr %14, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 14
  store ptr %28, ptr %29, align 8, !tbaa !99
  %30 = load ptr, ptr %12, align 8, !tbaa !90
  %31 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !78
  %32 = getelementptr inbounds %struct.ShaderPreview, ptr %16, i64 0, i32 16
  store ptr null, ptr %32, align 8, !tbaa !81
  tail call void @common_preview_startjob(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %2, ptr poison)
  tail call void @shader_preview_free(ptr noundef nonnull %16)
  %33 = load ptr, ptr %14, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !101

35:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @icon_preview_endjob(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.IconPreview, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !74
  %8 = icmp eq i16 %7, 21058
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef nonnull %3) #12
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @shader_preview_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  tail call void @shader_preview_updatejob(ptr noundef %0)
  %8 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 17
  %9 = load ptr, ptr %4, align 8, !tbaa !102
  tail call void @BLI_remlink(ptr noundef nonnull %8, ptr noundef %9) #12
  %10 = load ptr, ptr %4, align 8, !tbaa !102
  tail call void @BKE_material_free_ex(ptr noundef %10, i8 noundef zeroext 0) #12
  %11 = load ptr, ptr %4, align 8, !tbaa !102
  %12 = tail call ptr @IDP_GetProperties(ptr noundef %11, i8 noundef zeroext 0) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @IDP_FreeProperty(ptr noundef nonnull %12) #12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %15(ptr noundef nonnull %12) #12
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %18 = load ptr, ptr %4, align 8, !tbaa !102
  tail call void %17(ptr noundef %18) #12
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  tail call void @shader_preview_updatejob(ptr noundef %0)
  %24 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %25 = load ptr, ptr %20, align 8, !tbaa !103
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef %25) #12
  %26 = load ptr, ptr %20, align 8, !tbaa !103
  tail call void @BKE_texture_free(ptr noundef %26) #12
  %27 = load ptr, ptr %20, align 8, !tbaa !103
  %28 = tail call ptr @IDP_GetProperties(ptr noundef %27, i8 noundef zeroext 0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  tail call void @IDP_FreeProperty(ptr noundef nonnull %28) #12
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %31(ptr noundef nonnull %28) #12
  br label %32

32:                                               ; preds = %30, %23
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %34 = load ptr, ptr %20, align 8, !tbaa !103
  tail call void %33(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %32, %19
  %36 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !104
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  tail call void @shader_preview_updatejob(ptr noundef %0)
  %40 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 25
  %41 = load ptr, ptr %36, align 8, !tbaa !104
  tail call void @BLI_remlink(ptr noundef nonnull %40, ptr noundef %41) #12
  %42 = load ptr, ptr %36, align 8, !tbaa !104
  tail call void @BKE_world_free_ex(ptr noundef %42, i8 noundef zeroext 1) #12
  %43 = load ptr, ptr %36, align 8, !tbaa !104
  %44 = tail call ptr @IDP_GetProperties(ptr noundef %43, i8 noundef zeroext 0) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  tail call void @IDP_FreeProperty(ptr noundef nonnull %44) #12
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %47(ptr noundef nonnull %44) #12
  br label %48

48:                                               ; preds = %46, %39
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %50 = load ptr, ptr %36, align 8, !tbaa !104
  tail call void %49(ptr noundef %50) #12
  br label %51

51:                                               ; preds = %48, %35
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  tail call void @shader_preview_updatejob(ptr noundef %0)
  %56 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 21
  %57 = load ptr, ptr %52, align 8, !tbaa !105
  tail call void @BLI_remlink(ptr noundef nonnull %56, ptr noundef %57) #12
  %58 = load ptr, ptr %52, align 8, !tbaa !105
  tail call void @BKE_lamp_free(ptr noundef %58) #12
  %59 = load ptr, ptr %52, align 8, !tbaa !105
  %60 = tail call ptr @IDP_GetProperties(ptr noundef %59, i8 noundef zeroext 0) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  tail call void @IDP_FreeProperty(ptr noundef nonnull %60) #12
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %63(ptr noundef nonnull %60) #12
  br label %64

64:                                               ; preds = %62, %55
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  %66 = load ptr, ptr %52, align 8, !tbaa !105
  tail call void %65(ptr noundef %66) #12
  br label %67

67:                                               ; preds = %64, %51
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %68(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @common_preview_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca %struct.ImageUser, align 8
  %6 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %110

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !74
  switch i16 %13, label %61 [
    i16 19785, label %14
    i16 21058, label %39
  ]

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %15 = icmp eq ptr %11, null
  br i1 %15, label %109, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Image, ptr %11, i64 0, i32 9
  %18 = load i16, ptr %17, align 4, !tbaa !106
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %109, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ImageUser, ptr %5, i64 0, i32 1
  store i32 1, ptr %21, align 8, !tbaa !109
  %22 = getelementptr inbounds %struct.ImageUser, ptr %5, i64 0, i32 7
  store i8 1, ptr %22, align 2, !tbaa !111
  %23 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  store ptr %24, ptr %5, align 8, !tbaa !112
  %25 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef null) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  call void @BKE_image_release_ibuf(ptr noundef nonnull %11, ptr noundef %25, ptr noundef null) #12
  br label %109

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  call fastcc void @icon_copy_rect(ptr noundef nonnull %25, i32 noundef %34, i32 noundef %36, ptr noundef %38)
  store i16 1, ptr %2, align 2, !tbaa !74
  call void @BKE_image_release_ibuf(ptr noundef nonnull %11, ptr noundef nonnull %25, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %122

39:                                               ; preds = %9
  %40 = tail call ptr @get_brush_icon(ptr noundef %11)
  %41 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  %44 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %47 = load i32, ptr %46, align 4, !tbaa !68
  %48 = mul nsw i32 %47, %45
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %43, i8 -120, i64 %50, i1 false)
  %51 = load ptr, ptr %41, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %122, label %53

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.ImBuf, ptr %51, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !113
  %56 = icmp eq ptr %55, null
  br i1 %56, label %122, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %44, align 8, !tbaa !66
  %59 = load i32, ptr %46, align 4, !tbaa !68
  %60 = load ptr, ptr %42, align 8, !tbaa !99
  tail call fastcc void @icon_copy_rect(ptr noundef nonnull %51, i32 noundef %58, i32 noundef %59, ptr noundef %60)
  store i16 1, ptr %2, align 2, !tbaa !74
  br label %122

61:                                               ; preds = %9
  %62 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 1
  store ptr %1, ptr %62, align 8, !tbaa !116
  %63 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 2
  store ptr %2, ptr %63, align 8, !tbaa !117
  %64 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !79
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %11, i32 noundef 1, i32 noundef 1)
  %68 = load ptr, ptr %64, align 8, !tbaa !79
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %68, i32 noundef 1, i32 noundef 0)
  br label %70

69:                                               ; preds = %61
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %11, i32 noundef 0, i32 noundef 0)
  br label %70

70:                                               ; preds = %67, %69
  store i16 1, ptr %2, align 2, !tbaa !74
  switch i16 %13, label %122 [
    i16 20311, label %71
    i16 16717, label %88
  ]

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %73 = load i32, ptr %72, align 8, !tbaa !66
  %74 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %75 = load i32, ptr %74, align 4, !tbaa !68
  %76 = mul nsw i32 %75, %73
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %80 = load ptr, ptr %79, align 8, !tbaa !99
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %83 = phi i32 [ %85, %81 ], [ 0, %78 ]
  %84 = getelementptr inbounds i8, ptr %82, i64 3
  store i8 -1, ptr %84, align 1, !tbaa !46
  %85 = add nuw nsw i32 %83, 1
  %86 = getelementptr inbounds i8, ptr %82, i64 4
  %87 = icmp eq i32 %85, %76
  br i1 %87, label %122, label %81, !llvm.loop !118

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 2
  %90 = load i16, ptr %89, align 8, !tbaa !119
  %91 = icmp eq i16 %90, 1
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 12
  %94 = load i32, ptr %93, align 8, !tbaa !66
  %95 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %96 = load i32, ptr %95, align 4, !tbaa !68
  %97 = mul nsw i32 %96, %94
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !99
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %107, %102 ], [ %101, %99 ]
  %104 = phi i32 [ %106, %102 ], [ 0, %99 ]
  %105 = getelementptr inbounds i8, ptr %103, i64 3
  store i8 -1, ptr %105, align 1, !tbaa !46
  %106 = add nuw nsw i32 %104, 1
  %107 = getelementptr inbounds i8, ptr %103, i64 4
  %108 = icmp eq i32 %106, %97
  br i1 %108, label %122, label %102, !llvm.loop !118

109:                                              ; preds = %31, %16, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %122

110:                                              ; preds = %4
  %111 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 1
  store ptr %1, ptr %111, align 8, !tbaa !116
  %112 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 2
  store ptr %2, ptr %112, align 8, !tbaa !117
  %113 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !79
  %115 = icmp eq ptr %114, null
  %116 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !78
  br i1 %115, label %120, label %118

118:                                              ; preds = %110
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %117, i32 noundef 1, i32 noundef 1)
  %119 = load ptr, ptr %113, align 8, !tbaa !79
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %119, i32 noundef 1, i32 noundef 0)
  br label %121

120:                                              ; preds = %110
  tail call fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %117, i32 noundef 0, i32 noundef 0)
  br label %121

121:                                              ; preds = %118, %120
  store i16 1, ptr %2, align 2, !tbaa !74
  br label %122

122:                                              ; preds = %102, %81, %92, %71, %109, %88, %70, %57, %53, %39, %32, %121
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shader_preview_updatejob(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !74
  switch i16 %11, label %64 [
    i16 16717, label %12
    i16 17748, label %25
    i16 20311, label %38
    i16 16716, label %51
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 103
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  tail call void @ntreeLocalSync(ptr noundef nonnull %22, ptr noundef nonnull %18) #12
  br label %64

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 52
  %31 = load ptr, ptr %30, align 8, !tbaa !124
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 52
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  tail call void @ntreeLocalSync(ptr noundef nonnull %35, ptr noundef nonnull %31) #12
  br label %64

38:                                               ; preds = %9
  %39 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 75
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.World, ptr %40, i64 0, i32 75
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  tail call void @ntreeLocalSync(ptr noundef nonnull %48, ptr noundef nonnull %44) #12
  br label %64

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !105
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 74
  %57 = load ptr, ptr %56, align 8, !tbaa !128
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Lamp, ptr %53, i64 0, i32 74
  %61 = load ptr, ptr %60, align 8, !tbaa !128
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @ntreeLocalSync(ptr noundef nonnull %61, ptr noundef nonnull %57) #12
  br label %64

64:                                               ; preds = %51, %55, %59, %63, %9, %38, %42, %46, %50, %25, %29, %33, %37, %12, %16, %20, %24, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_preview_kill_jobs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @WM_jobs_kill(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @common_preview_startjob) #12
  br label %5

5:                                                ; preds = %4, %1
  tail call void @ED_viewport_render_kill_jobs(ptr noundef %0, i8 noundef zeroext 0) #12
  ret void
}

declare void @WM_jobs_kill(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_viewport_render_kill_jobs(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #2

declare void @RE_AcquireResultImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_AcquiredResultGet32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_ReleaseResultImage(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_material_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare void @BKE_texture_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_world_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_lamp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @icon_copy_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %8, %4
  %13 = tail call ptr @IMB_dupImBuf(ptr noundef %0) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !132
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
  %41 = tail call ptr @IMB_scalefastImBuf(ptr noundef nonnull %13, i32 noundef %37, i32 noundef %39) #12
  %42 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  tail call void @IMB_rect_from_float(ptr noundef nonnull %13) #12
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
  %57 = load ptr, ptr %42, align 8, !tbaa !113
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
  %66 = load i32, ptr %16, align 8, !tbaa !131
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  %69 = add nsw i16 %64, -1
  %70 = icmp sgt i16 %64, 1
  br i1 %70, label %61, label %71, !llvm.loop !133

71:                                               ; preds = %61, %46
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #12
  br label %72

72:                                               ; preds = %12, %8, %71
  ret void
}

declare ptr @IMB_dupImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_scalefastImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @shader_preview_render(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [32 x i8], align 16
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %8 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !81
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
  %25 = icmp eq ptr %9, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 22, i32 33
  store i32 %24, ptr %33, align 4, !tbaa !136
  %34 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %35 = load i32, ptr %34, align 4, !tbaa !68
  %36 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 22, i32 34
  store i32 %35, ptr %36, align 8, !tbaa !152
  %37 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 22, i32 30
  store i16 100, ptr %37, align 2, !tbaa !153
  br label %38

38:                                               ; preds = %32, %29
  %39 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = sext i16 %7 to i32
  %42 = tail call fastcc ptr @preview_prepare_scene(ptr noundef %40, ptr noundef %1, i32 noundef %41, ptr noundef %0)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %113, label %44

44:                                               ; preds = %38
  %45 = icmp ne i32 %3, 0
  %46 = or i1 %10, %45
  %47 = load ptr, ptr %0, align 8, !tbaa !76
  %48 = select i1 %46, ptr @.str.5, ptr @.str.6
  %49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %48, ptr noundef %47) #12
  %50 = call ptr @RE_GetRender(ptr noundef nonnull %5) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call ptr @RE_NewRender(ptr noundef nonnull %5) #12
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi ptr [ %53, %52 ], [ %50, %44 ]
  %56 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 22, i32 46
  %57 = load i32, ptr %56, align 4, !tbaa !154
  %58 = and i32 %57, -266273
  store i32 %58, ptr %56, align 4, !tbaa !154
  %59 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !77
  switch i32 %60, label %75 [
    i32 1, label %61
    i32 2, label %66
  ]

61:                                               ; preds = %54
  %62 = or disjoint i32 %58, 4096
  store i32 %62, ptr %56, align 4, !tbaa !154
  %63 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 22, i32 47
  %64 = load i32, ptr %63, align 8, !tbaa !155
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !155
  br label %79

66:                                               ; preds = %54
  switch i16 %7, label %71 [
    i16 16717, label %68
    i16 17748, label %67
  ]

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %66, %67
  %69 = phi i32 [ 262144, %67 ], [ 32, %66 ]
  %70 = or disjoint i32 %58, %69
  store i32 %70, ptr %56, align 4, !tbaa !154
  br label %71

71:                                               ; preds = %68, %66
  %72 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 22, i32 47
  %73 = load i32, ptr %72, align 8, !tbaa !155
  %74 = and i32 %73, -2
  store i32 %74, ptr %72, align 8, !tbaa !155
  br label %79

75:                                               ; preds = %54
  %76 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 22, i32 47
  %77 = load i32, ptr %76, align 8, !tbaa !155
  %78 = or i32 %77, 1
  store i32 %78, ptr %76, align 8, !tbaa !155
  br label %79

79:                                               ; preds = %71, %75, %61
  switch i32 %60, label %81 [
    i32 0, label %80
    i32 2, label %80
  ]

80:                                               ; preds = %79, %79
  call void @RE_display_update_cb(ptr noundef %55, ptr noundef nonnull %0, ptr noundef nonnull @shader_preview_update) #12
  br label %81

81:                                               ; preds = %79, %80
  call void @RE_test_break_cb(ptr noundef %55, ptr noundef nonnull %0, ptr noundef nonnull @shader_preview_break) #12
  %82 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !156
  %84 = getelementptr inbounds %struct.Object, ptr %83, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !157
  %86 = getelementptr inbounds %struct.Camera, ptr %85, i64 0, i32 8
  %87 = load float, ptr %86, align 8, !tbaa !158
  %88 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 13
  %89 = load i32, ptr %88, align 4, !tbaa !68
  %90 = icmp sgt i32 %24, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = sitofp i32 %89 to float
  %93 = sitofp i32 %24 to float
  %94 = fdiv float %92, %93
  %95 = fmul float %87, %94
  store float %95, ptr %86, align 8, !tbaa !158
  br label %96

96:                                               ; preds = %91, %81
  call void @RE_PreviewRender(ptr noundef %55, ptr noundef %9, ptr noundef nonnull %42) #12
  %97 = load ptr, ptr %82, align 8, !tbaa !156
  %98 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !157
  %100 = getelementptr inbounds %struct.Camera, ptr %99, i64 0, i32 8
  store float %87, ptr %100, align 8, !tbaa !158
  %101 = load i32, ptr %59, align 8, !tbaa !77
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 14
  %105 = load ptr, ptr %104, align 8, !tbaa !99
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @RE_ResultGet32(ptr noundef %55, ptr noundef nonnull %105) #12
  br label %108

108:                                              ; preds = %103, %107, %96
  %109 = load ptr, ptr %39, align 8, !tbaa !75
  %110 = load i16, ptr %6, align 8, !tbaa !74
  %111 = sext i16 %110 to i32
  %112 = call fastcc ptr @preview_prepare_scene(ptr noundef %109, ptr noundef null, i32 noundef %111, ptr noundef nonnull %0)
  br label %113

113:                                              ; preds = %38, %108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @preview_prepare_scene(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %471, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 46
  %16 = load i32, ptr %15, align 4, !tbaa !154
  %17 = or i32 %16, 8
  store i32 %17, ptr %15, align 4, !tbaa !154
  %18 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !161
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.World, ptr %22, i64 0, i32 16
  %26 = load float, ptr %25, align 8, !tbaa !162
  %27 = getelementptr inbounds %struct.World, ptr %19, i64 0, i32 16
  store float %26, ptr %27, align 8, !tbaa !162
  %28 = getelementptr inbounds %struct.World, ptr %22, i64 0, i32 17
  %29 = load float, ptr %28, align 4, !tbaa !163
  %30 = getelementptr inbounds %struct.World, ptr %19, i64 0, i32 17
  store float %29, ptr %30, align 4, !tbaa !163
  br label %31

31:                                               ; preds = %24, %14
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 67
  %33 = load i32, ptr %32, align 4, !tbaa !164
  %34 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 67
  store i32 %33, ptr %34, align 4, !tbaa !164
  %35 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 45
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  tail call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %35, ptr noundef nonnull %36) #12
  %37 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %37) #12
  %38 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %37, ptr noundef nonnull %38) #12
  %39 = icmp eq ptr %1, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = icmp slt i32 %42, 40
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 38
  store i32 64, ptr %45, align 4, !tbaa !165
  %46 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 37
  store i32 64, ptr %46, align 8, !tbaa !166
  br label %56

47:                                               ; preds = %40, %31
  %48 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 33
  %49 = load i32, ptr %48, align 4, !tbaa !136
  %50 = sdiv i32 %49, 4
  %51 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 37
  store i32 %50, ptr %51, align 8, !tbaa !166
  %52 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 34
  %53 = load i32, ptr %52, align 8, !tbaa !152
  %54 = sdiv i32 %53, 4
  %55 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 38
  store i32 %54, ptr %55, align 4, !tbaa !165
  br label %56

56:                                               ; preds = %47, %44
  br i1 %39, label %63, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %59 = load i32, ptr %58, align 8, !tbaa !77
  %60 = icmp eq i32 %59, 1
  %61 = icmp ne i32 %2, 20311
  %62 = and i1 %61, %60
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %56
  br label %64

64:                                               ; preds = %57, %63
  %65 = phi i16 [ 0, %63 ], [ 1, %57 ]
  %66 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 53
  store i16 %65, ptr %66, align 8, !tbaa !167
  %67 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !168
  %69 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 5
  store i32 %68, ptr %69, align 8, !tbaa !168
  %70 = icmp eq i32 %2, 17748
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %73 = tail call ptr @RE_engines_find(ptr noundef nonnull %72) #12
  %74 = getelementptr inbounds %struct.RenderEngineType, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !169
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 115
  %80 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !72
  %81 = tail call ptr @BLI_strncpy(ptr noundef nonnull %79, ptr noundef %80, i64 noundef 32) #12
  br label %86

82:                                               ; preds = %71, %64
  %83 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 115
  %84 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %85 = tail call ptr @BLI_strncpy(ptr noundef nonnull %83, ptr noundef nonnull %84, i64 noundef 32) #12
  br label %86

86:                                               ; preds = %82, %78
  %87 = icmp eq i32 %2, 16717
  br i1 %87, label %88, label %291

88:                                               ; preds = %86
  br i1 %39, label %232, label %89

89:                                               ; preds = %88
  %90 = tail call ptr @localize_material(ptr noundef nonnull %1) #12
  %91 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 7
  store ptr %90, ptr %91, align 8, !tbaa !102
  %92 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 17
  tail call void @BLI_addtail(ptr noundef nonnull %92, ptr noundef %90) #12
  %93 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #12
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %191

95:                                               ; preds = %89
  tail call void @init_render_material(ptr noundef %90, i32 noundef 0, ptr noundef null) #12
  tail call void @end_render_material(ptr noundef %90) #12
  %96 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %97 = load i32, ptr %96, align 8, !tbaa !77
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 50
  %101 = load i16, ptr %100, align 2, !tbaa !172
  %102 = and i16 %101, -3
  store i16 %102, ptr %100, align 2, !tbaa !172
  br label %103

103:                                              ; preds = %99, %95
  %104 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 52
  %105 = load i32, ptr %104, align 8, !tbaa !173
  %106 = and i32 %105, 262144
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 47
  %110 = load i32, ptr %109, align 8, !tbaa !155
  %111 = or i32 %110, 65536
  store i32 %111, ptr %109, align 8, !tbaa !155
  br label %112

112:                                              ; preds = %108, %103
  %113 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !119
  %115 = icmp eq i16 %114, 2
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 47
  %118 = load i32, ptr %117, align 8, !tbaa !155
  %119 = or i32 %118, 65536
  store i32 %119, ptr %117, align 8, !tbaa !155
  br label %120

120:                                              ; preds = %116, %112
  %121 = and i32 %105, 196608
  %122 = icmp eq i32 %121, 196608
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 47
  %125 = load i32, ptr %124, align 8, !tbaa !155
  %126 = or i32 %125, 65536
  store i32 %126, ptr %124, align 8, !tbaa !155
  br label %127

127:                                              ; preds = %123, %120
  %128 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef %90, ptr noundef null), !range !174
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 47
  %132 = load i32, ptr %131, align 8, !tbaa !155
  %133 = or i32 %132, 2097152
  store i32 %133, ptr %131, align 8, !tbaa !155
  br label %134

134:                                              ; preds = %130, %127
  %135 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !72
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 53
  br label %143

140:                                              ; preds = %166, %134
  %141 = load ptr, ptr %135, align 8, !tbaa !72
  %142 = icmp eq ptr %141, null
  br i1 %142, label %197, label %169

143:                                              ; preds = %138, %166
  %144 = phi ptr [ %136, %138 ], [ %167, %166 ]
  %145 = getelementptr inbounds %struct.Base, ptr %144, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !175
  %147 = getelementptr inbounds %struct.ID, ptr %146, i64 0, i32 4, i64 2
  %148 = load i8, ptr %147, align 2, !tbaa !46
  %149 = icmp eq i8 %148, 99
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.Object, ptr %146, i64 0, i32 32
  %152 = load i32, ptr %151, align 4, !tbaa !177
  %153 = trunc i32 %152 to i16
  %154 = tail call ptr @give_current_material(ptr noundef %146, i16 noundef signext %153) #12
  %155 = icmp eq ptr %154, null
  br i1 %155, label %166, label %156

156:                                              ; preds = %150
  %157 = load i32, ptr %139, align 4, !tbaa !178
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.Material, ptr %154, i64 0, i32 73
  br i1 %159, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, ptr %160, align 8, !tbaa !179
  %163 = or i32 %162, 1
  br label %164

164:                                              ; preds = %156, %161
  %165 = phi i32 [ %163, %161 ], [ 0, %156 ]
  store i32 %165, ptr %160, align 8, !tbaa !179
  br label %166

166:                                              ; preds = %164, %150, %143
  %167 = load ptr, ptr %144, align 8, !tbaa !72
  %168 = icmp eq ptr %167, null
  br i1 %168, label %140, label %143, !llvm.loop !180

169:                                              ; preds = %140, %188
  %170 = phi ptr [ %189, %188 ], [ %141, %140 ]
  %171 = getelementptr inbounds %struct.Base, ptr %170, i64 0, i32 7
  %172 = load ptr, ptr %171, align 8, !tbaa !175
  %173 = getelementptr inbounds %struct.Object, ptr %172, i64 0, i32 3
  %174 = load i16, ptr %173, align 8, !tbaa !181
  %175 = icmp eq i16 %174, 10
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.ID, ptr %172, i64 0, i32 4, i64 2
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %177, ptr noundef nonnull dereferenceable(9) @.str.10) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load i16, ptr %113, align 8, !tbaa !119
  %182 = icmp eq i16 %181, 2
  %183 = getelementptr inbounds %struct.Object, ptr %172, i64 0, i32 102
  %184 = load i8, ptr %183, align 8, !tbaa !182
  %185 = and i8 %184, -5
  %186 = select i1 %182, i8 4, i8 0
  %187 = or disjoint i8 %185, %186
  store i8 %187, ptr %183, align 8, !tbaa !182
  br label %188

188:                                              ; preds = %180, %169, %176
  %189 = load ptr, ptr %170, align 8, !tbaa !72
  %190 = icmp eq ptr %189, null
  br i1 %190, label %197, label %169, !llvm.loop !183

191:                                              ; preds = %89
  %192 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 76
  %193 = load i8, ptr %192, align 2, !tbaa !184
  %194 = icmp eq i8 %193, 4
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load ptr, ptr %21, align 8, !tbaa !161
  store ptr %196, ptr %20, align 8, !tbaa !161
  br label %197

197:                                              ; preds = %188, %140, %191, %195
  %198 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %199 = load i32, ptr %198, align 8, !tbaa !77
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 2
  %203 = load i16, ptr %202, align 8, !tbaa !119
  %204 = icmp eq i16 %203, 1
  %205 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  br i1 %204, label %206, label %207

206:                                              ; preds = %201
  store i32 1, ptr %205, align 8, !tbaa !185
  br label %236

207:                                              ; preds = %201
  store i32 16, ptr %205, align 8, !tbaa !185
  %208 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #12
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %236, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %21, align 8, !tbaa !161
  store ptr %211, ptr %20, align 8, !tbaa !161
  br label %236

212:                                              ; preds = %197
  %213 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 76
  %214 = load i8, ptr %213, align 2, !tbaa !184
  %215 = zext nneg i8 %214 to i32
  %216 = shl nuw i32 1, %215
  %217 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  store i32 %216, ptr %217, align 8, !tbaa !185
  %218 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 103
  %219 = load ptr, ptr %218, align 8, !tbaa !123
  %220 = icmp ne ptr %219, null
  %221 = icmp eq i32 %199, 2
  %222 = and i1 %221, %220
  br i1 %222, label %223, label %236

223:                                              ; preds = %212
  %224 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %225 = load i32, ptr %224, align 8, !tbaa !66
  %226 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %227 = load i32, ptr %226, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef nonnull %219, i32 noundef %225, i32 noundef %227, i32 noundef 1) #12
  %228 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %229 = load ptr, ptr %228, align 8, !tbaa !123
  %230 = load i32, ptr %224, align 8, !tbaa !66
  %231 = load i32, ptr %226, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %229, i32 noundef %230, i32 noundef %231, i32 noundef 1) #12
  br label %236

232:                                              ; preds = %88
  %233 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 47
  %234 = load i32, ptr %233, align 8, !tbaa !155
  %235 = and i32 %234, -2162690
  store i32 %235, ptr %233, align 8, !tbaa !155
  br label %236

236:                                              ; preds = %207, %210, %206, %223, %212, %232
  %237 = phi ptr [ %90, %206 ], [ %90, %210 ], [ %90, %207 ], [ %90, %223 ], [ %90, %212 ], [ null, %232 ]
  %238 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !72
  %240 = icmp eq ptr %239, null
  br i1 %240, label %471, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 11
  %243 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 11, i64 1
  %244 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 11, i64 2
  %245 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 11, i64 3
  br label %246

246:                                              ; preds = %241, %288
  %247 = phi ptr [ %239, %241 ], [ %289, %288 ]
  %248 = getelementptr inbounds %struct.Base, ptr %247, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !175
  %250 = getelementptr inbounds %struct.ID, ptr %249, i64 0, i32 4, i64 2
  %251 = load i8, ptr %250, align 2, !tbaa !46
  %252 = icmp eq i8 %251, 112
  br i1 %252, label %253, label %288

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 98
  %255 = load float, ptr %242, align 4, !tbaa !86
  store float %255, ptr %254, align 4, !tbaa !86
  %256 = load float, ptr %243, align 4, !tbaa !86
  %257 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 98, i64 1
  store float %256, ptr %257, align 4, !tbaa !86
  %258 = load float, ptr %244, align 4, !tbaa !86
  %259 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 98, i64 2
  store float %258, ptr %259, align 4, !tbaa !86
  %260 = load float, ptr %245, align 4, !tbaa !86
  %261 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 98, i64 3
  store float %260, ptr %261, align 4, !tbaa !86
  %262 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 3
  %263 = load i16, ptr %262, align 8, !tbaa !181
  %264 = add i16 %263, -1
  %265 = icmp ult i16 %264, 5
  br i1 %265, label %266, label %282

266:                                              ; preds = %253
  %267 = tail call ptr @give_matarar(ptr noundef %249) #12
  %268 = load ptr, ptr %248, align 8, !tbaa !175
  %269 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 32
  %270 = load i32, ptr %269, align 4, !tbaa !177
  %271 = tail call i32 @llvm.smax.i32(i32 %270, i32 1)
  %272 = icmp eq ptr %267, null
  br i1 %272, label %288, label %273

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 31
  %275 = load i32, ptr %274, align 8, !tbaa !82
  %276 = icmp sgt i32 %271, %275
  br i1 %276, label %288, label %277

277:                                              ; preds = %273
  %278 = load ptr, ptr %267, align 8, !tbaa !72
  %279 = zext nneg i32 %271 to i64
  %280 = getelementptr ptr, ptr %278, i64 %279
  %281 = getelementptr ptr, ptr %280, i64 -1
  store ptr %237, ptr %281, align 8, !tbaa !72
  br label %288

282:                                              ; preds = %253
  %283 = icmp eq i16 %263, 10
  br i1 %283, label %284, label %288

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 102
  %286 = load i8, ptr %285, align 8, !tbaa !182
  %287 = and i8 %286, -5
  store i8 %287, ptr %285, align 8, !tbaa !182
  br label %288

288:                                              ; preds = %266, %273, %277, %246, %282, %284
  %289 = load ptr, ptr %247, align 8, !tbaa !72
  %290 = icmp eq ptr %289, null
  br i1 %290, label %471, label %246, !llvm.loop !186

291:                                              ; preds = %86
  br i1 %70, label %292, label %375

292:                                              ; preds = %291
  br i1 %39, label %297, label %293

293:                                              ; preds = %292
  %294 = tail call ptr @localize_texture(ptr noundef nonnull %1) #12
  %295 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 8
  store ptr %294, ptr %295, align 8, !tbaa !103
  %296 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %296, ptr noundef %294) #12
  br label %297

297:                                              ; preds = %293, %292
  %298 = phi ptr [ %294, %293 ], [ null, %292 ]
  %299 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  store i32 32, ptr %299, align 8, !tbaa !185
  %300 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %301 = load ptr, ptr %300, align 8, !tbaa !72
  %302 = icmp eq ptr %301, null
  br i1 %302, label %358, label %303

303:                                              ; preds = %297
  %304 = icmp eq ptr %298, null
  %305 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 6
  %306 = getelementptr inbounds %struct.Tex, ptr %298, i64 0, i32 31
  %307 = getelementptr inbounds %struct.Tex, ptr %298, i64 0, i32 32
  %308 = getelementptr inbounds %struct.Tex, ptr %298, i64 0, i32 30
  br label %309

309:                                              ; preds = %303, %355
  %310 = phi ptr [ %301, %303 ], [ %356, %355 ]
  %311 = getelementptr inbounds %struct.Base, ptr %310, i64 0, i32 7
  %312 = load ptr, ptr %311, align 8, !tbaa !175
  %313 = getelementptr inbounds %struct.ID, ptr %312, i64 0, i32 4, i64 2
  %314 = load i8, ptr %313, align 2, !tbaa !46
  %315 = icmp eq i8 %314, 116
  br i1 %315, label %316, label %355

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.Object, ptr %312, i64 0, i32 32
  %318 = load i32, ptr %317, align 4, !tbaa !177
  %319 = trunc i32 %318 to i16
  %320 = tail call ptr @give_current_material(ptr noundef %312, i16 noundef signext %319) #12
  %321 = icmp eq ptr %320, null
  br i1 %321, label %355, label %322

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.Material, ptr %320, i64 0, i32 102
  %324 = load ptr, ptr %323, align 8, !tbaa !72
  %325 = icmp eq ptr %324, null
  br i1 %325, label %355, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.MTex, ptr %324, i64 0, i32 5
  store ptr %298, ptr %327, align 8, !tbaa !187
  br i1 %304, label %336, label %328

328:                                              ; preds = %326
  %329 = load ptr, ptr %305, align 8, !tbaa !80
  %330 = icmp eq ptr %329, null
  br i1 %330, label %336, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.MTex, ptr %329, i64 0, i32 19
  %333 = load i16, ptr %332, align 2, !tbaa !188
  %334 = load ptr, ptr %323, align 8, !tbaa !72
  %335 = getelementptr inbounds %struct.MTex, ptr %334, i64 0, i32 19
  store i16 %333, ptr %335, align 2, !tbaa !188
  br label %336

336:                                              ; preds = %331, %328, %326
  %337 = load ptr, ptr %323, align 8, !tbaa !72
  %338 = getelementptr inbounds %struct.MTex, ptr %337, i64 0, i32 1
  %339 = load i16, ptr %338, align 2, !tbaa !189
  %340 = and i16 %339, -129
  store i16 %340, ptr %338, align 2, !tbaa !189
  %341 = getelementptr inbounds %struct.Material, ptr %320, i64 0, i32 21
  store float 1.000000e+00, ptr %341, align 8, !tbaa !190
  br i1 %304, label %353, label %342

342:                                              ; preds = %336
  %343 = load i16, ptr %306, align 2, !tbaa !191
  %344 = and i16 %343, 32
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %355, label %346

346:                                              ; preds = %342
  %347 = load i16, ptr %307, align 8, !tbaa !192
  %348 = icmp eq i16 %347, 8
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load i16, ptr %308, align 4, !tbaa !193
  %351 = and i16 %350, 34
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %336, %349, %346
  %354 = or i16 %339, 128
  store i16 %354, ptr %338, align 2, !tbaa !189
  store float 0.000000e+00, ptr %341, align 8, !tbaa !190
  br label %355

355:                                              ; preds = %316, %322, %349, %353, %342, %309
  %356 = load ptr, ptr %310, align 8, !tbaa !72
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %309, !llvm.loop !194

358:                                              ; preds = %355, %297
  %359 = icmp eq ptr %298, null
  br i1 %359, label %471, label %360

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.Tex, ptr %298, i64 0, i32 52
  %362 = load ptr, ptr %361, align 8, !tbaa !124
  %363 = icmp eq ptr %362, null
  br i1 %363, label %471, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %366 = load i32, ptr %365, align 8, !tbaa !77
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %471

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  %370 = load ptr, ptr %369, align 8, !tbaa !124
  %371 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %372 = load i32, ptr %371, align 8, !tbaa !66
  %373 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %374 = load i32, ptr %373, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %370, i32 noundef %372, i32 noundef %374, i32 noundef 1) #12
  br label %464

375:                                              ; preds = %291
  switch i32 %2, label %471 [
    i32 16716, label %376
    i32 20311, label %442
  ]

376:                                              ; preds = %375
  br i1 %39, label %381, label %377

377:                                              ; preds = %376
  %378 = tail call ptr @localize_lamp(ptr noundef nonnull %1) #12
  %379 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 9
  store ptr %378, ptr %379, align 8, !tbaa !105
  %380 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 21
  tail call void @BLI_addtail(ptr noundef nonnull %380, ptr noundef %378) #12
  br label %381

381:                                              ; preds = %377, %376
  %382 = phi ptr [ %378, %377 ], [ null, %376 ]
  %383 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  store i32 64, ptr %383, align 8, !tbaa !185
  %384 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #12
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %405

386:                                              ; preds = %381
  %387 = icmp eq ptr %382, null
  br i1 %387, label %399, label %388

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct.Lamp, ptr %382, i64 0, i32 2
  %390 = load i16, ptr %389, align 8, !tbaa !195
  %391 = icmp eq i16 %390, 1
  br i1 %391, label %392, label %399

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.Lamp, ptr %382, i64 0, i32 51
  %394 = load i16, ptr %393, align 4, !tbaa !196
  %395 = and i16 %394, 1
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %392
  store i32 2048, ptr %383, align 8, !tbaa !185
  %398 = load ptr, ptr %21, align 8, !tbaa !161
  br label %399

399:                                              ; preds = %386, %388, %392, %397
  %400 = phi ptr [ %398, %397 ], [ null, %392 ], [ null, %388 ], [ null, %386 ]
  %401 = phi ptr [ @.str.11, %397 ], [ @.str.12, %392 ], [ @.str.12, %388 ], [ @.str.12, %386 ]
  store ptr %400, ptr %20, align 8, !tbaa !161
  %402 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 13
  %403 = tail call ptr @BLI_findstring(ptr noundef nonnull %402, ptr noundef nonnull %401, i32 noundef 34) #12
  %404 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 2
  store ptr %403, ptr %404, align 8, !tbaa !156
  br label %405

405:                                              ; preds = %399, %381
  %406 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %407 = load ptr, ptr %406, align 8, !tbaa !72
  %408 = icmp eq ptr %407, null
  br i1 %408, label %425, label %409

409:                                              ; preds = %405, %422
  %410 = phi ptr [ %423, %422 ], [ %407, %405 ]
  %411 = getelementptr inbounds %struct.Base, ptr %410, i64 0, i32 7
  %412 = load ptr, ptr %411, align 8, !tbaa !175
  %413 = getelementptr inbounds %struct.ID, ptr %412, i64 0, i32 4, i64 2
  %414 = load i8, ptr %413, align 2, !tbaa !46
  %415 = icmp eq i8 %414, 112
  br i1 %415, label %416, label %422

416:                                              ; preds = %409
  %417 = getelementptr inbounds %struct.Object, ptr %412, i64 0, i32 3
  %418 = load i16, ptr %417, align 8, !tbaa !181
  %419 = icmp eq i16 %418, 10
  br i1 %419, label %420, label %422

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.Object, ptr %412, i64 0, i32 19
  store ptr %382, ptr %421, align 8, !tbaa !157
  br label %422

422:                                              ; preds = %409, %420, %416
  %423 = load ptr, ptr %410, align 8, !tbaa !72
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %409, !llvm.loop !197

425:                                              ; preds = %422, %405
  %426 = icmp eq ptr %382, null
  br i1 %426, label %471, label %427

427:                                              ; preds = %425
  %428 = getelementptr inbounds %struct.Lamp, ptr %382, i64 0, i32 74
  %429 = load ptr, ptr %428, align 8, !tbaa !128
  %430 = icmp eq ptr %429, null
  br i1 %430, label %471, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %433 = load i32, ptr %432, align 8, !tbaa !77
  %434 = icmp eq i32 %433, 2
  br i1 %434, label %435, label %471

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  %437 = load ptr, ptr %436, align 8, !tbaa !128
  %438 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %439 = load i32, ptr %438, align 8, !tbaa !66
  %440 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %441 = load i32, ptr %440, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %437, i32 noundef %439, i32 noundef %441, i32 noundef 1) #12
  br label %464

442:                                              ; preds = %375
  br i1 %39, label %446, label %443

443:                                              ; preds = %442
  %444 = tail call ptr @localize_world(ptr noundef nonnull %1) #12
  %445 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 10
  store ptr %444, ptr %445, align 8, !tbaa !104
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %444) #12
  br label %446

446:                                              ; preds = %443, %442
  %447 = phi ptr [ %444, %443 ], [ null, %442 ]
  %448 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  store i32 128, ptr %448, align 8, !tbaa !185
  store ptr %447, ptr %20, align 8, !tbaa !161
  %449 = icmp eq ptr %447, null
  br i1 %449, label %471, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.World, ptr %447, i64 0, i32 75
  %452 = load ptr, ptr %451, align 8, !tbaa !126
  %453 = icmp eq ptr %452, null
  br i1 %453, label %471, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 15
  %456 = load i32, ptr %455, align 8, !tbaa !77
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %458, label %471

458:                                              ; preds = %454
  %459 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 12
  %460 = load i32, ptr %459, align 8, !tbaa !66
  %461 = getelementptr inbounds %struct.ShaderPreview, ptr %3, i64 0, i32 13
  %462 = load i32, ptr %461, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef nonnull %452, i32 noundef %460, i32 noundef %462, i32 noundef 1) #12
  %463 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 75
  br label %464

464:                                              ; preds = %458, %435, %368
  %465 = phi ptr [ %361, %368 ], [ %428, %435 ], [ %463, %458 ]
  %466 = phi ptr [ %371, %368 ], [ %438, %435 ], [ %459, %458 ]
  %467 = phi ptr [ %373, %368 ], [ %440, %435 ], [ %461, %458 ]
  %468 = load ptr, ptr %465, align 8, !tbaa !72
  %469 = load i32, ptr %466, align 8, !tbaa !66
  %470 = load i32, ptr %467, align 4, !tbaa !68
  tail call void @BKE_node_preview_init_tree(ptr noundef %468, i32 noundef %469, i32 noundef %470, i32 noundef 1) #12
  br label %471

471:                                              ; preds = %288, %464, %236, %11, %364, %360, %358, %431, %427, %425, %375, %454, %450, %446
  %472 = phi ptr [ %12, %446 ], [ %12, %450 ], [ %12, %454 ], [ %12, %375 ], [ %12, %425 ], [ %12, %427 ], [ %12, %431 ], [ %12, %358 ], [ %12, %360 ], [ %12, %364 ], [ null, %11 ], [ %12, %236 ], [ %12, %464 ], [ %12, %288 ]
  ret ptr %472
}

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare void @RE_display_update_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @shader_preview_update(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #7 {
  %4 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  store i16 1, ptr %5, align 2, !tbaa !74
  ret void
}

declare void @RE_test_break_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @shader_preview_break(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ShaderPreview, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = load i16, ptr %3, align 2, !tbaa !74
  %5 = sext i16 %4 to i32
  ret i32 %5
}

declare void @RE_PreviewRender(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_ResultGet32(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @localize_material(ptr noundef) local_unnamed_addr #2

declare void @init_render_material(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @end_render_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @preview_mat_has_sss(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 123
  %6 = load i16, ptr %5, align 4, !tbaa !198
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef null, ptr noundef nonnull %11), !range !174
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %50

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18, %45
  %23 = phi i1 [ %47, %45 ], [ %21, %18 ]
  %24 = phi ptr [ %46, %45 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !199
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !201
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @preview_mat_has_sss(ptr noundef null, ptr noundef nonnull %30), !range !174
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %48

35:                                               ; preds = %28, %22
  %36 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !201
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  switch i16 %26, label %45 [
    i16 100, label %40
    i16 118, label %40
  ]

40:                                               ; preds = %39, %39
  %41 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 123
  %42 = load i16, ptr %41, align 4, !tbaa !198
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %32, %40, %35
  %46 = load ptr, ptr %24, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %22, !llvm.loop !202

48:                                               ; preds = %40, %32
  br i1 %23, label %49, label %50

49:                                               ; preds = %45, %18, %48, %16, %9, %13
  br label %50

50:                                               ; preds = %48, %13, %4, %49
  %51 = phi i32 [ 0, %49 ], [ 1, %48 ], [ 1, %4 ], [ 1, %13 ]
  ret i32 %51
}

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare void @BKE_node_preview_init_tree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

declare ptr @localize_texture(ptr noundef) local_unnamed_addr #2

declare ptr @localize_lamp(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @localize_world(ptr noundef) local_unnamed_addr #2

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

declare void @ntreeLocalSync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!54 = !{!53, !41, i64 4}
!55 = !{!53, !41, i64 0}
!56 = !{!53, !41, i64 12}
!57 = !{!53, !41, i64 8}
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
!69 = !{!70, !37, i64 40}
!70 = !{!"RenderResult", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !37, i64 32, !37, i64 40, !37, i64 48, !53, i64 56, !41, i64 72, !41, i64 76, !49, i64 80, !53, i64 96, !37, i64 112, !41, i64 120, !41, i64 124, !41, i64 128, !37, i64 136}
!71 = !{!70, !41, i64 16}
!72 = !{!37, !37, i64 0}
!73 = !{!70, !41, i64 20}
!74 = !{!40, !40, i64 0}
!75 = !{!67, !37, i64 24}
!76 = !{!67, !37, i64 0}
!77 = !{!67, !41, i64 120}
!78 = !{!67, !37, i64 32}
!79 = !{!67, !37, i64 40}
!80 = !{!67, !37, i64 48}
!81 = !{!67, !37, i64 128}
!82 = !{!83, !41, i64 456}
!83 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !84, i64 312, !37, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !85, i64 1304, !85, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !49, i64 1400, !37, i64 1416}
!84 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!85 = !{!"long", !38, i64 0}
!86 = !{!43, !43, i64 0}
!87 = !{!88, !37, i64 0}
!88 = !{!"IconPreview", !37, i64 0, !37, i64 8, !37, i64 16, !49, i64 24}
!89 = !{!88, !37, i64 8}
!90 = !{!88, !37, i64 16}
!91 = !{!92, !41, i64 16}
!92 = !{!"IconPreviewSize", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !37, i64 24}
!93 = !{!92, !41, i64 20}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!92, !37, i64 24}
!98 = !{!88, !37, i64 24}
!99 = !{!67, !37, i64 112}
!100 = !{!92, !37, i64 0}
!101 = distinct !{!101, !95, !96}
!102 = !{!67, !37, i64 56}
!103 = !{!67, !37, i64 64}
!104 = !{!67, !37, i64 80}
!105 = !{!67, !37, i64 72}
!106 = !{!107, !40, i64 1244}
!107 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !43, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !43, i64 1336, !43, i64 1340, !108, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!108 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!109 = !{!110, !41, i64 8}
!110 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!111 = !{!110, !38, i64 26}
!112 = !{!110, !37, i64 0}
!113 = !{!114, !37, i64 40}
!114 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !53, i64 2436, !115, i64 2456}
!115 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!116 = !{!67, !37, i64 8}
!117 = !{!67, !37, i64 16}
!118 = distinct !{!118, !95, !96}
!119 = !{!120, !40, i64 128}
!120 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !121, i64 224, !122, i64 312, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !43, i64 348, !43, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !43, i64 364, !43, i64 368, !40, i64 372, !40, i64 374, !43, i64 376, !43, i64 380, !43, i64 384, !43, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !43, i64 456, !38, i64 460, !43, i64 524, !43, i64 528, !43, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !43, i64 556, !43, i64 560, !38, i64 564, !43, i64 580, !43, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !43, i64 616, !43, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !43, i64 800, !43, i64 804, !43, i64 808, !43, i64 812, !43, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !43, i64 848, !43, i64 852, !43, i64 856, !43, i64 860, !43, i64 864, !43, i64 868, !43, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !49, i64 928}
!121 = !{!"VolumeSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !43, i64 52, !43, i64 56, !43, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84}
!122 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!123 = !{!120, !37, i64 768}
!124 = !{!125, !37, i64 336}
!125 = !{!"Tex", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !110, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!126 = !{!127, !37, i64 520}
!127 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!128 = !{!129, !37, i64 512}
!129 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!130 = !{!114, !37, i64 48}
!131 = !{!114, !41, i64 16}
!132 = !{!114, !41, i64 20}
!133 = distinct !{!133, !95, !96}
!134 = !{!135, !37, i64 1088}
!135 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !85, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!136 = !{!137, !41, i64 764}
!137 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !49, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !138, i64 280, !145, i64 4264, !49, i64 4296, !49, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !49, i64 4384, !146, i64 4400, !147, i64 4416, !150, i64 4600, !37, i64 4608, !151, i64 4616, !37, i64 4640, !85, i64 4648, !85, i64 4656, !140, i64 4664, !141, i64 4824, !108, i64 4888, !37, i64 4952}
!138 = !{!"RenderData", !139, i64 0, !37, i64 248, !37, i64 256, !142, i64 264, !143, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !53, i64 576, !49, i64 592, !40, i64 608, !40, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !41, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !43, i64 660, !43, i64 664, !40, i64 668, !40, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !43, i64 2528, !43, i64 2532, !40, i64 2536, !40, i64 2538, !43, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !41, i64 2576, !43, i64 2580, !38, i64 2584, !144, i64 2616, !41, i64 3976, !41, i64 3980}
!139 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !140, i64 24, !141, i64 184}
!140 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!141 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!142 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!143 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !43, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!144 = !{!"BakeData", !139, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!145 = !{!"AudioData", !41, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !43, i64 24, !43, i64 28}
!146 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!147 = !{!"GameData", !146, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !148, i64 40, !40, i64 64, !40, i64 66, !43, i64 68, !149, i64 72, !43, i64 128, !43, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!148 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!149 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !41, i64 40, !43, i64 44, !43, i64 48, !40, i64 52, !40, i64 54}
!150 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!151 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!152 = !{!137, !41, i64 768}
!153 = !{!137, !40, i64 758}
!154 = !{!137, !41, i64 796}
!155 = !{!137, !41, i64 800}
!156 = !{!137, !37, i64 128}
!157 = !{!83, !37, i64 296}
!158 = !{!159, !43, i64 144}
!159 = !{!"Camera", !36, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!160 = !{!135, !37, i64 1312}
!161 = !{!137, !37, i64 136}
!162 = !{!127, !43, i64 176}
!163 = !{!127, !43, i64 180}
!164 = !{!137, !41, i64 908}
!165 = !{!137, !41, i64 780}
!166 = !{!137, !41, i64 776}
!167 = !{!137, !40, i64 816}
!168 = !{!137, !41, i64 680}
!169 = !{!170, !41, i64 144}
!170 = !{!"RenderEngineType", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !41, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !171, i64 200}
!171 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!172 = !{!120, !40, i64 394}
!173 = !{!120, !41, i64 400}
!174 = !{i32 0, i32 2}
!175 = !{!176, !37, i64 32}
!176 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!177 = !{!83, !41, i64 460}
!178 = !{!120, !41, i64 404}
!179 = !{!120, !41, i64 536}
!180 = distinct !{!180, !95, !96}
!181 = !{!83, !40, i64 136}
!182 = !{!83, !38, i64 1160}
!183 = distinct !{!183, !95, !96}
!184 = !{!120, !38, i64 542}
!185 = !{!137, !41, i64 232}
!186 = distinct !{!186, !95, !96}
!187 = !{!44, !37, i64 16}
!188 = !{!44, !40, i64 130}
!189 = !{!44, !40, i64 2}
!190 = !{!120, !43, i64 200}
!191 = !{!125, !40, i64 230}
!192 = !{!125, !40, i64 232}
!193 = !{!125, !40, i64 228}
!194 = distinct !{!194, !95, !96}
!195 = !{!129, !40, i64 128}
!196 = !{!129, !40, i64 284}
!197 = distinct !{!197, !95, !96}
!198 = !{!120, !40, i64 876}
!199 = !{!200, !40, i64 172}
!200 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !49, i64 200, !49, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !49, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !43, i64 380, !43, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !64, i64 400, !64, i64 416, !64, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!201 = !{!200, !37, i64 240}
!202 = distinct !{!202, !95, !96}
