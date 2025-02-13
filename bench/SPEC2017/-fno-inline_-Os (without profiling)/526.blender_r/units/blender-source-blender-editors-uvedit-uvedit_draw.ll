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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.TexPaintSlot = type { ptr, ptr, i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.vec2f = type { float, float }
%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }
%struct.vec3f = type { float, float, float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@stipple_quarttone = external constant [128 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_scale_get_inverse(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !5
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !16
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fmul float %10, 2.560000e+02
  call fastcc void @mul_v2_fl(ptr noundef nonnull %3, float noundef %11) #15
  %12 = load float, ptr %3, align 4, !tbaa !17
  %13 = load float, ptr %5, align 4, !tbaa !17
  call void @cpack(i32 noundef 16777215) #14
  %14 = load float, ptr %1, align 4, !tbaa !17
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !17
  call void @glTranslatef(float noundef %14, float noundef %16, float noundef 0.000000e+00) #14
  %17 = fmul float %12, 0xBFA99999A0000000
  %18 = fmul float %13, 0x3FA99999A0000000
  call void @fdrawline(float noundef %17, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %18) #14
  %19 = fmul float %12, 0x3FA99999A0000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %18, float noundef %19, float noundef 0.000000e+00) #14
  %20 = fmul float %13, 0xBFA99999A0000000
  call void @fdrawline(float noundef %19, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %20) #14
  call void @fdrawline(float noundef 0.000000e+00, float noundef %20, float noundef %17, float noundef 0.000000e+00) #14
  call void @setlinestyle(i32 noundef 4) #14
  call void @cpack(i32 noundef 255) #14
  call void @fdrawline(float noundef %17, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %18) #14
  call void @fdrawline(float noundef 0.000000e+00, float noundef %18, float noundef %19, float noundef 0.000000e+00) #14
  call void @fdrawline(float noundef %19, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %20) #14
  call void @fdrawline(float noundef 0.000000e+00, float noundef %20, float noundef %17, float noundef 0.000000e+00) #14
  call void @setlinestyle(i32 noundef 0) #14
  call void @cpack(i32 noundef 0) #14
  %21 = fmul float %12, 0xBF947AE140000000
  %22 = fmul float %12, 0xBFB99999A0000000
  call void @fdrawline(float noundef %21, float noundef 0.000000e+00, float noundef %22, float noundef 0.000000e+00) #14
  %23 = fmul float %12, 0x3FB99999A0000000
  %24 = fmul float %12, 0x3F947AE140000000
  call void @fdrawline(float noundef %23, float noundef 0.000000e+00, float noundef %24, float noundef 0.000000e+00) #14
  %25 = fmul float %13, 0xBF947AE140000000
  %26 = fmul float %13, 0xBFB99999A0000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %25, float noundef 0.000000e+00, float noundef %26) #14
  %27 = fmul float %13, 0x3FB99999A0000000
  %28 = fmul float %13, 0x3F947AE140000000
  call void @fdrawline(float noundef 0.000000e+00, float noundef %27, float noundef 0.000000e+00, float noundef %28) #14
  call void @setlinestyle(i32 noundef 1) #14
  call void @cpack(i32 noundef 16777215) #14
  call void @fdrawline(float noundef %21, float noundef 0.000000e+00, float noundef %22, float noundef 0.000000e+00) #14
  call void @fdrawline(float noundef %23, float noundef 0.000000e+00, float noundef %24, float noundef 0.000000e+00) #14
  call void @fdrawline(float noundef 0.000000e+00, float noundef %25, float noundef 0.000000e+00, float noundef %26) #14
  call void @fdrawline(float noundef 0.000000e+00, float noundef %27, float noundef 0.000000e+00, float noundef %28) #14
  %29 = load float, ptr %1, align 4, !tbaa !17
  %30 = fneg float %29
  %31 = load float, ptr %15, align 4, !tbaa !17
  %32 = fneg float %31
  call void @glTranslatef(float noundef %30, float noundef %32, float noundef 0.000000e+00) #14
  call void @setlinestyle(i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @UI_view2d_scale_get_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !17
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_uvedit_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  %10 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %0, ptr noundef %3) #14
  call fastcc void @draw_uv_shadows_get(ptr noundef %0, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %6, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  %15 = load i8, ptr %7, align 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = icmp eq i8 %12, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = icmp eq i8 %10, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call fastcc void @draw_uvs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #15
  br label %25

23:                                               ; preds = %20
  tail call fastcc void @draw_uvs_texpaint(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %4) #15
  br label %31

24:                                               ; preds = %18
  tail call fastcc void @draw_uvs_shadow(ptr noundef %3) #15
  br i1 %11, label %25, label %31

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 64
  %27 = load i32, ptr %26, align 8, !tbaa !39
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 11
  tail call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %30) #15
  br label %31

31:                                               ; preds = %23, %24, %25, %29, %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uv_shadows_get(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  store i8 0, ptr %4, align 1, !tbaa !46
  store i8 0, ptr %3, align 1, !tbaa !46
  %6 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef %0) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 17
  %15 = load i8, ptr %14, align 4, !tbaa !53
  %16 = icmp eq i8 %15, 1
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !54
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #14
  %25 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %24) #14
  store i8 %25, ptr %3, align 1, !tbaa !46
  br label %26

26:                                               ; preds = %23, %19, %13
  %27 = icmp eq ptr %1, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !54
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = icmp eq i32 %34, 16
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %32, %28, %26
  %38 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %36, %32 ]
  store i8 %38, ptr %4, align 1, !tbaa !46
  br label %39

39:                                               ; preds = %5, %8, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_shadow(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 26
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 16) #14
  tail call void @UI_ThemeColor(i32 noundef 158) #14
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %4, i8 noundef zeroext 3, ptr noundef null) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %1 ]
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %10, i32 noundef %6) #15
  %11 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !60

13:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x float], align 4
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %1) #14
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 26
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 16) #14
  %23 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 27
  %24 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %23, i32 noundef 15) #14
  %25 = call ptr @EDBM_mtexpoly_active_get(ptr noundef nonnull %17, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %26 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = call fastcc i32 @draw_uvs_face_check(ptr noundef %1) #15, !range !67
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 11
  %30 = load i8, ptr %29, align 2, !tbaa !68
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !69
  %36 = and i16 %35, 1
  %37 = zext nneg i16 %36 to i32
  br label %43

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 12
  %40 = load i8, ptr %39, align 1, !tbaa !70
  %41 = icmp eq i8 %40, 1
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ %37, %33 ], [ %42, %38 ]
  %45 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !47
  %47 = and i32 %46, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %50 = icmp eq i8 %13, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %4, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.BMFace, ptr %52, i64 0, i32 5
  %56 = load i16, ptr %55, align 8, !tbaa !72
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %57, 1
  %59 = call zeroext i8 @ED_object_get_active_image(ptr noundef nonnull %2, i32 noundef %58, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %60 = load ptr, ptr %10, align 8, !tbaa !71
  br label %68

61:                                               ; preds = %51
  store ptr %20, ptr %10, align 8, !tbaa !71
  br label %68

62:                                               ; preds = %49
  %63 = icmp eq ptr %25, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %25, align 8, !tbaa !75
  br label %66

66:                                               ; preds = %62, %64
  %67 = phi ptr [ %65, %64 ], [ %20, %62 ]
  store ptr %67, ptr %10, align 8, !tbaa !71
  br label %68

68:                                               ; preds = %54, %61, %66
  %69 = phi ptr [ %60, %54 ], [ %20, %61 ], [ %67, %66 ]
  call fastcc void @draw_uvs_other(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %69, i8 noundef zeroext %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %70 = load i32, ptr %45, align 4, !tbaa !47
  br label %71

71:                                               ; preds = %68, %43
  %72 = phi i32 [ %70, %68 ], [ %46, %43 ]
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %104, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.BMEditMesh, ptr %17, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !77
  call void @DM_update_materials(ptr noundef %77, ptr noundef nonnull %2) #14
  %78 = load ptr, ptr %76, align 8, !tbaa !77
  %79 = call fastcc i32 @draw_uvs_dm_shadow(ptr noundef %78) #15, !range !78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load ptr, ptr %16, align 8, !tbaa !63
  %83 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !79
  %84 = or i64 %83, 32
  %85 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %82, ptr noundef nonnull %7, i64 noundef %84) #14
  %86 = load i8, ptr %29, align 2, !tbaa !68
  %87 = and i8 %86, 1
  %88 = icmp ne i8 %87, 0
  %89 = load ptr, ptr %7, align 8
  %90 = icmp eq ptr %85, %89
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %100, label %92

92:                                               ; preds = %81
  %93 = call fastcc i32 @draw_uvs_dm_shadow(ptr noundef %89) #15, !range !78
  %94 = load ptr, ptr %7, align 8, !tbaa !71
  %95 = icmp eq ptr %85, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %85, i64 0, i32 95
  %98 = load ptr, ptr %97, align 8, !tbaa !80
  call void %98(ptr noundef %85) #14
  %99 = load ptr, ptr %7, align 8, !tbaa !71
  br label %100

100:                                              ; preds = %81, %96, %92
  %101 = phi ptr [ %99, %96 ], [ %85, %92 ], [ %85, %81 ]
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %101, i64 0, i32 95
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  call void %103(ptr noundef %101) #14
  br label %104

104:                                              ; preds = %75, %100, %71
  %105 = load i32, ptr %45, align 4, !tbaa !47
  %106 = and i32 %105, 2097152
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call fastcc void @draw_uvs_stretch(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %17) #15
  br label %163

109:                                              ; preds = %104
  %110 = and i32 %105, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  call void @UI_GetThemeColor4ubv(i32 noundef 42, ptr noundef nonnull %8) #14
  call void @UI_GetThemeColor4ubv(i32 noundef 43, ptr noundef nonnull %9) #14
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  call void @glEnable(i32 noundef 3042) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  %113 = getelementptr inbounds %struct.BMEditMesh, ptr %17, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !82
  %114 = load i32, ptr %113, align 8, !tbaa !83
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %146, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.BMEditMesh, ptr %17, i64 0, i32 3
  %118 = sext i32 %24 to i64
  br label %119

119:                                              ; preds = %116, %141
  %120 = phi i32 [ 0, %116 ], [ %143, %141 ]
  %121 = load ptr, ptr %117, align 8, !tbaa !84
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds [3 x ptr], ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !71
  %125 = getelementptr inbounds %struct.BMLoop, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !85
  %127 = load ptr, ptr %126, align 8, !tbaa !87
  %128 = getelementptr inbounds i8, ptr %127, i64 %118
  %129 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %126, ptr noundef %128) #14
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %119
  %132 = call zeroext i8 @uvedit_face_select_test(ptr noundef %1, ptr noundef nonnull %126, i32 noundef %22) #14
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %126) #15
  %133 = icmp eq ptr %128, %25
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @glEnable(i32 noundef 2882) #14
  call void @glPolygonStipple(ptr noundef nonnull @stipple_quarttone) #14
  call void @UI_ThemeColor4(i32 noundef 127) #14
  br label %138

