; ModuleID = 'blender/source/blender/gpu/intern/gpu_draw.c'
source_filename = "blender/source/blender/gpu/intern/gpu_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GPUTextureState = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, float, i32, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.GPUMaterialState = type { ptr, [8 x %struct.GPUMaterialFixed], i32, ptr, [8 x ptr], ptr, ptr, ptr, i32, i8, ptr, ptr, i8, ptr, [8 x i32], i8, i8, i8, i32, i32, i32 }
%struct.GPUMaterialFixed = type { [4 x float], [4 x float], i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.LinkNode = type { ptr, ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }

@__glewVertexAttrib2fvARB = external local_unnamed_addr global ptr, align 8
@GTS = internal unnamed_addr global %struct.GPUTextureState { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 1, i32 0, i32 0, i32 -1, float 1.000000e+00, i32 0, ptr null }, align 8
@__GLEW_EXT_framebuffer_object = external local_unnamed_addr global i8, align 1
@U = external global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"floar_buf_col_cor\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tilerect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"fscalerect\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"scalerect\00", align 1
@__GLEW_EXT_texture_filter_anisotropic = external local_unnamed_addr global i8, align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"temp_texpaint_float_buf\00", align 1
@image_free_queue = internal global ptr null, align 8
@GPU_free_images_old.lasttime = internal unnamed_addr global i32 0, align 4
@GMS = internal global %struct.GPUMaterialState zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"GMS.matbuf\00", align 1
@defmaterial = external global %struct.Material, align 8
@__const.GPU_state_init.mat_specular = private unnamed_addr constant [4 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"repbind\00", align 1
@__glewGenerateMipmapEXT = external local_unnamed_addr global ptr, align 8
@__GLEW_VERSION_1_4 = external local_unnamed_addr global i8, align 1
@__glewBlendFuncSeparate = external local_unnamed_addr global ptr, align 8
@__GLEW_VERSION_1_3 = external local_unnamed_addr global i8, align 1
@__GLEW_ARB_multisample = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local void @GPU_render_text(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef readonly %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca [4 x [2 x float]], align 16
  %22 = and i32 %1, 64
  %23 = icmp ne i32 %22, 0
  %24 = icmp sgt i32 %3, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %253

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %253, label %30

30:                                               ; preds = %26
  %31 = zext nneg i32 %3 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #14
  %32 = icmp eq ptr %8, null
  %33 = getelementptr inbounds float, ptr %5, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !40
  %35 = getelementptr inbounds float, ptr %6, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !40
  %37 = getelementptr inbounds float, ptr %7, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !40
  br i1 %32, label %55, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds float, ptr %8, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !40
  %42 = fcmp ogt float %34, %36
  %43 = select i1 %42, float %34, float %36
  %44 = fcmp ogt float %43, %38
  %45 = select i1 %44, float %43, float %38
  %46 = fcmp ogt float %45, %41
  %47 = select i1 %46, float %45, float %41
  %48 = fcmp olt float %34, %36
  %49 = select i1 %48, float %34, float %36
  %50 = fcmp olt float %49, %38
  %51 = select i1 %50, float %49, float %38
  %52 = fcmp olt float %51, %41
  %53 = select i1 %52, float %51, float %41
  %54 = fsub float %47, %53
  br label %65

55:                                               ; preds = %30
  %56 = fcmp ogt float %34, %36
  %57 = select i1 %56, float %34, float %36
  %58 = fcmp ogt float %57, %38
  %59 = select i1 %58, float %57, float %38
  %60 = fcmp olt float %34, %36
  %61 = select i1 %60, float %34, float %36
  %62 = fcmp olt float %61, %38
  %63 = select i1 %62, float %61, float %38
  %64 = fsub float %59, %63
  br label %65

65:                                               ; preds = %55, %39
  %66 = phi float [ %54, %39 ], [ %64, %55 ]
  %67 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 4
  %68 = load i16, ptr %67, align 2, !tbaa !42
  %69 = and i16 %68, 2048
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = icmp eq ptr %4, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  br label %74

74:                                               ; preds = %65, %71, %73
  %75 = phi ptr [ %4, %71 ], [ null, %73 ], [ null, %65 ]
  tail call void @glPushMatrix() #14
  %76 = tail call ptr @BKE_image_get_first_ibuf(ptr noundef nonnull %28) #14
  call void @matrixGlyph(ptr noundef %76, i16 noundef zeroext 32, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #14
  %77 = load float, ptr %20, align 4, !tbaa !40
  %78 = fmul float %77, 4.000000e+00
  store i64 0, ptr %11, align 8, !tbaa !43
  %79 = fmul float %66, 0xBFF3333340000000
  %80 = getelementptr inbounds [2 x float], ptr %0, i64 0, i64 1
  %81 = getelementptr inbounds [2 x float], ptr %21, i64 0, i64 1
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1
  %83 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1
  %84 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 1, i64 1
  %85 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1, i64 1
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %87 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2
  %88 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2, i64 1
  %89 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2, i64 1
  %90 = icmp sgt i32 %9, -1
  %91 = icmp eq ptr %75, null
  %92 = getelementptr inbounds float, ptr %5, i64 1
  %93 = getelementptr inbounds float, ptr %5, i64 2
  %94 = getelementptr inbounds i32, ptr %75, i64 1
  %95 = getelementptr inbounds float, ptr %6, i64 1
  %96 = getelementptr inbounds float, ptr %6, i64 2
  %97 = getelementptr inbounds i32, ptr %75, i64 2
  %98 = getelementptr inbounds float, ptr %7, i64 1
  %99 = getelementptr inbounds float, ptr %7, i64 2
  %100 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %101 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 3
  %102 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3, i64 1
  %103 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 3, i64 1
  %104 = getelementptr inbounds i32, ptr %75, i64 3
  %105 = getelementptr inbounds float, ptr %8, i64 1
  %106 = getelementptr inbounds float, ptr %8, i64 2
  br label %107

107:                                              ; preds = %74, %248
  %108 = phi i64 [ 0, %74 ], [ %250, %248 ]
  %109 = phi float [ 0.000000e+00, %74 ], [ %249, %248 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #14
  %110 = getelementptr inbounds i8, ptr %2, i64 %108
  %111 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %110, ptr noundef nonnull %11) #14
  switch i32 %111, label %115 [
    i32 10, label %112
    i32 9, label %113
  ]

112:                                              ; preds = %107
  call void @glTranslatef(float noundef %109, float noundef %79, float noundef 0.000000e+00) #14
  br label %248, !llvm.loop !45

113:                                              ; preds = %107
  call void @glTranslatef(float noundef %78, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  %114 = fsub float %109, %78
  br label %248, !llvm.loop !45

115:                                              ; preds = %107
  %116 = icmp ugt i32 %111, 65535
  %117 = trunc i32 %111 to i16
  %118 = select i1 %116, i16 63, i16 %117
  call void @matrixGlyph(ptr noundef %76, i16 noundef zeroext %118, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #14
  %119 = load float, ptr %0, align 8, !tbaa !40
  %120 = load float, ptr %12, align 4, !tbaa !40
  %121 = fsub float %119, %120
  %122 = load float, ptr %14, align 4, !tbaa !40
  %123 = load float, ptr %16, align 4, !tbaa !40
  %124 = call float @llvm.fmuladd.f32(float %121, float %122, float %123)
  store float %124, ptr %21, align 16, !tbaa !40
  %125 = load float, ptr %80, align 4, !tbaa !40
  %126 = load float, ptr %13, align 4, !tbaa !40
  %127 = fsub float %125, %126
  %128 = load float, ptr %15, align 4, !tbaa !40
  %129 = load float, ptr %17, align 4, !tbaa !40
  %130 = call float @llvm.fmuladd.f32(float %127, float %128, float %129)
  store float %130, ptr %81, align 4, !tbaa !40
  %131 = load float, ptr %82, align 8, !tbaa !40
  %132 = fsub float %131, %120
  %133 = call float @llvm.fmuladd.f32(float %132, float %122, float %123)
  store float %133, ptr %83, align 8, !tbaa !40
  %134 = load float, ptr %84, align 4, !tbaa !40
  %135 = fsub float %134, %126
  %136 = call float @llvm.fmuladd.f32(float %135, float %128, float %129)
  store float %136, ptr %85, align 4, !tbaa !40
  %137 = load float, ptr %86, align 8, !tbaa !40
  %138 = fsub float %137, %120
  %139 = call float @llvm.fmuladd.f32(float %138, float %122, float %123)
  store float %139, ptr %87, align 16, !tbaa !40
  %140 = load float, ptr %88, align 4, !tbaa !40
  %141 = fsub float %140, %126
  %142 = call float @llvm.fmuladd.f32(float %141, float %128, float %129)
  store float %142, ptr %89, align 4, !tbaa !40
  call void @glBegin(i32 noundef 9) #14
  br i1 %90, label %143, label %145

143:                                              ; preds = %115
  %144 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !48
  call void %144(i32 noundef %9, ptr noundef nonnull %21) #14
  br label %146

145:                                              ; preds = %115
  call void @glTexCoord2fv(ptr noundef nonnull %21) #14
  br label %146

146:                                              ; preds = %145, %143
  br i1 %91, label %155, label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %75, align 4, !tbaa !49
  %149 = lshr i32 %148, 8
  %150 = trunc i32 %149 to i8
  %151 = lshr i32 %148, 16
  %152 = trunc i32 %151 to i8
  %153 = lshr i32 %148, 24
  %154 = trunc i32 %153 to i8
  call void @glColor3ub(i8 noundef zeroext %154, i8 noundef zeroext %152, i8 noundef zeroext %150) #14
  br label %155

155:                                              ; preds = %147, %146
  %156 = load float, ptr %14, align 4, !tbaa !40
  %157 = load float, ptr %5, align 4, !tbaa !40
  %158 = load float, ptr %18, align 4, !tbaa !40
  %159 = call float @llvm.fmuladd.f32(float %156, float %157, float %158)
  %160 = load float, ptr %15, align 4, !tbaa !40
  %161 = load float, ptr %92, align 4, !tbaa !40
  %162 = load float, ptr %19, align 4, !tbaa !40
  %163 = call float @llvm.fmuladd.f32(float %160, float %161, float %162)
  %164 = load float, ptr %93, align 4, !tbaa !40
  call void @glVertex3f(float noundef %159, float noundef %163, float noundef %164) #14
  br i1 %90, label %165, label %167

165:                                              ; preds = %155
  %166 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !48
  call void %166(i32 noundef %9, ptr noundef nonnull %83) #14
  br label %168

167:                                              ; preds = %155
  call void @glTexCoord2fv(ptr noundef nonnull %83) #14
  br label %168

168:                                              ; preds = %167, %165
  br i1 %91, label %177, label %169

169:                                              ; preds = %168
  %170 = load i32, ptr %94, align 4, !tbaa !49
  %171 = lshr i32 %170, 8
  %172 = trunc i32 %171 to i8
  %173 = lshr i32 %170, 16
  %174 = trunc i32 %173 to i8
  %175 = lshr i32 %170, 24
  %176 = trunc i32 %175 to i8
  call void @glColor3ub(i8 noundef zeroext %176, i8 noundef zeroext %174, i8 noundef zeroext %172) #14
  br label %177

177:                                              ; preds = %169, %168
  %178 = load float, ptr %14, align 4, !tbaa !40
  %179 = load float, ptr %6, align 4, !tbaa !40
  %180 = load float, ptr %18, align 4, !tbaa !40
  %181 = call float @llvm.fmuladd.f32(float %178, float %179, float %180)
  %182 = load float, ptr %15, align 4, !tbaa !40
  %183 = load float, ptr %95, align 4, !tbaa !40
  %184 = load float, ptr %19, align 4, !tbaa !40
  %185 = call float @llvm.fmuladd.f32(float %182, float %183, float %184)
  %186 = load float, ptr %96, align 4, !tbaa !40
  call void @glVertex3f(float noundef %181, float noundef %185, float noundef %186) #14
  br i1 %90, label %187, label %189

187:                                              ; preds = %177
  %188 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !48
  call void %188(i32 noundef %9, ptr noundef nonnull %87) #14
  br label %190

189:                                              ; preds = %177
  call void @glTexCoord2fv(ptr noundef nonnull %87) #14
  br label %190

190:                                              ; preds = %189, %187
  br i1 %91, label %199, label %191

191:                                              ; preds = %190
  %192 = load i32, ptr %97, align 4, !tbaa !49
  %193 = lshr i32 %192, 8
  %194 = trunc i32 %193 to i8
  %195 = lshr i32 %192, 16
  %196 = trunc i32 %195 to i8
  %197 = lshr i32 %192, 24
  %198 = trunc i32 %197 to i8
  call void @glColor3ub(i8 noundef zeroext %198, i8 noundef zeroext %196, i8 noundef zeroext %194) #14
  br label %199

199:                                              ; preds = %191, %190
  %200 = load float, ptr %14, align 4, !tbaa !40
  %201 = load float, ptr %7, align 4, !tbaa !40
  %202 = load float, ptr %18, align 4, !tbaa !40
  %203 = call float @llvm.fmuladd.f32(float %200, float %201, float %202)
  %204 = load float, ptr %15, align 4, !tbaa !40
  %205 = load float, ptr %98, align 4, !tbaa !40
  %206 = load float, ptr %19, align 4, !tbaa !40
  %207 = call float @llvm.fmuladd.f32(float %204, float %205, float %206)
  %208 = load float, ptr %99, align 4, !tbaa !40
  call void @glVertex3f(float noundef %203, float noundef %207, float noundef %208) #14
  br i1 %32, label %244, label %209

209:                                              ; preds = %199
  %210 = load float, ptr %100, align 8, !tbaa !40
  %211 = load float, ptr %12, align 4, !tbaa !40
  %212 = fsub float %210, %211
  %213 = load float, ptr %14, align 4, !tbaa !40
  %214 = load float, ptr %16, align 4, !tbaa !40
  %215 = call float @llvm.fmuladd.f32(float %212, float %213, float %214)
  store float %215, ptr %101, align 8, !tbaa !40
  %216 = load float, ptr %102, align 4, !tbaa !40
  %217 = load float, ptr %13, align 4, !tbaa !40
  %218 = fsub float %216, %217
  %219 = load float, ptr %15, align 4, !tbaa !40
  %220 = load float, ptr %17, align 4, !tbaa !40
  %221 = call float @llvm.fmuladd.f32(float %218, float %219, float %220)
  store float %221, ptr %103, align 4, !tbaa !40
  br i1 %90, label %222, label %224

222:                                              ; preds = %209
  %223 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !48
  call void %223(i32 noundef %9, ptr noundef nonnull %101) #14
  br label %225

224:                                              ; preds = %209
  call void @glTexCoord2fv(ptr noundef nonnull %101) #14
  br label %225

225:                                              ; preds = %224, %222
  br i1 %91, label %234, label %226

226:                                              ; preds = %225
  %227 = load i32, ptr %104, align 4, !tbaa !49
  %228 = lshr i32 %227, 8
  %229 = trunc i32 %228 to i8
  %230 = lshr i32 %227, 16
  %231 = trunc i32 %230 to i8
  %232 = lshr i32 %227, 24
  %233 = trunc i32 %232 to i8
  call void @glColor3ub(i8 noundef zeroext %233, i8 noundef zeroext %231, i8 noundef zeroext %229) #14
  br label %234

234:                                              ; preds = %226, %225
  %235 = load float, ptr %14, align 4, !tbaa !40
  %236 = load float, ptr %8, align 4, !tbaa !40
  %237 = load float, ptr %18, align 4, !tbaa !40
  %238 = call float @llvm.fmuladd.f32(float %235, float %236, float %237)
  %239 = load float, ptr %15, align 4, !tbaa !40
  %240 = load float, ptr %105, align 4, !tbaa !40
  %241 = load float, ptr %19, align 4, !tbaa !40
  %242 = call float @llvm.fmuladd.f32(float %239, float %240, float %241)
  %243 = load float, ptr %106, align 4, !tbaa !40
  call void @glVertex3f(float noundef %238, float noundef %242, float noundef %243) #14
  br label %244

244:                                              ; preds = %234, %199
  call void @glEnd() #14
  %245 = load float, ptr %20, align 4, !tbaa !40
  call void @glTranslatef(float noundef %245, float noundef 0.000000e+00, float noundef 0.000000e+00) #14
  %246 = load float, ptr %20, align 4, !tbaa !40
  %247 = fsub float %109, %246
  br label %248

248:                                              ; preds = %244, %113, %112
  %249 = phi float [ 0.000000e+00, %112 ], [ %114, %113 ], [ %247, %244 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #14
  %250 = load i64, ptr %11, align 8, !tbaa !43
  %251 = icmp ult i64 %250, %31
  br i1 %251, label %107, label %252

252:                                              ; preds = %248
  call void @glPopMatrix() #14
  call void @BKE_image_release_ibuf(ptr noundef nonnull %28, ptr noundef %76, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %253

253:                                              ; preds = %252, %26, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare ptr @BKE_image_get_first_ibuf(ptr noundef) local_unnamed_addr #2

declare void @matrixGlyph(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #2

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @glPopMatrix() local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_set_gpu_mipmapping(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !51
  %3 = icmp ne i32 %0, 0
  %4 = load i8, ptr @__GLEW_EXT_framebuffer_object, align 1
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  store i32 %7, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !51
  %8 = icmp eq i32 %2, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @G, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  tail call void @GPU_free_image(ptr noundef nonnull %17)
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16, !llvm.loop !56

20:                                               ; preds = %16, %12, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_images() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !53
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @GPU_free_image(ptr noundef nonnull %8)
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !56

11:                                               ; preds = %7, %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_set_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @G, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  tail call void @GPU_free_image(ptr noundef nonnull %14)
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !56

17:                                               ; preds = %13, %9, %6
  store i32 %4, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_set_linear_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @G, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  tail call void @GPU_free_image(ptr noundef nonnull %14)
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !56

17:                                               ; preds = %13, %9, %6
  store i32 %4, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_mipmap() local_unnamed_addr #4 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_linear_mipmap() local_unnamed_addr #4 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_set_anisotropic(float noundef %0) local_unnamed_addr #0 {
  %2 = load float, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !59
  %3 = fcmp une float %2, %0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = load ptr, ptr @G, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  tail call void @GPU_free_image(ptr noundef nonnull %12)
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !56

15:                                               ; preds = %11, %7, %4
  %16 = fcmp ogt float %0, 3.404700e+04
  %17 = select i1 %16, float 3.404700e+04, float %0
  store float %17, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !59
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @GPU_get_anisotropic() local_unnamed_addr #4 {
  %1 = load float, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !59
  ret float %1
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_clear_tpage(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !60
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !60
  store i32 0, ptr @GTS, align 8, !tbaa !61
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !62
  %7 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glLoadIdentity() #14
  tail call void @glMatrixMode(i32 noundef 5888) #14
  br label %10

10:                                               ; preds = %9, %6
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !64
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !65
  store i32 -1, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !66
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 3553) #14
  tail call void @glDisable(i32 noundef 3168) #14
  tail call void @glDisable(i32 noundef 3169) #14
  tail call void @glDisable(i32 noundef 3008) #14
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_verify_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  store ptr %0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 8), align 8, !tbaa !67
  %7 = icmp ne ptr %0, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = and i16 %10, 3
  %12 = icmp ne i16 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  %14 = and i16 %10, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !75
  br label %20

19:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  br label %20

20:                                               ; preds = %8, %19, %16
  %21 = phi i32 [ %18, %16 ], [ %2, %19 ], [ %2, %8 ]
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  store i32 %22, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  br i1 %7, label %23, label %30

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %25 = load i16, ptr %24, align 4, !tbaa !77
  %26 = sext i16 %25 to i32
  store i32 %26, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  %27 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %28 = load i16, ptr %27, align 2, !tbaa !78
  %29 = sext i16 %28 to i32
  store i32 %29, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  br label %30

30:                                               ; preds = %23, %20
  %31 = icmp ne i8 %3, 0
  %32 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8
  %33 = icmp eq ptr %32, %0
  %34 = select i1 %31, i1 %33, i1 false
  %35 = load i32, ptr @GTS, align 8
  %36 = icmp eq i32 %35, %22
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  %40 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !64
  %44 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !65
  %48 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = zext i1 %7 to i32
  br label %360

52:                                               ; preds = %46, %42, %38, %30
  %53 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  %54 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !64
  %58 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !65
  %62 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %60, %56, %52
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glLoadIdentity() #14
  br i1 %7, label %65, label %77

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %67 = load i16, ptr %66, align 8, !tbaa !68
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %72 = load i16, ptr %71, align 4, !tbaa !77
  %73 = sitofp i16 %72 to float
  %74 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %75 = load i16, ptr %74, align 2, !tbaa !78
  %76 = sitofp i16 %75 to float
  tail call void @glScalef(float noundef %73, float noundef %76, float noundef 1.000000e+00) #14
  br label %77

77:                                               ; preds = %70, %65, %64
  tail call void @glMatrixMode(i32 noundef 5888) #14
  br label %78

78:                                               ; preds = %77, %60
  %79 = icmp eq ptr %0, null
  br i1 %79, label %360, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %82 = load i16, ptr %81, align 4, !tbaa !79
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %360, label %84

84:                                               ; preds = %80
  %85 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef %1, ptr noundef null) #14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %360, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = icmp eq ptr %89, null
  br i1 %90, label %107, label %91

91:                                               ; preds = %87
  %92 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 83), align 8, !tbaa !84
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 23
  %96 = load i32, ptr %95, align 4, !tbaa !88
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  tail call void @IMB_rect_from_float(ptr noundef nonnull %85) #14
  br label %100

100:                                              ; preds = %91, %94, %99
  %101 = phi i8 [ 0, %99 ], [ 0, %94 ], [ 1, %91 ]
  %102 = icmp eq i8 %5, 0
  %103 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !89
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  tail call void @IMB_rect_from_float(ptr noundef nonnull %85) #14
  br label %107

107:                                              ; preds = %100, %106, %87
  %108 = phi i8 [ %101, %106 ], [ %101, %100 ], [ 0, %87 ]
  %109 = phi i1 [ %102, %106 ], [ %102, %100 ], [ false, %87 ]
  %110 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %111 = load i16, ptr %110, align 8, !tbaa !68
  %112 = and i16 %111, 64
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  tail call void @GPU_free_image(ptr noundef %0)
  %115 = load i16, ptr %110, align 8, !tbaa !68
  %116 = and i16 %115, -65
  store i16 %116, ptr %110, align 8, !tbaa !68
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %247, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %122 = load ptr, ptr %121, align 8, !tbaa !90
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %152

124:                                              ; preds = %120
  %125 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #14
  %126 = icmp eq ptr %125, null
  br i1 %126, label %152, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %121, align 8, !tbaa !90
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %132 = load i16, ptr %131, align 2, !tbaa !91
  %133 = sext i16 %132 to i32
  tail call void @glDeleteTextures(i32 noundef %133, ptr noundef nonnull %128) #14
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %135 = load ptr, ptr %121, align 8, !tbaa !90
  tail call void %134(ptr noundef %135) #14
  store ptr null, ptr %121, align 8, !tbaa !90
  %136 = load i16, ptr %110, align 8, !tbaa !68
  %137 = and i16 %136, -9
  store i16 %137, ptr %110, align 8, !tbaa !68
  br label %138

138:                                              ; preds = %130, %127
  %139 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %140 = load i16, ptr %139, align 4, !tbaa !77
  %141 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %142 = load i16, ptr %141, align 2, !tbaa !78
  %143 = mul i16 %142, %140
  %144 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  store i16 %143, ptr %144, align 2, !tbaa !91
  %145 = icmp sgt i16 %143, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %148 = zext nneg i16 %143 to i64
  %149 = shl nuw nsw i64 %148, 2
  %150 = tail call ptr %147(i64 noundef %149, ptr noundef nonnull @.str.6) #14
  store ptr %150, ptr %121, align 8, !tbaa !90
  br label %151

151:                                              ; preds = %146, %138
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %125, ptr noundef null) #14
  br label %152

152:                                              ; preds = %151, %124, %120
  %153 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  %154 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %155 = load i16, ptr %154, align 2, !tbaa !91
  %156 = sext i16 %155 to i32
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  br label %159

159:                                              ; preds = %158, %152
  %160 = load ptr, ptr %121, align 8, !tbaa !90
  %161 = icmp eq ptr %160, null
  %162 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %160, i64 %163
  %165 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %166 = select i1 %161, ptr %165, ptr %164
  %167 = load i32, ptr %166, align 4, !tbaa !49
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %277

169:                                              ; preds = %159
  %170 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !92
  %172 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %173 = load i16, ptr %172, align 4, !tbaa !77
  %174 = sext i16 %173 to i32
  %175 = sdiv i32 %171, %174
  %176 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !93
  %178 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %179 = load i16, ptr %178, align 2, !tbaa !78
  %180 = sext i16 %179 to i32
  %181 = sdiv i32 %177, %180
  %182 = mul nsw i32 %180, %174
  %183 = icmp slt i32 %162, %182
  br i1 %183, label %186, label %184

184:                                              ; preds = %169
  %185 = add nsw i32 %182, -1
  store i32 %185, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  br label %186

186:                                              ; preds = %184, %169
  %187 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  %188 = sdiv i32 %187, %174
  %189 = mul i32 %188, %174
  %190 = srem i32 %187, %174
  %191 = shl i32 %175, 16
  %192 = ashr exact i32 %191, 16
  %193 = mul i32 %190, %175
  %194 = shl i32 %181, 16
  %195 = ashr exact i32 %194, 16
  %196 = mul i32 %188, %181
  %197 = icmp eq i8 %108, 0
  br i1 %197, label %235, label %198

198:                                              ; preds = %186
  br i1 %109, label %199, label %224

199:                                              ; preds = %198
  %200 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %201 = mul nsw i32 %177, %171
  %202 = sext i32 %201 to i64
  %203 = shl nsw i64 %202, 4
  %204 = tail call ptr %200(i64 noundef %203, ptr noundef nonnull @.str) #14
  %205 = load ptr, ptr %88, align 8, !tbaa !80
  %206 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 5
  %207 = load i32, ptr %206, align 4, !tbaa !94
  %208 = load i32, ptr %170, align 8, !tbaa !92
  %209 = load i32, ptr %176, align 4, !tbaa !93
  tail call void @IMB_buffer_float_from_float(ptr noundef %204, ptr noundef %205, i32 noundef %207, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %208, i32 noundef %209, i32 noundef %208, i32 noundef %208) #14
  %210 = load i32, ptr %170, align 8, !tbaa !92
  %211 = load i32, ptr %176, align 4, !tbaa !93
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %204, i32 noundef %210, i32 noundef %211) #14
  %212 = load i32, ptr %170, align 8, !tbaa !92
  %213 = load i32, ptr %176, align 4, !tbaa !93
  tail call void @IMB_buffer_float_clamp(ptr noundef %204, i32 noundef %212, i32 noundef %213) #14
  %214 = shl i32 %196, 16
  %215 = ashr exact i32 %214, 16
  %216 = load i32, ptr %170, align 8, !tbaa !92
  %217 = mul nsw i32 %216, %215
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, ptr %204, i64 %218
  %220 = shl i32 %193, 16
  %221 = ashr exact i32 %220, 16
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, ptr %219, i64 %222
  br label %277

224:                                              ; preds = %198
  %225 = load ptr, ptr %88, align 8, !tbaa !80
  %226 = shl i32 %196, 16
  %227 = ashr exact i32 %226, 16
  %228 = mul nsw i32 %227, %171
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, ptr %225, i64 %229
  %231 = shl i32 %193, 16
  %232 = ashr exact i32 %231, 16
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, ptr %230, i64 %233
  br label %277

235:                                              ; preds = %186
  %236 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 8
  %237 = load ptr, ptr %236, align 8, !tbaa !89
  %238 = shl i32 %196, 16
  %239 = ashr exact i32 %238, 16
  %240 = mul nsw i32 %239, %171
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, ptr %237, i64 %241
  %243 = shl i32 %193, 16
  %244 = ashr exact i32 %243, 16
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, ptr %242, i64 %245
  br label %277

247:                                              ; preds = %117
  %248 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %249 = load i32, ptr %248, align 4, !tbaa !49
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %277

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 2
  %253 = load i32, ptr %252, align 8, !tbaa !92
  %254 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 3
  %255 = load i32, ptr %254, align 4, !tbaa !93
  %256 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 8
  %257 = load ptr, ptr %256, align 8, !tbaa !89
  %258 = icmp eq i8 %108, 0
  br i1 %258, label %277, label %259

259:                                              ; preds = %251
  br i1 %109, label %260, label %275

260:                                              ; preds = %259
  %261 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %262 = mul nsw i32 %255, %253
  %263 = sext i32 %262 to i64
  %264 = shl nsw i64 %263, 4
  %265 = tail call ptr %261(i64 noundef %264, ptr noundef nonnull @.str) #14
  %266 = load ptr, ptr %88, align 8, !tbaa !80
  %267 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 5
  %268 = load i32, ptr %267, align 4, !tbaa !94
  %269 = load i32, ptr %252, align 8, !tbaa !92
  %270 = load i32, ptr %254, align 4, !tbaa !93
  tail call void @IMB_buffer_float_from_float(ptr noundef %265, ptr noundef %266, i32 noundef %268, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %269, i32 noundef %270, i32 noundef %269, i32 noundef %269) #14
  %271 = load i32, ptr %252, align 8, !tbaa !92
  %272 = load i32, ptr %254, align 4, !tbaa !93
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %265, i32 noundef %271, i32 noundef %272) #14
  %273 = load i32, ptr %252, align 8, !tbaa !92
  %274 = load i32, ptr %254, align 4, !tbaa !93
  tail call void @IMB_buffer_float_clamp(ptr noundef %265, i32 noundef %273, i32 noundef %274) #14
  br label %277

275:                                              ; preds = %259
  %276 = load ptr, ptr %88, align 8, !tbaa !80
  br label %277

277:                                              ; preds = %247, %260, %275, %251, %159, %199, %224, %235
  %278 = phi ptr [ null, %199 ], [ null, %224 ], [ %246, %235 ], [ null, %159 ], [ %257, %260 ], [ %257, %275 ], [ %257, %251 ], [ null, %247 ]
  %279 = phi ptr [ %223, %199 ], [ %234, %224 ], [ null, %235 ], [ null, %159 ], [ %265, %260 ], [ %276, %275 ], [ null, %251 ], [ null, %247 ]
  %280 = phi ptr [ %204, %199 ], [ null, %224 ], [ null, %235 ], [ null, %159 ], [ %265, %260 ], [ null, %275 ], [ null, %251 ], [ null, %247 ]
  %281 = phi i32 [ %195, %199 ], [ %195, %224 ], [ %195, %235 ], [ 0, %159 ], [ %255, %260 ], [ %255, %275 ], [ %255, %251 ], [ 0, %247 ]
  %282 = phi i32 [ %192, %199 ], [ %192, %224 ], [ %192, %235 ], [ 0, %159 ], [ %253, %260 ], [ %253, %275 ], [ %253, %251 ], [ 0, %247 ]
  %283 = phi ptr [ %166, %199 ], [ %166, %224 ], [ %166, %235 ], [ %166, %159 ], [ %248, %260 ], [ %248, %275 ], [ %248, %251 ], [ %248, %247 ]
  %284 = load i32, ptr %283, align 4, !tbaa !49
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %277
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %284) #14
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %85, ptr noundef null) #14
  %287 = load i32, ptr %283, align 4, !tbaa !49
  br label %360

288:                                              ; preds = %277
  %289 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %333, label %291

291:                                              ; preds = %288
  %292 = icmp eq i8 %108, 0
  %293 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %294 = mul nsw i32 %282, %281
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 2
  %297 = tail call ptr %293(i64 noundef %296, ptr noundef nonnull @.str.1) #14
  %298 = icmp sgt i32 %281, 0
  br i1 %292, label %316, label %299

299:                                              ; preds = %291
  br i1 %298, label %300, label %333

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 2
  %302 = sext i32 %282 to i64
  %303 = shl nsw i64 %302, 2
  %304 = sext i32 %282 to i64
  %305 = zext nneg i32 %281 to i64
  br label %306

306:                                              ; preds = %300, %306
  %307 = phi i64 [ 0, %300 ], [ %314, %306 ]
  %308 = load i32, ptr %301, align 8, !tbaa !92
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %307, %309
  %311 = getelementptr inbounds float, ptr %279, i64 %310
  %312 = mul nsw i64 %307, %304
  %313 = getelementptr inbounds float, ptr %297, i64 %312
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %313, ptr align 4 %311, i64 %303, i1 false)
  %314 = add nuw nsw i64 %307, 1
  %315 = icmp eq i64 %314, %305
  br i1 %315, label %333, label %306, !llvm.loop !95

316:                                              ; preds = %291
  br i1 %298, label %317, label %333

317:                                              ; preds = %316
  %318 = getelementptr inbounds %struct.ImBuf, ptr %85, i64 0, i32 2
  %319 = sext i32 %282 to i64
  %320 = shl nsw i64 %319, 2
  %321 = sext i32 %282 to i64
  %322 = zext nneg i32 %281 to i64
  br label %323

323:                                              ; preds = %317, %323
  %324 = phi i64 [ 0, %317 ], [ %331, %323 ]
  %325 = load i32, ptr %318, align 8, !tbaa !92
  %326 = sext i32 %325 to i64
  %327 = mul nsw i64 %324, %326
  %328 = getelementptr inbounds i32, ptr %278, i64 %327
  %329 = mul nsw i64 %324, %321
  %330 = getelementptr inbounds i32, ptr %297, i64 %329
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %330, ptr align 4 %328, i64 %320, i1 false)
  %331 = add nuw nsw i64 %324, 1
  %332 = icmp eq i64 %331, %322
  br i1 %332, label %333, label %323, !llvm.loop !96

