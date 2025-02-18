; ModuleID = 'blender/source/blender/editors/space_image/image_draw.c'
source_filename = "blender/source/blender/editors/space_image/image_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@blf_mono_font = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"X:%-4d  Y:%-4d |\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" Z:%-.4f |\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" Z:%-.3f |\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"  R:%-.5f\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"  R:%-3d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"  R:-\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"  G:%-.5f\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"  G:%-3d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"  G:-\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"  B:%-.5f\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"  B:%-3d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"  B:-\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"  A:%-.4f\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"  A:%-3d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"  |  CM  R:%-.4f  G:%-.4f  B:%-.4f\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"V:%-.4f\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"   L:%-.4f\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"H:%-.4f\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"  S:%-.4f\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"  V:%-.4f\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@__const.draw_render_info.fill_color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.500000e-01], align 16

; Function Attrs: nounwind uwtable
define dso_local void @ED_image_draw_info(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr nocapture noundef readonly %9, ptr noundef readonly %10, ptr noundef readonly %11) local_unnamed_addr #0 {
  %13 = alloca %struct.rcti, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca [3 x i8], align 1
  %16 = alloca [3 x i8], align 1
  %17 = alloca [3 x i8], align 1
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca [4 x float], align 16
  %25 = alloca [4 x float], align 16
  %26 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #7
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %28 = sitofp i16 %27 to float
  %29 = fmul float %28, 0x3FD3333340000000
  %30 = fptosi float %29 to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %15, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %16, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %17, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  store float 0.000000e+00, ptr %18, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  store float 0.000000e+00, ptr %19, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #7
  store float 0.000000e+00, ptr %20, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #7
  store float 0.000000e+00, ptr %21, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #7
  store float 0.000000e+00, ptr %22, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #7
  store float 0.000000e+00, ptr %23, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #7
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -66) #7
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !46
  %34 = load i32, ptr %31, align 4, !tbaa !48
  %35 = add i32 %33, 1
  %36 = sub i32 %35, %34
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %38 = sext i16 %37 to i32
  tail call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %36, i32 noundef %38) #7
  tail call void @glDisable(i32 noundef 3042) #7
  %39 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %40 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !50
  %41 = fmul float %40, 1.100000e+01
  %42 = fptosi float %41 to i32
  %43 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !51
  tail call void @BLF_size(i32 noundef %39, i32 noundef %42, i32 noundef %43) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %6) #7
  %45 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %46 = sitofp i32 %30 to float
  call void @BLF_position(i32 noundef %45, float noundef 6.000000e+00, float noundef %46, float noundef 0.000000e+00) #7
  %47 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %47, ptr noundef nonnull %14, i64 noundef 256) #7
  %48 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %49 = call float @BLF_width(i32 noundef %48, ptr noundef nonnull %14, i64 noundef 256) #7
  %50 = fadd float %49, 6.000000e+00
  %51 = fptosi float %50 to i32
  %52 = icmp eq ptr %10, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %12
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %54 = load i32, ptr %10, align 4, !tbaa !49
  %55 = sitofp i32 %54 to float
  %56 = fmul float %55, 0x3E00000000000000
  %57 = call float @llvm.fmuladd.f32(float %56, float 5.000000e-01, float 5.000000e-01)
  %58 = fpext float %57 to double
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.1, double noundef %58) #7
  %60 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %61 = sitofp i32 %51 to float
  call void @BLF_position(i32 noundef %60, float noundef %61, float noundef %46, float noundef 0.000000e+00) #7
  %62 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %62, ptr noundef nonnull %14, i64 noundef 256) #7
  %63 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %64 = call float @BLF_width(i32 noundef %63, ptr noundef nonnull %14, i64 noundef 256) #7
  %65 = fadd float %64, %61
  %66 = fptosi float %65 to i32
  br label %67

67:                                               ; preds = %53, %12
  %68 = phi i32 [ %66, %53 ], [ %51, %12 ]
  %69 = icmp eq ptr %11, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %71 = load float, ptr %11, align 4, !tbaa !45
  %72 = fpext float %71 to double
  %73 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.2, double noundef %72) #7
  %74 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %75 = sitofp i32 %68 to float
  call void @BLF_position(i32 noundef %74, float noundef %75, float noundef %46, float noundef 0.000000e+00) #7
  %76 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %76, ptr noundef nonnull %14, i64 noundef 256) #7
  %77 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %78 = call float @BLF_width(i32 noundef %77, ptr noundef nonnull %14, i64 noundef 256) #7
  %79 = fadd float %78, %75
  %80 = fptosi float %79 to i32
  br label %81

81:                                               ; preds = %70, %67
  %82 = phi i32 [ %80, %70 ], [ %68, %67 ]
  %83 = icmp sgt i32 %4, 2
  br i1 %83, label %84, label %213

84:                                               ; preds = %81
  call void @glColor3ubv(ptr noundef nonnull %15) #7
  %85 = icmp eq ptr %8, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %84
  %87 = load float, ptr %8, align 4, !tbaa !45
  %88 = fpext float %87 to double
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.3, double noundef %88) #7
  br label %98

90:                                               ; preds = %84
  %91 = icmp eq ptr %7, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %90
  %93 = load i8, ptr %7, align 1, !tbaa !52
  %94 = zext i8 %93 to i32
  %95 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %94) #7
  br label %98

96:                                               ; preds = %90
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.5) #7
  br label %98

98:                                               ; preds = %92, %96, %86
  %99 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %100 = sitofp i32 %82 to float
  call void @BLF_position(i32 noundef %99, float noundef %100, float noundef %46, float noundef 0.000000e+00) #7
  %101 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %101, ptr noundef nonnull %14, i64 noundef 256) #7
  %102 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %103 = call float @BLF_width(i32 noundef %102, ptr noundef nonnull %14, i64 noundef 256) #7
  %104 = fadd float %103, %100
  %105 = fptosi float %104 to i32
  call void @glColor3ubv(ptr noundef nonnull %16) #7
  br i1 %85, label %111, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds float, ptr %8, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !45
  %109 = fpext float %108 to double
  %110 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.6, double noundef %109) #7
  br label %120

111:                                              ; preds = %98
  %112 = icmp eq ptr %7, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %7, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !52
  %116 = zext i8 %115 to i32
  %117 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %116) #7
  br label %120

118:                                              ; preds = %111
  %119 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.8) #7
  br label %120

120:                                              ; preds = %113, %118, %106
  %121 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %122 = sitofp i32 %105 to float
  call void @BLF_position(i32 noundef %121, float noundef %122, float noundef %46, float noundef 0.000000e+00) #7
  %123 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %123, ptr noundef nonnull %14, i64 noundef 256) #7
  %124 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %125 = call float @BLF_width(i32 noundef %124, ptr noundef nonnull %14, i64 noundef 256) #7
  %126 = fadd float %125, %122
  %127 = fptosi float %126 to i32
  call void @glColor3ubv(ptr noundef nonnull %17) #7
  br i1 %85, label %133, label %128

128:                                              ; preds = %120
  %129 = getelementptr inbounds float, ptr %8, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !45
  %131 = fpext float %130 to double
  %132 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.9, double noundef %131) #7
  br label %142

133:                                              ; preds = %120
  %134 = icmp eq ptr %7, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds i8, ptr %7, i64 2
  %137 = load i8, ptr %136, align 1, !tbaa !52
  %138 = zext i8 %137 to i32
  %139 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %138) #7
  br label %142

140:                                              ; preds = %133
  %141 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.11) #7
  br label %142

142:                                              ; preds = %135, %140, %128
  %143 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %144 = sitofp i32 %127 to float
  call void @BLF_position(i32 noundef %143, float noundef %144, float noundef %46, float noundef 0.000000e+00) #7
  %145 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %145, ptr noundef nonnull %14, i64 noundef 256) #7
  %146 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %147 = call float @BLF_width(i32 noundef %146, ptr noundef nonnull %14, i64 noundef 256) #7
  %148 = fadd float %147, %144
  %149 = fptosi float %148 to i32
  %150 = icmp eq i32 %4, 4
  br i1 %150, label %151, label %174

151:                                              ; preds = %142
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  br i1 %85, label %157, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds float, ptr %8, i64 3
  %154 = load float, ptr %153, align 4, !tbaa !45
  %155 = fpext float %154 to double
  %156 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.12, double noundef %155) #7
  br label %166

157:                                              ; preds = %151
  %158 = icmp eq ptr %7, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds i8, ptr %7, i64 3
  %161 = load i8, ptr %160, align 1, !tbaa !52
  %162 = zext i8 %161 to i32
  %163 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %162) #7
  br label %166

164:                                              ; preds = %157
  %165 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.14) #7
  br label %166

