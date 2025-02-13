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
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %27 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #11
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %29 = sitofp i16 %28 to float
  %30 = fmul float %29, 0x3FD3333340000000
  %31 = fptosi float %30 to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %15, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %16, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %17, i8 -1, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  store float 0.000000e+00, ptr %18, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  store float 0.000000e+00, ptr %19, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  store float 0.000000e+00, ptr %20, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #11
  store float 0.000000e+00, ptr %21, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  store float 0.000000e+00, ptr %22, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #11
  store float 0.000000e+00, ptr %23, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #12
  tail call void @glEnable(i32 noundef 3042) #12
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -66) #12
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %33 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %32) #13
  %34 = add nsw i32 %33, 1
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %36 = sext i16 %35 to i32
  tail call void @glRecti(i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef %36) #12
  tail call void @glDisable(i32 noundef 3042) #12
  %37 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !18
  %39 = fmul float %38, 1.100000e+01
  %40 = fptosi float %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !19
  tail call void @BLF_size(i32 noundef %37, i32 noundef %40, i32 noundef %41) #12
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  %42 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %6) #12
  %43 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %44 = sitofp i32 %31 to float
  call void @BLF_position(i32 noundef %43, float noundef 6.000000e+00, float noundef %44, float noundef 0.000000e+00) #12
  %45 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %45, ptr noundef nonnull %14, i64 noundef 256) #12
  %46 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %47 = call float @BLF_width(i32 noundef %46, ptr noundef nonnull %14, i64 noundef 256) #12
  %48 = fadd float %47, 6.000000e+00
  %49 = fptosi float %48 to i32
  %50 = icmp eq ptr %10, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %12
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  %52 = load i32, ptr %10, align 4, !tbaa !17
  %53 = sitofp i32 %52 to float
  %54 = fmul float %53, 0x3E00000000000000
  %55 = call float @llvm.fmuladd.f32(float %54, float 5.000000e-01, float 5.000000e-01)
  %56 = fpext float %55 to double
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.1, double noundef %56) #12
  %58 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %59 = sitofp i32 %49 to float
  call void @BLF_position(i32 noundef %58, float noundef %59, float noundef %44, float noundef 0.000000e+00) #12
  %60 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %60, ptr noundef nonnull %14, i64 noundef 256) #12
  %61 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %62 = call float @BLF_width(i32 noundef %61, ptr noundef nonnull %14, i64 noundef 256) #12
  %63 = fadd float %62, %59
  %64 = fptosi float %63 to i32
  br label %65

65:                                               ; preds = %51, %12
  %66 = phi i32 [ %64, %51 ], [ %49, %12 ]
  %67 = icmp eq ptr %11, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  %69 = load float, ptr %11, align 4, !tbaa !16
  %70 = fpext float %69 to double
  %71 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.2, double noundef %70) #12
  %72 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %73 = sitofp i32 %66 to float
  call void @BLF_position(i32 noundef %72, float noundef %73, float noundef %44, float noundef 0.000000e+00) #12
  %74 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %74, ptr noundef nonnull %14, i64 noundef 256) #12
  %75 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %76 = call float @BLF_width(i32 noundef %75, ptr noundef nonnull %14, i64 noundef 256) #12
  %77 = fadd float %76, %73
  %78 = fptosi float %77 to i32
  br label %79

79:                                               ; preds = %68, %65
  %80 = phi i32 [ %78, %68 ], [ %66, %65 ]
  %81 = icmp sgt i32 %4, 2
  br i1 %81, label %82, label %209

82:                                               ; preds = %79
  call void @glColor3ubv(ptr noundef nonnull %15) #12
  %83 = icmp eq ptr %8, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = load float, ptr %8, align 4, !tbaa !16
  %86 = fpext float %85 to double
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.3, double noundef %86) #12
  br label %96

88:                                               ; preds = %82
  %89 = icmp eq ptr %7, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = load i8, ptr %7, align 1, !tbaa !20
  %92 = zext i8 %91 to i32
  %93 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %92) #12
  br label %96

94:                                               ; preds = %88
  %95 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.5) #12
  br label %96

96:                                               ; preds = %90, %94, %84
  %97 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %98 = sitofp i32 %80 to float
  call void @BLF_position(i32 noundef %97, float noundef %98, float noundef %44, float noundef 0.000000e+00) #12
  %99 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %99, ptr noundef nonnull %14, i64 noundef 256) #12
  %100 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %101 = call float @BLF_width(i32 noundef %100, ptr noundef nonnull %14, i64 noundef 256) #12
  %102 = fadd float %101, %98
  %103 = fptosi float %102 to i32
  call void @glColor3ubv(ptr noundef nonnull %16) #12
  br i1 %83, label %109, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds float, ptr %8, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !16
  %107 = fpext float %106 to double
  %108 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.6, double noundef %107) #12
  br label %118

109:                                              ; preds = %96
  %110 = icmp eq ptr %7, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds i8, ptr %7, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !20
  %114 = zext i8 %113 to i32
  %115 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %114) #12
  br label %118

116:                                              ; preds = %109
  %117 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.8) #12
  br label %118

118:                                              ; preds = %111, %116, %104
  %119 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %120 = sitofp i32 %103 to float
  call void @BLF_position(i32 noundef %119, float noundef %120, float noundef %44, float noundef 0.000000e+00) #12
  %121 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %121, ptr noundef nonnull %14, i64 noundef 256) #12
  %122 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %123 = call float @BLF_width(i32 noundef %122, ptr noundef nonnull %14, i64 noundef 256) #12
  %124 = fadd float %123, %120
  %125 = fptosi float %124 to i32
  call void @glColor3ubv(ptr noundef nonnull %17) #12
  br i1 %83, label %131, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds float, ptr %8, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !16
  %129 = fpext float %128 to double
  %130 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.9, double noundef %129) #12
  br label %140

131:                                              ; preds = %118
  %132 = icmp eq ptr %7, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds i8, ptr %7, i64 2
  %135 = load i8, ptr %134, align 1, !tbaa !20
  %136 = zext i8 %135 to i32
  %137 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %136) #12
  br label %140

138:                                              ; preds = %131
  %139 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.11) #12
  br label %140

140:                                              ; preds = %133, %138, %126
  %141 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %142 = sitofp i32 %125 to float
  call void @BLF_position(i32 noundef %141, float noundef %142, float noundef %44, float noundef 0.000000e+00) #12
  %143 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %143, ptr noundef nonnull %14, i64 noundef 256) #12
  %144 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %145 = call float @BLF_width(i32 noundef %144, ptr noundef nonnull %14, i64 noundef 256) #12
  %146 = fadd float %145, %142
  %147 = fptosi float %146 to i32
  %148 = icmp eq i32 %4, 4
  br i1 %148, label %149, label %164

149:                                              ; preds = %140
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  br i1 %83, label %155, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds float, ptr %8, i64 3
  %152 = load float, ptr %151, align 4, !tbaa !16
  %153 = fpext float %152 to double
  %154 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.12, double noundef %153) #12
  br label %166

155:                                              ; preds = %149
  %156 = icmp eq ptr %7, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds i8, ptr %7, i64 3
  %159 = load i8, ptr %158, align 1, !tbaa !20
  %160 = zext i8 %159 to i32
  %161 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %160) #12
  br label %166

162:                                              ; preds = %155
  %163 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.14) #12
  br label %166

164:                                              ; preds = %140
  %165 = icmp eq i8 %2, 0
  br i1 %165, label %229, label %176

166:                                              ; preds = %150, %162, %157
  %167 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %168 = sitofp i32 %147 to float
  call void @BLF_position(i32 noundef %167, float noundef %168, float noundef %44, float noundef 0.000000e+00) #12
  %169 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %169, ptr noundef nonnull %14, i64 noundef 256) #12
  %170 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %171 = call float @BLF_width(i32 noundef %170, ptr noundef nonnull %14, i64 noundef 256) #12
  %172 = fadd float %171, %168
  %173 = fptosi float %172 to i32
  %174 = icmp eq i8 %2, 0
  br i1 %174, label %233, label %175

175:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef %9) #13
  br label %178

176:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef %9) #13
  %177 = icmp eq i32 %4, 3
  br i1 %177, label %182, label %178

178:                                              ; preds = %175, %176
  %179 = phi i32 [ %173, %175 ], [ %147, %176 ]
  %180 = getelementptr inbounds float, ptr %9, i64 3
  %181 = load float, ptr %180, align 4, !tbaa !16
  br label %182