333:                                              ; preds = %306, %323, %299, %316, %288
  %334 = phi ptr [ null, %288 ], [ %297, %316 ], [ null, %299 ], [ %297, %323 ], [ null, %306 ]
  %335 = phi ptr [ %278, %288 ], [ %297, %316 ], [ %278, %299 ], [ %297, %323 ], [ %278, %306 ]
  %336 = phi ptr [ null, %288 ], [ null, %316 ], [ %297, %299 ], [ null, %323 ], [ %297, %306 ]
  %337 = phi ptr [ %279, %288 ], [ %279, %316 ], [ %297, %299 ], [ %279, %323 ], [ %297, %306 ]
  tail call void @GPU_create_gl_tex(ptr noundef nonnull %283, ptr noundef %335, ptr noundef %337, i32 noundef %282, i32 noundef %281, i8 noundef zeroext %4, i8 noundef zeroext %108, ptr noundef %0)
  %338 = load i32, ptr %283, align 4, !tbaa !49
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %333
  %341 = icmp eq i8 %5, 0
  %342 = load i16, ptr %110, align 8, !tbaa !68
  %343 = and i16 %342, -129
  %344 = select i1 %341, i16 0, i16 128
  %345 = or disjoint i16 %343, %344
  store i16 %345, ptr %110, align 8, !tbaa !68
  br label %346

