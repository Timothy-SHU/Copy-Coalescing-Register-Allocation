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

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %25, label %26, label %210

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %210, label %30

30:                                               ; preds = %26
  %31 = zext nneg i32 %3 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #18
  %32 = icmp eq ptr %8, null
  %33 = getelementptr inbounds float, ptr %5, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !40
  %35 = getelementptr inbounds float, ptr %6, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !40
  %37 = getelementptr inbounds float, ptr %7, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !40
  br i1 %32, label %45, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds float, ptr %8, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !40
  %42 = tail call fastcc float @max_ffff(float noundef %34, float noundef %36, float noundef %38, float noundef %41) #19
  %43 = tail call fastcc float @min_ffff(float noundef %34, float noundef %36, float noundef %38, float noundef %41) #19
  %44 = fsub float %42, %43
  br label %49

45:                                               ; preds = %30
  %46 = tail call fastcc float @max_fff(float noundef %34, float noundef %36, float noundef %38) #19
  %47 = tail call fastcc float @min_fff(float noundef %34, float noundef %36, float noundef %38) #19
  %48 = fsub float %46, %47
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi float [ %44, %39 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 4
  %52 = load i16, ptr %51, align 2, !tbaa !42
  %53 = and i16 %52, 2048
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = icmp eq ptr %4, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  br label %58

58:                                               ; preds = %57, %55, %49
  %59 = phi ptr [ %4, %55 ], [ null, %57 ], [ null, %49 ]
  tail call void @glPushMatrix() #20
  %60 = tail call ptr @BKE_image_get_first_ibuf(ptr noundef nonnull %28) #20
  call void @matrixGlyph(ptr noundef %60, i16 noundef zeroext 32, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #20
  %61 = load float, ptr %20, align 4, !tbaa !40
  %62 = fmul float %61, 4.000000e+00
  store i64 0, ptr %11, align 8, !tbaa !43
  %63 = fmul float %50, 0xBFF3333340000000
  %64 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1
  %65 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 2
  %66 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2
  %67 = icmp sgt i32 %9, -1
  %68 = icmp eq ptr %59, null
  %69 = getelementptr inbounds float, ptr %5, i64 1
  %70 = getelementptr inbounds float, ptr %5, i64 2
  %71 = getelementptr inbounds i32, ptr %59, i64 1
  %72 = getelementptr inbounds float, ptr %6, i64 1
  %73 = getelementptr inbounds float, ptr %6, i64 2
  %74 = getelementptr inbounds i32, ptr %59, i64 2
  %75 = getelementptr inbounds float, ptr %7, i64 1
  %76 = getelementptr inbounds float, ptr %7, i64 2
  %77 = getelementptr inbounds [4 x [2 x float]], ptr %0, i64 0, i64 3
  %78 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 3
  %79 = getelementptr inbounds i32, ptr %59, i64 3
  %80 = getelementptr inbounds float, ptr %8, i64 1
  %81 = getelementptr inbounds float, ptr %8, i64 2
  br label %82

82:                                               ; preds = %58, %205
  %83 = phi i64 [ 0, %58 ], [ %207, %205 ]
  %84 = phi float [ 0.000000e+00, %58 ], [ %206, %205 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #18
  %85 = getelementptr inbounds i8, ptr %2, i64 %83
  %86 = call i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef %85, ptr noundef nonnull %11) #20
  switch i32 %86, label %90 [
    i32 10, label %87
    i32 9, label %88
  ]

87:                                               ; preds = %82
  call void @glTranslatef(float noundef %84, float noundef %63, float noundef 0.000000e+00) #20
  br label %205, !llvm.loop !45

88:                                               ; preds = %82
  call void @glTranslatef(float noundef %62, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %89 = fsub float %84, %62
  br label %205, !llvm.loop !45

90:                                               ; preds = %82
  %91 = icmp ugt i32 %86, 65535
  %92 = trunc i32 %86 to i16
  %93 = select i1 %91, i16 63, i16 %92
  call void @matrixGlyph(ptr noundef %60, i16 noundef zeroext %93, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #20
  %94 = load float, ptr %12, align 4, !tbaa !40
  %95 = load float, ptr %14, align 4, !tbaa !40
  %96 = load float, ptr %16, align 4, !tbaa !40
  %97 = load float, ptr %13, align 4, !tbaa !40
  %98 = load float, ptr %15, align 4, !tbaa !40
  %99 = load float, ptr %17, align 4, !tbaa !40
  %100 = load <4 x float>, ptr %0, align 8, !tbaa !40
  %101 = insertelement <4 x float> poison, float %94, i64 0
  %102 = insertelement <4 x float> %101, float %97, i64 1
  %103 = shufflevector <4 x float> %102, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %104 = fsub <4 x float> %100, %103
  %105 = insertelement <4 x float> poison, float %95, i64 0
  %106 = insertelement <4 x float> %105, float %98, i64 1
  %107 = shufflevector <4 x float> %106, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %108 = insertelement <4 x float> poison, float %96, i64 0
  %109 = insertelement <4 x float> %108, float %99, i64 1
  %110 = shufflevector <4 x float> %109, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %111 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %104, <4 x float> %107, <4 x float> %110)
  store <4 x float> %111, ptr %21, align 16, !tbaa !40
  %112 = load <2 x float>, ptr %65, align 8, !tbaa !40
  %113 = insertelement <2 x float> poison, float %94, i64 0
  %114 = insertelement <2 x float> %113, float %97, i64 1
  %115 = fsub <2 x float> %112, %114
  %116 = insertelement <2 x float> poison, float %95, i64 0
  %117 = insertelement <2 x float> %116, float %98, i64 1
  %118 = insertelement <2 x float> poison, float %96, i64 0
  %119 = insertelement <2 x float> %118, float %99, i64 1
  %120 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %115, <2 x float> %117, <2 x float> %119)
  store <2 x float> %120, ptr %66, align 16, !tbaa !40
  call void @glBegin(i32 noundef 9) #20
  br i1 %67, label %121, label %123

121:                                              ; preds = %90
  %122 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !47
  call void %122(i32 noundef %9, ptr noundef nonnull %21) #20
  br label %124

123:                                              ; preds = %90
  call void @glTexCoord2fv(ptr noundef nonnull %21) #20
  br label %124

124:                                              ; preds = %123, %121
  br i1 %68, label %127, label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %59, align 4, !tbaa !48
  call fastcc void @gpu_mcol(i32 noundef %126) #19
  br label %127

127:                                              ; preds = %125, %124
  %128 = load float, ptr %14, align 4, !tbaa !40
  %129 = load float, ptr %5, align 4, !tbaa !40
  %130 = load float, ptr %18, align 4, !tbaa !40
  %131 = call float @llvm.fmuladd.f32(float %128, float %129, float %130)
  %132 = load float, ptr %15, align 4, !tbaa !40
  %133 = load float, ptr %69, align 4, !tbaa !40
  %134 = load float, ptr %19, align 4, !tbaa !40
  %135 = call float @llvm.fmuladd.f32(float %132, float %133, float %134)
  %136 = load float, ptr %70, align 4, !tbaa !40
  call void @glVertex3f(float noundef %131, float noundef %135, float noundef %136) #20
  br i1 %67, label %137, label %139

137:                                              ; preds = %127
  %138 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !47
  call void %138(i32 noundef %9, ptr noundef nonnull %64) #20
  br label %140

139:                                              ; preds = %127
  call void @glTexCoord2fv(ptr noundef nonnull %64) #20
  br label %140

140:                                              ; preds = %139, %137
  br i1 %68, label %143, label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %71, align 4, !tbaa !48
  call fastcc void @gpu_mcol(i32 noundef %142) #19
  br label %143

143:                                              ; preds = %141, %140
  %144 = load float, ptr %14, align 4, !tbaa !40
  %145 = load float, ptr %6, align 4, !tbaa !40
  %146 = load float, ptr %18, align 4, !tbaa !40
  %147 = call float @llvm.fmuladd.f32(float %144, float %145, float %146)
  %148 = load float, ptr %15, align 4, !tbaa !40
  %149 = load float, ptr %72, align 4, !tbaa !40
  %150 = load float, ptr %19, align 4, !tbaa !40
  %151 = call float @llvm.fmuladd.f32(float %148, float %149, float %150)
  %152 = load float, ptr %73, align 4, !tbaa !40
  call void @glVertex3f(float noundef %147, float noundef %151, float noundef %152) #20
  br i1 %67, label %153, label %155

153:                                              ; preds = %143
  %154 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !47
  call void %154(i32 noundef %9, ptr noundef nonnull %66) #20
  br label %156

155:                                              ; preds = %143
  call void @glTexCoord2fv(ptr noundef nonnull %66) #20
  br label %156

156:                                              ; preds = %155, %153
  br i1 %68, label %159, label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %74, align 4, !tbaa !48
  call fastcc void @gpu_mcol(i32 noundef %158) #19
  br label %159

159:                                              ; preds = %157, %156
  %160 = load float, ptr %14, align 4, !tbaa !40
  %161 = load float, ptr %7, align 4, !tbaa !40
  %162 = load float, ptr %18, align 4, !tbaa !40
  %163 = call float @llvm.fmuladd.f32(float %160, float %161, float %162)
  %164 = load float, ptr %15, align 4, !tbaa !40
  %165 = load float, ptr %75, align 4, !tbaa !40
  %166 = load float, ptr %19, align 4, !tbaa !40
  %167 = call float @llvm.fmuladd.f32(float %164, float %165, float %166)
  %168 = load float, ptr %76, align 4, !tbaa !40
  call void @glVertex3f(float noundef %163, float noundef %167, float noundef %168) #20
  br i1 %32, label %201, label %169

169:                                              ; preds = %159
  %170 = load float, ptr %12, align 4, !tbaa !40
  %171 = load float, ptr %14, align 4, !tbaa !40
  %172 = load float, ptr %16, align 4, !tbaa !40
  %173 = load float, ptr %13, align 4, !tbaa !40
  %174 = load float, ptr %15, align 4, !tbaa !40
  %175 = load float, ptr %17, align 4, !tbaa !40
  %176 = load <2 x float>, ptr %77, align 8, !tbaa !40
  %177 = insertelement <2 x float> poison, float %170, i64 0
  %178 = insertelement <2 x float> %177, float %173, i64 1
  %179 = fsub <2 x float> %176, %178
  %180 = insertelement <2 x float> poison, float %171, i64 0
  %181 = insertelement <2 x float> %180, float %174, i64 1
  %182 = insertelement <2 x float> poison, float %172, i64 0
  %183 = insertelement <2 x float> %182, float %175, i64 1
  %184 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %179, <2 x float> %181, <2 x float> %183)
  store <2 x float> %184, ptr %78, align 8, !tbaa !40
  br i1 %67, label %185, label %187

185:                                              ; preds = %169
  %186 = load ptr, ptr @__glewVertexAttrib2fvARB, align 8, !tbaa !47
  call void %186(i32 noundef %9, ptr noundef nonnull %78) #20
  br label %188

187:                                              ; preds = %169
  call void @glTexCoord2fv(ptr noundef nonnull %78) #20
  br label %188

188:                                              ; preds = %187, %185
  br i1 %68, label %191, label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %79, align 4, !tbaa !48
  call fastcc void @gpu_mcol(i32 noundef %190) #19
  br label %191

191:                                              ; preds = %189, %188
  %192 = load float, ptr %14, align 4, !tbaa !40
  %193 = load float, ptr %8, align 4, !tbaa !40
  %194 = load float, ptr %18, align 4, !tbaa !40
  %195 = call float @llvm.fmuladd.f32(float %192, float %193, float %194)
  %196 = load float, ptr %15, align 4, !tbaa !40
  %197 = load float, ptr %80, align 4, !tbaa !40
  %198 = load float, ptr %19, align 4, !tbaa !40
  %199 = call float @llvm.fmuladd.f32(float %196, float %197, float %198)
  %200 = load float, ptr %81, align 4, !tbaa !40
  call void @glVertex3f(float noundef %195, float noundef %199, float noundef %200) #20
  br label %201

201:                                              ; preds = %191, %159
  call void @glEnd() #20
  %202 = load float, ptr %20, align 4, !tbaa !40
  call void @glTranslatef(float noundef %202, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %203 = load float, ptr %20, align 4, !tbaa !40
  %204 = fsub float %84, %203
  br label %205

205:                                              ; preds = %201, %88, %87
  %206 = phi float [ 0.000000e+00, %87 ], [ %89, %88 ], [ %204, %201 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #18
  %207 = load i64, ptr %11, align 8, !tbaa !43
  %208 = icmp ult i64 %207, %31
  br i1 %208, label %82, label %209

209:                                              ; preds = %205
  call void @glPopMatrix() #20
  call void @BKE_image_release_ibuf(ptr noundef nonnull %28, ptr noundef %60, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %210

210:                                              ; preds = %209, %26, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !50 {
  %5 = tail call fastcc float @max_fff(float noundef %0, float noundef %1, float noundef %2) #19
  %6 = tail call fastcc float @max_ff(float noundef %5, float noundef %3) #19
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !51 {
  %5 = tail call fastcc float @min_fff(float noundef %0, float noundef %1, float noundef %2) #19
  %6 = tail call fastcc float @min_ff(float noundef %5, float noundef %3) #19
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !52 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !53 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_image_get_first_ibuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @matrixGlyph(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_and_size_safe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexCoord2fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_mcol(i32 noundef %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = lshr i32 %0, 8
  %3 = trunc i32 %2 to i8
  %4 = lshr i32 %0, 16
  %5 = trunc i32 %4 to i8
  %6 = lshr i32 %0, 24
  %7 = trunc i32 %6 to i8
  tail call void @glColor3ub(i8 noundef zeroext %7, i8 noundef zeroext %5, i8 noundef zeroext %3) #20
  ret void
}

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_set_gpu_mipmapping(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !55
  %3 = icmp ne i32 %0, 0
  %4 = load i8, ptr @__GLEW_EXT_framebuffer_object, align 1
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = zext i1 %6 to i32
  store i32 %7, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !55
  %8 = icmp eq i32 %2, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @GPU_free_images() #19
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_images() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !57
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @GPU_free_image(ptr noundef nonnull %8) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !60

11:                                               ; preds = %7, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_set_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !61
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @GPU_free_images() #19
  store i32 %4, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !61
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_set_linear_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !62
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @GPU_free_images() #19
  store i32 %4, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !62
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_mipmap() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !61
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_linear_mipmap() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !62
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_set_anisotropic(float noundef %0) local_unnamed_addr #0 {
  %2 = load float, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !63
  %3 = fcmp une float %2, %0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  tail call void @GPU_free_images() #19
  %5 = fcmp ogt float %0, 3.404700e+04
  %6 = select i1 %5, float 3.404700e+04, float %0
  store float %6, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !63
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @GPU_get_anisotropic() local_unnamed_addr #5 {
  %1 = load float, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 14), align 8, !tbaa !63
  ret float %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_clear_tpage(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !64
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !64
  store i32 0, ptr @GTS, align 8, !tbaa !65
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !66
  %7 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !67
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @glMatrixMode(i32 noundef 5890) #20
  tail call void @glLoadIdentity() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  br label %10

10:                                               ; preds = %9, %6
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !67
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !68
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !69
  store i32 -1, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !70
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glDisable(i32 noundef 3553) #20
  tail call void @glDisable(i32 noundef 3168) #20
  tail call void @glDisable(i32 noundef 3169) #20
  tail call void @glDisable(i32 noundef 3008) #20
  br label %11

11:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_verify_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  store ptr %0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 8), align 8, !tbaa !71
  %7 = icmp ne ptr %0, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !72
  %11 = and i16 %10, 3
  %12 = icmp ne i16 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  %14 = and i16 %10, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !77
  br label %21

19:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !78
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !79
  %20 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  store i32 %20, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !80
  br label %30

21:                                               ; preds = %8, %16
  %22 = phi i32 [ %2, %8 ], [ %18, %16 ]
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  store i32 %23, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !80
  %24 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %25 = load i16, ptr %24, align 4, !tbaa !81
  %26 = sext i16 %25 to i32
  store i32 %26, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !78
  %27 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %28 = load i16, ptr %27, align 2, !tbaa !82
  %29 = sext i16 %28 to i32
  store i32 %29, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !79
  br label %30

30:                                               ; preds = %19, %21
  %31 = phi i32 [ %29, %21 ], [ 0, %19 ]
  %32 = phi i32 [ %26, %21 ], [ 0, %19 ]
  %33 = phi i32 [ %13, %21 ], [ 0, %19 ]
  %34 = phi i32 [ %23, %21 ], [ %20, %19 ]
  %35 = icmp ne i8 %3, 0
  %36 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8
  %37 = icmp eq ptr %36, %0
  %38 = select i1 %35, i1 %37, i1 false
  %39 = load i32, ptr @GTS, align 8
  %40 = icmp eq i32 %39, %34
  %41 = select i1 %38, i1 %40, i1 false
  %42 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !67
  %43 = icmp eq i32 %33, %42
  %44 = select i1 %41, i1 %43, i1 false
  %45 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8
  %46 = icmp eq i32 %45, %32
  %47 = select i1 %44, i1 %46, i1 false
  %48 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8
  %49 = icmp eq i32 %48, %31
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = zext i1 %7 to i32
  br label %330

53:                                               ; preds = %30
  %54 = icmp eq i32 %33, %42
  %55 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8
  %56 = icmp eq i32 %55, %32
  %57 = select i1 %54, i1 %56, i1 false
  %58 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8
  %59 = icmp eq i32 %58, %31
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %75, label %61

61:                                               ; preds = %53
  tail call void @glMatrixMode(i32 noundef 5890) #20
  tail call void @glLoadIdentity() #20
  br i1 %7, label %62, label %74

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %64 = load i16, ptr %63, align 8, !tbaa !72
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %69 = load i16, ptr %68, align 4, !tbaa !81
  %70 = sitofp i16 %69 to float
  %71 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %72 = load i16, ptr %71, align 2, !tbaa !82
  %73 = sitofp i16 %72 to float
  tail call void @glScalef(float noundef %70, float noundef %73, float noundef 1.000000e+00) #20
  br label %74

74:                                               ; preds = %67, %62, %61
  tail call void @glMatrixMode(i32 noundef 5888) #20
  br label %75

75:                                               ; preds = %53, %74
  %76 = icmp eq ptr %0, null
  br i1 %76, label %330, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 9
  %79 = load i16, ptr %78, align 4, !tbaa !83
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %330, label %81

81:                                               ; preds = %77
  %82 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %330, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !84
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %84
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 83), align 8, !tbaa !88
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 23
  %93 = load i32, ptr %92, align 4, !tbaa !92
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @IMB_rect_from_float(ptr noundef nonnull %82) #20
  br label %97

97:                                               ; preds = %88, %91, %96
  %98 = phi i8 [ 0, %96 ], [ 0, %91 ], [ 1, %88 ]
  %99 = icmp eq i8 %5, 0
  %100 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !93
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @IMB_rect_from_float(ptr noundef nonnull %82) #20
  br label %104

104:                                              ; preds = %97, %103, %84
  %105 = phi i8 [ %98, %103 ], [ %98, %97 ], [ 0, %84 ]
  %106 = phi i1 [ %99, %103 ], [ %99, %97 ], [ false, %84 ]
  %107 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %108 = load i16, ptr %107, align 8, !tbaa !72
  %109 = and i16 %108, 64
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  tail call void @GPU_free_image(ptr noundef nonnull %0) #19
  %112 = load i16, ptr %107, align 8, !tbaa !72
  %113 = and i16 %112, -65
  store i16 %113, ptr %107, align 8, !tbaa !72
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %217, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call fastcc void @gpu_make_repbind(ptr noundef nonnull %0) #19
  br label %122

122:                                              ; preds = %121, %117
  %123 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4
  %124 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %125 = load i16, ptr %124, align 2, !tbaa !95
  %126 = sext i16 %125 to i32
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !80
  br label %129

129:                                              ; preds = %128, %122
  %130 = phi i32 [ 0, %128 ], [ %123, %122 ]
  %131 = load ptr, ptr %118, align 8, !tbaa !94
  %132 = icmp eq ptr %131, null
  %133 = sext i32 %130 to i64
  %134 = getelementptr inbounds i32, ptr %131, i64 %133
  %135 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %136 = select i1 %132, ptr %135, ptr %134
  %137 = load i32, ptr %136, align 4, !tbaa !48
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %256

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !96
  %142 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %143 = load i16, ptr %142, align 4, !tbaa !81
  %144 = sext i16 %143 to i32
  %145 = sdiv i32 %141, %144
  %146 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !97
  %148 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %149 = load i16, ptr %148, align 2, !tbaa !82
  %150 = sext i16 %149 to i32
  %151 = sdiv i32 %147, %150
  %152 = mul nsw i32 %150, %144
  %153 = icmp slt i32 %130, %152
  br i1 %153, label %156, label %154

154:                                              ; preds = %139
  %155 = add nsw i32 %152, -1
  store i32 %155, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !80
  br label %156

156:                                              ; preds = %154, %139
  %157 = phi i32 [ %155, %154 ], [ %130, %139 ]
  %158 = sdiv i32 %157, %144
  %159 = mul i32 %158, %144
  %160 = srem i32 %157, %144
  %161 = shl i32 %145, 16
  %162 = ashr exact i32 %161, 16
  %163 = mul i32 %160, %145
  %164 = shl i32 %151, 16
  %165 = ashr exact i32 %164, 16
  %166 = mul i32 %158, %151
  %167 = icmp eq i8 %105, 0
  br i1 %167, label %205, label %168

168:                                              ; preds = %156
  br i1 %106, label %169, label %194

169:                                              ; preds = %168
  %170 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %171 = mul nsw i32 %147, %141
  %172 = sext i32 %171 to i64
  %173 = shl nsw i64 %172, 4
  %174 = tail call ptr %170(i64 noundef %173, ptr noundef nonnull @.str) #20
  %175 = load ptr, ptr %85, align 8, !tbaa !84
  %176 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 5
  %177 = load i32, ptr %176, align 4, !tbaa !98
  %178 = load i32, ptr %140, align 8, !tbaa !96
  %179 = load i32, ptr %146, align 4, !tbaa !97
  tail call void @IMB_buffer_float_from_float(ptr noundef %174, ptr noundef %175, i32 noundef %177, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %178, i32 noundef %179, i32 noundef %178, i32 noundef %178) #20
  %180 = load i32, ptr %140, align 8, !tbaa !96
  %181 = load i32, ptr %146, align 4, !tbaa !97
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %174, i32 noundef %180, i32 noundef %181) #20
  %182 = load i32, ptr %140, align 8, !tbaa !96
  %183 = load i32, ptr %146, align 4, !tbaa !97
  tail call void @IMB_buffer_float_clamp(ptr noundef %174, i32 noundef %182, i32 noundef %183) #20
  %184 = shl i32 %166, 16
  %185 = ashr exact i32 %184, 16
  %186 = load i32, ptr %140, align 8, !tbaa !96
  %187 = mul nsw i32 %186, %185
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, ptr %174, i64 %188
  %190 = shl i32 %163, 16
  %191 = ashr exact i32 %190, 16
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, ptr %189, i64 %192
  br label %247

194:                                              ; preds = %168
  %195 = load ptr, ptr %85, align 8, !tbaa !84
  %196 = shl i32 %166, 16
  %197 = ashr exact i32 %196, 16
  %198 = mul nsw i32 %197, %141
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, ptr %195, i64 %199
  %201 = shl i32 %163, 16
  %202 = ashr exact i32 %201, 16
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, ptr %200, i64 %203
  br label %247

205:                                              ; preds = %156
  %206 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 8
  %207 = load ptr, ptr %206, align 8, !tbaa !93
  %208 = shl i32 %166, 16
  %209 = ashr exact i32 %208, 16
  %210 = mul nsw i32 %209, %141
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, ptr %207, i64 %211
  %213 = shl i32 %163, 16
  %214 = ashr exact i32 %213, 16
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, ptr %212, i64 %215
  br label %247

217:                                              ; preds = %114
  %218 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %219 = load i32, ptr %218, align 4, !tbaa !48
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %256

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 2
  %223 = load i32, ptr %222, align 8, !tbaa !96
  %224 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 3
  %225 = load i32, ptr %224, align 4, !tbaa !97
  %226 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 8
  %227 = load ptr, ptr %226, align 8, !tbaa !93
  %228 = icmp eq i8 %105, 0
  br i1 %228, label %247, label %229

229:                                              ; preds = %221
  br i1 %106, label %230, label %245

230:                                              ; preds = %229
  %231 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %232 = mul nsw i32 %225, %223
  %233 = sext i32 %232 to i64
  %234 = shl nsw i64 %233, 4
  %235 = tail call ptr %231(i64 noundef %234, ptr noundef nonnull @.str) #20
  %236 = load ptr, ptr %85, align 8, !tbaa !84
  %237 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 5
  %238 = load i32, ptr %237, align 4, !tbaa !98
  %239 = load i32, ptr %222, align 8, !tbaa !96
  %240 = load i32, ptr %224, align 4, !tbaa !97
  tail call void @IMB_buffer_float_from_float(ptr noundef %235, ptr noundef %236, i32 noundef %238, i32 noundef 2, i32 noundef 1, i8 noundef zeroext 1, i32 noundef %239, i32 noundef %240, i32 noundef %239, i32 noundef %239) #20
  %241 = load i32, ptr %222, align 8, !tbaa !96
  %242 = load i32, ptr %224, align 4, !tbaa !97
  tail call void @IMB_buffer_float_unpremultiply(ptr noundef %235, i32 noundef %241, i32 noundef %242) #20
  %243 = load i32, ptr %222, align 8, !tbaa !96
  %244 = load i32, ptr %224, align 4, !tbaa !97
  tail call void @IMB_buffer_float_clamp(ptr noundef %235, i32 noundef %243, i32 noundef %244) #20
  br label %247

245:                                              ; preds = %229
  %246 = load ptr, ptr %85, align 8, !tbaa !84
  br label %247

247:                                              ; preds = %230, %245, %221, %169, %194, %205
  %248 = phi ptr [ %227, %221 ], [ %227, %245 ], [ %227, %230 ], [ %216, %205 ], [ null, %194 ], [ null, %169 ]
  %249 = phi ptr [ null, %221 ], [ %246, %245 ], [ %235, %230 ], [ null, %205 ], [ %204, %194 ], [ %193, %169 ]
  %250 = phi ptr [ null, %221 ], [ null, %245 ], [ %235, %230 ], [ null, %205 ], [ null, %194 ], [ %174, %169 ]
  %251 = phi i32 [ %225, %221 ], [ %225, %245 ], [ %225, %230 ], [ %165, %205 ], [ %165, %194 ], [ %165, %169 ]
  %252 = phi i32 [ %223, %221 ], [ %223, %245 ], [ %223, %230 ], [ %162, %205 ], [ %162, %194 ], [ %162, %169 ]
  %253 = phi ptr [ %218, %221 ], [ %218, %245 ], [ %218, %230 ], [ %136, %205 ], [ %136, %194 ], [ %136, %169 ]
  %254 = load i32, ptr %253, align 4, !tbaa !48
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %129, %217, %247
  %257 = phi ptr [ %253, %247 ], [ %218, %217 ], [ %136, %129 ]
  %258 = phi i32 [ %254, %247 ], [ %219, %217 ], [ %137, %129 ]
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %258) #20
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %82, ptr noundef null) #20
  %259 = load i32, ptr %257, align 4, !tbaa !48
  br label %330

260:                                              ; preds = %247
  %261 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %303, label %263

263:                                              ; preds = %260
  %264 = icmp eq i8 %105, 0
  %265 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %266 = mul nsw i32 %252, %251
  %267 = sext i32 %266 to i64
  %268 = shl nsw i64 %267, 2
  %269 = tail call ptr %265(i64 noundef %268, ptr noundef nonnull @.str.1) #20
  %270 = icmp sgt i32 %251, 0
  br i1 %264, label %287, label %271

271:                                              ; preds = %263
  br i1 %270, label %272, label %303

272:                                              ; preds = %271
  %273 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 2
  %274 = sext i32 %252 to i64
  %275 = shl nsw i64 %274, 2
  %276 = zext nneg i32 %251 to i64
  br label %277

277:                                              ; preds = %272, %277
  %278 = phi i64 [ 0, %272 ], [ %285, %277 ]
  %279 = load i32, ptr %273, align 8, !tbaa !96
  %280 = sext i32 %279 to i64
  %281 = mul nsw i64 %278, %280
  %282 = getelementptr inbounds float, ptr %249, i64 %281
  %283 = mul nsw i64 %278, %274
  %284 = getelementptr inbounds float, ptr %269, i64 %283
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %284, ptr align 4 %282, i64 %275, i1 false)
  %285 = add nuw nsw i64 %278, 1
  %286 = icmp eq i64 %285, %276
  br i1 %286, label %303, label %277, !llvm.loop !99

287:                                              ; preds = %263
  br i1 %270, label %288, label %303

288:                                              ; preds = %287
  %289 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 2
  %290 = sext i32 %252 to i64
  %291 = shl nsw i64 %290, 2
  %292 = zext nneg i32 %251 to i64
  br label %293

293:                                              ; preds = %288, %293
  %294 = phi i64 [ 0, %288 ], [ %301, %293 ]
  %295 = load i32, ptr %289, align 8, !tbaa !96
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %294, %296
  %298 = getelementptr inbounds i32, ptr %248, i64 %297
  %299 = mul nsw i64 %294, %290
  %300 = getelementptr inbounds i32, ptr %269, i64 %299
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %300, ptr align 4 %298, i64 %291, i1 false)
  %301 = add nuw nsw i64 %294, 1
  %302 = icmp eq i64 %301, %292
  br i1 %302, label %303, label %293, !llvm.loop !100

303:                                              ; preds = %277, %293, %271, %287, %260
  %304 = phi ptr [ null, %260 ], [ %269, %287 ], [ null, %271 ], [ %269, %293 ], [ null, %277 ]
  %305 = phi ptr [ %248, %260 ], [ %269, %287 ], [ %248, %271 ], [ %269, %293 ], [ %248, %277 ]
  %306 = phi ptr [ null, %260 ], [ null, %287 ], [ %269, %271 ], [ null, %293 ], [ %269, %277 ]
  %307 = phi ptr [ %249, %260 ], [ %249, %287 ], [ %269, %271 ], [ %249, %293 ], [ %269, %277 ]
  tail call void @GPU_create_gl_tex(ptr noundef nonnull %253, ptr noundef %305, ptr noundef %307, i32 noundef %252, i32 noundef %251, i8 noundef zeroext %4, i8 noundef zeroext %105, ptr noundef %0) #19
  %308 = load i32, ptr %253, align 4, !tbaa !48
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %310

310:                                              ; preds = %303
  %311 = icmp eq i8 %5, 0
  %312 = load i16, ptr %107, align 8, !tbaa !72
  %313 = and i16 %312, -129
  %314 = select i1 %311, i16 0, i16 128
  %315 = or disjoint i16 %313, %314
  store i16 %315, ptr %107, align 8, !tbaa !72
  br label %316

316:                                              ; preds = %310, %303
  %317 = icmp eq ptr %304, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %316
  %319 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %319(ptr noundef nonnull %304) #20
  br label %320

320:                                              ; preds = %318, %316
  %321 = icmp eq ptr %306, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %320
  %323 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %323(ptr noundef nonnull %306) #20
  br label %324

324:                                              ; preds = %322, %320
  %325 = icmp eq ptr %250, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %324
  %327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %327(ptr noundef nonnull %250) #20
  br label %328

328:                                              ; preds = %326, %324
  tail call void @BKE_image_release_ibuf(ptr noundef %0, ptr noundef nonnull %82, ptr noundef null) #20
  %329 = load i32, ptr %253, align 4, !tbaa !48
  br label %330

330:                                              ; preds = %81, %75, %77, %328, %256, %51
  %331 = phi i32 [ %52, %51 ], [ %259, %256 ], [ %329, %328 ], [ 0, %77 ], [ 0, %75 ], [ 0, %81 ]
  ret i32 %331
}

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_thread_is_main() #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @gpu_queue_image_for_free(ptr noundef %0) #19
  br label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %7 = load i32, ptr %6, align 4, !tbaa !101
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @glDeleteTextures(i32 noundef 1, ptr noundef nonnull %6) #20
  store i32 0, ptr %6, align 4, !tbaa !101
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #20
  store ptr null, ptr %11, align 8, !tbaa !102
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %21 = load i16, ptr %20, align 2, !tbaa !95
  %22 = sext i16 %21 to i32
  tail call void @glDeleteTextures(i32 noundef %22, ptr noundef nonnull %17) #20
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %24 = load ptr, ptr %16, align 8, !tbaa !94
  tail call void %23(ptr noundef %24) #20
  store ptr null, ptr %16, align 8, !tbaa !94
  br label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %27 = load i16, ptr %26, align 8, !tbaa !72
  %28 = and i16 %27, -137
  store i16 %28, ptr %26, align 8, !tbaa !72
  br label %29

29:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_make_repbind(ptr noundef %0) unnamed_addr #0 !PGOFuncName !103 {
  %2 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  %10 = load i16, ptr %9, align 2, !tbaa !95
  %11 = sext i16 %10 to i32
  tail call void @glDeleteTextures(i32 noundef %11, ptr noundef nonnull %6) #20
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %13 = load ptr, ptr %5, align 8, !tbaa !94
  tail call void %12(ptr noundef %13) #20
  store ptr null, ptr %5, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %15 = load i16, ptr %14, align 8, !tbaa !72
  %16 = and i16 %15, -9
  store i16 %16, ptr %14, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %8, %4
  %18 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %19 = load i16, ptr %18, align 4, !tbaa !81
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %21 = load i16, ptr %20, align 2, !tbaa !82
  %22 = mul i16 %21, %19
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 15
  store i16 %22, ptr %23, align 2, !tbaa !95
  %24 = icmp sgt i16 %22, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %27 = zext nneg i16 %22 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.6) #20
  store ptr %29, ptr %5, align 8, !tbaa !94
  br label %30

30:                                               ; preds = %25, %17
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null) #20
  br label %31

31:                                               ; preds = %1, %30
  ret void
}

; Function Attrs: optsize
declare void @IMB_buffer_float_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_buffer_float_unpremultiply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_buffer_float_clamp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_create_gl_tex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @GPU_non_power_of_two_support() #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_power_of_2_resolution(i32 noundef %3, i32 noundef %4) #19, !range !104
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %8
  %15 = tail call fastcc zeroext i8 @is_over_resolution_limit(i32 noundef %3, i32 noundef %4) #19, !range !104
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14, %11
  %18 = tail call fastcc i32 @smaller_power_of_2_limit(i32 noundef %3) #19
  %19 = tail call fastcc i32 @smaller_power_of_2_limit(i32 noundef %4) #19
  %20 = icmp eq i8 %6, 0
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %22 = mul nsw i32 %19, %18
  %23 = sext i32 %22 to i64
  br i1 %20, label %28, label %24

