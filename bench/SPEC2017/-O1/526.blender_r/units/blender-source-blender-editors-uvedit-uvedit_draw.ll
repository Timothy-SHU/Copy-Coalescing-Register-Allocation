; ModuleID = 'blender/source/blender/editors/uvedit/uvedit_draw.c'
source_filename = "blender/source/blender/editors/uvedit/uvedit_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.vec2f = type { float, float }
%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }
%struct.vec3f = type { float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@stipple_quarttone = external constant [128 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_scale_get_inverse(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #7
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !45
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fmul float %10, 2.560000e+02
  %12 = load float, ptr %3, align 4, !tbaa !46
  %13 = fmul float %12, %11
  store float %13, ptr %3, align 4, !tbaa !46
  %14 = load float, ptr %5, align 4, !tbaa !46
  %15 = fmul float %14, %11
  store float %15, ptr %5, align 4, !tbaa !46
  call void @cpack(i32 noundef 16777215) #7
  %16 = load float, ptr %1, align 4, !tbaa !46
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !46
  call void @glTranslatef(float noundef %16, float noundef %18, float noundef 0.000000e+00) #7
  %19 = fmul float %13, 0xBFA99999A0000000
  %20 = fmul float %15, 0x3FA99999A0000000
  call void @fdrawline(float noundef %19, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %20) #7
  %21 = fmul float %13, 0x3FA99999A0000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %20, float noundef %21, float noundef 0.000000e+00) #7
  %22 = fmul float %15, 0xBFA99999A0000000
  call void @fdrawline(float noundef %21, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %22) #7
  call void @fdrawline(float noundef 0.000000e+00, float noundef %22, float noundef %19, float noundef 0.000000e+00) #7
  call void @setlinestyle(i32 noundef 4) #7
  call void @cpack(i32 noundef 255) #7
  call void @fdrawline(float noundef %19, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %20) #7
  call void @fdrawline(float noundef 0.000000e+00, float noundef %20, float noundef %21, float noundef 0.000000e+00) #7
  call void @fdrawline(float noundef %21, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %22) #7
  call void @fdrawline(float noundef 0.000000e+00, float noundef %22, float noundef %19, float noundef 0.000000e+00) #7
  call void @setlinestyle(i32 noundef 0) #7
  call void @cpack(i32 noundef 0) #7
  %23 = fmul float %13, 0xBF947AE140000000
  %24 = fmul float %13, 0xBFB99999A0000000
  call void @fdrawline(float noundef %23, float noundef 0.000000e+00, float noundef %24, float noundef 0.000000e+00) #7
  %25 = fmul float %13, 0x3FB99999A0000000
  %26 = fmul float %13, 0x3F947AE140000000
  call void @fdrawline(float noundef %25, float noundef 0.000000e+00, float noundef %26, float noundef 0.000000e+00) #7
  %27 = fmul float %15, 0xBF947AE140000000
  %28 = fmul float %15, 0xBFB99999A0000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %27, float noundef 0.000000e+00, float noundef %28) #7
  %29 = fmul float %15, 0x3FB99999A0000000
  %30 = fmul float %15, 0x3F947AE140000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %29, float noundef 0.000000e+00, float noundef %30) #7
  call void @setlinestyle(i32 noundef 1) #7
  call void @cpack(i32 noundef 16777215) #7
  call void @fdrawline(float noundef %23, float noundef 0.000000e+00, float noundef %24, float noundef 0.000000e+00) #7
  call void @fdrawline(float noundef %25, float noundef 0.000000e+00, float noundef %26, float noundef 0.000000e+00) #7
  call void @fdrawline(float noundef 0.000000e+00, float noundef %27, float noundef 0.000000e+00, float noundef %28) #7
  call void @fdrawline(float noundef 0.000000e+00, float noundef %29, float noundef 0.000000e+00, float noundef %30) #7
  %31 = load float, ptr %1, align 4, !tbaa !46
  %32 = fneg float %31
  %33 = load float, ptr %17, align 4, !tbaa !46
  %34 = fneg float %33
  call void @glTranslatef(float noundef %32, float noundef %34, float noundef 0.000000e+00) #7
  call void @setlinestyle(i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @UI_view2d_scale_get_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cpack(i32 noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_uvedit_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [32 x %struct.vec2f], align 16
  %18 = alloca %struct.BLI_Buffer, align 8
  %19 = alloca [32 x %struct.vec2f], align 16
  %20 = alloca %struct.BLI_Buffer, align 8
  %21 = alloca [32 x float], align 16
  %22 = alloca %struct.BLI_Buffer, align 8
  %23 = alloca [32 x float], align 16
  %24 = alloca %struct.BLI_Buffer, align 8
  %25 = alloca [32 x %struct.vec3f], align 16
  %26 = alloca %struct.BLI_Buffer, align 8
  %27 = alloca [32 x %struct.vec2f], align 16
  %28 = alloca %struct.BLI_Buffer, align 8
  %29 = alloca ptr, align 8
  %30 = alloca %struct.BMIter, align 8
  %31 = alloca %struct.BMIter, align 8
  %32 = alloca ptr, align 8
  %33 = alloca [4 x i8], align 1
  %34 = alloca [4 x i8], align 1
  %35 = alloca ptr, align 8
  %36 = alloca [2 x float], align 4
  %37 = alloca %struct.BMIter, align 8
  %38 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %0, ptr noundef %3) #7
  %41 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %0) #7
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !68
  %46 = and i32 %45, 33554432
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %50 = load i8, ptr %49, align 4, !tbaa !74
  %51 = icmp eq i8 %50, 1
  %52 = icmp ne ptr %3, null
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %56 = load i16, ptr %55, align 8, !tbaa !75
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #7
  %60 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %59) #7
  br label %61

61:                                               ; preds = %58, %54, %48
  %62 = phi i8 [ %60, %58 ], [ 0, %54 ], [ 0, %48 ]
  %63 = icmp eq ptr %4, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !75
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %70 = load i32, ptr %69, align 8, !tbaa !78
  %71 = icmp eq i32 %70, 16
  br label %72

72:                                               ; preds = %61, %64, %68, %5, %43
  %73 = phi i8 [ 0, %43 ], [ 0, %5 ], [ %62, %68 ], [ %62, %64 ], [ %62, %61 ]
  %74 = phi i1 [ false, %43 ], [ false, %5 ], [ %71, %68 ], [ false, %64 ], [ false, %61 ]
  %75 = icmp ne i8 %40, 0
  %76 = icmp ne i8 %73, 0
  %77 = select i1 %75, i1 true, i1 %76
  %78 = select i1 %77, i1 true, i1 %74
  br i1 %78, label %79, label %1258

79:                                               ; preds = %72
  %80 = icmp eq i8 %73, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %79
  %82 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #7
  %83 = load ptr, ptr %82, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %37) #7
  %84 = getelementptr inbounds %struct.BMesh, ptr %83, i64 0, i32 26
  %85 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %84, i32 noundef 16) #7
  tail call void @UI_ThemeColor(i32 noundef 158) #7
  %86 = getelementptr inbounds %struct.BMIter, ptr %37, i64 0, i32 4
  store i8 3, ptr %86, align 4, !tbaa !81
  %87 = getelementptr inbounds %struct.BMIter, ptr %37, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %87, align 8, !tbaa !83
  %88 = getelementptr inbounds %struct.BMIter, ptr %37, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %88, align 8, !tbaa !84
  %89 = getelementptr inbounds %struct.BMesh, ptr %83, i64 0, i32 12
  %90 = load ptr, ptr %89, align 8, !tbaa !85
  store ptr %90, ptr %37, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %37) #7
  %91 = load ptr, ptr %88, align 8, !tbaa !84
  %92 = call ptr %91(ptr noundef nonnull %37) #7
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %96 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %97 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %98 = sext i32 %85 to i64
  br label %99

99:                                               ; preds = %94, %111
  %100 = phi ptr [ %92, %94 ], [ %113, %111 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %95, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %96, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %97, align 8, !tbaa !84
  store ptr %100, ptr %11, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #7
  %101 = load ptr, ptr %97, align 8, !tbaa !84
  %102 = call ptr %101(ptr noundef nonnull %11) #7
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %109, %104 ], [ %102, %99 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !89
  %107 = getelementptr inbounds i8, ptr %106, i64 %98
  call void @glVertex2fv(ptr noundef %107) #7
  %108 = load ptr, ptr %97, align 8, !tbaa !84
  %109 = call ptr %108(ptr noundef nonnull %11) #7
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %104, !llvm.loop !92

111:                                              ; preds = %104, %99
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #7
  %112 = load ptr, ptr %88, align 8, !tbaa !84
  %113 = call ptr %112(ptr noundef nonnull %37) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %99, !llvm.loop !95

115:                                              ; preds = %111, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %37) #7
  br label %1251

116:                                              ; preds = %79
  %117 = icmp eq i8 %40, 0
  %118 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %2) #7
  br i1 %117, label %1186, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !96
  %122 = getelementptr inbounds %struct.Mesh, ptr %121, i64 0, i32 20
  %123 = load ptr, ptr %122, align 8, !tbaa !97
  %124 = load ptr, ptr %123, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #7
  %125 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !99
  %127 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 26
  %128 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %127, i32 noundef 16) #7
  %129 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 27
  %130 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %129, i32 noundef 15) #7
  %131 = call ptr @EDBM_mtexpoly_active_get(ptr noundef nonnull %123, ptr noundef nonnull %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %132 = load ptr, ptr %38, align 8, !tbaa !47
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 11
  %134 = load i8, ptr %133, align 2, !tbaa !100
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 8
  %139 = load i16, ptr %138, align 2, !tbaa !107
  %140 = icmp eq i16 %139, 4
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = lshr i16 %139, 2
  %143 = and i16 %142, 1
  %144 = zext nneg i16 %143 to i32
  br label %150

145:                                              ; preds = %119
  %146 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 12
  %147 = load i8, ptr %146, align 1, !tbaa !108
  %148 = icmp eq i8 %147, 4
  %149 = zext i1 %148 to i32
  br label %150

150:                                              ; preds = %145, %141, %137
  %151 = phi i32 [ %149, %145 ], [ 2, %137 ], [ %144, %141 ]
  br i1 %136, label %157, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 8
  %154 = load i16, ptr %153, align 2, !tbaa !107
  %155 = and i16 %154, 1
  %156 = zext nneg i16 %155 to i32
  br label %162

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.ToolSettings, ptr %132, i64 0, i32 12
  %159 = load i8, ptr %158, align 1, !tbaa !108
  %160 = icmp eq i8 %159, 1
  %161 = zext i1 %160 to i32
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi i32 [ %156, %152 ], [ %161, %157 ]
  %164 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !68
  %166 = and i32 %165, 8388608
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #7
  %169 = icmp eq i8 %118, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr %29, align 8, !tbaa !109
  %172 = icmp eq ptr %171, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.BMFace, ptr %171, i64 0, i32 5
  %175 = load i16, ptr %174, align 8, !tbaa !110
  %176 = sext i16 %175 to i32
  %177 = add nsw i32 %176, 1
  %178 = call zeroext i8 @ED_object_get_active_image(ptr noundef %3, i32 noundef %177, ptr noundef nonnull %35, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %186

179:                                              ; preds = %170
  store ptr %126, ptr %35, align 8, !tbaa !109
  br label %186

180:                                              ; preds = %168
  %181 = icmp eq ptr %131, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %131, align 8, !tbaa !112
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi ptr [ %183, %182 ], [ %126, %180 ]
  store ptr %185, ptr %35, align 8, !tbaa !109
  br label %186

186:                                              ; preds = %184, %179, %173
  %187 = load ptr, ptr %35, align 8, !tbaa !109
  call fastcc void @draw_uvs_other(ptr noundef %2, ptr noundef %3, ptr noundef %187, i8 noundef zeroext %118)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #7
  br label %188

188:                                              ; preds = %186, %162
  %189 = load i32, ptr %164, align 4, !tbaa !68
  %190 = and i32 %189, 32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %240, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.BMEditMesh, ptr %123, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !114
  call void @DM_update_materials(ptr noundef %194, ptr noundef %3) #7
  %195 = load ptr, ptr %193, align 8, !tbaa !114
  %196 = icmp eq ptr %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.DerivedMesh, ptr %195, i64 0, i32 83
  %199 = load ptr, ptr %198, align 8, !tbaa !115
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %195, i64 0, i32 3
  %203 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %202, i32 noundef 16) #7
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  call void @UI_ThemeColor(i32 noundef 158) #7
  %206 = load ptr, ptr %198, align 8, !tbaa !115
  call void %206(ptr noundef nonnull %195) #7
  br label %240

207:                                              ; preds = %201, %197, %192
  %208 = load ptr, ptr %122, align 8, !tbaa !97
  %209 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !117
  %210 = or i64 %209, 32
  %211 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %2, ptr noundef %3, ptr noundef %208, ptr noundef nonnull %32, i64 noundef %210) #7
  %212 = load i8, ptr %133, align 2, !tbaa !100
  %213 = and i8 %212, 1
  %214 = icmp ne i8 %213, 0
  %215 = load ptr, ptr %32, align 8
  %216 = icmp eq ptr %211, %215
  %217 = select i1 %214, i1 %216, i1 false
  %218 = icmp eq ptr %215, null
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %230, label %220

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.DerivedMesh, ptr %215, i64 0, i32 83
  %222 = load ptr, ptr %221, align 8, !tbaa !115
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.DerivedMesh, ptr %215, i64 0, i32 3
  %226 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %225, i32 noundef 16) #7
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  call void @UI_ThemeColor(i32 noundef 158) #7
  %229 = load ptr, ptr %221, align 8, !tbaa !115
  call void %229(ptr noundef nonnull %215) #7
  br label %230