346:                                              ; preds = %340, %333
  %347 = icmp eq ptr %334, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %346
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %349(ptr noundef nonnull %334) #14
  br label %350

350:                                              ; preds = %348, %346
  %351 = icmp eq ptr %336, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %350
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %353(ptr noundef nonnull %336) #14
  br label %354

354:                                              ; preds = %352, %350
  %355 = icmp eq ptr %280, null
  br i1 %355, label %358, label %356

356:                                              ; preds = %354
  %357 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %357(ptr noundef nonnull %280) #14
  br label %358

358:                                              ; preds = %356, %354
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %85, ptr noundef null) #14
  %359 = load i32, ptr %283, align 4, !tbaa !49
  br label %360

360:                                              ; preds = %84, %78, %80, %358, %286, %50
  %361 = phi i32 [ %51, %50 ], [ %287, %286 ], [ %359, %358 ], [ 0, %80 ], [ 0, %78 ], [ 0, %84 ]
  ret i32 %361
}

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_thread_is_main() #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @BLI_lock_thread(i32 noundef 5) #14
  tail call void @BLI_linklist_prepend(ptr noundef nonnull @image_free_queue, ptr noundef %0) #14
  tail call void @BLI_unlock_thread(i32 noundef 5) #14
  br label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %6) #14
  store i32 0, ptr %6, align 4, !tbaa !97
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #14
  store ptr null, ptr %11, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %21 = load i16, ptr %20, align 2, !tbaa !91
  %22 = sext i16 %21 to i32
  tail call void @glDeleteTextures(i32 noundef %22, ptr noundef nonnull %17) #14
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %24 = load ptr, ptr %16, align 8, !tbaa !90
  tail call void %23(ptr noundef %24) #14
  store ptr null, ptr %16, align 8, !tbaa !90
  br label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %27 = load i16, ptr %26, align 8, !tbaa !68
  %28 = and i16 %27, -137
  store i16 %28, ptr %26, align 8, !tbaa !68
  br label %29

29:                                               ; preds = %25, %4
  ret void
}

declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_unpremultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_buffer_float_clamp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @GPU_create_gl_tex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @GPU_non_power_of_two_support() #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call i32 @llvm.ctpop.i32(i32 %3), !range !99
  %13 = icmp ugt i32 %12, 1
  %14 = tail call i32 @llvm.ctpop.i32(i32 %4), !range !99
  %15 = icmp ugt i32 %14, 1
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %11, %8
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = sext i16 %18 to i32
  %22 = tail call i32 @GPU_max_texture_size() #14
  %23 = tail call i32 @llvm.smin.i32(i32 %21, i32 %22)
  br label %26

24:                                               ; preds = %17
  %25 = tail call i32 @GPU_max_texture_size() #14
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  %28 = icmp sge i32 %27, %3
  %29 = icmp sge i32 %27, %4
  %30 = and i1 %28, %29
  br i1 %30, label %84, label %31

31:                                               ; preds = %11, %26
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = sext i16 %32 to i32
  %36 = tail call i32 @GPU_max_texture_size() #14
  %37 = tail call i32 @llvm.smin.i32(i32 %35, i32 %36)
  br label %40

38:                                               ; preds = %31
  %39 = tail call i32 @GPU_max_texture_size() #14
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  %42 = icmp slt i32 %41, %3
  br i1 %42, label %50, label %43

43:                                               ; preds = %40, %47
  %44 = phi i32 [ %49, %47 ], [ %3, %40 ]
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44), !range !99
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = add nsw i32 %44, -1
  %49 = and i32 %48, %44
  br label %43, !llvm.loop !101

50:                                               ; preds = %43, %40
  %51 = phi i32 [ %41, %40 ], [ %44, %43 ]
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = sext i16 %52 to i32
  %56 = tail call i32 @GPU_max_texture_size() #14
  %57 = tail call i32 @llvm.smin.i32(i32 %55, i32 %56)
  br label %60

58:                                               ; preds = %50
  %59 = tail call i32 @GPU_max_texture_size() #14
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  %62 = icmp slt i32 %61, %4
  br i1 %62, label %70, label %63

63:                                               ; preds = %60, %67
  %64 = phi i32 [ %69, %67 ], [ %4, %60 ]
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64), !range !99
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = add nsw i32 %64, -1
  %69 = and i32 %68, %64
  br label %63, !llvm.loop !101

70:                                               ; preds = %63, %60
  %71 = phi i32 [ %61, %60 ], [ %64, %63 ]
  %72 = icmp eq i8 %6, 0
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %74 = mul nsw i32 %71, %51
  %75 = sext i32 %74 to i64
  br i1 %72, label %80, label %76

76:                                               ; preds = %70
  %77 = shl nsw i64 %75, 4
  %78 = tail call ptr %73(i64 noundef %77, ptr noundef nonnull @.str.2) #14
  %79 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %3, i32 noundef %4, i32 noundef 5126, ptr noundef %2, i32 noundef %51, i32 noundef %71, i32 noundef 5126, ptr noundef %78) #14
  br label %84

80:                                               ; preds = %70
  %81 = shl nsw i64 %75, 2
  %82 = tail call ptr %73(i64 noundef %81, ptr noundef nonnull @.str.3) #14
  %83 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %3, i32 noundef %4, i32 noundef 5121, ptr noundef %1, i32 noundef %51, i32 noundef %71, i32 noundef 5121, ptr noundef %82) #14
  br label %84

84:                                               ; preds = %76, %80, %26
  %85 = phi i32 [ %71, %76 ], [ %71, %80 ], [ %4, %26 ]
  %86 = phi i32 [ %51, %76 ], [ %51, %80 ], [ %3, %26 ]
  %87 = phi ptr [ null, %76 ], [ %82, %80 ], [ null, %26 ]
  %88 = phi ptr [ %78, %76 ], [ null, %80 ], [ null, %26 ]
  %89 = phi ptr [ %78, %76 ], [ %2, %80 ], [ %2, %26 ]
  %90 = phi ptr [ %1, %76 ], [ %82, %80 ], [ %1, %26 ]
  tail call void @glGenTextures(i32 noundef 1, ptr noundef %0) #14
  %91 = load i32, ptr %0, align 4, !tbaa !49
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %91) #14
  %92 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %93 = icmp ne i32 %92, 0
  %94 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  %97 = icmp ne i8 %5, 0
  %98 = and i1 %97, %96
  br i1 %98, label %110, label %99

99:                                               ; preds = %84
  %100 = icmp eq i8 %6, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %99
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32859, i32 noundef %86, i32 noundef %85, i32 noundef 0, i32 noundef 6408, i32 noundef 5126, ptr noundef %89) #14
  br label %103

102:                                              ; preds = %99
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %86, i32 noundef %85, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %90) #14
  br label %103

103:                                              ; preds = %102, %101
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #14
  %104 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %105 = icmp ne i32 %104, 0
  %106 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %105, i1 true, i1 %107
  %109 = select i1 %108, i32 9729, i32 9728
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %109) #14
  br label %155

110:                                              ; preds = %84
  %111 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !51
  %112 = icmp eq i32 %111, 0
  %113 = icmp eq i8 %6, 0
  br i1 %112, label %132, label %114

114:                                              ; preds = %110
  br i1 %113, label %116, label %115

115:                                              ; preds = %114
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32859, i32 noundef %86, i32 noundef %85, i32 noundef 0, i32 noundef 6408, i32 noundef 5126, ptr noundef %89) #14
  br label %117

116:                                              ; preds = %114
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %86, i32 noundef %85, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %90) #14
  br label %117

117:                                              ; preds = %116, %115
  %118 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #14
  %119 = and i32 %118, 255
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = tail call zeroext i8 @glIsEnabled(i32 noundef 3553) #14
  %123 = zext i8 %122 to i32
  %124 = icmp eq i8 %122, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  tail call void @glEnable(i32 noundef 3553) #14
  br label %126

126:                                              ; preds = %125, %121, %117
  %127 = phi i32 [ %123, %121 ], [ 0, %125 ], [ 0, %117 ]
  %128 = load ptr, ptr @__glewGenerateMipmapEXT, align 8, !tbaa !48
  tail call void %128(i32 noundef 3553) #14
  %129 = icmp ne i32 %127, 0
  %130 = or i1 %120, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  tail call void @glDisable(i32 noundef 3553) #14
  br label %137

132:                                              ; preds = %110
  br i1 %113, label %135, label %133

133:                                              ; preds = %132
  %134 = tail call i32 @gluBuild2DMipmaps(i32 noundef 3553, i32 noundef 32859, i32 noundef %86, i32 noundef %85, i32 noundef 6408, i32 noundef 5126, ptr noundef %89) #14
  br label %137

135:                                              ; preds = %132
  %136 = tail call i32 @gluBuild2DMipmaps(i32 noundef 3553, i32 noundef 6408, i32 noundef %86, i32 noundef %85, i32 noundef 6408, i32 noundef 5121, ptr noundef %90) #14
  br label %137

137:                                              ; preds = %131, %126, %133, %135
  %138 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %139 = icmp eq i32 %138, 0
  %140 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 9728, i32 9985
  %143 = select i1 %139, i32 %142, i32 9987
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef %143) #14
  %144 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %145 = icmp ne i32 %144, 0
  %146 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  %149 = select i1 %148, i32 9729, i32 9728
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %149) #14
  %150 = icmp eq ptr %7, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 14
  %153 = load i16, ptr %152, align 8, !tbaa !68
  %154 = or i16 %153, 8
  store i16 %154, ptr %152, align 8, !tbaa !68
  br label %155

155:                                              ; preds = %137, %151, %103
  %156 = load i8, ptr @__GLEW_EXT_texture_filter_anisotropic, align 1, !tbaa !102
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load float, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !59
  tail call void @glTexParameterf(i32 noundef 3553, i32 noundef 34046, float noundef %159) #14
  br label %160

160:                                              ; preds = %158, %155
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #14
  %161 = icmp eq ptr %87, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %160
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %163(ptr noundef nonnull %87) #14
  br label %164

164:                                              ; preds = %162, %160
  %165 = icmp eq ptr %88, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %167(ptr noundef nonnull %88) #14
  br label %168

168:                                              ; preds = %166, %164
  ret void
}

declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #2