182:                                              ; preds = %176, %178
  %183 = phi float [ %181, %178 ], [ 1.000000e+00, %176 ]
  %184 = phi i32 [ %179, %178 ], [ %147, %176 ]
  %185 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 3
  store float %183, ptr %185, align 4, !tbaa !16
  %186 = icmp eq i8 %3, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef null, ptr noundef nonnull %188) #12
  br label %192

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %191 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef nonnull %190, ptr noundef nonnull %191) #12
  br label %192

192:                                              ; preds = %189, %187
  %193 = load float, ptr %26, align 16, !tbaa !16
  %194 = fpext float %193 to double
  %195 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !16
  %197 = fpext float %196 to double
  %198 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 2
  %199 = load float, ptr %198, align 8, !tbaa !16
  %200 = fpext float %199 to double
  %201 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.15, double noundef %194, double noundef %197, double noundef %200) #12
  %202 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %203 = sitofp i32 %184 to float
  call void @BLF_position(i32 noundef %202, float noundef %203, float noundef %44, float noundef 0.000000e+00) #12
  %204 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %204, ptr noundef nonnull %14, i64 noundef 256) #12
  %205 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %206 = call float @BLF_width(i32 noundef %205, ptr noundef nonnull %14, i64 noundef 256) #12
  %207 = fadd float %206, %203
  %208 = fptosi float %207 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #11
  br label %229

209:                                              ; preds = %79
  %210 = icmp eq i32 %4, 1
  br i1 %210, label %211, label %229

211:                                              ; preds = %209
  %212 = icmp eq ptr %8, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = load float, ptr %8, align 4, !tbaa !16
  %215 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %214, ptr %215, align 8, !tbaa !16
  %216 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float %214, ptr %216, align 4, !tbaa !16
  store float %214, ptr %24, align 16, !tbaa !16
  br label %227

217:                                              ; preds = %211
  %218 = icmp eq ptr %7, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %217
  %220 = load i8, ptr %7, align 1, !tbaa !20
  %221 = uitofp i8 %220 to float
  %222 = fdiv float %221, 2.550000e+02
  %223 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float %222, ptr %223, align 8, !tbaa !16
  %224 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 1
  store float %222, ptr %224, align 4, !tbaa !16
  store float %222, ptr %24, align 16, !tbaa !16
  br label %227

225:                                              ; preds = %217
  %226 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 2
  store float 0.000000e+00, ptr %226, align 8, !tbaa !16
  store <2 x float> zeroinitializer, ptr %24, align 16, !tbaa !16
  br label %227

227:                                              ; preds = %219, %225, %213
  %228 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 3
  store float 1.000000e+00, ptr %228, align 4, !tbaa !16
  br label %236

229:                                              ; preds = %192, %164, %209
  %230 = phi i32 [ %80, %209 ], [ %147, %164 ], [ %208, %192 ]
  switch i32 %4, label %235 [
    i32 3, label %231
    i32 4, label %233
  ]

231:                                              ; preds = %229
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef %9) #13
  %232 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 3
  store float 1.000000e+00, ptr %232, align 4, !tbaa !16
  br label %236

233:                                              ; preds = %166, %229
  %234 = phi i32 [ %230, %229 ], [ %173, %166 ]
  call fastcc void @copy_v4_v4(ptr noundef nonnull %24, ptr noundef %9) #13
  br label %236

235:                                              ; preds = %229
  call fastcc void @zero_v4(ptr noundef nonnull %24) #13
  br label %236

236:                                              ; preds = %231, %235, %233, %227
  %237 = phi i1 [ false, %231 ], [ false, %235 ], [ false, %233 ], [ true, %227 ]
  %238 = phi i32 [ %230, %231 ], [ %230, %235 ], [ %234, %233 ], [ %80, %227 ]
  %239 = icmp eq i8 %2, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %236
  %241 = icmp eq i8 %3, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %25, ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %243) #12
  br label %248

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %246 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef nonnull %25, ptr noundef nonnull %24, ptr noundef nonnull %245, ptr noundef nonnull %246) #12
  br label %248

247:                                              ; preds = %236
  call fastcc void @copy_v4_v4(ptr noundef nonnull %25, ptr noundef nonnull %24) #13
  br label %248

248:                                              ; preds = %242, %244, %247
  call void @glDisable(i32 noundef 3042) #12
  %249 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %250 = sitofp i16 %249 to float
  %251 = sitofp i32 %238 to float
  %252 = call float @llvm.fmuladd.f32(float %250, float 2.500000e-01, float %251)
  %253 = fptosi float %252 to i32
  %254 = sitofp i32 %253 to float
  %255 = call float @llvm.fmuladd.f32(float %250, float 1.500000e+00, float %254)
  %256 = fptosi float %255 to i32
  %257 = fmul float %250, 0x3FC3333340000000
  %258 = fptosi float %257 to i32
  %259 = fmul float %250, 0x3FEB333340000000
  %260 = fptosi float %259 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %13, i32 noundef %253, i32 noundef %256, i32 noundef %258, i32 noundef %260) #12
  %261 = icmp eq i32 %4, 4
  br i1 %261, label %262, label %299

262:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #11
  %263 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 1
  %264 = load i32, ptr %13, align 4, !tbaa !21
  %265 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !23
  %267 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %268 = load i32, ptr %267, align 4, !tbaa !24
  %269 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %270 = load i32, ptr %269, align 4, !tbaa !25
  call void @glRecti(i32 noundef %264, i32 noundef %266, i32 noundef %268, i32 noundef %270) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !26
  %271 = call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %13) #13, !range !27
  store i32 %271, ptr %27, align 4, !tbaa !21
  %272 = call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %27) #13, !range !27
  %273 = call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %27) #13, !range !27
  call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #12
  %274 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !23
  %276 = load i32, ptr %263, align 4, !tbaa !24
  %277 = getelementptr inbounds %struct.rcti, ptr %27, i64 0, i32 3
  %278 = load i32, ptr %277, align 4, !tbaa !25
  call void @glRecti(i32 noundef %271, i32 noundef %275, i32 noundef %276, i32 noundef %278) #12
  call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #12
  call void @glRecti(i32 noundef %272, i32 noundef %273, i32 noundef %276, i32 noundef %278) #12
  call void @glRecti(i32 noundef %271, i32 noundef %275, i32 noundef %272, i32 noundef %273) #12
  call void @glEnable(i32 noundef 3042) #12
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #12
  %279 = load float, ptr %25, align 16, !tbaa !16
  %280 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !16
  %282 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 2
  %283 = load float, ptr %282, align 8, !tbaa !16
  %284 = icmp eq ptr %8, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %262
  %286 = getelementptr inbounds float, ptr %8, i64 3
  %287 = load float, ptr %286, align 4, !tbaa !16
  br label %293

288:                                              ; preds = %262
  %289 = getelementptr inbounds i8, ptr %7, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa !20
  %291 = uitofp i8 %290 to float
  %292 = fdiv float %291, 2.550000e+02
  br label %293

293:                                              ; preds = %288, %285
  %294 = phi float [ %287, %285 ], [ %292, %288 ]
  call void @glColor4f(float noundef %279, float noundef %281, float noundef %283, float noundef %294) #12
  %295 = load i32, ptr %13, align 4, !tbaa !21
  %296 = load i32, ptr %265, align 4, !tbaa !23
  %297 = load i32, ptr %267, align 4, !tbaa !24
  %298 = load i32, ptr %269, align 4, !tbaa !25
  call void @glRecti(i32 noundef %295, i32 noundef %296, i32 noundef %297, i32 noundef %298) #12
  call void @glDisable(i32 noundef 3042) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #11
  br label %307

299:                                              ; preds = %248
  call void @glColor3fv(ptr noundef nonnull %25) #12
  %300 = load i32, ptr %13, align 4, !tbaa !21
  %301 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !23
  %303 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !24
  %305 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %306 = load i32, ptr %305, align 4, !tbaa !25
  call void @glRecti(i32 noundef %300, i32 noundef %302, i32 noundef %304, i32 noundef %306) #12
  br label %307

307:                                              ; preds = %299, %293
  call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #12
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #12
  %308 = load i32, ptr %13, align 4, !tbaa !21
  %309 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !23
  %311 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %312 = load i32, ptr %311, align 4, !tbaa !24
  %313 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !25
  call void @glRecti(i32 noundef %308, i32 noundef %310, i32 noundef %312, i32 noundef %314) #12
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #12
  %315 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %316 = sitofp i16 %315 to float
  %317 = call float @llvm.fmuladd.f32(float %316, float 1.750000e+00, float %254)
  %318 = fptosi float %317 to i32
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  br i1 %237, label %319, label %339