230:                                              ; preds = %228, %224, %220, %207
  %231 = load ptr, ptr %32, align 8, !tbaa !109
  %232 = icmp eq ptr %211, %231
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.DerivedMesh, ptr %211, i64 0, i32 95
  %235 = load ptr, ptr %234, align 8, !tbaa !118
  call void %235(ptr noundef %211) #7
  br label %236

236:                                              ; preds = %233, %230
  %237 = load ptr, ptr %32, align 8, !tbaa !109
  %238 = getelementptr inbounds %struct.DerivedMesh, ptr %237, i64 0, i32 95
  %239 = load ptr, ptr %238, align 8, !tbaa !118
  call void %239(ptr noundef %237) #7
  br label %240

240:                                              ; preds = %205, %236, %188
  %241 = load i32, ptr %164, align 4, !tbaa !68
  %242 = and i32 %241, 2097152
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %656, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %123, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #7
  %246 = load ptr, ptr %125, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7
  %247 = getelementptr inbounds %struct.BMesh, ptr %245, i64 0, i32 26
  %248 = call i32 @CustomData_get_offset(ptr noundef nonnull %247, i32 noundef 16) #7
  %249 = getelementptr inbounds %struct.BMesh, ptr %245, i64 0, i32 27
  %250 = call i32 @CustomData_get_offset(ptr noundef nonnull %249, i32 noundef 15) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #7
  store ptr %17, ptr %18, align 8, !tbaa !119
  %251 = getelementptr inbounds %struct.BLI_Buffer, ptr %18, i64 0, i32 1
  store i32 8, ptr %251, align 8, !tbaa !121
  %252 = getelementptr inbounds %struct.BLI_Buffer, ptr %18, i64 0, i32 2
  store i32 0, ptr %252, align 4, !tbaa !122
  %253 = getelementptr inbounds %struct.BLI_Buffer, ptr %18, i64 0, i32 3
  store i32 32, ptr %253, align 8, !tbaa !123
  %254 = getelementptr inbounds %struct.BLI_Buffer, ptr %18, i64 0, i32 4
  store i32 1, ptr %254, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #7
  store ptr %19, ptr %20, align 8, !tbaa !119
  %255 = getelementptr inbounds %struct.BLI_Buffer, ptr %20, i64 0, i32 1
  store i32 8, ptr %255, align 8, !tbaa !121
  %256 = getelementptr inbounds %struct.BLI_Buffer, ptr %20, i64 0, i32 2
  store i32 0, ptr %256, align 4, !tbaa !122
  %257 = getelementptr inbounds %struct.BLI_Buffer, ptr %20, i64 0, i32 3
  store i32 32, ptr %257, align 8, !tbaa !123
  %258 = getelementptr inbounds %struct.BLI_Buffer, ptr %20, i64 0, i32 4
  store i32 1, ptr %258, align 4, !tbaa !124
  call void @ED_space_image_get_uv_aspect(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %259 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 24
  %260 = load i8, ptr %259, align 2, !tbaa !125
  switch i8 %260, label %655 [
    i8 1, label %261
    i8 0, label %444
  ]

261:                                              ; preds = %244
  %262 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 3, ptr %262, align 4, !tbaa !81
  %263 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %263, align 8, !tbaa !83
  %264 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %264, align 8, !tbaa !84
  %265 = getelementptr inbounds %struct.BMesh, ptr %245, i64 0, i32 12
  %266 = load ptr, ptr %265, align 8, !tbaa !85
  store ptr %266, ptr %12, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #7
  %267 = load ptr, ptr %264, align 8, !tbaa !84
  %268 = call ptr %267(ptr noundef nonnull %12) #7
  %269 = icmp eq ptr %268, null
  br i1 %269, label %325, label %270

270:                                              ; preds = %261
  %271 = sext i32 %250 to i64
  %272 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %273 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %274 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %275 = sext i32 %248 to i64
  br label %276

276:                                              ; preds = %270, %306
  %277 = phi ptr [ %268, %270 ], [ %323, %306 ]
  %278 = phi float [ 0.000000e+00, %270 ], [ %311, %306 ]
  %279 = phi float [ 0.000000e+00, %270 ], [ %314, %306 ]
  %280 = getelementptr inbounds %struct.BMFace, ptr %277, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !126
  call void @BLI_buffer_resize(ptr noundef nonnull %18, i32 noundef %281) #7
  %282 = icmp eq i32 %281, 0
  %283 = load ptr, ptr %18, align 8
  %284 = select i1 %282, ptr null, ptr %283
  call void @BLI_buffer_resize(ptr noundef nonnull %20, i32 noundef %281) #7
  %285 = load ptr, ptr %20, align 8
  %286 = select i1 %282, ptr null, ptr %285
  %287 = load ptr, ptr %277, align 8, !tbaa !127
  %288 = getelementptr inbounds i8, ptr %287, i64 %271
  store i8 11, ptr %272, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %273, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %274, align 8, !tbaa !84
  store ptr %277, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %289 = load ptr, ptr %274, align 8, !tbaa !84
  %290 = call ptr %289(ptr noundef nonnull %13) #7
  %291 = icmp eq ptr %290, null
  br i1 %291, label %306, label %292

292:                                              ; preds = %276, %292
  %293 = phi i64 [ %304, %292 ], [ 0, %276 ]
  %294 = phi ptr [ %303, %292 ], [ %290, %276 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !89
  %296 = getelementptr inbounds i8, ptr %295, i64 %275
  %297 = getelementptr inbounds [2 x float], ptr %286, i64 %293
  %298 = load float, ptr %296, align 4, !tbaa !46
  store float %298, ptr %297, align 4, !tbaa !46
  %299 = getelementptr inbounds float, ptr %296, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !46
  %301 = getelementptr inbounds float, ptr %297, i64 1
  store float %300, ptr %301, align 4, !tbaa !46
  %302 = load ptr, ptr %274, align 8, !tbaa !84
  %303 = call ptr %302(ptr noundef nonnull %13) #7
  %304 = add nuw i64 %293, 1
  %305 = icmp eq ptr %303, null
  br i1 %305, label %306, label %292, !llvm.loop !128

306:                                              ; preds = %292, %276
  %307 = load float, ptr %14, align 4, !tbaa !46
  %308 = load float, ptr %15, align 4, !tbaa !46
  %309 = load i32, ptr %280, align 8, !tbaa !126
  call void @uv_poly_copy_aspect(ptr noundef %286, ptr noundef %284, float noundef %307, float noundef %308, i32 noundef %309) #7
  %310 = call float @BM_face_calc_area(ptr noundef nonnull %277) #7
  %311 = fadd float %278, %310
  %312 = load i32, ptr %280, align 8, !tbaa !126
  %313 = call float @area_poly_v2(ptr noundef %284, i32 noundef %312) #7
  %314 = fadd float %279, %313
  %315 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %2, ptr noundef %246, ptr noundef nonnull %277, ptr noundef %288) #7
  %316 = icmp eq i8 %315, 0
  %317 = getelementptr inbounds %struct.BMHeader, ptr %277, i64 0, i32 3
  %318 = load i8, ptr %317, align 1, !tbaa !129
  %319 = and i8 %318, -17
  %320 = select i1 %316, i8 0, i8 16
  %321 = or disjoint i8 %319, %320
  store i8 %321, ptr %317, align 1, !tbaa !129
  %322 = load ptr, ptr %264, align 8, !tbaa !84
  %323 = call ptr %322(ptr noundef nonnull %12) #7
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %276, !llvm.loop !130

325:                                              ; preds = %306, %261
  %326 = phi float [ 0.000000e+00, %261 ], [ %314, %306 ]
  %327 = phi float [ 0.000000e+00, %261 ], [ %311, %306 ]
  %328 = fcmp olt float %327, 0x3E80000000000000
  %329 = fcmp olt float %326, 0x3E80000000000000
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %331, label %365

331:                                              ; preds = %325
  store float 1.000000e+00, ptr %16, align 16, !tbaa !46
  %332 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  store float 0.000000e+00, ptr %332, align 8, !tbaa !46
  %333 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  store float 0.000000e+00, ptr %333, align 4, !tbaa !46
  call void @glColor3fv(ptr noundef nonnull %16) #7
  store i8 3, ptr %262, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %263, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %264, align 8, !tbaa !84
  %334 = load ptr, ptr %265, align 8, !tbaa !85
  store ptr %334, ptr %12, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #7
  %335 = load ptr, ptr %264, align 8, !tbaa !84
  %336 = call ptr %335(ptr noundef nonnull %12) #7
  %337 = icmp eq ptr %336, null
  br i1 %337, label %655, label %338

338:                                              ; preds = %331
  %339 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %340 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %341 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %342 = sext i32 %248 to i64
  br label %343

343:                                              ; preds = %338, %361
  %344 = phi ptr [ %336, %338 ], [ %363, %361 ]
  %345 = getelementptr inbounds %struct.BMHeader, ptr %344, i64 0, i32 3
  %346 = load i8, ptr %345, align 1, !tbaa !129
  %347 = and i8 %346, 16
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %361, label %349

349:                                              ; preds = %343
  call void @glBegin(i32 noundef 9) #7
  store i8 11, ptr %339, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %340, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %341, align 8, !tbaa !84
  store ptr %344, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %350 = load ptr, ptr %341, align 8, !tbaa !84
  %351 = call ptr %350(ptr noundef nonnull %13) #7
  %352 = icmp eq ptr %351, null
  br i1 %352, label %360, label %353

353:                                              ; preds = %349, %353
  %354 = phi ptr [ %358, %353 ], [ %351, %349 ]
  %355 = load ptr, ptr %354, align 8, !tbaa !89
  %356 = getelementptr inbounds i8, ptr %355, i64 %342
  call void @glVertex2fv(ptr noundef %356) #7
  %357 = load ptr, ptr %341, align 8, !tbaa !84
  %358 = call ptr %357(ptr noundef nonnull %13) #7
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %353, !llvm.loop !131

360:                                              ; preds = %353, %349
  call void @glEnd() #7
  br label %361

361:                                              ; preds = %360, %343
  %362 = load ptr, ptr %264, align 8, !tbaa !84
  %363 = call ptr %362(ptr noundef nonnull %12) #7
  %364 = icmp eq ptr %363, null
  br i1 %364, label %655, label %343, !llvm.loop !132

365:                                              ; preds = %325
  store i8 3, ptr %262, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %263, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %264, align 8, !tbaa !84
  %366 = load ptr, ptr %265, align 8, !tbaa !85
  store ptr %366, ptr %12, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #7
  %367 = load ptr, ptr %264, align 8, !tbaa !84
  %368 = call ptr %367(ptr noundef nonnull %12) #7
  %369 = icmp eq ptr %368, null
  br i1 %369, label %655, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %372 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %373 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %374 = sext i32 %248 to i64
  %375 = sext i32 %248 to i64
  br label %376

376:                                              ; preds = %370, %440
  %377 = phi ptr [ %368, %370 ], [ %442, %440 ]
  %378 = getelementptr inbounds %struct.BMHeader, ptr %377, i64 0, i32 3
  %379 = load i8, ptr %378, align 1, !tbaa !129
  %380 = and i8 %379, 16
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %440, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.BMFace, ptr %377, i64 0, i32 3
  %384 = load i32, ptr %383, align 8, !tbaa !126
  call void @BLI_buffer_resize(ptr noundef nonnull %18, i32 noundef %384) #7
  %385 = icmp eq i32 %384, 0
  %386 = load ptr, ptr %18, align 8
  %387 = select i1 %385, ptr null, ptr %386
  call void @BLI_buffer_resize(ptr noundef nonnull %20, i32 noundef %384) #7
  %388 = load ptr, ptr %20, align 8
  %389 = select i1 %385, ptr null, ptr %388
  %390 = call float @BM_face_calc_area(ptr noundef nonnull %377) #7
  %391 = fdiv float %390, %327
  store i8 11, ptr %371, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %372, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %373, align 8, !tbaa !84
  store ptr %377, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %392 = load ptr, ptr %373, align 8, !tbaa !84
  %393 = call ptr %392(ptr noundef nonnull %13) #7
  %394 = icmp eq ptr %393, null
  br i1 %394, label %409, label %395

395:                                              ; preds = %382, %395
  %396 = phi i64 [ %407, %395 ], [ 0, %382 ]
  %397 = phi ptr [ %406, %395 ], [ %393, %382 ]
  %398 = load ptr, ptr %397, align 8, !tbaa !89
  %399 = getelementptr inbounds i8, ptr %398, i64 %374
  %400 = getelementptr inbounds [2 x float], ptr %389, i64 %396
  %401 = load float, ptr %399, align 4, !tbaa !46
  store float %401, ptr %400, align 4, !tbaa !46
  %402 = getelementptr inbounds float, ptr %399, i64 1
  %403 = load float, ptr %402, align 4, !tbaa !46
  %404 = getelementptr inbounds float, ptr %400, i64 1
  store float %403, ptr %404, align 4, !tbaa !46
  %405 = load ptr, ptr %373, align 8, !tbaa !84
  %406 = call ptr %405(ptr noundef nonnull %13) #7
  %407 = add nuw i64 %396, 1
  %408 = icmp eq ptr %406, null
  br i1 %408, label %409, label %395, !llvm.loop !133

409:                                              ; preds = %395, %382
  %410 = load float, ptr %14, align 4, !tbaa !46
  %411 = load float, ptr %15, align 4, !tbaa !46
  %412 = load i32, ptr %383, align 8, !tbaa !126
  call void @uv_poly_copy_aspect(ptr noundef %389, ptr noundef %387, float noundef %410, float noundef %411, i32 noundef %412) #7
  %413 = load i32, ptr %383, align 8, !tbaa !126
  %414 = call float @area_poly_v2(ptr noundef %387, i32 noundef %413) #7
  %415 = fdiv float %414, %326
  %416 = fcmp olt float %391, 0x3E80000000000000
  %417 = fcmp olt float %415, 0x3E80000000000000
  %418 = select i1 %416, i1 true, i1 %417
  br i1 %418, label %427, label %419

419:                                              ; preds = %409
  %420 = fcmp ogt float %391, %415
  br i1 %420, label %421, label %424

421:                                              ; preds = %419
  %422 = fdiv float %415, %391
  %423 = fsub float 1.000000e+00, %422
  br label %427

424:                                              ; preds = %419
  %425 = fdiv float %391, %415
  %426 = fsub float 1.000000e+00, %425
  br label %427

427:                                              ; preds = %424, %421, %409
  %428 = phi float [ %423, %421 ], [ %426, %424 ], [ 1.000000e+00, %409 ]
  call void @weight_to_rgb(ptr noundef nonnull %16, float noundef %428) #7
  call void @glColor3fv(ptr noundef nonnull %16) #7
  call void @glBegin(i32 noundef 9) #7
  store i8 11, ptr %371, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %372, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %373, align 8, !tbaa !84
  store ptr %377, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %429 = load ptr, ptr %373, align 8, !tbaa !84
  %430 = call ptr %429(ptr noundef nonnull %13) #7
  %431 = icmp eq ptr %430, null
  br i1 %431, label %439, label %432

432:                                              ; preds = %427, %432
  %433 = phi ptr [ %437, %432 ], [ %430, %427 ]
  %434 = load ptr, ptr %433, align 8, !tbaa !89
  %435 = getelementptr inbounds i8, ptr %434, i64 %375
  call void @glVertex2fv(ptr noundef %435) #7
  %436 = load ptr, ptr %373, align 8, !tbaa !84
  %437 = call ptr %436(ptr noundef nonnull %13) #7
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %432, !llvm.loop !134

439:                                              ; preds = %432, %427
  call void @glEnd() #7
  br label %440

440:                                              ; preds = %439, %376
  %441 = load ptr, ptr %264, align 8, !tbaa !84
  %442 = call ptr %441(ptr noundef nonnull %12) #7
  %443 = icmp eq ptr %442, null
  br i1 %443, label %655, label %376, !llvm.loop !135

444:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %21) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #7
  store ptr %21, ptr %22, align 8, !tbaa !119
  %445 = getelementptr inbounds %struct.BLI_Buffer, ptr %22, i64 0, i32 1
  store i32 4, ptr %445, align 8, !tbaa !121
  %446 = getelementptr inbounds %struct.BLI_Buffer, ptr %22, i64 0, i32 2
  store i32 0, ptr %446, align 4, !tbaa !122
  %447 = getelementptr inbounds %struct.BLI_Buffer, ptr %22, i64 0, i32 3
  store i32 32, ptr %447, align 8, !tbaa !123
  %448 = getelementptr inbounds %struct.BLI_Buffer, ptr %22, i64 0, i32 4
  store i32 1, ptr %448, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %23) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #7
  store ptr %23, ptr %24, align 8, !tbaa !119
  %449 = getelementptr inbounds %struct.BLI_Buffer, ptr %24, i64 0, i32 1
  store i32 4, ptr %449, align 8, !tbaa !121
  %450 = getelementptr inbounds %struct.BLI_Buffer, ptr %24, i64 0, i32 2
  store i32 0, ptr %450, align 4, !tbaa !122
  %451 = getelementptr inbounds %struct.BLI_Buffer, ptr %24, i64 0, i32 3
  store i32 32, ptr %451, align 8, !tbaa !123
  %452 = getelementptr inbounds %struct.BLI_Buffer, ptr %24, i64 0, i32 4
  store i32 1, ptr %452, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %25) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #7
  store ptr %25, ptr %26, align 8, !tbaa !119
  %453 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 1
  store i32 12, ptr %453, align 8, !tbaa !121
  %454 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 2
  store i32 0, ptr %454, align 4, !tbaa !122
  %455 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 3
  store i32 32, ptr %455, align 8, !tbaa !123
  %456 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 4
  store i32 1, ptr %456, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %27) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #7
  store ptr %27, ptr %28, align 8, !tbaa !119
  %457 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 1
  store i32 8, ptr %457, align 8, !tbaa !121
  %458 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 2
  store i32 0, ptr %458, align 4, !tbaa !122
  %459 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 3
  store i32 32, ptr %459, align 8, !tbaa !123
  %460 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 4
  store i32 1, ptr %460, align 4, !tbaa !124
  %461 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  store float 5.000000e-01, ptr %461, align 4, !tbaa !46
  call void @glShadeModel(i32 noundef 7425) #7
  %462 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 3, ptr %462, align 4, !tbaa !81
  %463 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %463, align 8, !tbaa !83
  %464 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %464, align 8, !tbaa !84
  %465 = getelementptr inbounds %struct.BMesh, ptr %245, i64 0, i32 12
  %466 = load ptr, ptr %465, align 8, !tbaa !85
  store ptr %466, ptr %12, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #7
  %467 = load ptr, ptr %464, align 8, !tbaa !84
  %468 = call ptr %467(ptr noundef nonnull %12) #7
  %469 = icmp eq ptr %468, null
  br i1 %469, label %654, label %470