declare i32 @gluScaleImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gluBuild2DMipmaps(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexParameterf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @GPU_upload_dxt_texture(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_create_gl_tex_compressed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = trunc i32 %4 to i8
  tail call void @GPU_create_gl_tex(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %8, i8 noundef zeroext 0, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GPU_set_tpage(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @GPU_clear_tpage(i8 noundef zeroext 0)
  br label %45

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !60
  %9 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !66
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @gpu_set_alpha_blend(i32 noundef %2)
  store i32 %2, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !66
  br label %12

12:                                               ; preds = %6, %11
  %13 = icmp eq ptr %8, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !103
  %17 = and i16 %16, 16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @glTexGeni(i32 noundef 8192, i32 noundef 9472, i32 noundef 9218) #14
  tail call void @glTexGeni(i32 noundef 8193, i32 noundef 9472, i32 noundef 9218) #14
  tail call void @glEnable(i32 noundef 3168) #14
  tail call void @glEnable(i32 noundef 3169) #14
  br label %21

20:                                               ; preds = %14, %12
  tail call void @glDisable(i32 noundef 3168) #14
  tail call void @glDisable(i32 noundef 3169) #14
  br label %21

21:                                               ; preds = %19, %20
  %22 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 5
  %23 = load i16, ptr %22, align 4, !tbaa !104
  %24 = sext i16 %23 to i32
  %25 = trunc i32 %1 to i8
  %26 = tail call i32 @GPU_verify_image(ptr noundef %8, ptr noundef null, i32 noundef %24, i8 noundef zeroext 1, i8 noundef zeroext %25, i8 noundef zeroext 0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !76
  store i32 %29, ptr @GTS, align 8, !tbaa !61
  %30 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 8), align 8, !tbaa !67
  store ptr %30, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !62
  %31 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  store i32 %31, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  %32 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !73
  store i32 %32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !64
  %33 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !74
  store i32 %33, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !65
  tail call void @glEnable(i32 noundef 3553) #14
  %34 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  %35 = load i16, ptr %34, align 8, !tbaa !68
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, i32 10497, i32 33071
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef %38) #14
  %39 = load i16, ptr %34, align 8, !tbaa !68
  %40 = and i16 %39, 32
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33071) #14
  br label %45

43:                                               ; preds = %28
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 10497) #14
  br label %45

44:                                               ; preds = %21
  tail call void @glDisable(i32 noundef 3553) #14
  store i32 0, ptr @GTS, align 8, !tbaa !61
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !62
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !63
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !64
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !65
  br label %45

45:                                               ; preds = %43, %42, %44, %5
  %46 = phi i32 [ 0, %5 ], [ 0, %44 ], [ 1, %42 ], [ 1, %43 ]
  ret i32 %46
}

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_paint_set_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8, !tbaa !105
  %7 = load ptr, ptr @G, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %5, label %41, label %11

11:                                               ; preds = %4
  br i1 %10, label %61, label %12

12:                                               ; preds = %11, %38
  %13 = phi ptr [ %39, %38 ], [ %9, %11 ]
  %14 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 4, !tbaa !97
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 14
  %18 = load i16, ptr %17, align 8, !tbaa !68
  br i1 %16, label %36, label %19

19:                                               ; preds = %12
  %20 = and i16 %18, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %15) #14
  %23 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 9728, i32 9985
  %28 = select i1 %24, i32 %27, i32 9987
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef %28) #14
  %29 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  %34 = select i1 %33, i32 9729, i32 9728
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %34) #14
  br label %38

35:                                               ; preds = %19
  tail call void @GPU_free_image(ptr noundef nonnull %13)
  br label %38

36:                                               ; preds = %12
  %37 = and i16 %18, -9
  store i16 %37, ptr %17, align 8, !tbaa !68
  br label %38

38:                                               ; preds = %36, %35, %22
  %39 = load ptr, ptr %13, align 8, !tbaa !48
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %12, !llvm.loop !106

41:                                               ; preds = %4
  br i1 %10, label %61, label %42

42:                                               ; preds = %41, %58
  %43 = phi ptr [ %59, %58 ], [ %9, %41 ]
  %44 = getelementptr inbounds %struct.Image, ptr %43, i64 0, i32 20
  %45 = load i32, ptr %44, align 4, !tbaa !97
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %45) #14
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #14
  %48 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !58
  %49 = icmp ne i32 %48, 0
  %50 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = select i1 %52, i32 9729, i32 9728
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %53) #14
  br label %58

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.Image, ptr %43, i64 0, i32 14
  %56 = load i16, ptr %55, align 8, !tbaa !68
  %57 = and i16 %56, -9
  store i16 %57, ptr %55, align 8, !tbaa !68
  br label %58

58:                                               ; preds = %47, %54
  %59 = load ptr, ptr %43, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %42, !llvm.loop !107

61:                                               ; preds = %38, %58, %11, %41, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_paint_update_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #14
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %24 = load i32, ptr %23, align 4, !tbaa !97
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq ptr %9, null
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp eq i32 %3, 0
  %29 = or i1 %28, %27
  %30 = icmp eq i32 %4, 0
  %31 = or i1 %30, %29
  br i1 %31, label %32, label %33

32:                                               ; preds = %13, %22, %5
  tail call void @GPU_free_image(ptr noundef %0)
  br label %115

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %34 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = icmp eq ptr %35, null
  br i1 %36, label %78, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %39 = mul nsw i32 %4, %3
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 4
  %42 = tail call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.4) #14
  %43 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %44 = load i16, ptr %43, align 8, !tbaa !68
  %45 = and i16 %44, 128
  %46 = icmp ne i16 %45, 0
  %47 = zext i1 %46 to i8
  tail call void @IMB_partial_rect_from_float(ptr noundef %9, ptr noundef %42, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %47) #14
  %48 = tail call fastcc zeroext i8 @GPU_check_scaled_image(ptr noundef %9, ptr noundef %0, ptr noundef %42, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !range !108
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %51(ptr noundef %42) #14
  br label %116

52:                                               ; preds = %37
  %53 = load i32, ptr %23, align 4, !tbaa !97
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %53) #14
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6408, i32 noundef 5126, ptr noundef %42) #14
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %54(ptr noundef %42) #14
  %55 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #14
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call zeroext i8 @glIsEnabled(i32 noundef 3553) #14
  %66 = zext i8 %65 to i32
  %67 = icmp eq i8 %65, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @glEnable(i32 noundef 3553) #14
  br label %69

69:                                               ; preds = %68, %64, %60
  %70 = phi i32 [ %66, %64 ], [ 0, %68 ], [ 0, %60 ]
  %71 = load ptr, ptr @__glewGenerateMipmapEXT, align 8, !tbaa !48
  tail call void %71(i32 noundef 3553) #14
  %72 = icmp ne i32 %70, 0
  %73 = or i1 %63, %72
  br i1 %73, label %116, label %74

74:                                               ; preds = %69
  tail call void @glDisable(i32 noundef 3553) #14
  br label %116

75:                                               ; preds = %52
  %76 = load i16, ptr %43, align 8, !tbaa !68
  %77 = and i16 %76, -9
  store i16 %77, ptr %43, align 8, !tbaa !68
  br label %116

78:                                               ; preds = %33
  %79 = tail call fastcc zeroext i8 @GPU_check_scaled_image(ptr noundef %9, ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !range !108
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %78
  %82 = load i32, ptr %23, align 4, !tbaa !97
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %82) #14
  call void @glGetIntegerv(i32 noundef 3314, ptr noundef nonnull %6) #14
  call void @glGetIntegerv(i32 noundef 3316, ptr noundef nonnull %7) #14
  call void @glGetIntegerv(i32 noundef 3315, ptr noundef nonnull %8) #14
  %83 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !92
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %84) #14
  call void @glPixelStorei(i32 noundef 3316, i32 noundef %1) #14
  call void @glPixelStorei(i32 noundef 3315, i32 noundef %2) #14
  %85 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !89
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6408, i32 noundef 5121, ptr noundef %86) #14
  %87 = load i32, ptr %6, align 4, !tbaa !49
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %87) #14
  %88 = load i32, ptr %7, align 4, !tbaa !49
  call void @glPixelStorei(i32 noundef 3316, i32 noundef %88) #14
  %89 = load i32, ptr %8, align 4, !tbaa !49
  call void @glPixelStorei(i32 noundef 3315, i32 noundef %89) #14
  %90 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %91 = icmp eq i32 %90, 0
  %92 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %81
  %96 = call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #14
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = call zeroext i8 @glIsEnabled(i32 noundef 3553) #14
  %101 = zext i8 %100 to i32
  %102 = icmp eq i8 %100, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void @glEnable(i32 noundef 3553) #14
  br label %104

104:                                              ; preds = %103, %99, %95
  %105 = phi i32 [ %101, %99 ], [ 0, %103 ], [ 0, %95 ]
  %106 = load ptr, ptr @__glewGenerateMipmapEXT, align 8, !tbaa !48
  call void %106(i32 noundef 3553) #14
  %107 = icmp ne i32 %105, 0
  %108 = or i1 %98, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  call void @glDisable(i32 noundef 3553) #14
  br label %114

110:                                              ; preds = %81
  %111 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %112 = load i16, ptr %111, align 8, !tbaa !68
  %113 = and i16 %112, -9
  store i16 %113, ptr %111, align 8, !tbaa !68
  br label %114

114:                                              ; preds = %109, %104, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %115

115:                                              ; preds = %114, %32
  call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %9, ptr noundef null) #14
  br label %117

116:                                              ; preds = %78, %75, %69, %74, %50
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef %9, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %117

117:                                              ; preds = %116, %115
  ret void
}

declare void @IMB_partial_rect_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @GPU_check_scaled_image(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call i32 @GPU_non_power_of_two_support() #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12), !range !99
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !93
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17), !range !99
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %7
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !93
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = sext i16 %25 to i32
  %29 = tail call i32 @GPU_max_texture_size() #14
  %30 = tail call i32 @llvm.smin.i32(i32 %28, i32 %29)
  br label %33

31:                                               ; preds = %20
  %32 = tail call i32 @GPU_max_texture_size() #14
  br label %33

33:                                               ; preds = %27, %31
  %34 = phi i32 [ %30, %27 ], [ %32, %31 ]
  %35 = icmp sge i32 %34, %22
  %36 = icmp sge i32 %34, %24
  %37 = and i1 %35, %36
  br i1 %37, label %185, label %38

38:                                               ; preds = %10, %33, %15
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !92
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = sext i16 %41 to i32
  %45 = tail call i32 @GPU_max_texture_size() #14
  %46 = tail call i32 @llvm.smin.i32(i32 %44, i32 %45)
  br label %49

47:                                               ; preds = %38
  %48 = tail call i32 @GPU_max_texture_size() #14
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %46, %43 ], [ %48, %47 ]
  %51 = icmp slt i32 %50, %40
  br i1 %51, label %59, label %52

52:                                               ; preds = %49, %56
  %53 = phi i32 [ %58, %56 ], [ %40, %49 ]
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53), !range !99
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = add nsw i32 %53, -1
  %58 = and i32 %57, %53
  br label %52, !llvm.loop !101

59:                                               ; preds = %52, %49
  %60 = phi i32 [ %50, %49 ], [ %53, %52 ]
  %61 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !93
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !100
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = sext i16 %63 to i32
  %67 = tail call i32 @GPU_max_texture_size() #14
  %68 = tail call i32 @llvm.smin.i32(i32 %66, i32 %67)
  br label %71

69:                                               ; preds = %59
  %70 = tail call i32 @GPU_max_texture_size() #14
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %68, %65 ], [ %70, %69 ]
  %73 = icmp slt i32 %72, %62
  br i1 %73, label %81, label %74

74:                                               ; preds = %71, %78
  %75 = phi i32 [ %80, %78 ], [ %62, %71 ]
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75), !range !99
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = add nsw i32 %75, -1
  %80 = and i32 %79, %75
  br label %74, !llvm.loop !101

81:                                               ; preds = %74, %71
  %82 = phi i32 [ %72, %71 ], [ %75, %74 ]
  %83 = sitofp i32 %60 to float
  %84 = load i32, ptr %39, align 8, !tbaa !92
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %83, %85
  %87 = sitofp i32 %82 to float
  %88 = load i32, ptr %61, align 4, !tbaa !93
  %89 = sitofp i32 %88 to float
  %90 = fdiv float %87, %89
  %91 = sitofp i32 %5 to float
  %92 = fmul float %86, %91
  %93 = tail call float @llvm.ceil.f32(float %92)
  %94 = fptosi float %93 to i32
  %95 = sitofp i32 %6 to float
  %96 = fmul float %90, %95
  %97 = tail call float @llvm.ceil.f32(float %96)
  %98 = fptosi float %97 to i32
  %99 = sitofp i32 %3 to float
  %100 = fmul float %86, %99
  %101 = fptosi float %100 to i32
  %102 = sitofp i32 %4 to float
  %103 = fmul float %90, %102
  %104 = fptosi float %103 to i32
  %105 = add nsw i32 %94, %101
  %106 = icmp sgt i32 %105, %60
  %107 = sext i1 %106 to i32
  %108 = add i32 %107, %94
  %109 = add nsw i32 %98, %104
  %110 = icmp sgt i32 %109, %82
  %111 = sext i1 %110 to i32
  %112 = add i32 %111, %98
  %113 = icmp eq ptr %2, null
  %114 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %115 = mul nsw i32 %112, %108
  %116 = sext i32 %115 to i64
  br i1 %113, label %123, label %117

117:                                              ; preds = %81
  %118 = shl nsw i64 %116, 4
  %119 = tail call ptr %114(i64 noundef %118, ptr noundef nonnull @.str.2) #14
  %120 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %5, i32 noundef %6, i32 noundef 5126, ptr noundef nonnull %2, i32 noundef %108, i32 noundef %112, i32 noundef 5126, ptr noundef %119) #14
  %121 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 20
  %122 = load i32, ptr %121, align 4, !tbaa !97
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %122) #14
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef %104, i32 noundef %108, i32 noundef %112, i32 noundef 6408, i32 noundef 5126, ptr noundef %119) #14
  br label %158

123:                                              ; preds = %81
  %124 = shl nsw i64 %116, 2
  %125 = tail call ptr %114(i64 noundef %124, ptr noundef nonnull @.str.3) #14
  %126 = fdiv float 1.000000e+00, %86
  %127 = fdiv float 1.000000e+00, %90
  %128 = icmp sgt i32 %108, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = icmp sgt i32 %112, 0
  %131 = zext nneg i32 %108 to i64
  %132 = zext nneg i32 %108 to i64
  %133 = zext nneg i32 %112 to i64
  br label %134

134:                                              ; preds = %129, %152
  %135 = phi i64 [ 0, %129 ], [ %153, %152 ]
  %136 = trunc i64 %135 to i32
  %137 = add i32 %136, %101
  %138 = sitofp i32 %137 to float
  %139 = fmul float %126, %138
  br i1 %130, label %140, label %152

140:                                              ; preds = %134
  %141 = getelementptr inbounds i32, ptr %125, i64 %135
  br label %142

142:                                              ; preds = %140, %142
  %143 = phi i64 [ 0, %140 ], [ %150, %142 ]
  %144 = trunc i64 %143 to i32
  %145 = add i32 %144, %104
  %146 = sitofp i32 %145 to float
  %147 = fmul float %127, %146
  %148 = mul nsw i64 %143, %131
  %149 = getelementptr inbounds i32, ptr %141, i64 %148
  tail call void @bilinear_interpolation_color_wrap(ptr noundef %0, ptr noundef %149, ptr noundef null, float noundef %139, float noundef %147) #14
  %150 = add nuw nsw i64 %143, 1
  %151 = icmp eq i64 %150, %133
  br i1 %151, label %152, label %142, !llvm.loop !109

152:                                              ; preds = %142, %134
  %153 = add nuw nsw i64 %135, 1
  %154 = icmp eq i64 %153, %132
  br i1 %154, label %155, label %134, !llvm.loop !110

155:                                              ; preds = %152, %123
  %156 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 20
  %157 = load i32, ptr %156, align 4, !tbaa !97
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %157) #14
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef %104, i32 noundef %108, i32 noundef %112, i32 noundef 6408, i32 noundef 5121, ptr noundef %125) #14
  br label %158

158:                                              ; preds = %155, %117
  %159 = phi ptr [ %125, %155 ], [ %119, %117 ]
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %160(ptr noundef %159) #14
  %161 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !57
  %162 = icmp eq i32 %161, 0
  %163 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %162, i1 true, i1 %164
  br i1 %165, label %181, label %166

166:                                              ; preds = %158
  %167 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #14
  %168 = and i32 %167, 255
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = tail call zeroext i8 @glIsEnabled(i32 noundef 3553) #14
  %172 = zext i8 %171 to i32
  %173 = icmp eq i8 %171, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  tail call void @glEnable(i32 noundef 3553) #14
  br label %175