135:                                              ; preds = %131
  %136 = icmp eq i8 %132, 0
  %137 = select i1 %136, ptr %8, ptr %9
  call void @glColor4ubv(ptr noundef nonnull %137) #14
  br label %138

138:                                              ; preds = %135, %134
  call void @glBegin(i32 noundef 4) #14
  call fastcc void @draw_uvs_looptri(ptr noundef nonnull %17, ptr noundef nonnull %11, i32 noundef %22) #15
  call void @glEnd() #14
  br i1 %133, label %139, label %141

139:                                              ; preds = %138
  call void @glDisable(i32 noundef 2882) #14
  br label %141

140:                                              ; preds = %119
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %126) #15
  br label %141

141:                                              ; preds = %138, %139, %140
  %142 = load i32, ptr %11, align 4, !tbaa !82
  %143 = add i32 %142, 1
  store i32 %143, ptr %11, align 4, !tbaa !82
  %144 = load i32, ptr %113, align 8, !tbaa !83
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %119, label %146, !llvm.loop !88

146:                                              ; preds = %141, %112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @glDisable(i32 noundef 3042) #14
  br label %163

147:                                              ; preds = %109
  %148 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %149 = icmp eq ptr %148, null
  br i1 %149, label %163, label %150

150:                                              ; preds = %147
  %151 = sext i32 %24 to i64
  br label %152

152:                                              ; preds = %150, %160
  %153 = phi ptr [ %148, %150 ], [ %161, %160 ]
  %154 = load ptr, ptr %153, align 8, !tbaa !87
  %155 = getelementptr inbounds i8, ptr %154, i64 %151
  %156 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %153, ptr noundef %155) #14
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %153) #15
  br label %160

159:                                              ; preds = %152
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %153) #15
  br label %160

160:                                              ; preds = %158, %159
  %161 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %152, !llvm.loop !89

163:                                              ; preds = %160, %147, %146, %108
  %164 = load i32, ptr %45, align 4, !tbaa !47
  %165 = and i32 %164, 1048576
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call void @glEnable(i32 noundef 2848) #14
  call void @glEnable(i32 noundef 3042) #14
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  br label %168

168:                                              ; preds = %167, %163
  %169 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 22
  %170 = load i8, ptr %169, align 4, !tbaa !90
  switch i8 %170, label %291 [
    i8 1, label %171
    i8 0, label %198
    i8 3, label %185
    i8 2, label %186
  ]

171:                                              ; preds = %168
  %172 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %173 = icmp eq ptr %172, null
  br i1 %173, label %291, label %174

174:                                              ; preds = %171, %182
  %175 = phi ptr [ %183, %182 ], [ %172, %171 ]
  %176 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %175) #15
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %175, align 8, !tbaa !87
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @cpack(i32 noundef 1118481) #14
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %175, i32 noundef %22) #15
  call void @setlinestyle(i32 noundef 2) #14
  call void @cpack(i32 noundef 9474192) #14
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %175, i32 noundef %22) #15
  call void @setlinestyle(i32 noundef 0) #14
  br label %182

182:                                              ; preds = %178, %181, %174
  %183 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %184 = icmp eq ptr %183, null
  br i1 %184, label %291, label %174, !llvm.loop !91

185:                                              ; preds = %168
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  br label %187

186:                                              ; preds = %168
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  br label %187

187:                                              ; preds = %186, %185
  %188 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %189 = icmp eq ptr %188, null
  br i1 %189, label %291, label %190

190:                                              ; preds = %187, %195
  %191 = phi ptr [ %196, %195 ], [ %188, %187 ]
  %192 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %191) #15
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %191, i32 noundef %22) #15
  br label %195

195:                                              ; preds = %190, %194
  %196 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %197 = icmp eq ptr %196, null
  br i1 %197, label %291, label %190, !llvm.loop !92

198:                                              ; preds = %168
  call void @glLineWidth(float noundef 3.000000e+00) #14
  call void @cpack(i32 noundef 0) #14
  %199 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %200 = icmp eq ptr %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %198, %206
  %202 = phi ptr [ %207, %206 ], [ %199, %198 ]
  %203 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %202) #15
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %202, i32 noundef %22) #15
  br label %206

206:                                              ; preds = %201, %205
  %207 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %201, !llvm.loop !93

209:                                              ; preds = %206, %198
  call void @glLineWidth(float noundef 1.000000e+00) #14
  call void @UI_GetThemeColor4ubv(i32 noundef 27, ptr noundef nonnull %9) #14
  call void @glColor4ubv(ptr noundef nonnull %9) #14
  %210 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 36
  %211 = load i32, ptr %210, align 8, !tbaa !94
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %280, label %214

214:                                              ; preds = %209
  call void @UI_GetThemeColor4ubv(i32 noundef 39, ptr noundef nonnull %8) #14
  %215 = icmp eq i32 %44, 0
  br i1 %215, label %242, label %216

216:                                              ; preds = %214
  call void @glShadeModel(i32 noundef 7425) #14
  %217 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %218 = icmp eq ptr %217, null
  br i1 %218, label %241, label %219

219:                                              ; preds = %216
  %220 = sext i32 %22 to i64
  br label %221

221:                                              ; preds = %219, %238
  %222 = phi ptr [ %217, %219 ], [ %239, %238 ]
  %223 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %222) #15
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %238, label %225

225:                                              ; preds = %221
  call void @glBegin(i32 noundef 2) #14
  %226 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %222) #15
  %227 = icmp eq ptr %226, null
  br i1 %227, label %237, label %228

228:                                              ; preds = %225, %228
  %229 = phi ptr [ %235, %228 ], [ %226, %225 ]
  %230 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %229, i32 noundef %22) #14
  %231 = icmp eq i8 %230, 0
  %232 = select i1 %231, ptr %9, ptr %8
  call void @glColor4ubv(ptr noundef nonnull %232) #14
  %233 = load ptr, ptr %229, align 8, !tbaa !95
  %234 = getelementptr inbounds i8, ptr %233, i64 %220
  call void @glVertex2fv(ptr noundef %234) #14
  %235 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %228, !llvm.loop !96

237:                                              ; preds = %228, %225
  call void @glEnd() #14
  br label %238

238:                                              ; preds = %221, %237
  %239 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %221, !llvm.loop !97

241:                                              ; preds = %238, %216
  call void @glShadeModel(i32 noundef 7424) #14
  br label %291

242:                                              ; preds = %214
  %243 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %244 = icmp eq ptr %243, null
  br i1 %244, label %291, label %245

245:                                              ; preds = %242
  %246 = sext i32 %22 to i64
  br label %247

247:                                              ; preds = %245, %276
  %248 = phi i32 [ -1, %245 ], [ %277, %276 ]
  %249 = phi ptr [ %243, %245 ], [ %278, %276 ]
  %250 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %249) #15
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %276, label %252

252:                                              ; preds = %247
  call void @glBegin(i32 noundef 1) #14
  %253 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %249) #15
  %254 = icmp eq ptr %253, null
  br i1 %254, label %274, label %255

255:                                              ; preds = %252, %264
  %256 = phi i32 [ %265, %264 ], [ %248, %252 ]
  %257 = phi ptr [ %272, %264 ], [ %253, %252 ]
  %258 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %1, ptr noundef nonnull %257, i32 noundef %22) #14
  %259 = zext i8 %258 to i32
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = icmp eq i8 %258, 0
  %263 = select i1 %262, ptr %9, ptr %8
  call void @glColor4ubv(ptr noundef nonnull %263) #14
  br label %264