319:                                              ; preds = %307
  %320 = icmp eq ptr %8, null
  br i1 %320, label %324, label %321

321:                                              ; preds = %319
  %322 = load float, ptr %8, align 4, !tbaa !16
  call void @rgb_to_hsv(float noundef %322, float noundef %322, float noundef %322, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #12
  %323 = load float, ptr %8, align 4, !tbaa !16
  call void @rgb_to_yuv(float noundef %323, float noundef %323, float noundef %323, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #12
  br label %333

324:                                              ; preds = %319
  %325 = icmp eq ptr %7, null
  br i1 %325, label %333, label %326

326:                                              ; preds = %324
  %327 = load i8, ptr %7, align 1, !tbaa !20
  %328 = uitofp i8 %327 to float
  %329 = fdiv float %328, 2.550000e+02
  call void @rgb_to_hsv(float noundef %329, float noundef %329, float noundef %329, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #12
  %330 = load i8, ptr %7, align 1, !tbaa !20
  %331 = uitofp i8 %330 to float
  %332 = fdiv float %331, 2.550000e+02
  call void @rgb_to_yuv(float noundef %332, float noundef %332, float noundef %332, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #12
  br label %333

333:                                              ; preds = %324, %326, %321
  %334 = load float, ptr %20, align 4, !tbaa !16
  %335 = fpext float %334 to double
  %336 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.16, double noundef %335) #12
  %337 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %338 = sitofp i32 %318 to float
  call void @BLF_position(i32 noundef %337, float noundef %338, float noundef %44, float noundef 0.000000e+00) #12
  br label %374

339:                                              ; preds = %307
  br i1 %81, label %340, label %389

340:                                              ; preds = %339
  %341 = load float, ptr %25, align 16, !tbaa !16
  %342 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %343 = load float, ptr %342, align 4, !tbaa !16
  %344 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 2
  %345 = load float, ptr %344, align 8, !tbaa !16
  call void @rgb_to_hsv(float noundef %341, float noundef %343, float noundef %345, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #12
  %346 = load float, ptr %25, align 16, !tbaa !16
  %347 = load float, ptr %342, align 4, !tbaa !16
  %348 = load float, ptr %344, align 8, !tbaa !16
  call void @rgb_to_yuv(float noundef %346, float noundef %347, float noundef %348, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #12
  %349 = load float, ptr %18, align 4, !tbaa !16
  %350 = fpext float %349 to double
  %351 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.18, double noundef %350) #12
  %352 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %353 = sitofp i32 %318 to float
  call void @BLF_position(i32 noundef %352, float noundef %353, float noundef %44, float noundef 0.000000e+00) #12
  %354 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %354, ptr noundef nonnull %14, i64 noundef 256) #12
  %355 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %356 = call float @BLF_width(i32 noundef %355, ptr noundef nonnull %14, i64 noundef 256) #12
  %357 = fadd float %356, %353
  %358 = fptosi float %357 to i32
  %359 = load float, ptr %19, align 4, !tbaa !16
  %360 = fpext float %359 to double
  %361 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.19, double noundef %360) #12
  %362 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %363 = sitofp i32 %358 to float
  call void @BLF_position(i32 noundef %362, float noundef %363, float noundef %44, float noundef 0.000000e+00) #12
  %364 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %364, ptr noundef nonnull %14, i64 noundef 256) #12
  %365 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %366 = call float @BLF_width(i32 noundef %365, ptr noundef nonnull %14, i64 noundef 256) #12
  %367 = fadd float %366, %363
  %368 = fptosi float %367 to i32
  %369 = load float, ptr %20, align 4, !tbaa !16
  %370 = fpext float %369 to double
  %371 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.20, double noundef %370) #12
  %372 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %373 = sitofp i32 %368 to float
  call void @BLF_position(i32 noundef %372, float noundef %373, float noundef %44, float noundef 0.000000e+00) #12
  br label %374

374:                                              ; preds = %333, %340
  %375 = phi float [ %338, %333 ], [ %373, %340 ]
  %376 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %376, ptr noundef nonnull %14, i64 noundef 256) #12
  %377 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %378 = call float @BLF_width(i32 noundef %377, ptr noundef nonnull %14, i64 noundef 256) #12
  %379 = fadd float %378, %375
  %380 = fptosi float %379 to i32
  %381 = load float, ptr %21, align 4, !tbaa !16
  %382 = fpext float %381 to double
  %383 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 256, ptr noundef nonnull @.str.17, double noundef %382) #12
  %384 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %385 = sitofp i32 %380 to float
  call void @BLF_position(i32 noundef %384, float noundef %385, float noundef %44, float noundef 0.000000e+00) #12
  %386 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  call void @BLF_draw_ascii(i32 noundef %386, ptr noundef nonnull %14, i64 noundef 256) #12
  %387 = load i32, ptr @blf_mono_font, align 4, !tbaa !17
  %388 = call float @BLF_width(i32 noundef %387, ptr noundef nonnull %14, i64 noundef 256) #12
  br label %389