470:                                              ; preds = %444
  %471 = sext i32 %250 to i64
  %472 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %473 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %474 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %475 = sext i32 %248 to i64
  %476 = sext i32 %248 to i64
  br label %477

477:                                              ; preds = %470, %650
  %478 = phi ptr [ %468, %470 ], [ %652, %650 ]
  %479 = load ptr, ptr %478, align 8, !tbaa !127
  %480 = getelementptr inbounds i8, ptr %479, i64 %471
  %481 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %2, ptr noundef %246, ptr noundef nonnull %478, ptr noundef %480) #7
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %646, label %483

483:                                              ; preds = %477
  %484 = getelementptr inbounds %struct.BMFace, ptr %478, i64 0, i32 3
  %485 = load i32, ptr %484, align 8, !tbaa !126
  call void @BLI_buffer_resize(ptr noundef nonnull %18, i32 noundef %485) #7
  %486 = icmp eq i32 %485, 0
  %487 = load ptr, ptr %18, align 8
  %488 = select i1 %486, ptr null, ptr %487
  call void @BLI_buffer_resize(ptr noundef nonnull %20, i32 noundef %485) #7
  %489 = load ptr, ptr %20, align 8
  %490 = select i1 %486, ptr null, ptr %489
  call void @BLI_buffer_resize(ptr noundef nonnull %22, i32 noundef %485) #7
  %491 = load ptr, ptr %22, align 8
  %492 = select i1 %486, ptr null, ptr %491
  call void @BLI_buffer_resize(ptr noundef nonnull %24, i32 noundef %485) #7
  %493 = load ptr, ptr %24, align 8
  %494 = select i1 %486, ptr null, ptr %493
  call void @BLI_buffer_resize(ptr noundef nonnull %26, i32 noundef %485) #7
  %495 = load ptr, ptr %26, align 8
  %496 = select i1 %486, ptr null, ptr %495
  call void @BLI_buffer_resize(ptr noundef nonnull %28, i32 noundef %485) #7
  %497 = load ptr, ptr %28, align 8
  %498 = select i1 %486, ptr null, ptr %497
  %499 = getelementptr inbounds %struct.BMHeader, ptr %478, i64 0, i32 3
  %500 = load i8, ptr %499, align 1, !tbaa !129
  %501 = or i8 %500, 16
  store i8 %501, ptr %499, align 1, !tbaa !129
  store i8 11, ptr %472, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %473, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %474, align 8, !tbaa !84
  store ptr %478, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %502 = load ptr, ptr %474, align 8, !tbaa !84
  %503 = call ptr %502(ptr noundef nonnull %13) #7
  %504 = icmp eq ptr %503, null
  br i1 %504, label %519, label %505

505:                                              ; preds = %483, %505
  %506 = phi i64 [ %517, %505 ], [ 0, %483 ]
  %507 = phi ptr [ %516, %505 ], [ %503, %483 ]
  %508 = load ptr, ptr %507, align 8, !tbaa !89
  %509 = getelementptr inbounds i8, ptr %508, i64 %475
  %510 = getelementptr inbounds [2 x float], ptr %490, i64 %506
  %511 = load float, ptr %509, align 4, !tbaa !46
  store float %511, ptr %510, align 4, !tbaa !46
  %512 = getelementptr inbounds float, ptr %509, i64 1
  %513 = load float, ptr %512, align 4, !tbaa !46
  %514 = getelementptr inbounds float, ptr %510, i64 1
  store float %513, ptr %514, align 4, !tbaa !46
  %515 = load ptr, ptr %474, align 8, !tbaa !84
  %516 = call ptr %515(ptr noundef nonnull %13) #7
  %517 = add nuw i64 %506, 1
  %518 = icmp eq ptr %516, null
  br i1 %518, label %519, label %505, !llvm.loop !136

519:                                              ; preds = %505, %483
  %520 = load float, ptr %14, align 4, !tbaa !46
  %521 = load float, ptr %15, align 4, !tbaa !46
  call void @uv_poly_copy_aspect(ptr noundef %490, ptr noundef %488, float noundef %520, float noundef %521, i32 noundef %485) #7
  store i8 11, ptr %472, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %473, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %474, align 8, !tbaa !84
  store ptr %478, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %522 = load ptr, ptr %474, align 8, !tbaa !84
  %523 = call ptr %522(ptr noundef nonnull %13) #7
  %524 = icmp eq ptr %523, null
  br i1 %524, label %527, label %525

525:                                              ; preds = %519
  %526 = add nsw i32 %485, -1
  br label %532

527:                                              ; preds = %600, %519
  %528 = icmp sgt i32 %485, 0
  br i1 %528, label %529, label %622

529:                                              ; preds = %527
  %530 = zext nneg i32 %485 to i64
  %531 = zext nneg i32 %485 to i64
  br label %607

532:                                              ; preds = %525, %600
  %533 = phi i64 [ 0, %525 ], [ %604, %600 ]
  %534 = phi i32 [ %526, %525 ], [ %606, %600 ]
  %535 = phi ptr [ %523, %525 ], [ %603, %600 ]
  %536 = getelementptr inbounds [2 x float], ptr %498, i64 %533
  %537 = sext i32 %534 to i64
  %538 = getelementptr inbounds [2 x float], ptr %488, i64 %537
  %539 = getelementptr inbounds [2 x float], ptr %488, i64 %533
  %540 = load float, ptr %538, align 4, !tbaa !46
  %541 = load float, ptr %539, align 4, !tbaa !46
  %542 = fsub float %540, %541
  store float %542, ptr %536, align 4, !tbaa !46
  %543 = getelementptr inbounds float, ptr %538, i64 1
  %544 = load float, ptr %543, align 4, !tbaa !46
  %545 = getelementptr inbounds float, ptr %539, i64 1
  %546 = load float, ptr %545, align 4, !tbaa !46
  %547 = fsub float %544, %546
  %548 = getelementptr inbounds float, ptr %536, i64 1
  store float %547, ptr %548, align 4, !tbaa !46
  %549 = fmul float %547, %547
  %550 = call float @llvm.fmuladd.f32(float %542, float %542, float %549)
  %551 = fcmp ogt float %550, 0x38AA95A5C0000000
  br i1 %551, label %552, label %559

552:                                              ; preds = %532
  %553 = call float @sqrtf(float noundef %550) #7
  %554 = fdiv float 1.000000e+00, %553
  %555 = load float, ptr %536, align 4, !tbaa !46
  %556 = fmul float %555, %554
  store float %556, ptr %536, align 4, !tbaa !46
  %557 = load float, ptr %548, align 4, !tbaa !46
  %558 = fmul float %554, %557
  br label %560