264:                                              ; preds = %261, %255
  %265 = phi i32 [ %259, %261 ], [ %256, %255 ]
  %266 = load ptr, ptr %257, align 8, !tbaa !95
  %267 = getelementptr inbounds i8, ptr %266, i64 %246
  call void @glVertex2fv(ptr noundef %267) #14
  %268 = getelementptr inbounds %struct.BMLoop, ptr %257, i64 0, i32 6
  %269 = load ptr, ptr %268, align 8, !tbaa !98
  %270 = load ptr, ptr %269, align 8, !tbaa !95
  %271 = getelementptr inbounds i8, ptr %270, i64 %246
  call void @glVertex2fv(ptr noundef %271) #14
  %272 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %255, !llvm.loop !99

274:                                              ; preds = %264, %252
  %275 = phi i32 [ %248, %252 ], [ %265, %264 ]
  call void @glEnd() #14
  br label %276

276:                                              ; preds = %247, %274
  %277 = phi i32 [ %275, %274 ], [ %248, %247 ]
  %278 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %279 = icmp eq ptr %278, null
  br i1 %279, label %291, label %247, !llvm.loop !100

280:                                              ; preds = %209
  %281 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %282 = icmp eq ptr %281, null
  br i1 %282, label %291, label %283

283:                                              ; preds = %280, %288
  %284 = phi ptr [ %289, %288 ], [ %281, %280 ]
  %285 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %284) #15
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call fastcc void @draw_uvs_lineloop_bmface(ptr noundef nonnull %284, i32 noundef %22) #15
  br label %288

288:                                              ; preds = %283, %287
  %289 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %283, !llvm.loop !101

291:                                              ; preds = %195, %276, %288, %182, %187, %242, %280, %171, %168, %241
  %292 = load i32, ptr %45, align 4, !tbaa !47
  %293 = and i32 %292, 1048576
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  call void @glDisable(i32 noundef 2848) #14
  call void @glDisable(i32 noundef 3042) #14
  br label %296

296:                                              ; preds = %295, %291
  %297 = icmp eq i32 %28, 0
  br i1 %297, label %329, label %298

298:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %299 = call float @UI_GetThemeValuef(i32 noundef 48) #14
  call void @glPointSize(float noundef %299) #14
  call void @UI_ThemeColor(i32 noundef 25) #14
  call void @bglBegin(i32 noundef 0) #14
  %300 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %301 = icmp eq ptr %300, null
  br i1 %301, label %313, label %302

302:                                              ; preds = %298, %310
  %303 = phi ptr [ %311, %310 ], [ %300, %298 ]
  %304 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %303) #15
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = call zeroext i8 @uvedit_face_select_test(ptr noundef %1, ptr noundef nonnull %303, i32 noundef %22) #14
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  call void @uv_poly_center(ptr noundef nonnull %303, ptr noundef nonnull %12, i32 noundef %22) #14
  call void @bglVertex2fv(ptr noundef nonnull %12) #14
  br label %310

310:                                              ; preds = %306, %309, %302
  %311 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %302, !llvm.loop !102

313:                                              ; preds = %310, %298
  call void @bglEnd() #14
  call void @UI_ThemeColor(i32 noundef 47) #14
  call void @bglBegin(i32 noundef 0) #14
  %314 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %315 = icmp eq ptr %314, null
  br i1 %315, label %327, label %316

316:                                              ; preds = %313, %324
  %317 = phi ptr [ %325, %324 ], [ %314, %313 ]
  %318 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %317) #15
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %316
  %321 = call zeroext i8 @uvedit_face_select_test(ptr noundef %1, ptr noundef nonnull %317, i32 noundef %22) #14
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  call void @uv_poly_center(ptr noundef nonnull %317, ptr noundef nonnull %12, i32 noundef %22) #14
  call void @bglVertex2fv(ptr noundef nonnull %12) #14
  br label %324

324:                                              ; preds = %320, %323, %316
  %325 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %316, !llvm.loop !103

327:                                              ; preds = %324, %313
  call void @bglEnd() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %328 = icmp eq i32 %28, 2
  br i1 %328, label %413, label %329

329:                                              ; preds = %296, %327
  call void @UI_ThemeColor(i32 noundef 33) #14
  %330 = call float @UI_GetThemeValuef(i32 noundef 36) #14
  call void @glPointSize(float noundef %330) #14
  call void @bglBegin(i32 noundef 0) #14
  %331 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %332 = icmp eq ptr %331, null
  br i1 %332, label %355, label %333

333:                                              ; preds = %329
  %334 = sext i32 %22 to i64
  br label %335

335:                                              ; preds = %333, %352
  %336 = phi ptr [ %331, %333 ], [ %353, %352 ]
  %337 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %336) #15
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %352, label %339

339:                                              ; preds = %335
  %340 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %336) #15
  %341 = icmp eq ptr %340, null
  br i1 %341, label %352, label %342

342:                                              ; preds = %339, %349
  %343 = phi ptr [ %350, %349 ], [ %340, %339 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !95
  %345 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %343, i32 noundef %22) #14
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = getelementptr inbounds i8, ptr %344, i64 %334
  call void @bglVertex2fv(ptr noundef %348) #14
  br label %349

349:                                              ; preds = %342, %347
  %350 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %342, !llvm.loop !104

352:                                              ; preds = %349, %339, %335
  %353 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %335, !llvm.loop !105

355:                                              ; preds = %352, %329
  call void @bglEnd() #14
  %356 = fptosi float %330 to i32
  %357 = and i32 %356, 1
  %358 = sub nsw i32 0, %357
  %359 = sitofp i32 %358 to float
  %360 = call float @llvm.fmuladd.f32(float %330, float 2.000000e+00, float %359)
  call void @glPointSize(float noundef %360) #14
  call void @cpack(i32 noundef 255) #14
  call void @bglBegin(i32 noundef 0) #14
  %361 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %362 = icmp eq ptr %361, null
  br i1 %362, label %387, label %363

363:                                              ; preds = %355
  %364 = sext i32 %22 to i64
  br label %365

365:                                              ; preds = %363, %384
  %366 = phi ptr [ %361, %363 ], [ %385, %384 ]
  %367 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %366) #15
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %384, label %369

369:                                              ; preds = %365
  %370 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %366) #15
  %371 = icmp eq ptr %370, null
  br i1 %371, label %384, label %372

372:                                              ; preds = %369, %381
  %373 = phi ptr [ %382, %381 ], [ %370, %369 ]
  %374 = load ptr, ptr %373, align 8, !tbaa !95
  %375 = getelementptr inbounds i8, ptr %374, i64 %364
  %376 = getelementptr inbounds %struct.MLoopUV, ptr %375, i64 0, i32 1
  %377 = load i32, ptr %376, align 4, !tbaa !106
  %378 = and i32 %377, 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %372
  call void @bglVertex2fv(ptr noundef nonnull %375) #14
  br label %381

381:                                              ; preds = %372, %380
  %382 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %372, !llvm.loop !108

384:                                              ; preds = %381, %369, %365
  %385 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %365, !llvm.loop !109

387:                                              ; preds = %384, %355
  call void @bglEnd() #14
  call void @UI_ThemeColor(i32 noundef 34) #14
  call void @glPointSize(float noundef %330) #14
  call void @bglBegin(i32 noundef 0) #14
  %388 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #15
  %389 = icmp eq ptr %388, null
  br i1 %389, label %412, label %390

390:                                              ; preds = %387
  %391 = sext i32 %22 to i64
  br label %392

392:                                              ; preds = %390, %409
  %393 = phi ptr [ %388, %390 ], [ %410, %409 ]
  %394 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %393) #15
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %409, label %396

396:                                              ; preds = %392
  %397 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %393) #15
  %398 = icmp eq ptr %397, null
  br i1 %398, label %409, label %399

399:                                              ; preds = %396, %406
  %400 = phi ptr [ %407, %406 ], [ %397, %396 ]
  %401 = load ptr, ptr %400, align 8, !tbaa !95
  %402 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %400, i32 noundef %22) #14
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds i8, ptr %401, i64 %391
  call void @bglVertex2fv(ptr noundef %405) #14
  br label %406

406:                                              ; preds = %399, %404
  %407 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %399, !llvm.loop !110

409:                                              ; preds = %406, %396, %392
  %410 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %392, !llvm.loop !111

412:                                              ; preds = %409, %387
  call void @bglEnd() #14
  br label %413