166:                                              ; preds = %159, %164, %152
  %167 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %168 = sitofp i32 %149 to float
  call void @BLF_position(i32 noundef %167, float noundef %168, float noundef %46, float noundef 0.000000e+00) #7
  %169 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %169, ptr noundef nonnull %14, i64 noundef 256) #7
  %170 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %171 = call float @BLF_width(i32 noundef %170, ptr noundef nonnull %14, i64 noundef 256) #7
  %172 = fadd float %171, %168
  %173 = fptosi float %172 to i32
  br label %174

174:                                              ; preds = %166, %142
  %175 = phi i32 [ %173, %166 ], [ %149, %142 ]
  %176 = icmp eq i8 %2, 0
  br i1 %176, label %213, label %177

177:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #7
  %178 = load float, ptr %9, align 4, !tbaa !45
  store float %178, ptr %26, align 16, !tbaa !45
  %179 = getelementptr inbounds float, ptr %9, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !45
  %181 = getelementptr inbounds float, ptr %26, i64 1
  store float %180, ptr %181, align 4, !tbaa !45
  %182 = getelementptr inbounds float, ptr %9, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !45
  %184 = getelementptr inbounds float, ptr %26, i64 2
  store float %183, ptr %184, align 8, !tbaa !45
  %185 = icmp eq i32 %4, 3
  br i1 %185, label %189, label %186

186:                                              ; preds = %177
  %187 = getelementptr inbounds float, ptr %9, i64 3
  %188 = load float, ptr %187, align 4, !tbaa !45
  br label %189

189:                                              ; preds = %177, %186
  %190 = phi float [ %188, %186 ], [ 1.000000e+00, %177 ]
  %191 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  store float %190, ptr %191, align 4, !tbaa !45
  %192 = icmp eq i8 %3, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %194) #7
  br label %198

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %197 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef nonnull %196, ptr noundef nonnull %197) #7
  br label %198

198:                                              ; preds = %195, %193
  %199 = load float, ptr %26, align 16, !tbaa !45
  %200 = fpext float %199 to double
  %201 = load float, ptr %181, align 4, !tbaa !45
  %202 = fpext float %201 to double
  %203 = load float, ptr %184, align 8, !tbaa !45
  %204 = fpext float %203 to double
  %205 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.15, double noundef %200, double noundef %202, double noundef %204) #7
  %206 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %207 = sitofp i32 %175 to float
  call void @BLF_position(i32 noundef %206, float noundef %207, float noundef %46, float noundef 0.000000e+00) #7
  %208 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %208, ptr noundef nonnull %14, i64 noundef 256) #7
  %209 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %210 = call float @BLF_width(i32 noundef %209, ptr noundef nonnull %14, i64 noundef 256) #7
  %211 = fadd float %210, %207
  %212 = fptosi float %211 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #7
  br label %213

213:                                              ; preds = %174, %198, %81
  %214 = phi i32 [ %212, %198 ], [ %175, %174 ], [ %82, %81 ]
  %215 = icmp eq i32 %4, 1
  br i1 %215, label %216, label %235

216:                                              ; preds = %213
  %217 = icmp eq ptr %8, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %216
  %219 = load float, ptr %8, align 4, !tbaa !45
  %220 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %219, ptr %220, align 8, !tbaa !45
  %221 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float %219, ptr %221, align 4, !tbaa !45
  store float %219, ptr %24, align 16, !tbaa !45
  br label %233

222:                                              ; preds = %216
  %223 = icmp eq ptr %7, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %222
  %225 = load i8, ptr %7, align 1, !tbaa !52
  %226 = uitofp i8 %225 to float
  %227 = fdiv float %226, 2.550000e+02
  %228 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %227, ptr %228, align 8, !tbaa !45
  %229 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float %227, ptr %229, align 4, !tbaa !45
  store float %227, ptr %24, align 16, !tbaa !45
  br label %233

230:                                              ; preds = %222
  %231 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float 0.000000e+00, ptr %231, align 8, !tbaa !45
  %232 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float 0.000000e+00, ptr %232, align 4, !tbaa !45
  store float 0.000000e+00, ptr %24, align 16, !tbaa !45
  br label %233

233:                                              ; preds = %224, %230, %218
  %234 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 3
  store float 1.000000e+00, ptr %234, align 4, !tbaa !45
  br label %257

235:                                              ; preds = %213
  switch i32 %4, label %256 [
    i32 3, label %236
    i32 4, label %245
  ]

236:                                              ; preds = %235
  %237 = load float, ptr %9, align 4, !tbaa !45
  store float %237, ptr %24, align 16, !tbaa !45
  %238 = getelementptr inbounds float, ptr %9, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !45
  %240 = getelementptr inbounds float, ptr %24, i64 1
  store float %239, ptr %240, align 4, !tbaa !45
  %241 = getelementptr inbounds float, ptr %9, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !45
  %243 = getelementptr inbounds float, ptr %24, i64 2
  store float %242, ptr %243, align 8, !tbaa !45
  %244 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 3
  store float 1.000000e+00, ptr %244, align 4, !tbaa !45
  br label %257

245:                                              ; preds = %235
  %246 = load float, ptr %9, align 4, !tbaa !45
  store float %246, ptr %24, align 16, !tbaa !45
  %247 = getelementptr inbounds float, ptr %9, i64 1
  %248 = load float, ptr %247, align 4, !tbaa !45
  %249 = getelementptr inbounds float, ptr %24, i64 1
  store float %248, ptr %249, align 4, !tbaa !45
  %250 = getelementptr inbounds float, ptr %9, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !45
  %252 = getelementptr inbounds float, ptr %24, i64 2
  store float %251, ptr %252, align 8, !tbaa !45
  %253 = getelementptr inbounds float, ptr %9, i64 3
  %254 = load float, ptr %253, align 4, !tbaa !45
  %255 = getelementptr inbounds float, ptr %24, i64 3
  store float %254, ptr %255, align 4, !tbaa !45
  br label %257

256:                                              ; preds = %235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %257

257:                                              ; preds = %236, %256, %245, %233
  %258 = icmp eq i8 %2, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %257
  %260 = icmp eq i8 %3, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %25, ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %262) #7
  br label %277

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %265 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %25, ptr noundef nonnull %24, ptr noundef nonnull %264, ptr noundef nonnull %265) #7
  br label %277

266:                                              ; preds = %257
  %267 = load float, ptr %24, align 16, !tbaa !45
  store float %267, ptr %25, align 16, !tbaa !45
  %268 = getelementptr inbounds float, ptr %24, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !45
  %270 = getelementptr inbounds float, ptr %25, i64 1
  store float %269, ptr %270, align 4, !tbaa !45
  %271 = getelementptr inbounds float, ptr %24, i64 2
  %272 = load float, ptr %271, align 8, !tbaa !45
  %273 = getelementptr inbounds float, ptr %25, i64 2
  store float %272, ptr %273, align 8, !tbaa !45
  %274 = getelementptr inbounds float, ptr %24, i64 3
  %275 = load float, ptr %274, align 4, !tbaa !45
  %276 = getelementptr inbounds float, ptr %25, i64 3
  store float %275, ptr %276, align 4, !tbaa !45
  br label %277

277:                                              ; preds = %261, %263, %266
  call void @glDisable(i32 noundef 3042) #7
  %278 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %279 = sitofp i16 %278 to float
  %280 = sitofp i32 %214 to float
  %281 = call float @llvm.fmuladd.f32(float %279, float 2.500000e-01, float %280)
  %282 = fptosi float %281 to i32
  %283 = sitofp i32 %282 to float
  %284 = call float @llvm.fmuladd.f32(float %279, float 1.500000e+00, float %283)
  %285 = fptosi float %284 to i32
  %286 = fmul float %279, 0x3FC3333340000000
  %287 = fptosi float %286 to i32
  %288 = fmul float %279, 0x3FEB333340000000
  %289 = fptosi float %288 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %13, i32 noundef %282, i32 noundef %285, i32 noundef %287, i32 noundef %289) #7
  %290 = icmp eq i32 %4, 4
  br i1 %290, label %291, label %329

291:                                              ; preds = %277
  %292 = getelementptr inbounds i8, ptr %13, i64 4
  %293 = getelementptr inbounds i8, ptr %13, i64 8
  %294 = getelementptr inbounds i8, ptr %13, i64 12
  %295 = load i32, ptr %13, align 4, !tbaa !48
  %296 = load i32, ptr %292, align 4, !tbaa !46
  %297 = load i32, ptr %293, align 4, !tbaa !53
  %298 = load i32, ptr %294, align 4, !tbaa !54
  call void @glRecti(i32 noundef %295, i32 noundef %297, i32 noundef %296, i32 noundef %298) #7
  %299 = load i32, ptr %292, align 4
  %300 = load i32, ptr %293, align 4, !tbaa.struct !55
  %301 = load i32, ptr %294, align 4, !tbaa.struct !56
  %302 = load i32, ptr %13, align 4, !tbaa !48
  %303 = add nsw i32 %302, %299
  %304 = sdiv i32 %303, 2
  %305 = add nsw i32 %304, %299
  %306 = sdiv i32 %305, 2
  %307 = add nsw i32 %301, %300
  %308 = sdiv i32 %307, 2
  call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #7
  call void @glRecti(i32 noundef %304, i32 noundef %300, i32 noundef %299, i32 noundef %301) #7
  call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #7
  call void @glRecti(i32 noundef %306, i32 noundef %308, i32 noundef %299, i32 noundef %301) #7
  call void @glRecti(i32 noundef %304, i32 noundef %300, i32 noundef %306, i32 noundef %308) #7
  call void @glEnable(i32 noundef 3042) #7
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  %309 = load float, ptr %25, align 16, !tbaa !45
  %310 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !45
  %312 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 2
  %313 = load float, ptr %312, align 8, !tbaa !45
  %314 = icmp eq ptr %8, null
  br i1 %314, label %318, label %315