559:                                              ; preds = %532
  store float 0.000000e+00, ptr %536, align 4, !tbaa !46
  br label %560

560:                                              ; preds = %559, %552
  %561 = phi float [ 0.000000e+00, %559 ], [ %558, %552 ]
  store float %561, ptr %548, align 4, !tbaa !46
  %562 = getelementptr inbounds [3 x float], ptr %496, i64 %533
  %563 = getelementptr inbounds %struct.BMLoop, ptr %535, i64 0, i32 7
  %564 = load ptr, ptr %563, align 8, !tbaa !137
  %565 = getelementptr inbounds %struct.BMLoop, ptr %564, i64 0, i32 1
  %566 = load ptr, ptr %565, align 8, !tbaa !138
  %567 = getelementptr inbounds %struct.BMVert, ptr %566, i64 0, i32 2
  %568 = getelementptr inbounds %struct.BMLoop, ptr %535, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !138
  %570 = getelementptr inbounds %struct.BMVert, ptr %569, i64 0, i32 2
  %571 = load float, ptr %567, align 4, !tbaa !46
  %572 = load float, ptr %570, align 4, !tbaa !46
  %573 = fsub float %571, %572
  store float %573, ptr %562, align 4, !tbaa !46
  %574 = getelementptr inbounds %struct.BMVert, ptr %566, i64 0, i32 2, i64 1
  %575 = load float, ptr %574, align 4, !tbaa !46
  %576 = getelementptr inbounds %struct.BMVert, ptr %569, i64 0, i32 2, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !46
  %578 = fsub float %575, %577
  %579 = getelementptr inbounds float, ptr %562, i64 1
  store float %578, ptr %579, align 4, !tbaa !46
  %580 = getelementptr inbounds %struct.BMVert, ptr %566, i64 0, i32 2, i64 2
  %581 = load float, ptr %580, align 4, !tbaa !46
  %582 = getelementptr inbounds %struct.BMVert, ptr %569, i64 0, i32 2, i64 2
  %583 = load float, ptr %582, align 4, !tbaa !46
  %584 = fsub float %581, %583
  %585 = getelementptr inbounds float, ptr %562, i64 2
  store float %584, ptr %585, align 4, !tbaa !46
  %586 = fmul float %578, %578
  %587 = call float @llvm.fmuladd.f32(float %573, float %573, float %586)
  %588 = call float @llvm.fmuladd.f32(float %584, float %584, float %587)
  %589 = fcmp ogt float %588, 0x38AA95A5C0000000
  br i1 %589, label %590, label %599

590:                                              ; preds = %560
  %591 = call float @sqrtf(float noundef %588) #7
  %592 = fdiv float 1.000000e+00, %591
  %593 = load float, ptr %562, align 4, !tbaa !46
  %594 = fmul float %593, %592
  store float %594, ptr %562, align 4, !tbaa !46
  %595 = load float, ptr %579, align 4, !tbaa !46
  %596 = fmul float %592, %595
  store float %596, ptr %579, align 4, !tbaa !46
  %597 = load float, ptr %585, align 4, !tbaa !46
  %598 = fmul float %592, %597
  br label %600

599:                                              ; preds = %560
  store float 0.000000e+00, ptr %562, align 4, !tbaa !46
  store float 0.000000e+00, ptr %579, align 4, !tbaa !46
  br label %600

600:                                              ; preds = %599, %590
  %601 = phi float [ 0.000000e+00, %599 ], [ %598, %590 ]
  store float %601, ptr %585, align 4, !tbaa !46
  %602 = load ptr, ptr %474, align 8, !tbaa !84
  %603 = call ptr %602(ptr noundef nonnull %13) #7
  %604 = add nuw i64 %533, 1
  %605 = icmp eq ptr %603, null
  %606 = trunc i64 %533 to i32
  br i1 %605, label %527, label %532, !llvm.loop !139

607:                                              ; preds = %529, %607
  %608 = phi i64 [ 0, %529 ], [ %610, %607 ]
  %609 = getelementptr inbounds [2 x float], ptr %498, i64 %608
  %610 = add nuw nsw i64 %608, 1
  %611 = icmp eq i64 %610, %530
  %612 = and i64 %610, 4294967295
  %613 = select i1 %611, i64 0, i64 %612
  %614 = getelementptr inbounds [2 x float], ptr %498, i64 %613
  %615 = call float @angle_normalized_v2v2(ptr noundef %609, ptr noundef %614) #7
  %616 = getelementptr inbounds float, ptr %492, i64 %608
  store float %615, ptr %616, align 4, !tbaa !46
  %617 = getelementptr inbounds [3 x float], ptr %496, i64 %608
  %618 = getelementptr inbounds [3 x float], ptr %496, i64 %613
  %619 = call float @angle_normalized_v3v3(ptr noundef %617, ptr noundef %618) #7
  %620 = getelementptr inbounds float, ptr %494, i64 %608
  store float %619, ptr %620, align 4, !tbaa !46
  %621 = icmp eq i64 %610, %531
  br i1 %621, label %622, label %607, !llvm.loop !140

622:                                              ; preds = %607, %527
  call void @glBegin(i32 noundef 9) #7
  store i8 11, ptr %472, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %473, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %474, align 8, !tbaa !84
  store ptr %478, ptr %13, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #7
  %623 = load ptr, ptr %474, align 8, !tbaa !84
  %624 = call ptr %623(ptr noundef nonnull %13) #7
  %625 = icmp eq ptr %624, null
  br i1 %625, label %645, label %626

626:                                              ; preds = %622, %626
  %627 = phi i64 [ %643, %626 ], [ 0, %622 ]
  %628 = phi ptr [ %642, %626 ], [ %624, %622 ]
  %629 = load ptr, ptr %628, align 8, !tbaa !89
  %630 = getelementptr inbounds i8, ptr %629, i64 %476
  %631 = getelementptr inbounds float, ptr %492, i64 %627
  %632 = load float, ptr %631, align 4, !tbaa !46
  %633 = getelementptr inbounds float, ptr %494, i64 %627
  %634 = load float, ptr %633, align 4, !tbaa !46
  %635 = fsub float %632, %634
  %636 = call float @llvm.fabs.f32(float %635)
  %637 = fdiv float %636, 0x400921FB60000000
  %638 = fsub float 1.000000e+00, %637
  %639 = fmul float %638, %638
  %640 = fsub float 1.000000e+00, %639
  call void @weight_to_rgb(ptr noundef nonnull %16, float noundef %640) #7
  call void @glColor3fv(ptr noundef nonnull %16) #7
  call void @glVertex2fv(ptr noundef %630) #7
  %641 = load ptr, ptr %474, align 8, !tbaa !84
  %642 = call ptr %641(ptr noundef nonnull %13) #7
  %643 = add nuw i64 %627, 1
  %644 = icmp eq ptr %642, null
  br i1 %644, label %645, label %626, !llvm.loop !141

645:                                              ; preds = %626, %622
  call void @glEnd() #7
  br label %650

646:                                              ; preds = %477
  %647 = getelementptr inbounds %struct.BMHeader, ptr %478, i64 0, i32 3
  %648 = load i8, ptr %647, align 1, !tbaa !129
  %649 = and i8 %648, -17
  store i8 %649, ptr %647, align 1, !tbaa !129
  br label %650

650:                                              ; preds = %646, %645
  %651 = load ptr, ptr %464, align 8, !tbaa !84
  %652 = call ptr %651(ptr noundef nonnull %12) #7
  %653 = icmp eq ptr %652, null
  br i1 %653, label %654, label %477, !llvm.loop !142

654:                                              ; preds = %650, %444
  call void @_bli_buffer_free(ptr noundef nonnull %22) #7
  call void @_bli_buffer_free(ptr noundef nonnull %24) #7
  call void @_bli_buffer_free(ptr noundef nonnull %26) #7
  call void @_bli_buffer_free(ptr noundef nonnull %28) #7
  call void @glShadeModel(i32 noundef 7424) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %27) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %21) #7
  br label %655

655:                                              ; preds = %440, %361, %365, %331, %654, %244
  call void @_bli_buffer_free(ptr noundef nonnull %18) #7
  call void @_bli_buffer_free(ptr noundef nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #7
  br label %756

656:                                              ; preds = %240
  %657 = and i32 %241, 16
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %731

659:                                              ; preds = %656
  call void @UI_GetThemeColor4ubv(i32 noundef 42, ptr noundef nonnull %33) #7
  call void @UI_GetThemeColor4ubv(i32 noundef 43, ptr noundef nonnull %34) #7
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  call void @glEnable(i32 noundef 3042) #7
  %660 = getelementptr inbounds %struct.BMEditMesh, ptr %123, i64 0, i32 4
  %661 = load i32, ptr %660, align 8, !tbaa !143
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %730, label %663

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.BMEditMesh, ptr %123, i64 0, i32 3
  %665 = sext i32 %130 to i64
  %666 = sext i32 %128 to i64
  br label %667

667:                                              ; preds = %663, %725
  %668 = phi i32 [ 0, %663 ], [ %727, %725 ]
  %669 = load ptr, ptr %664, align 8, !tbaa !144
  %670 = zext i32 %668 to i64
  %671 = getelementptr inbounds [3 x ptr], ptr %669, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !109
  %673 = getelementptr inbounds %struct.BMLoop, ptr %672, i64 0, i32 3
  %674 = load ptr, ptr %673, align 8, !tbaa !145
  %675 = load ptr, ptr %674, align 8, !tbaa !127
  %676 = getelementptr inbounds i8, ptr %675, i64 %665
  %677 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %2, ptr noundef %126, ptr noundef nonnull %674, ptr noundef %676) #7
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %721, label %679

679:                                              ; preds = %667
  %680 = call zeroext i8 @uvedit_face_select_test(ptr noundef %2, ptr noundef nonnull %674, i32 noundef %128) #7
  %681 = getelementptr inbounds %struct.BMHeader, ptr %674, i64 0, i32 3
  %682 = load i8, ptr %681, align 1, !tbaa !129
  %683 = or i8 %682, 16
  store i8 %683, ptr %681, align 1, !tbaa !129
  %684 = icmp eq ptr %676, %131
  br i1 %684, label %685, label %686

685:                                              ; preds = %679
  call void @glEnable(i32 noundef 2882) #7
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #7
  call void @UI_ThemeColor4(i32 noundef 127) #7
  br label %689

686:                                              ; preds = %679
  %687 = icmp eq i8 %680, 0
  %688 = select i1 %687, ptr %33, ptr %34
  call void @glColor4ubv(ptr noundef nonnull %688) #7
  br label %689

689:                                              ; preds = %686, %685
  call void @glBegin(i32 noundef 4) #7
  %690 = load ptr, ptr %664, align 8, !tbaa !144
  %691 = getelementptr inbounds [3 x ptr], ptr %690, i64 %670
  %692 = load ptr, ptr %691, align 8, !tbaa !109
  %693 = getelementptr inbounds %struct.BMLoop, ptr %692, i64 0, i32 3
  %694 = load ptr, ptr %693, align 8, !tbaa !145
  br label %695

695:                                              ; preds = %711, %689
  %696 = phi i32 [ %668, %689 ], [ %708, %711 ]
  %697 = zext i32 %696 to i64
  br label %698

698:                                              ; preds = %695, %698
  %699 = phi i64 [ 0, %695 ], [ %705, %698 ]
  %700 = load ptr, ptr %664, align 8, !tbaa !144
  %701 = getelementptr inbounds [3 x ptr], ptr %700, i64 %697, i64 %699
  %702 = load ptr, ptr %701, align 8, !tbaa !109
  %703 = load ptr, ptr %702, align 8, !tbaa !89
  %704 = getelementptr inbounds i8, ptr %703, i64 %666
  call void @glVertex2fv(ptr noundef %704) #7
  %705 = add nuw nsw i64 %699, 1
  %706 = icmp eq i64 %705, 3
  br i1 %706, label %707, label %698, !llvm.loop !146

707:                                              ; preds = %698
  %708 = add i32 %696, 1
  %709 = load i32, ptr %660, align 8, !tbaa !143
  %710 = icmp eq i32 %708, %709
  br i1 %710, label %719, label %711

711:                                              ; preds = %707
  %712 = load ptr, ptr %664, align 8, !tbaa !144
  %713 = zext i32 %708 to i64
  %714 = getelementptr inbounds [3 x ptr], ptr %712, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !109
  %716 = getelementptr inbounds %struct.BMLoop, ptr %715, i64 0, i32 3
  %717 = load ptr, ptr %716, align 8, !tbaa !145
  %718 = icmp eq ptr %694, %717
  br i1 %718, label %695, label %719, !llvm.loop !147

719:                                              ; preds = %711, %707
  call void @glEnd() #7
  br i1 %684, label %720, label %725

720:                                              ; preds = %719
  call void @glDisable(i32 noundef 2882) #7
  br label %725

721:                                              ; preds = %667
  %722 = getelementptr inbounds %struct.BMHeader, ptr %674, i64 0, i32 3
  %723 = load i8, ptr %722, align 1, !tbaa !129
  %724 = and i8 %723, -17
  store i8 %724, ptr %722, align 1, !tbaa !129
  br label %725