24:                                               ; preds = %17
  %25 = shl nsw i64 %23, 4
  %26 = tail call ptr %21(i64 noundef %25, ptr noundef nonnull @.str.2) #20
  %27 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %3, i32 noundef %4, i32 noundef 5126, ptr noundef %2, i32 noundef %18, i32 noundef %19, i32 noundef 5126, ptr noundef %26) #20
  br label %32

28:                                               ; preds = %17
  %29 = shl nsw i64 %23, 2
  %30 = tail call ptr %21(i64 noundef %29, ptr noundef nonnull @.str.3) #20
  %31 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %3, i32 noundef %4, i32 noundef 5121, ptr noundef %1, i32 noundef %18, i32 noundef %19, i32 noundef 5121, ptr noundef %30) #20
  br label %32

32:                                               ; preds = %24, %28, %14
  %33 = phi i32 [ %19, %24 ], [ %19, %28 ], [ %4, %14 ]
  %34 = phi i32 [ %18, %24 ], [ %18, %28 ], [ %3, %14 ]
  %35 = phi ptr [ null, %24 ], [ %30, %28 ], [ null, %14 ]
  %36 = phi ptr [ %26, %24 ], [ null, %28 ], [ null, %14 ]
  %37 = phi ptr [ %26, %24 ], [ %2, %28 ], [ %2, %14 ]
  %38 = phi ptr [ %1, %24 ], [ %30, %28 ], [ %1, %14 ]
  tail call void @glGenTextures(i32 noundef 1, ptr noundef %0) #20
  %39 = load i32, ptr %0, align 4, !tbaa !48
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %39) #20
  %40 = tail call i32 @GPU_get_mipmap() #19, !range !105
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne i8 %5, 0
  %43 = and i1 %42, %41
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = icmp eq i8 %6, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32859, i32 noundef %34, i32 noundef %33, i32 noundef 0, i32 noundef 6408, i32 noundef 5126, ptr noundef %37) #20
  br label %48

47:                                               ; preds = %44
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %34, i32 noundef %33, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %38) #20
  br label %48

48:                                               ; preds = %47, %46
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #20
  %49 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 1) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %49) #20
  br label %71

50:                                               ; preds = %32
  %51 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4, !tbaa !55
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq i8 %6, 0
  br i1 %52, label %58, label %54

54:                                               ; preds = %50
  br i1 %53, label %56, label %55

55:                                               ; preds = %54
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32859, i32 noundef %34, i32 noundef %33, i32 noundef 0, i32 noundef 6408, i32 noundef 5126, ptr noundef %37) #20
  br label %57

56:                                               ; preds = %54
  tail call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %34, i32 noundef %33, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %38) #20
  br label %57

57:                                               ; preds = %56, %55
  tail call fastcc void @gpu_generate_mipmap() #19
  br label %63

58:                                               ; preds = %50
  br i1 %53, label %61, label %59

59:                                               ; preds = %58
  %60 = tail call i32 @gluBuild2DMipmaps(i32 noundef 3553, i32 noundef 32859, i32 noundef %34, i32 noundef %33, i32 noundef 6408, i32 noundef 5126, ptr noundef %37) #20
  br label %63

61:                                               ; preds = %58
  %62 = tail call i32 @gluBuild2DMipmaps(i32 noundef 3553, i32 noundef 6408, i32 noundef %34, i32 noundef %33, i32 noundef 6408, i32 noundef 5121, ptr noundef %38) #20
  br label %63

63:                                               ; preds = %59, %61, %57
  %64 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 0) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef %64) #20
  %65 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 1) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %65) #20
  %66 = icmp eq ptr %7, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Image, ptr %7, i64 0, i32 14
  %69 = load i16, ptr %68, align 8, !tbaa !72
  %70 = or i16 %69, 8
  store i16 %70, ptr %68, align 8, !tbaa !72
  br label %71

71:                                               ; preds = %63, %67, %48
  %72 = load i8, ptr @__GLEW_EXT_texture_filter_anisotropic, align 1, !tbaa !107
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call float @GPU_get_anisotropic() #19
  tail call void @glTexParameterf(i32 noundef 3553, i32 noundef 34046, float noundef %75) #20
  br label %76

76:                                               ; preds = %74, %71
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #20
  %77 = icmp eq ptr %35, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %79(ptr noundef nonnull %35) #20
  br label %80

80:                                               ; preds = %78, %76
  %81 = icmp eq ptr %36, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %83(ptr noundef nonnull %36) #20
  br label %84

84:                                               ; preds = %82, %80
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @is_power_of_2_resolution(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !108 {
  %3 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #19, !range !105
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %1) #19, !range !105
  %7 = trunc i32 %6 to i8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i8 [ 0, %2 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_over_resolution_limit(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !109 {
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !110
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = sext i16 %3 to i32
  %7 = tail call i32 @GPU_max_texture_size() #20
  %8 = tail call fastcc i32 @min_ii(i32 noundef %6, i32 noundef %7) #19
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @GPU_max_texture_size() #20
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %8, %5 ], [ %10, %9 ]
  %13 = icmp slt i32 %12, %0
  %14 = icmp slt i32 %12, %1
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @smaller_power_of_2_limit(i32 noundef %0) unnamed_addr #0 !PGOFuncName !111 {
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 72), align 2, !tbaa !110
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = sext i16 %2 to i32
  %6 = tail call i32 @GPU_max_texture_size() #20
  %7 = tail call fastcc i32 @min_ii(i32 noundef %5, i32 noundef %6) #19
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @GPU_max_texture_size() #20
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %7, %4 ], [ %9, %8 ]
  %12 = icmp slt i32 %11, %0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @power_of_2_min_i(i32 noundef %0) #19
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi i32 [ %14, %13 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @gluScaleImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @gpu_get_mipmap_filter(i32 noundef %0) unnamed_addr #5 !PGOFuncName !112 {
  %2 = icmp eq i32 %0, 0
  %3 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 11), align 4, !tbaa !62
  br i1 %2, label %10, label %4

4:                                                ; preds = %1
  %5 = icmp ne i32 %3, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = select i1 %8, i32 9729, i32 9728
  br label %16

10:                                               ; preds = %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !61
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 9728, i32 9985
  br label %16

16:                                               ; preds = %12, %10, %4
  %17 = phi i32 [ %9, %4 ], [ 9987, %10 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_generate_mipmap() unnamed_addr #0 !PGOFuncName !113 {
  %1 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 65280, i32 noundef 16711680) #20
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = tail call zeroext i8 @glIsEnabled(i32 noundef 3553) #20
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @glEnable(i32 noundef 3553) #20
  br label %9

9:                                                ; preds = %4, %8, %0
  %10 = phi i32 [ %6, %4 ], [ 0, %8 ], [ 0, %0 ]
  %11 = load ptr, ptr @__glewGenerateMipmapEXT, align 8, !tbaa !47
  tail call void %11(i32 noundef 3553) #20
  %12 = icmp ne i32 %10, 0
  %13 = or i1 %3, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @glDisable(i32 noundef 3553) #20
  br label %15

15:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: optsize
declare i32 @gluBuild2DMipmaps(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexParameterf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @GPU_upload_dxt_texture(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_create_gl_tex_compressed(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = trunc i32 %4 to i8
  tail call void @GPU_create_gl_tex(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %8, i8 noundef zeroext 0, ptr noundef %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GPU_set_tpage(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @GPU_clear_tpage(i8 noundef zeroext 0) #19
  br label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 16), align 8, !tbaa !64
  tail call fastcc void @gpu_verify_alpha_blend(i32 noundef %2) #19
  tail call fastcc void @gpu_verify_reflection(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.MTFace, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 4, !tbaa !114
  %11 = sext i16 %10 to i32
  %12 = trunc i32 %1 to i8
  %13 = tail call i32 @GPU_verify_image(ptr noundef %8, ptr noundef null, i32 noundef %11, i8 noundef zeroext 1, i8 noundef zeroext %12, i8 noundef zeroext 0) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 1), align 4, !tbaa !80
  store i32 %16, ptr @GTS, align 8, !tbaa !65
  %17 = load ptr, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 8), align 8, !tbaa !71
  store ptr %17, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !66
  %18 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  store i32 %18, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !67
  %19 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 5), align 4, !tbaa !78
  store i32 %19, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !68
  %20 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 7), align 4, !tbaa !79
  store i32 %20, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !69
  tail call void @glEnable(i32 noundef 3553) #20
  tail call fastcc void @gpu_verify_repeat(ptr noundef %8) #19
  br label %22

21:                                               ; preds = %6
  tail call void @glDisable(i32 noundef 3553) #20
  store i32 0, ptr @GTS, align 8, !tbaa !65
  store ptr null, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 9), align 8, !tbaa !66
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 2), align 8, !tbaa !67
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 4), align 8, !tbaa !68
  store i32 0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 6), align 8, !tbaa !69
  br label %22