175:                                              ; preds = %174, %170, %166
  %176 = phi i32 [ %172, %170 ], [ 0, %174 ], [ 0, %166 ]
  %177 = load ptr, ptr @__glewGenerateMipmapEXT, align 8, !tbaa !48
  tail call void %177(i32 noundef 3553) #14
  %178 = icmp ne i32 %176, 0
  %179 = or i1 %169, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  tail call void @glDisable(i32 noundef 3553) #14
  br label %185

181:                                              ; preds = %158
  %182 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 14
  %183 = load i16, ptr %182, align 8, !tbaa !68
  %184 = and i16 %183, -9
  store i16 %184, ptr %182, align 8, !tbaa !68
  br label %185

185:                                              ; preds = %180, %175, %33, %181
  %186 = phi i8 [ 1, %181 ], [ 0, %33 ], [ 1, %175 ], [ 1, %180 ]
  ret i8 %186
}

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_update_images_framechange() local_unnamed_addr #7 {
  %1 = load ptr, ptr @G, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %0, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8, !tbaa !68
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 19
  %13 = load i16, ptr %12, align 2, !tbaa !111
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 16
  %16 = load i16, ptr %15, align 4, !tbaa !77
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 17
  %19 = load i16, ptr %18, align 2, !tbaa !78
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = icmp sgt i32 %21, %14
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = trunc i32 %21 to i16
  %25 = add i16 %24, -1
  store i16 %25, ptr %12, align 2, !tbaa !111
  br label %26

26:                                               ; preds = %23, %11
  %27 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 13
  %28 = load i32, ptr %27, align 4, !tbaa !75
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !75
  %30 = load i16, ptr %12, align 2, !tbaa !111
  %31 = sext i16 %30 to i32
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 18
  %35 = load i16, ptr %34, align 8, !tbaa !112
  %36 = sext i16 %35 to i32
  store i32 %36, ptr %27, align 4, !tbaa !75
  br label %37

37:                                               ; preds = %5, %33, %26
  %38 = load ptr, ptr %6, align 8, !tbaa !48
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !113

40:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @GPU_update_image_time(ptr noundef %0, double noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 24
  %6 = load float, ptr %5, align 8, !tbaa !114
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store float 0.000000e+00, ptr %5, align 8, !tbaa !114
  br label %9

9:                                                ; preds = %8, %4
  %10 = load float, ptr %5, align 8, !tbaa !114
  %11 = fptrunc double %1 to float
  %12 = fcmp ogt float %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store float %11, ptr %5, align 8, !tbaa !114
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %16 = load i16, ptr %15, align 8, !tbaa !68
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 19
  %21 = load i16, ptr %20, align 2, !tbaa !111
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %24 = load i16, ptr %23, align 4, !tbaa !77
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %27 = load i16, ptr %26, align 2, !tbaa !78
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %25
  %30 = icmp sgt i32 %29, %22
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = trunc i32 %29 to i16
  %33 = add i16 %32, -1
  store i16 %33, ptr %20, align 2, !tbaa !111
  br label %34

34:                                               ; preds = %31, %19
  %35 = load float, ptr %5, align 8, !tbaa !114
  %36 = fsub float %11, %35
  %37 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 26
  %38 = load i16, ptr %37, align 8, !tbaa !115
  %39 = sitofp i16 %38 to float
  %40 = fmul float %36, %39
  %41 = fptosi float %40 to i32
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %42, %39
  %44 = fadd float %35, %43
  store float %44, ptr %5, align 8, !tbaa !114
  %45 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %46 = load i32, ptr %45, align 4, !tbaa !75
  %47 = add nsw i32 %46, %41
  %48 = load i16, ptr %20, align 2, !tbaa !111
  %49 = sext i16 %48 to i32
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 18
  %53 = load i16, ptr %52, align 8, !tbaa !112
  %54 = sext i16 %53 to i32
  %55 = icmp eq i16 %48, %53
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = sub nsw i32 %49, %54
  %58 = add nsw i32 %54, -1
  %59 = sub nsw i32 %47, %49
  %60 = srem i32 %59, %57
  %61 = add nsw i32 %58, %60
  br label %62

62:                                               ; preds = %51, %56, %34
  %63 = phi i32 [ %61, %56 ], [ %47, %34 ], [ %54, %51 ]
  store i32 %63, ptr %45, align 4, !tbaa !75
  br label %64

64:                                               ; preds = %14, %62, %2
  %65 = phi i32 [ 0, %2 ], [ %41, %62 ], [ 0, %14 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_smoke(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !116
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #14
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr %7, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %16, i64 0, i32 7
  store ptr null, ptr %17, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %16, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @GPU_texture_free(ptr noundef nonnull %19) #14
  br label %22

22:                                               ; preds = %21, %15
  %23 = load ptr, ptr %7, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %23, i64 0, i32 9
  store ptr null, ptr %24, align 8, !tbaa !122
  %25 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %23, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @GPU_texture_free(ptr noundef nonnull %26) #14
  br label %29

29:                                               ; preds = %28, %22
  %30 = load ptr, ptr %7, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %30, i64 0, i32 10
  store ptr null, ptr %31, align 8, !tbaa !123
  br label %32

32:                                               ; preds = %29, %6, %1
  ret void
}

declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_create_smoke(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 7
  store ptr null, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_unused_buffers() local_unnamed_addr #0 {
  %1 = tail call i32 @BLI_thread_is_main() #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  tail call void @BLI_lock_thread(i32 noundef 5) #14
  %4 = load ptr, ptr @image_free_queue, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.LinkNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = load ptr, ptr @G, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 19
  %14 = tail call i32 @BLI_findindex(ptr noundef nonnull %13, ptr noundef %9) #14
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @GPU_free_image(ptr noundef %9)
  br label %17

17:                                               ; preds = %6, %12, %16
  %18 = load ptr, ptr %7, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !126

20:                                               ; preds = %17, %3
  %21 = load ptr, ptr @image_free_queue, align 8, !tbaa !48
  tail call void @BLI_linklist_free(ptr noundef %21, ptr noundef null) #14
  store ptr null, ptr @image_free_queue, align 8, !tbaa !48
  tail call void @GPU_global_buffer_pool_free_unused() #14
  tail call void @BLI_unlock_thread(i32 noundef 5) #14
  br label %22

22:                                               ; preds = %0, %20
  ret void
}

declare i32 @BLI_thread_is_main() local_unnamed_addr #2

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_global_buffer_pool_free_unused() local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_images_anim() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !53
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %8) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @GPU_free_image(ptr noundef nonnull %8)
  br label %12

12:                                               ; preds = %7, %11
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !127

15:                                               ; preds = %12, %3, %0
  ret void
}

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_free_images_old() local_unnamed_addr #0 {
  %1 = tail call double @PIL_check_seconds_timer() #14
  %2 = fptosi double %1 to i32
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !128
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 60), align 2, !tbaa !129
  %7 = sext i16 %6 to i32
  %8 = srem i32 %2, %7
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @GPU_free_images_old.lasttime, align 4
  %11 = icmp ne i32 %10, %2
  %12 = select i1 %9, i1 %11, i1 false
  %13 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %47

16:                                               ; preds = %5
  store i32 %2, ptr @GPU_free_images_old.lasttime, align 4, !tbaa !49
  %17 = load ptr, ptr @G, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %16, %44
  %22 = phi ptr [ %45, %44 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !103
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 25
  %29 = load i32, ptr %28, align 4, !tbaa !130
  %30 = sub nsw i32 %2, %29
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !128
  %32 = sext i16 %31 to i32
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 20
  %36 = load i32, ptr %35, align 4, !tbaa !97
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %34
  tail call void @GPU_free_image(ptr noundef nonnull %22)
  store i32 %2, ptr %28, align 4, !tbaa !130
  br label %44

43:                                               ; preds = %38
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %22) #14
  br label %44

44:                                               ; preds = %42, %43, %27, %21
  %45 = load ptr, ptr %22, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !131

47:                                               ; preds = %44, %16, %0, %5
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare void @BKE_image_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_begin_object_materials(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #14
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %2) #14
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %10 = load i16, ptr %9, align 2, !tbaa !132
  %11 = lshr i16 %10, 13
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @GMS, i8 0, i64 488, i1 false)
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !135
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  store i32 0, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  store i8 %13, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !139
  %14 = load i16, ptr %9, align 2, !tbaa !132
  %15 = lshr i16 %14, 10
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  store i8 %17, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !140
  store ptr %3, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !141
  store ptr %2, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %18 = icmp eq i8 %13, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %21 = load i32, ptr %20, align 8, !tbaa !143
  %22 = add nsw i32 %21, 1
  br label %23

23:                                               ; preds = %6, %19
  %24 = phi i32 [ %22, %19 ], [ 1, %6 ]
  store i32 %24, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %25 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !147
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %0, ptr %26
  %29 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !148
  store i32 %30, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 8), align 8, !tbaa !149
  %31 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %32 = load i16, ptr %31, align 4, !tbaa !150
  %33 = icmp ne i16 %32, 0
  %34 = zext i1 %33 to i8
  store i8 %34, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 9), align 4, !tbaa !151
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  store ptr %35, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 10), align 8, !tbaa !152
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2
  store ptr %36, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 11), align 8, !tbaa !153
  %37 = icmp ne ptr %5, null
  %38 = zext i1 %37 to i8
  store i8 %38, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !154
  %39 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 48
  %40 = load i8, ptr %39, align 1, !tbaa !155
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i8
  store i8 %42, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  br i1 %37, label %43, label %44

43:                                               ; preds = %23
  store i8 0, ptr %5, align 1, !tbaa !102
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %46 = icmp sgt i32 %45, 8
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %49 = zext nneg i32 %45 to i64
  %50 = mul nuw nsw i64 %49, 36
  %51 = tail call ptr %48(i64 noundef %50, ptr noundef nonnull @.str.5) #14
  store ptr %51, ptr @GMS, align 8, !tbaa !157
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %53 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 3
  %56 = tail call ptr %52(i64 noundef %55, ptr noundef nonnull @.str.5) #14
  store ptr %56, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %58 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  %61 = tail call ptr %57(i64 noundef %60, ptr noundef nonnull @.str.5) #14
  br label %63

62:                                               ; preds = %44
  store ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 1), ptr @GMS, align 8, !tbaa !157
  store ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 4), ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  br label %63

63:                                               ; preds = %62, %47
  %64 = phi ptr [ getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 14), %62 ], [ %61, %47 ]
  store ptr %64, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  br i1 %18, label %74, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 52
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  %68 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  store ptr %67, ptr %68, align 8, !tbaa !48
  %69 = load ptr, ptr %66, align 8, !tbaa !160
  %70 = tail call ptr @GPU_material_matcap(ptr noundef %2, ptr noundef %69) #14
  %71 = load ptr, ptr @GMS, align 8, !tbaa !157
  %72 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %71, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %72, ptr noundef nonnull align 4 dereferenceable(36) %71, i64 36, i1 false)
  %73 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  store i32 0, ptr %73, align 4, !tbaa !49
  br label %177

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %76 = load i32, ptr %75, align 8, !tbaa !143
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load ptr, ptr @GMS, align 8, !tbaa !157
  %80 = zext i8 %8 to i32
  tail call fastcc void @gpu_material_to_fixed(ptr noundef %79, ptr noundef nonnull @defmaterial, i32 noundef 0, ptr noundef %3, i32 noundef %80)
  %81 = load ptr, ptr @GMS, align 8, !tbaa !157
  %82 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %81, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %82, ptr noundef nonnull align 4 dereferenceable(36) %81, i64 36, i1 false)
  %83 = icmp eq i8 %4, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  store ptr @defmaterial, ptr %85, align 8, !tbaa !48
  %86 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %87 = tail call ptr @GPU_material_from_blender(ptr noundef %86, ptr noundef nonnull @defmaterial) #14
  br label %88

88:                                               ; preds = %84, %78
  %89 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  store i32 0, ptr %89, align 4, !tbaa !49
  br label %90

90:                                               ; preds = %88, %74
  %91 = load i32, ptr %75, align 8, !tbaa !143
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %177, label %93

93:                                               ; preds = %90
  %94 = icmp ne i8 %4, 0
  %95 = icmp ne i8 %8, 0
  %96 = select i1 %94, i1 true, i1 %95
  %97 = icmp eq i8 %4, 0
  %98 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  %99 = zext i8 %7 to i32
  %100 = zext i8 %8 to i32
  %101 = icmp eq i8 %8, 0
  %102 = icmp eq ptr %5, null
  br label %103

103:                                              ; preds = %93, %170
  %104 = phi i64 [ 1, %93 ], [ %173, %170 ]
  %105 = trunc i64 %104 to i16
  %106 = tail call ptr @give_current_material(ptr noundef %3, i16 noundef signext %105) #14
  %107 = icmp eq ptr %106, null
  %108 = select i1 %96, i1 true, i1 %107
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.Material, ptr %106, i64 0, i32 77
  %111 = load i8, ptr %110, align 1, !tbaa !161
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Material, ptr %106, i64 0, i32 103
  %115 = load ptr, ptr %114, align 8, !tbaa !165
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %115, i16 noundef signext 16717) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.bNode, ptr %118, i64 0, i32 20
  %122 = load ptr, ptr %121, align 8, !tbaa !166
  br label %123

123:                                              ; preds = %120, %117, %113, %109, %103
  %124 = phi ptr [ %106, %103 ], [ %122, %120 ], [ null, %117 ], [ %106, %113 ], [ %106, %109 ]
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, ptr @defmaterial, ptr %124
  br i1 %97, label %130, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %129 = tail call ptr @GPU_material_from_blender(ptr noundef %128, ptr noundef nonnull %126) #14
  br label %130