413:                                              ; preds = %412, %327
  call void @glPointSize(float noundef 1.000000e+00) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_texpaint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %1) #14
  %5 = tail call ptr @ED_space_image(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !47
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call fastcc void @draw_uvs_other(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %5, i8 noundef zeroext %4) #15
  br label %13

13:                                               ; preds = %12, %3
  tail call void @UI_ThemeColor(i32 noundef 158) #14
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !112
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @give_current_material(ptr noundef nonnull %2, i16 noundef signext %16) #14
  %18 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = icmp eq ptr %19, null
  br i1 %20, label %69, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = icmp eq ptr %17, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 135
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 131
  %31 = load i16, ptr %30, align 4, !tbaa !119
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.TexPaintSlot, ptr %27, i64 %32, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %38 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %37, i32 noundef 16, ptr noundef nonnull %34) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %29, %25, %21
  %41 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !122
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !123
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43, %65
  %49 = phi i32 [ %66, %65 ], [ %46, %43 ]
  %50 = phi ptr [ %67, %65 ], [ %23, %43 ]
  tail call void @glBegin(i32 noundef 2) #14
  %51 = getelementptr inbounds %struct.MPoly, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !124
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, ptr %50, align 4, !tbaa !126
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.MLoopUV, ptr %44, i64 %56
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi i32 [ %61, %58 ], [ 0, %54 ]
  %60 = phi ptr [ %62, %58 ], [ %57, %54 ]
  tail call void @glVertex2fv(ptr noundef %60) #14
  %61 = add nuw nsw i32 %59, 1
  %62 = getelementptr inbounds %struct.MLoopUV, ptr %60, i64 1
  %63 = load i32, ptr %51, align 4, !tbaa !124
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %58, label %65, !llvm.loop !127

65:                                               ; preds = %58, %48
  tail call void @glEnd() #14
  %66 = add nsw i32 %49, -1
  %67 = getelementptr inbounds %struct.MPoly, ptr %50, i64 1
  %68 = icmp sgt i32 %49, 1
  br i1 %68, label %48, label %69, !llvm.loop !128

69:                                               ; preds = %65, %43, %13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #15
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #15
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_lineloop_bmface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  tail call void @glBegin(i32 noundef 2) #14
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %4, %6 ], [ %12, %8 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  call void @glVertex2fv(ptr noundef %11) #14
  %12 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !129

14:                                               ; preds = %8, %2
  call void @glEnd() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = tail call ptr %3(ptr noundef %0) #14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !132
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %19 [
    i8 11, label %18
    i8 10, label %17
    i8 3, label %8
    i8 4, label %11
    i8 5, label %12
    i8 6, label %13
    i8 7, label %14
    i8 8, label %15
    i8 9, label %16
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !130
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !130
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !130
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !130
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !130
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !130
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !130
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !130
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !130
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !46
  tail call void %22(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_mtexpoly_active_get(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @draw_uvs_face_check(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 11
  %5 = load i8, ptr %4, align 2, !tbaa !68
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !69
  %11 = icmp eq i16 %10, 4
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = lshr i16 %10, 2
  %14 = and i16 %13, 1
  %15 = zext nneg i16 %14 to i32
  br label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 12
  %18 = load i8, ptr %17, align 1, !tbaa !70
  %19 = icmp eq i8 %18, 4
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %12, %8, %16
  %22 = phi i32 [ %20, %16 ], [ 2, %8 ], [ %15, %12 ]
  ret i32 %22
}

; Function Attrs: optsize
declare zeroext i8 @ED_object_get_active_image(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_other(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  tail call void @UI_ThemeColor(i32 noundef 159) #14
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  br label %10

10:                                               ; preds = %8, %42
  %11 = phi ptr [ %6, %8 ], [ %43, %42 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !138
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !139
  %21 = load i32, ptr %9, align 8, !tbaa !140
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 102
  %26 = load i8, ptr %25, align 8, !tbaa !141
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !54
  %32 = icmp ne i16 %31, 1
  %33 = icmp eq ptr %13, %1
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !122
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call fastcc void @draw_uvs_other_mesh(ptr noundef nonnull %13, ptr noundef %2, i8 noundef zeroext %3) #15
  br label %42

42:                                               ; preds = %29, %35, %41, %24, %18, %10
  %43 = load ptr, ptr %11, align 8, !tbaa !71
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %10, !llvm.loop !142

45:                                               ; preds = %42, %4
  ret void
}

; Function Attrs: optsize
declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @draw_uvs_dm_shadow(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 83
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 16) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @UI_ThemeColor(i32 noundef 158) #14
  %12 = load ptr, ptr %4, align 8, !tbaa !143
  tail call void %12(ptr noundef nonnull %0) #14
  br label %13

13:                                               ; preds = %1, %3, %7, %11
  %14 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_stretch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [32 x %struct.vec2f], align 16
  %10 = alloca %struct.BLI_Buffer, align 8
  %11 = alloca [32 x %struct.vec2f], align 16
  %12 = alloca %struct.BLI_Buffer, align 8
  %13 = alloca [32 x float], align 16
  %14 = alloca %struct.BLI_Buffer, align 8
  %15 = alloca [32 x float], align 16
  %16 = alloca %struct.BLI_Buffer, align 8
  %17 = alloca [32 x %struct.vec3f], align 16
  %18 = alloca %struct.BLI_Buffer, align 8
  %19 = alloca [32 x %struct.vec2f], align 16
  %20 = alloca %struct.BLI_Buffer, align 8
  %21 = load ptr, ptr %2, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %22 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %24 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 26
  %25 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %24, i32 noundef 16) #14
  %26 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 27
  %27 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %26, i32 noundef 15) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  store ptr %9, ptr %10, align 8, !tbaa !144
  %28 = getelementptr inbounds %struct.BLI_Buffer, ptr %10, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 32, i32 1>, ptr %28, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  store ptr %11, ptr %12, align 8, !tbaa !144
  %29 = getelementptr inbounds %struct.BLI_Buffer, ptr %12, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 32, i32 1>, ptr %29, align 8, !tbaa !82
  call void @ED_space_image_get_uv_aspect(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 24
  %31 = load i8, ptr %30, align 2, !tbaa !146
  switch i8 %31, label %285 [
    i8 1, label %32
    i8 0, label %167
  ]

32:                                               ; preds = %3
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 3, ptr noundef null) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %82, label %35

35:                                               ; preds = %32
  %36 = sext i32 %27 to i64
  %37 = sext i32 %25 to i64
  br label %38

38:                                               ; preds = %35, %75
  %39 = phi ptr [ %33, %35 ], [ %76, %75 ]
  %40 = phi float [ 0.000000e+00, %35 ], [ %67, %75 ]
  %41 = phi float [ 0.000000e+00, %35 ], [ %70, %75 ]
  %42 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !147
  call void @BLI_buffer_resize(ptr noundef nonnull %10, i32 noundef %43) #14
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %10, align 8
  %46 = select i1 %44, ptr null, ptr %45
  call void @BLI_buffer_resize(ptr noundef nonnull %12, i32 noundef %43) #14
  %47 = load ptr, ptr %12, align 8
  %48 = select i1 %44, ptr null, ptr %47
  %49 = load ptr, ptr %39, align 8, !tbaa !87
  %50 = getelementptr inbounds i8, ptr %49, i64 %36
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %39) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %38, %53
  %54 = phi i64 [ %60, %53 ], [ 0, %38 ]
  %55 = phi ptr [ %59, %53 ], [ %51, %38 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !95
  %57 = getelementptr inbounds i8, ptr %56, i64 %37
  %58 = getelementptr inbounds [2 x float], ptr %48, i64 %54
  call fastcc void @copy_v2_v2(ptr noundef %58, ptr noundef %57) #15
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %60 = add nuw i64 %54, 1
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %53, !llvm.loop !148

62:                                               ; preds = %53, %38
  %63 = load float, ptr %6, align 4, !tbaa !17
  %64 = load float, ptr %7, align 4, !tbaa !17
  %65 = load i32, ptr %42, align 8, !tbaa !147
  call void @uv_poly_copy_aspect(ptr noundef %48, ptr noundef %46, float noundef %63, float noundef %64, i32 noundef %65) #14
  %66 = call float @BM_face_calc_area(ptr noundef nonnull %39) #14
  %67 = fadd float %40, %66
  %68 = load i32, ptr %42, align 8, !tbaa !147
  %69 = call float @area_poly_v2(ptr noundef %46, i32 noundef %68) #14
  %70 = fadd float %41, %69
  %71 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %23, ptr noundef nonnull %39, ptr noundef %50) #14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %39) #15
  br label %75

74:                                               ; preds = %62
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %39) #15
  br label %75

75:                                               ; preds = %74, %73
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %38, !llvm.loop !149

78:                                               ; preds = %75
  %79 = fcmp olt float %67, 0x3E80000000000000
  %80 = fcmp olt float %70, 0x3E80000000000000
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %32, %78
  %83 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %83, align 8, !tbaa !17
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !17
  call void @glColor3fv(ptr noundef nonnull %8) #14
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 3, ptr noundef null) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %285, label %86

86:                                               ; preds = %82
  %87 = sext i32 %25 to i64
  br label %88

88:                                               ; preds = %86, %102
  %89 = phi ptr [ %84, %86 ], [ %103, %102 ]
  %90 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %89) #15
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %88
  call void @glBegin(i32 noundef 9) #14
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %89) #15
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %92, %95
  %96 = phi ptr [ %99, %95 ], [ %93, %92 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !95
  %98 = getelementptr inbounds i8, ptr %97, i64 %87
  call void @glVertex2fv(ptr noundef %98) #14
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %95, !llvm.loop !150

101:                                              ; preds = %95, %92
  call void @glEnd() #14
  br label %102

102:                                              ; preds = %88, %101
  %103 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %104 = icmp eq ptr %103, null
  br i1 %104, label %285, label %88, !llvm.loop !151

105:                                              ; preds = %78
  %106 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 3, ptr noundef null) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %285, label %108