22:                                               ; preds = %15, %21, %5
  %23 = phi i32 [ 0, %5 ], [ 1, %15 ], [ 0, %21 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_verify_alpha_blend(i32 noundef %0) unnamed_addr #0 !PGOFuncName !115 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !70
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gpu_set_alpha_blend(i32 noundef %0) #19
  store i32 %0, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 13), align 4, !tbaa !70
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_verify_reflection(ptr noundef readonly %0) unnamed_addr #0 !PGOFuncName !116 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !117
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @glTexGeni(i32 noundef 8192, i32 noundef 9472, i32 noundef 9218) #20
  tail call void @glTexGeni(i32 noundef 8193, i32 noundef 9472, i32 noundef 9218) #20
  tail call void @glEnable(i32 noundef 3168) #20
  tail call void @glEnable(i32 noundef 3169) #20
  br label %10

9:                                                ; preds = %3, %1
  tail call void @glDisable(i32 noundef 3168) #20
  tail call void @glDisable(i32 noundef 3169) #20
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_verify_repeat(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %3 = load i16, ptr %2, align 8, !tbaa !72
  %4 = and i16 %3, 16
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i32 10497, i32 33071
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef %6) #20
  %7 = load i16, ptr %2, align 8, !tbaa !72
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  %10 = select i1 %9, i32 10497, i32 33071
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef %10) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_paint_set_mipmap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 10), align 8, !tbaa !61
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %46, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 12), align 8, !tbaa !119
  %7 = load ptr, ptr @G, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %5, label %31, label %11

11:                                               ; preds = %4
  br i1 %10, label %46, label %12

12:                                               ; preds = %11, %28
  %13 = phi ptr [ %29, %28 ], [ %9, %11 ]
  %14 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.Image, ptr %13, i64 0, i32 14
  %18 = load i16, ptr %17, align 8, !tbaa !72
  br i1 %16, label %26, label %19

19:                                               ; preds = %12
  %20 = and i16 %18, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %15) #20
  %23 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 0) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef %23) #20
  %24 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 1) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %24) #20
  br label %28

25:                                               ; preds = %19
  tail call void @GPU_free_image(ptr noundef nonnull %13) #19
  br label %28

26:                                               ; preds = %12
  %27 = and i16 %18, -9
  store i16 %27, ptr %17, align 8, !tbaa !72
  br label %28

28:                                               ; preds = %26, %25, %22
  %29 = load ptr, ptr %13, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %12, !llvm.loop !120

31:                                               ; preds = %4
  br i1 %10, label %46, label %32

32:                                               ; preds = %31, %43
  %33 = phi ptr [ %44, %43 ], [ %9, %31 ]
  %34 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 20
  %35 = load i32, ptr %34, align 4, !tbaa !101
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %35) #20
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #20
  %38 = tail call fastcc i32 @gpu_get_mipmap_filter(i32 noundef 1) #19, !range !106
  tail call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %38) #20
  br label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Image, ptr %33, i64 0, i32 14
  %41 = load i16, ptr %40, align 8, !tbaa !72
  %42 = and i16 %41, -9
  store i16 %42, ptr %40, align 8, !tbaa !72
  br label %43

43:                                               ; preds = %37, %39
  %44 = load ptr, ptr %33, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !121

46:                                               ; preds = %28, %43, %11, %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_paint_update_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef null) #20
  %10 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = tail call i32 @GPU_get_mipmap() #19, !range !105
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 15), align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 20
  %21 = load i32, ptr %20, align 4, !tbaa !101
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq ptr %9, null
  %24 = select i1 %22, i1 true, i1 %23
  %25 = icmp eq i32 %3, 0
  %26 = or i1 %25, %24
  %27 = icmp eq i32 %4, 0
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %13, %19, %5
  tail call void @GPU_free_image(ptr noundef nonnull %0) #19
  br label %78

30:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %31 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %36 = mul nsw i32 %4, %3
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 4
  %39 = tail call ptr %35(i64 noundef %38, ptr noundef nonnull @.str.4) #20
  %40 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %41 = load i16, ptr %40, align 8, !tbaa !72
  %42 = and i16 %41, 128
  %43 = icmp ne i16 %42, 0
  %44 = zext i1 %43 to i8
  tail call void @IMB_partial_rect_from_float(ptr noundef nonnull %9, ptr noundef %39, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %44) #20
  %45 = tail call fastcc zeroext i8 @GPU_check_scaled_image(ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef %39, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #19, !range !104
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %48(ptr noundef %39) #20
  br label %79

49:                                               ; preds = %34
  %50 = load i32, ptr %20, align 4, !tbaa !101
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %50) #20
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6408, i32 noundef 5126, ptr noundef %39) #20
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %51(ptr noundef %39) #20
  %52 = tail call i32 @GPU_get_mipmap() #19, !range !105
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call fastcc void @gpu_generate_mipmap() #19
  br label %79

55:                                               ; preds = %49
  %56 = load i16, ptr %40, align 8, !tbaa !72
  %57 = and i16 %56, -9
  store i16 %57, ptr %40, align 8, !tbaa !72
  br label %79

58:                                               ; preds = %30
  %59 = tail call fastcc zeroext i8 @GPU_check_scaled_image(ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #19, !range !104
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, ptr %20, align 4, !tbaa !101
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %62) #20
  call void @glGetIntegerv(i32 noundef 3314, ptr noundef nonnull %6) #20
  call void @glGetIntegerv(i32 noundef 3316, ptr noundef nonnull %7) #20
  call void @glGetIntegerv(i32 noundef 3315, ptr noundef nonnull %8) #20
  %63 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !96
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %64) #20
  call void @glPixelStorei(i32 noundef 3316, i32 noundef %1) #20
  call void @glPixelStorei(i32 noundef 3315, i32 noundef %2) #20
  %65 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 6408, i32 noundef 5121, ptr noundef %66) #20
  %67 = load i32, ptr %6, align 4, !tbaa !48
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %67) #20
  %68 = load i32, ptr %7, align 4, !tbaa !48
  call void @glPixelStorei(i32 noundef 3316, i32 noundef %68) #20
  %69 = load i32, ptr %8, align 4, !tbaa !48
  call void @glPixelStorei(i32 noundef 3315, i32 noundef %69) #20
  %70 = call i32 @GPU_get_mipmap() #19, !range !105
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  call fastcc void @gpu_generate_mipmap() #19
  br label %77

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %75 = load i16, ptr %74, align 8, !tbaa !72
  %76 = and i16 %75, -9
  store i16 %76, ptr %74, align 8, !tbaa !72
  br label %77

77:                                               ; preds = %72, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %78

78:                                               ; preds = %77, %29
  call void @BKE_image_release_ibuf(ptr noundef nonnull %0, ptr noundef %9, ptr noundef null) #20
  br label %80

79:                                               ; preds = %58, %54, %55, %47
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %80

80:                                               ; preds = %79, %78
  ret void
}

; Function Attrs: optsize
declare void @IMB_partial_rect_from_float(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @GPU_check_scaled_image(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !122 {
  %8 = tail call i32 @GPU_non_power_of_two_support() #20
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !97
  br i1 %9, label %14, label %17

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @is_power_of_2_resolution(i32 noundef %11, i32 noundef %13) #19, !range !104
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7, %14
  %18 = tail call fastcc zeroext i8 @is_over_resolution_limit(i32 noundef %11, i32 noundef %13) #19, !range !104
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %115, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !96
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %22, %20 ], [ %11, %14 ]
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %26 = tail call fastcc i32 @smaller_power_of_2_limit(i32 noundef %24) #19
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !97
  %29 = tail call fastcc i32 @smaller_power_of_2_limit(i32 noundef %28) #19
  %30 = sitofp i32 %26 to float
  %31 = load i32, ptr %25, align 8, !tbaa !96
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = sitofp i32 %29 to float
  %35 = load i32, ptr %27, align 4, !tbaa !97
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = sitofp i32 %5 to float
  %39 = fmul float %33, %38
  %40 = tail call float @llvm.ceil.f32(float %39)
  %41 = fptosi float %40 to i32
  %42 = sitofp i32 %6 to float
  %43 = fmul float %37, %42
  %44 = tail call float @llvm.ceil.f32(float %43)
  %45 = fptosi float %44 to i32
  %46 = sitofp i32 %3 to float
  %47 = fmul float %33, %46
  %48 = fptosi float %47 to i32
  %49 = sitofp i32 %4 to float
  %50 = fmul float %37, %49
  %51 = fptosi float %50 to i32
  %52 = add nsw i32 %41, %48
  %53 = icmp sgt i32 %52, %26
  %54 = sext i1 %53 to i32
  %55 = add i32 %54, %41
  %56 = add nsw i32 %45, %51
  %57 = icmp sgt i32 %56, %29
  %58 = sext i1 %57 to i32
  %59 = add i32 %58, %45
  %60 = icmp eq ptr %2, null
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %62 = mul nsw i32 %59, %55
  %63 = sext i32 %62 to i64
  br i1 %60, label %70, label %64

64:                                               ; preds = %23
  %65 = shl nsw i64 %63, 4
  %66 = tail call ptr %61(i64 noundef %65, ptr noundef nonnull @.str.2) #20
  %67 = tail call i32 @gluScaleImage(i32 noundef 6408, i32 noundef %5, i32 noundef %6, i32 noundef 5126, ptr noundef nonnull %2, i32 noundef %55, i32 noundef %59, i32 noundef 5126, ptr noundef %66) #20
  %68 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 20
  %69 = load i32, ptr %68, align 4, !tbaa !101
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %69) #20
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %48, i32 noundef %51, i32 noundef %55, i32 noundef %59, i32 noundef 6408, i32 noundef 5126, ptr noundef %66) #20
  br label %105

70:                                               ; preds = %23
  %71 = shl nsw i64 %63, 2
  %72 = tail call ptr %61(i64 noundef %71, ptr noundef nonnull @.str.3) #20
  %73 = fdiv float 1.000000e+00, %33
  %74 = fdiv float 1.000000e+00, %37
  %75 = icmp sgt i32 %55, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = icmp sgt i32 %59, 0
  %78 = zext nneg i32 %55 to i64
  %79 = zext nneg i32 %55 to i64
  %80 = zext nneg i32 %59 to i64
  br label %81

81:                                               ; preds = %76, %99
  %82 = phi i64 [ 0, %76 ], [ %100, %99 ]
  %83 = trunc i64 %82 to i32
  %84 = add i32 %83, %48
  %85 = sitofp i32 %84 to float
  %86 = fmul float %73, %85
  br i1 %77, label %87, label %99

87:                                               ; preds = %81
  %88 = getelementptr inbounds i32, ptr %72, i64 %82
  br label %89

89:                                               ; preds = %87, %89
  %90 = phi i64 [ 0, %87 ], [ %97, %89 ]
  %91 = trunc i64 %90 to i32
  %92 = add i32 %91, %51
  %93 = sitofp i32 %92 to float
  %94 = fmul float %74, %93
  %95 = mul nsw i64 %90, %78
  %96 = getelementptr inbounds i32, ptr %88, i64 %95
  tail call void @bilinear_interpolation_color_wrap(ptr noundef %0, ptr noundef %96, ptr noundef null, float noundef %86, float noundef %94) #20
  %97 = add nuw nsw i64 %90, 1
  %98 = icmp eq i64 %97, %80
  br i1 %98, label %99, label %89, !llvm.loop !123

99:                                               ; preds = %89, %81
  %100 = add nuw nsw i64 %82, 1
  %101 = icmp eq i64 %100, %79
  br i1 %101, label %102, label %81, !llvm.loop !124

102:                                              ; preds = %99, %70
  %103 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 20
  %104 = load i32, ptr %103, align 4, !tbaa !101
  tail call void @glBindTexture(i32 noundef 3553, i32 noundef %104) #20
  tail call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %48, i32 noundef %51, i32 noundef %55, i32 noundef %59, i32 noundef 6408, i32 noundef 5121, ptr noundef %72) #20
  br label %105

105:                                              ; preds = %102, %64
  %106 = phi ptr [ %72, %102 ], [ %66, %64 ]
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %107(ptr noundef %106) #20
  %108 = tail call i32 @GPU_get_mipmap() #19, !range !105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call fastcc void @gpu_generate_mipmap() #19
  br label %115

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 14
  %113 = load i16, ptr %112, align 8, !tbaa !72
  %114 = and i16 %113, -9
  store i16 %114, ptr %112, align 8, !tbaa !72
  br label %115

115:                                              ; preds = %17, %110, %111
  %116 = phi i8 [ 1, %111 ], [ 1, %110 ], [ 0, %17 ]
  ret i8 %116
}

; Function Attrs: optsize
declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_update_images_framechange() local_unnamed_addr #7 {
  %1 = load ptr, ptr @G, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %0, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 14
  %8 = load i16, ptr %7, align 8, !tbaa !72
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 19
  %13 = load i16, ptr %12, align 2, !tbaa !125
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 16
  %16 = load i16, ptr %15, align 4, !tbaa !81
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 17
  %19 = load i16, ptr %18, align 2, !tbaa !82
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = icmp sgt i32 %21, %14
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  %24 = trunc i32 %21 to i16
  %25 = add i16 %24, -1
  store i16 %25, ptr %12, align 2, !tbaa !125
  %26 = sext i16 %25 to i32
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i32 [ %26, %23 ], [ %14, %11 ]
  %29 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !77
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !77
  %32 = icmp slt i32 %30, %28
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Image, ptr %6, i64 0, i32 18
  %35 = load i16, ptr %34, align 8, !tbaa !126
  %36 = sext i16 %35 to i32
  store i32 %36, ptr %29, align 4, !tbaa !77
  br label %37