315:                                              ; preds = %291
  %316 = getelementptr inbounds float, ptr %8, i64 3
  %317 = load float, ptr %316, align 4, !tbaa !45
  br label %323

318:                                              ; preds = %291
  %319 = getelementptr inbounds i8, ptr %7, i64 3
  %320 = load i8, ptr %319, align 1, !tbaa !52
  %321 = uitofp i8 %320 to float
  %322 = fdiv float %321, 2.550000e+02
  br label %323

323:                                              ; preds = %318, %315
  %324 = phi float [ %317, %315 ], [ %322, %318 ]
  call void @glColor4f(float noundef %309, float noundef %311, float noundef %313, float noundef %324) #7
  %325 = load i32, ptr %13, align 4, !tbaa !48
  %326 = load i32, ptr %293, align 4, !tbaa !53
  %327 = load i32, ptr %292, align 4, !tbaa !46
  %328 = load i32, ptr %294, align 4, !tbaa !54
  call void @glRecti(i32 noundef %325, i32 noundef %326, i32 noundef %327, i32 noundef %328) #7
  call void @glDisable(i32 noundef 3042) #7
  br label %337

329:                                              ; preds = %277
  call void @glColor3fv(ptr noundef nonnull %25) #7
  %330 = load i32, ptr %13, align 4, !tbaa !48
  %331 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !53
  %333 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !46
  %335 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %336 = load i32, ptr %335, align 4, !tbaa !54
  call void @glRecti(i32 noundef %330, i32 noundef %332, i32 noundef %334, i32 noundef %336) #7
  br label %337

337:                                              ; preds = %329, %323
  call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #7
  %338 = load i32, ptr %13, align 4, !tbaa !48
  %339 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !53
  %341 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !46
  %343 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %344 = load i32, ptr %343, align 4, !tbaa !54
  call void @glRecti(i32 noundef %338, i32 noundef %340, i32 noundef %342, i32 noundef %344) #7
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #7
  %345 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %346 = sitofp i16 %345 to float
  %347 = call float @llvm.fmuladd.f32(float %346, float 1.750000e+00, float %283)
  %348 = fptosi float %347 to i32
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  br i1 %215, label %349, label %373

349:                                              ; preds = %337
  %350 = icmp eq ptr %8, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %349
  %352 = load float, ptr %8, align 4, !tbaa !45
  call void @rgb_to_hsv(float noundef %352, float noundef %352, float noundef %352, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #7
  %353 = load float, ptr %8, align 4, !tbaa !45
  call void @rgb_to_yuv(float noundef %353, float noundef %353, float noundef %353, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  br label %363

354:                                              ; preds = %349
  %355 = icmp eq ptr %7, null
  br i1 %355, label %363, label %356

356:                                              ; preds = %354
  %357 = load i8, ptr %7, align 1, !tbaa !52
  %358 = uitofp i8 %357 to float
  %359 = fdiv float %358, 2.550000e+02
  call void @rgb_to_hsv(float noundef %359, float noundef %359, float noundef %359, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #7
  %360 = load i8, ptr %7, align 1, !tbaa !52
  %361 = uitofp i8 %360 to float
  %362 = fdiv float %361, 2.550000e+02
  call void @rgb_to_yuv(float noundef %362, float noundef %362, float noundef %362, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  br label %363

363:                                              ; preds = %354, %356, %351
  %364 = load float, ptr %20, align 4, !tbaa !45
  %365 = fpext float %364 to double
  %366 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %365) #7
  %367 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %368 = sitofp i32 %348 to float
  call void @BLF_position(i32 noundef %367, float noundef %368, float noundef %46, float noundef 0.000000e+00) #7
  %369 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %369, ptr noundef nonnull %14, i64 noundef 256) #7
  %370 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %371 = call float @BLF_width(i32 noundef %370, ptr noundef nonnull %14, i64 noundef 256) #7
  %372 = fadd float %371, %368
  br label %412

373:                                              ; preds = %337
  br i1 %83, label %374, label %423

374:                                              ; preds = %373
  %375 = load float, ptr %25, align 16, !tbaa !45
  %376 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %377 = load float, ptr %376, align 4, !tbaa !45
  %378 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 2
  %379 = load float, ptr %378, align 8, !tbaa !45
  call void @rgb_to_hsv(float noundef %375, float noundef %377, float noundef %379, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #7
  %380 = load float, ptr %25, align 16, !tbaa !45
  %381 = load float, ptr %376, align 4, !tbaa !45
  %382 = load float, ptr %378, align 8, !tbaa !45
  call void @rgb_to_yuv(float noundef %380, float noundef %381, float noundef %382, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  %383 = load float, ptr %18, align 4, !tbaa !45
  %384 = fpext float %383 to double
  %385 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.18, double noundef %384) #7
  %386 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %387 = sitofp i32 %348 to float
  call void @BLF_position(i32 noundef %386, float noundef %387, float noundef %46, float noundef 0.000000e+00) #7
  %388 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %388, ptr noundef nonnull %14, i64 noundef 256) #7
  %389 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %390 = call float @BLF_width(i32 noundef %389, ptr noundef nonnull %14, i64 noundef 256) #7
  %391 = fadd float %390, %387
  %392 = fptosi float %391 to i32
  %393 = load float, ptr %19, align 4, !tbaa !45
  %394 = fpext float %393 to double
  %395 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.19, double noundef %394) #7
  %396 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %397 = sitofp i32 %392 to float
  call void @BLF_position(i32 noundef %396, float noundef %397, float noundef %46, float noundef 0.000000e+00) #7
  %398 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %398, ptr noundef nonnull %14, i64 noundef 256) #7
  %399 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %400 = call float @BLF_width(i32 noundef %399, ptr noundef nonnull %14, i64 noundef 256) #7
  %401 = fadd float %400, %397
  %402 = fptosi float %401 to i32
  %403 = load float, ptr %20, align 4, !tbaa !45
  %404 = fpext float %403 to double
  %405 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.20, double noundef %404) #7
  %406 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %407 = sitofp i32 %402 to float
  call void @BLF_position(i32 noundef %406, float noundef %407, float noundef %46, float noundef 0.000000e+00) #7
  %408 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %408, ptr noundef nonnull %14, i64 noundef 256) #7
  %409 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %410 = call float @BLF_width(i32 noundef %409, ptr noundef nonnull %14, i64 noundef 256) #7
  %411 = fadd float %410, %407
  br label %412

412:                                              ; preds = %363, %374
  %413 = phi float [ %411, %374 ], [ %372, %363 ]
  %414 = fptosi float %413 to i32
  %415 = load float, ptr %21, align 4, !tbaa !45
  %416 = fpext float %415 to double
  %417 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.17, double noundef %416) #7
  %418 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %419 = sitofp i32 %414 to float
  call void @BLF_position(i32 noundef %418, float noundef %419, float noundef %46, float noundef 0.000000e+00) #7
  %420 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  call void @BLF_draw_ascii(i32 noundef %420, ptr noundef nonnull %14, i64 noundef 256) #7
  %421 = load i32, ptr @blf_mono_font, align 4, !tbaa !49
  %422 = call float @BLF_width(i32 noundef %421, ptr noundef nonnull %14, i64 noundef 256) #7
  br label %423