725:                                              ; preds = %721, %720, %719
  %726 = phi i32 [ %668, %721 ], [ %696, %720 ], [ %696, %719 ]
  %727 = add i32 %726, 1
  %728 = load i32, ptr %660, align 8, !tbaa !143
  %729 = icmp ult i32 %727, %728
  br i1 %729, label %667, label %730, !llvm.loop !148

730:                                              ; preds = %725, %659
  call void @glDisable(i32 noundef 3042) #7
  br label %756

731:                                              ; preds = %656
  %732 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %732, align 4, !tbaa !81
  %733 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %733, align 8, !tbaa !83
  %734 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %734, align 8, !tbaa !84
  %735 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %736 = load ptr, ptr %735, align 8, !tbaa !85
  store ptr %736, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %737 = load ptr, ptr %734, align 8, !tbaa !84
  %738 = call ptr %737(ptr noundef nonnull %30) #7
  %739 = icmp eq ptr %738, null
  br i1 %739, label %756, label %740

740:                                              ; preds = %731
  %741 = sext i32 %130 to i64
  br label %742

742:                                              ; preds = %740, %742
  %743 = phi ptr [ %738, %740 ], [ %754, %742 ]
  %744 = load ptr, ptr %743, align 8, !tbaa !127
  %745 = getelementptr inbounds i8, ptr %744, i64 %741
  %746 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %2, ptr noundef %126, ptr noundef nonnull %743, ptr noundef %745) #7
  %747 = icmp eq i8 %746, 0
  %748 = getelementptr inbounds %struct.BMHeader, ptr %743, i64 0, i32 3
  %749 = load i8, ptr %748, align 1, !tbaa !129
  %750 = and i8 %749, -17
  %751 = select i1 %747, i8 0, i8 16
  %752 = or disjoint i8 %750, %751
  store i8 %752, ptr %748, align 1, !tbaa !129
  %753 = load ptr, ptr %734, align 8, !tbaa !84
  %754 = call ptr %753(ptr noundef nonnull %30) #7
  %755 = icmp eq ptr %754, null
  br i1 %755, label %756, label %742, !llvm.loop !149

756:                                              ; preds = %742, %731, %730, %655
  %757 = load i32, ptr %164, align 4, !tbaa !68
  %758 = and i32 %757, 1048576
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %761, label %760

760:                                              ; preds = %756
  call void @glEnable(i32 noundef 2848) #7
  call void @glEnable(i32 noundef 3042) #7
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  br label %761

761:                                              ; preds = %760, %756
  %762 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 22
  %763 = load i8, ptr %762, align 4, !tbaa !150
  switch i8 %763, label %1015 [
    i8 1, label %764
    i8 0, label %856
    i8 3, label %818
    i8 2, label %819
  ]

764:                                              ; preds = %761
  %765 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %765, align 4, !tbaa !81
  %766 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %766, align 8, !tbaa !83
  %767 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %767, align 8, !tbaa !84
  %768 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %769 = load ptr, ptr %768, align 8, !tbaa !85
  store ptr %769, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %770 = load ptr, ptr %767, align 8, !tbaa !84
  %771 = call ptr %770(ptr noundef nonnull %30) #7
  %772 = icmp eq ptr %771, null
  br i1 %772, label %1015, label %773

773:                                              ; preds = %764
  %774 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %775 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %776 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %777 = sext i32 %128 to i64
  %778 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %779 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %780 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %781 = sext i32 %128 to i64
  br label %782

782:                                              ; preds = %773, %814
  %783 = phi ptr [ %771, %773 ], [ %816, %814 ]
  %784 = getelementptr inbounds %struct.BMHeader, ptr %783, i64 0, i32 3
  %785 = load i8, ptr %784, align 1, !tbaa !129
  %786 = and i8 %785, 16
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %814, label %788

788:                                              ; preds = %782
  %789 = load ptr, ptr %783, align 8, !tbaa !127
  %790 = icmp eq ptr %789, null
  br i1 %790, label %814, label %791

791:                                              ; preds = %788
  call void @cpack(i32 noundef 1118481) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %774, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %775, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %776, align 8, !tbaa !84
  store ptr %783, ptr %10, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #7
  %792 = load ptr, ptr %776, align 8, !tbaa !84
  %793 = call ptr %792(ptr noundef nonnull %10) #7
  %794 = icmp eq ptr %793, null
  br i1 %794, label %802, label %795

795:                                              ; preds = %791, %795
  %796 = phi ptr [ %800, %795 ], [ %793, %791 ]
  %797 = load ptr, ptr %796, align 8, !tbaa !89
  %798 = getelementptr inbounds i8, ptr %797, i64 %777
  call void @glVertex2fv(ptr noundef %798) #7
  %799 = load ptr, ptr %776, align 8, !tbaa !84
  %800 = call ptr %799(ptr noundef nonnull %10) #7
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %795, !llvm.loop !92

802:                                              ; preds = %795, %791
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  call void @setlinestyle(i32 noundef 2) #7
  call void @cpack(i32 noundef 9474192) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %778, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %779, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %780, align 8, !tbaa !84
  store ptr %783, ptr %9, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #7
  %803 = load ptr, ptr %780, align 8, !tbaa !84
  %804 = call ptr %803(ptr noundef nonnull %9) #7
  %805 = icmp eq ptr %804, null
  br i1 %805, label %813, label %806

806:                                              ; preds = %802, %806
  %807 = phi ptr [ %811, %806 ], [ %804, %802 ]
  %808 = load ptr, ptr %807, align 8, !tbaa !89
  %809 = getelementptr inbounds i8, ptr %808, i64 %781
  call void @glVertex2fv(ptr noundef %809) #7
  %810 = load ptr, ptr %780, align 8, !tbaa !84
  %811 = call ptr %810(ptr noundef nonnull %9) #7
  %812 = icmp eq ptr %811, null
  br i1 %812, label %813, label %806, !llvm.loop !92

813:                                              ; preds = %806, %802
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @setlinestyle(i32 noundef 0) #7
  br label %814

814:                                              ; preds = %813, %788, %782
  %815 = load ptr, ptr %767, align 8, !tbaa !84
  %816 = call ptr %815(ptr noundef nonnull %30) #7
  %817 = icmp eq ptr %816, null
  br i1 %817, label %1015, label %782, !llvm.loop !151

818:                                              ; preds = %761
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  br label %820

819:                                              ; preds = %761
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  br label %820

820:                                              ; preds = %819, %818
  %821 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %821, align 4, !tbaa !81
  %822 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %822, align 8, !tbaa !83
  %823 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %823, align 8, !tbaa !84
  %824 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %825 = load ptr, ptr %824, align 8, !tbaa !85
  store ptr %825, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %826 = load ptr, ptr %823, align 8, !tbaa !84
  %827 = call ptr %826(ptr noundef nonnull %30) #7
  %828 = icmp eq ptr %827, null
  br i1 %828, label %1015, label %829

829:                                              ; preds = %820
  %830 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %831 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %832 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %833 = sext i32 %128 to i64
  br label %834

834:                                              ; preds = %829, %852
  %835 = phi ptr [ %827, %829 ], [ %854, %852 ]
  %836 = getelementptr inbounds %struct.BMHeader, ptr %835, i64 0, i32 3
  %837 = load i8, ptr %836, align 1, !tbaa !129
  %838 = and i8 %837, 16
  %839 = icmp eq i8 %838, 0
  br i1 %839, label %852, label %840

840:                                              ; preds = %834
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %830, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %831, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %832, align 8, !tbaa !84
  store ptr %835, ptr %8, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #7
  %841 = load ptr, ptr %832, align 8, !tbaa !84
  %842 = call ptr %841(ptr noundef nonnull %8) #7
  %843 = icmp eq ptr %842, null
  br i1 %843, label %851, label %844

844:                                              ; preds = %840, %844
  %845 = phi ptr [ %849, %844 ], [ %842, %840 ]
  %846 = load ptr, ptr %845, align 8, !tbaa !89
  %847 = getelementptr inbounds i8, ptr %846, i64 %833
  call void @glVertex2fv(ptr noundef %847) #7
  %848 = load ptr, ptr %832, align 8, !tbaa !84
  %849 = call ptr %848(ptr noundef nonnull %8) #7
  %850 = icmp eq ptr %849, null
  br i1 %850, label %851, label %844, !llvm.loop !92

851:                                              ; preds = %844, %840
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %852

852:                                              ; preds = %851, %834
  %853 = load ptr, ptr %823, align 8, !tbaa !84
  %854 = call ptr %853(ptr noundef nonnull %30) #7
  %855 = icmp eq ptr %854, null
  br i1 %855, label %1015, label %834, !llvm.loop !152

856:                                              ; preds = %761
  call void @glLineWidth(float noundef 3.000000e+00) #7
  call void @cpack(i32 noundef 0) #7
  %857 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %857, align 4, !tbaa !81
  %858 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %858, align 8, !tbaa !83
  %859 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %859, align 8, !tbaa !84
  %860 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %861 = load ptr, ptr %860, align 8, !tbaa !85
  store ptr %861, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %862 = load ptr, ptr %859, align 8, !tbaa !84
  %863 = call ptr %862(ptr noundef nonnull %30) #7
  %864 = icmp eq ptr %863, null
  br i1 %864, label %892, label %865

865:                                              ; preds = %856
  %866 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %867 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %868 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %869 = sext i32 %128 to i64
  br label %870

870:                                              ; preds = %865, %888
  %871 = phi ptr [ %863, %865 ], [ %890, %888 ]
  %872 = getelementptr inbounds %struct.BMHeader, ptr %871, i64 0, i32 3
  %873 = load i8, ptr %872, align 1, !tbaa !129
  %874 = and i8 %873, 16
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %888, label %876

876:                                              ; preds = %870
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %866, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %867, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %868, align 8, !tbaa !84
  store ptr %871, ptr %7, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #7
  %877 = load ptr, ptr %868, align 8, !tbaa !84
  %878 = call ptr %877(ptr noundef nonnull %7) #7
  %879 = icmp eq ptr %878, null
  br i1 %879, label %887, label %880

880:                                              ; preds = %876, %880
  %881 = phi ptr [ %885, %880 ], [ %878, %876 ]
  %882 = load ptr, ptr %881, align 8, !tbaa !89
  %883 = getelementptr inbounds i8, ptr %882, i64 %869
  call void @glVertex2fv(ptr noundef %883) #7
  %884 = load ptr, ptr %868, align 8, !tbaa !84
  %885 = call ptr %884(ptr noundef nonnull %7) #7
  %886 = icmp eq ptr %885, null
  br i1 %886, label %887, label %880, !llvm.loop !92

887:                                              ; preds = %880, %876
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  br label %888

888:                                              ; preds = %887, %870
  %889 = load ptr, ptr %859, align 8, !tbaa !84
  %890 = call ptr %889(ptr noundef nonnull %30) #7
  %891 = icmp eq ptr %890, null
  br i1 %891, label %892, label %870, !llvm.loop !153

892:                                              ; preds = %888, %856
  call void @glLineWidth(float noundef 1.000000e+00) #7
  call void @UI_GetThemeColor4ubv(i32 noundef 27, ptr noundef nonnull %34) #7
  call void @glColor4ubv(ptr noundef nonnull %34) #7
  %893 = getelementptr inbounds %struct.Mesh, ptr %121, i64 0, i32 36
  %894 = load i32, ptr %893, align 8, !tbaa !154
  %895 = and i32 %894, 1
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %983, label %897

897:                                              ; preds = %892
  call void @UI_GetThemeColor4ubv(i32 noundef 39, ptr noundef nonnull %33) #7
  %898 = icmp eq i32 %163, 0
  br i1 %898, label %935, label %899

899:                                              ; preds = %897
  call void @glShadeModel(i32 noundef 7425) #7
  store i8 3, ptr %857, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %858, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %859, align 8, !tbaa !84
  %900 = load ptr, ptr %860, align 8, !tbaa !85
  store ptr %900, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %901 = load ptr, ptr %859, align 8, !tbaa !84
  %902 = call ptr %901(ptr noundef nonnull %30) #7
  %903 = icmp eq ptr %902, null
  br i1 %903, label %934, label %904

904:                                              ; preds = %899
  %905 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %906 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %907 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %908 = sext i32 %128 to i64
  br label %909

909:                                              ; preds = %904, %930
  %910 = phi ptr [ %902, %904 ], [ %932, %930 ]
  %911 = getelementptr inbounds %struct.BMHeader, ptr %910, i64 0, i32 3
  %912 = load i8, ptr %911, align 1, !tbaa !129
  %913 = and i8 %912, 16
  %914 = icmp eq i8 %913, 0
  br i1 %914, label %930, label %915

915:                                              ; preds = %909
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %905, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %906, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %907, align 8, !tbaa !84
  store ptr %910, ptr %31, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %31) #7
  %916 = load ptr, ptr %907, align 8, !tbaa !84
  %917 = call ptr %916(ptr noundef nonnull %31) #7
  %918 = icmp eq ptr %917, null
  br i1 %918, label %929, label %919