37:                                               ; preds = %5, %33, %27
  %38 = load ptr, ptr %6, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !127

40:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @GPU_update_image_time(ptr noundef %0, double noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 24
  %6 = load float, ptr %5, align 8, !tbaa !128
  %7 = fcmp olt float %6, 0.000000e+00
  %8 = select i1 %7, float 0.000000e+00, float %6
  %9 = fptrunc double %1 to float
  %10 = fcmp ogt float %8, %9
  %11 = select i1 %10, float %9, float %8
  %12 = or i1 %7, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store float %11, ptr %5, align 8, !tbaa !128
  br label %14

14:                                               ; preds = %4, %13
  %15 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 14
  %16 = load i16, ptr %15, align 8, !tbaa !72
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 19
  %21 = load i16, ptr %20, align 2, !tbaa !125
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 16
  %24 = load i16, ptr %23, align 4, !tbaa !81
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 17
  %27 = load i16, ptr %26, align 2, !tbaa !82
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %25
  %30 = icmp sgt i32 %29, %22
  br i1 %30, label %35, label %31

31:                                               ; preds = %19
  %32 = trunc i32 %29 to i16
  %33 = add i16 %32, -1
  store i16 %33, ptr %20, align 2, !tbaa !125
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %31, %19
  %36 = phi i32 [ %34, %31 ], [ %22, %19 ]
  %37 = phi i16 [ %33, %31 ], [ %21, %19 ]
  %38 = fsub float %9, %11
  %39 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 26
  %40 = load i16, ptr %39, align 8, !tbaa !129
  %41 = sitofp i16 %40 to float
  %42 = fmul float %38, %41
  %43 = fptosi float %42 to i32
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, %41
  %46 = fadd float %11, %45
  store float %46, ptr %5, align 8, !tbaa !128
  %47 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 13
  %48 = load i32, ptr %47, align 4, !tbaa !77
  %49 = add nsw i32 %48, %43
  %50 = icmp sgt i32 %49, %36
  br i1 %50, label %51, label %62

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 18
  %53 = load i16, ptr %52, align 8, !tbaa !126
  %54 = sext i16 %53 to i32
  %55 = icmp eq i16 %37, %53
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = sub nsw i32 %36, %54
  %58 = add nsw i32 %54, -1
  %59 = sub nsw i32 %49, %36
  %60 = srem i32 %59, %57
  %61 = add nsw i32 %58, %60
  br label %62

62:                                               ; preds = %51, %56, %35
  %63 = phi i32 [ %61, %56 ], [ %49, %35 ], [ %54, %51 ]
  store i32 %63, ptr %47, align 4, !tbaa !77
  br label %64

64:                                               ; preds = %14, %62, %2
  %65 = phi i32 [ 0, %2 ], [ %43, %62 ], [ 0, %14 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_smoke(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !130
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void @GPU_texture_free(ptr noundef nonnull %12) #20
  %15 = load ptr, ptr %7, align 8, !tbaa !133
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ]
  %18 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %17, i64 0, i32 7
  store ptr null, ptr %18, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %17, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  tail call void @GPU_texture_free(ptr noundef nonnull %20) #20
  %23 = load ptr, ptr %7, align 8, !tbaa !133
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %17, %16 ]
  %26 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %25, i64 0, i32 9
  store ptr null, ptr %26, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %25, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !137
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  tail call void @GPU_texture_free(ptr noundef nonnull %28) #20
  %31 = load ptr, ptr %7, align 8, !tbaa !133
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %25, %24 ]
  %34 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 10
  store ptr null, ptr %34, align 8, !tbaa !137
  br label %35

35:                                               ; preds = %32, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_create_smoke(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 7
  store ptr null, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_unused_buffers() local_unnamed_addr #0 {
  %1 = tail call i32 @BLI_thread_is_main() #20
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %24, label %3

3:                                                ; preds = %0
  tail call void @BLI_lock_thread(i32 noundef 5) #20
  %4 = load ptr, ptr @image_free_queue, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.LinkNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = load ptr, ptr @G, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 19
  %14 = tail call i32 @BLI_findindex(ptr noundef nonnull %13, ptr noundef %9) #20
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @GPU_free_image(ptr noundef %9) #19
  br label %17

17:                                               ; preds = %6, %12, %16
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !140

20:                                               ; preds = %17
  %21 = load ptr, ptr @image_free_queue, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi ptr [ %21, %20 ], [ null, %3 ]
  tail call void @BLI_linklist_free(ptr noundef %23, ptr noundef null) #20
  store ptr null, ptr @image_free_queue, align 8, !tbaa !47
  tail call void @GPU_global_buffer_pool_free_unused() #20
  tail call void @BLI_unlock_thread(i32 noundef 5) #20
  br label %24

24:                                               ; preds = %0, %22
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_global_buffer_pool_free_unused() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_queue_image_for_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !141 {
  tail call void @BLI_lock_thread(i32 noundef 5) #20
  tail call void @BLI_linklist_prepend(ptr noundef nonnull @image_free_queue, ptr noundef %0) #20
  tail call void @BLI_unlock_thread(i32 noundef 5) #20
  ret void
}

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_images_anim() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !57
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %8) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @GPU_free_image(ptr noundef nonnull %8) #19
  br label %12

12:                                               ; preds = %7, %11
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !142

15:                                               ; preds = %12, %3, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_free_images_old() local_unnamed_addr #0 {
  %1 = tail call double @PIL_check_seconds_timer() #20
  %2 = fptosi double %1 to i32
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !143
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 60), align 2, !tbaa !144
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
  store i32 %2, ptr @GPU_free_images_old.lasttime, align 4, !tbaa !48
  %17 = load ptr, ptr @G, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %16, %44
  %22 = phi ptr [ %45, %44 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !117
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 25
  %29 = load i32, ptr %28, align 4, !tbaa !145
  %30 = sub nsw i32 %2, %29
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !143
  %32 = sext i16 %31 to i32
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 20
  %36 = load i32, ptr %35, align 4, !tbaa !101
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Image, ptr %22, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !94
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %34
  tail call void @GPU_free_image(ptr noundef nonnull %22) #19
  store i32 %2, ptr %28, align 4, !tbaa !145
  br label %44

43:                                               ; preds = %38
  tail call void @BKE_image_free_buffers(ptr noundef nonnull %22) #20
  br label %44

44:                                               ; preds = %42, %43, %27, %21
  %45 = load ptr, ptr %22, align 8, !tbaa !47
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !146

47:                                               ; preds = %44, %16, %0, %5
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_image_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_begin_object_materials(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #20
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %2) #20
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %10 = load i16, ptr %9, align 2, !tbaa !147
  %11 = lshr i16 %10, 13
  %12 = trunc i16 %11 to i8
  %13 = and i8 %12, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @GMS, i8 0, i64 480, i1 false)
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !150
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  store i32 0, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !153
  store i8 %13, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !154
  %14 = load i16, ptr %9, align 2, !tbaa !147
  %15 = lshr i16 %14, 10
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  store i8 %17, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !155
  store ptr %3, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !156
  store ptr %2, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %18 = icmp eq i8 %13, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %21 = load i32, ptr %20, align 8, !tbaa !158
  %22 = add nsw i32 %21, 1
  br label %23

23:                                               ; preds = %6, %19
  %24 = phi i32 [ %22, %19 ], [ 1, %6 ]
  store i32 %24, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  %25 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !162
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %0, ptr %26
  %29 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !163
  store i32 %30, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 8), align 8, !tbaa !164
  %31 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 26
  %32 = load i16, ptr %31, align 4, !tbaa !165
  %33 = icmp ne i16 %32, 0
  %34 = zext i1 %33 to i8
  store i8 %34, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 9), align 4, !tbaa !166
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  store ptr %35, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 10), align 8, !tbaa !167
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2
  store ptr %36, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 11), align 8, !tbaa !168
  %37 = icmp ne ptr %5, null
  %38 = zext i1 %37 to i8
  store i8 %38, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !169
  %39 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 48
  %40 = load i8, ptr %39, align 1, !tbaa !170
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i8
  store i8 %42, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  br i1 %37, label %43, label %45

43:                                               ; preds = %23
  store i8 0, ptr %5, align 1, !tbaa !107
  %44 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  br label %45

45:                                               ; preds = %43, %23
  %46 = phi i32 [ %44, %43 ], [ %24, %23 ]
  %47 = icmp sgt i32 %46, 8
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %50 = zext nneg i32 %46 to i64
  %51 = mul nuw nsw i64 %50, 36
  %52 = tail call ptr %49(i64 noundef %51, ptr noundef nonnull @.str.5) #20
  store ptr %52, ptr @GMS, align 8, !tbaa !172
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %54 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = tail call ptr %53(i64 noundef %56, ptr noundef nonnull @.str.5) #20
  store ptr %57, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  %58 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %59 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 2
  %62 = tail call ptr %58(i64 noundef %61, ptr noundef nonnull @.str.5) #20
  br label %64

63:                                               ; preds = %45
  store ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 1), ptr @GMS, align 8, !tbaa !172
  store ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 4), ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  br label %64

64:                                               ; preds = %63, %48
  %65 = phi ptr [ getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 14), %63 ], [ %62, %48 ]
  store ptr %65, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  br i1 %18, label %74, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 52
  %68 = load ptr, ptr %67, align 8, !tbaa !175
  %69 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  store ptr %68, ptr %69, align 8, !tbaa !47
  %70 = tail call ptr @GPU_material_matcap(ptr noundef %2, ptr noundef %68) #20
  %71 = load ptr, ptr @GMS, align 8, !tbaa !172
  %72 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %71, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %72, ptr noundef nonnull align 4 dereferenceable(36) %71, i64 36, i1 false)
  %73 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  store i32 0, ptr %73, align 4, !tbaa !48
  br label %167

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %76 = load i32, ptr %75, align 8, !tbaa !158
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load ptr, ptr @GMS, align 8, !tbaa !172
  %80 = zext i8 %8 to i32
  tail call fastcc void @gpu_material_to_fixed(ptr noundef %79, ptr noundef nonnull @defmaterial, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %80) #19
  %81 = load ptr, ptr @GMS, align 8, !tbaa !172
  %82 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %81, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %82, ptr noundef nonnull align 4 dereferenceable(36) %81, i64 36, i1 false)
  %83 = icmp eq i8 %4, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  store ptr @defmaterial, ptr %85, align 8, !tbaa !47
  %86 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %87 = tail call ptr @GPU_material_from_blender(ptr noundef %86, ptr noundef nonnull @defmaterial) #20
  br label %88

88:                                               ; preds = %84, %78
  %89 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  store i32 0, ptr %89, align 4, !tbaa !48
  %90 = load i32, ptr %75, align 8, !tbaa !158
  br label %91

91:                                               ; preds = %88, %74
  %92 = phi i32 [ %90, %88 ], [ %76, %74 ]
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %167, label %94

94:                                               ; preds = %91
  %95 = icmp ne i8 %4, 0
  %96 = icmp ne i8 %8, 0
  %97 = select i1 %95, i1 true, i1 %96
  %98 = icmp eq i8 %4, 0
  %99 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  %100 = zext i8 %7 to i32
  %101 = zext i8 %8 to i32
  %102 = icmp eq i8 %8, 0
  %103 = icmp eq ptr %5, null
  br label %104

104:                                              ; preds = %94, %160
  %105 = phi i64 [ 1, %94 ], [ %163, %160 ]
  %106 = trunc i64 %105 to i16
  %107 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %106) #20
  br i1 %97, label %112, label %108

108:                                              ; preds = %104
  %109 = tail call fastcc ptr @gpu_active_node_material(ptr noundef %107) #19
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr @defmaterial, ptr %109
  br label %123

112:                                              ; preds = %104
  %113 = icmp eq ptr %107, null
  %114 = select i1 %113, ptr @defmaterial, ptr %107
  br i1 %98, label %123, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %117 = tail call ptr @GPU_material_from_blender(ptr noundef %116, ptr noundef nonnull %114) #20
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  %121 = getelementptr inbounds ptr, ptr %120, i64 %105
  store ptr %114, ptr %121, align 8, !tbaa !47
  %122 = tail call i32 @GPU_material_alpha_blend(ptr noundef nonnull %117, ptr noundef nonnull %99) #20
  br label %153

123:                                              ; preds = %108, %112, %115
  %124 = phi ptr [ %114, %115 ], [ %111, %108 ], [ %114, %112 ]
  %125 = load ptr, ptr @GMS, align 8, !tbaa !172
  %126 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %125, i64 %105
  tail call fastcc void @gpu_material_to_fixed(ptr noundef nonnull %126, ptr noundef nonnull %124, i32 noundef %100, ptr noundef nonnull %3, i32 noundef %101) #19
  %127 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !169
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %150, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.Material, ptr %124, i64 0, i32 51
  %131 = load i32, ptr %130, align 4, !tbaa !176
  %132 = and i32 %131, 65536
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.Material, ptr %124, i64 0, i32 21
  %136 = load float, ptr %135, align 8, !tbaa !180
  br label %142

137:                                              ; preds = %129
  br i1 %102, label %150, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.Material, ptr %124, i64 0, i32 21
  %140 = load float, ptr %139, align 8, !tbaa !180
  %141 = fcmp une float %140, 1.000000e+00
  br i1 %141, label %142, label %150

142:                                              ; preds = %134, %138
  %143 = phi float [ %136, %134 ], [ %140, %138 ]
  %144 = getelementptr inbounds %struct.Material, ptr %124, i64 0, i32 21
  %145 = load ptr, ptr @GMS, align 8, !tbaa !172
  %146 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %145, i64 %105, i32 0, i64 3
  store float %143, ptr %146, align 4, !tbaa !40
  %147 = load float, ptr %144, align 8, !tbaa !180
  %148 = fcmp oeq float %147, 1.000000e+00
  %149 = select i1 %148, i32 0, i32 2
  br label %153