423:                                              ; preds = %412, %373
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @BLF_draw_ascii(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

declare void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glColor3fv(ptr noundef) local_unnamed_addr #3

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_grease_pencil(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ED_gpencil_draw_2dimage(ptr noundef %0) #7
  br label %6

5:                                                ; preds = %2
  tail call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #7
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #3

declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_sample_line(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 10
  %3 = load i16, ptr %2, align 2, !tbaa !57
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #7
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 12
  tail call void @glVertex2fv(ptr noundef nonnull %7) #7
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 12, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %8) #7
  tail call void @glEnd() #7
  tail call void @setlinestyle(i32 noundef 1) #7
  tail call void @glBegin(i32 noundef 1) #7
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  tail call void @glVertex2fv(ptr noundef nonnull %7) #7
  tail call void @glVertex2fv(ptr noundef nonnull %8) #7
  tail call void @glEnd() #7
  tail call void @setlinestyle(i32 noundef 0) #7
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @setlinestyle(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_main(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca ptr, align 8
  %14 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %16 = tail call ptr @ED_space_image(ptr noundef %14) #7
  call void @ED_space_image_get_zoom(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.Image, ptr %16, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !63
  %21 = icmp ne i16 %20, 5
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ true, %2 ], [ %21, %18 ]
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Image, ptr %16, i64 0, i32 12
  %26 = load i16, ptr %25, align 2, !tbaa !67
  %27 = icmp eq i16 %26, 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i1 [ false, %22 ], [ %27, %24 ]
  br i1 %17, label %30, label %37

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 17
  %32 = load i8, ptr %31, align 4, !tbaa !68
  %33 = icmp eq i8 %32, 1
  %34 = and i1 %23, %33
  %35 = xor i1 %34, true
  %36 = select i1 %35, i1 true, i1 %29
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi i1 [ true, %28 ], [ %36, %30 ]
  br i1 %23, label %40, label %39

39:                                               ; preds = %37
  call void @BLI_lock_thread(i32 noundef 1) #7
  br label %40

40:                                               ; preds = %39, %37
  %41 = call ptr @ED_space_image_acquire_buffer(ptr noundef %14, ptr noundef nonnull %13) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load float, ptr %11, align 4, !tbaa !45
  %45 = load float, ptr %12, align 4, !tbaa !45
  call void @ED_region_grid_draw(ptr noundef %1, float noundef %44, float noundef %45) #7
  br label %113

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !69
  %49 = and i32 %48, 524288
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %101, label %51

51:                                               ; preds = %46
  %52 = load float, ptr %11, align 4, !tbaa !45
  %53 = load float, ptr %12, align 4, !tbaa !45
  %54 = call double @PIL_check_seconds_timer() #7
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %56 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %57 = load float, ptr %56, align 4, !tbaa !70
  %58 = call float @llvm.ceil.f32(float %57)
  %59 = fptosi float %58 to i32
  %60 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %61 = load float, ptr %60, align 4, !tbaa !74
  %62 = call float @llvm.ceil.f32(float %61)
  %63 = fptosi float %62 to i32
  %64 = load float, ptr %55, align 8, !tbaa !75
  %65 = call float @llvm.floor.f32(float %64)
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %68 = load float, ptr %67, align 8, !tbaa !76
  %69 = call float @llvm.floor.f32(float %68)
  %70 = fptosi float %69 to i32
  %71 = icmp slt i32 %66, %59
  br i1 %71, label %72, label %113

72:                                               ; preds = %51
  %73 = icmp slt i32 %70, %63
  %74 = icmp eq ptr %16, null
  %75 = getelementptr inbounds %struct.Image, ptr %16, i64 0, i32 14
  br label %76

76:                                               ; preds = %72, %98
  %77 = phi i32 [ %66, %72 ], [ %99, %98 ]
  br i1 %73, label %78, label %98

78:                                               ; preds = %76
  %79 = sitofp i32 %77 to float
  %80 = sitofp i32 %77 to float
  br label %84

81:                                               ; preds = %94
  %82 = add nsw i32 %85, 1
  %83 = icmp eq i32 %82, %63
  br i1 %83, label %98, label %84, !llvm.loop !77

84:                                               ; preds = %78, %81
  %85 = phi i32 [ %70, %78 ], [ %82, %81 ]
  br i1 %74, label %92, label %86

86:                                               ; preds = %84
  %87 = load i16, ptr %75, align 8, !tbaa !80
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = sitofp i32 %85 to float
  call fastcc void @draw_image_buffer_tiled(ptr noundef %14, ptr noundef %1, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %41, float noundef %79, float noundef %91, float noundef %52, float noundef %53)
  br label %94

92:                                               ; preds = %86, %84
  %93 = sitofp i32 %85 to float
  call fastcc void @draw_image_buffer(ptr noundef %0, ptr noundef %14, ptr noundef %1, ptr noundef %15, ptr noundef nonnull %41, float noundef %80, float noundef %93, float noundef %52, float noundef %53)
  br label %94

94:                                               ; preds = %92, %90
  %95 = call double @PIL_check_seconds_timer() #7
  %96 = fsub double %95, %54
  %97 = fcmp ogt double %96, 2.500000e-01
  br i1 %97, label %113, label %81

98:                                               ; preds = %81, %76
  %99 = add i32 %77, 1
  %100 = icmp eq i32 %99, %59
  br i1 %100, label %113, label %76, !llvm.loop !81

101:                                              ; preds = %46
  br i1 %17, label %102, label %110

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.Image, ptr %16, i64 0, i32 14
  %104 = load i16, ptr %103, align 8, !tbaa !80
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load float, ptr %11, align 4, !tbaa !45
  %109 = load float, ptr %12, align 4, !tbaa !45
  call fastcc void @draw_image_buffer_tiled(ptr noundef %14, ptr noundef %1, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %41, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %108, float noundef %109)
  br label %113

110:                                              ; preds = %102, %101
  %111 = load float, ptr %11, align 4, !tbaa !45
  %112 = load float, ptr %12, align 4, !tbaa !45
  call fastcc void @draw_image_buffer(ptr noundef %0, ptr noundef %14, ptr noundef %1, ptr noundef %15, ptr noundef nonnull %41, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %111, float noundef %112)
  br label %113

113:                                              ; preds = %98, %94, %51, %110, %107, %43
  br i1 %38, label %190, label %114

114:                                              ; preds = %113
  %115 = load float, ptr %11, align 4, !tbaa !45
  %116 = load float, ptr %12, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %117 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 20
  %118 = load ptr, ptr %117, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.ToolSettings, ptr %118, i64 0, i32 17
  %120 = call ptr @BKE_paint_brush(ptr noundef nonnull %119) #7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %189, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.Brush, ptr %120, i64 0, i32 36
  %124 = load i8, ptr %123, align 2, !tbaa !99
  %125 = icmp eq i8 %124, 3
  br i1 %125, label %126, label %189

126:                                              ; preds = %122
  %127 = load ptr, ptr %117, align 8, !tbaa !82
  %128 = getelementptr inbounds %struct.ToolSettings, ptr %127, i64 0, i32 17
  %129 = call ptr @BKE_paint_brush(ptr noundef nonnull %128) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %130 = icmp eq ptr %129, null
  br i1 %130, label %173, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.Brush, ptr %129, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !103
  %134 = icmp eq ptr %133, null
  br i1 %134, label %173, label %135

135:                                              ; preds = %131
  %136 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #7
  %137 = icmp eq ptr %136, null
  br i1 %137, label %173, label %138

138:                                              ; preds = %135
  %139 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %136, ptr noundef nonnull %8) #7
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load ptr, ptr %132, align 8, !tbaa !103
  call void @BKE_image_release_ibuf(ptr noundef %142, ptr noundef nonnull %136, ptr noundef null) #7
  %143 = load ptr, ptr %8, align 8, !tbaa !104
  call void @IMB_display_buffer_release(ptr noundef %143) #7
  br label %173

144:                                              ; preds = %138
  %145 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !104
  %146 = call ptr %145(ptr noundef nonnull %139) #7
  %147 = load ptr, ptr %8, align 8, !tbaa !104
  call void @IMB_display_buffer_release(ptr noundef %147) #7
  %148 = icmp eq ptr %146, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load ptr, ptr %132, align 8, !tbaa !103
  call void @BKE_image_release_ibuf(ptr noundef %150, ptr noundef nonnull %136, ptr noundef null) #7
  br label %173

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.ImBuf, ptr %136, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !105
  %154 = getelementptr inbounds %struct.ImBuf, ptr %136, i64 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !108
  %156 = mul nsw i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.Brush, ptr %129, i64 0, i32 1, i32 2
  %160 = load float, ptr %159, align 8, !tbaa !109
  %161 = fmul float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = trunc i32 %162 to i8
  br label %164

164:                                              ; preds = %158, %164
  %165 = phi ptr [ %146, %158 ], [ %169, %164 ]
  %166 = phi i32 [ %156, %158 ], [ %167, %164 ]
  %167 = add i32 %166, -1
  %168 = getelementptr inbounds i8, ptr %165, i64 3
  store i8 %163, ptr %168, align 1, !tbaa !52
  %169 = getelementptr inbounds i8, ptr %165, i64 4
  %170 = icmp eq i32 %167, 0
  br i1 %170, label %171, label %164, !llvm.loop !110

171:                                              ; preds = %164, %151
  %172 = load ptr, ptr %132, align 8, !tbaa !103
  call void @BKE_image_release_ibuf(ptr noundef %172, ptr noundef nonnull %136, ptr noundef null) #7
  br label %173

173:                                              ; preds = %171, %149, %141, %135, %131, %126
  %174 = phi i32 [ undef, %126 ], [ undef, %131 ], [ undef, %135 ], [ undef, %141 ], [ undef, %149 ], [ %153, %171 ]
  %175 = phi i32 [ undef, %126 ], [ undef, %131 ], [ undef, %135 ], [ undef, %141 ], [ undef, %149 ], [ %155, %171 ]
  %176 = phi ptr [ null, %126 ], [ null, %131 ], [ null, %135 ], [ null, %141 ], [ null, %149 ], [ %146, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %180 = getelementptr inbounds %struct.Brush, ptr %120, i64 0, i32 1, i32 1
  %181 = load float, ptr %180, align 8, !tbaa !45
  %182 = getelementptr inbounds %struct.Brush, ptr %120, i64 0, i32 1, i32 1, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !45
  call void @UI_view2d_view_to_region(ptr noundef nonnull %179, float noundef %181, float noundef %183, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  call void @glPixelZoom(float noundef %115, float noundef %116) #7
  call void @glEnable(i32 noundef 3042) #7
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  %184 = load i32, ptr %9, align 4, !tbaa !49
  %185 = sitofp i32 %184 to float
  %186 = load i32, ptr %10, align 4, !tbaa !49
  %187 = sitofp i32 %186 to float
  call void @glaDrawPixelsSafe(float noundef %185, float noundef %187, i32 noundef %174, i32 noundef %175, i32 noundef %174, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %176) #7
  call void @glDisable(i32 noundef 3042) #7
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %188(ptr noundef nonnull %176) #7
  br label %189

189:                                              ; preds = %114, %122, %173, %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  br label %190

190:                                              ; preds = %189, %113
  %191 = load ptr, ptr %13, align 8, !tbaa !104
  call void @ED_space_image_release_buffer(ptr noundef %14, ptr noundef %41, ptr noundef %191) #7
  br i1 %23, label %193, label %192

192:                                              ; preds = %190
  call void @BLI_unlock_thread(i32 noundef 1) #7
  br label %193

193:                                              ; preds = %192, %190
  %194 = select i1 %17, i1 %29, i1 false
  br i1 %194, label %195, label %267

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !111
  %198 = load float, ptr %11, align 4, !tbaa !45
  %199 = load float, ptr %12, align 4, !tbaa !45
  %200 = getelementptr inbounds %struct.ID, ptr %197, i64 0, i32 4
  %201 = call ptr @RE_GetRender(ptr noundef nonnull %200) #7
  %202 = call ptr @RE_engine_get_render_data(ptr noundef %201) #7
  %203 = call ptr @BKE_image_acquire_renderresult(ptr noundef %197, ptr noundef nonnull %16) #7
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.RenderResult, ptr %203, i64 0, i32 18
  %207 = load ptr, ptr %206, align 8, !tbaa !112
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_render_info.fill_color, i64 16, i1 false)
  call void @ED_region_info_draw(ptr noundef %1, ptr noundef nonnull %207, i32 noundef 1, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %210

210:                                              ; preds = %209, %205, %195
  call void @BKE_image_release_renderresult(ptr noundef %197, ptr noundef nonnull %16) #7
  %211 = icmp eq ptr %201, null
  br i1 %211, label %267, label %212

212:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @RE_engine_get_current_tiles(ptr noundef nonnull %201, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %213 = load i32, ptr %4, align 4, !tbaa !49
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %266, label %215

215:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %216 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %216, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  call void @glPushMatrix() #7
  %217 = load i32, ptr %6, align 4, !tbaa !49
  %218 = sitofp i32 %217 to float
  %219 = load i32, ptr %7, align 4, !tbaa !49
  %220 = sitofp i32 %219 to float
  call void @glTranslatef(float noundef %218, float noundef %220, float noundef 0.000000e+00) #7
  call void @glScalef(float noundef %198, float noundef %199, float noundef 1.000000e+00) #7
  %221 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 47
  %222 = load i32, ptr %221, align 8, !tbaa !114
  %223 = and i32 %222, 512
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %251, label %225

225:                                              ; preds = %215
  %226 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 58
  %227 = load float, ptr %226, align 8, !tbaa !115
  %228 = fneg float %227
  %229 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 33
  %230 = load i32, ptr %229, align 4, !tbaa !116
  %231 = sitofp i32 %230 to float
  %232 = fmul float %228, %231
  %233 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 30
  %234 = load i16, ptr %233, align 2, !tbaa !117
  %235 = sitofp i16 %234 to float
  %236 = fmul float %232, %235
  %237 = fdiv float %236, 1.000000e+02
  %238 = fptosi float %237 to i32
  %239 = sitofp i32 %238 to float
  %240 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 58, i32 2
  %241 = load float, ptr %240, align 8, !tbaa !118
  %242 = fneg float %241
  %243 = getelementptr inbounds %struct.RenderData, ptr %202, i64 0, i32 34
  %244 = load i32, ptr %243, align 8, !tbaa !119
  %245 = sitofp i32 %244 to float
  %246 = fmul float %242, %245
  %247 = fmul float %246, %235
  %248 = fdiv float %247, 1.000000e+02
  %249 = fptosi float %248 to i32
  %250 = sitofp i32 %249 to float
  call void @glTranslatef(float noundef %239, float noundef %250, float noundef 0.000000e+00) #7
  br label %251

251:                                              ; preds = %225, %215
  call void @UI_ThemeColor(i32 noundef 43) #7
  %252 = load i32, ptr %4, align 4, !tbaa !49
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load ptr, ptr %5, align 8, !tbaa !104
  br label %256

256:                                              ; preds = %254, %256
  %257 = phi ptr [ %260, %256 ], [ %255, %254 ]
  %258 = phi i32 [ %259, %256 ], [ 0, %254 ]
  call void @glaDrawBorderCorners(ptr noundef %257, float noundef %198, float noundef %199) #7
  %259 = add nuw nsw i32 %258, 1
  %260 = getelementptr inbounds %struct.rcti, ptr %257, i64 1
  %261 = load i32, ptr %4, align 4, !tbaa !49
  %262 = icmp slt i32 %259, %261
  br i1 %262, label %256, label %263, !llvm.loop !120

263:                                              ; preds = %256, %251
  %264 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %265 = load ptr, ptr %5, align 8, !tbaa !104
  call void %264(ptr noundef %265) #7
  call void @glPopMatrix() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %266

266:                                              ; preds = %263, %212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %267

267:                                              ; preds = %266, %210, %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  ret void
}

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #3

declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #3

declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_grid_draw(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_image_buffer_tiled(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  %13 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 16
  %14 = load i16, ptr %13, align 4, !tbaa !121
  %15 = icmp slt i16 %14, 1
  br i1 %15, label %138, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 17
  %18 = load i16, ptr %17, align 2, !tbaa !122
  %19 = icmp slt i16 %18, 1
  br i1 %19, label %138, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !123
  %23 = and i16 %22, 2048
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %27 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %28 = call ptr @IMB_display_buffer_acquire(ptr noundef %4, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %12) #7
  br label %32

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %31 = call ptr @IMB_display_buffer_acquire(ptr noundef %4, ptr noundef null, ptr noundef nonnull %30, ptr noundef nonnull %12) #7
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %28, %25 ], [ %31, %29 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %138, label %35

35:                                               ; preds = %32
  call void @glPixelZoom(float noundef %7, float noundef %8) #7
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 20
  %37 = load i16, ptr %36, align 8, !tbaa !124
  %38 = sext i16 %37 to i32
  %39 = load i16, ptr %13, align 4, !tbaa !121
  %40 = sext i16 %39 to i32
  %41 = load i16, ptr %17, align 2, !tbaa !122
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %42, %40
  %44 = icmp sgt i32 %43, %38
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = trunc i32 %43 to i16
  %47 = add i16 %46, -1
  store i16 %47, ptr %36, align 8, !tbaa !124
  br label %48

48:                                               ; preds = %45, %35
  %49 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !105
  %51 = sdiv i32 %50, %40
  %52 = call i32 @llvm.smax.i32(i32 %51, i32 1)
  %53 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !108
  %55 = sdiv i32 %54, %42
  %56 = call i32 @llvm.smax.i32(i32 %55, i32 1)
  %57 = load i16, ptr %36, align 8, !tbaa !124
  %58 = sext i16 %57 to i32
  %59 = srem i32 %58, %40
  %60 = mul nsw i32 %59, %52
  %61 = sdiv i32 %58, %40
  %62 = mul nsw i32 %61, %56
  %63 = trunc i32 %60 to i16
  %64 = trunc i32 %62 to i16
  %65 = add nsw i32 %60, %52
  %66 = trunc i32 %65 to i16
  %67 = add nsw i32 %62, %56
  %68 = trunc i32 %67 to i16
  %69 = sub i16 %66, %63
  %70 = sub i16 %68, %64
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !104
  %72 = sext i16 %70 to i32
  %73 = sext i16 %69 to i32
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 2
  %77 = call ptr %71(i64 noundef %76, ptr noundef nonnull @.str.21) #7
  %78 = icmp sgt i16 %70, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %48
  %80 = shl i32 %62, 16
  %81 = ashr exact i32 %80, 16
  %82 = mul nsw i32 %81, %50
  %83 = shl i32 %60, 16
  %84 = ashr exact i32 %83, 16
  %85 = add nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %33, i64 %86
  %88 = shl nsw i32 %73, 2
  %89 = sext i32 %88 to i64
  %90 = sext i32 %50 to i64
  %91 = sext i16 %69 to i64
  br label %97

92:                                               ; preds = %97, %48
  %93 = load i32, ptr %53, align 4, !tbaa !108
  %94 = icmp sgt i32 %56, %93
  br i1 %94, label %135, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br label %109

97:                                               ; preds = %79, %97
  %98 = phi ptr [ %87, %79 ], [ %101, %97 ]
  %99 = phi ptr [ %77, %79 ], [ %102, %97 ]
  %100 = phi i16 [ 0, %79 ], [ %103, %97 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %99, ptr align 4 %98, i64 %89, i1 false)
  %101 = getelementptr inbounds i32, ptr %98, i64 %90
  %102 = getelementptr inbounds i32, ptr %99, i64 %91
  %103 = add nuw nsw i16 %100, 1
  %104 = icmp eq i16 %103, %70
  br i1 %104, label %92, label %97, !llvm.loop !125

105:                                              ; preds = %116, %109
  %106 = add nuw nsw i32 %110, %56
  %107 = load i32, ptr %53, align 4, !tbaa !108
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %135, label %109, !llvm.loop !126

109:                                              ; preds = %95, %105
  %110 = phi i32 [ %56, %95 ], [ %106, %105 ]
  %111 = phi i32 [ 0, %95 ], [ %110, %105 ]
  %112 = load i32, ptr %49, align 8, !tbaa !105
  %113 = icmp sgt i32 %52, %112
  br i1 %113, label %105, label %114

114:                                              ; preds = %109
  %115 = sitofp i32 %111 to float
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i32 [ %112, %114 ], [ %133, %116 ]
  %118 = phi i32 [ %52, %114 ], [ %132, %116 ]
  %119 = phi i32 [ 0, %114 ], [ %118, %116 ]
  %120 = sitofp i32 %119 to float
  %121 = sitofp i32 %117 to float
  %122 = fdiv float %120, %121
  %123 = fadd float %122, %5
  %124 = load i32, ptr %53, align 4, !tbaa !108
  %125 = sitofp i32 %124 to float
  %126 = fdiv float %115, %125
  %127 = fadd float %126, %6
  call void @UI_view2d_view_to_region(ptr noundef nonnull %96, float noundef %123, float noundef %127, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %128 = load i32, ptr %10, align 4, !tbaa !49
  %129 = sitofp i32 %128 to float
  %130 = load i32, ptr %11, align 4, !tbaa !49
  %131 = sitofp i32 %130 to float
  call void @glaDrawPixelsSafe(float noundef %129, float noundef %131, i32 noundef %52, i32 noundef %56, i32 noundef %52, i32 noundef 6408, i32 noundef 5121, ptr noundef %77) #7
  %132 = add nuw nsw i32 %118, %52
  %133 = load i32, ptr %49, align 8, !tbaa !105
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %105, label %116, !llvm.loop !127

135:                                              ; preds = %105, %92
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  %136 = load ptr, ptr %12, align 8, !tbaa !104
  call void @IMB_display_buffer_release(ptr noundef %136) #7
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %137(ptr noundef %77) #7
  br label %138

138:                                              ; preds = %32, %16, %9, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_image_buffer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  tail call void @glPixelZoom(float noundef %7, float noundef %8) #7
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  tail call void @glaDefine2DArea(ptr noundef nonnull %12) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %13, float noundef %5, float noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %10, align 4, !tbaa !49
  %24 = sitofp i32 %23 to float
  %25 = load i32, ptr %11, align 4, !tbaa !49
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !108
  call void @glaDrawPixelsSafe(float noundef %24, float noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %28, i32 noundef 6409, i32 noundef 5125, ptr noundef nonnull %20) #7
  call void @glPixelStorei(i32 noundef 3312, i32 noundef 0) #7
  br label %249

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !129
  %34 = icmp eq ptr %33, null
  br i1 %34, label %249, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !130
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %249

39:                                               ; preds = %35
  %40 = load i32, ptr %10, align 4, !tbaa !49
  %41 = sitofp i32 %40 to float
  %42 = load i32, ptr %11, align 4, !tbaa !49
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !105
  %46 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !108
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !104
  %49 = mul nsw i32 %47, %45
  %50 = shl nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = call ptr %48(i64 noundef %51, ptr noundef nonnull @.str.22) #7
  %53 = icmp sgt i32 %49, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %39
  %55 = add nsw i32 %49, -1
  %56 = shl i32 %55, 2
  %57 = or disjoint i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = zext i32 %55 to i64
  br label %60

60:                                               ; preds = %54, %60
  %61 = phi i64 [ %59, %54 ], [ %66, %60 ]
  %62 = phi i64 [ %58, %54 ], [ %67, %60 ]
  %63 = getelementptr inbounds float, ptr %33, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !45
  %65 = getelementptr inbounds float, ptr %52, i64 %61
  store float %64, ptr %65, align 4, !tbaa !45
  %66 = add nsw i64 %61, -1
  %67 = add nsw i64 %62, -4
  %68 = icmp sgt i64 %61, 0
  br i1 %68, label %60, label %69, !llvm.loop !131

69:                                               ; preds = %60, %39
  call void @glaDrawPixelsSafe(float noundef %41, float noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %45, i32 noundef 6409, i32 noundef 5126, ptr noundef %52) #7
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %70(ptr noundef %52) #7
  br label %249

71:                                               ; preds = %9
  %72 = and i32 %15, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %224, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 16
  %76 = load ptr, ptr %75, align 8, !tbaa !132
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !133
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %84 = load i32, ptr %83, align 4, !tbaa !130
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %224

86:                                               ; preds = %82, %78
  br i1 %77, label %96, label %87

87:                                               ; preds = %74, %86
  %88 = load i32, ptr %10, align 4, !tbaa !49
  %89 = sitofp i32 %88 to float
  %90 = load i32, ptr %11, align 4, !tbaa !49
  %91 = sitofp i32 %90 to float
  %92 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !105
  %94 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !108
  call void @glPixelTransferf(i32 noundef 3348, float noundef 5.000000e-01) #7
  call void @glPixelTransferf(i32 noundef 3352, float noundef 5.000000e-01) #7
  call void @glPixelTransferf(i32 noundef 3354, float noundef 5.000000e-01) #7
  call void @glPixelTransferf(i32 noundef 3349, float noundef 5.000000e-01) #7
  call void @glPixelTransferf(i32 noundef 3353, float noundef 5.000000e-01) #7
  call void @glPixelTransferf(i32 noundef 3355, float noundef 5.000000e-01) #7
  call void @glaDrawPixelsSafe(float noundef %89, float noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %93, i32 noundef 6409, i32 noundef 5124, ptr noundef nonnull %76) #7
  call void @glPixelTransferf(i32 noundef 3348, float noundef 1.000000e+00) #7
  call void @glPixelTransferf(i32 noundef 3352, float noundef 1.000000e+00) #7
  call void @glPixelTransferf(i32 noundef 3354, float noundef 1.000000e+00) #7
  call void @glPixelTransferf(i32 noundef 3349, float noundef 0.000000e+00) #7
  call void @glPixelTransferf(i32 noundef 3353, float noundef 0.000000e+00) #7
  call void @glPixelTransferf(i32 noundef 3355, float noundef 0.000000e+00) #7
  br label %249

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !133
  %99 = icmp eq ptr %98, null
  br i1 %99, label %159, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %10, align 4, !tbaa !49
  %102 = sitofp i32 %101 to float
  %103 = load i32, ptr %11, align 4, !tbaa !49
  %104 = sitofp i32 %103 to float
  %105 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !105
  %107 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !108
  %109 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !134
  %111 = icmp eq ptr %110, null
  br i1 %111, label %125, label %112

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 3
  %114 = load i16, ptr %113, align 8, !tbaa !135
  %115 = icmp eq i16 %114, 11
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Object, ptr %110, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !138
  %119 = getelementptr inbounds %struct.Camera, ptr %118, i64 0, i32 6
  %120 = load float, ptr %119, align 8, !tbaa !139
  %121 = getelementptr inbounds %struct.Camera, ptr %118, i64 0, i32 7
  %122 = load float, ptr %121, align 4, !tbaa !141
  %123 = fsub float %122, %120
  %124 = fdiv float 1.000000e+00, %123
  br label %125

125:                                              ; preds = %116, %112, %100
  %126 = phi float [ %124, %116 ], [ 0x3F847AE140000000, %112 ], [ 0x3F847AE140000000, %100 ]
  %127 = phi float [ %120, %116 ], [ 0x3FB99999A0000000, %112 ], [ 0x3FB99999A0000000, %100 ]
  %128 = phi float [ %122, %116 ], [ 1.000000e+02, %112 ], [ 1.000000e+02, %100 ]
  %129 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !104
  %130 = mul nsw i32 %108, %106
  %131 = shl nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = call ptr %129(i64 noundef %132, ptr noundef nonnull @.str.22) #7
  %134 = icmp sgt i32 %130, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %125
  %136 = zext nneg i32 %130 to i64
  br label %137

137:                                              ; preds = %155, %135
  %138 = phi i64 [ %136, %135 ], [ %139, %155 ]
  %139 = add nsw i64 %138, -1
  %140 = getelementptr inbounds float, ptr %98, i64 %139
  %141 = load float, ptr %140, align 4, !tbaa !45
  %142 = fcmp ogt float %141, %128
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = getelementptr inbounds float, ptr %133, i64 %139
  store float 0.000000e+00, ptr %144, align 4, !tbaa !45
  br label %155

145:                                              ; preds = %137
  %146 = fcmp olt float %141, %127
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = getelementptr inbounds float, ptr %133, i64 %139
  store float 1.000000e+00, ptr %148, align 4, !tbaa !45
  br label %155

149:                                              ; preds = %145
  %150 = fsub float %141, %127
  %151 = fneg float %150
  %152 = call float @llvm.fmuladd.f32(float %151, float %126, float 1.000000e+00)
  %153 = getelementptr inbounds float, ptr %133, i64 %139
  %154 = fmul float %152, %152
  store float %154, ptr %153, align 4, !tbaa !45
  br label %155

155:                                              ; preds = %149, %147, %143
  %156 = icmp sgt i64 %138, 1
  br i1 %156, label %137, label %157, !llvm.loop !142

157:                                              ; preds = %155, %125
  call void @glaDrawPixelsSafe(float noundef %102, float noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %106, i32 noundef 6409, i32 noundef 5126, ptr noundef %133) #7
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %158(ptr noundef %133) #7
  br label %249

159:                                              ; preds = %96
  %160 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %161 = load i32, ptr %160, align 4, !tbaa !130
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %249

163:                                              ; preds = %159
  %164 = load i32, ptr %10, align 4, !tbaa !49
  %165 = sitofp i32 %164 to float
  %166 = load i32, ptr %11, align 4, !tbaa !49
  %167 = sitofp i32 %166 to float
  %168 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !105
  %170 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %171 = load i32, ptr %170, align 4, !tbaa !108
  %172 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %173 = load ptr, ptr %172, align 8, !tbaa !129
  %174 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !134
  %176 = icmp eq ptr %175, null
  br i1 %176, label %190, label %177

177:                                              ; preds = %163
  %178 = getelementptr inbounds %struct.Object, ptr %175, i64 0, i32 3
  %179 = load i16, ptr %178, align 8, !tbaa !135
  %180 = icmp eq i16 %179, 11
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.Object, ptr %175, i64 0, i32 19
  %183 = load ptr, ptr %182, align 8, !tbaa !138
  %184 = getelementptr inbounds %struct.Camera, ptr %183, i64 0, i32 6
  %185 = load float, ptr %184, align 8, !tbaa !139
  %186 = getelementptr inbounds %struct.Camera, ptr %183, i64 0, i32 7
  %187 = load float, ptr %186, align 4, !tbaa !141
  %188 = fsub float %187, %185
  %189 = fdiv float 1.000000e+00, %188
  br label %190

190:                                              ; preds = %181, %177, %163
  %191 = phi float [ %189, %181 ], [ 0x3F847AE140000000, %177 ], [ 0x3F847AE140000000, %163 ]
  %192 = phi float [ %185, %181 ], [ 0x3FB99999A0000000, %177 ], [ 0x3FB99999A0000000, %163 ]
  %193 = phi float [ %187, %181 ], [ 1.000000e+02, %177 ], [ 1.000000e+02, %163 ]
  %194 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !104
  %195 = mul nsw i32 %171, %169
  %196 = shl nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = call ptr %194(i64 noundef %197, ptr noundef nonnull @.str.22) #7
  %199 = icmp sgt i32 %195, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %190
  %201 = zext nneg i32 %195 to i64
  br label %202

202:                                              ; preds = %220, %200
  %203 = phi i64 [ %201, %200 ], [ %204, %220 ]
  %204 = add nsw i64 %203, -1
  %205 = getelementptr inbounds float, ptr %173, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !45
  %207 = fcmp ogt float %206, %193
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = getelementptr inbounds float, ptr %198, i64 %204
  store float 0.000000e+00, ptr %209, align 4, !tbaa !45
  br label %220

210:                                              ; preds = %202
  %211 = fcmp olt float %206, %192
  br i1 %211, label %212, label %214

212:                                              ; preds = %210
  %213 = getelementptr inbounds float, ptr %198, i64 %204
  store float 1.000000e+00, ptr %213, align 4, !tbaa !45
  br label %220

214:                                              ; preds = %210
  %215 = fsub float %206, %192
  %216 = fneg float %215
  %217 = call float @llvm.fmuladd.f32(float %216, float %191, float 1.000000e+00)
  %218 = getelementptr inbounds float, ptr %198, i64 %204
  %219 = fmul float %217, %217
  store float %219, ptr %218, align 4, !tbaa !45
  br label %220

220:                                              ; preds = %214, %212, %208
  %221 = icmp sgt i64 %203, 1
  br i1 %221, label %202, label %222, !llvm.loop !142

222:                                              ; preds = %220, %190
  call void @glaDrawPixelsSafe(float noundef %165, float noundef %167, i32 noundef %169, i32 noundef %171, i32 noundef %169, i32 noundef 6409, i32 noundef 5126, ptr noundef %198) #7
  %223 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %223(ptr noundef %198) #7
  br label %249

224:                                              ; preds = %82, %71
  %225 = and i32 %15, 4096
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %240, label %227

227:                                              ; preds = %224
  call void @glEnable(i32 noundef 3042) #7
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  %228 = load i32, ptr %10, align 4, !tbaa !49
  %229 = sitofp i32 %228 to float
  %230 = load i32, ptr %11, align 4, !tbaa !49
  %231 = sitofp i32 %230 to float
  %232 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %233 = load i32, ptr %232, align 8, !tbaa !105
  %234 = sitofp i32 %233 to float
  %235 = call float @llvm.fmuladd.f32(float %234, float %7, float %229)
  %236 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %237 = load i32, ptr %236, align 4, !tbaa !108
  %238 = sitofp i32 %237 to float
  %239 = call float @llvm.fmuladd.f32(float %238, float %8, float %231)
  call void @fdrawcheckerboard(float noundef %229, float noundef %231, float noundef %235, float noundef %239) #7
  br label %240

240:                                              ; preds = %227, %224
  %241 = load i32, ptr %10, align 4, !tbaa !49
  %242 = sitofp i32 %241 to float
  %243 = load i32, ptr %11, align 4, !tbaa !49
  %244 = sitofp i32 %243 to float
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef %4, float noundef %242, float noundef %244, i32 noundef 9728) #7
  %245 = load i32, ptr %14, align 4, !tbaa !69
  %246 = and i32 %245, 4096
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %240
  call void @glDisable(i32 noundef 3042) #7
  br label %249

249:                                              ; preds = %157, %222, %159, %87, %248, %240, %22, %69, %35, %31
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  ret void
}

declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @draw_image_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @ED_space_image(ptr noundef %5) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !143
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !144
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !145
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !146
  %19 = sitofp i16 %18 to float
  %20 = fsub float %16, %13
  %21 = fadd float %20, 1.000000e+00
  %22 = fdiv float %19, %21
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %24 = load i8, ptr %23, align 4, !tbaa !68
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = tail call ptr @ED_space_image_get_mask(ptr noundef %5) #7
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ]
  %30 = icmp eq ptr %7, null
  %31 = icmp eq ptr %29, null
  %32 = and i1 %30, %31
  %33 = xor i1 %31, true
  %34 = or i1 %30, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %37 = load i16, ptr %36, align 8, !tbaa !63
  %38 = and i16 %37, -2
  %39 = icmp ne i16 %38, 2
  br label %40

40:                                               ; preds = %28, %35
  %41 = phi i1 [ %39, %35 ], [ %32, %28 ]
  br i1 %41, label %89, label %42

42:                                               ; preds = %40
  tail call void @glEnable(i32 noundef 3042) #7
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  tail call void @ED_region_cache_draw_background(ptr noundef %1) #7
  br i1 %30, label %62, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !147
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %49 = load i16, ptr %48, align 8, !tbaa !63
  %50 = and i16 %49, -2
  %51 = icmp eq i16 %50, 2
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !104
  call void @IMB_moviecache_get_cache_segments(ptr noundef nonnull %45, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %53 = load i32, ptr %3, align 4, !tbaa !49
  %54 = load ptr, ptr %4, align 8, !tbaa !104
  %55 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 6, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !148
  %57 = sitofp i32 %56 to float
  %58 = fadd float %13, %57
  %59 = fptosi float %58 to i32
  %60 = fadd float %16, %57
  %61 = fptosi float %60 to i32
  call void @ED_region_cache_draw_cached_segments(ptr noundef %1, i32 noundef %53, ptr noundef %54, i32 noundef %59, i32 noundef %61) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %62

62:                                               ; preds = %47, %52, %43, %42
  call void @glDisable(i32 noundef 3042) #7
  %63 = fsub float %10, %13
  %64 = fdiv float %63, %21
  %65 = load i16, ptr %17, align 8, !tbaa !146
  %66 = sitofp i16 %65 to float
  %67 = fmul float %64, %66
  call void @UI_ThemeColor(i32 noundef 49) #7
  %68 = fptosi float %67 to i32
  %69 = call float @llvm.ceil.f32(float %22)
  %70 = fadd float %69, %67
  %71 = fptosi float %70 to i32
  %72 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !50
  %73 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !51
  %74 = sitofp i32 %73 to float
  %75 = fmul float %72, %74
  %76 = fdiv float %75, 7.200000e+01
  %77 = fmul float %76, 8.000000e+00
  %78 = fptosi float %77 to i32
  call void @glRecti(i32 noundef %68, i32 noundef 0, i32 noundef %71, i32 noundef %78) #7
  %79 = fptosi float %10 to i32
  %80 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !50
  %81 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !51
  %82 = sitofp i32 %81 to float
  %83 = fmul float %80, %82
  %84 = fdiv float %83, 7.200000e+01
  %85 = fmul float %84, 8.000000e+00
  call void @ED_region_cache_draw_curfra_label(i32 noundef %79, float noundef %67, float noundef %85) #7
  br i1 %31, label %89, label %86

86:                                               ; preds = %62
  %87 = fptosi float %13 to i32
  %88 = fptosi float %16 to i32
  call void @ED_mask_draw_frames(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %79, i32 noundef %87, i32 noundef %88) #7
  br label %89

89:                                               ; preds = %62, %86, %40
  ret void
}

declare ptr @ED_space_image_get_mask(ptr noundef) local_unnamed_addr #3

declare void @ED_region_cache_draw_background(ptr noundef) local_unnamed_addr #3

declare void @IMB_moviecache_get_cache_segments(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_cache_draw_cached_segments(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @ED_mask_draw_frames(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #3

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #3

declare void @glaDefine2DArea(ptr noundef) local_unnamed_addr #3

declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #3

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #3

declare ptr @RE_engine_get_render_data(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_image_acquire_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_image_release_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RE_engine_get_current_tiles(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glPushMatrix() local_unnamed_addr #3

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glaDrawBorderCorners(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glPopMatrix() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !39, i64 8948}
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
!45 = !{!42, !42, i64 0}
!46 = !{!47, !36, i64 4}
!47 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!48 = !{!47, !36, i64 0}
!49 = !{!36, !36, i64 0}
!50 = !{!35, !42, i64 10908}
!51 = !{!35, !36, i64 8524}
!52 = !{!37, !37, i64 0}
!53 = !{!47, !36, i64 8}
!54 = !{!47, !36, i64 12}
!55 = !{i64 0, i64 4, !49, i64 4, i64 4, !49}
!56 = !{i64 0, i64 4, !49}
!57 = !{!58, !39, i64 10498}
!58 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !59, i64 48, !41, i64 88, !60, i64 96, !61, i64 5360, !41, i64 10520, !37, i64 10528, !42, i64 10536, !42, i64 10540, !42, i64 10544, !42, i64 10548, !42, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !62, i64 10568}
!59 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!60 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !42, i64 12, !36, i64 16, !42, i64 20, !42, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !37, i64 40, !61, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!61 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !42, i64 5128, !42, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!62 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!63 = !{!64, !39, i64 1248}
!64 = !{!"Image", !65, i64 0, !37, i64 120, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !36, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !36, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !42, i64 1296, !36, i64 1300, !39, i64 1304, !39, i64 1306, !36, i64 1308, !36, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !42, i64 1336, !42, i64 1340, !66, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!65 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!66 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!67 = !{!64, !39, i64 1250}
!68 = !{!58, !37, i64 10556}
!69 = !{!58, !36, i64 36}
!70 = !{!71, !42, i64 36}
!71 = !{!"ARegion", !41, i64 0, !41, i64 8, !72, i64 16, !47, i64 176, !47, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!72 = !{!"View2D", !73, i64 0, !73, i64 16, !47, i64 32, !47, i64 48, !47, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!73 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!74 = !{!71, !42, i64 44}
!75 = !{!71, !42, i64 32}
!76 = !{!71, !42, i64 40}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!64, !39, i64 1256}
!81 = distinct !{!81, !78, !79}
!82 = !{!83, !41, i64 264}
!83 = !{!"Scene", !65, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !84, i64 280, !91, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !41, i64 4608, !97, i64 4616, !41, i64 4640, !98, i64 4648, !98, i64 4656, !86, i64 4664, !87, i64 4824, !66, i64 4888, !41, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !41, i64 248, !41, i64 256, !88, i64 264, !89, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !73, i64 544, !73, i64 560, !47, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !90, i64 2616, !36, i64 3976, !36, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!89 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!90 = !{!"BakeData", !85, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !94, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !95, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!94 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!95 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!96 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!98 = !{!"long", !37, i64 0}
!99 = !{!100, !37, i64 1946}
!100 = !{!"Brush", !65, i64 0, !101, i64 120, !41, i64 144, !102, i64 152, !102, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !42, i64 1840, !39, i64 1844, !39, i64 1846, !42, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !42, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !42, i64 1884, !42, i64 1888, !37, i64 1892, !42, i64 1904, !37, i64 1908, !36, i64 1920, !42, i64 1924, !42, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !42, i64 1948, !42, i64 1952, !42, i64 1956, !42, i64 1960, !42, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !42, i64 1980, !42, i64 1984, !36, i64 1988, !36, i64 1992, !42, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!101 = !{!"BrushClone", !41, i64 0, !37, i64 8, !42, i64 16, !42, i64 20}
!102 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !42, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308}
!103 = !{!100, !41, i64 120}
!104 = !{!41, !41, i64 0}
!105 = !{!106, !36, i64 16}
!106 = !{!"ImBuf", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !41, i64 40, !41, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !42, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !41, i64 296, !41, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !41, i64 2368, !36, i64 2376, !41, i64 2384, !36, i64 2392, !36, i64 2396, !41, i64 2400, !41, i64 2408, !41, i64 2416, !41, i64 2424, !36, i64 2432, !47, i64 2436, !107, i64 2456}
!107 = !{!"DDSData", !36, i64 0, !36, i64 4, !41, i64 8, !36, i64 16}
!108 = !{!106, !36, i64 20}
!109 = !{!100, !42, i64 136}
!110 = distinct !{!110, !78, !79}
!111 = !{!58, !41, i64 48}
!112 = !{!113, !41, i64 136}
!113 = !{!"RenderResult", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !39, i64 24, !39, i64 26, !41, i64 32, !41, i64 40, !41, i64 48, !47, i64 56, !36, i64 72, !36, i64 76, !40, i64 80, !47, i64 96, !41, i64 112, !36, i64 120, !36, i64 124, !36, i64 128, !41, i64 136}
!114 = !{!84, !36, i64 520}
!115 = !{!84, !42, i64 560}
!116 = !{!84, !36, i64 484}
!117 = !{!84, !39, i64 478}
!118 = !{!84, !42, i64 568}
!119 = !{!84, !36, i64 488}
!120 = distinct !{!120, !78, !79}
!121 = !{!64, !39, i64 1260}
!122 = !{!64, !39, i64 1262}
!123 = !{!64, !39, i64 1246}
!124 = !{!58, !39, i64 10560}
!125 = distinct !{!125, !78, !79}
!126 = distinct !{!126, !78, !79}
!127 = distinct !{!127, !78, !79}
!128 = !{!106, !41, i64 40}
!129 = !{!106, !41, i64 48}
!130 = !{!106, !36, i64 28}
!131 = distinct !{!131, !78, !79}
!132 = !{!106, !41, i64 96}
!133 = !{!106, !41, i64 104}
!134 = !{!83, !41, i64 128}
!135 = !{!136, !39, i64 136}
!136 = !{!"Object", !65, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !137, i64 312, !41, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !42, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !42, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !98, i64 1304, !98, i64 1312, !36, i64 1320, !36, i64 1324, !40, i64 1328, !40, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !40, i64 1400, !41, i64 1416}
!137 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!138 = !{!136, !41, i64 296}
!139 = !{!140, !42, i64 136}
!140 = !{!"Camera", !65, i64 0, !41, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !41, i64 176, !41, i64 184, !37, i64 192, !37, i64 193}
!141 = !{!140, !42, i64 140}
!142 = distinct !{!142, !78, !79}
!143 = !{!83, !36, i64 680}
!144 = !{!83, !36, i64 684}
!145 = !{!83, !36, i64 688}
!146 = !{!71, !39, i64 208}
!147 = !{!64, !41, i64 1144}
!148 = !{!58, !36, i64 64}