108:                                              ; preds = %105
  %109 = sext i32 %25 to i64
  br label %110

110:                                              ; preds = %108, %164
  %111 = phi ptr [ %106, %108 ], [ %165, %164 ]
  %112 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %111) #15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %164, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.BMFace, ptr %111, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !147
  call void @BLI_buffer_resize(ptr noundef nonnull %10, i32 noundef %116) #14
  %117 = icmp eq i32 %116, 0
  %118 = load ptr, ptr %10, align 8
  %119 = select i1 %117, ptr null, ptr %118
  call void @BLI_buffer_resize(ptr noundef nonnull %12, i32 noundef %116) #14
  %120 = load ptr, ptr %12, align 8
  %121 = select i1 %117, ptr null, ptr %120
  %122 = call float @BM_face_calc_area(ptr noundef nonnull %111) #14
  %123 = fdiv float %122, %67
  %124 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %111) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %114, %126
  %127 = phi i64 [ %133, %126 ], [ 0, %114 ]
  %128 = phi ptr [ %132, %126 ], [ %124, %114 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !95
  %130 = getelementptr inbounds i8, ptr %129, i64 %109
  %131 = getelementptr inbounds [2 x float], ptr %121, i64 %127
  call fastcc void @copy_v2_v2(ptr noundef %131, ptr noundef %130) #15
  %132 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %133 = add nuw i64 %127, 1
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %126, !llvm.loop !152

135:                                              ; preds = %126, %114
  %136 = load float, ptr %6, align 4, !tbaa !17
  %137 = load float, ptr %7, align 4, !tbaa !17
  %138 = load i32, ptr %115, align 8, !tbaa !147
  call void @uv_poly_copy_aspect(ptr noundef %121, ptr noundef %119, float noundef %136, float noundef %137, i32 noundef %138) #14
  %139 = load i32, ptr %115, align 8, !tbaa !147
  %140 = call float @area_poly_v2(ptr noundef %119, i32 noundef %139) #14
  %141 = fdiv float %140, %70
  %142 = fcmp olt float %123, 0x3E80000000000000
  %143 = fcmp olt float %141, 0x3E80000000000000
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %135
  %146 = fcmp ogt float %123, %141
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = fdiv float %141, %123
  %149 = fsub float 1.000000e+00, %148
  br label %153

150:                                              ; preds = %145
  %151 = fdiv float %123, %141
  %152 = fsub float 1.000000e+00, %151
  br label %153

153:                                              ; preds = %135, %147, %150
  %154 = phi float [ %149, %147 ], [ %152, %150 ], [ 1.000000e+00, %135 ]
  call void @weight_to_rgb(ptr noundef nonnull %8, float noundef %154) #14
  call void @glColor3fv(ptr noundef nonnull %8) #14
  call void @glBegin(i32 noundef 9) #14
  %155 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %111) #15
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %153, %157
  %158 = phi ptr [ %161, %157 ], [ %155, %153 ]
  %159 = load ptr, ptr %158, align 8, !tbaa !95
  %160 = getelementptr inbounds i8, ptr %159, i64 %109
  call void @glVertex2fv(ptr noundef %160) #14
  %161 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %157, !llvm.loop !153

163:                                              ; preds = %157, %153
  call void @glEnd() #14
  br label %164

164:                                              ; preds = %110, %163
  %165 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %166 = icmp eq ptr %165, null
  br i1 %166, label %285, label %110, !llvm.loop !154

167:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  store ptr %13, ptr %14, align 8, !tbaa !144
  %168 = getelementptr inbounds %struct.BLI_Buffer, ptr %14, i64 0, i32 1
  store <4 x i32> <i32 4, i32 0, i32 32, i32 1>, ptr %168, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  store ptr %15, ptr %16, align 8, !tbaa !144
  %169 = getelementptr inbounds %struct.BLI_Buffer, ptr %16, i64 0, i32 1
  store <4 x i32> <i32 4, i32 0, i32 32, i32 1>, ptr %169, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #13
  store ptr %17, ptr %18, align 8, !tbaa !144
  %170 = getelementptr inbounds %struct.BLI_Buffer, ptr %18, i64 0, i32 1
  store <4 x i32> <i32 12, i32 0, i32 32, i32 1>, ptr %170, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #13
  store ptr %19, ptr %20, align 8, !tbaa !144
  %171 = getelementptr inbounds %struct.BLI_Buffer, ptr %20, i64 0, i32 1
  store <4 x i32> <i32 8, i32 0, i32 32, i32 1>, ptr %171, align 8, !tbaa !82
  %172 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 5.000000e-01, ptr %172, align 4, !tbaa !17
  call void @glShadeModel(i32 noundef 7425) #14
  %173 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 3, ptr noundef null) #15
  %174 = icmp eq ptr %173, null
  br i1 %174, label %284, label %175

175:                                              ; preds = %167
  %176 = sext i32 %27 to i64
  %177 = sext i32 %25 to i64
  br label %178

178:                                              ; preds = %175, %281
  %179 = phi ptr [ %173, %175 ], [ %282, %281 ]
  %180 = load ptr, ptr %179, align 8, !tbaa !87
  %181 = getelementptr inbounds i8, ptr %180, i64 %176
  %182 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %23, ptr noundef nonnull %179, ptr noundef %181) #14
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %280, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.BMFace, ptr %179, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !147
  call void @BLI_buffer_resize(ptr noundef nonnull %10, i32 noundef %186) #14
  %187 = icmp eq i32 %186, 0
  %188 = load ptr, ptr %10, align 8
  %189 = select i1 %187, ptr null, ptr %188
  call void @BLI_buffer_resize(ptr noundef nonnull %12, i32 noundef %186) #14
  %190 = load ptr, ptr %12, align 8
  %191 = select i1 %187, ptr null, ptr %190
  call void @BLI_buffer_resize(ptr noundef nonnull %14, i32 noundef %186) #14
  %192 = load ptr, ptr %14, align 8
  %193 = select i1 %187, ptr null, ptr %192
  call void @BLI_buffer_resize(ptr noundef nonnull %16, i32 noundef %186) #14
  %194 = load ptr, ptr %16, align 8
  %195 = select i1 %187, ptr null, ptr %194
  call void @BLI_buffer_resize(ptr noundef nonnull %18, i32 noundef %186) #14
  %196 = load ptr, ptr %18, align 8
  %197 = select i1 %187, ptr null, ptr %196
  call void @BLI_buffer_resize(ptr noundef nonnull %20, i32 noundef %186) #14
  %198 = load ptr, ptr %20, align 8
  %199 = select i1 %187, ptr null, ptr %198
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %179) #15
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %179) #15
  %201 = icmp eq ptr %200, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %184, %202
  %203 = phi i64 [ %209, %202 ], [ 0, %184 ]
  %204 = phi ptr [ %208, %202 ], [ %200, %184 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !95
  %206 = getelementptr inbounds i8, ptr %205, i64 %177
  %207 = getelementptr inbounds [2 x float], ptr %191, i64 %203
  call fastcc void @copy_v2_v2(ptr noundef %207, ptr noundef %206) #15
  %208 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %209 = add nuw i64 %203, 1
  %210 = icmp eq ptr %208, null
  br i1 %210, label %211, label %202, !llvm.loop !155

211:                                              ; preds = %202, %184
  %212 = load float, ptr %6, align 4, !tbaa !17
  %213 = load float, ptr %7, align 4, !tbaa !17
  call void @uv_poly_copy_aspect(ptr noundef %191, ptr noundef %189, float noundef %212, float noundef %213, i32 noundef %186) #14
  %214 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %179) #15
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = add nsw i32 %186, -1
  br label %222

218:                                              ; preds = %222, %211
  %219 = icmp sgt i32 %186, 0
  br i1 %219, label %220, label %258

220:                                              ; preds = %218
  %221 = zext nneg i32 %186 to i64
  br label %243

222:                                              ; preds = %216, %222
  %223 = phi i64 [ 0, %216 ], [ %240, %222 ]
  %224 = phi i32 [ %217, %216 ], [ %242, %222 ]
  %225 = phi ptr [ %214, %216 ], [ %239, %222 ]
  %226 = getelementptr inbounds [2 x float], ptr %199, i64 %223
  %227 = sext i32 %224 to i64
  %228 = getelementptr inbounds [2 x float], ptr %189, i64 %227
  %229 = getelementptr inbounds [2 x float], ptr %189, i64 %223
  call fastcc void @sub_v2_v2v2(ptr noundef %226, ptr noundef %228, ptr noundef %229) #15
  call fastcc void @normalize_v2(ptr noundef %226) #15
  %230 = getelementptr inbounds [3 x float], ptr %197, i64 %223
  %231 = getelementptr inbounds %struct.BMLoop, ptr %225, i64 0, i32 7
  %232 = load ptr, ptr %231, align 8, !tbaa !156
  %233 = getelementptr inbounds %struct.BMLoop, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !157
  %235 = getelementptr inbounds %struct.BMVert, ptr %234, i64 0, i32 2
  %236 = getelementptr inbounds %struct.BMLoop, ptr %225, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !157
  %238 = getelementptr inbounds %struct.BMVert, ptr %237, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef %230, ptr noundef nonnull %235, ptr noundef nonnull %238) #15
  call fastcc void @normalize_v3(ptr noundef %230) #15
  %239 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %240 = add nuw i64 %223, 1
  %241 = icmp eq ptr %239, null
  %242 = trunc i64 %223 to i32
  br i1 %241, label %218, label %222, !llvm.loop !158