150:                                              ; preds = %138, %137, %123
  %151 = load ptr, ptr @GMS, align 8, !tbaa !172
  %152 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %151, i64 %105, i32 0, i64 3
  store float 1.000000e+00, ptr %152, align 4, !tbaa !40
  br label %153

153:                                              ; preds = %142, %150, %119
  %154 = phi i32 [ %122, %119 ], [ %149, %142 ], [ 0, %150 ]
  %155 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1
  %156 = icmp ne i8 %155, 0
  %157 = select i1 %103, i1 true, i1 %156
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  switch i32 %154, label %160 [
    i32 8, label %159
    i32 2, label %159
    i32 1, label %159
  ]

159:                                              ; preds = %158, %158, %158
  store i8 1, ptr %5, align 1, !tbaa !107
  br label %160

160:                                              ; preds = %158, %159, %153
  %161 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  %162 = getelementptr inbounds i32, ptr %161, i64 %105
  store i32 %154, ptr %162, align 4, !tbaa !48
  %163 = add nuw nsw i64 %105, 1
  %164 = load i32, ptr %75, align 8, !tbaa !158
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %105, %165
  br i1 %166, label %104, label %167, !llvm.loop !181

167:                                              ; preds = %160, %91, %66
  tail call void @GPU_disable_material() #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @GPU_material_matcap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_material_to_fixed(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !182 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 51
  %9 = load i32, ptr %8, align 4, !tbaa !176
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7, %5
  %13 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 1.000000e+00, ptr %14, align 4, !tbaa !40
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %0) #19
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1
  tail call fastcc void @zero_v4(ptr noundef nonnull %18) #19
  %19 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 2
  store i32 0, ptr %19, align 4, !tbaa !183
  br label %48

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %22 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 22
  %23 = load float, ptr %22, align 4, !tbaa !185
  %24 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 17
  %25 = load float, ptr %24, align 8, !tbaa !186
  %26 = fadd float %23, %25
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef nonnull %21, float noundef %26) #19
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  store float 1.000000e+00, ptr %27, align 4, !tbaa !40
  %28 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 50
  %29 = load i16, ptr %28, align 2, !tbaa !187
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 98
  tail call fastcc void @mul_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %33) #19
  br label %34

34:                                               ; preds = %32, %20
  %35 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 7
  %37 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 23
  %38 = load float, ptr %37, align 8, !tbaa !188
  tail call fastcc void @mul_v3_v3fl(ptr noundef nonnull %35, ptr noundef nonnull %36, float noundef %38) #19
  %39 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 1, i64 3
  store float 1.000000e+00, ptr %39, align 4, !tbaa !40
  %40 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 38
  %41 = load i16, ptr %40, align 8, !tbaa !189
  %42 = tail call i16 @llvm.smin.i16(i16 %41, i16 128)
  %43 = tail call i16 @llvm.smax.i16(i16 %42, i16 0)
  %44 = zext nneg i16 %43 to i32
  %45 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %0, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !183
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %0) #19
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %35) #19
  br label %48

48:                                               ; preds = %34, %47, %17
  ret void
}

; Function Attrs: optsize
declare ptr @GPU_material_from_blender(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gpu_active_node_material(ptr noundef readonly %0) unnamed_addr #0 !PGOFuncName !190 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !191
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 16717) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  br label %17

17:                                               ; preds = %1, %3, %7, %14, %11
  %18 = phi ptr [ %16, %14 ], [ null, %11 ], [ %0, %7 ], [ %0, %3 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @GPU_material_alpha_blend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_disable_material() local_unnamed_addr #0 {
  store i32 -1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !150
  store i32 1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  %1 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !155
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @glDisable(i32 noundef 2884) #20
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %11

11:                                               ; preds = %10, %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %13 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  %14 = tail call ptr @GPU_material_from_blender(ptr noundef %12, ptr noundef %13) #20
  tail call void @GPU_material_unbind(ptr noundef %14) #20
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  br label %15

15:                                               ; preds = %11, %0
  tail call void @GPU_set_material_alpha_blend(i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_enable_material(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = load ptr, ptr @GMS, align 8, !tbaa !172
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @GMS, i8 0, i64 488, i1 false)
  %8 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 22), align 4, !tbaa !185
  %9 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 17), align 8, !tbaa !186
  %10 = fadd float %8, %9
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 4), float noundef %10) #19
  %11 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !40
  %12 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 23), align 8, !tbaa !188
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 7), float noundef %12) #19
  %13 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %13, align 4, !tbaa !40
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %3) #20
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %4) #20
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 35) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %128

14:                                               ; preds = %2
  %15 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  %16 = icmp sgt i32 %15, %0
  %17 = select i1 %16, i32 %0, i32 0
  %18 = icmp eq ptr %1, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2564) %1, i8 0, i64 2564, i1 false)
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !150
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  br label %128

25:                                               ; preds = %20
  %26 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  %32 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ %26, %28 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %36 = tail call ptr @GPU_material_from_blender(ptr noundef %35, ptr noundef %34) #20
  tail call void @GPU_material_unbind(ptr noundef %36) #20
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  br label %37

37:                                               ; preds = %33, %25
  store i32 %17, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 18), align 4, !tbaa !150
  store i32 1, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  %38 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 15), align 8, !tbaa !169
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  %42 = sext i32 %17 to i64
  %43 = getelementptr inbounds i32, ptr %41, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = and i32 %44, -5
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  %48 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = xor i1 %46, true
  br label %55

52:                                               ; preds = %37
  %53 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  %54 = icmp eq i8 %53, 0
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i1 [ %51, %50 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  store i32 %57, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  br label %58

58:                                               ; preds = %55, %40
  %59 = phi i32 [ %47, %40 ], [ %57, %55 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %128, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  %63 = sext i32 %17 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !48
  br i1 %18, label %117, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  %68 = getelementptr inbounds ptr, ptr %67, i64 %63
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %117, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 7), align 8, !tbaa !157
  %73 = tail call ptr @GPU_material_from_blender(ptr noundef %72, ptr noundef nonnull %69) #20
  tail call void @GPU_material_vertex_attributes(ptr noundef %73, ptr noundef nonnull %1) #20
  %74 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !156
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 52
  %76 = load i32, ptr %75, align 8, !tbaa !196
  %77 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 8), align 8, !tbaa !164
  %78 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 27
  %79 = load i32, ptr %78, align 8, !tbaa !197
  %80 = lshr i32 %79, 4
  %81 = and i32 %80, 1
  %82 = xor i32 %81, 1
  %83 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 10), align 8, !tbaa !167
  %84 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 11), align 8, !tbaa !168
  %85 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 9), align 4, !tbaa !166
  tail call void @GPU_material_bind(ptr noundef %73, i32 noundef %76, i32 noundef %77, double noundef 1.000000e+00, i32 noundef %82, ptr noundef %83, ptr noundef %84, i8 noundef zeroext %85) #20
  %86 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 6), align 8, !tbaa !156
  %87 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 120
  %88 = load ptr, ptr %87, align 8, !tbaa !198
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %88, i64 0, i32 15
  %92 = load float, ptr %91, align 4, !tbaa !199
  br label %93

93:                                               ; preds = %71, %90
  %94 = phi float [ %92, %90 ], [ 1.000000e+00, %71 ]
  %95 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 47
  %96 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 98
  tail call void @GPU_material_bind_uniforms(ptr noundef %73, ptr noundef nonnull %95, ptr noundef nonnull %96, float noundef %94) #20
  store ptr %69, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 5), align 8, !tbaa !195
  %97 = getelementptr inbounds %struct.Material, ptr %69, i64 0, i32 28
  %98 = getelementptr inbounds %struct.Material, ptr %69, i64 0, i32 28, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !202
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 %65, i32 %99
  %102 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 16), align 1, !tbaa !171
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 12), align 8, !tbaa !155
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %97, align 8, !tbaa !203
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @glEnable(i32 noundef 2884) #20
  br label %113

112:                                              ; preds = %108
  tail call void @glDisable(i32 noundef 2884) #20
  br label %113

113:                                              ; preds = %111, %112, %105
  %114 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !154
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  tail call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #20
  br label %125

117:                                              ; preds = %66, %61
  %118 = load ptr, ptr @GMS, align 8, !tbaa !172
  %119 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %118, i64 %63
  tail call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef %119) #20
  %120 = load ptr, ptr @GMS, align 8, !tbaa !172
  %121 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %120, i64 %63, i32 1
  tail call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %121) #20
  %122 = load ptr, ptr @GMS, align 8, !tbaa !172
  %123 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %122, i64 %63, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !183
  tail call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef %124) #20
  br label %125

125:                                              ; preds = %113, %116, %117
  %126 = phi i32 [ %65, %117 ], [ %101, %116 ], [ %101, %113 ]
  tail call void @GPU_set_material_alpha_blend(i32 noundef %126) #19
  %127 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 19), align 8, !tbaa !152
  br label %128

128:                                              ; preds = %58, %125, %23, %7
  %129 = phi i32 [ %24, %23 ], [ 0, %7 ], [ %127, %125 ], [ 0, %58 ]
  ret i32 %129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #8 !PGOFuncName !204 {
  %4 = load float, ptr %1, align 4, !tbaa !40
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !40
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !40
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glMateriali(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_material_unbind(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_material_vertex_attributes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_material_bind(ptr noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GPU_material_bind_uniforms(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_set_material_alpha_blend(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !153
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @gpu_set_alpha_blend(i32 noundef %0) #19
  store i32 %0, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !153
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_set_alpha_blend(i32 noundef %0) unnamed_addr #0 !PGOFuncName !205 {
  switch i32 %0, label %17 [
    i32 0, label %2
    i32 1, label %3
    i32 8, label %4
    i32 2, label %4
    i32 4, label %16
  ]

2:                                                ; preds = %1
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glDisable(i32 noundef 3008) #20
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  br label %17

3:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 3042) #20
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #20
  tail call void @glDisable(i32 noundef 3008) #20
  br label %17

4:                                                ; preds = %1, %1
  tail call void @glEnable(i32 noundef 3042) #20
  %5 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !107
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !47
  tail call void %8(i32 noundef 770, i32 noundef 771, i32 noundef 1, i32 noundef 771) #20
  br label %10

9:                                                ; preds = %4
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  br label %10

10:                                               ; preds = %9, %7
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !206
  %12 = fcmp oeq float %11, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @glDisable(i32 noundef 3008) #20
  br label %17

14:                                               ; preds = %10
  tail call void @glEnable(i32 noundef 3008) #20
  %15 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !206
  tail call void @glAlphaFunc(i32 noundef 516, float noundef %15) #20
  br label %17

16:                                               ; preds = %1
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glEnable(i32 noundef 3008) #20
  tail call void @glAlphaFunc(i32 noundef 516, float noundef 5.000000e-01) #20
  br label %17

17:                                               ; preds = %1, %3, %16, %13, %14, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @GPU_get_material_alpha_blend() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 20), align 4, !tbaa !153
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @GPU_material_diffuse_get(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = load ptr, ptr @GMS, align 8, !tbaa !172
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 22), align 4, !tbaa !185
  %7 = load float, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 17), align 8, !tbaa !186
  %8 = fadd float %6, %7
  tail call fastcc void @mul_v3_v3fl(ptr noundef %1, ptr noundef nonnull getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 4), float noundef %8) #19
  br label %15

9:                                                ; preds = %2
  %10 = load i32, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 2), align 8, !tbaa !161
  %11 = icmp sgt i32 %10, %0
  %12 = select i1 %11, i32 %0, i32 0
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.GPUMaterialFixed, ptr %3, i64 %13
  tail call fastcc void @copy_v4_v4(ptr noundef %1, ptr noundef nonnull %14) #19
  br label %15

15:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !207 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  store float %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !40
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !40
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @GPU_material_use_matcaps_get() local_unnamed_addr #5 {
  %1 = load i8, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 17), align 2, !tbaa !154
  ret i8 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_end_object_materials() local_unnamed_addr #0 {
  tail call void @GPU_disable_material() #19
  %1 = load ptr, ptr @GMS, align 8
  %2 = icmp ne ptr %1, null
  %3 = icmp ne ptr %1, getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 1)
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %6(ptr noundef nonnull %1) #20
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %8 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  tail call void %7(ptr noundef %8) #20
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %10 = load ptr, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  tail call void %9(ptr noundef %10) #20
  br label %11

11:                                               ; preds = %5, %0
  store ptr null, ptr @GMS, align 8, !tbaa !172
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 3), align 8, !tbaa !173
  store ptr null, ptr getelementptr inbounds (%struct.GPUMaterialState, ptr @GMS, i64 0, i32 13), align 8, !tbaa !174
  %12 = load i32, ptr getelementptr inbounds (%struct.GPUTextureState, ptr @GTS, i64 0, i32 3), align 4, !tbaa !76
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @glMatrixMode(i32 noundef 5890) #20
  tail call void @glLoadIdentity() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  br label %15

15:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_default_lights() local_unnamed_addr #0 {
  %1 = alloca [4 x float], align 16
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54), align 8, !tbaa !208
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1), align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2), align 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54), align 8, !tbaa !208
  store <2 x float> <float 0xBFD3333340000000, float 0x3FD3333340000000>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 4), align 8, !tbaa !40
  store float 0x3FECCCCCC0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 4, i64 2), align 8, !tbaa !40
  store <2 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 2), align 8, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 2, i64 2), align 8, !tbaa !40
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 0, i32 3), align 8, !tbaa !40
  store i32 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1), align 8, !tbaa !208
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 4), align 8, !tbaa !40
  store float 0x3FB99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 4, i64 2), align 8, !tbaa !40
  store <2 x float> <float 0x3FD99999A0000000, float 0x3FD99999A0000000>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 2), align 8, !tbaa !40
  store float 0x3FE99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 2, i64 2), align 8, !tbaa !40
  store <4 x float> <float 0x3FD3333340000000, float 0x3FD3333340000000, float 5.000000e-01, float 1.000000e+00>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 1, i32 3), align 8, !tbaa !40
  store i32 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2), align 8, !tbaa !208
  store <2 x float> <float 0x3FD3333340000000, float 0xBFD3333340000000>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 4), align 8, !tbaa !40
  store float 0xBFC99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 4, i64 2), align 8, !tbaa !40
  store <2 x float> <float 0x3FE99999A0000000, float 5.000000e-01>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 2), align 8, !tbaa !40
  store float 0x3FD99999A0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 2, i64 2), align 8, !tbaa !40
  store <4 x float> <float 5.000000e-01, float 0x3FD99999A0000000, float 0x3FD3333340000000, float 1.000000e+00>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 54, i64 2, i32 3), align 8, !tbaa !40
  br label %12