919:                                              ; preds = %915, %919
  %920 = phi ptr [ %927, %919 ], [ %917, %915 ]
  %921 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %2, ptr noundef nonnull %920, i32 noundef %128) #7
  %922 = icmp eq i8 %921, 0
  %923 = select i1 %922, ptr %34, ptr %33
  call void @glColor4ubv(ptr noundef nonnull %923) #7
  %924 = load ptr, ptr %920, align 8, !tbaa !89
  %925 = getelementptr inbounds i8, ptr %924, i64 %908
  call void @glVertex2fv(ptr noundef %925) #7
  %926 = load ptr, ptr %907, align 8, !tbaa !84
  %927 = call ptr %926(ptr noundef nonnull %31) #7
  %928 = icmp eq ptr %927, null
  br i1 %928, label %929, label %919, !llvm.loop !155

929:                                              ; preds = %919, %915
  call void @glEnd() #7
  br label %930

930:                                              ; preds = %929, %909
  %931 = load ptr, ptr %859, align 8, !tbaa !84
  %932 = call ptr %931(ptr noundef nonnull %30) #7
  %933 = icmp eq ptr %932, null
  br i1 %933, label %934, label %909, !llvm.loop !156

934:                                              ; preds = %930, %899
  call void @glShadeModel(i32 noundef 7424) #7
  br label %1015

935:                                              ; preds = %897
  store i8 3, ptr %857, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %858, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %859, align 8, !tbaa !84
  %936 = load ptr, ptr %860, align 8, !tbaa !85
  store ptr %936, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %937 = load ptr, ptr %859, align 8, !tbaa !84
  %938 = call ptr %937(ptr noundef nonnull %30) #7
  %939 = icmp eq ptr %938, null
  br i1 %939, label %1015, label %940

940:                                              ; preds = %935
  %941 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %942 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %943 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %944 = sext i32 %128 to i64
  br label %945

945:                                              ; preds = %940, %978
  %946 = phi i32 [ -1, %940 ], [ %979, %978 ]
  %947 = phi ptr [ %938, %940 ], [ %981, %978 ]
  %948 = getelementptr inbounds %struct.BMHeader, ptr %947, i64 0, i32 3
  %949 = load i8, ptr %948, align 1, !tbaa !129
  %950 = and i8 %949, 16
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %978, label %952

952:                                              ; preds = %945
  call void @glBegin(i32 noundef 1) #7
  store i8 11, ptr %941, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %942, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %943, align 8, !tbaa !84
  store ptr %947, ptr %31, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %31) #7
  %953 = load ptr, ptr %943, align 8, !tbaa !84
  %954 = call ptr %953(ptr noundef nonnull %31) #7
  %955 = icmp eq ptr %954, null
  br i1 %955, label %976, label %956

956:                                              ; preds = %952, %965
  %957 = phi i32 [ %966, %965 ], [ %946, %952 ]
  %958 = phi ptr [ %974, %965 ], [ %954, %952 ]
  %959 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %2, ptr noundef nonnull %958, i32 noundef %128) #7
  %960 = zext i8 %959 to i32
  %961 = icmp eq i32 %957, %960
  br i1 %961, label %965, label %962

962:                                              ; preds = %956
  %963 = icmp eq i8 %959, 0
  %964 = select i1 %963, ptr %34, ptr %33
  call void @glColor4ubv(ptr noundef nonnull %964) #7
  br label %965

965:                                              ; preds = %962, %956
  %966 = phi i32 [ %960, %962 ], [ %957, %956 ]
  %967 = load ptr, ptr %958, align 8, !tbaa !89
  %968 = getelementptr inbounds i8, ptr %967, i64 %944
  call void @glVertex2fv(ptr noundef %968) #7
  %969 = getelementptr inbounds %struct.BMLoop, ptr %958, i64 0, i32 6
  %970 = load ptr, ptr %969, align 8, !tbaa !157
  %971 = load ptr, ptr %970, align 8, !tbaa !89
  %972 = getelementptr inbounds i8, ptr %971, i64 %944
  call void @glVertex2fv(ptr noundef %972) #7
  %973 = load ptr, ptr %943, align 8, !tbaa !84
  %974 = call ptr %973(ptr noundef nonnull %31) #7
  %975 = icmp eq ptr %974, null
  br i1 %975, label %976, label %956, !llvm.loop !158

976:                                              ; preds = %965, %952
  %977 = phi i32 [ %946, %952 ], [ %966, %965 ]
  call void @glEnd() #7
  br label %978

978:                                              ; preds = %976, %945
  %979 = phi i32 [ %977, %976 ], [ %946, %945 ]
  %980 = load ptr, ptr %859, align 8, !tbaa !84
  %981 = call ptr %980(ptr noundef nonnull %30) #7
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1015, label %945, !llvm.loop !159

983:                                              ; preds = %892
  store i8 3, ptr %857, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %858, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %859, align 8, !tbaa !84
  %984 = load ptr, ptr %860, align 8, !tbaa !85
  store ptr %984, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %985 = load ptr, ptr %859, align 8, !tbaa !84
  %986 = call ptr %985(ptr noundef nonnull %30) #7
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1015, label %988

988:                                              ; preds = %983
  %989 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %990 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %991 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %992 = sext i32 %128 to i64
  br label %993

993:                                              ; preds = %988, %1011
  %994 = phi ptr [ %986, %988 ], [ %1013, %1011 ]
  %995 = getelementptr inbounds %struct.BMHeader, ptr %994, i64 0, i32 3
  %996 = load i8, ptr %995, align 1, !tbaa !129
  %997 = and i8 %996, 16
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %1011, label %999

999:                                              ; preds = %993
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @glBegin(i32 noundef 2) #7
  store i8 11, ptr %989, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %990, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %991, align 8, !tbaa !84
  store ptr %994, ptr %6, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #7
  %1000 = load ptr, ptr %991, align 8, !tbaa !84
  %1001 = call ptr %1000(ptr noundef nonnull %6) #7
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1010, label %1003

1003:                                             ; preds = %999, %1003
  %1004 = phi ptr [ %1008, %1003 ], [ %1001, %999 ]
  %1005 = load ptr, ptr %1004, align 8, !tbaa !89
  %1006 = getelementptr inbounds i8, ptr %1005, i64 %992
  call void @glVertex2fv(ptr noundef %1006) #7
  %1007 = load ptr, ptr %991, align 8, !tbaa !84
  %1008 = call ptr %1007(ptr noundef nonnull %6) #7
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1010, label %1003, !llvm.loop !92

1010:                                             ; preds = %1003, %999
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %1011

1011:                                             ; preds = %1010, %993
  %1012 = load ptr, ptr %859, align 8, !tbaa !84
  %1013 = call ptr %1012(ptr noundef nonnull %30) #7
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1015, label %993, !llvm.loop !160

1015:                                             ; preds = %852, %978, %1011, %814, %820, %935, %983, %764, %761, %934
  %1016 = load i32, ptr %164, align 4, !tbaa !68
  %1017 = and i32 %1016, 1048576
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1020, label %1019

1019:                                             ; preds = %1015
  call void @glDisable(i32 noundef 2848) #7
  call void @glDisable(i32 noundef 3042) #7
  br label %1020

1020:                                             ; preds = %1019, %1015
  %1021 = icmp eq i32 %151, 0
  br i1 %1021, label %1067, label %1022

1022:                                             ; preds = %1020
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #7
  %1023 = call float @UI_GetThemeValuef(i32 noundef 48) #7
  call void @glPointSize(float noundef %1023) #7
  call void @UI_ThemeColor(i32 noundef 25) #7
  call void @bglBegin(i32 noundef 0) #7
  %1024 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %1024, align 4, !tbaa !81
  %1025 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1025, align 8, !tbaa !83
  %1026 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1026, align 8, !tbaa !84
  %1027 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %1028 = load ptr, ptr %1027, align 8, !tbaa !85
  store ptr %1028, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %1029 = load ptr, ptr %1026, align 8, !tbaa !84
  %1030 = call ptr %1029(ptr noundef nonnull %30) #7
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1046, label %1032

1032:                                             ; preds = %1022, %1042
  %1033 = phi ptr [ %1044, %1042 ], [ %1030, %1022 ]
  %1034 = getelementptr inbounds %struct.BMHeader, ptr %1033, i64 0, i32 3
  %1035 = load i8, ptr %1034, align 1, !tbaa !129
  %1036 = and i8 %1035, 16
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1042, label %1038

1038:                                             ; preds = %1032
  %1039 = call zeroext i8 @uvedit_face_select_test(ptr noundef %2, ptr noundef nonnull %1033, i32 noundef %128) #7
  %1040 = icmp eq i8 %1039, 0
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1038
  call void @uv_poly_center(ptr noundef nonnull %1033, ptr noundef nonnull %36, i32 noundef %128) #7
  call void @bglVertex2fv(ptr noundef nonnull %36) #7
  br label %1042

1042:                                             ; preds = %1041, %1038, %1032
  %1043 = load ptr, ptr %1026, align 8, !tbaa !84
  %1044 = call ptr %1043(ptr noundef nonnull %30) #7
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1046, label %1032, !llvm.loop !161

1046:                                             ; preds = %1042, %1022
  call void @bglEnd() #7
  call void @UI_ThemeColor(i32 noundef 47) #7
  call void @bglBegin(i32 noundef 0) #7
  store i8 3, ptr %1024, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %1025, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %1026, align 8, !tbaa !84
  %1047 = load ptr, ptr %1027, align 8, !tbaa !85
  store ptr %1047, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %1048 = load ptr, ptr %1026, align 8, !tbaa !84
  %1049 = call ptr %1048(ptr noundef nonnull %30) #7
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1065, label %1051

1051:                                             ; preds = %1046, %1061
  %1052 = phi ptr [ %1063, %1061 ], [ %1049, %1046 ]
  %1053 = getelementptr inbounds %struct.BMHeader, ptr %1052, i64 0, i32 3
  %1054 = load i8, ptr %1053, align 1, !tbaa !129
  %1055 = and i8 %1054, 16
  %1056 = icmp eq i8 %1055, 0
  br i1 %1056, label %1061, label %1057

1057:                                             ; preds = %1051
  %1058 = call zeroext i8 @uvedit_face_select_test(ptr noundef %2, ptr noundef nonnull %1052, i32 noundef %128) #7
  %1059 = icmp eq i8 %1058, 0
  br i1 %1059, label %1061, label %1060

1060:                                             ; preds = %1057
  call void @uv_poly_center(ptr noundef nonnull %1052, ptr noundef nonnull %36, i32 noundef %128) #7
  call void @bglVertex2fv(ptr noundef nonnull %36) #7
  br label %1061

1061:                                             ; preds = %1060, %1057, %1051
  %1062 = load ptr, ptr %1026, align 8, !tbaa !84
  %1063 = call ptr %1062(ptr noundef nonnull %30) #7
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1065, label %1051, !llvm.loop !162

1065:                                             ; preds = %1061, %1046
  call void @bglEnd() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #7
  %1066 = icmp eq i32 %151, 2
  br i1 %1066, label %1185, label %1067

1067:                                             ; preds = %1065, %1020
  call void @UI_ThemeColor(i32 noundef 33) #7
  %1068 = call float @UI_GetThemeValuef(i32 noundef 36) #7
  call void @glPointSize(float noundef %1068) #7
  call void @bglBegin(i32 noundef 0) #7
  %1069 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  store i8 3, ptr %1069, align 4, !tbaa !81
  %1070 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1070, align 8, !tbaa !83
  %1071 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1071, align 8, !tbaa !84
  %1072 = getelementptr inbounds %struct.BMesh, ptr %124, i64 0, i32 12
  %1073 = load ptr, ptr %1072, align 8, !tbaa !85
  store ptr %1073, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %1074 = load ptr, ptr %1071, align 8, !tbaa !84
  %1075 = call ptr %1074(ptr noundef nonnull %30) #7
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1107, label %1077

1077:                                             ; preds = %1067
  %1078 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %1079 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %1080 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %1081 = sext i32 %128 to i64
  br label %1082

1082:                                             ; preds = %1077, %1103
  %1083 = phi ptr [ %1075, %1077 ], [ %1105, %1103 ]
  %1084 = getelementptr inbounds %struct.BMHeader, ptr %1083, i64 0, i32 3
  %1085 = load i8, ptr %1084, align 1, !tbaa !129
  %1086 = and i8 %1085, 16
  %1087 = icmp eq i8 %1086, 0
  br i1 %1087, label %1103, label %1088

1088:                                             ; preds = %1082
  store i8 11, ptr %1078, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %1079, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %1080, align 8, !tbaa !84
  store ptr %1083, ptr %31, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %31) #7
  %1089 = load ptr, ptr %1080, align 8, !tbaa !84
  %1090 = call ptr %1089(ptr noundef nonnull %31) #7
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1103, label %1092

1092:                                             ; preds = %1088, %1099
  %1093 = phi ptr [ %1101, %1099 ], [ %1090, %1088 ]
  %1094 = load ptr, ptr %1093, align 8, !tbaa !89
  %1095 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %2, ptr noundef nonnull %1093, i32 noundef %128) #7
  %1096 = icmp eq i8 %1095, 0
  br i1 %1096, label %1097, label %1099