389:                                              ; preds = %374, %339
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !24
  %4 = load i32, ptr %0, align 4, !tbaa !21
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_draw_ascii(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !16
  store float %3, ptr %0, align 4, !tbaa !16
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_pixel_to_display_space_v4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !16
  store float %3, ptr %0, align 4, !tbaa !16
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !16
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !16
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !16
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !16
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !16
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4, !tbaa !21
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !24
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_grease_pencil(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ED_gpencil_draw_2dimage(ptr noundef %0) #12
  br label %6

5:                                                ; preds = %2
  tail call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #12
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: optsize
declare void @ED_gpencil_draw_2dimage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_sample_line(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 10
  %3 = load i16, ptr %2, align 2, !tbaa !28
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @glBegin(i32 noundef 1) #12
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %7 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 12
  tail call void @glVertex2fv(ptr noundef nonnull %7) #12
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 9, i32 12, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %8) #12
  tail call void @glEnd() #12
  tail call void @setlinestyle(i32 noundef 1) #12
  tail call void @glBegin(i32 noundef 1) #12
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #12
  tail call void @glVertex2fv(ptr noundef nonnull %7) #12
  tail call void @glVertex2fv(ptr noundef nonnull %8) #12
  tail call void @glEnd() #12
  tail call void @setlinestyle(i32 noundef 0) #12
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_main(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #12
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %8 = tail call ptr @ED_space_image(ptr noundef %6) #12
  call void @ED_space_image_get_zoom(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i16 %12, 5
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 17
  %16 = load i8, ptr %15, align 4, !tbaa !38
  %17 = icmp ne i8 %16, 1
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 12
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = icmp eq i16 %20, 4
  call void @BLI_lock_thread(i32 noundef 1) #12
  br label %22

22:                                               ; preds = %2, %14, %18
  %23 = phi i1 [ %21, %18 ], [ false, %14 ], [ false, %2 ]
  %24 = phi i1 [ true, %18 ], [ %17, %14 ], [ true, %2 ]
  %25 = phi i1 [ false, %18 ], [ true, %14 ], [ true, %2 ]
  %26 = call ptr @ED_space_image_acquire_buffer(ptr noundef %6, ptr noundef nonnull %5) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load float, ptr %3, align 4, !tbaa !16
  %30 = load float, ptr %4, align 4, !tbaa !16
  call void @ED_region_grid_draw(ptr noundef %1, float noundef %29, float noundef %30) #12
  br label %51

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = and i32 %33, 524288
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load float, ptr %3, align 4, !tbaa !16
  %38 = load float, ptr %4, align 4, !tbaa !16
  call fastcc void @draw_image_buffer_repeated(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %26, float noundef %37, float noundef %38) #13
  br label %51

39:                                               ; preds = %31
  br i1 %9, label %48, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  %42 = load i16, ptr %41, align 8, !tbaa !41
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load float, ptr %3, align 4, !tbaa !16
  %47 = load float, ptr %4, align 4, !tbaa !16
  call fastcc void @draw_image_buffer_tiled(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %46, float noundef %47) #13
  br label %51

48:                                               ; preds = %40, %39
  %49 = load float, ptr %3, align 4, !tbaa !16
  %50 = load float, ptr %4, align 4, !tbaa !16
  call fastcc void @draw_image_buffer(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %49, float noundef %50) #13
  br label %51

51:                                               ; preds = %36, %48, %45, %28
  br i1 %24, label %55, label %52

52:                                               ; preds = %51
  %53 = load float, ptr %3, align 4, !tbaa !16
  %54 = load float, ptr %4, align 4, !tbaa !16
  call fastcc void @draw_image_paint_helpers(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %53, float noundef %54) #13
  br label %55

55:                                               ; preds = %52, %51
  %56 = load ptr, ptr %5, align 8, !tbaa !42
  call void @ED_space_image_release_buffer(ptr noundef %6, ptr noundef %26, ptr noundef %56) #12
  br i1 %25, label %58, label %57

57:                                               ; preds = %55
  call void @BLI_unlock_thread(i32 noundef 1) #12
  br label %58

58:                                               ; preds = %57, %55
  br i1 %23, label %59, label %64

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.SpaceImage, ptr %6, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = load float, ptr %3, align 4, !tbaa !16
  %63 = load float, ptr %4, align 4, !tbaa !16
  call fastcc void @draw_render_info(ptr noundef %61, ptr noundef nonnull %8, ptr noundef %1, float noundef %62, float noundef %63) #13
  br label %64

64:                                               ; preds = %59, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_space_image(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_space_image_acquire_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_grid_draw(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_image_buffer_repeated(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5, float noundef %6, float noundef %7) unnamed_addr #0 {
  %9 = tail call double @PIL_check_seconds_timer() #12
  %10 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = tail call float @llvm.ceil.f32(float %12)
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = tail call float @llvm.ceil.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = load float, ptr %10, align 8, !tbaa !49
  %20 = tail call float @llvm.floor.f32(float %19)
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !50
  %24 = tail call float @llvm.floor.f32(float %23)
  %25 = fptosi float %24 to i32
  %26 = icmp slt i32 %21, %14
  br i1 %26, label %27, label %55

27:                                               ; preds = %8
  %28 = icmp slt i32 %25, %18
  %29 = icmp eq ptr %4, null
  %30 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 14
  br label %31

31:                                               ; preds = %27, %52
  %32 = phi i32 [ %21, %27 ], [ %53, %52 ]
  br i1 %28, label %33, label %52

33:                                               ; preds = %31
  %34 = sitofp i32 %32 to float
  br label %38

35:                                               ; preds = %48
  %36 = add i32 %39, 1
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %52, label %38, !llvm.loop !51

38:                                               ; preds = %33, %35
  %39 = phi i32 [ %25, %33 ], [ %36, %35 ]
  br i1 %29, label %46, label %40

40:                                               ; preds = %38
  %41 = load i16, ptr %30, align 8, !tbaa !41
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = sitofp i32 %39 to float
  tail call fastcc void @draw_image_buffer_tiled(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, float noundef %34, float noundef %45, float noundef %6, float noundef %7) #13
  br label %48

46:                                               ; preds = %40, %38
  %47 = sitofp i32 %39 to float
  tail call fastcc void @draw_image_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, float noundef %34, float noundef %47, float noundef %6, float noundef %7) #13
  br label %48

48:                                               ; preds = %46, %44
  %49 = tail call double @PIL_check_seconds_timer() #12
  %50 = fsub double %49, %9
  %51 = fcmp ogt double %50, 2.500000e-01
  br i1 %51, label %55, label %35

52:                                               ; preds = %35, %31
  %53 = add i32 %32, 1
  %54 = icmp eq i32 %53, %14
  br i1 %54, label %55, label %31, !llvm.loop !53

55:                                               ; preds = %52, %48, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_image_buffer_tiled(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %13 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 16
  %14 = load i16, ptr %13, align 4, !tbaa !54
  %15 = icmp slt i16 %14, 1
  br i1 %15, label %112, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 17
  %18 = load i16, ptr %17, align 2, !tbaa !55
  %19 = icmp slt i16 %18, 1
  br i1 %19, label %112, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !56
  %23 = and i16 %22, 2048
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 44
  %27 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %28 = call ptr @IMB_display_buffer_acquire(ptr noundef %4, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %12) #12
  br label %32

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 45
  %31 = call ptr @IMB_display_buffer_acquire(ptr noundef %4, ptr noundef null, ptr noundef nonnull %30, ptr noundef nonnull %12) #12
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %28, %25 ], [ %31, %29 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %112, label %35

35:                                               ; preds = %32
  call void @glPixelZoom(float noundef %7, float noundef %8) #12
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 20
  %37 = load i16, ptr %36, align 8, !tbaa !57
  %38 = sext i16 %37 to i32
  %39 = load i16, ptr %13, align 4, !tbaa !54
  %40 = sext i16 %39 to i32
  %41 = load i16, ptr %17, align 2, !tbaa !55
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %42, %40
  %44 = icmp sgt i32 %43, %38
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = trunc i32 %43 to i16
  %47 = add i16 %46, -1
  store i16 %47, ptr %36, align 8, !tbaa !57
  %48 = sext i16 %47 to i32
  br label %49

49:                                               ; preds = %45, %35
  %50 = phi i32 [ %48, %45 ], [ %38, %35 ]
  %51 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !58
  %53 = sdiv i32 %52, %40
  %54 = call fastcc i32 @max_ii(i32 noundef %53) #13
  %55 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !61
  %57 = sdiv i32 %56, %42
  %58 = call fastcc i32 @max_ii(i32 noundef %57) #13
  %59 = srem i32 %50, %40
  %60 = mul nsw i32 %59, %54
  %61 = sdiv i32 %50, %40
  %62 = mul nsw i32 %61, %58
  %63 = trunc i32 %60 to i16
  %64 = trunc i32 %62 to i16
  %65 = add nsw i32 %60, %54
  %66 = trunc i32 %65 to i16
  %67 = add nsw i32 %62, %58
  %68 = trunc i32 %67 to i16
  %69 = call fastcc ptr @get_part_from_buffer(ptr noundef nonnull %33, i32 noundef %52, i16 noundef signext %63, i16 noundef signext %64, i16 noundef signext %66, i16 noundef signext %68) #13
  %70 = load i32, ptr %55, align 4, !tbaa !61
  %71 = icmp sgt i32 %58, %70
  br i1 %71, label %109, label %72

72:                                               ; preds = %49
  %73 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %74 = load i32, ptr %51, align 8, !tbaa !58
  br label %82

75:                                               ; preds = %90
  %76 = load i32, ptr %55, align 4, !tbaa !61
  br label %77

77:                                               ; preds = %75, %82
  %78 = phi i32 [ %76, %75 ], [ %83, %82 ]
  %79 = phi i32 [ %107, %75 ], [ %84, %82 ]
  %80 = add nsw i32 %85, %58
  %81 = icmp sgt i32 %80, %78
  br i1 %81, label %109, label %82, !llvm.loop !62

82:                                               ; preds = %72, %77
  %83 = phi i32 [ %70, %72 ], [ %78, %77 ]
  %84 = phi i32 [ %74, %72 ], [ %79, %77 ]
  %85 = phi i32 [ %58, %72 ], [ %80, %77 ]
  %86 = phi i32 [ 0, %72 ], [ %85, %77 ]
  %87 = icmp sgt i32 %54, %84
  br i1 %87, label %77, label %88

88:                                               ; preds = %82
  %89 = sitofp i32 %86 to float
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i32 [ %84, %88 ], [ %107, %90 ]
  %92 = phi i32 [ %54, %88 ], [ %106, %90 ]
  %93 = phi i32 [ 0, %88 ], [ %92, %90 ]
  %94 = sitofp i32 %93 to float
  %95 = sitofp i32 %91 to float
  %96 = fdiv float %94, %95
  %97 = fadd float %96, %5
  %98 = load i32, ptr %55, align 4, !tbaa !61
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %89, %99
  %101 = fadd float %100, %6
  call void @UI_view2d_view_to_region(ptr noundef nonnull %73, float noundef %97, float noundef %101, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %102 = load i32, ptr %10, align 4, !tbaa !17
  %103 = sitofp i32 %102 to float
  %104 = load i32, ptr %11, align 4, !tbaa !17
  %105 = sitofp i32 %104 to float
  call void @glaDrawPixelsSafe(float noundef %103, float noundef %105, i32 noundef %54, i32 noundef %58, i32 noundef %54, i32 noundef 6408, i32 noundef 5121, ptr noundef %69) #12
  %106 = add nsw i32 %92, %54
  %107 = load i32, ptr %51, align 8, !tbaa !58
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %75, label %90, !llvm.loop !63

109:                                              ; preds = %77, %49
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  %110 = load ptr, ptr %12, align 8, !tbaa !42
  call void @IMB_display_buffer_release(ptr noundef %110) #12
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %111(ptr noundef %69) #12
  br label %112

112:                                              ; preds = %32, %16, %9, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_image_buffer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  tail call void @glPixelZoom(float noundef %7, float noundef %8) #12
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  tail call void @glaDefine2DArea(ptr noundef nonnull %12) #12
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %13, float noundef %5, float noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %14 = getelementptr inbounds %struct.SpaceImage, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %10, align 4, !tbaa !17
  %24 = sitofp i32 %23 to float
  %25 = load i32, ptr %11, align 4, !tbaa !17
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !61
  call fastcc void @sima_draw_alpha_pixels(float noundef %24, float noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %20) #13
  br label %121

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = icmp eq ptr %33, null
  br i1 %34, label %121, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !66
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %121

39:                                               ; preds = %35
  %40 = load i32, ptr %10, align 4, !tbaa !17
  %41 = sitofp i32 %40 to float
  %42 = load i32, ptr %11, align 4, !tbaa !17
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !61
  call fastcc void @sima_draw_alpha_pixelsf(float noundef %41, float noundef %43, i32 noundef %45, i32 noundef %47, ptr noundef nonnull %33) #13
  br label %121

48:                                               ; preds = %9
  %49 = and i32 %15, 16384
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 16
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !66
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %81, label %96

63:                                               ; preds = %51
  %64 = load i32, ptr %10, align 4, !tbaa !17
  %65 = sitofp i32 %64 to float
  %66 = load i32, ptr %11, align 4, !tbaa !17
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !58
  %70 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !61
  call fastcc void @sima_draw_zbuf_pixels(float noundef %65, float noundef %67, i32 noundef %69, i32 noundef %71, ptr noundef nonnull %53) #13
  br label %121

72:                                               ; preds = %55
  %73 = load i32, ptr %10, align 4, !tbaa !17
  %74 = sitofp i32 %73 to float
  %75 = load i32, ptr %11, align 4, !tbaa !17
  %76 = sitofp i32 %75 to float
  %77 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !61
  call fastcc void @sima_draw_zbuffloat_pixels(ptr noundef %3, float noundef %74, float noundef %76, i32 noundef %78, i32 noundef %80, ptr noundef nonnull %57) #13
  br label %121

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 5
  %83 = load i32, ptr %82, align 4, !tbaa !66
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %121

85:                                               ; preds = %81
  %86 = load i32, ptr %10, align 4, !tbaa !17
  %87 = sitofp i32 %86 to float
  %88 = load i32, ptr %11, align 4, !tbaa !17
  %89 = sitofp i32 %88 to float
  %90 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !58
  %92 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !61
  %94 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !65
  call fastcc void @sima_draw_zbuffloat_pixels(ptr noundef %3, float noundef %87, float noundef %89, i32 noundef %91, i32 noundef %93, ptr noundef %95) #13
  br label %121

96:                                               ; preds = %59, %48
  %97 = and i32 %15, 4096
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  call void @glEnable(i32 noundef 3042) #12
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #12
  %100 = load i32, ptr %10, align 4, !tbaa !17
  %101 = sitofp i32 %100 to float
  %102 = load i32, ptr %11, align 4, !tbaa !17
  %103 = sitofp i32 %102 to float
  %104 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !58
  %106 = sitofp i32 %105 to float
  %107 = call float @llvm.fmuladd.f32(float %106, float %7, float %101)
  %108 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !61
  %110 = sitofp i32 %109 to float
  %111 = call float @llvm.fmuladd.f32(float %110, float %8, float %103)
  call void @fdrawcheckerboard(float noundef %101, float noundef %103, float noundef %107, float noundef %111) #12
  br label %112

112:                                              ; preds = %99, %96
  %113 = load i32, ptr %10, align 4, !tbaa !17
  %114 = sitofp i32 %113 to float
  %115 = load i32, ptr %11, align 4, !tbaa !17
  %116 = sitofp i32 %115 to float
  call void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef %4, float noundef %114, float noundef %116, i32 noundef 9728) #12
  %117 = load i32, ptr %14, align 4, !tbaa !40
  %118 = and i32 %117, 4096
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  call void @glDisable(i32 noundef 3042) #12
  br label %121

121:                                              ; preds = %72, %85, %81, %63, %120, %112, %22, %39, %35, %31
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_image_paint_helpers(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %10 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 17
  %13 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 36
  %17 = load i8, ptr %16, align 2, !tbaa !86
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = call fastcc ptr @get_alpha_clone_image(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 1, i32 1
  %25 = load float, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.Brush, ptr %13, i64 0, i32 1, i32 1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !16
  call void @UI_view2d_view_to_region(ptr noundef nonnull %23, float noundef %25, float noundef %27, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @glPixelZoom(float noundef %3, float noundef %4) #12
  call void @glEnable(i32 noundef 3042) #12
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #12
  %28 = load i32, ptr %6, align 4, !tbaa !17
  %29 = sitofp i32 %28 to float
  %30 = load i32, ptr %7, align 4, !tbaa !17
  %31 = sitofp i32 %30 to float
  %32 = load i32, ptr %8, align 4, !tbaa !17
  %33 = load i32, ptr %9, align 4, !tbaa !17
  call void @glaDrawPixelsSafe(float noundef %29, float noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %32, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %20) #12
  call void @glDisable(i32 noundef 3042) #12
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #12
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %34(ptr noundef nonnull %20) #12
  br label %35

35:                                               ; preds = %19, %22, %15, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_release_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_render_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %12 = tail call ptr @RE_GetRender(ptr noundef nonnull %11) #12
  %13 = tail call ptr @RE_engine_get_render_data(ptr noundef %12) #12
  %14 = tail call ptr @BKE_image_acquire_renderresult(ptr noundef %0, ptr noundef %1) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_render_info.fill_color, i64 16, i1 false)
  call void @ED_region_info_draw(ptr noundef %2, ptr noundef nonnull %18, i32 noundef 1, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %21

21:                                               ; preds = %20, %16, %5
  call void @BKE_image_release_renderresult(ptr noundef %0, ptr noundef %1) #12
  %22 = icmp eq ptr %12, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @RE_engine_get_current_tiles(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %24 = load i32, ptr %7, align 4, !tbaa !17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %78, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %27 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  call void @UI_view2d_view_to_region(ptr noundef nonnull %27, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  call void @glPushMatrix() #12
  %28 = load i32, ptr %9, align 4, !tbaa !17
  %29 = sitofp i32 %28 to float
  %30 = load i32, ptr %10, align 4, !tbaa !17
  %31 = sitofp i32 %30 to float
  call void @glTranslatef(float noundef %29, float noundef %31, float noundef 0.000000e+00) #12
  call void @glScalef(float noundef %3, float noundef %4, float noundef 1.000000e+00) #12
  %32 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 47
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 58
  %38 = load float, ptr %37, align 8, !tbaa !93
  %39 = fneg float %38
  %40 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 33
  %41 = load i32, ptr %40, align 4, !tbaa !94
  %42 = sitofp i32 %41 to float
  %43 = fmul float %39, %42
  %44 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 30
  %45 = load i16, ptr %44, align 2, !tbaa !95
  %46 = sitofp i16 %45 to float
  %47 = fmul float %43, %46
  %48 = fdiv float %47, 1.000000e+02
  %49 = fptosi float %48 to i32
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 58, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !96
  %53 = fneg float %52
  %54 = getelementptr inbounds %struct.RenderData, ptr %13, i64 0, i32 34
  %55 = load i32, ptr %54, align 8, !tbaa !97
  %56 = sitofp i32 %55 to float
  %57 = fmul float %53, %56
  %58 = fmul float %57, %46
  %59 = fdiv float %58, 1.000000e+02
  %60 = fptosi float %59 to i32
  %61 = sitofp i32 %60 to float
  call void @glTranslatef(float noundef %50, float noundef %61, float noundef 0.000000e+00) #12
  br label %62

62:                                               ; preds = %36, %26
  call void @UI_ThemeColor(i32 noundef 43) #12
  %63 = load ptr, ptr %8, align 8, !tbaa !42
  %64 = load i32, ptr %7, align 4, !tbaa !17
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %70, %66 ], [ %63, %62 ]
  %68 = phi i32 [ %69, %66 ], [ 0, %62 ]
  call void @glaDrawBorderCorners(ptr noundef %67, float noundef %3, float noundef %4) #12
  %69 = add nuw nsw i32 %68, 1
  %70 = getelementptr inbounds %struct.rcti, ptr %67, i64 1
  %71 = load i32, ptr %7, align 4, !tbaa !17
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %66, label %73, !llvm.loop !98

73:                                               ; preds = %66
  %74 = load ptr, ptr %8, align 8, !tbaa !42
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi ptr [ %74, %73 ], [ %63, %62 ]
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %77(ptr noundef %76) #12
  call void @glPopMatrix() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %78

78:                                               ; preds = %75, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %79

79:                                               ; preds = %78, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_image_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #12
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %7 = tail call ptr @ED_space_image(ptr noundef %5) #12
  %8 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !99
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !101
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = sitofp i16 %18 to float
  %20 = fsub float %16, %13
  %21 = fadd float %20, 1.000000e+00
  %22 = fdiv float %19, %21
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 17
  %24 = load i8, ptr %23, align 4, !tbaa !38
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = tail call ptr @ED_space_image_get_mask(ptr noundef nonnull %5) #12
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ]
  %30 = tail call fastcc zeroext i8 @show_image_cache(ptr noundef %7, ptr noundef %29) #13, !range !103
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %81, label %32

32:                                               ; preds = %28
  tail call void @glEnable(i32 noundef 3042) #12
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #12
  tail call void @ED_region_cache_draw_background(ptr noundef nonnull %1) #12
  %33 = icmp eq ptr %7, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 11
  %40 = load i16, ptr %39, align 8, !tbaa !34
  %41 = and i16 %40, -2
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !42
  call void @IMB_moviecache_get_cache_segments(ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %44 = load i32, ptr %3, align 4, !tbaa !17
  %45 = load ptr, ptr %4, align 8, !tbaa !42
  %46 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 6, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !105
  %48 = sitofp i32 %47 to float
  %49 = fadd float %13, %48
  %50 = fptosi float %49 to i32
  %51 = fadd float %16, %48
  %52 = fptosi float %51 to i32
  call void @ED_region_cache_draw_cached_segments(ptr noundef nonnull %1, i32 noundef %44, ptr noundef %45, i32 noundef %50, i32 noundef %52) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %53

53:                                               ; preds = %38, %43, %34, %32
  call void @glDisable(i32 noundef 3042) #12
  %54 = fsub float %10, %13
  %55 = fdiv float %54, %21
  %56 = load i16, ptr %17, align 8, !tbaa !102
  %57 = sitofp i16 %56 to float
  %58 = fmul float %55, %57
  call void @UI_ThemeColor(i32 noundef 49) #12
  %59 = fptosi float %58 to i32
  %60 = call float @llvm.ceil.f32(float %22)
  %61 = fadd float %60, %58
  %62 = fptosi float %61 to i32
  %63 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !18
  %64 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !19
  %65 = sitofp i32 %64 to float
  %66 = fmul float %63, %65
  %67 = fdiv float %66, 7.200000e+01
  %68 = fmul float %67, 8.000000e+00
  %69 = fptosi float %68 to i32
  call void @glRecti(i32 noundef %59, i32 noundef 0, i32 noundef %62, i32 noundef %69) #12
  %70 = fptosi float %10 to i32
  %71 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !18
  %72 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !19
  %73 = sitofp i32 %72 to float
  %74 = fmul float %71, %73
  %75 = fdiv float %74, 7.200000e+01
  %76 = fmul float %75, 8.000000e+00
  call void @ED_region_cache_draw_curfra_label(i32 noundef %70, float noundef %58, float noundef %76) #12
  %77 = icmp eq ptr %29, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %53
  %79 = fptosi float %13 to i32
  %80 = fptosi float %16 to i32
  call void @ED_mask_draw_frames(ptr noundef nonnull %29, ptr noundef nonnull %1, i32 noundef %70, i32 noundef %79, i32 noundef %80) #12
  br label %81

81:                                               ; preds = %53, %78, %28
  ret void
}

; Function Attrs: optsize
declare ptr @ED_space_image_get_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @show_image_cache(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = and i1 %3, %4
  %6 = xor i1 %4, true
  %7 = or i1 %3, %6
  %8 = xor i1 %5, true
  br i1 %7, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 11
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = and i16 %11, -2
  %13 = icmp eq i16 %12, 2
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i1 [ %13, %9 ], [ %8, %2 ]
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare void @ED_region_cache_draw_background(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_moviecache_get_cache_segments(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_cache_draw_cached_segments(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: optsize
declare void @ED_region_cache_draw_curfra_label(i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_mask_draw_frames(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #8 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_part_from_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 {
  %7 = sub i16 %4, %2
  %8 = sub i16 %5, %3
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %10 = sext i16 %8 to i32
  %11 = sext i16 %7 to i32
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.21) #12
  %16 = icmp sgt i16 %8, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %6
  %18 = sext i16 %3 to i32
  %19 = mul nsw i32 %18, %1
  %20 = sext i16 %2 to i32
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = shl nsw i32 %11, 2
  %25 = sext i32 %24 to i64
  %26 = sext i32 %1 to i64
  %27 = sext i16 %7 to i64
  br label %28

28:                                               ; preds = %17, %28
  %29 = phi ptr [ %23, %17 ], [ %32, %28 ]
  %30 = phi ptr [ %15, %17 ], [ %33, %28 ]
  %31 = phi i16 [ 0, %17 ], [ %34, %28 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %29, i64 %25, i1 false)
  %32 = getelementptr inbounds i32, ptr %29, i64 %26
  %33 = getelementptr inbounds i32, ptr %30, i64 %27
  %34 = add nuw nsw i16 %31, 1
  %35 = icmp eq i16 %34, %8
  br i1 %35, label %36, label %28, !llvm.loop !106

36:                                               ; preds = %28, %6
  ret ptr %15
}

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glaDefine2DArea(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_draw_alpha_pixels(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef 6409, i32 noundef 5125, ptr noundef %4) #12
  tail call void @glPixelStorei(i32 noundef 3312, i32 noundef 0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_draw_alpha_pixelsf(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %7 = mul nsw i32 %3, %2
  %8 = shl nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = tail call ptr %6(i64 noundef %9, ptr noundef nonnull @.str.22) #12
  %11 = icmp sgt i32 %7, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = add nsw i32 %7, -1
  %14 = shl i32 %13, 2
  %15 = or disjoint i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = zext nneg i32 %13 to i64
  br label %18

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %17, %12 ], [ %24, %18 ]
  %20 = phi i64 [ %16, %12 ], [ %25, %18 ]
  %21 = getelementptr inbounds float, ptr %4, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !16
  %23 = getelementptr inbounds float, ptr %10, i64 %19
  store float %22, ptr %23, align 4, !tbaa !16
  %24 = add nsw i64 %19, -1
  %25 = add nsw i64 %20, -4
  %26 = icmp eq i64 %19, 0
  br i1 %26, label %27, label %18, !llvm.loop !107

27:                                               ; preds = %18, %5
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef 6409, i32 noundef 5126, ptr noundef %10) #12
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %28(ptr noundef %10) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_draw_zbuf_pixels(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef 5.000000e-01) #12
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef 5.000000e-01) #12
  tail call void @glPixelTransferf(i32 noundef 3354, float noundef 5.000000e-01) #12
  tail call void @glPixelTransferf(i32 noundef 3349, float noundef 5.000000e-01) #12
  tail call void @glPixelTransferf(i32 noundef 3353, float noundef 5.000000e-01) #12
  tail call void @glPixelTransferf(i32 noundef 3355, float noundef 5.000000e-01) #12
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef 6409, i32 noundef 5124, ptr noundef %4) #12
  tail call void @glPixelTransferf(i32 noundef 3348, float noundef 1.000000e+00) #12
  tail call void @glPixelTransferf(i32 noundef 3352, float noundef 1.000000e+00) #12
  tail call void @glPixelTransferf(i32 noundef 3354, float noundef 1.000000e+00) #12
  tail call void @glPixelTransferf(i32 noundef 3349, float noundef 0.000000e+00) #12
  tail call void @glPixelTransferf(i32 noundef 3353, float noundef 0.000000e+00) #12
  tail call void @glPixelTransferf(i32 noundef 3355, float noundef 0.000000e+00) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sima_draw_zbuffloat_pixels(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !109
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.Camera, ptr %16, i64 0, i32 6
  %18 = load float, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.Camera, ptr %16, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !115
  %21 = fsub float %20, %18
  %22 = fdiv float 1.000000e+00, %21
  br label %23

23:                                               ; preds = %6, %10, %14
  %24 = phi float [ %22, %14 ], [ 0x3F847AE140000000, %10 ], [ 0x3F847AE140000000, %6 ]
  %25 = phi float [ %18, %14 ], [ 0x3FB99999A0000000, %10 ], [ 0x3FB99999A0000000, %6 ]
  %26 = phi float [ %20, %14 ], [ 1.000000e+02, %10 ], [ 1.000000e+02, %6 ]
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %28 = mul nsw i32 %4, %3
  %29 = shl nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull @.str.22) #12
  %32 = icmp sgt i32 %28, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = zext nneg i32 %28 to i64
  br label %35

35:                                               ; preds = %33, %53
  %36 = phi i64 [ %34, %33 ], [ %37, %53 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds float, ptr %5, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !16
  %40 = fcmp ogt float %39, %26
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds float, ptr %31, i64 %37
  store float 0.000000e+00, ptr %42, align 4, !tbaa !16
  br label %53

43:                                               ; preds = %35
  %44 = fcmp olt float %39, %25
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = getelementptr inbounds float, ptr %31, i64 %37
  store float 1.000000e+00, ptr %46, align 4, !tbaa !16
  br label %53

47:                                               ; preds = %43
  %48 = fsub float %39, %25
  %49 = fneg float %48
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %24, float 1.000000e+00)
  %51 = getelementptr inbounds float, ptr %31, i64 %37
  %52 = fmul float %50, %50
  store float %52, ptr %51, align 4, !tbaa !16
  br label %53

53:                                               ; preds = %41, %47, %45
  %54 = icmp ugt i64 %36, 1
  br i1 %54, label %35, label %55, !llvm.loop !116

55:                                               ; preds = %53, %23
  tail call void @glaDrawPixelsSafe(float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %3, i32 noundef 6409, i32 noundef 5126, ptr noundef %31) #12
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %56(ptr noundef %31) #12
  ret void
}

; Function Attrs: optsize
declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glaDrawImBuf_glsl_ctx(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_alpha_clone_image(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 17
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %13, ptr noundef null, ptr noundef null) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = call ptr @IMB_display_buffer_acquire_ctx(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %5) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %12, align 8, !tbaa !117
  call void @BKE_image_release_ibuf(ptr noundef %22, ptr noundef nonnull %16, ptr noundef null) #12
  %23 = load ptr, ptr %5, align 8, !tbaa !42
  call void @IMB_display_buffer_release(ptr noundef %23) #12
  br label %54

24:                                               ; preds = %18
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %26 = call ptr %25(ptr noundef nonnull %19) #12
  %27 = load ptr, ptr %5, align 8, !tbaa !42
  call void @IMB_display_buffer_release(ptr noundef %27) #12
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load ptr, ptr %12, align 8, !tbaa !117
  call void @BKE_image_release_ibuf(ptr noundef %30, ptr noundef nonnull %16, ptr noundef null) #12
  br label %54

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !58
  store i32 %33, ptr %2, align 4, !tbaa !17
  %34 = getelementptr inbounds %struct.ImBuf, ptr %16, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !61
  store i32 %35, ptr %3, align 4, !tbaa !17
  %36 = load i32, ptr %2, align 4, !tbaa !17
  %37 = mul nsw i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.Brush, ptr %9, i64 0, i32 1, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !118
  %42 = fmul float %41, 2.550000e+02
  %43 = fptoui float %42 to i32
  %44 = trunc i32 %43 to i8
  br label %45

45:                                               ; preds = %39, %45
  %46 = phi ptr [ %26, %39 ], [ %50, %45 ]
  %47 = phi i32 [ %37, %39 ], [ %48, %45 ]
  %48 = add i32 %47, -1
  %49 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %44, ptr %49, align 1, !tbaa !20
  %50 = getelementptr inbounds i8, ptr %46, i64 4
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %52, label %45, !llvm.loop !119

52:                                               ; preds = %45, %31
  %53 = load ptr, ptr %12, align 8, !tbaa !117
  call void @BKE_image_release_ibuf(ptr noundef %53, ptr noundef nonnull %16, ptr noundef null) #12
  br label %54

54:                                               ; preds = %15, %4, %11, %52, %29, %21
  %55 = phi ptr [ %26, %52 ], [ null, %29 ], [ null, %21 ], [ null, %11 ], [ null, %4 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %55
}

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_display_buffer_acquire_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_GetRender(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_engine_get_render_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_image_acquire_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_release_renderresult(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RE_engine_get_current_tiles(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glaDrawBorderCorners(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8948}
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
!16 = !{!13, !13, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!6, !13, i64 10908}
!19 = !{!6, !7, i64 8524}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!23 = !{!22, !7, i64 8}
!24 = !{!22, !7, i64 4}
!25 = !{!22, !7, i64 12}
!26 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17}
!27 = !{i32 -1073741824, i32 1073741824}
!28 = !{!29, !10, i64 10498}
!29 = !{!"SpaceImage", !12, i64 0, !12, i64 8, !11, i64 16, !7, i64 32, !7, i64 36, !12, i64 40, !30, i64 48, !12, i64 88, !31, i64 96, !32, i64 5360, !12, i64 10520, !8, i64 10528, !13, i64 10536, !13, i64 10540, !13, i64 10544, !13, i64 10548, !13, i64 10552, !8, i64 10556, !8, i64 10557, !10, i64 10558, !10, i64 10560, !10, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !33, i64 10568}
!30 = !{!"ImageUser", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !7, i64 36}
!31 = !{!"Scopes", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !7, i64 16, !13, i64 20, !13, i64 24, !7, i64 28, !13, i64 32, !7, i64 36, !8, i64 40, !32, i64 64, !12, i64 5224, !12, i64 5232, !12, i64 5240, !12, i64 5248, !7, i64 5256, !7, i64 5260}
!32 = !{!"Histogram", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !13, i64 5128, !13, i64 5132, !10, i64 5136, !10, i64 5138, !7, i64 5140, !8, i64 5144}
!33 = !{!"MaskSpaceInfo", !12, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!34 = !{!35, !10, i64 1248}
!35 = !{!"Image", !36, i64 0, !8, i64 120, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !8, i64 1176, !10, i64 1240, !10, i64 1242, !10, i64 1244, !10, i64 1246, !10, i64 1248, !10, i64 1250, !7, i64 1252, !10, i64 1256, !10, i64 1258, !10, i64 1260, !10, i64 1262, !10, i64 1264, !10, i64 1266, !7, i64 1268, !12, i64 1272, !12, i64 1280, !12, i64 1288, !13, i64 1296, !7, i64 1300, !10, i64 1304, !10, i64 1306, !7, i64 1308, !7, i64 1312, !8, i64 1316, !8, i64 1317, !10, i64 1318, !8, i64 1320, !13, i64 1336, !13, i64 1340, !37, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!36 = !{!"ID", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !10, i64 98, !7, i64 100, !7, i64 104, !7, i64 108, !12, i64 112}
!37 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!38 = !{!29, !8, i64 10556}
!39 = !{!35, !10, i64 1250}
!40 = !{!29, !7, i64 36}
!41 = !{!35, !10, i64 1256}
!42 = !{!12, !12, i64 0}
!43 = !{!29, !12, i64 48}
!44 = !{!45, !13, i64 36}
!45 = !{!"ARegion", !12, i64 0, !12, i64 8, !46, i64 16, !22, i64 176, !22, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !13, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !12, i64 240, !11, i64 248, !11, i64 264, !11, i64 280, !11, i64 296, !11, i64 312, !11, i64 328, !11, i64 344, !12, i64 360, !12, i64 368, !12, i64 376}
!46 = !{!"View2D", !47, i64 0, !47, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !8, i64 80, !8, i64 88, !13, i64 96, !13, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !12, i64 128, !7, i64 136, !7, i64 140, !12, i64 144, !12, i64 152}
!47 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!48 = !{!45, !13, i64 44}
!49 = !{!45, !13, i64 32}
!50 = !{!45, !13, i64 40}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!35, !10, i64 1260}
!55 = !{!35, !10, i64 1262}
!56 = !{!35, !10, i64 1246}
!57 = !{!29, !10, i64 10560}
!58 = !{!59, !7, i64 16}
!59 = !{!"ImBuf", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !8, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !12, i64 40, !12, i64 48, !8, i64 56, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !12, i64 88, !12, i64 96, !12, i64 104, !13, i64 112, !8, i64 120, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !12, i64 296, !12, i64 304, !7, i64 312, !8, i64 316, !8, i64 1340, !12, i64 2368, !7, i64 2376, !12, i64 2384, !7, i64 2392, !7, i64 2396, !12, i64 2400, !12, i64 2408, !12, i64 2416, !12, i64 2424, !7, i64 2432, !22, i64 2436, !60, i64 2456}
!60 = !{!"DDSData", !7, i64 0, !7, i64 4, !12, i64 8, !7, i64 16}
!61 = !{!59, !7, i64 20}
!62 = distinct !{!62, !52}
!63 = distinct !{!63, !52}
!64 = !{!59, !12, i64 40}
!65 = !{!59, !12, i64 48}
!66 = !{!59, !7, i64 28}
!67 = !{!59, !12, i64 96}
!68 = !{!59, !12, i64 104}
!69 = !{!70, !12, i64 264}
!70 = !{!"Scene", !36, i64 0, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !11, i64 152, !12, i64 168, !12, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !7, i64 232, !7, i64 236, !7, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !71, i64 280, !78, i64 4264, !11, i64 4296, !11, i64 4312, !12, i64 4328, !12, i64 4336, !12, i64 4344, !12, i64 4352, !12, i64 4360, !12, i64 4368, !10, i64 4376, !10, i64 4378, !7, i64 4380, !11, i64 4384, !79, i64 4400, !80, i64 4416, !83, i64 4600, !12, i64 4608, !84, i64 4616, !12, i64 4640, !85, i64 4648, !85, i64 4656, !73, i64 4664, !74, i64 4824, !37, i64 4888, !12, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !12, i64 248, !12, i64 256, !75, i64 264, !76, i64 328, !7, i64 400, !7, i64 404, !7, i64 408, !13, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !10, i64 432, !10, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !7, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !7, i64 484, !7, i64 488, !10, i64 492, !10, i64 494, !7, i64 496, !7, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !7, i64 516, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !47, i64 544, !47, i64 560, !22, i64 576, !11, i64 592, !10, i64 608, !10, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !7, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !13, i64 660, !13, i64 664, !10, i64 668, !10, i64 670, !13, i64 672, !13, i64 676, !8, i64 680, !7, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !7, i64 2520, !10, i64 2524, !10, i64 2526, !13, i64 2528, !13, i64 2532, !10, i64 2536, !10, i64 2538, !13, i64 2540, !10, i64 2544, !10, i64 2546, !7, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !13, i64 2560, !13, i64 2564, !12, i64 2568, !7, i64 2576, !13, i64 2580, !8, i64 2584, !77, i64 2616, !7, i64 3976, !7, i64 3980}
!72 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !13, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 72, !13, i64 136, !13, i64 140, !12, i64 144, !12, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!75 = !{!"QuicktimeCodecSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48, !10, i64 50, !7, i64 52, !7, i64 56, !7, i64 60}
!76 = !{!"FFMpegCodecData", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !13, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !12, i64 64}
!77 = !{!"BakeData", !72, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !13, i64 1280, !13, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!78 = !{!"AudioData", !7, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16, !10, i64 20, !10, i64 22, !13, i64 24, !13, i64 28}
!79 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!80 = !{!"GameData", !79, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !81, i64 40, !10, i64 64, !10, i64 66, !13, i64 68, !82, i64 72, !13, i64 128, !13, i64 132, !7, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!81 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !13, i64 8, !13, i64 12, !12, i64 16}
!82 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 44, !13, i64 48, !10, i64 52, !10, i64 54}
!83 = !{!"UnitSettings", !13, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!84 = !{!"PhysicsSettings", !8, i64 0, !7, i64 12, !7, i64 16, !7, i64 20}
!85 = !{!"long", !8, i64 0}
!86 = !{!87, !8, i64 1946}
!87 = !{!"Brush", !36, i64 0, !88, i64 120, !12, i64 144, !89, i64 152, !89, i64 464, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !8, i64 816, !13, i64 1840, !10, i64 1844, !10, i64 1846, !13, i64 1848, !7, i64 1852, !7, i64 1856, !7, i64 1860, !13, i64 1864, !7, i64 1868, !7, i64 1872, !7, i64 1876, !7, i64 1880, !13, i64 1884, !13, i64 1888, !8, i64 1892, !13, i64 1904, !8, i64 1908, !7, i64 1920, !13, i64 1924, !13, i64 1928, !7, i64 1932, !7, i64 1936, !7, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !13, i64 1948, !13, i64 1952, !13, i64 1956, !13, i64 1960, !13, i64 1964, !7, i64 1968, !7, i64 1972, !7, i64 1976, !13, i64 1980, !13, i64 1984, !7, i64 1988, !7, i64 1992, !13, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!88 = !{!"BrushClone", !12, i64 0, !8, i64 8, !13, i64 16, !13, i64 20}
!89 = !{!"MTex", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !13, i64 116, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !10, i64 130, !8, i64 132, !8, i64 133, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308}
!90 = !{!91, !12, i64 136}
!91 = !{!"RenderResult", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 20, !10, i64 24, !10, i64 26, !12, i64 32, !12, i64 40, !12, i64 48, !22, i64 56, !7, i64 72, !7, i64 76, !11, i64 80, !22, i64 96, !12, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !12, i64 136}
!92 = !{!71, !7, i64 520}
!93 = !{!71, !13, i64 560}
!94 = !{!71, !7, i64 484}
!95 = !{!71, !10, i64 478}
!96 = !{!71, !13, i64 568}
!97 = !{!71, !7, i64 488}
!98 = distinct !{!98, !52}
!99 = !{!70, !7, i64 680}
!100 = !{!70, !7, i64 684}
!101 = !{!70, !7, i64 688}
!102 = !{!45, !10, i64 208}
!103 = !{i8 0, i8 2}
!104 = !{!35, !12, i64 1144}
!105 = !{!29, !7, i64 64}
!106 = distinct !{!106, !52}
!107 = distinct !{!107, !52}
!108 = !{!70, !12, i64 128}
!109 = !{!110, !10, i64 136}
!110 = !{!"Object", !36, i64 0, !12, i64 120, !12, i64 128, !10, i64 136, !10, i64 138, !7, i64 140, !7, i64 144, !7, i64 148, !8, i64 152, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !111, i64 312, !12, i64 360, !11, i64 368, !11, i64 384, !11, i64 400, !11, i64 416, !7, i64 432, !7, i64 436, !12, i64 440, !12, i64 448, !7, i64 456, !7, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !13, i64 616, !13, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !7, i64 944, !10, i64 948, !10, i64 950, !10, i64 952, !10, i64 954, !10, i64 956, !10, i64 958, !10, i64 960, !10, i64 962, !10, i64 964, !8, i64 966, !8, i64 967, !7, i64 968, !7, i64 972, !7, i64 976, !7, i64 980, !7, i64 984, !13, i64 988, !13, i64 992, !13, i64 996, !13, i64 1000, !13, i64 1004, !13, i64 1008, !13, i64 1012, !13, i64 1016, !13, i64 1020, !13, i64 1024, !13, i64 1028, !13, i64 1032, !10, i64 1036, !10, i64 1038, !10, i64 1040, !8, i64 1042, !8, i64 1043, !10, i64 1044, !8, i64 1046, !8, i64 1047, !13, i64 1048, !13, i64 1052, !11, i64 1056, !11, i64 1072, !11, i64 1088, !11, i64 1104, !13, i64 1120, !10, i64 1124, !10, i64 1126, !8, i64 1128, !7, i64 1144, !7, i64 1148, !12, i64 1152, !8, i64 1160, !8, i64 1161, !10, i64 1162, !8, i64 1164, !11, i64 1176, !11, i64 1192, !11, i64 1208, !11, i64 1224, !12, i64 1240, !12, i64 1248, !12, i64 1256, !8, i64 1264, !8, i64 1265, !10, i64 1266, !13, i64 1268, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !85, i64 1304, !85, i64 1312, !7, i64 1320, !7, i64 1324, !11, i64 1328, !11, i64 1344, !12, i64 1360, !12, i64 1368, !12, i64 1376, !8, i64 1384, !12, i64 1392, !11, i64 1400, !12, i64 1416}
!111 = !{!"bAnimVizSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!112 = !{!110, !12, i64 296}
!113 = !{!114, !13, i64 136}
!114 = !{!"Camera", !36, i64 0, !12, i64 120, !8, i64 128, !8, i64 129, !10, i64 130, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !12, i64 176, !12, i64 184, !8, i64 192, !8, i64 193}
!115 = !{!114, !13, i64 140}
!116 = distinct !{!116, !52}
!117 = !{!87, !12, i64 120}
!118 = !{!87, !13, i64 136}
!119 = distinct !{!119, !52}