243:                                              ; preds = %220, %243
  %244 = phi i64 [ 0, %220 ], [ %246, %243 ]
  %245 = getelementptr inbounds [2 x float], ptr %199, i64 %244
  %246 = add nuw nsw i64 %244, 1
  %247 = icmp eq i64 %246, %221
  %248 = and i64 %246, 4294967295
  %249 = select i1 %247, i64 0, i64 %248
  %250 = getelementptr inbounds [2 x float], ptr %199, i64 %249
  %251 = call float @angle_normalized_v2v2(ptr noundef %245, ptr noundef %250) #14
  %252 = getelementptr inbounds float, ptr %193, i64 %244
  store float %251, ptr %252, align 4, !tbaa !17
  %253 = getelementptr inbounds [3 x float], ptr %197, i64 %244
  %254 = getelementptr inbounds [3 x float], ptr %197, i64 %249
  %255 = call float @angle_normalized_v3v3(ptr noundef %253, ptr noundef %254) #14
  %256 = getelementptr inbounds float, ptr %195, i64 %244
  store float %255, ptr %256, align 4, !tbaa !17
  %257 = icmp eq i64 %246, %221
  br i1 %257, label %258, label %243, !llvm.loop !159

258:                                              ; preds = %243, %218
  call void @glBegin(i32 noundef 9) #14
  %259 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %179) #15
  %260 = icmp eq ptr %259, null
  br i1 %260, label %279, label %261

261:                                              ; preds = %258, %261
  %262 = phi i64 [ %277, %261 ], [ 0, %258 ]
  %263 = phi ptr [ %276, %261 ], [ %259, %258 ]
  %264 = load ptr, ptr %263, align 8, !tbaa !95
  %265 = getelementptr inbounds i8, ptr %264, i64 %177
  %266 = getelementptr inbounds float, ptr %193, i64 %262
  %267 = load float, ptr %266, align 4, !tbaa !17
  %268 = getelementptr inbounds float, ptr %195, i64 %262
  %269 = load float, ptr %268, align 4, !tbaa !17
  %270 = fsub float %267, %269
  %271 = call float @llvm.fabs.f32(float %270)
  %272 = fdiv float %271, 0x400921FB60000000
  %273 = fsub float 1.000000e+00, %272
  %274 = fmul float %273, %273
  %275 = fsub float 1.000000e+00, %274
  call void @weight_to_rgb(ptr noundef nonnull %8, float noundef %275) #14
  call void @glColor3fv(ptr noundef nonnull %8) #14
  call void @glVertex2fv(ptr noundef %265) #14
  %276 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %277 = add nuw i64 %262, 1
  %278 = icmp eq ptr %276, null
  br i1 %278, label %279, label %261, !llvm.loop !160

279:                                              ; preds = %261, %258
  call void @glEnd() #14
  br label %281

280:                                              ; preds = %178
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %179) #15
  br label %281

281:                                              ; preds = %279, %280
  %282 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %178, !llvm.loop !161

284:                                              ; preds = %281, %167
  call void @_bli_buffer_free(ptr noundef nonnull %14) #14
  call void @_bli_buffer_free(ptr noundef nonnull %16) #14
  call void @_bli_buffer_free(ptr noundef nonnull %18) #14
  call void @_bli_buffer_free(ptr noundef nonnull %20) #14
  call void @glShadeModel(i32 noundef 7424) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #13
  br label %285