1097:                                             ; preds = %1092
  %1098 = getelementptr inbounds i8, ptr %1094, i64 %1081
  call void @bglVertex2fv(ptr noundef %1098) #7
  br label %1099

1099:                                             ; preds = %1097, %1092
  %1100 = load ptr, ptr %1080, align 8, !tbaa !84
  %1101 = call ptr %1100(ptr noundef nonnull %31) #7
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1103, label %1092, !llvm.loop !163

1103:                                             ; preds = %1099, %1088, %1082
  %1104 = load ptr, ptr %1071, align 8, !tbaa !84
  %1105 = call ptr %1104(ptr noundef nonnull %30) #7
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1107, label %1082, !llvm.loop !164

1107:                                             ; preds = %1103, %1067
  call void @bglEnd() #7
  %1108 = fptosi float %1068 to i32
  %1109 = and i32 %1108, 1
  %1110 = sub nsw i32 0, %1109
  %1111 = sitofp i32 %1110 to float
  %1112 = call float @llvm.fmuladd.f32(float %1068, float 2.000000e+00, float %1111)
  call void @glPointSize(float noundef %1112) #7
  call void @cpack(i32 noundef 255) #7
  call void @bglBegin(i32 noundef 0) #7
  store i8 3, ptr %1069, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %1070, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %1071, align 8, !tbaa !84
  %1113 = load ptr, ptr %1072, align 8, !tbaa !85
  store ptr %1113, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %1114 = load ptr, ptr %1071, align 8, !tbaa !84
  %1115 = call ptr %1114(ptr noundef nonnull %30) #7
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1149, label %1117

1117:                                             ; preds = %1107
  %1118 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %1119 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %1120 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %1121 = sext i32 %128 to i64
  br label %1122

1122:                                             ; preds = %1117, %1145
  %1123 = phi ptr [ %1115, %1117 ], [ %1147, %1145 ]
  %1124 = getelementptr inbounds %struct.BMHeader, ptr %1123, i64 0, i32 3
  %1125 = load i8, ptr %1124, align 1, !tbaa !129
  %1126 = and i8 %1125, 16
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1145, label %1128

1128:                                             ; preds = %1122
  store i8 11, ptr %1118, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %1119, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %1120, align 8, !tbaa !84
  store ptr %1123, ptr %31, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %31) #7
  %1129 = load ptr, ptr %1120, align 8, !tbaa !84
  %1130 = call ptr %1129(ptr noundef nonnull %31) #7
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1145, label %1132

1132:                                             ; preds = %1128, %1141
  %1133 = phi ptr [ %1143, %1141 ], [ %1130, %1128 ]
  %1134 = load ptr, ptr %1133, align 8, !tbaa !89
  %1135 = getelementptr inbounds i8, ptr %1134, i64 %1121
  %1136 = getelementptr inbounds %struct.MLoopUV, ptr %1135, i64 0, i32 1
  %1137 = load i32, ptr %1136, align 4, !tbaa !165
  %1138 = and i32 %1137, 4
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1141, label %1140

1140:                                             ; preds = %1132
  call void @bglVertex2fv(ptr noundef %1135) #7
  br label %1141

1141:                                             ; preds = %1140, %1132
  %1142 = load ptr, ptr %1120, align 8, !tbaa !84
  %1143 = call ptr %1142(ptr noundef nonnull %31) #7
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1145, label %1132, !llvm.loop !167

1145:                                             ; preds = %1141, %1128, %1122
  %1146 = load ptr, ptr %1071, align 8, !tbaa !84
  %1147 = call ptr %1146(ptr noundef nonnull %30) #7
  %1148 = icmp eq ptr %1147, null
  br i1 %1148, label %1149, label %1122, !llvm.loop !168

1149:                                             ; preds = %1145, %1107
  call void @bglEnd() #7
  call void @UI_ThemeColor(i32 noundef 34) #7
  call void @glPointSize(float noundef %1068) #7
  call void @bglBegin(i32 noundef 0) #7
  store i8 3, ptr %1069, align 4, !tbaa !81
  store ptr @bmiter__elem_of_mesh_begin, ptr %1070, align 8, !tbaa !83
  store ptr @bmiter__elem_of_mesh_step, ptr %1071, align 8, !tbaa !84
  %1150 = load ptr, ptr %1072, align 8, !tbaa !85
  store ptr %1150, ptr %30, align 8, !tbaa !88
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %30) #7
  %1151 = load ptr, ptr %1071, align 8, !tbaa !84
  %1152 = call ptr %1151(ptr noundef nonnull %30) #7
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1184, label %1154

1154:                                             ; preds = %1149
  %1155 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %1156 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %1157 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %1158 = sext i32 %128 to i64
  br label %1159

1159:                                             ; preds = %1154, %1180
  %1160 = phi ptr [ %1152, %1154 ], [ %1182, %1180 ]
  %1161 = getelementptr inbounds %struct.BMHeader, ptr %1160, i64 0, i32 3
  %1162 = load i8, ptr %1161, align 1, !tbaa !129
  %1163 = and i8 %1162, 16
  %1164 = icmp eq i8 %1163, 0
  br i1 %1164, label %1180, label %1165

1165:                                             ; preds = %1159
  store i8 11, ptr %1155, align 4, !tbaa !81
  store ptr @bmiter__loop_of_face_begin, ptr %1156, align 8, !tbaa !83
  store ptr @bmiter__loop_of_face_step, ptr %1157, align 8, !tbaa !84
  store ptr %1160, ptr %31, align 8, !tbaa !88
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %31) #7
  %1166 = load ptr, ptr %1157, align 8, !tbaa !84
  %1167 = call ptr %1166(ptr noundef nonnull %31) #7
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1180, label %1169

1169:                                             ; preds = %1165, %1176
  %1170 = phi ptr [ %1178, %1176 ], [ %1167, %1165 ]
  %1171 = load ptr, ptr %1170, align 8, !tbaa !89
  %1172 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %2, ptr noundef nonnull %1170, i32 noundef %128) #7
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1176, label %1174

1174:                                             ; preds = %1169
  %1175 = getelementptr inbounds i8, ptr %1171, i64 %1158
  call void @bglVertex2fv(ptr noundef %1175) #7
  br label %1176

1176:                                             ; preds = %1174, %1169
  %1177 = load ptr, ptr %1157, align 8, !tbaa !84
  %1178 = call ptr %1177(ptr noundef nonnull %31) #7
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1180, label %1169, !llvm.loop !169

1180:                                             ; preds = %1176, %1165, %1159
  %1181 = load ptr, ptr %1071, align 8, !tbaa !84
  %1182 = call ptr %1181(ptr noundef nonnull %30) #7
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1184, label %1159, !llvm.loop !170

1184:                                             ; preds = %1180, %1149
  call void @bglEnd() #7
  br label %1185

1185:                                             ; preds = %1065, %1184
  call void @glPointSize(float noundef 1.000000e+00) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #7
  br label %1251

1186:                                             ; preds = %116
  %1187 = tail call ptr @ED_space_image(ptr noundef %0) #7
  %1188 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %1189 = load ptr, ptr %1188, align 8, !tbaa !96
  %1190 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %1191 = load i32, ptr %1190, align 4, !tbaa !68
  %1192 = and i32 %1191, 8388608
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1195, label %1194

1194:                                             ; preds = %1186
  tail call fastcc void @draw_uvs_other(ptr noundef %2, ptr noundef %4, ptr noundef %1187, i8 noundef zeroext %118)
  br label %1195

1195:                                             ; preds = %1194, %1186
  tail call void @UI_ThemeColor(i32 noundef 158) #7
  %1196 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 32
  %1197 = load i32, ptr %1196, align 4, !tbaa !171
  %1198 = trunc i32 %1197 to i16
  %1199 = tail call ptr @give_current_material(ptr noundef %4, i16 noundef signext %1198) #7
  %1200 = getelementptr inbounds %struct.Mesh, ptr %1189, i64 0, i32 8
  %1201 = load ptr, ptr %1200, align 8, !tbaa !172
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1251, label %1203

1203:                                             ; preds = %1195
  %1204 = getelementptr inbounds %struct.Mesh, ptr %1189, i64 0, i32 7
  %1205 = load ptr, ptr %1204, align 8, !tbaa !173
  %1206 = icmp eq ptr %1199, null
  br i1 %1206, label %1222, label %1207

1207:                                             ; preds = %1203
  %1208 = getelementptr inbounds %struct.Material, ptr %1199, i64 0, i32 135
  %1209 = load ptr, ptr %1208, align 8, !tbaa !174
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1222, label %1211

1211:                                             ; preds = %1207
  %1212 = getelementptr inbounds %struct.Material, ptr %1199, i64 0, i32 131
  %1213 = load i16, ptr %1212, align 4, !tbaa !178
  %1214 = sext i16 %1213 to i64
  %1215 = getelementptr inbounds %struct.TexPaintSlot, ptr %1209, i64 %1214, i32 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !179
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1222, label %1218

1218:                                             ; preds = %1211
  %1219 = getelementptr inbounds %struct.Mesh, ptr %1189, i64 0, i32 25
  %1220 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %1219, i32 noundef 16, ptr noundef nonnull %1216) #7
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1222, label %1225

1222:                                             ; preds = %1218, %1211, %1207, %1203
  %1223 = getelementptr inbounds %struct.Mesh, ptr %1189, i64 0, i32 10
  %1224 = load ptr, ptr %1223, align 8, !tbaa !181
  br label %1225

1225:                                             ; preds = %1222, %1218
  %1226 = phi ptr [ %1220, %1218 ], [ %1224, %1222 ]
  %1227 = getelementptr inbounds %struct.Mesh, ptr %1189, i64 0, i32 30
  %1228 = load i32, ptr %1227, align 8, !tbaa !182
  %1229 = icmp sgt i32 %1228, 0
  br i1 %1229, label %1230, label %1251

1230:                                             ; preds = %1225, %1247
  %1231 = phi i32 [ %1248, %1247 ], [ %1228, %1225 ]
  %1232 = phi ptr [ %1249, %1247 ], [ %1205, %1225 ]
  tail call void @glBegin(i32 noundef 2) #7
  %1233 = getelementptr inbounds %struct.MPoly, ptr %1232, i64 0, i32 1
  %1234 = load i32, ptr %1233, align 4, !tbaa !183
  %1235 = icmp sgt i32 %1234, 0
  br i1 %1235, label %1236, label %1247

1236:                                             ; preds = %1230
  %1237 = load i32, ptr %1232, align 4, !tbaa !185
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds %struct.MLoopUV, ptr %1226, i64 %1238
  br label %1240

1240:                                             ; preds = %1236, %1240
  %1241 = phi i32 [ %1243, %1240 ], [ 0, %1236 ]
  %1242 = phi ptr [ %1244, %1240 ], [ %1239, %1236 ]
  tail call void @glVertex2fv(ptr noundef %1242) #7
  %1243 = add nuw nsw i32 %1241, 1
  %1244 = getelementptr inbounds %struct.MLoopUV, ptr %1242, i64 1
  %1245 = load i32, ptr %1233, align 4, !tbaa !183
  %1246 = icmp slt i32 %1243, %1245
  br i1 %1246, label %1240, label %1247, !llvm.loop !186

1247:                                             ; preds = %1240, %1230
  tail call void @glEnd() #7
  %1248 = add nsw i32 %1231, -1
  %1249 = getelementptr inbounds %struct.MPoly, ptr %1232, i64 1
  %1250 = icmp sgt i32 %1231, 1
  br i1 %1250, label %1230, label %1251, !llvm.loop !187

1251:                                             ; preds = %1247, %1225, %1195, %1185, %115
  br i1 %75, label %1252, label %1258

1252:                                             ; preds = %1251
  %1253 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 64
  %1254 = load i32, ptr %1253, align 8, !tbaa !188
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1256, label %1258

1256:                                             ; preds = %1252
  %1257 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 11
  call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %1257)
  br label %1258