12:                                               ; preds = %11, %0
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef 0) #20
  %13 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  br label %14

14:                                               ; preds = %12, %35
  %15 = phi i64 [ 0, %12 ], [ %37, %35 ]
  %16 = phi i32 [ 0, %12 ], [ %36, %35 ]
  %17 = icmp ult i64 %15, 3
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %15
  %20 = load i32, ptr %19, align 8, !tbaa !208
  %21 = icmp eq i32 %20, 0
  %22 = trunc i64 %15 to i32
  %23 = or disjoint i32 %22, 16384
  br i1 %21, label %29, label %24

24:                                               ; preds = %18
  call void @glEnable(i32 noundef %23) #20
  %25 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %15, i32 4
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %25) #19
  store float 0.000000e+00, ptr %13, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %23, i32 noundef 4611, ptr noundef nonnull %2) #20
  %26 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %15, i32 2
  call void @glLightfv(i32 noundef %23, i32 noundef 4609, ptr noundef nonnull %26) #20
  %27 = getelementptr inbounds %struct.UserDef, ptr @U, i64 0, i32 54, i64 %15, i32 3
  call void @glLightfv(i32 noundef %23, i32 noundef 4610, ptr noundef nonnull %27) #20
  %28 = add nsw i32 %16, 1
  br label %30

29:                                               ; preds = %18
  call void @glDisable(i32 noundef %23) #20
  call void @glLightfv(i32 noundef %23, i32 noundef 4611, ptr noundef nonnull %1) #20
  call void @glLightfv(i32 noundef %23, i32 noundef 4609, ptr noundef nonnull %1) #20
  call void @glLightfv(i32 noundef %23, i32 noundef 4610, ptr noundef nonnull %1) #20
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %16, %29 ], [ %28, %24 ]
  call void @glLightf(i32 noundef %23, i32 noundef 4614, float noundef 1.800000e+02) #20
  call void @glLightf(i32 noundef %23, i32 noundef 4615, float noundef 1.000000e+00) #20
  call void @glLightf(i32 noundef %23, i32 noundef 4616, float noundef 0.000000e+00) #20
  br label %35

32:                                               ; preds = %14
  %33 = trunc i64 %15 to i32
  %34 = or i32 %33, 16384
  call void @glDisable(i32 noundef %34) #20
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi i32 [ %31, %30 ], [ %16, %32 ]
  %37 = add nuw nsw i64 %15, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %14, !llvm.loop !210

39:                                               ; preds = %35
  call void @glDisable(i32 noundef 2896) #20
  call void @glDisable(i32 noundef 2903) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  ret i32 %36
}

; Function Attrs: optsize
declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !211 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GPU_scene_object_lights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i32 [ 0, %5 ], [ %12, %9 ]
  %11 = or disjoint i32 %10, 16384
  tail call void @glDisable(i32 noundef %11) #20
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %9, !llvm.loop !212

14:                                               ; preds = %9
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i32
  tail call void @glLightModeli(i32 noundef 2897, i32 noundef %16) #20
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %87, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %22 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %23 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %24 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  br label %25

25:                                               ; preds = %20, %83
  %26 = phi ptr [ %18, %20 ], [ %85, %83 ]
  %27 = phi i32 [ 0, %20 ], [ %84, %83 ]
  %28 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !213
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !215
  %32 = icmp eq i16 %31, 10
  br i1 %32, label %33, label %83

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !216
  %36 = and i32 %35, %2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %21, align 8, !tbaa !196
  %40 = and i32 %39, %35
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !217
  call void @glPushMatrix() #20
  call void @glLoadMatrixf(ptr noundef %3) #20
  %45 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !218
  %47 = icmp eq i16 %46, 1
  %48 = load ptr, ptr %28, align 8, !tbaa !213
  %49 = add nsw i32 %27, 16384
  br i1 %47, label %50, label %52

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 47, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %51) #19
  store float 0.000000e+00, ptr %23, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %49, i32 noundef 4611, ptr noundef nonnull %7) #20
  br label %77

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %53) #19
  store float 1.000000e+00, ptr %22, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %49, i32 noundef 4611, ptr noundef nonnull %6) #20
  call void @glLightf(i32 noundef %49, i32 noundef 4615, float noundef 1.000000e+00) #20
  %54 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 20
  %55 = load float, ptr %54, align 8, !tbaa !220
  %56 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 16
  %57 = load float, ptr %56, align 8, !tbaa !221
  %58 = fdiv float %55, %57
  call void @glLightf(i32 noundef %49, i32 noundef 4616, float noundef %58) #20
  %59 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 21
  %60 = load float, ptr %59, align 4, !tbaa !222
  %61 = load float, ptr %56, align 8, !tbaa !221
  %62 = fmul float %61, %61
  %63 = fdiv float %60, %62
  call void @glLightf(i32 noundef %49, i32 noundef 4617, float noundef %63) #20
  %64 = load i16, ptr %45, align 8, !tbaa !218
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %52
  %67 = load ptr, ptr %28, align 8, !tbaa !213
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 47, i64 2
  call fastcc void @negate_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %68) #19
  call void @glLightfv(i32 noundef %49, i32 noundef 4612, ptr noundef nonnull %7) #20
  %69 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 17
  %70 = load float, ptr %69, align 4, !tbaa !223
  %71 = fmul float %70, 5.000000e-01
  %72 = fmul float %71, 0x404CA5DC20000000
  call void @glLightf(i32 noundef %49, i32 noundef 4614, float noundef %72) #20
  %73 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 18
  %74 = load float, ptr %73, align 8, !tbaa !224
  %75 = fmul float %74, 1.280000e+02
  call void @glLightf(i32 noundef %49, i32 noundef 4613, float noundef %75) #20
  br label %77

76:                                               ; preds = %52
  call void @glLightf(i32 noundef %49, i32 noundef 4614, float noundef 1.800000e+02) #20
  br label %77

77:                                               ; preds = %66, %76, %50
  %78 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 7
  %79 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 15
  %80 = load float, ptr %79, align 4, !tbaa !225
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %78, float noundef %80) #19
  store float 1.000000e+00, ptr %24, align 4, !tbaa !40
  call void @glLightfv(i32 noundef %49, i32 noundef 4609, ptr noundef nonnull %8) #20
  call void @glLightfv(i32 noundef %49, i32 noundef 4610, ptr noundef nonnull %8) #20
  call void @glEnable(i32 noundef %49) #20
  call void @glPopMatrix() #20
  %81 = add nsw i32 %27, 1
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %87, label %83

83:                                               ; preds = %77, %33, %38, %25
  %84 = phi i32 [ %27, %25 ], [ %81, %77 ], [ %27, %38 ], [ %27, %33 ]
  %85 = load ptr, ptr %26, align 8, !tbaa !47
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %25, !llvm.loop !226

87:                                               ; preds = %83, %77, %14
  %88 = phi i32 [ 0, %14 ], [ 8, %77 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret i32 %88
}

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !227 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  store float %3, ptr %0, align 4, !tbaa !40
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !228 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !40
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !40
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GPU_state_init() local_unnamed_addr #0 {
  %1 = alloca [4 x float], align 16
  %2 = alloca [4 x float], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @__const.GPU_state_init.mat_specular, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4608, ptr noundef nonnull %1) #20
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4609, ptr noundef nonnull %2) #20
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %2) #20
  call void @glMateriali(i32 noundef 1032, i32 noundef 5633, i32 noundef 35) #20
  %4 = call i32 @GPU_default_lights() #19
  call void @glDepthFunc(i32 noundef 515) #20
  call void @glEnable(i32 noundef 2977) #20
  call void @glShadeModel(i32 noundef 7424) #20
  call void @glDisable(i32 noundef 3008) #20
  call void @glDisable(i32 noundef 3042) #20
  call void @glDisable(i32 noundef 2929) #20
  call void @glDisable(i32 noundef 2912) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glDisable(i32 noundef 3057) #20
  call void @glDisable(i32 noundef 2960) #20
  call void @glDisable(i32 noundef 3552) #20
  call void @glDisable(i32 noundef 3553) #20
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @glDisableClientState(i32 noundef 32885) #20
  call void @glDisableClientState(i32 noundef 32886) #20
  call void @glDisableClientState(i32 noundef 32888) #20
  call void @glPixelTransferi(i32 noundef 3344, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3348, i32 noundef 1) #20
  call void @glPixelTransferi(i32 noundef 3349, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3352, i32 noundef 1) #20
  call void @glPixelTransferi(i32 noundef 3353, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3354, i32 noundef 1) #20
  call void @glPixelTransferi(i32 noundef 3355, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3356, i32 noundef 1) #20
  call void @glPixelTransferi(i32 noundef 3357, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3359, i32 noundef 0) #20
  call void @glPixelTransferi(i32 noundef 3358, i32 noundef 1) #20
  call void @glDepthRange(double noundef 0.000000e+00, double noundef 1.000000e+00) #20
  br label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %11, %5 ]
  %7 = phi i32 [ 0, %0 ], [ %14, %5 ]
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = sext i32 %6 to i64
  %11 = add i32 %6, 4
  %12 = select i1 %9, <4 x i8> <i8 34, i8 34, i8 34, i8 34>, <4 x i8> <i8 -120, i8 -120, i8 -120, i8 -120>
  %13 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %10
  store <4 x i8> %12, ptr %13, align 4
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %5, !llvm.loop !229

16:                                               ; preds = %5
  call void @glPolygonStipple(ptr noundef nonnull %3) #20
  call void @glMatrixMode(i32 noundef 5890) #20
  call void @glLoadIdentity() #20
  call void @glMatrixMode(i32 noundef 5888) #20
  call void @glFrontFace(i32 noundef 2305) #20
  call void @glCullFace(i32 noundef 1029) #20
  call void @glDisable(i32 noundef 2884) #20
  call fastcc void @gpu_multisample() #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare void @glDepthFunc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPixelTransferi(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDepthRange(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glFrontFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glCullFace(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_multisample() unnamed_addr #0 !PGOFuncName !230 {
  %1 = alloca i32, align 4
  %2 = load i8, ptr @__GLEW_VERSION_1_3, align 1, !tbaa !107
  %3 = icmp ne i8 %2, 0
  %4 = load i8, ptr @__GLEW_ARB_multisample, align 1
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = tail call i32 @GPU_type_matches(i32 noundef 1, i32 noundef 1024, i32 noundef 16711680) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  store i32 0, ptr %1, align 4, !tbaa !48
  call void @glGetIntegerv(i32 noundef 32937, ptr noundef nonnull %1) #20
  %11 = load i32, ptr %1, align 4, !tbaa !48
  %12 = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %10
  call void @glDisable(i32 noundef 32925) #20
  br label %14

14:                                               ; preds = %10, %13, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !231 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !232 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #2 !PGOFuncName !233 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !234
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !235 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @GPU_max_texture_size() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc noundef i32 @power_of_2_min_i(i32 noundef %0) unnamed_addr #13 !PGOFuncName !236 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #19, !range !105
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #19, !range !105
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !237