130:                                              ; preds = %123, %127
  %131 = phi ptr [ %129, %127 ], [ null, %123 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  %135 = getelementptr inbounds ptr, ptr %134, i64 %104
  store ptr %126, ptr %135, align 8, !tbaa !48
  %136 = tail call i32 @GPU_material_alpha_blend(ptr noundef nonnull %131, ptr noundef nonnull %98) #14
  br label %163

137:                                              ; preds = %130
  %138 = load ptr, ptr @GMS, align 8, !tbaa !157
  %139 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %138, i64 %104
  tail call fastcc void @gpu_material_to_fixed(ptr noundef nonnull %139, ptr noundef nonnull %126, i32 noundef %99, ptr noundef %3, i32 noundef %100)
  %140 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !154
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %160, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 51
  %144 = load i32, ptr %143, align 4, !tbaa !168
  %145 = and i32 %144, 65536
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  br i1 %101, label %160, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 21
  %150 = load float, ptr %149, align 8, !tbaa !169
  %151 = fcmp une float %150, 1.000000e+00
  br i1 %151, label %152, label %160

152:                                              ; preds = %148, %142
  %153 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 21
  %154 = load float, ptr %153, align 8, !tbaa !169
  %155 = load ptr, ptr @GMS, align 8, !tbaa !157
  %156 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %155, i64 %104, i32 0, i64 3
  store float %154, ptr %156, align 4, !tbaa !40
  %157 = load float, ptr %153, align 8, !tbaa !169
  %158 = fcmp oeq float %157, 1.000000e+00
  %159 = select i1 %158, i32 0, i32 2
  br label %163

160:                                              ; preds = %148, %147, %137
  %161 = load ptr, ptr @GMS, align 8, !tbaa !157
  %162 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %161, i64 %104, i32 0, i64 3
  store float 1.000000e+00, ptr %162, align 4, !tbaa !40
  br label %163

163:                                              ; preds = %152, %160, %133
  %164 = phi i32 [ %136, %133 ], [ %159, %152 ], [ 0, %160 ]
  %165 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1
  %166 = icmp ne i8 %165, 0
  %167 = select i1 %102, i1 true, i1 %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  switch i32 %164, label %170 [
    i32 8, label %169
    i32 2, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %168, %168, %168
  store i8 1, ptr %5, align 1, !tbaa !102
  br label %170

170:                                              ; preds = %168, %169, %163
  %171 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  %172 = getelementptr inbounds i32, ptr %171, i64 %104
  store i32 %164, ptr %172, align 4, !tbaa !49
  %173 = add nuw nsw i64 %104, 1
  %174 = load i32, ptr %75, align 8, !tbaa !143
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %104, %175
  br i1 %176, label %103, label %177, !llvm.loop !170

177:                                              ; preds = %170, %90, %65
  tail call void @GPU_disable_material()
  ret void
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare ptr @GPU_material_matcap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_material_to_fixed(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 51
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %7, %5
  %13 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %14 = load float, ptr %13, align 4, !tbaa !40
  store float %14, ptr %0, align 4, !tbaa !40
  %15 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 5
  %16 = load float, ptr %15, align 4, !tbaa !40
  %17 = getelementptr inbounds float, ptr %0, i64 1
  store float %16, ptr %17, align 4, !tbaa !40
  %18 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 6
  %19 = load float, ptr %18, align 4, !tbaa !40
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !40
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 1.000000e+00, ptr %21, align 4, !tbaa !40
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %12
  %24 = tail call float @linearrgb_to_srgb(float noundef %14) #14
  store float %24, ptr %0, align 4, !tbaa !40
  %25 = load float, ptr %17, align 4, !tbaa !40
  %26 = tail call float @linearrgb_to_srgb(float noundef %25) #14
  store float %26, ptr %17, align 4, !tbaa !40
  %27 = load float, ptr %20, align 4, !tbaa !40
  %28 = tail call float @linearrgb_to_srgb(float noundef %27) #14
  store float %28, ptr %20, align 4, !tbaa !40
  br label %29

29:                                               ; preds = %23, %12
  %30 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  br label %99

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %33 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 22
  %34 = load float, ptr %33, align 4, !tbaa !171
  %35 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 17
  %36 = load float, ptr %35, align 8, !tbaa !172
  %37 = fadd float %34, %36
  %38 = load float, ptr %32, align 4, !tbaa !40
  %39 = fmul float %38, %37
  store float %39, ptr %0, align 4, !tbaa !40
  %40 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !40
  %42 = fmul float %37, %41
  %43 = getelementptr inbounds float, ptr %0, i64 1
  store float %42, ptr %43, align 4, !tbaa !40
  %44 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 6
  %45 = load float, ptr %44, align 4, !tbaa !40
  %46 = fmul float %37, %45
  %47 = getelementptr inbounds float, ptr %0, i64 2
  store float %46, ptr %47, align 4, !tbaa !40
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 1.000000e+00, ptr %48, align 4, !tbaa !40
  %49 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 50
  %50 = load i16, ptr %49, align 2, !tbaa !173
  %51 = and i16 %50, 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  %55 = load float, ptr %54, align 4, !tbaa !40
  %56 = fmul float %39, %55
  store float %56, ptr %0, align 4, !tbaa !40
  %57 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !40
  %59 = fmul float %42, %58
  store float %59, ptr %43, align 4, !tbaa !40
  %60 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !40
  %62 = fmul float %46, %61
  store float %62, ptr %47, align 4, !tbaa !40
  br label %63

63:                                               ; preds = %53, %31
  %64 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 7
  %66 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 23
  %67 = load float, ptr %66, align 8, !tbaa !174
  %68 = load float, ptr %65, align 4, !tbaa !40
  %69 = fmul float %67, %68
  store float %69, ptr %64, align 4, !tbaa !40
  %70 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 8
  %71 = load float, ptr %70, align 4, !tbaa !40
  %72 = fmul float %67, %71
  %73 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1, i64 1
  store float %72, ptr %73, align 4, !tbaa !40
  %74 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 9
  %75 = load float, ptr %74, align 4, !tbaa !40
  %76 = fmul float %67, %75
  %77 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1, i64 2
  store float %76, ptr %77, align 4, !tbaa !40
  %78 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1, i64 3
  store float 1.000000e+00, ptr %78, align 4, !tbaa !40
  %79 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 38
  %80 = load i16, ptr %79, align 8, !tbaa !175
  %81 = tail call i16 @llvm.smin.i16(i16 %80, i16 128)
  %82 = tail call i16 @llvm.smax.i16(i16 %81, i16 0)
  %83 = zext nneg i16 %82 to i32
  %84 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 2
  store i32 %83, ptr %84, align 4, !tbaa !176
  %85 = icmp eq i32 %2, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %63
  %87 = load float, ptr %0, align 4, !tbaa !40
  %88 = tail call float @linearrgb_to_srgb(float noundef %87) #14
  store float %88, ptr %0, align 4, !tbaa !40
  %89 = load float, ptr %43, align 4, !tbaa !40
  %90 = tail call float @linearrgb_to_srgb(float noundef %89) #14
  store float %90, ptr %43, align 4, !tbaa !40
  %91 = load float, ptr %47, align 4, !tbaa !40
  %92 = tail call float @linearrgb_to_srgb(float noundef %91) #14
  store float %92, ptr %47, align 4, !tbaa !40
  %93 = load float, ptr %64, align 4, !tbaa !40
  %94 = tail call float @linearrgb_to_srgb(float noundef %93) #14
  store float %94, ptr %64, align 4, !tbaa !40
  %95 = load float, ptr %73, align 4, !tbaa !40
  %96 = tail call float @linearrgb_to_srgb(float noundef %95) #14
  store float %96, ptr %73, align 4, !tbaa !40
  %97 = load float, ptr %77, align 4, !tbaa !40
  %98 = tail call float @linearrgb_to_srgb(float noundef %97) #14
  store float %98, ptr %77, align 4, !tbaa !40
  br label %99

99:                                               ; preds = %63, %86, %29
  ret void
}

declare ptr @GPU_material_from_blender(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @GPU_material_alpha_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_disable_material() local_unnamed_addr #0 {
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !135
  store i32 1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !140
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @glDisable(i32 noundef 2884) #14
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @glDepthMask(i8 noundef zeroext 0) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %13 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  %14 = tail call ptr @GPU_material_from_blender(ptr noundef %12, ptr noundef %13) #14
  tail call void @GPU_material_unbind(ptr noundef %14) #14
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  br label %15

15:                                               ; preds = %11, %0
  %16 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 3008) #14
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  store i32 0, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  br label %19

19:                                               ; preds = %15, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_enable_material(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = load ptr, ptr @GMS, align 8, !tbaa !157
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @GMS, i8 0, i64 488, i1 false)
  %8 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 22), align 4, !tbaa !171
  %9 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 17), align 8, !tbaa !172
  %10 = fadd float %8, %9
  %11 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 4), align 4, !tbaa !40
  %12 = fmul float %11, %10
  store float %12, ptr %3, align 16, !tbaa !40
  %13 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 5), align 8, !tbaa !40
  %14 = fmul float %10, %13
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float %14, ptr %15, align 4, !tbaa !40
  %16 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 6), align 4, !tbaa !40
  %17 = fmul float %10, %16
  %18 = getelementptr inbounds float, ptr %3, i64 2
  store float %17, ptr %18, align 8, !tbaa !40
  %19 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float 1.000000e+00, ptr %19, align 4, !tbaa !40
  %20 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 23), align 8, !tbaa !174
  %21 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 7), align 8, !tbaa !40
  %22 = fmul float %20, %21
  store float %22, ptr %4, align 16, !tbaa !40
  %23 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 8), align 4, !tbaa !40
  %24 = fmul float %20, %23
  %25 = getelementptr inbounds float, ptr %4, i64 1
  store float %24, ptr %25, align 4, !tbaa !40
  %26 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 9), align 8, !tbaa !40
  %27 = fmul float %20, %26
  %28 = getelementptr inbounds float, ptr %4, i64 2
  store float %27, ptr %28, align 8, !tbaa !40
  %29 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %29, align 4, !tbaa !40
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %3) #14
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %4) #14
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 35) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %147

30:                                               ; preds = %2
  %31 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %32 = icmp sgt i32 %31, %0
  %33 = select i1 %32, i32 %0, i32 0
  %34 = icmp eq ptr %1, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %1, i8 0, i64 2564, i1 false)
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !135
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  br label %147

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @glDepthMask(i8 noundef zeroext 0) #14
  br label %48

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %50 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  %51 = tail call ptr @GPU_material_from_blender(ptr noundef %49, ptr noundef %50) #14
  tail call void @GPU_material_unbind(ptr noundef %51) #14
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  br label %52

52:                                               ; preds = %48, %41
  store i32 %33, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !135
  store i32 1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  %53 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !154
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  %57 = sext i32 %33 to i64
  %58 = getelementptr inbounds i32, ptr %56, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !49
  %60 = and i32 %59, -5
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  %63 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %55
  %66 = xor i1 %61, true
  br label %70

67:                                               ; preds = %52
  %68 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  %69 = icmp eq i8 %68, 0
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i1 [ %66, %65 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  br label %73

73:                                               ; preds = %70, %55
  %74 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %145, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  %78 = sext i32 %33 to i64
  %79 = getelementptr inbounds i32, ptr %77, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !49
  br i1 %34, label %132, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  %83 = getelementptr inbounds ptr, ptr %82, i64 %78
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = icmp eq ptr %84, null
  br i1 %85, label %132, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !142
  %88 = tail call ptr @GPU_material_from_blender(ptr noundef %87, ptr noundef nonnull %84) #14
  tail call void @GPU_material_vertex_attributes(ptr noundef %88, ptr noundef nonnull %1) #14
  %89 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !141
  %90 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 52
  %91 = load i32, ptr %90, align 8, !tbaa !179
  %92 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 8), align 8, !tbaa !149
  %93 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 27
  %94 = load i32, ptr %93, align 8, !tbaa !180
  %95 = lshr i32 %94, 4
  %96 = and i32 %95, 1
  %97 = xor i32 %96, 1
  %98 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 10), align 8, !tbaa !152
  %99 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 11), align 8, !tbaa !153
  %100 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 9), align 4, !tbaa !151
  tail call void @GPU_material_bind(ptr noundef %88, i32 noundef %91, i32 noundef %92, double noundef 1.000000e+00, i32 noundef %97, ptr noundef %98, ptr noundef %99, i8 noundef zeroext %100) #14
  %101 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !141
  %102 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 120
  %103 = load ptr, ptr %102, align 8, !tbaa !181
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %86
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %103, i64 0, i32 15
  %107 = load float, ptr %106, align 4, !tbaa !182
  br label %108

108:                                              ; preds = %86, %105
  %109 = phi float [ %107, %105 ], [ 1.000000e+00, %86 ]
  %110 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 47
  %111 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 98
  tail call void @GPU_material_bind_uniforms(ptr noundef %88, ptr noundef nonnull %110, ptr noundef nonnull %111, float noundef %109) #14
  store ptr %84, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !178
  %112 = getelementptr inbounds %struct.Material, ptr %84, i64 0, i32 28
  %113 = getelementptr inbounds %struct.Material, ptr %84, i64 0, i32 28, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !185
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 %80, i32 %114
  %117 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !156
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  tail call void @glDepthMask(i8 noundef zeroext 1) #14
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !140
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %112, align 8, !tbaa !186
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  tail call void @glEnable(i32 noundef 2884) #14
  br label %128

127:                                              ; preds = %123
  tail call void @glDisable(i32 noundef 2884) #14
  br label %128

128:                                              ; preds = %126, %127, %120
  %129 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !139
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #14
  br label %140

132:                                              ; preds = %81, %76
  %133 = load ptr, ptr @GMS, align 8, !tbaa !157
  %134 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %133, i64 %78
  tail call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef %134) #14
  %135 = load ptr, ptr @GMS, align 8, !tbaa !157
  %136 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %135, i64 %78, i32 1
  tail call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %136) #14
  %137 = load ptr, ptr @GMS, align 8, !tbaa !157
  %138 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %137, i64 %78, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !176
  tail call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %139) #14
  br label %140

140:                                              ; preds = %128, %131, %132
  %141 = phi i32 [ %80, %132 ], [ %116, %131 ], [ %116, %128 ]
  %142 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  %143 = icmp eq i32 %142, %141
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call fastcc void @gpu_set_alpha_blend(i32 noundef %141)
  store i32 %141, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  br label %145

145:                                              ; preds = %144, %140, %73
  %146 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !137
  br label %147

147:                                              ; preds = %145, %39, %7
  %148 = phi i32 [ %40, %39 ], [ %146, %145 ], [ 0, %7 ]
  ret i32 %148
}

declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

declare void @GPU_material_unbind(ptr noundef) local_unnamed_addr #2

declare void @GPU_material_vertex_attributes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_material_bind(ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @GPU_material_bind_uniforms(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_set_material_alpha_blend(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gpu_set_alpha_blend(i32 noundef %0)
  store i32 %0, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_set_alpha_blend(i32 noundef %0) unnamed_addr #0 {
  switch i32 %0, label %17 [
    i32 0, label %2
    i32 1, label %3
    i32 8, label %4
    i32 2, label %4
    i32 4, label %16
  ]

2:                                                ; preds = %1
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glDisable(i32 noundef 3008) #14
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  br label %17

3:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 3042) #14
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #14
  tail call void @glDisable(i32 noundef 3008) #14
  br label %17

4:                                                ; preds = %1, %1
  tail call void @glEnable(i32 noundef 3042) #14
  %5 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !102
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !48
  tail call void %8(i32 noundef 770, i32 noundef 771, i32 noundef 1, i32 noundef 771) #14
  br label %10

9:                                                ; preds = %4
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #14
  br label %10

10:                                               ; preds = %9, %7
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !187
  %12 = fcmp oeq float %11, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @glDisable(i32 noundef 3008) #14
  br label %17

14:                                               ; preds = %10
  tail call void @glEnable(i32 noundef 3008) #14
  %15 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !187
  tail call void @glAlphaFunc(i32 noundef 516, float noundef %15) #14
  br label %17

16:                                               ; preds = %1
  tail call void @glDisable(i32 noundef 3042) #14
  tail call void @glEnable(i32 noundef 3008) #14
  tail call void @glAlphaFunc(i32 noundef 516, float noundef 5.000000e-01) #14
  br label %17

17:                                               ; preds = %1, %3, %16, %13, %14, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_material_alpha_blend() local_unnamed_addr #4 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !138
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_material_diffuse_get(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr @GMS, align 8, !tbaa !157
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 22), align 4, !tbaa !171
  %7 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 17), align 8, !tbaa !172
  %8 = fadd float %6, %7
  %9 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 4), align 4, !tbaa !40
  %10 = fmul float %9, %8
  store float %10, ptr %1, align 4, !tbaa !40
  %11 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 5), align 8, !tbaa !40
  %12 = fmul float %8, %11
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !40
  %14 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 6), align 4, !tbaa !40
  %15 = fmul float %8, %14
  br label %31

16:                                               ; preds = %2
  %17 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !146
  %18 = icmp sgt i32 %17, %0
  %19 = select i1 %18, i32 %0, i32 0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %3, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !40
  store float %22, ptr %1, align 4, !tbaa !40
  %23 = getelementptr inbounds float, ptr %21, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !40
  %25 = getelementptr inbounds float, ptr %1, i64 1
  store float %24, ptr %25, align 4, !tbaa !40
  %26 = getelementptr inbounds float, ptr %21, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !40
  %28 = getelementptr inbounds float, ptr %1, i64 2
  store float %27, ptr %28, align 4, !tbaa !40
  %29 = getelementptr inbounds float, ptr %21, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !40
  br label %31