1258:                                             ; preds = %1251, %1252, %1256, %72
  ret void
}

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare ptr @EDBM_mtexpoly_active_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_uvs_other(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  tail call void @UI_ThemeColor(i32 noundef 159) #7
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %10 = icmp eq i8 %3, 0
  br label %11

11:                                               ; preds = %8, %80
  %12 = phi ptr [ %6, %8 ], [ %81, %80 ]
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !191
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %80, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !192
  %22 = load i32, ptr %9, align 8, !tbaa !193
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !194
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !75
  %33 = icmp ne i16 %32, 1
  %34 = icmp eq ptr %14, %1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %80, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !181
  %41 = icmp eq ptr %40, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %36
  br i1 %10, label %44, label %43

43:                                               ; preds = %42
  tail call fastcc void @draw_uvs_other_mesh_new_shading(ptr noundef %14, ptr noundef %2)
  br label %80

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !182
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !173
  %51 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !172
  br label %53

53:                                               ; preds = %48, %75
  %54 = phi i32 [ %76, %75 ], [ %46, %48 ]
  %55 = phi ptr [ %78, %75 ], [ %52, %48 ]
  %56 = phi ptr [ %77, %75 ], [ %50, %48 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !112
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  tail call void @glBegin(i32 noundef 2) #7
  %60 = getelementptr inbounds %struct.MPoly, ptr %56, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !183
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %39, align 8, !tbaa !181
  %65 = load i32, ptr %56, align 4, !tbaa !185
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MLoopUV, ptr %64, i64 %66
  br label %68

68:                                               ; preds = %68, %63
  %69 = phi i32 [ %71, %68 ], [ %61, %63 ]
  %70 = phi ptr [ %72, %68 ], [ %67, %63 ]
  tail call void @glVertex2fv(ptr noundef %70) #7
  %71 = add nsw i32 %69, -1
  %72 = getelementptr inbounds %struct.MLoopUV, ptr %70, i64 1
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %68, !llvm.loop !195

74:                                               ; preds = %68, %59
  tail call void @glEnd() #7
  br label %75

75:                                               ; preds = %74, %53
  %76 = add nsw i32 %54, -1
  %77 = getelementptr inbounds %struct.MPoly, ptr %56, i64 1
  %78 = getelementptr inbounds %struct.MTexPoly, ptr %55, i64 1
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %80, label %53, !llvm.loop !196

80:                                               ; preds = %75, %44, %43, %30, %36, %25, %19, %11
  %81 = load ptr, ptr %12, align 8, !tbaa !109
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %11, !llvm.loop !197

83:                                               ; preds = %80, %4
  ret void
}

declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_face_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_edge_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @bglBegin(i32 noundef) local_unnamed_addr #2

declare void @uv_poly_center(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bglVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @bglEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_uvs_other_mesh_new_shading(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = icmp eq ptr %9, null
  br i1 %10, label %93, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %15 = load i32, ptr %14, align 8, !tbaa !198
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %93, label %17

17:                                               ; preds = %13, %11
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %19 = load i32, ptr %18, align 8, !tbaa !198
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 1)
  %21 = lshr i32 %20, 3
  %22 = and i32 %21, 268435452
  %23 = add nuw nsw i32 %22, 4
  %24 = zext nneg i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %25, i8 0, i64 %24, i1 false)
  %26 = tail call i32 @llvm.smax.i32(i32 %19, i32 1)
  br label %27

27:                                               ; preds = %17, %47
  %28 = phi i8 [ 0, %17 ], [ %48, %47 ]
  %29 = phi i32 [ 0, %17 ], [ %49, %47 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %30 = load i32, ptr %18, align 8, !tbaa !198
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %29, 1
  %34 = call zeroext i8 @ED_object_get_active_image(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %36

35:                                               ; preds = %27
  store ptr null, ptr %3, align 8, !tbaa !109
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %3, align 8, !tbaa !109
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = and i32 %29, 31
  %41 = shl nuw i32 1, %40
  %42 = lshr i32 %29, 5
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %25, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !199
  %46 = or i32 %45, %41
  store i32 %46, ptr %44, align 4, !tbaa !199
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i8 [ 1, %39 ], [ %28, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %49 = add nuw nsw i32 %29, 1
  %50 = icmp eq i32 %49, %26
  br i1 %50, label %51, label %27, !llvm.loop !200

51:                                               ; preds = %47
  %52 = icmp eq i8 %48, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %55 = load i32, ptr %54, align 8, !tbaa !182
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %53, %89
  %58 = phi ptr [ %91, %89 ], [ %7, %53 ]
  %59 = phi i32 [ %90, %89 ], [ %55, %53 ]
  %60 = getelementptr inbounds %struct.MPoly, ptr %58, i64 0, i32 2
  %61 = load i16, ptr %60, align 4, !tbaa !201
  %62 = sext i16 %61 to i32
  %63 = icmp sgt i32 %20, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = ashr i32 %62, 5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %25, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !199
  %69 = and i32 %62, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %64
  call void @glBegin(i32 noundef 2) #7
  %74 = getelementptr inbounds %struct.MPoly, ptr %58, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !183
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %8, align 8, !tbaa !181
  %79 = load i32, ptr %58, align 4, !tbaa !185
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MLoopUV, ptr %78, i64 %80
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi i32 [ %85, %82 ], [ %75, %77 ]
  %84 = phi ptr [ %86, %82 ], [ %81, %77 ]
  call void @glVertex2fv(ptr noundef %84) #7
  %85 = add nsw i32 %83, -1
  %86 = getelementptr inbounds %struct.MLoopUV, ptr %84, i64 1
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %82, !llvm.loop !195

88:                                               ; preds = %82, %73
  call void @glEnd() #7
  br label %89

89:                                               ; preds = %57, %64, %88
  %90 = add nsw i32 %59, -1
  %91 = getelementptr inbounds %struct.MPoly, ptr %58, i64 1
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %57, !llvm.loop !202

93:                                               ; preds = %89, %53, %51, %13, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uv_poly_copy_aspect(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #2

declare float @area_poly_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

declare float @angle_normalized_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !42, i64 10908}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!35, !36, i64 8524}
!46 = !{!42, !42, i64 0}
!47 = !{!48, !41, i64 264}
!48 = !{!"Scene", !49, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !50, i64 280, !59, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !41, i64 4608, !65, i64 4616, !41, i64 4640, !66, i64 4648, !66, i64 4656, !52, i64 4664, !53, i64 4824, !67, i64 4888, !41, i64 4952}
!49 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!50 = !{!"RenderData", !51, i64 0, !41, i64 248, !41, i64 256, !54, i64 264, !55, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !56, i64 544, !56, i64 560, !57, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !58, i64 2616, !36, i64 3976, !36, i64 3980}
!51 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !52, i64 24, !53, i64 184}
!52 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!53 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!54 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!55 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!56 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!57 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!58 = !{!"BakeData", !51, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!59 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!60 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!61 = !{!"GameData", !60, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !62, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !63, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!62 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!63 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!64 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!65 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!66 = !{!"long", !37, i64 0}
!67 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!68 = !{!69, !36, i64 36}
!69 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !70, i64 48, !41, i64 88, !71, i64 96, !72, i64 5360, !41, i64 10520, !37, i64 10528, !42, i64 10536, !42, i64 10540, !42, i64 10544, !42, i64 10548, !42, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !73, i64 10568}
!70 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!71 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !42, i64 12, !36, i64 16, !42, i64 20, !42, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !37, i64 40, !72, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!72 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !42, i64 5128, !42, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!73 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!74 = !{!69, !37, i64 10556}
!75 = !{!76, !39, i64 136}
!76 = !{!"Object", !49, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !77, i64 312, !41, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !42, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !42, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !66, i64 1304, !66, i64 1312, !36, i64 1320, !36, i64 1324, !40, i64 1328, !40, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !40, i64 1400, !41, i64 1416}
!77 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!78 = !{!76, !36, i64 432}
!79 = !{!80, !41, i64 0}
!80 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !66, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!81 = !{!82, !37, i64 60}
!82 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!83 = !{!82, !41, i64 40}
!84 = !{!82, !41, i64 48}
!85 = !{!86, !41, i64 56}
!86 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !87, i64 144, !87, i64 344, !87, i64 544, !87, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !40, i64 960, !41, i64 976, !40, i64 984, !41, i64 1000}
!87 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!88 = !{!37, !37, i64 0}
!89 = !{!90, !41, i64 0}
!90 = !{!"BMLoop", !91, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!91 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !93, !94}
!96 = !{!76, !41, i64 296}
!97 = !{!98, !41, i64 272}
!98 = !{!"Mesh", !49, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !87, i64 280, !87, i64 480, !87, i64 680, !87, i64 880, !87, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !42, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!99 = !{!69, !41, i64 40}
!100 = !{!101, !37, i64 50}
!101 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !42, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !102, i64 64, !104, i64 168, !42, i64 336, !42, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !42, i64 472, !42, i64 476, !105, i64 480, !106, i64 608}
!102 = !{!"ImagePaintSettings", !103, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !42, i64 100}
!103 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!104 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !42, i64 128, !42, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!105 = !{!"UnifiedPaintSettings", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !42, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !42, i64 72, !37, i64 76, !36, i64 84, !42, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !42, i64 120, !36, i64 124}
!106 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!107 = !{!101, !39, i64 46}
!108 = !{!101, !37, i64 51}
!109 = !{!41, !41, i64 0}
!110 = !{!111, !39, i64 48}
!111 = !{!"BMFace", !91, i64 0, !41, i64 16, !41, i64 24, !36, i64 32, !37, i64 36, !39, i64 48}
!112 = !{!113, !41, i64 0}
!113 = !{!"MTexPoly", !41, i64 0, !37, i64 8, !37, i64 9, !39, i64 10, !39, i64 12, !39, i64 14}
!114 = !{!80, !41, i64 40}
!115 = !{!116, !41, i64 1584}
!116 = !{!"DerivedMesh", !87, i64 0, !87, i64 200, !87, i64 400, !87, i64 600, !87, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !41, i64 1032, !41, i64 1040, !36, i64 1048, !42, i64 1052, !36, i64 1056, !36, i64 1060, !41, i64 1064, !37, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!117 = !{!66, !66, i64 0}
!118 = !{!116, !41, i64 1680}
!119 = !{!120, !41, i64 0}
!120 = !{!"", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!121 = !{!120, !36, i64 8}
!122 = !{!120, !36, i64 12}
!123 = !{!120, !36, i64 16}
!124 = !{!120, !36, i64 20}
!125 = !{!69, !37, i64 10566}
!126 = !{!111, !36, i64 32}
!127 = !{!111, !41, i64 0}
!128 = distinct !{!128, !93, !94}
!129 = !{!91, !37, i64 13}
!130 = distinct !{!130, !93, !94}
!131 = distinct !{!131, !93, !94}
!132 = distinct !{!132, !93, !94}
!133 = distinct !{!133, !93, !94}
!134 = distinct !{!134, !93, !94}
!135 = distinct !{!135, !93, !94}
!136 = distinct !{!136, !93, !94}
!137 = !{!90, !41, i64 64}
!138 = !{!90, !41, i64 16}
!139 = distinct !{!139, !93, !94}
!140 = distinct !{!140, !93, !94}
!141 = distinct !{!141, !93, !94}
!142 = distinct !{!142, !93, !94}
!143 = !{!80, !36, i64 32}
!144 = !{!80, !41, i64 24}
!145 = !{!90, !41, i64 32}
!146 = distinct !{!146, !93, !94}
!147 = distinct !{!147, !93, !94}
!148 = distinct !{!148, !93, !94}
!149 = distinct !{!149, !93, !94}
!150 = !{!69, !37, i64 10564}
!151 = distinct !{!151, !93, !94}
!152 = distinct !{!152, !93, !94}
!153 = distinct !{!153, !93, !94}
!154 = !{!98, !36, i64 1344}
!155 = distinct !{!155, !93, !94}
!156 = distinct !{!156, !93, !94}
!157 = !{!90, !41, i64 56}
!158 = distinct !{!158, !93, !94}
!159 = distinct !{!159, !93, !94}
!160 = distinct !{!160, !93, !94}
!161 = distinct !{!161, !93, !94}
!162 = distinct !{!162, !93, !94}
!163 = distinct !{!163, !93, !94}
!164 = distinct !{!164, !93, !94}
!165 = !{!166, !36, i64 8}
!166 = !{!"MLoopUV", !37, i64 0, !36, i64 8}
!167 = distinct !{!167, !93, !94}
!168 = distinct !{!168, !93, !94}
!169 = distinct !{!169, !93, !94}
!170 = distinct !{!170, !93, !94}
!171 = !{!76, !36, i64 460}
!172 = !{!98, !41, i64 176}
!173 = !{!98, !41, i64 168}
!174 = !{!175, !41, i64 920}
!175 = !{!"Material", !49, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !176, i64 224, !177, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !39, i64 372, !39, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !39, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !39, i64 588, !39, i64 590, !41, i64 592, !41, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !39, i64 876, !39, i64 878, !36, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !41, i64 920, !40, i64 928}
!176 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!177 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!178 = !{!175, !39, i64 908}
!179 = !{!180, !41, i64 8}
!180 = !{!"TexPaintSlot", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20}
!181 = !{!98, !41, i64 192}
!182 = !{!98, !36, i64 1296}
!183 = !{!184, !36, i64 4}
!184 = !{!"MPoly", !36, i64 0, !36, i64 4, !39, i64 8, !37, i64 10, !37, i64 11}
!185 = !{!184, !36, i64 0}
!186 = distinct !{!186, !93, !94}
!187 = distinct !{!187, !93, !94}
!188 = !{!101, !36, i64 448}
!189 = !{!190, !41, i64 32}
!190 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!191 = !{!190, !36, i64 24}
!192 = !{!190, !36, i64 16}
!193 = !{!48, !36, i64 232}
!194 = !{!76, !37, i64 1160}
!195 = distinct !{!195, !93, !94}
!196 = distinct !{!196, !93, !94}
!197 = distinct !{!197, !93, !94}
!198 = !{!76, !36, i64 456}
!199 = !{!36, !36, i64 0}
!200 = distinct !{!200, !93, !94}
!201 = !{!184, !39, i64 8}
!202 = distinct !{!202, !93, !94}