285:                                              ; preds = %164, %102, %105, %82, %3, %284
  call void @_bli_buffer_free(ptr noundef nonnull %10) #14
  call void @_bli_buffer_free(ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_face_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !162
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !162
  ret void
}

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_looptri(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !82
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds [3 x ptr], ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %30, %3
  %15 = phi i32 [ %4, %3 ], [ %27, %30 ]
  %16 = zext i32 %15 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %24, %17 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !84
  %20 = getelementptr inbounds [3 x ptr], ptr %19, i64 %16, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds i8, ptr %22, i64 %12
  tail call void @glVertex2fv(ptr noundef %23) #14
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %17, !llvm.loop !163

26:                                               ; preds = %17
  %27 = add i32 %15, 1
  %28 = load i32, ptr %13, align 8, !tbaa !83
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8, !tbaa !84
  %32 = zext i32 %27 to i64
  %33 = getelementptr inbounds [3 x ptr], ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  %37 = icmp eq ptr %11, %36
  br i1 %37, label %14, label %38, !llvm.loop !164

38:                                               ; preds = %26, %30
  store i32 %15, ptr %1, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !162
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !162
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_edge_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uv_poly_center(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_other_mesh(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @draw_uvs_other_mesh_new_shading(ptr noundef %0, ptr noundef %1) #15
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @draw_uvs_other_mesh_texface(ptr noundef %0, ptr noundef %1) #15
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_other_mesh_new_shading(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %2
  %12 = icmp ne ptr %1, null
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %14 = load i32, ptr %13, align 8, !tbaa !165
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %79, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %19 = tail call fastcc i32 @max_ii(i32 noundef %14) #15
  %20 = ashr i32 %19, 5
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = alloca i8, i64 %23, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %24, i8 0, i64 %23, i1 false)
  %25 = icmp sgt i32 %19, 0
  br i1 %25, label %26, label %79

26:                                               ; preds = %17, %43
  %27 = phi i1 [ false, %43 ], [ true, %17 ]
  %28 = phi i32 [ %51, %43 ], [ 0, %17 ]
  br label %29

29:                                               ; preds = %26, %40
  %30 = phi i32 [ %41, %40 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %31 = load i32, ptr %18, align 8, !tbaa !165
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = add nuw nsw i32 %30, 1
  %35 = call zeroext i8 @ED_object_get_active_image(ptr noundef nonnull %0, i32 noundef %34, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %36 = load ptr, ptr %3, align 8, !tbaa !71
  br label %37

37:                                               ; preds = %29, %33
  %38 = phi ptr [ %36, %33 ], [ null, %29 ]
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %41 = add nuw nsw i32 %30, 1
  %42 = icmp eq i32 %41, %19
  br i1 %42, label %53, label %29, !llvm.loop !166

43:                                               ; preds = %37
  %44 = and i32 %30, 31
  %45 = shl nuw i32 1, %44
  %46 = lshr i32 %30, 5
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %24, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !82
  %50 = or i32 %49, %45
  store i32 %50, ptr %48, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %51 = add nuw nsw i32 %30, 1
  %52 = icmp eq i32 %51, %19
  br i1 %52, label %54, label %26, !llvm.loop !166

53:                                               ; preds = %40
  br i1 %27, label %79, label %54

54:                                               ; preds = %43, %53
  %55 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 30
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %54, %75
  %59 = phi ptr [ %77, %75 ], [ %7, %54 ]
  %60 = phi i32 [ %76, %75 ], [ %56, %54 ]
  %61 = getelementptr inbounds %struct.MPoly, ptr %59, i64 0, i32 2
  %62 = load i16, ptr %61, align 4, !tbaa !167
  %63 = sext i16 %62 to i32
  %64 = icmp sgt i32 %19, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = ashr i32 %63, 5
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %24, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !82
  %70 = and i32 %63, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  call fastcc void @draw_uvs_lineloop_mpoly(ptr noundef %5, ptr noundef nonnull %59) #15
  br label %75

75:                                               ; preds = %58, %65, %74
  %76 = add nsw i32 %60, -1
  %77 = getelementptr inbounds %struct.MPoly, ptr %59, i64 1
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %58, !llvm.loop !168

79:                                               ; preds = %75, %11, %17, %54, %53, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_other_mesh_texface(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !123
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  br label %17

17:                                               ; preds = %12, %24
  %18 = phi i32 [ %25, %24 ], [ %10, %12 ]
  %19 = phi ptr [ %27, %24 ], [ %16, %12 ]
  %20 = phi ptr [ %26, %24 ], [ %14, %12 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !75
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call fastcc void @draw_uvs_lineloop_mpoly(ptr noundef %4, ptr noundef %20) #15
  br label %24

24:                                               ; preds = %17, %23
  %25 = add nsw i32 %18, -1
  %26 = getelementptr inbounds %struct.MPoly, ptr %20, i64 1
  %27 = getelementptr inbounds %struct.MTexPoly, ptr %19, i64 1
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %17, !llvm.loop !169

29:                                               ; preds = %24, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_uvs_lineloop_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 2) #14
  %3 = getelementptr inbounds %struct.MPoly, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !124
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = load i32, ptr %1, align 4, !tbaa !126
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MLoopUV, ptr %8, i64 %10
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %15, %12 ], [ %4, %6 ]
  %14 = phi ptr [ %16, %12 ], [ %11, %6 ]
  tail call void @glVertex2fv(ptr noundef %14) #14
  %15 = add nsw i32 %13, -1
  %16 = getelementptr inbounds %struct.MLoopUV, ptr %14, i64 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %12, !llvm.loop !170

18:                                               ; preds = %12, %2
  tail call void @glEnd() #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !17
  store float %3, ptr %0, align 4, !tbaa !17
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !17
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @uv_poly_copy_aspect(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @area_poly_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = load float, ptr %2, align 4, !tbaa !17
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !17
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !17
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !17
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #9 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = load float, ptr %2, align 4, !tbaa !17
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !17
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !17
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !17
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !17
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !17
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !17
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare float @angle_normalized_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: optsize
declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !17
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !17
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !17
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !17
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !17
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !17
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !17
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !17
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !17
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !17
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !17
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !17
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !17
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !17
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !17
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !17
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !13, i64 10908}
!6 = !{!"UserDef", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !7, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !7, i64 8484, !7, i64 8488, !7, i64 8492, !10, i64 8496, !10, i64 8498, !7, i64 8500, !7, i64 8504, !7, i64 8508, !7, i64 8512, !7, i64 8516, !7, i64 8520, !7, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !11, i64 8536, !11, i64 8552, !11, i64 8568, !11, i64 8584, !11, i64 8600, !11, i64 8616, !11, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !7, i64 8912, !7, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !13, i64 8956, !13, i64 8960, !7, i64 8964, !10, i64 8968, !10, i64 8970, !13, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !14, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !7, i64 10896, !7, i64 10900, !13, i64 10904, !13, i64 10908, !7, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !15, i64 10928}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"ListBase", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!15 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !10, i64 24, !8, i64 26}
!16 = !{!6, !7, i64 8524}
!17 = !{!13, !13, i64 0}
!18 = !{!19, !12, i64 264}
!19 = !{!"Scene", !20, i64 0, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !11, i64 152, !12, i64 168, !12, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !7, i64 232, !7, i64 236, !7, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !21, i64 280, !30, i64 4264, !11, i64 4296, !11, i64 4312, !12, i64 4328, !12, i64 4336, !12, i64 4344, !12, i64 4352, !12, i64 4360, !12, i64 4368, !10, i64 4376, !10, i64 4378, !7, i64 4380, !11, i64 4384, !31, i64 4400, !32, i64 4416, !35, i64 4600, !12, i64 4608, !36, i64 4616, !12, i64 4640, !37, i64 4648, !37, i64 4656, !23, i64 4664, !24, i64 4824, !38, i64 4888, !12, i64 4952}
!20 = !{!"ID", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !10, i64 98, !7, i64 100, !7, i64 104, !7, i64 108, !12, i64 112}
!21 = !{!"RenderData", !22, i64 0, !12, i64 248, !12, i64 256, !25, i64 264, !26, i64 328, !7, i64 400, !7, i64 404, !7, i64 408, !13, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !10, i64 432, !10, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !7, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !7, i64 484, !7, i64 488, !10, i64 492, !10, i64 494, !7, i64 496, !7, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !7, i64 516, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !27, i64 544, !27, i64 560, !28, i64 576, !11, i64 592, !10, i64 608, !10, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !7, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !13, i64 660, !13, i64 664, !10, i64 668, !10, i64 670, !13, i64 672, !13, i64 676, !8, i64 680, !7, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !7, i64 2520, !10, i64 2524, !10, i64 2526, !13, i64 2528, !13, i64 2532, !10, i64 2536, !10, i64 2538, !13, i64 2540, !10, i64 2544, !10, i64 2546, !7, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !13, i64 2560, !13, i64 2564, !12, i64 2568, !7, i64 2576, !13, i64 2580, !8, i64 2584, !29, i64 2616, !7, i64 3976, !7, i64 3980}
!22 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !13, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !23, i64 24, !24, i64 184}
!23 = !{!"ColorManagedViewSettings", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 72, !13, i64 136, !13, i64 140, !12, i64 144, !12, i64 152}
!24 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!25 = !{!"QuicktimeCodecSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48, !10, i64 50, !7, i64 52, !7, i64 56, !7, i64 60}
!26 = !{!"FFMpegCodecData", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !13, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !12, i64 64}
!27 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!28 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!29 = !{!"BakeData", !22, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !13, i64 1280, !13, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!30 = !{!"AudioData", !7, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16, !10, i64 20, !10, i64 22, !13, i64 24, !13, i64 28}
!31 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!32 = !{!"GameData", !31, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !33, i64 40, !10, i64 64, !10, i64 66, !13, i64 68, !34, i64 72, !13, i64 128, !13, i64 132, !7, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!33 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !13, i64 8, !13, i64 12, !12, i64 16}
!34 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 44, !13, i64 48, !10, i64 52, !10, i64 54}
!35 = !{!"UnitSettings", !13, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!36 = !{!"PhysicsSettings", !8, i64 0, !7, i64 12, !7, i64 16, !7, i64 20}
!37 = !{!"long", !8, i64 0}
!38 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!39 = !{!40, !7, i64 448}
!40 = !{!"ToolSettings", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !10, i64 44, !10, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !13, i64 52, !10, i64 56, !8, i64 58, !8, i64 59, !41, i64 64, !43, i64 168, !13, i64 336, !13, i64 340, !10, i64 344, !10, i64 346, !8, i64 348, !8, i64 349, !10, i64 350, !13, i64 352, !13, i64 356, !13, i64 360, !13, i64 364, !13, i64 368, !13, i64 372, !13, i64 376, !13, i64 380, !13, i64 384, !13, i64 388, !10, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !12, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !10, i64 434, !10, i64 436, !10, i64 438, !10, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !10, i64 464, !10, i64 466, !7, i64 468, !13, i64 472, !13, i64 476, !44, i64 480, !45, i64 608}
!41 = !{!"ImagePaintSettings", !42, i64 0, !10, i64 40, !10, i64 42, !10, i64 44, !10, i64 46, !8, i64 48, !7, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !8, i64 88, !13, i64 100}
!42 = !{!"Paint", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!43 = !{!"ParticleEditSettings", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !8, i64 8, !12, i64 120, !13, i64 128, !13, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !12, i64 152, !12, i64 160}
!44 = !{!"UnifiedPaintSettings", !7, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 28, !7, i64 40, !8, i64 44, !13, i64 52, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 65, !13, i64 72, !8, i64 76, !7, i64 84, !13, i64 88, !8, i64 92, !8, i64 100, !7, i64 108, !12, i64 112, !13, i64 120, !7, i64 124}
!45 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !8, i64 20, !8, i64 21, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!46 = !{!8, !8, i64 0}
!47 = !{!48, !7, i64 36}
!48 = !{!"SpaceImage", !12, i64 0, !12, i64 8, !11, i64 16, !7, i64 32, !7, i64 36, !12, i64 40, !49, i64 48, !12, i64 88, !50, i64 96, !51, i64 5360, !12, i64 10520, !8, i64 10528, !13, i64 10536, !13, i64 10540, !13, i64 10544, !13, i64 10548, !13, i64 10552, !8, i64 10556, !8, i64 10557, !10, i64 10558, !10, i64 10560, !10, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !52, i64 10568}
!49 = !{!"ImageUser", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !7, i64 36}
!50 = !{!"Scopes", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !7, i64 16, !13, i64 20, !13, i64 24, !7, i64 28, !13, i64 32, !7, i64 36, !8, i64 40, !51, i64 64, !12, i64 5224, !12, i64 5232, !12, i64 5240, !12, i64 5248, !7, i64 5256, !7, i64 5260}
!51 = !{!"Histogram", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !13, i64 5128, !13, i64 5132, !10, i64 5136, !10, i64 5138, !7, i64 5140, !8, i64 5144}
!52 = !{!"MaskSpaceInfo", !12, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!53 = !{!48, !8, i64 10556}
!54 = !{!55, !10, i64 136}
!55 = !{!"Object", !20, i64 0, !12, i64 120, !12, i64 128, !10, i64 136, !10, i64 138, !7, i64 140, !7, i64 144, !7, i64 148, !8, i64 152, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !56, i64 312, !12, i64 360, !11, i64 368, !11, i64 384, !11, i64 400, !11, i64 416, !7, i64 432, !7, i64 436, !12, i64 440, !12, i64 448, !7, i64 456, !7, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !13, i64 616, !13, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !7, i64 944, !10, i64 948, !10, i64 950, !10, i64 952, !10, i64 954, !10, i64 956, !10, i64 958, !10, i64 960, !10, i64 962, !10, i64 964, !8, i64 966, !8, i64 967, !7, i64 968, !7, i64 972, !7, i64 976, !7, i64 980, !7, i64 984, !13, i64 988, !13, i64 992, !13, i64 996, !13, i64 1000, !13, i64 1004, !13, i64 1008, !13, i64 1012, !13, i64 1016, !13, i64 1020, !13, i64 1024, !13, i64 1028, !13, i64 1032, !10, i64 1036, !10, i64 1038, !10, i64 1040, !8, i64 1042, !8, i64 1043, !10, i64 1044, !8, i64 1046, !8, i64 1047, !13, i64 1048, !13, i64 1052, !11, i64 1056, !11, i64 1072, !11, i64 1088, !11, i64 1104, !13, i64 1120, !10, i64 1124, !10, i64 1126, !8, i64 1128, !7, i64 1144, !7, i64 1148, !12, i64 1152, !8, i64 1160, !8, i64 1161, !10, i64 1162, !8, i64 1164, !11, i64 1176, !11, i64 1192, !11, i64 1208, !11, i64 1224, !12, i64 1240, !12, i64 1248, !12, i64 1256, !8, i64 1264, !8, i64 1265, !10, i64 1266, !13, i64 1268, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !37, i64 1304, !37, i64 1312, !7, i64 1320, !7, i64 1324, !11, i64 1328, !11, i64 1344, !12, i64 1360, !12, i64 1368, !12, i64 1376, !8, i64 1384, !12, i64 1392, !11, i64 1400, !12, i64 1416}
!56 = !{!"bAnimVizSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!57 = !{!55, !7, i64 432}
!58 = !{!59, !12, i64 0}
!59 = !{!"BMEditMesh", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !12, i64 48, !37, i64 56, !12, i64 64, !7, i64 72, !12, i64 80, !7, i64 88, !10, i64 92, !10, i64 94, !12, i64 96, !7, i64 104}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!55, !12, i64 296}
!63 = !{!64, !12, i64 272}
!64 = !{!"Mesh", !20, i64 0, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !65, i64 280, !65, i64 480, !65, i64 680, !65, i64 880, !65, i64 1080, !7, i64 1280, !7, i64 1284, !7, i64 1288, !7, i64 1292, !7, i64 1296, !7, i64 1300, !7, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !7, i64 1344, !10, i64 1348, !10, i64 1350, !13, i64 1352, !7, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !10, i64 1366, !12, i64 1368}
!65 = !{!"CustomData", !12, i64 0, !8, i64 8, !7, i64 172, !7, i64 176, !7, i64 180, !12, i64 184, !12, i64 192}
!66 = !{!48, !12, i64 40}
!67 = !{i32 0, i32 3}
!68 = !{!40, !8, i64 50}
!69 = !{!40, !10, i64 46}
!70 = !{!40, !8, i64 51}
!71 = !{!12, !12, i64 0}
!72 = !{!73, !10, i64 48}
!73 = !{!"BMFace", !74, i64 0, !12, i64 16, !12, i64 24, !7, i64 32, !8, i64 36, !10, i64 48}
!74 = !{!"BMHeader", !12, i64 0, !7, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!75 = !{!76, !12, i64 0}
!76 = !{!"MTexPoly", !12, i64 0, !8, i64 8, !8, i64 9, !10, i64 10, !10, i64 12, !10, i64 14}
!77 = !{!59, !12, i64 40}
!78 = !{i32 0, i32 2}
!79 = !{!37, !37, i64 0}
!80 = !{!81, !12, i64 1680}
!81 = !{!"DerivedMesh", !65, i64 0, !65, i64 200, !65, i64 400, !65, i64 600, !65, i64 800, !7, i64 1000, !7, i64 1004, !7, i64 1008, !7, i64 1012, !7, i64 1016, !7, i64 1020, !7, i64 1024, !12, i64 1032, !12, i64 1040, !7, i64 1048, !13, i64 1052, !7, i64 1056, !7, i64 1060, !12, i64 1064, !8, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !12, i64 1176, !12, i64 1184, !12, i64 1192, !12, i64 1200, !12, i64 1208, !12, i64 1216, !12, i64 1224, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !12, i64 1464, !12, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !12, i64 1544, !12, i64 1552, !12, i64 1560, !12, i64 1568, !12, i64 1576, !12, i64 1584, !12, i64 1592, !12, i64 1600, !12, i64 1608, !12, i64 1616, !12, i64 1624, !12, i64 1632, !12, i64 1640, !12, i64 1648, !12, i64 1656, !12, i64 1664, !12, i64 1672, !12, i64 1680}
!82 = !{!7, !7, i64 0}
!83 = !{!59, !7, i64 32}
!84 = !{!59, !12, i64 24}
!85 = !{!86, !12, i64 32}
!86 = !{!"BMLoop", !74, i64 0, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!87 = !{!73, !12, i64 0}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61}
!90 = !{!48, !8, i64 10564}
!91 = distinct !{!91, !61}
!92 = distinct !{!92, !61}
!93 = distinct !{!93, !61}
!94 = !{!64, !7, i64 1344}
!95 = !{!86, !12, i64 0}
!96 = distinct !{!96, !61}
!97 = distinct !{!97, !61}
!98 = !{!86, !12, i64 56}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = !{!107, !7, i64 8}
!107 = !{!"MLoopUV", !8, i64 0, !7, i64 8}
!108 = distinct !{!108, !61}
!109 = distinct !{!109, !61}
!110 = distinct !{!110, !61}
!111 = distinct !{!111, !61}
!112 = !{!55, !7, i64 460}
!113 = !{!64, !12, i64 176}
!114 = !{!64, !12, i64 168}
!115 = !{!116, !12, i64 920}
!116 = !{!"Material", !20, i64 0, !12, i64 120, !10, i64 128, !10, i64 130, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !117, i64 224, !118, i64 312, !13, i64 328, !13, i64 332, !13, i64 336, !13, i64 340, !13, i64 344, !13, i64 348, !13, i64 352, !10, i64 356, !10, i64 358, !10, i64 360, !8, i64 362, !8, i64 363, !13, i64 364, !13, i64 368, !10, i64 372, !10, i64 374, !13, i64 376, !13, i64 380, !13, i64 384, !13, i64 388, !10, i64 392, !10, i64 394, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !10, i64 412, !10, i64 414, !10, i64 416, !10, i64 418, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !13, i64 456, !8, i64 460, !13, i64 524, !13, i64 528, !13, i64 532, !7, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !10, i64 544, !10, i64 546, !10, i64 548, !8, i64 550, !8, i64 551, !10, i64 552, !10, i64 554, !13, i64 556, !13, i64 560, !8, i64 564, !13, i64 580, !13, i64 584, !10, i64 588, !10, i64 590, !12, i64 592, !12, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !10, i64 612, !10, i64 614, !13, i64 616, !13, i64 620, !8, i64 624, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !13, i64 800, !13, i64 804, !13, i64 808, !13, i64 812, !13, i64 816, !10, i64 820, !10, i64 822, !8, i64 824, !8, i64 836, !13, i64 848, !13, i64 852, !13, i64 856, !13, i64 860, !13, i64 864, !13, i64 868, !13, i64 872, !10, i64 876, !10, i64 878, !7, i64 880, !10, i64 884, !10, i64 886, !8, i64 888, !10, i64 904, !10, i64 906, !10, i64 908, !10, i64 910, !10, i64 912, !8, i64 914, !12, i64 920, !11, i64 928}
!117 = !{!"VolumeSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !13, i64 52, !13, i64 56, !13, i64 60, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84}
!118 = !{!"GameSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!119 = !{!116, !10, i64 908}
!120 = !{!121, !12, i64 8}
!121 = !{!"TexPaintSlot", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20}
!122 = !{!64, !12, i64 192}
!123 = !{!64, !7, i64 1296}
!124 = !{!125, !7, i64 4}
!125 = !{!"MPoly", !7, i64 0, !7, i64 4, !10, i64 8, !8, i64 10, !8, i64 11}
!126 = !{!125, !7, i64 0}
!127 = distinct !{!127, !61}
!128 = distinct !{!128, !61}
!129 = distinct !{!129, !61}
!130 = !{!131, !12, i64 48}
!131 = !{!"BMIter", !8, i64 0, !12, i64 40, !12, i64 48, !7, i64 56, !8, i64 60}
!132 = !{!131, !8, i64 60}
!133 = !{!131, !12, i64 40}
!134 = !{!135, !12, i64 56}
!135 = !{!"BMesh", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !8, i64 28, !8, i64 29, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !7, i64 128, !12, i64 136, !65, i64 144, !65, i64 344, !65, i64 544, !65, i64 744, !10, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !11, i64 960, !12, i64 976, !11, i64 984, !12, i64 1000}
!136 = !{!137, !12, i64 32}
!137 = !{!"Base", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 28, !10, i64 30, !12, i64 32}
!138 = !{!137, !7, i64 24}
!139 = !{!137, !7, i64 16}
!140 = !{!19, !7, i64 232}
!141 = !{!55, !8, i64 1160}
!142 = distinct !{!142, !61}
!143 = !{!81, !12, i64 1584}
!144 = !{!145, !12, i64 0}
!145 = !{!"", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!146 = !{!48, !8, i64 10566}
!147 = !{!73, !7, i64 32}
!148 = distinct !{!148, !61}
!149 = distinct !{!149, !61}
!150 = distinct !{!150, !61}
!151 = distinct !{!151, !61}
!152 = distinct !{!152, !61}
!153 = distinct !{!153, !61}
!154 = distinct !{!154, !61}
!155 = distinct !{!155, !61}
!156 = !{!86, !12, i64 64}
!157 = !{!86, !12, i64 16}
!158 = distinct !{!158, !61}
!159 = distinct !{!159, !61}
!160 = distinct !{!160, !61}
!161 = distinct !{!161, !61}
!162 = !{!74, !8, i64 13}
!163 = distinct !{!163, !61}
!164 = distinct !{!164, !61}
!165 = !{!55, !7, i64 456}
!166 = distinct !{!166, !61}
!167 = !{!125, !10, i64 8}
!168 = distinct !{!168, !61}
!169 = distinct !{!169, !61}
!170 = distinct !{!170, !61}