10:                                               ; preds = %4, %1
  %11 = phi i32 [ %0, %1 ], [ %7, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glTexGeni(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bilinear_interpolation_color_wrap(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !238 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #20
  store float %4, ptr %0, align 4, !tbaa !40
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #20
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !40
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !40
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #20
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !239 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !240 {
  %3 = load float, ptr %1, align 4, !tbaa !40
  %4 = load float, ptr %0, align 4, !tbaa !40
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !40
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !40
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !40
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !40
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !40
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !40
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glAlphaFunc(i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !241 {
  %3 = load float, ptr %0, align 4, !tbaa !40
  %4 = load float, ptr %1, align 4, !tbaa !40
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !40
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !40
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !40
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !40
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !242 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !40
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!38, !38, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !36, i64 0}
!50 = !{!"gpu_draw.c:max_ffff"}
!51 = !{!"gpu_draw.c:min_ffff"}
!52 = !{!"gpu_draw.c:max_fff"}
!53 = !{!"gpu_draw.c:min_fff"}
!54 = !{!"gpu_draw.c:gpu_mcol"}
!55 = !{!56, !49, i64 68}
!56 = !{!"GPUTextureState", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !38, i64 32, !38, i64 40, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !41, i64 64, !49, i64 68, !38, i64 72}
!57 = !{!58, !38, i64 0}
!58 = !{!"Global", !38, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !59, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !36, i64 2090, !39, i64 2092, !49, i64 2096, !49, i64 2100, !36, i64 2104, !49, i64 2108, !49, i64 2112, !36, i64 2116}
!59 = !{!"ListBase", !38, i64 0, !38, i64 8}
!60 = distinct !{!60, !46}
!61 = !{!56, !49, i64 48}
!62 = !{!56, !49, i64 52}
!63 = !{!56, !41, i64 64}
!64 = !{!56, !38, i64 72}
!65 = !{!56, !49, i64 0}
!66 = !{!56, !38, i64 40}
!67 = !{!56, !49, i64 8}
!68 = !{!56, !49, i64 16}
!69 = !{!56, !49, i64 24}
!70 = !{!56, !49, i64 60}
!71 = !{!56, !38, i64 32}
!72 = !{!73, !39, i64 1256}
!73 = !{!"Image", !74, i64 0, !36, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !36, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !49, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !49, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !41, i64 1296, !49, i64 1300, !39, i64 1304, !39, i64 1306, !49, i64 1308, !49, i64 1312, !36, i64 1316, !36, i64 1317, !39, i64 1318, !36, i64 1320, !41, i64 1336, !41, i64 1340, !75, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!74 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !39, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !38, i64 112}
!75 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!76 = !{!56, !49, i64 12}
!77 = !{!73, !49, i64 1252}
!78 = !{!56, !49, i64 20}
!79 = !{!56, !49, i64 28}
!80 = !{!56, !49, i64 4}
!81 = !{!73, !39, i64 1260}
!82 = !{!73, !39, i64 1262}
!83 = !{!73, !39, i64 1244}
!84 = !{!85, !38, i64 48}
!85 = !{!"ImBuf", !38, i64 0, !38, i64 8, !49, i64 16, !49, i64 20, !36, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !38, i64 40, !38, i64 48, !36, i64 56, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !41, i64 112, !36, i64 120, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !38, i64 296, !38, i64 304, !49, i64 312, !36, i64 316, !36, i64 1340, !38, i64 2368, !49, i64 2376, !38, i64 2384, !49, i64 2392, !49, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !49, i64 2432, !86, i64 2436, !87, i64 2456}
!86 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!87 = !{!"DDSData", !49, i64 0, !49, i64 4, !38, i64 8, !49, i64 16}
!88 = !{!89, !39, i64 8952}
!89 = !{!"UserDef", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !49, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !49, i64 8484, !49, i64 8488, !49, i64 8492, !39, i64 8496, !39, i64 8498, !49, i64 8500, !49, i64 8504, !49, i64 8508, !49, i64 8512, !49, i64 8516, !49, i64 8520, !49, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !59, i64 8536, !59, i64 8552, !59, i64 8568, !59, i64 8584, !59, i64 8600, !59, i64 8616, !59, i64 8632, !36, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !36, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !49, i64 8912, !49, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !41, i64 8956, !41, i64 8960, !49, i64 8964, !39, i64 8968, !39, i64 8970, !41, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !90, i64 8984, !36, i64 9760, !36, i64 9772, !39, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !49, i64 10896, !49, i64 10900, !41, i64 10904, !41, i64 10908, !49, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !91, i64 10928}
!90 = !{!"ColorBand", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!91 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !39, i64 24, !36, i64 26}
!92 = !{!85, !49, i64 292}
!93 = !{!85, !38, i64 40}
!94 = !{!73, !38, i64 1272}
!95 = !{!73, !39, i64 1258}
!96 = !{!85, !49, i64 16}
!97 = !{!85, !49, i64 20}
!98 = !{!85, !49, i64 28}
!99 = distinct !{!99, !46}
!100 = distinct !{!100, !46}
!101 = !{!73, !49, i64 1268}
!102 = !{!73, !38, i64 1152}
!103 = !{!"gpu_draw.c:gpu_make_repbind"}
!104 = !{i8 0, i8 2}
!105 = !{i32 0, i32 2}
!106 = !{i32 9728, i32 9988}
!107 = !{!36, !36, i64 0}
!108 = !{!"gpu_draw.c:is_power_of_2_resolution"}
!109 = !{!"gpu_draw.c:is_over_resolution_limit"}
!110 = !{!89, !39, i64 8934}
!111 = !{!"gpu_draw.c:smaller_power_of_2_limit"}
!112 = !{!"gpu_draw.c:gpu_get_mipmap_filter"}
!113 = !{!"gpu_draw.c:gpu_generate_mipmap"}
!114 = !{!35, !39, i64 44}
!115 = !{!"gpu_draw.c:gpu_verify_alpha_blend"}
!116 = !{!"gpu_draw.c:gpu_verify_reflection"}
!117 = !{!73, !39, i64 1246}
!118 = !{!"gpu_draw.c:gpu_verify_repeat"}
!119 = !{!56, !49, i64 56}
!120 = distinct !{!120, !46}
!121 = distinct !{!121, !46}
!122 = !{!"gpu_draw.c:GPU_check_scaled_image"}
!123 = distinct !{!123, !46}
!124 = distinct !{!124, !46}
!125 = !{!73, !39, i64 1266}
!126 = !{!73, !39, i64 1264}
!127 = distinct !{!127, !46}
!128 = !{!73, !41, i64 1296}
!129 = !{!73, !39, i64 1304}
!130 = !{!131, !49, i64 140}
!131 = !{!"SmokeModifierData", !132, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !41, i64 136, !49, i64 140}
!132 = !{!"ModifierData", !38, i64 0, !38, i64 8, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !36, i64 32, !38, i64 96, !38, i64 104}
!133 = !{!131, !38, i64 112}
!134 = !{!135, !38, i64 56}
!135 = !{!"SmokeDomainSettings", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !36, i64 96, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 192, !36, i64 204, !36, i64 268, !36, i64 332, !36, i64 344, !36, i64 356, !36, i64 368, !49, i64 380, !41, i64 384, !41, i64 388, !49, i64 392, !49, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !49, i64 412, !49, i64 416, !49, i64 420, !49, i64 424, !39, i64 428, !39, i64 430, !49, i64 432, !41, i64 436, !36, i64 440, !41, i64 452, !49, i64 456, !49, i64 460, !36, i64 464, !36, i64 480, !38, i64 512, !49, i64 520, !41, i64 524, !41, i64 528, !49, i64 532, !36, i64 536, !49, i64 548, !41, i64 552, !41, i64 556, !41, i64 560, !41, i64 564, !41, i64 568, !36, i64 572}
!136 = !{!135, !38, i64 72}
!137 = !{!135, !38, i64 80}
!138 = !{!139, !38, i64 8}
!139 = !{!"LinkNode", !38, i64 0, !38, i64 8}
!140 = distinct !{!140, !46}
!141 = !{!"gpu_draw.c:gpu_queue_image_for_free"}
!142 = distinct !{!142, !46}
!143 = !{!89, !39, i64 8904}
!144 = !{!89, !39, i64 8906}
!145 = !{!73, !49, i64 1300}
!146 = distinct !{!146, !46}
!147 = !{!148, !39, i64 242}
!148 = !{!"View3D", !38, i64 0, !38, i64 8, !59, i64 16, !49, i64 32, !41, i64 36, !36, i64 40, !36, i64 56, !41, i64 72, !41, i64 76, !36, i64 80, !36, i64 81, !49, i64 84, !49, i64 88, !39, i64 92, !39, i64 94, !38, i64 96, !38, i64 104, !149, i64 112, !59, i64 128, !38, i64 144, !38, i64 152, !36, i64 160, !49, i64 224, !49, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !36, i64 260, !36, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !59, i64 296, !59, i64 312, !59, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !38, i64 352, !38, i64 360, !38, i64 368}
!149 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!150 = !{!151, !49, i64 476}
!151 = !{!"GPUMaterialState", !38, i64 0, !36, i64 8, !49, i64 296, !38, i64 304, !36, i64 312, !38, i64 376, !38, i64 384, !38, i64 392, !49, i64 400, !36, i64 404, !38, i64 408, !38, i64 416, !36, i64 424, !38, i64 432, !36, i64 440, !36, i64 472, !36, i64 473, !36, i64 474, !49, i64 476, !49, i64 480, !49, i64 484}
!152 = !{!151, !49, i64 480}
!153 = !{!151, !49, i64 484}
!154 = !{!151, !36, i64 474}
!155 = !{!151, !36, i64 424}
!156 = !{!151, !38, i64 384}
!157 = !{!151, !38, i64 392}
!158 = !{!159, !49, i64 456}
!159 = !{!"Object", !74, i64 0, !38, i64 120, !38, i64 128, !39, i64 136, !39, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !36, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !160, i64 312, !38, i64 360, !59, i64 368, !59, i64 384, !59, i64 400, !59, i64 416, !49, i64 432, !49, i64 436, !38, i64 440, !38, i64 448, !49, i64 456, !49, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !49, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !36, i64 966, !36, i64 967, !49, i64 968, !49, i64 972, !49, i64 976, !49, i64 980, !49, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !36, i64 1042, !36, i64 1043, !39, i64 1044, !36, i64 1046, !36, i64 1047, !41, i64 1048, !41, i64 1052, !59, i64 1056, !59, i64 1072, !59, i64 1088, !59, i64 1104, !41, i64 1120, !39, i64 1124, !39, i64 1126, !36, i64 1128, !49, i64 1144, !49, i64 1148, !38, i64 1152, !36, i64 1160, !36, i64 1161, !39, i64 1162, !36, i64 1164, !59, i64 1176, !59, i64 1192, !59, i64 1208, !59, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !36, i64 1264, !36, i64 1265, !39, i64 1266, !41, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !44, i64 1304, !44, i64 1312, !49, i64 1320, !49, i64 1324, !59, i64 1328, !59, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !36, i64 1384, !38, i64 1392, !59, i64 1400, !38, i64 1416}
!160 = !{!"bAnimVizSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44}
!161 = !{!151, !49, i64 296}
!162 = !{!148, !38, i64 152}
!163 = !{!148, !49, i64 224}
!164 = !{!151, !49, i64 400}
!165 = !{!148, !39, i64 236}
!166 = !{!151, !36, i64 404}
!167 = !{!151, !38, i64 408}
!168 = !{!151, !38, i64 416}
!169 = !{!151, !36, i64 472}
!170 = !{!148, !36, i64 345}
!171 = !{!151, !36, i64 473}
!172 = !{!151, !38, i64 0}
!173 = !{!151, !38, i64 304}
!174 = !{!151, !38, i64 432}
!175 = !{!148, !38, i64 360}
!176 = !{!177, !49, i64 396}
!177 = !{!"Material", !74, i64 0, !38, i64 120, !39, i64 128, !39, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !178, i64 224, !179, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !36, i64 362, !36, i64 363, !41, i64 364, !41, i64 368, !39, i64 372, !39, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !39, i64 392, !39, i64 394, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !36, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !49, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !36, i64 550, !36, i64 551, !39, i64 552, !39, i64 554, !41, i64 556, !41, i64 560, !36, i64 564, !41, i64 580, !41, i64 584, !39, i64 588, !39, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !39, i64 612, !39, i64 614, !41, i64 616, !41, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !39, i64 820, !39, i64 822, !36, i64 824, !36, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !39, i64 876, !39, i64 878, !49, i64 880, !39, i64 884, !39, i64 886, !36, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !36, i64 914, !38, i64 920, !59, i64 928}
!178 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!179 = !{!"GameSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!180 = !{!177, !41, i64 200}
!181 = distinct !{!181, !46}
!182 = !{!"gpu_draw.c:gpu_material_to_fixed"}
!183 = !{!184, !49, i64 32}
!184 = !{!"GPUMaterialFixed", !36, i64 0, !36, i64 16, !49, i64 32}
!185 = !{!177, !41, i64 204}
!186 = !{!177, !41, i64 184}
!187 = !{!177, !39, i64 394}
!188 = !{!177, !41, i64 208}
!189 = !{!177, !39, i64 360}
!190 = !{!"gpu_draw.c:gpu_active_node_material"}
!191 = !{!177, !36, i64 543}
!192 = !{!177, !38, i64 768}
!193 = !{!194, !38, i64 240}
!194 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !36, i64 40, !36, i64 104, !49, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !36, i64 188, !59, i64 200, !59, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !59, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !49, i64 308, !36, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !38, i64 392, !149, i64 400, !149, i64 416, !149, i64 432, !39, i64 448, !39, i64 450, !49, i64 452, !38, i64 456}
!195 = !{!151, !38, i64 376}
!196 = !{!159, !49, i64 944}
!197 = !{!159, !49, i64 432}
!198 = !{!159, !38, i64 1296}
!199 = !{!200, !41, i64 1052}
!200 = !{!"DerivedMesh", !201, i64 0, !201, i64 200, !201, i64 400, !201, i64 600, !201, i64 800, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !38, i64 1032, !38, i64 1040, !49, i64 1048, !41, i64 1052, !49, i64 1056, !49, i64 1060, !38, i64 1064, !36, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!201 = !{!"CustomData", !38, i64 0, !36, i64 8, !49, i64 172, !49, i64 176, !49, i64 180, !38, i64 184, !38, i64 192}
!202 = !{!177, !49, i64 316}
!203 = !{!177, !49, i64 312}
!204 = !{!"gpu_draw.c:mul_v3_v3fl"}
!205 = !{!"gpu_draw.c:gpu_set_alpha_blend"}
!206 = !{!89, !41, i64 8972}
!207 = !{!"gpu_draw.c:copy_v4_v4"}
!208 = !{!209, !49, i64 0}
!209 = !{!"SolidLight", !49, i64 0, !49, i64 4, !36, i64 8, !36, i64 24, !36, i64 40}
!210 = distinct !{!210, !46}
!211 = !{!"gpu_draw.c:normalize_v3_v3"}
!212 = distinct !{!212, !46}
!213 = !{!214, !38, i64 32}
!214 = !{!"Base", !38, i64 0, !38, i64 8, !49, i64 16, !49, i64 20, !49, i64 24, !39, i64 28, !39, i64 30, !38, i64 32}
!215 = !{!159, !39, i64 136}
!216 = !{!214, !49, i64 16}
!217 = !{!159, !38, i64 296}
!218 = !{!219, !39, i64 128}
!219 = !{!"Lamp", !74, i64 0, !38, i64 120, !39, i64 128, !39, i64 130, !49, i64 132, !39, i64 136, !39, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !38, i64 200, !39, i64 208, !39, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !36, i64 248, !36, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !39, i64 340, !36, i64 342, !38, i64 344, !36, i64 352, !39, i64 496, !39, i64 498, !36, i64 500, !38, i64 504, !38, i64 512}
!220 = !{!219, !41, i64 192}
!221 = !{!219, !41, i64 176}
!222 = !{!219, !41, i64 196}
!223 = !{!219, !41, i64 180}
!224 = !{!219, !41, i64 184}
!225 = !{!219, !41, i64 172}
!226 = distinct !{!226, !46}
!227 = !{!"gpu_draw.c:copy_v3_v3"}
!228 = !{!"gpu_draw.c:negate_v3_v3"}
!229 = distinct !{!229, !46}
!230 = !{!"gpu_draw.c:gpu_multisample"}
!231 = !{!"gpu_draw.c:max_ff"}
!232 = !{!"gpu_draw.c:min_ff"}
!233 = !{!"gpu_draw.c:is_power_of_2_i"}
!234 = !{i32 0, i32 33}
!235 = !{!"gpu_draw.c:min_ii"}
!236 = !{!"gpu_draw.c:power_of_2_min_i"}
!237 = distinct !{!237, !46}
!238 = !{!"gpu_draw.c:linearrgb_to_srgb_v3_v3"}
!239 = !{!"gpu_draw.c:zero_v4"}
!240 = !{!"gpu_draw.c:mul_v3_v3"}
!241 = !{!"gpu_draw.c:dot_v3v3"}
!242 = !{!"gpu_draw.c:zero_v3"}