31:                                               ; preds = %16, %5
  %32 = phi i64 [ 3, %16 ], [ 2, %5 ]
  %33 = phi float [ %30, %16 ], [ %15, %5 ]
  %34 = getelementptr inbounds float, ptr %1, i64 %32
  store float %33, ptr %34, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_material_use_matcaps_get() local_unnamed_addr #4 {
  %1 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !139
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @GPU_end_object_materials() local_unnamed_addr #0 {
  tail call void @GPU_disable_material()
  %1 = load ptr, ptr @GMS, align 8
  %2 = icmp ne ptr %1, null
  %3 = icmp ne ptr %1, getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 1)
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %6(ptr noundef nonnull %1) #14
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %8 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  tail call void %7(ptr noundef %8) #14
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %10 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  tail call void %9(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %5, %0
  store ptr null, ptr @GMS, align 8, !tbaa !157
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !158
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !159
  %12 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @glMatrixMode(i32 noundef 5890) #14
  tail call void @glLoadIdentity() #14
  tail call void @glMatrixMode(i32 noundef 5888) #14
  br label %15

15:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_default_lights() local_unnamed_addr #0 {
  %1 = alloca [4 x float], align 16
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54), align 8, !tbaa !188
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1), align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2), align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54), align 8, !tbaa !188
  store float 0xBFD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 4), align 8, !tbaa !40
  store float 0x3FD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 4, i64 1), align 4, !tbaa !40
  store float 0x3FECCCCCC0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 4, i64 2), align 8, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 2), align 8, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 2, i64 1), align 4, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 2, i64 2), align 8, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 3), align 8, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 3, i64 1), align 4, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 3, i64 2), align 8, !tbaa !40
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 3, i64 3), align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1), align 8, !tbaa !188
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 4), align 8, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 4, i64 1), align 4, !tbaa !40
  store float 0x3FB99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 4, i64 2), align 8, !tbaa !40
  store float 0x3FD99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 2), align 8, !tbaa !40
  store float 0x3FD99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 2, i64 1), align 4, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 2, i64 2), align 8, !tbaa !40
  store float 0x3FD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 3), align 8, !tbaa !40
  store float 0x3FD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 3, i64 1), align 4, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 3, i64 2), align 8, !tbaa !40
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 3, i64 3), align 4, !tbaa !40
  store i32 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2), align 8, !tbaa !188
  store float 0x3FD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 4), align 8, !tbaa !40
  store float 0xBFD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 4, i64 1), align 4, !tbaa !40
  store float 0xBFC99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 4, i64 2), align 8, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 2), align 8, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 2, i64 1), align 4, !tbaa !40
  store float 0x3FD99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 2, i64 2), align 8, !tbaa !40
  store float 5.000000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 3), align 8, !tbaa !40
  store float 0x3FD99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 3, i64 1), align 4, !tbaa !40
  store float 0x3FD3333340000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 3, i64 2), align 8, !tbaa !40
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 3, i64 3), align 4, !tbaa !40
  br label %12

12:                                               ; preds = %11, %0
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef 0) #14
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  br label %18

18:                                               ; preds = %12, %69
  %19 = phi i64 [ 0, %12 ], [ %71, %69 ]
  %20 = phi i32 [ 0, %12 ], [ %70, %69 ]
  %21 = icmp ult i64 %19, 3
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %19
  %24 = load i32, ptr %23, align 8, !tbaa !188
  %25 = icmp eq i32 %24, 0
  %26 = or disjoint i64 %19, 16384
  %27 = trunc i64 %26 to i32
  br i1 %25, label %56, label %28

28:                                               ; preds = %22
  call void @glEnable(i32 noundef %27) #14
  %29 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %19, i32 4
  %30 = load float, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds float, ptr %29, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !40
  %33 = fmul float %32, %32
  %34 = call float @llvm.fmuladd.f32(float %30, float %30, float %33)
  %35 = getelementptr inbounds float, ptr %29, i64 2
  %36 = load float, ptr %35, align 8, !tbaa !40
  %37 = call float @llvm.fmuladd.f32(float %36, float %36, float %34)
  %38 = fcmp ogt float %37, 0x38AA95A5C0000000
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = call float @sqrtf(float noundef %37) #14
  %41 = fdiv float 1.000000e+00, %40
  %42 = load float, ptr %29, align 8, !tbaa !40
  %43 = fmul float %42, %41
  store float %43, ptr %2, align 16, !tbaa !40
  %44 = load float, ptr %31, align 4, !tbaa !40
  %45 = fmul float %41, %44
  store float %45, ptr %15, align 4, !tbaa !40
  %46 = load float, ptr %35, align 8, !tbaa !40
  %47 = fmul float %41, %46
  store float %47, ptr %16, align 8, !tbaa !40
  br label %49

48:                                               ; preds = %28
  store float 0.000000e+00, ptr %2, align 16, !tbaa !40
  store float 0.000000e+00, ptr %13, align 4, !tbaa !40
  store float 0.000000e+00, ptr %14, align 8, !tbaa !40
  br label %49

49:                                               ; preds = %39, %48
  store float 0.000000e+00, ptr %17, align 4, !tbaa !40
  %50 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %50, i32 noundef 4611, ptr noundef nonnull %2) #14
  %51 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %19, i32 2
  %52 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %52, i32 noundef 4609, ptr noundef nonnull %51) #14
  %53 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %19, i32 3
  %54 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %54, i32 noundef 4610, ptr noundef nonnull %53) #14
  %55 = add nsw i32 %20, 1
  br label %60

56:                                               ; preds = %22
  call void @glDisable(i32 noundef %27) #14
  %57 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %57, i32 noundef 4611, ptr noundef nonnull %1) #14
  %58 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %58, i32 noundef 4609, ptr noundef nonnull %1) #14
  %59 = trunc i64 %26 to i32
  call void @glLightfv(i32 noundef %59, i32 noundef 4610, ptr noundef nonnull %1) #14
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i32 [ %55, %49 ], [ %20, %56 ]
  %62 = or disjoint i64 %19, 16384
  %63 = trunc i64 %62 to i32
  call void @glLightf(i32 noundef %63, i32 noundef 4614, float noundef 1.800000e+02) #14
  %64 = trunc i64 %62 to i32
  call void @glLightf(i32 noundef %64, i32 noundef 4615, float noundef 1.000000e+00) #14
  %65 = trunc i64 %62 to i32
  call void @glLightf(i32 noundef %65, i32 noundef 4616, float noundef 0.000000e+00) #14
  br label %69

66:                                               ; preds = %18
  %67 = trunc i64 %19 to i32
  %68 = or i32 %67, 16384
  call void @glDisable(i32 noundef %68) #14
  br label %69

69:                                               ; preds = %60, %66
  %70 = phi i32 [ %61, %60 ], [ %20, %66 ]
  %71 = add nuw nsw i64 %19, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %73, label %18, !llvm.loop !190

73:                                               ; preds = %69
  call void @glDisable(i32 noundef 2896) #14
  call void @glDisable(i32 noundef 2903) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #14
  ret i32 %70
}

declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @GPU_scene_object_lights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ 0, %5 ], [ %12, %9 ]
  %11 = or disjoint i32 %10, 16384
  tail call void @glDisable(i32 noundef %11) #14
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %9, !llvm.loop !191

14:                                               ; preds = %9
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i32
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef %16) #14
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %122, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %22 = getelementptr inbounds float, ptr %6, i64 1
  %23 = getelementptr inbounds float, ptr %6, i64 2
  %24 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %25 = getelementptr inbounds float, ptr %7, i64 1
  %26 = getelementptr inbounds float, ptr %7, i64 2
  %27 = getelementptr inbounds float, ptr %7, i64 1
  %28 = getelementptr inbounds float, ptr %7, i64 2
  %29 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %30 = getelementptr inbounds float, ptr %8, i64 1
  %31 = getelementptr inbounds float, ptr %8, i64 2
  %32 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  br label %33

33:                                               ; preds = %20, %118
  %34 = phi ptr [ %18, %20 ], [ %120, %118 ]
  %35 = phi i32 [ 0, %20 ], [ %119, %118 ]
  %36 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !192
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !194
  %40 = icmp eq i16 %39, 10
  br i1 %40, label %41, label %118

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !195
  %44 = and i32 %43, %2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %118, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %21, align 8, !tbaa !179
  %48 = and i32 %47, %43
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %118, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !196
  call void @glPushMatrix() #14
  call void @glLoadMatrixf(ptr noundef %3) #14
  %53 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 2
  %54 = load i16, ptr %53, align 8, !tbaa !197
  %55 = icmp eq i16 %54, 1
  %56 = load ptr, ptr %36, align 8, !tbaa !192
  %57 = add nsw i32 %35, 16384
  br i1 %55, label %58, label %65

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !40
  store float %60, ptr %7, align 16, !tbaa !40
  %61 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !40
  store float %62, ptr %27, align 4, !tbaa !40
  %63 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !40
  store float %64, ptr %28, align 8, !tbaa !40
  store float 0.000000e+00, ptr %29, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %57, i32 noundef 4611, ptr noundef nonnull %7) #14
  br label %103

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !40
  store float %67, ptr %6, align 16, !tbaa !40
  %68 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 3, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !40
  store float %69, ptr %22, align 4, !tbaa !40
  %70 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47, i64 3, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !40
  store float %71, ptr %23, align 8, !tbaa !40
  store float 1.000000e+00, ptr %24, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %57, i32 noundef 4611, ptr noundef nonnull %6) #14
  call void @glLightf(i32 noundef %57, i32 noundef 4615, float noundef 1.000000e+00) #14
  %72 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 20
  %73 = load float, ptr %72, align 8, !tbaa !199
  %74 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 16
  %75 = load float, ptr %74, align 8, !tbaa !200
  %76 = fdiv float %73, %75
  call void @glLightf(i32 noundef %57, i32 noundef 4616, float noundef %76) #14
  %77 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 21
  %78 = load float, ptr %77, align 4, !tbaa !201
  %79 = load float, ptr %74, align 8, !tbaa !200
  %80 = fmul float %79, %79
  %81 = fdiv float %78, %80
  call void @glLightf(i32 noundef %57, i32 noundef 4617, float noundef %81) #14
  %82 = load i16, ptr %53, align 8, !tbaa !197
  %83 = icmp eq i16 %82, 2
  br i1 %83, label %84, label %102

84:                                               ; preds = %65
  %85 = load ptr, ptr %36, align 8, !tbaa !192
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 47, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !40
  %88 = fneg float %87
  store float %88, ptr %7, align 16, !tbaa !40
  %89 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 47, i64 2, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !40
  %91 = fneg float %90
  store float %91, ptr %25, align 4, !tbaa !40
  %92 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 47, i64 2, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !40
  %94 = fneg float %93
  store float %94, ptr %26, align 8, !tbaa !40
  call void @glLightfv(i32 noundef %57, i32 noundef 4612, ptr noundef nonnull %7) #14
  %95 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 17
  %96 = load float, ptr %95, align 4, !tbaa !202
  %97 = fmul float %96, 5.000000e-01
  %98 = fmul float %97, 0x404CA5DC20000000
  call void @glLightf(i32 noundef %57, i32 noundef 4614, float noundef %98) #14
  %99 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 18
  %100 = load float, ptr %99, align 8, !tbaa !203
  %101 = fmul float %100, 1.280000e+02
  call void @glLightf(i32 noundef %57, i32 noundef 4613, float noundef %101) #14
  br label %103

102:                                              ; preds = %65
  call void @glLightf(i32 noundef %57, i32 noundef 4614, float noundef 1.800000e+02) #14
  br label %103

103:                                              ; preds = %84, %102, %58
  %104 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 7
  %105 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 15
  %106 = load float, ptr %105, align 4, !tbaa !204
  %107 = load float, ptr %104, align 4, !tbaa !40
  %108 = fmul float %106, %107
  store float %108, ptr %8, align 16, !tbaa !40
  %109 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 8
  %110 = load float, ptr %109, align 4, !tbaa !40
  %111 = fmul float %106, %110
  store float %111, ptr %30, align 4, !tbaa !40
  %112 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 9
  %113 = load float, ptr %112, align 4, !tbaa !40
  %114 = fmul float %106, %113
  store float %114, ptr %31, align 8, !tbaa !40
  store float 1.000000e+00, ptr %32, align 4, !tbaa !40
  %115 = add nsw i32 %35, 16384
  call void @glLightfv(i32 noundef %115, i32 noundef 4609, ptr noundef nonnull %8) #14
  call void @glLightfv(i32 noundef %115, i32 noundef 4610, ptr noundef nonnull %8) #14
  call void @glEnable(i32 noundef %115) #14
  call void @glPopMatrix() #14
  %116 = add nsw i32 %35, 1
  %117 = icmp eq i32 %116, 8
  br i1 %117, label %122, label %118

118:                                              ; preds = %103, %41, %46, %33
  %119 = phi i32 [ %35, %33 ], [ %116, %103 ], [ %35, %46 ], [ %35, %41 ]
  %120 = load ptr, ptr %34, align 8, !tbaa !48
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %33, !llvm.loop !205

122:                                              ; preds = %118, %103, %14
  %123 = phi i32 [ 0, %14 ], [ %119, %118 ], [ 8, %103 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i32 %123
}

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GPU_state_init() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_state_init.mat_specular, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4608, ptr noundef nonnull %2) #14
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %3) #14
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %3) #14
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 35) #14
  %5 = call i32 @GPU_default_lights()
  call void @glDepthFunc(i32 noundef 515) #14
  call void @glEnable(i32 noundef 2977) #14
  call void @glShadeModel(i32 noundef 7424) #14
  call void @glDisable(i32 noundef 3008) #14
  call void @glDisable(i32 noundef 3042) #14
  call void @glDisable(i32 noundef 2929) #14
  call void @glDisable(i32 noundef 2912) #14
  call void @glDisable(i32 noundef 2896) #14
  call void @glDisable(i32 noundef 3057) #14
  call void @glDisable(i32 noundef 2960) #14
  call void @glDisable(i32 noundef 3552) #14
  call void @glDisable(i32 noundef 3553) #14
  call void @glDisableClientState(i32 noundef 32884) #14
  call void @glDisableClientState(i32 noundef 32885) #14
  call void @glDisableClientState(i32 noundef 32886) #14
  call void @glDisableClientState(i32 noundef 32888) #14
  call void @glPixelTransferi(i32 noundef 3344, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3348, i32 noundef 1) #14
  call void @glPixelTransferi(i32 noundef 3349, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3352, i32 noundef 1) #14
  call void @glPixelTransferi(i32 noundef 3353, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3354, i32 noundef 1) #14
  call void @glPixelTransferi(i32 noundef 3355, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3356, i32 noundef 1) #14
  call void @glPixelTransferi(i32 noundef 3357, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3359, i32 noundef 0) #14
  call void @glPixelTransferi(i32 noundef 3358, i32 noundef 1) #14
  call void @glDepthRange(double noundef 0.000000e+00, double noundef 1.000000e+00) #14
  br label %6

6:                                                ; preds = %0, %20
  %7 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %8 = phi i32 [ 0, %0 ], [ %22, %20 ]
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = sext i32 %7 to i64
  %12 = add i32 %7, 4
  %13 = select i1 %10, i8 34, i8 -120
  br label %14

14:                                               ; preds = %6, %14
  %15 = phi i64 [ %11, %6 ], [ %17, %14 ]
  %16 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %15
  store i8 %13, ptr %16, align 1, !tbaa !102
  %17 = add nsw i64 %15, 1
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %20, label %14, !llvm.loop !206

20:                                               ; preds = %14
  %21 = trunc i64 %17 to i32
  %22 = add nuw nsw i32 %8, 1
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %6, !llvm.loop !207

24:                                               ; preds = %20
  call void @glPolygonStipple(ptr noundef nonnull %4) #14
  call void @glMatrixMode(i32 noundef 5890) #14
  call void @glLoadIdentity() #14
  call void @glMatrixMode(i32 noundef 5888) #14
  call void @glFrontFace(i32 noundef 2305) #14
  call void @glCullFace(i32 noundef 1029) #14
  call void @glDisable(i32 noundef 2884) #14
  %25 = load i8, ptr @__GLEW_VERSION_1_3, align 1, !tbaa !102
  %26 = icmp ne i8 %25, 0
  %27 = load i8, ptr @__GLEW_ARB_multisample, align 1
  %28 = icmp ne i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = call i32 @GPU_type_matches(i32 noundef 1, i32 noundef 1024, i32 noundef 16711680) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store i32 0, ptr %1, align 4, !tbaa !49
  call void @glGetIntegerv(i32 noundef 32937, ptr noundef nonnull %1) #14
  %34 = load i32, ptr %1, align 4, !tbaa !49
  %35 = icmp eq i32 %34, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %30
  call void @glDisable(i32 noundef 32925) #14
  br label %37

37:                                               ; preds = %24, %33, %36
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void
}

declare void @glDepthFunc(i32 noundef) local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @glPixelTransferi(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDepthRange(double noundef, double noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glFrontFace(i32 noundef) local_unnamed_addr #2

declare void @glCullFace(i32 noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @GPU_max_texture_size() local_unnamed_addr #2

declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #2

declare void @glTexGeni(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glAlphaFunc(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

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
!34 = !{!35, !38, i64 32}
!35 = !{!"MTFace", !36, i64 0, !38, i64 32, !36, i64 40, !36, i64 41, !39, i64 42, !39, i64 44, !39, i64 46}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!35, !39, i64 42}
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !36, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!38, !38, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !36, i64 0}
!51 = !{!52, !50, i64 68}
!52 = !{!"GPUTextureState", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !38, i64 32, !38, i64 40, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !41, i64 64, !50, i64 68, !38, i64 72}
!53 = !{!54, !38, i64 0}
!54 = !{!"Global", !38, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !55, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !36, i64 2090, !39, i64 2092, !50, i64 2096, !50, i64 2100, !36, i64 2104, !50, i64 2108, !50, i64 2112, !36, i64 2116}
!55 = !{!"ListBase", !38, i64 0, !38, i64 8}
!56 = distinct !{!56, !46, !47}
!57 = !{!52, !50, i64 48}
!58 = !{!52, !50, i64 52}
!59 = !{!52, !41, i64 64}
!60 = !{!52, !38, i64 72}
!61 = !{!52, !50, i64 0}
!62 = !{!52, !38, i64 40}
!63 = !{!52, !50, i64 8}
!64 = !{!52, !50, i64 16}
!65 = !{!52, !50, i64 24}
!66 = !{!52, !50, i64 60}
!67 = !{!52, !38, i64 32}
!68 = !{!69, !39, i64 1256}
!69 = !{!"Image", !70, i64 0, !36, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !36, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !50, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !50, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !41, i64 1296, !50, i64 1300, !39, i64 1304, !39, i64 1306, !50, i64 1308, !50, i64 1312, !36, i64 1316, !36, i64 1317, !39, i64 1318, !36, i64 1320, !41, i64 1336, !41, i64 1340, !71, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!70 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !39, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !38, i64 112}
!71 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!72 = !{!52, !50, i64 12}
!73 = !{!52, !50, i64 20}
!74 = !{!52, !50, i64 28}
!75 = !{!69, !50, i64 1252}
!76 = !{!52, !50, i64 4}
!77 = !{!69, !39, i64 1260}
!78 = !{!69, !39, i64 1262}
!79 = !{!69, !39, i64 1244}
!80 = !{!81, !38, i64 48}
!81 = !{!"ImBuf", !38, i64 0, !38, i64 8, !50, i64 16, !50, i64 20, !36, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !38, i64 40, !38, i64 48, !36, i64 56, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !41, i64 112, !36, i64 120, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !38, i64 296, !38, i64 304, !50, i64 312, !36, i64 316, !36, i64 1340, !38, i64 2368, !50, i64 2376, !38, i64 2384, !50, i64 2392, !50, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !50, i64 2432, !82, i64 2436, !83, i64 2456}
!82 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!83 = !{!"DDSData", !50, i64 0, !50, i64 4, !38, i64 8, !50, i64 16}
!84 = !{!85, !39, i64 8952}
!85 = !{!"UserDef", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !50, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !50, i64 8484, !50, i64 8488, !50, i64 8492, !39, i64 8496, !39, i64 8498, !50, i64 8500, !50, i64 8504, !50, i64 8508, !50, i64 8512, !50, i64 8516, !50, i64 8520, !50, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !55, i64 8536, !55, i64 8552, !55, i64 8568, !55, i64 8584, !55, i64 8600, !55, i64 8616, !55, i64 8632, !36, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !36, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !50, i64 8912, !50, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !41, i64 8956, !41, i64 8960, !50, i64 8964, !39, i64 8968, !39, i64 8970, !41, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !86, i64 8984, !36, i64 9760, !36, i64 9772, !39, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !50, i64 10896, !50, i64 10900, !41, i64 10904, !41, i64 10908, !50, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !87, i64 10928}
!86 = !{!"ColorBand", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!87 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !39, i64 24, !36, i64 26}
!88 = !{!81, !50, i64 292}
!89 = !{!81, !38, i64 40}
!90 = !{!69, !38, i64 1272}
!91 = !{!69, !39, i64 1258}
!92 = !{!81, !50, i64 16}
!93 = !{!81, !50, i64 20}
!94 = !{!81, !50, i64 28}
!95 = distinct !{!95, !46, !47}
!96 = distinct !{!96, !46, !47}
!97 = !{!69, !50, i64 1268}
!98 = !{!69, !38, i64 1152}
!99 = !{i32 0, i32 33}
!100 = !{!85, !39, i64 8934}
!101 = distinct !{!101, !46, !47}
!102 = !{!36, !36, i64 0}
!103 = !{!69, !39, i64 1246}
!104 = !{!35, !39, i64 44}
!105 = !{!52, !50, i64 56}
!106 = distinct !{!106, !46, !47}
!107 = distinct !{!107, !46, !47}
!108 = !{i8 0, i8 2}
!109 = distinct !{!109, !46, !47}
!110 = distinct !{!110, !46, !47}
!111 = !{!69, !39, i64 1266}
!112 = !{!69, !39, i64 1264}
!113 = distinct !{!113, !46, !47}
!114 = !{!69, !41, i64 1296}
!115 = !{!69, !39, i64 1304}
!116 = !{!117, !50, i64 140}
!117 = !{!"SmokeModifierData", !118, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !41, i64 136, !50, i64 140}
!118 = !{!"ModifierData", !38, i64 0, !38, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !36, i64 32, !38, i64 96, !38, i64 104}
!119 = !{!117, !38, i64 112}
!120 = !{!121, !38, i64 56}
!121 = !{!"SmokeDomainSettings", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !36, i64 96, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 192, !36, i64 204, !36, i64 268, !36, i64 332, !36, i64 344, !36, i64 356, !36, i64 368, !50, i64 380, !41, i64 384, !41, i64 388, !50, i64 392, !50, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !50, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !39, i64 428, !39, i64 430, !50, i64 432, !41, i64 436, !36, i64 440, !41, i64 452, !50, i64 456, !50, i64 460, !36, i64 464, !36, i64 480, !38, i64 512, !50, i64 520, !41, i64 524, !41, i64 528, !50, i64 532, !36, i64 536, !50, i64 548, !41, i64 552, !41, i64 556, !41, i64 560, !41, i64 564, !41, i64 568, !36, i64 572}
!122 = !{!121, !38, i64 72}
!123 = !{!121, !38, i64 80}
!124 = !{!125, !38, i64 8}
!125 = !{!"LinkNode", !38, i64 0, !38, i64 8}
!126 = distinct !{!126, !46, !47}
!127 = distinct !{!127, !46, !47}
!128 = !{!85, !39, i64 8904}
!129 = !{!85, !39, i64 8906}
!130 = !{!69, !50, i64 1300}
!131 = distinct !{!131, !46, !47}
!132 = !{!133, !39, i64 242}
!133 = !{!"View3D", !38, i64 0, !38, i64 8, !55, i64 16, !50, i64 32, !41, i64 36, !36, i64 40, !36, i64 56, !41, i64 72, !41, i64 76, !36, i64 80, !36, i64 81, !50, i64 84, !50, i64 88, !39, i64 92, !39, i64 94, !38, i64 96, !38, i64 104, !134, i64 112, !55, i64 128, !38, i64 144, !38, i64 152, !36, i64 160, !50, i64 224, !50, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !36, i64 260, !36, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !55, i64 296, !55, i64 312, !55, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !38, i64 352, !38, i64 360, !38, i64 368}
!134 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!135 = !{!136, !50, i64 476}
!136 = !{!"GPUMaterialState", !38, i64 0, !36, i64 8, !50, i64 296, !38, i64 304, !36, i64 312, !38, i64 376, !38, i64 384, !38, i64 392, !50, i64 400, !36, i64 404, !38, i64 408, !38, i64 416, !36, i64 424, !38, i64 432, !36, i64 440, !36, i64 472, !36, i64 473, !36, i64 474, !50, i64 476, !50, i64 480, !50, i64 484}
!137 = !{!136, !50, i64 480}
!138 = !{!136, !50, i64 484}
!139 = !{!136, !36, i64 474}
!140 = !{!136, !36, i64 424}
!141 = !{!136, !38, i64 384}
!142 = !{!136, !38, i64 392}
!143 = !{!144, !50, i64 456}
!144 = !{!"Object", !70, i64 0, !38, i64 120, !38, i64 128, !39, i64 136, !39, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !36, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !145, i64 312, !38, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !50, i64 432, !50, i64 436, !38, i64 440, !38, i64 448, !50, i64 456, !50, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !50, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !36, i64 966, !36, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !36, i64 1042, !36, i64 1043, !39, i64 1044, !36, i64 1046, !36, i64 1047, !41, i64 1048, !41, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !41, i64 1120, !39, i64 1124, !39, i64 1126, !36, i64 1128, !50, i64 1144, !50, i64 1148, !38, i64 1152, !36, i64 1160, !36, i64 1161, !39, i64 1162, !36, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !36, i64 1264, !36, i64 1265, !39, i64 1266, !41, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !44, i64 1304, !44, i64 1312, !50, i64 1320, !50, i64 1324, !55, i64 1328, !55, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !36, i64 1384, !38, i64 1392, !55, i64 1400, !38, i64 1416}
!145 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!146 = !{!136, !50, i64 296}
!147 = !{!133, !38, i64 152}
!148 = !{!133, !50, i64 224}
!149 = !{!136, !50, i64 400}
!150 = !{!133, !39, i64 236}
!151 = !{!136, !36, i64 404}
!152 = !{!136, !38, i64 408}
!153 = !{!136, !38, i64 416}
!154 = !{!136, !36, i64 472}
!155 = !{!133, !36, i64 345}
!156 = !{!136, !36, i64 473}
!157 = !{!136, !38, i64 0}
!158 = !{!136, !38, i64 304}
!159 = !{!136, !38, i64 432}
!160 = !{!133, !38, i64 360}
!161 = !{!162, !36, i64 543}
!162 = !{!"Material", !70, i64 0, !38, i64 120, !39, i64 128, !39, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !163, i64 224, !164, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !36, i64 362, !36, i64 363, !41, i64 364, !41, i64 368, !39, i64 372, !39, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !39, i64 392, !39, i64 394, !50, i64 396, !50, i64 400, !50, i64 404, !50, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !36, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !50, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !36, i64 550, !36, i64 551, !39, i64 552, !39, i64 554, !41, i64 556, !41, i64 560, !36, i64 564, !41, i64 580, !41, i64 584, !39, i64 588, !39, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !39, i64 612, !39, i64 614, !41, i64 616, !41, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !39, i64 820, !39, i64 822, !36, i64 824, !36, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !39, i64 876, !39, i64 878, !50, i64 880, !39, i64 884, !39, i64 886, !36, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !36, i64 914, !38, i64 920, !55, i64 928}
!163 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!164 = !{!"GameSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!165 = !{!162, !38, i64 768}
!166 = !{!167, !38, i64 240}
!167 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !36, i64 40, !36, i64 104, !50, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !36, i64 188, !55, i64 200, !55, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !55, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !50, i64 308, !36, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !38, i64 392, !134, i64 400, !134, i64 416, !134, i64 432, !39, i64 448, !39, i64 450, !50, i64 452, !38, i64 456}
!168 = !{!162, !50, i64 396}
!169 = !{!162, !41, i64 200}
!170 = distinct !{!170, !46, !47}
!171 = !{!162, !41, i64 204}
!172 = !{!162, !41, i64 184}
!173 = !{!162, !39, i64 394}
!174 = !{!162, !41, i64 208}
!175 = !{!162, !39, i64 360}
!176 = !{!177, !50, i64 32}
!177 = !{!"GPUMaterialFixed", !36, i64 0, !36, i64 16, !50, i64 32}
!178 = !{!136, !38, i64 376}
!179 = !{!144, !50, i64 944}
!180 = !{!144, !50, i64 432}
!181 = !{!144, !38, i64 1296}
!182 = !{!183, !41, i64 1052}
!183 = !{!"DerivedMesh", !184, i64 0, !184, i64 200, !184, i64 400, !184, i64 600, !184, i64 800, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !38, i64 1032, !38, i64 1040, !50, i64 1048, !41, i64 1052, !50, i64 1056, !50, i64 1060, !38, i64 1064, !36, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!184 = !{!"CustomData", !38, i64 0, !36, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !38, i64 184, !38, i64 192}
!185 = !{!162, !50, i64 316}
!186 = !{!162, !50, i64 312}
!187 = !{!85, !41, i64 8972}
!188 = !{!189, !50, i64 0}
!189 = !{!"SolidLight", !50, i64 0, !50, i64 4, !36, i64 8, !36, i64 24, !36, i64 40}
!190 = distinct !{!190, !46, !47}
!191 = distinct !{!191, !46, !47}
!192 = !{!193, !38, i64 32}
!193 = !{!"Base", !38, i64 0, !38, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !39, i64 28, !39, i64 30, !38, i64 32}
!194 = !{!144, !39, i64 136}
!195 = !{!193, !50, i64 16}
!196 = !{!144, !38, i64 296}
!197 = !{!198, !39, i64 128}
!198 = !{!"Lamp", !70, i64 0, !38, i64 120, !39, i64 128, !39, i64 130, !50, i64 132, !39, i64 136, !39, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !38, i64 200, !39, i64 208, !39, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !36, i64 248, !36, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !39, i64 340, !36, i64 342, !38, i64 344, !36, i64 352, !39, i64 496, !39, i64 498, !36, i64 500, !38, i64 504, !38, i64 512}
!199 = !{!198, !41, i64 192}
!200 = !{!198, !41, i64 176}
!201 = !{!198, !41, i64 196}
!202 = !{!198, !41, i64 180}
!203 = !{!198, !41, i64 184}
!204 = !{!198, !41, i64 172}
!205 = distinct !{!205, !46, !47}
!206 = distinct !{!206, !46, !47}
!207 = distinct !{!207, !46, !47}
