; ModuleID = 'blender/source/blender/render/intern/source/render_texture.c'
source_filename = "blender/source/blender/render/intern/source/render_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.CompatibleBump = type { [3 x float], [3 x float], [3 x float], float, float, float, float, i8 }
%struct.NTapBump = type { i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], float, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }

@random_tex_array = internal unnamed_addr global ptr null, align 8
@R = external global %struct.Render, align 8
@render_realtime_texture.imatex = internal global [1 x %struct.Tex] zeroinitializer, align 16
@render_realtime_texture.firsttime = internal unnamed_addr global i1 false, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@__const.cubemap.proj = private unnamed_addr constant [4 x i32] [i32 0, i32 16, i32 32, i32 64], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_init_texture_rng() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_rng_threaded_new() #16
  store ptr %1, ptr @random_tex_array, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rng_threaded_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_exit_texture_rng() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_tex_array, align 8, !tbaa !34
  tail call void @BLI_rng_threaded_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_rng_threaded_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_render_textures(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @init_render_texture(ptr noundef %0, ptr noundef nonnull %8) #17
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr %8, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !60

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_texture(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %4) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 51
  %11 = icmp eq ptr %0, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !65
  %17 = and i16 %16, 4
  %18 = zext nneg i16 %17 to i32
  br label %19

19:                                               ; preds = %9, %12
  %20 = phi i32 [ %14, %12 ], [ 0, %9 ]
  %21 = phi i32 [ %18, %12 ], [ 0, %9 ]
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %10, i32 noundef %20, i32 noundef %21) #16
  br label %54

22:                                               ; preds = %6, %2
  %23 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 32
  %24 = load i16, ptr %23, align 8, !tbaa !66
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 30
  %28 = load i16, ptr %27, align 4, !tbaa !67
  %29 = or i16 %28, 5
  store i16 %29, ptr %27, align 4, !tbaa !67
  %30 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 42
  store i16 2, ptr %30, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 56
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 5
  %36 = load i16, ptr %35, align 4, !tbaa !70
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i16 1, ptr %30, align 8, !tbaa !68
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !72
  %41 = icmp ne i8 %40, 0
  %42 = icmp ne ptr %0, null
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 6
  %51 = load i16, ptr %50, align 2, !tbaa !75
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void @BKE_free_envmapdata(ptr noundef nonnull %32) #16
  br label %54

54:                                               ; preds = %22, %39, %49, %53, %44, %26, %19
  %55 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 61
  %60 = load i8, ptr %59, align 8, !tbaa !77
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %56) #16
  br label %64

64:                                               ; preds = %62, %58, %54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_render_textures(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call fastcc void @end_render_texture(ptr noundef nonnull %8) #17
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !78

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @end_render_texture(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 61
  %3 = load i8, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %11) #16
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @multitex_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8, !tbaa !83
  %13 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext %12) #17
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext %11) unnamed_addr #0 !PGOFuncName !84 {
  %13 = alloca %struct.MTex, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  br label %89

19:                                               ; preds = %12
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %23 = load i16, ptr %22, align 8, !tbaa !66
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %58, label %86

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.MTex, ptr %9, i64 0, i32 19
  %27 = load i16, ptr %26, align 2, !tbaa !85
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %29 = load i16, ptr %28, align 8, !tbaa !66
  %30 = icmp eq i16 %29, 8
  br i1 %30, label %31, label %86

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 6
  tail call fastcc void @do_2d_mapping(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %33, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3) #17
  %35 = tail call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %27, ptr noundef %10) #17
  %36 = getelementptr inbounds %struct.MTex, ptr %9, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !89
  %38 = and i16 %37, 13
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %89, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %44 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %42, ptr noundef nonnull %43, ptr noundef %10) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ImBuf, ptr %44, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = icmp eq ptr %48, null
  %50 = icmp ne i8 %11, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %54 = getelementptr inbounds %struct.ImBuf, ptr %44, i64 0, i32 34
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  tail call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %53, ptr noundef %55) #16
  br label %56

56:                                               ; preds = %52, %46, %40
  %57 = load ptr, ptr %41, align 8, !tbaa !63
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %57, ptr noundef %44, ptr noundef %10) #16
  br label %89

58:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  %59 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 10
  store i8 0, ptr %59, align 1, !tbaa !94
  %60 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  store ptr %0, ptr %60, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 4
  store ptr null, ptr %61, align 8, !tbaa !96
  store i16 1, ptr %13, align 8, !tbaa !97
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %1) #17
  %62 = icmp ne ptr %2, null
  %63 = icmp ne ptr %3, null
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %2) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %3) #17
  br label %67

66:                                               ; preds = %58
  call fastcc void @zero_v3(ptr noundef nonnull %15) #17
  call fastcc void @zero_v3(ptr noundef nonnull %16) #17
  br label %67

67:                                               ; preds = %66, %65
  call fastcc void @do_2d_mapping(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  %68 = call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %10) #17
  %69 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  %71 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %72 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %70, ptr noundef nonnull %71, ptr noundef %10) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !90
  %77 = icmp eq ptr %76, null
  %78 = icmp ne i8 %11, 0
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %82 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 34
  %83 = load ptr, ptr %82, align 8, !tbaa !93
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %81, ptr noundef %83) #16
  br label %84

84:                                               ; preds = %80, %74, %67
  %85 = load ptr, ptr %69, align 8, !tbaa !63
  call void @BKE_image_pool_release_ibuf(ptr noundef %85, ptr noundef %72, ptr noundef %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %13) #18
  br label %89

86:                                               ; preds = %25, %21
  %87 = phi i16 [ %27, %25 ], [ %7, %21 ]
  %88 = tail call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %87, ptr noundef %10) #17
  br label %89

89:                                               ; preds = %84, %56, %31, %86, %18
  %90 = phi i32 [ 0, %18 ], [ %88, %86 ], [ %35, %56 ], [ %35, %31 ], [ %68, %84 ]
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @multitex_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef null, ptr noundef %6, i8 noundef zeroext %7) #17
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @multitex_ext_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 61
  %7 = load i8, ptr %6, align 8, !tbaa !77
  store i8 0, ptr %6, align 8, !tbaa !77
  %8 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %2, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef null, ptr noundef %3, i8 noundef zeroext %4) #17
  store i8 %7, ptr %6, align 8, !tbaa !77
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @texture_rgb_blend(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  switch i32 %5, label %271 [
    i32 0, label %7
    i32 1, label %28
    i32 8, label %49
    i32 9, label %79
    i32 3, label %132
    i32 2, label %134
    i32 4, label %152
    i32 6, label %184
    i32 5, label %211
    i32 7, label %235
    i32 10, label %259
    i32 11, label %261
    i32 12, label %263
    i32 13, label %265
    i32 15, label %267
    i32 16, label %269
  ]

7:                                                ; preds = %6
  %8 = fmul float %3, %4
  %9 = fsub float 1.000000e+00, %8
  %10 = load float, ptr %1, align 4, !tbaa !98
  %11 = load float, ptr %2, align 4, !tbaa !98
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %12)
  store float %13, ptr %0, align 4, !tbaa !98
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !98
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !98
  %18 = fmul float %9, %17
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %18)
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !98
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !98
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !98
  %25 = fmul float %9, %24
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %22, float %25)
  %27 = getelementptr inbounds float, ptr %0, i64 2
  store float %26, ptr %27, align 4, !tbaa !98
  br label %271

28:                                               ; preds = %6
  %29 = fmul float %3, %4
  %30 = fsub float 1.000000e+00, %29
  %31 = load float, ptr %1, align 4, !tbaa !98
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %30)
  %33 = load float, ptr %2, align 4, !tbaa !98
  %34 = fmul float %32, %33
  store float %34, ptr %0, align 4, !tbaa !98
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !98
  %37 = tail call float @llvm.fmuladd.f32(float %29, float %36, float %30)
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !98
  %40 = fmul float %37, %39
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !98
  %42 = getelementptr inbounds float, ptr %1, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !98
  %44 = tail call float @llvm.fmuladd.f32(float %29, float %43, float %30)
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !98
  %47 = fmul float %44, %46
  %48 = getelementptr inbounds float, ptr %0, i64 2
  store float %47, ptr %48, align 4, !tbaa !98
  br label %271

49:                                               ; preds = %6
  %50 = fmul float %3, %4
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, ptr %1, align 4, !tbaa !98
  %53 = fsub float 1.000000e+00, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %53, float %51)
  %55 = load float, ptr %2, align 4, !tbaa !98
  %56 = fsub float 1.000000e+00, %55
  %57 = fneg float %54
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %56, float 1.000000e+00)
  store float %58, ptr %0, align 4, !tbaa !98
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !98
  %61 = fsub float 1.000000e+00, %60
  %62 = tail call float @llvm.fmuladd.f32(float %50, float %61, float %51)
  %63 = getelementptr inbounds float, ptr %2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !98
  %65 = fsub float 1.000000e+00, %64
  %66 = fneg float %62
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %65, float 1.000000e+00)
  %68 = getelementptr inbounds float, ptr %0, i64 1
  store float %67, ptr %68, align 4, !tbaa !98
  %69 = getelementptr inbounds float, ptr %1, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !98
  %71 = fsub float 1.000000e+00, %70
  %72 = tail call float @llvm.fmuladd.f32(float %50, float %71, float %51)
  %73 = getelementptr inbounds float, ptr %2, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !98
  %75 = fsub float 1.000000e+00, %74
  %76 = fneg float %72
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %75, float 1.000000e+00)
  %78 = getelementptr inbounds float, ptr %0, i64 2
  store float %77, ptr %78, align 4, !tbaa !98
  br label %271

79:                                               ; preds = %6
  %80 = fmul float %3, %4
  %81 = fsub float 1.000000e+00, %80
  %82 = load float, ptr %2, align 4, !tbaa !98
  %83 = fcmp olt float %82, 5.000000e-01
  %84 = fmul float %80, 2.000000e+00
  %85 = load float, ptr %1, align 4, !tbaa !98
  br i1 %83, label %86, label %89

86:                                               ; preds = %79
  %87 = tail call float @llvm.fmuladd.f32(float %84, float %85, float %81)
  %88 = fmul float %82, %87
  br label %95

89:                                               ; preds = %79
  %90 = fsub float 1.000000e+00, %85
  %91 = tail call float @llvm.fmuladd.f32(float %84, float %90, float %81)
  %92 = fsub float 1.000000e+00, %82
  %93 = fneg float %91
  %94 = tail call float @llvm.fmuladd.f32(float %93, float %92, float 1.000000e+00)
  br label %95

95:                                               ; preds = %89, %86
  %96 = phi float [ %94, %89 ], [ %88, %86 ]
  store float %96, ptr %0, align 4, !tbaa !98
  %97 = getelementptr inbounds float, ptr %2, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !98
  %99 = fcmp olt float %98, 5.000000e-01
  %100 = fmul float %80, 2.000000e+00
  %101 = getelementptr inbounds float, ptr %1, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !98
  br i1 %99, label %103, label %106

103:                                              ; preds = %95
  %104 = tail call float @llvm.fmuladd.f32(float %100, float %102, float %81)
  %105 = fmul float %98, %104
  br label %112

106:                                              ; preds = %95
  %107 = fsub float 1.000000e+00, %102
  %108 = tail call float @llvm.fmuladd.f32(float %100, float %107, float %81)
  %109 = fsub float 1.000000e+00, %98
  %110 = fneg float %108
  %111 = tail call float @llvm.fmuladd.f32(float %110, float %109, float 1.000000e+00)
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi float [ %105, %103 ], [ %111, %106 ]
  %114 = getelementptr inbounds float, ptr %0, i64 1
  store float %113, ptr %114, align 4
  %115 = getelementptr inbounds float, ptr %2, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !98
  %117 = fcmp olt float %116, 5.000000e-01
  %118 = fmul float %80, 2.000000e+00
  %119 = getelementptr inbounds float, ptr %1, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !98
  br i1 %117, label %121, label %125

121:                                              ; preds = %112
  %122 = tail call float @llvm.fmuladd.f32(float %118, float %120, float %81)
  %123 = fmul float %116, %122
  %124 = getelementptr inbounds float, ptr %0, i64 2
  store float %123, ptr %124, align 4, !tbaa !98
  br label %271

125:                                              ; preds = %112
  %126 = fsub float 1.000000e+00, %120
  %127 = tail call float @llvm.fmuladd.f32(float %118, float %126, float %81)
  %128 = fsub float 1.000000e+00, %116
  %129 = fneg float %127
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %128, float 1.000000e+00)
  %131 = getelementptr inbounds float, ptr %0, i64 2
  store float %130, ptr %131, align 4, !tbaa !98
  br label %271

132:                                              ; preds = %6
  %133 = fneg float %3
  br label %134

134:                                              ; preds = %6, %132
  %135 = phi float [ %3, %6 ], [ %133, %132 ]
  %136 = fmul float %135, %4
  %137 = load float, ptr %1, align 4, !tbaa !98
  %138 = load float, ptr %2, align 4, !tbaa !98
  %139 = tail call float @llvm.fmuladd.f32(float %136, float %137, float %138)
  store float %139, ptr %0, align 4, !tbaa !98
  %140 = getelementptr inbounds float, ptr %1, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !98
  %142 = getelementptr inbounds float, ptr %2, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !98
  %144 = tail call float @llvm.fmuladd.f32(float %136, float %141, float %143)
  %145 = getelementptr inbounds float, ptr %0, i64 1
  store float %144, ptr %145, align 4, !tbaa !98
  %146 = getelementptr inbounds float, ptr %1, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !98
  %148 = getelementptr inbounds float, ptr %2, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !98
  %150 = tail call float @llvm.fmuladd.f32(float %136, float %147, float %149)
  %151 = getelementptr inbounds float, ptr %0, i64 2
  store float %150, ptr %151, align 4, !tbaa !98
  br label %271

152:                                              ; preds = %6
  %153 = fmul float %3, %4
  %154 = fsub float 1.000000e+00, %153
  %155 = load float, ptr %1, align 4, !tbaa !98
  %156 = fcmp une float %155, 0.000000e+00
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load float, ptr %2, align 4, !tbaa !98
  %159 = fmul float %153, %158
  %160 = fdiv float %159, %155
  %161 = tail call float @llvm.fmuladd.f32(float %154, float %158, float %160)
  store float %161, ptr %0, align 4, !tbaa !98
  br label %162

162:                                              ; preds = %157, %152
  %163 = getelementptr inbounds float, ptr %1, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !98
  %165 = fcmp une float %164, 0.000000e+00
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = getelementptr inbounds float, ptr %2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !98
  %169 = fmul float %153, %168
  %170 = fdiv float %169, %164
  %171 = tail call float @llvm.fmuladd.f32(float %154, float %168, float %170)
  %172 = getelementptr inbounds float, ptr %0, i64 1
  store float %171, ptr %172, align 4, !tbaa !98
  br label %173

173:                                              ; preds = %166, %162
  %174 = getelementptr inbounds float, ptr %1, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !98
  %176 = fcmp une float %175, 0.000000e+00
  br i1 %176, label %177, label %271

177:                                              ; preds = %173
  %178 = getelementptr inbounds float, ptr %2, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !98
  %180 = fmul float %153, %179
  %181 = fdiv float %180, %175
  %182 = tail call float @llvm.fmuladd.f32(float %154, float %179, float %181)
  %183 = getelementptr inbounds float, ptr %0, i64 2
  store float %182, ptr %183, align 4, !tbaa !98
  br label %271

184:                                              ; preds = %6
  %185 = fmul float %3, %4
  %186 = fsub float 1.000000e+00, %185
  %187 = load float, ptr %2, align 4, !tbaa !98
  %188 = load float, ptr %1, align 4, !tbaa !98
  %189 = fsub float %188, %187
  %190 = tail call float @llvm.fabs.f32(float %189)
  %191 = fmul float %185, %190
  %192 = tail call float @llvm.fmuladd.f32(float %186, float %187, float %191)
  store float %192, ptr %0, align 4, !tbaa !98
  %193 = getelementptr inbounds float, ptr %2, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !98
  %195 = getelementptr inbounds float, ptr %1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !98
  %197 = fsub float %196, %194
  %198 = tail call float @llvm.fabs.f32(float %197)
  %199 = fmul float %185, %198
  %200 = tail call float @llvm.fmuladd.f32(float %186, float %194, float %199)
  %201 = getelementptr inbounds float, ptr %0, i64 1
  store float %200, ptr %201, align 4, !tbaa !98
  %202 = getelementptr inbounds float, ptr %2, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !98
  %204 = getelementptr inbounds float, ptr %1, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !98
  %206 = fsub float %205, %203
  %207 = tail call float @llvm.fabs.f32(float %206)
  %208 = fmul float %185, %207
  %209 = tail call float @llvm.fmuladd.f32(float %186, float %203, float %208)
  %210 = getelementptr inbounds float, ptr %0, i64 2
  store float %209, ptr %210, align 4, !tbaa !98
  br label %271

211:                                              ; preds = %6
  %212 = fmul float %3, %4
  %213 = fsub float 1.000000e+00, %212
  %214 = load float, ptr %2, align 4, !tbaa !98
  %215 = load float, ptr %1, align 4, !tbaa !98
  %216 = tail call fastcc float @min_ff(float noundef %214, float noundef %215) #17
  %217 = fmul float %213, %214
  %218 = tail call float @llvm.fmuladd.f32(float %216, float %212, float %217)
  store float %218, ptr %0, align 4, !tbaa !98
  %219 = getelementptr inbounds float, ptr %2, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !98
  %221 = getelementptr inbounds float, ptr %1, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !98
  %223 = tail call fastcc float @min_ff(float noundef %220, float noundef %222) #17
  %224 = fmul float %213, %220
  %225 = tail call float @llvm.fmuladd.f32(float %223, float %212, float %224)
  %226 = getelementptr inbounds float, ptr %0, i64 1
  store float %225, ptr %226, align 4, !tbaa !98
  %227 = getelementptr inbounds float, ptr %2, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !98
  %229 = getelementptr inbounds float, ptr %1, i64 2
  %230 = load float, ptr %229, align 4, !tbaa !98
  %231 = tail call fastcc float @min_ff(float noundef %228, float noundef %230) #17
  %232 = fmul float %213, %228
  %233 = tail call float @llvm.fmuladd.f32(float %231, float %212, float %232)
  %234 = getelementptr inbounds float, ptr %0, i64 2
  store float %233, ptr %234, align 4, !tbaa !98
  br label %271

235:                                              ; preds = %6
  %236 = fmul float %3, %4
  %237 = load float, ptr %1, align 4, !tbaa !98
  %238 = fmul float %236, %237
  %239 = load float, ptr %2, align 4, !tbaa !98
  %240 = fcmp ogt float %238, %239
  %241 = select i1 %240, float %238, float %239
  store float %241, ptr %0, align 4, !tbaa !98
  %242 = getelementptr inbounds float, ptr %1, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !98
  %244 = fmul float %236, %243
  %245 = getelementptr inbounds float, ptr %2, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !98
  %247 = fcmp ogt float %244, %246
  %248 = select i1 %247, float %244, float %246
  %249 = getelementptr inbounds float, ptr %0, i64 1
  store float %248, ptr %249, align 4
  %250 = getelementptr inbounds float, ptr %1, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !98
  %252 = fmul float %236, %251
  %253 = getelementptr inbounds float, ptr %2, i64 2
  %254 = load float, ptr %253, align 4, !tbaa !98
  %255 = fcmp ogt float %252, %254
  %256 = getelementptr inbounds float, ptr %0, i64 2
  br i1 %255, label %257, label %258

257:                                              ; preds = %235
  store float %252, ptr %256, align 4, !tbaa !98
  br label %271

258:                                              ; preds = %235
  store float %254, ptr %256, align 4, !tbaa !98
  br label %271

259:                                              ; preds = %6
  %260 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 12, ptr noundef %0, float noundef %260, ptr noundef %1) #16
  br label %271

261:                                              ; preds = %6
  %262 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 13, ptr noundef %0, float noundef %262, ptr noundef %1) #16
  br label %271

263:                                              ; preds = %6
  %264 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 14, ptr noundef %0, float noundef %264, ptr noundef %1) #16
  br label %271

265:                                              ; preds = %6
  %266 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 15, ptr noundef %0, float noundef %266, ptr noundef %1) #16
  br label %271

267:                                              ; preds = %6
  %268 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 16, ptr noundef %0, float noundef %268, ptr noundef %1) #16
  br label %271

269:                                              ; preds = %6
  %270 = fmul float %3, %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #17
  tail call void @ramp_blend(i32 noundef 17, ptr noundef %0, float noundef %270, ptr noundef %1) #16
  br label %271

271:                                              ; preds = %257, %258, %173, %177, %121, %125, %6, %269, %267, %265, %263, %261, %259, %211, %184, %134, %49, %28, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !99 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !100 {
  %3 = load float, ptr %1, align 4, !tbaa !98
  store float %3, ptr %0, align 4, !tbaa !98
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local float @texture_value_blend(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = fcmp olt float %3, 0.000000e+00
  %7 = tail call float @llvm.fabs.f32(float %3)
  %8 = fmul float %7, %2
  %9 = fsub float 1.000000e+00, %8
  %10 = select i1 %6, float %8, float %9
  %11 = select i1 %6, float %9, float %8
  switch i32 %4, label %82 [
    i32 0, label %12
    i32 1, label %15
    i32 8, label %19
    i32 9, label %26
    i32 3, label %39
    i32 2, label %41
    i32 4, label %44
    i32 6, label %50
    i32 5, label %55
    i32 7, label %59
    i32 15, label %63
    i32 16, label %73
  ]

12:                                               ; preds = %5
  %13 = fmul float %10, %1
  %14 = tail call float @llvm.fmuladd.f32(float %11, float %0, float %13)
  br label %82

15:                                               ; preds = %5
  %16 = fsub float 1.000000e+00, %7
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %0, float %16)
  %18 = fmul float %17, %1
  br label %82

19:                                               ; preds = %5
  %20 = fsub float 1.000000e+00, %7
  %21 = fsub float 1.000000e+00, %0
  %22 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %20)
  %23 = fsub float 1.000000e+00, %1
  %24 = fneg float %22
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float 1.000000e+00)
  br label %82

26:                                               ; preds = %5
  %27 = fsub float 1.000000e+00, %7
  %28 = fcmp olt float %1, 5.000000e-01
  %29 = fmul float %11, 2.000000e+00
  br i1 %28, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call float @llvm.fmuladd.f32(float %29, float %0, float %27)
  %32 = fmul float %31, %1
  br label %82

33:                                               ; preds = %26
  %34 = fsub float 1.000000e+00, %0
  %35 = tail call float @llvm.fmuladd.f32(float %29, float %34, float %27)
  %36 = fsub float 1.000000e+00, %1
  %37 = fneg float %35
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %36, float 1.000000e+00)
  br label %82

39:                                               ; preds = %5
  %40 = fneg float %11
  br label %41

41:                                               ; preds = %5, %39
  %42 = phi float [ %11, %5 ], [ %40, %39 ]
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %0, float %1)
  br label %82

44:                                               ; preds = %5
  %45 = fcmp une float %0, 0.000000e+00
  br i1 %45, label %46, label %82

46:                                               ; preds = %44
  %47 = fmul float %11, %1
  %48 = fdiv float %47, %0
  %49 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %48)
  br label %82

50:                                               ; preds = %5
  %51 = fsub float %0, %1
  %52 = tail call float @llvm.fabs.f32(float %51)
  %53 = fmul float %52, %11
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %53)
  br label %82

55:                                               ; preds = %5
  %56 = tail call fastcc float @min_ff(float noundef %1, float noundef %0) #17
  %57 = fmul float %10, %1
  %58 = tail call float @llvm.fmuladd.f32(float %56, float %11, float %57)
  br label %82

59:                                               ; preds = %5
  %60 = fmul float %11, %0
  %61 = fcmp ogt float %60, %1
  %62 = select i1 %61, float %60, float %1
  br label %82

63:                                               ; preds = %5
  %64 = fsub float 1.000000e+00, %0
  %65 = fsub float 1.000000e+00, %1
  %66 = fneg float %64
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %65, float 1.000000e+00)
  %68 = fmul float %65, %0
  %69 = fmul float %68, %1
  %70 = fmul float %69, %11
  %71 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %1, float %67, float %71)
  br label %82

73:                                               ; preds = %5
  %74 = fcmp ogt float %0, 5.000000e-01
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = fadd float %0, -5.000000e-01
  %77 = fmul float %76, 2.000000e+00
  %78 = tail call float @llvm.fmuladd.f32(float %11, float %77, float %1)
  br label %82

79:                                               ; preds = %73
  %80 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float -1.000000e+00)
  %81 = tail call float @llvm.fmuladd.f32(float %11, float %80, float %1)
  br label %82

82:                                               ; preds = %59, %75, %79, %44, %46, %30, %33, %5, %63, %55, %50, %41, %19, %15, %12
  %83 = phi float [ 0.000000e+00, %5 ], [ %78, %75 ], [ %81, %79 ], [ %72, %63 ], [ %58, %55 ], [ %54, %50 ], [ %49, %46 ], [ 0.000000e+00, %44 ], [ %43, %41 ], [ %32, %30 ], [ %38, %33 ], [ %25, %19 ], [ %18, %15 ], [ %14, %12 ], [ %62, %59 ]
  ret float %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_material_tex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CompatibleBump, align 4
  %4 = alloca %struct.NTapBump, align 4
  %5 = alloca %struct.TexResult, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call fastcc void @compatible_bump_init(ptr noundef nonnull %3) #17
  call fastcc void @ntap_bump_init(ptr noundef nonnull %4) #17
  %17 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 46
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = and i32 %18, 8192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %915

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  %24 = getelementptr inbounds float, ptr %9, i64 1
  %25 = getelementptr inbounds float, ptr %7, i64 2
  %26 = getelementptr inbounds float, ptr %7, i64 1
  %27 = getelementptr inbounds float, ptr %8, i64 2
  %28 = getelementptr inbounds float, ptr %8, i64 1
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 99
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81
  %56 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %57 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %58 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %59 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %60 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %61 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %65 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 1
  %71 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 2
  %73 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 32
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %75 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 3
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  %80 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %81 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  %82 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  %85 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 1
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 2
  %90 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 51
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 45
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 54
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %99 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 12
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 41
  %101 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 13
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 43
  %103 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 14
  br label %104

104:                                              ; preds = %21, %890
  %105 = phi i64 [ 0, %21 ], [ %898, %890 ]
  %106 = phi float [ 1.000000e+00, %21 ], [ %897, %890 ]
  %107 = phi float [ 1.000000e+00, %21 ], [ %896, %890 ]
  %108 = phi i8 [ 0, %21 ], [ %895, %890 ]
  %109 = phi i8 [ 0, %21 ], [ %894, %890 ]
  %110 = phi i8 [ 0, %21 ], [ %893, %890 ]
  %111 = phi i8 [ 0, %21 ], [ %892, %890 ]
  %112 = phi i8 [ 1, %21 ], [ %891, %890 ]
  %113 = load ptr, ptr %0, align 8, !tbaa !102
  %114 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 73
  %115 = load i32, ptr %114, align 8, !tbaa !103
  %116 = trunc i64 %105 to i32
  %117 = shl nuw nsw i32 1, %116
  %118 = and i32 %115, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %890

120:                                              ; preds = %104
  %121 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 102, i64 %105
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = icmp eq ptr %122, null
  br i1 %123, label %890, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !95
  %127 = icmp eq ptr %126, null
  br i1 %127, label %890, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 32
  %130 = load i16, ptr %129, align 8, !tbaa !66
  %131 = icmp eq i16 %130, 8
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 30
  %134 = load i16, ptr %133, align 4, !tbaa !67
  %135 = and i16 %134, 16384
  %136 = icmp ne i16 %135, 0
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i1 [ false, %128 ], [ %136, %132 ]
  %139 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 14
  %140 = load i16, ptr %139, align 8, !tbaa !107
  %141 = zext i16 %140 to i32
  %142 = and i32 %141, 128
  %143 = icmp ne i32 %142, 0
  %144 = and i32 %141, 8960
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, i1 true, i1 %138
  %147 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 52
  %148 = load ptr, ptr %147, align 8, !tbaa !76
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 61
  %152 = load i8, ptr %151, align 8, !tbaa !77
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %153, i1 %146, i1 false
  %155 = select i1 %153, i1 %143, i1 false
  br label %156

156:                                              ; preds = %150, %137
  %157 = phi i1 [ %146, %137 ], [ %154, %150 ]
  %158 = phi i1 [ %143, %137 ], [ %155, %150 ]
  %159 = load i16, ptr %22, align 8, !tbaa !108
  %160 = icmp eq i16 %159, 0
  %161 = select i1 %160, i1 %157, i1 false
  %162 = xor i1 %161, true
  %163 = select i1 %161, i1 true, i1 %158
  %164 = icmp ne i16 %130, 16
  %165 = select i1 %164, i1 %162, i1 false
  %166 = select i1 %165, i1 %157, i1 false
  %167 = zext i1 %166 to i8
  %168 = select i1 %164, i1 %163, i1 false
  %169 = zext i1 %168 to i8
  %170 = load i16, ptr %122, align 8, !tbaa !97
  switch i16 %170, label %890 [
    i16 1, label %171
    i16 32, label %175
    i16 2, label %196
    i16 4, label %239
    i16 4096, label %197
    i16 8, label %198
    i16 16, label %199
    i16 1024, label %232
    i16 8192, label %233
    i16 16384, label %237
  ]

171:                                              ; preds = %156
  %172 = and i16 %140, 32
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %239, label %174

174:                                              ; preds = %171
  store float 0.000000e+00, ptr %25, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !98
  store float 0.000000e+00, ptr %27, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !98
  br label %239

175:                                              ; preds = %156
  %176 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !96
  %178 = icmp eq ptr %177, null
  br i1 %178, label %239, label %179

179:                                              ; preds = %175
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %48) #17
  %180 = load i16, ptr %139, align 8, !tbaa !107
  %181 = and i16 %180, 64
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %49, align 8, !tbaa !109
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %184, i64 0, i32 14
  %188 = load ptr, ptr %187, align 8, !tbaa !110
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  call void @mul_m4_v3(ptr noundef nonnull %188, ptr noundef nonnull %9) #16
  br label %191

191:                                              ; preds = %183, %186, %190, %179
  %192 = getelementptr inbounds %struct.Object, ptr %177, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %192, ptr noundef nonnull %9) #16
  %193 = load i16, ptr %22, align 8, !tbaa !108
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %239, label %195

195:                                              ; preds = %191
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %50) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %51) #17
  call void @mul_mat3_m4_v3(ptr noundef nonnull %192, ptr noundef nonnull %7) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull %192, ptr noundef nonnull %8) #16
  br label %239

196:                                              ; preds = %156
  call void @calc_R_ref(ptr noundef nonnull %0) #16
  br label %239

197:                                              ; preds = %156
  br label %239

198:                                              ; preds = %156
  br label %239

199:                                              ; preds = %156
  %200 = and i16 %140, 32
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  store float 0.000000e+00, ptr %25, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !98
  store float 0.000000e+00, ptr %27, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !98
  br label %239

203:                                              ; preds = %199
  %204 = load i32, ptr %36, align 8, !tbaa !112
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %205
  %207 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 6
  %208 = load i8, ptr %207, align 8, !tbaa !113
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %227, label %210

210:                                              ; preds = %203
  %211 = load i32, ptr %37, align 8, !tbaa !114
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = zext nneg i32 %211 to i64
  br label %215

215:                                              ; preds = %213, %224
  %216 = phi i64 [ 0, %213 ], [ %225, %224 ]
  %217 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %216, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !115
  %219 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %218, ptr noundef nonnull dereferenceable(1) %207) #19
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = trunc i64 %216 to i32
  %223 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %216
  br label %227

224:                                              ; preds = %215
  %225 = add nuw nsw i64 %216, 1
  %226 = icmp eq i64 %225, %214
  br i1 %226, label %227, label %215, !llvm.loop !117

227:                                              ; preds = %224, %210, %221, %203
  %228 = phi i32 [ %222, %221 ], [ %204, %203 ], [ 0, %210 ], [ %211, %224 ]
  %229 = phi ptr [ %223, %221 ], [ %206, %203 ], [ %206, %210 ], [ %206, %224 ]
  %230 = getelementptr inbounds %struct.ShadeInputUV, ptr %229, i64 0, i32 2
  %231 = getelementptr inbounds %struct.ShadeInputUV, ptr %229, i64 0, i32 1
  call fastcc void @compatible_bump_uv_derivs(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %122, i32 noundef %228) #17
  br label %239

232:                                              ; preds = %156
  br label %239

233:                                              ; preds = %156
  %234 = load float, ptr %29, align 4, !tbaa !118
  store float %234, ptr %9, align 4, !tbaa !98
  store <2 x float> zeroinitializer, ptr %24, align 4, !tbaa !98
  %235 = load float, ptr %30, align 8, !tbaa !119
  store float %235, ptr %7, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %26, align 4, !tbaa !98
  %236 = load float, ptr %31, align 4, !tbaa !120
  store float %236, ptr %8, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %28, align 4, !tbaa !98
  br label %239

237:                                              ; preds = %156
  %238 = load float, ptr %23, align 8, !tbaa !121
  store float %238, ptr %9, align 4, !tbaa !98
  store <2 x float> zeroinitializer, ptr %24, align 4, !tbaa !98
  store float 0.000000e+00, ptr %25, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !98
  store float 0.000000e+00, ptr %27, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !98
  br label %239

239:                                              ; preds = %156, %175, %171, %195, %191, %198, %232, %237, %233, %202, %227, %197, %196, %174
  %240 = phi ptr [ %8, %174 ], [ %47, %196 ], [ %43, %197 ], [ %40, %198 ], [ %8, %202 ], [ %231, %227 ], [ %34, %232 ], [ %8, %233 ], [ %8, %237 ], [ %8, %195 ], [ %8, %191 ], [ %55, %171 ], [ %51, %175 ], [ %43, %156 ]
  %241 = phi ptr [ %7, %174 ], [ %46, %196 ], [ %42, %197 ], [ %39, %198 ], [ %7, %202 ], [ %229, %227 ], [ %33, %232 ], [ %7, %233 ], [ %7, %237 ], [ %7, %195 ], [ %7, %191 ], [ %54, %171 ], [ %50, %175 ], [ %42, %156 ]
  %242 = phi ptr [ %52, %174 ], [ %45, %196 ], [ %41, %197 ], [ %38, %198 ], [ %35, %202 ], [ %230, %227 ], [ %32, %232 ], [ %9, %233 ], [ %9, %237 ], [ %9, %195 ], [ %9, %191 ], [ %53, %171 ], [ %48, %175 ], [ %44, %156 ]
  %243 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 1
  %244 = load i16, ptr %243, align 2, !tbaa !89
  %245 = and i16 %244, 8194
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %239
  store ptr %10, ptr %56, align 8, !tbaa !122
  store float 0.000000e+00, ptr %57, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !98
  br label %249

248:                                              ; preds = %239
  store ptr null, ptr %56, align 8, !tbaa !122
  br label %249

249:                                              ; preds = %248, %247
  %250 = icmp eq i8 %108, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %249
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %242, ptr noundef nonnull %11) #17
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi ptr [ %9, %251 ], [ %242, %249 ]
  br i1 %246, label %275, label %254

254:                                              ; preds = %252
  %255 = load i16, ptr %129, align 8, !tbaa !66
  %256 = icmp eq i16 %255, 8
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 30
  %259 = load i16, ptr %258, align 4, !tbaa !67
  %260 = and i16 %259, 2048
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %257, %254
  br i1 %168, label %263, label %267

263:                                              ; preds = %262
  %264 = fmul float %107, %106
  %265 = load ptr, ptr %58, align 8, !tbaa !124
  %266 = call fastcc i32 @compatible_bump_compute(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %126, ptr noundef nonnull %5, float noundef %264, ptr noundef %253, ptr noundef %241, ptr noundef nonnull %240, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %265) #17, !range !125
  br label %278

267:                                              ; preds = %262
  br i1 %166, label %268, label %272

268:                                              ; preds = %267
  %269 = fmul float %107, %106
  %270 = load ptr, ptr %58, align 8, !tbaa !124
  %271 = call fastcc i32 @ntap_bump_compute(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %126, ptr noundef nonnull %5, float noundef %269, ptr noundef %253, ptr noundef %241, ptr noundef nonnull %240, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %270) #17, !range !125
  br label %278

272:                                              ; preds = %267
  call fastcc void @texco_mapping(ptr noundef nonnull %0, ptr noundef nonnull %126, ptr noundef nonnull %122, ptr noundef %253, ptr noundef %241, ptr noundef nonnull %240, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %273 = load ptr, ptr %58, align 8, !tbaa !124
  %274 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %273) #17
  br label %278

275:                                              ; preds = %257, %252
  call fastcc void @texco_mapping(ptr noundef nonnull %0, ptr noundef nonnull %126, ptr noundef nonnull %122, ptr noundef %253, ptr noundef %241, ptr noundef nonnull %240, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %276 = load ptr, ptr %58, align 8, !tbaa !124
  %277 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %0, ptr noundef nonnull %122, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %276) #17
  br label %278

278:                                              ; preds = %263, %272, %268, %275
  %279 = phi i32 [ %277, %275 ], [ %266, %263 ], [ %271, %268 ], [ %274, %272 ]
  %280 = and i32 %279, 1
  %281 = icmp eq i32 %280, 0
  %282 = load i16, ptr %139, align 8, !tbaa !107
  %283 = and i16 %282, 1
  %284 = icmp eq i16 %283, 0
  %285 = select i1 %281, i1 true, i1 %284
  br i1 %285, label %289, label %286

286:                                              ; preds = %278
  %287 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %59) #17
  store float %287, ptr %5, align 8, !tbaa !126
  %288 = add nsw i32 %279, -1
  br label %289

289:                                              ; preds = %286, %278
  %290 = phi i32 [ %288, %286 ], [ %279, %278 ]
  %291 = and i16 %282, 4
  %292 = icmp eq i16 %291, 0
  br i1 %292, label %304, label %293

293:                                              ; preds = %289
  %294 = and i32 %290, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %293
  %297 = load <2 x float>, ptr %59, align 4, !tbaa !98
  %298 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %297
  store <2 x float> %298, ptr %59, align 4, !tbaa !98
  %299 = load float, ptr %60, align 4, !tbaa !127
  %300 = fsub float 1.000000e+00, %299
  store float %300, ptr %60, align 4, !tbaa !127
  br label %301

301:                                              ; preds = %296, %293
  %302 = load float, ptr %5, align 8, !tbaa !126
  %303 = fsub float 1.000000e+00, %302
  store float %303, ptr %5, align 8, !tbaa !126
  br label %304

304:                                              ; preds = %301, %289
  %305 = and i16 %282, 2
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %316, label %307

307:                                              ; preds = %304
  %308 = and i32 %290, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load float, ptr %61, align 8, !tbaa !128
  %312 = fmul float %106, %311
  store float %312, ptr %61, align 8, !tbaa !128
  br label %318

313:                                              ; preds = %307
  %314 = load float, ptr %5, align 8, !tbaa !126
  %315 = fmul float %106, %314
  store float %315, ptr %5, align 8, !tbaa !126
  br label %318

316:                                              ; preds = %304
  %317 = fmul float %107, %106
  br label %318

318:                                              ; preds = %310, %313, %316
  %319 = phi float [ %107, %310 ], [ %107, %313 ], [ %317, %316 ]
  %320 = phi float [ %312, %310 ], [ %315, %313 ], [ %106, %316 ]
  %321 = load ptr, ptr %56, align 8, !tbaa !122
  %322 = icmp eq ptr %321, null
  br i1 %322, label %373, label %323

323:                                              ; preds = %318
  %324 = and i32 %290, 2
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %355

326:                                              ; preds = %323
  %327 = and i32 %290, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %326
  call fastcc void @copy_v3_v3(ptr noundef nonnull %321, ptr noundef nonnull %59) #17
  br label %355

330:                                              ; preds = %326
  %331 = load float, ptr %5, align 8, !tbaa !126
  %332 = fadd float %331, -5.000000e-01
  %333 = call float @cosf(float noundef %332) #16
  %334 = fmul float %333, 5.000000e-01
  %335 = load float, ptr %5, align 8, !tbaa !126
  %336 = fadd float %335, -5.000000e-01
  %337 = call float @sinf(float noundef %336) #16
  %338 = fmul float %337, 5.000000e-01
  %339 = load float, ptr %62, align 4, !tbaa !98
  %340 = load float, ptr %63, align 4, !tbaa !98
  %341 = fmul float %338, %340
  %342 = call float @llvm.fmuladd.f32(float %339, float %334, float %341)
  %343 = load ptr, ptr %56, align 8, !tbaa !122
  store float %342, ptr %343, align 4, !tbaa !98
  %344 = getelementptr inbounds float, ptr %343, i64 1
  %345 = load <2 x float>, ptr %63, align 4, !tbaa !98
  %346 = insertelement <2 x float> poison, float %338, i64 0
  %347 = shufflevector <2 x float> %346, <2 x float> poison, <2 x i32> zeroinitializer
  %348 = fneg <2 x float> %345
  %349 = shufflevector <2 x float> %348, <2 x float> %345, <2 x i32> <i32 0, i32 3>
  %350 = fmul <2 x float> %347, %349
  %351 = shufflevector <2 x float> %350, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %352 = insertelement <2 x float> poison, float %334, i64 0
  %353 = shufflevector <2 x float> %352, <2 x float> poison, <2 x i32> zeroinitializer
  %354 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %345, <2 x float> %353, <2 x float> %351)
  store <2 x float> %354, ptr %344, align 4, !tbaa !98
  br label %355

355:                                              ; preds = %329, %330, %323
  %356 = load i16, ptr %243, align 2, !tbaa !89
  %357 = and i16 %356, 8192
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %373, label %359

359:                                              ; preds = %355
  %360 = load ptr, ptr %56, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  br i1 %166, label %361, label %362

361:                                              ; preds = %359
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %360) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %12) #17
  br label %362

362:                                              ; preds = %361, %359
  %363 = phi ptr [ %12, %361 ], [ %360, %359 ]
  %364 = getelementptr inbounds float, ptr %363, i64 2
  %365 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 32
  %366 = load float, ptr %365, align 4, !tbaa !129
  %367 = load <2 x float>, ptr %363, align 4, !tbaa !98
  %368 = insertelement <2 x float> poison, float %366, i64 0
  %369 = shufflevector <2 x float> %368, <2 x float> poison, <2 x i32> zeroinitializer
  %370 = fmul <2 x float> %369, %367
  store <2 x float> %370, ptr %11, align 8, !tbaa !98
  %371 = load float, ptr %364, align 4, !tbaa !98
  %372 = fmul float %366, %371
  store float %372, ptr %65, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  br label %373

373:                                              ; preds = %355, %362, %318
  %374 = phi i8 [ 1, %362 ], [ %108, %355 ], [ %108, %318 ]
  %375 = load i16, ptr %243, align 2, !tbaa !89
  %376 = and i16 %375, 13
  %377 = icmp eq i16 %376, 0
  br i1 %377, label %487, label %378

378:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %59) #17
  %379 = and i32 %290, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %382) #17
  br label %390

383:                                              ; preds = %378
  %384 = load i16, ptr %243, align 2, !tbaa !89
  %385 = and i16 %384, 128
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  store float %320, ptr %5, align 8, !tbaa !126
  br label %390

388:                                              ; preds = %383
  %389 = load float, ptr %61, align 8, !tbaa !128
  store float %389, ptr %5, align 8, !tbaa !126
  br label %390

390:                                              ; preds = %387, %388, %381
  %391 = load i16, ptr %129, align 8, !tbaa !66
  %392 = icmp eq i16 %391, 8
  br i1 %392, label %393, label %412

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 54
  %395 = load ptr, ptr %394, align 8, !tbaa !63
  %396 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 51
  %397 = load ptr, ptr %58, align 8, !tbaa !124
  %398 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %395, ptr noundef nonnull %396, ptr noundef %397) #16
  %399 = icmp eq ptr %398, null
  br i1 %399, label %410, label %400

400:                                              ; preds = %393
  %401 = getelementptr inbounds %struct.ImBuf, ptr %398, i64 0, i32 9
  %402 = load ptr, ptr %401, align 8, !tbaa !90
  %403 = icmp eq ptr %402, null
  %404 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %405 = icmp ne i8 %404, 0
  %406 = select i1 %403, i1 %405, i1 false
  br i1 %406, label %407, label %410

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.ImBuf, ptr %398, i64 0, i32 34
  %409 = load ptr, ptr %408, align 8, !tbaa !93
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %13, ptr noundef %409) #16
  br label %410

410:                                              ; preds = %407, %400, %393
  %411 = load ptr, ptr %58, align 8, !tbaa !124
  call void @BKE_image_pool_release_ibuf(ptr noundef %395, ptr noundef %398, ptr noundef %411) #16
  br label %412

412:                                              ; preds = %410, %390
  %413 = load i16, ptr %243, align 2, !tbaa !89
  %414 = and i16 %413, 1
  %415 = icmp eq i16 %414, 0
  br i1 %415, label %425, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 28
  %418 = load float, ptr %417, align 4, !tbaa !130
  %419 = fmul float %320, %418
  %420 = load float, ptr %5, align 8, !tbaa !126
  %421 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %422 = load i16, ptr %421, align 2, !tbaa !131
  %423 = sext i16 %422 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %66, ptr noundef nonnull %13, ptr noundef nonnull %66, float noundef %420, float noundef %419, i32 noundef %423) #17
  %424 = load i16, ptr %243, align 2, !tbaa !89
  br label %425

425:                                              ; preds = %416, %412
  %426 = phi i16 [ %424, %416 ], [ %413, %412 ]
  %427 = and i16 %426, 4
  %428 = icmp eq i16 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 33
  %431 = load float, ptr %430, align 8, !tbaa !132
  %432 = fmul float %320, %431
  %433 = load float, ptr %5, align 8, !tbaa !126
  %434 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %435 = load i16, ptr %434, align 2, !tbaa !131
  %436 = sext i16 %435 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %67, ptr noundef nonnull %13, ptr noundef nonnull %67, float noundef %433, float noundef %432, i32 noundef %436) #17
  %437 = load i16, ptr %243, align 2, !tbaa !89
  br label %438

438:                                              ; preds = %429, %425
  %439 = phi i16 [ %437, %429 ], [ %426, %425 ]
  %440 = and i16 %439, 8
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %485, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 34
  %444 = load float, ptr %443, align 4, !tbaa !133
  %445 = fmul float %320, %444
  %446 = load i16, ptr %129, align 8, !tbaa !66
  %447 = icmp eq i16 %446, 10
  br i1 %447, label %452, label %448

448:                                              ; preds = %442
  %449 = load float, ptr %5, align 8, !tbaa !126
  %450 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %451 = load i16, ptr %450, align 2, !tbaa !131
  br label %481

452:                                              ; preds = %442
  %453 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %454 = load i16, ptr %453, align 2, !tbaa !131
  %455 = icmp eq i16 %454, 0
  %456 = load float, ptr %5, align 8, !tbaa !126
  br i1 %455, label %457, label %481

457:                                              ; preds = %452
  %458 = load float, ptr %69, align 8, !tbaa !98
  %459 = load float, ptr %13, align 4, !tbaa !98
  %460 = load float, ptr %70, align 4, !tbaa !98
  %461 = load <2 x float>, ptr %71, align 4, !tbaa !98
  %462 = fmul float %445, %456
  %463 = fsub float 1.000000e+00, %462
  %464 = fmul float %463, %460
  %465 = load <2 x float>, ptr %72, align 8, !tbaa !98
  %466 = insertelement <2 x float> poison, float %463, i64 0
  %467 = shufflevector <2 x float> %466, <2 x float> poison, <2 x i32> zeroinitializer
  %468 = fmul <2 x float> %467, %465
  %469 = insertelement <4 x float> poison, float %463, i64 0
  %470 = insertelement <4 x float> %469, float %462, i64 1
  %471 = shufflevector <4 x float> %470, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %472 = insertelement <4 x float> poison, float %458, i64 0
  %473 = insertelement <4 x float> %472, float %459, i64 1
  %474 = shufflevector <2 x float> %461, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %475 = shufflevector <4 x float> %473, <4 x float> %474, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %476 = insertelement <4 x float> poison, float %462, i64 0
  %477 = insertelement <4 x float> %476, float %464, i64 1
  %478 = shufflevector <2 x float> %468, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %479 = shufflevector <4 x float> %477, <4 x float> %478, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %480 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %471, <4 x float> %475, <4 x float> %479)
  store <4 x float> %480, ptr %69, align 8, !tbaa !98
  br label %485

481:                                              ; preds = %448, %452
  %482 = phi i16 [ %451, %448 ], [ %454, %452 ]
  %483 = phi float [ %449, %448 ], [ %456, %452 ]
  %484 = sext i16 %482 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %68, ptr noundef nonnull %13, ptr noundef nonnull %68, float noundef %483, float noundef %445, i32 noundef %484) #17
  br label %485

485:                                              ; preds = %457, %481, %438
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  %486 = load i16, ptr %243, align 2, !tbaa !89
  br label %487

487:                                              ; preds = %485, %373
  %488 = phi i16 [ %486, %485 ], [ %375, %373 ]
  %489 = and i16 %488, 2
  %490 = icmp ne i16 %489, 0
  %491 = load ptr, ptr %56, align 8
  %492 = icmp ne ptr %491, null
  %493 = select i1 %490, i1 %492, i1 false
  br i1 %493, label %494, label %631

494:                                              ; preds = %487
  %495 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 30
  %496 = load float, ptr %495, align 4, !tbaa !134
  %497 = load i16, ptr %129, align 8, !tbaa !66
  %498 = icmp eq i16 %497, 8
  br i1 %498, label %499, label %580

499:                                              ; preds = %494
  %500 = getelementptr inbounds %struct.Tex, ptr %126, i64 0, i32 30
  %501 = load i16, ptr %500, align 4, !tbaa !67
  %502 = and i16 %501, 2048
  %503 = icmp eq i16 %502, 0
  br i1 %503, label %580, label %504

504:                                              ; preds = %499
  %505 = fcmp olt float %496, 0.000000e+00
  br i1 %505, label %506, label %509

506:                                              ; preds = %504
  %507 = load <2 x float>, ptr %491, align 4, !tbaa !98
  %508 = fneg <2 x float> %507
  store <2 x float> %508, ptr %491, align 4, !tbaa !98
  br label %509

509:                                              ; preds = %506, %504
  %510 = call float @llvm.fabs.f32(float %496)
  %511 = fmul float %319, %510
  %512 = fcmp ogt float %511, 1.000000e+00
  %513 = select i1 %512, float 1.000000e+00, float %511
  %514 = fsub float 1.000000e+00, %513
  %515 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 18
  %516 = load i16, ptr %515, align 8, !tbaa !135
  %517 = icmp eq i16 %516, 3
  br i1 %517, label %518, label %555

518:                                              ; preds = %509
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  %519 = icmp eq i8 %112, 0
  %520 = select i1 %519, ptr %62, ptr %76
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %520, ptr noundef nonnull %77) #17
  %521 = load float, ptr %78, align 4, !tbaa !98
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %521) #17
  %522 = load float, ptr %491, align 4, !tbaa !98
  %523 = load float, ptr %77, align 8, !tbaa !98
  %524 = getelementptr inbounds float, ptr %491, i64 1
  %525 = load float, ptr %524, align 4, !tbaa !98
  %526 = load float, ptr %14, align 4, !tbaa !98
  %527 = fmul float %525, %526
  %528 = call float @llvm.fmuladd.f32(float %522, float %523, float %527)
  %529 = getelementptr inbounds float, ptr %491, i64 2
  %530 = load float, ptr %529, align 4, !tbaa !98
  %531 = load float, ptr %520, align 4, !tbaa !98
  %532 = call float @llvm.fmuladd.f32(float %530, float %531, float %528)
  %533 = load float, ptr %79, align 4, !tbaa !98
  %534 = load float, ptr %80, align 4, !tbaa !98
  %535 = fmul float %525, %534
  %536 = call float @llvm.fmuladd.f32(float %522, float %533, float %535)
  %537 = getelementptr inbounds float, ptr %520, i64 1
  %538 = load float, ptr %537, align 4, !tbaa !98
  %539 = call float @llvm.fmuladd.f32(float %530, float %538, float %536)
  %540 = load float, ptr %81, align 8, !tbaa !98
  %541 = load float, ptr %82, align 4, !tbaa !98
  %542 = fmul float %525, %541
  %543 = call float @llvm.fmuladd.f32(float %522, float %540, float %542)
  %544 = getelementptr inbounds float, ptr %520, i64 2
  %545 = load float, ptr %544, align 4, !tbaa !98
  %546 = call float @llvm.fmuladd.f32(float %530, float %545, float %543)
  %547 = fmul float %513, %532
  %548 = call float @llvm.fmuladd.f32(float %514, float %531, float %547)
  store float %548, ptr %62, align 4, !tbaa !98
  %549 = load float, ptr %537, align 4, !tbaa !98
  %550 = fmul float %513, %539
  %551 = call float @llvm.fmuladd.f32(float %514, float %549, float %550)
  store float %551, ptr %63, align 4, !tbaa !98
  %552 = load float, ptr %544, align 4, !tbaa !98
  %553 = fmul float %513, %546
  %554 = call float @llvm.fmuladd.f32(float %514, float %552, float %553)
  store float %554, ptr %64, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  br label %623

555:                                              ; preds = %509
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %491) #17
  %556 = load i16, ptr %515, align 8, !tbaa !135
  switch i16 %556, label %567 [
    i16 2, label %557
    i16 1, label %566
  ]

557:                                              ; preds = %555
  %558 = load ptr, ptr %74, align 8, !tbaa !136
  %559 = icmp eq ptr %558, null
  br i1 %559, label %566, label %560

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.ObjectRen, ptr %558, i64 0, i32 2
  %562 = load ptr, ptr %561, align 8, !tbaa !137
  %563 = icmp eq ptr %562, null
  br i1 %563, label %566, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.Object, ptr %562, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %565, ptr noundef nonnull %15) #16
  br label %566

566:                                              ; preds = %557, %560, %564, %555
  call void @mul_mat3_m4_v3(ptr noundef nonnull %73, ptr noundef nonnull %15) #16
  br label %567

567:                                              ; preds = %566, %555
  call fastcc void @normalize_v3(ptr noundef nonnull %15) #17
  %568 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %569 = load <2 x float>, ptr %15, align 8, !tbaa !98
  %570 = insertelement <2 x float> poison, float %513, i64 0
  %571 = shufflevector <2 x float> %570, <2 x float> poison, <2 x i32> zeroinitializer
  %572 = fmul <2 x float> %571, %569
  %573 = insertelement <2 x float> poison, float %514, i64 0
  %574 = shufflevector <2 x float> %573, <2 x float> poison, <2 x i32> zeroinitializer
  %575 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %574, <2 x float> %568, <2 x float> %572)
  store <2 x float> %575, ptr %62, align 4, !tbaa !98
  %576 = load float, ptr %64, align 4, !tbaa !98
  %577 = load float, ptr %75, align 8, !tbaa !98
  %578 = fmul float %513, %577
  %579 = call float @llvm.fmuladd.f32(float %514, float %576, float %578)
  store float %579, ptr %64, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  br label %623

580:                                              ; preds = %499, %494
  %581 = select i1 %168, i1 true, i1 %166
  br i1 %581, label %582, label %588

582:                                              ; preds = %580
  %583 = load float, ptr %491, align 4, !tbaa !98
  store float %583, ptr %62, align 4, !tbaa !98
  %584 = getelementptr inbounds float, ptr %491, i64 1
  %585 = load float, ptr %584, align 4, !tbaa !98
  store float %585, ptr %63, align 4, !tbaa !98
  %586 = getelementptr inbounds float, ptr %491, i64 2
  %587 = load float, ptr %586, align 4, !tbaa !98
  store float %587, ptr %64, align 4, !tbaa !98
  br label %623

588:                                              ; preds = %580
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  %589 = load ptr, ptr %0, align 8, !tbaa !102
  %590 = getelementptr inbounds %struct.Material, ptr %589, i64 0, i32 51
  %591 = load i32, ptr %590, align 4, !tbaa !139
  %592 = and i32 %591, 67108864
  %593 = icmp eq i32 %592, 0
  %594 = fmul float %319, %496
  br i1 %593, label %607, label %595

595:                                              ; preds = %588
  %596 = load float, ptr %491, align 4, !tbaa !98
  %597 = load float, ptr %41, align 8, !tbaa !98
  %598 = call float @llvm.fmuladd.f32(float %594, float %596, float %597)
  store float %598, ptr %41, align 8, !tbaa !98
  %599 = getelementptr inbounds float, ptr %491, i64 1
  %600 = load float, ptr %599, align 4, !tbaa !98
  %601 = load float, ptr %83, align 4, !tbaa !98
  %602 = call float @llvm.fmuladd.f32(float %594, float %600, float %601)
  store float %602, ptr %83, align 4, !tbaa !98
  %603 = getelementptr inbounds float, ptr %491, i64 2
  %604 = load float, ptr %603, align 4, !tbaa !98
  %605 = load float, ptr %84, align 8, !tbaa !98
  %606 = call float @llvm.fmuladd.f32(float %594, float %604, float %605)
  store float %606, ptr %84, align 8, !tbaa !98
  br label %607

607:                                              ; preds = %588, %595
  %608 = load <2 x float>, ptr %491, align 4, !tbaa !98
  %609 = insertelement <2 x float> poison, float %594, i64 0
  %610 = shufflevector <2 x float> %609, <2 x float> poison, <2 x i32> zeroinitializer
  %611 = fmul <2 x float> %610, %608
  store <2 x float> %611, ptr %16, align 8, !tbaa !98
  %612 = getelementptr inbounds float, ptr %491, i64 2
  %613 = load float, ptr %612, align 4, !tbaa !98
  %614 = fmul float %594, %613
  store float %614, ptr %85, align 8, !tbaa !98
  %615 = call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %62) #17
  %616 = call float @llvm.fmuladd.f32(float %615, float 5.000000e-01, float 5.000000e-01)
  %617 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %618 = insertelement <2 x float> poison, float %616, i64 0
  %619 = shufflevector <2 x float> %618, <2 x float> poison, <2 x i32> zeroinitializer
  %620 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %619, <2 x float> %611, <2 x float> %617)
  store <2 x float> %620, ptr %62, align 4, !tbaa !98
  %621 = load float, ptr %64, align 4, !tbaa !98
  %622 = call float @llvm.fmuladd.f32(float %616, float %614, float %621)
  store float %622, ptr %64, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  br label %623

623:                                              ; preds = %582, %607, %518, %567
  %624 = phi i8 [ 0, %518 ], [ %112, %567 ], [ %112, %582 ], [ %112, %607 ]
  %625 = phi i8 [ 1, %518 ], [ 1, %567 ], [ %111, %582 ], [ %111, %607 ]
  call fastcc void @normalize_v3(ptr noundef nonnull %62) #17
  %626 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %627 = fneg <2 x float> %626
  store <2 x float> %627, ptr %44, align 8, !tbaa !98
  %628 = load float, ptr %64, align 4, !tbaa !98
  %629 = fneg float %628
  store float %629, ptr %86, align 8, !tbaa !98
  %630 = load i16, ptr %243, align 2, !tbaa !89
  br label %631

631:                                              ; preds = %623, %487
  %632 = phi i16 [ %630, %623 ], [ %488, %487 ]
  %633 = phi i8 [ %624, %623 ], [ %112, %487 ]
  %634 = phi i8 [ %625, %623 ], [ %111, %487 ]
  %635 = and i16 %632, 4096
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %709, label %637

637:                                              ; preds = %631
  %638 = load ptr, ptr %56, align 8, !tbaa !122
  %639 = icmp eq ptr %638, null
  br i1 %639, label %656, label %640

640:                                              ; preds = %637
  %641 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 30
  %642 = load float, ptr %641, align 4, !tbaa !134
  %643 = fmul float %319, 0x3FC99999A0000000
  %644 = fmul float %643, %642
  %645 = load float, ptr %638, align 4, !tbaa !98
  %646 = load float, ptr %87, align 8, !tbaa !98
  %647 = call float @llvm.fmuladd.f32(float %644, float %645, float %646)
  store float %647, ptr %87, align 8, !tbaa !98
  %648 = getelementptr inbounds float, ptr %638, i64 1
  %649 = load float, ptr %648, align 4, !tbaa !98
  %650 = load float, ptr %88, align 4, !tbaa !98
  %651 = call float @llvm.fmuladd.f32(float %644, float %649, float %650)
  store float %651, ptr %88, align 4, !tbaa !98
  %652 = getelementptr inbounds float, ptr %638, i64 2
  %653 = load float, ptr %652, align 4, !tbaa !98
  %654 = load float, ptr %89, align 8, !tbaa !98
  %655 = call float @llvm.fmuladd.f32(float %644, float %653, float %654)
  store float %655, ptr %89, align 8, !tbaa !98
  br label %656

656:                                              ; preds = %640, %637
  %657 = and i32 %290, 1
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %661

659:                                              ; preds = %656
  %660 = load float, ptr %5, align 8, !tbaa !126
  br label %663

661:                                              ; preds = %656
  %662 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %59) #17
  store float %662, ptr %5, align 8, !tbaa !126
  br label %663

663:                                              ; preds = %659, %661
  %664 = phi float [ %660, %659 ], [ %662, %661 ]
  %665 = fsub float 5.000000e-01, %664
  %666 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 31
  %667 = load float, ptr %666, align 8, !tbaa !140
  %668 = fmul float %665, %667
  %669 = fmul float %320, %668
  %670 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %671 = load i16, ptr %670, align 2, !tbaa !131
  switch i16 %671, label %699 [
    i16 0, label %672
    i16 1, label %686
    i16 3, label %697
  ]

672:                                              ; preds = %663
  %673 = fsub float 1.000000e+00, %669
  %674 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %675 = load <2 x float>, ptr %87, align 8, !tbaa !98
  %676 = insertelement <2 x float> poison, float %673, i64 0
  %677 = shufflevector <2 x float> %676, <2 x float> poison, <2 x i32> zeroinitializer
  %678 = fmul <2 x float> %677, %675
  %679 = insertelement <2 x float> poison, float %669, i64 0
  %680 = shufflevector <2 x float> %679, <2 x float> poison, <2 x i32> zeroinitializer
  %681 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %680, <2 x float> %674, <2 x float> %678)
  store <2 x float> %681, ptr %87, align 8, !tbaa !98
  %682 = load float, ptr %64, align 4, !tbaa !98
  %683 = load float, ptr %89, align 8, !tbaa !98
  %684 = fmul float %673, %683
  %685 = call float @llvm.fmuladd.f32(float %669, float %682, float %684)
  store float %685, ptr %89, align 8, !tbaa !98
  br label %713

686:                                              ; preds = %663
  %687 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %688 = insertelement <2 x float> poison, float %669, i64 0
  %689 = shufflevector <2 x float> %688, <2 x float> poison, <2 x i32> zeroinitializer
  %690 = fmul <2 x float> %689, %687
  %691 = load <2 x float>, ptr %87, align 8, !tbaa !98
  %692 = fmul <2 x float> %691, %690
  store <2 x float> %692, ptr %87, align 8, !tbaa !98
  %693 = load float, ptr %64, align 4, !tbaa !98
  %694 = fmul float %669, %693
  %695 = load float, ptr %89, align 8, !tbaa !98
  %696 = fmul float %695, %694
  store float %696, ptr %89, align 8, !tbaa !98
  br label %713

697:                                              ; preds = %663
  %698 = fneg float %669
  br label %699

699:                                              ; preds = %663, %697
  %700 = phi float [ %698, %697 ], [ %669, %663 ]
  %701 = load <2 x float>, ptr %62, align 4, !tbaa !98
  %702 = load <2 x float>, ptr %87, align 8, !tbaa !98
  %703 = insertelement <2 x float> poison, float %700, i64 0
  %704 = shufflevector <2 x float> %703, <2 x float> poison, <2 x i32> zeroinitializer
  %705 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %704, <2 x float> %701, <2 x float> %702)
  store <2 x float> %705, ptr %87, align 8, !tbaa !98
  %706 = load float, ptr %64, align 4, !tbaa !98
  %707 = load float, ptr %89, align 8, !tbaa !98
  %708 = call float @llvm.fmuladd.f32(float %700, float %706, float %707)
  store float %708, ptr %89, align 8, !tbaa !98
  br label %713

709:                                              ; preds = %631
  %710 = icmp ult i16 %632, 16
  br i1 %710, label %890, label %711

711:                                              ; preds = %709
  %712 = and i32 %290, 1
  br label %713

713:                                              ; preds = %711, %686, %699, %672
  %714 = phi i32 [ %712, %711 ], [ %657, %686 ], [ %657, %699 ], [ %657, %672 ]
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %723, label %716

716:                                              ; preds = %713
  %717 = load i32, ptr %90, align 4, !tbaa !141
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %721, label %719

719:                                              ; preds = %716
  %720 = load float, ptr %61, align 8, !tbaa !128
  store float %720, ptr %5, align 8, !tbaa !126
  br label %723

721:                                              ; preds = %716
  %722 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %59) #17
  store float %722, ptr %5, align 8, !tbaa !126
  br label %723

723:                                              ; preds = %719, %721, %713
  %724 = and i16 %632, 16
  %725 = icmp eq i16 %724, 0
  br i1 %725, label %740, label %726

726:                                              ; preds = %723
  %727 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 36
  %728 = load float, ptr %727, align 4, !tbaa !142
  %729 = fmul float %320, %728
  %730 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %731 = load float, ptr %730, align 4, !tbaa !143
  %732 = load float, ptr %91, align 4, !tbaa !144
  %733 = load float, ptr %5, align 8, !tbaa !126
  %734 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %735 = load i16, ptr %734, align 2, !tbaa !131
  %736 = sext i16 %735 to i32
  %737 = call float @texture_value_blend(float noundef %731, float noundef %732, float noundef %733, float noundef %729, i32 noundef %736) #17
  %738 = fcmp olt float %737, 0.000000e+00
  %739 = select i1 %738, float 0.000000e+00, float %737
  store float %739, ptr %91, align 4, !tbaa !144
  br label %740

740:                                              ; preds = %726, %723
  %741 = and i16 %632, 32
  %742 = icmp eq i16 %741, 0
  br i1 %742, label %757, label %743

743:                                              ; preds = %740
  %744 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 37
  %745 = load float, ptr %744, align 8, !tbaa !145
  %746 = fmul float %320, %745
  %747 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %748 = load float, ptr %747, align 4, !tbaa !143
  %749 = load float, ptr %92, align 8, !tbaa !146
  %750 = load float, ptr %5, align 8, !tbaa !126
  %751 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %752 = load i16, ptr %751, align 2, !tbaa !131
  %753 = sext i16 %752 to i32
  %754 = call float @texture_value_blend(float noundef %748, float noundef %749, float noundef %750, float noundef %746, i32 noundef %753) #17
  %755 = fcmp olt float %754, 0.000000e+00
  %756 = select i1 %755, float 0.000000e+00, float %754
  store float %756, ptr %92, align 8, !tbaa !146
  br label %757

757:                                              ; preds = %743, %740
  %758 = and i16 %632, 64
  %759 = icmp eq i16 %758, 0
  br i1 %759, label %774, label %760

760:                                              ; preds = %757
  %761 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 38
  %762 = load float, ptr %761, align 4, !tbaa !147
  %763 = fmul float %320, %762
  %764 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %765 = load float, ptr %764, align 4, !tbaa !143
  %766 = load float, ptr %93, align 8, !tbaa !148
  %767 = load float, ptr %5, align 8, !tbaa !126
  %768 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %769 = load i16, ptr %768, align 2, !tbaa !131
  %770 = sext i16 %769 to i32
  %771 = call float @texture_value_blend(float noundef %765, float noundef %766, float noundef %767, float noundef %763, i32 noundef %770) #17
  %772 = fcmp olt float %771, 0.000000e+00
  %773 = select i1 %772, float 0.000000e+00, float %771
  store float %773, ptr %93, align 8, !tbaa !148
  br label %774

774:                                              ; preds = %760, %757
  %775 = and i16 %632, 128
  %776 = icmp eq i16 %775, 0
  br i1 %776, label %794, label %777

777:                                              ; preds = %774
  %778 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 35
  %779 = load float, ptr %778, align 8, !tbaa !149
  %780 = fmul float %320, %779
  %781 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %782 = load float, ptr %781, align 4, !tbaa !143
  %783 = load float, ptr %94, align 8, !tbaa !150
  %784 = load float, ptr %5, align 8, !tbaa !126
  %785 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %786 = load i16, ptr %785, align 2, !tbaa !131
  %787 = sext i16 %786 to i32
  %788 = call float @texture_value_blend(float noundef %782, float noundef %783, float noundef %784, float noundef %780, i32 noundef %787) #17
  store float %788, ptr %94, align 8, !tbaa !150
  %789 = fcmp olt float %788, 0.000000e+00
  br i1 %789, label %792, label %790

790:                                              ; preds = %777
  %791 = fcmp ogt float %788, 1.000000e+00
  br i1 %791, label %792, label %794

792:                                              ; preds = %790, %777
  %793 = phi float [ 0.000000e+00, %777 ], [ 1.000000e+00, %790 ]
  store float %793, ptr %94, align 8, !tbaa !150
  br label %794

794:                                              ; preds = %792, %790, %774
  %795 = and i16 %632, 256
  %796 = icmp eq i16 %795, 0
  br i1 %796, label %819, label %797

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 39
  %799 = load float, ptr %798, align 8, !tbaa !151
  %800 = fmul float %320, %799
  %801 = load i32, ptr %95, align 8, !tbaa !152
  %802 = sitofp i32 %801 to float
  %803 = fmul float %802, 7.812500e-03
  %804 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %805 = load float, ptr %804, align 4, !tbaa !143
  %806 = load float, ptr %5, align 8, !tbaa !126
  %807 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %808 = load i16, ptr %807, align 2, !tbaa !131
  %809 = sext i16 %808 to i32
  %810 = call float @texture_value_blend(float noundef %805, float noundef %803, float noundef %806, float noundef %800, i32 noundef %809) #17
  %811 = fmul float %810, 1.280000e+02
  %812 = fcmp olt float %811, 1.000000e+00
  br i1 %812, label %817, label %813

813:                                              ; preds = %797
  %814 = fcmp ogt float %811, 5.110000e+02
  br i1 %814, label %817, label %815

815:                                              ; preds = %813
  %816 = fptosi float %811 to i32
  br label %817

817:                                              ; preds = %813, %797, %815
  %818 = phi i32 [ %816, %815 ], [ 1, %797 ], [ 511, %813 ]
  store i32 %818, ptr %95, align 8, !tbaa !152
  br label %819

819:                                              ; preds = %817, %794
  %820 = and i16 %632, 512
  %821 = icmp eq i16 %820, 0
  br i1 %821, label %839, label %822

822:                                              ; preds = %819
  %823 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 40
  %824 = load float, ptr %823, align 4, !tbaa !153
  %825 = fmul float %320, %824
  %826 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %827 = load float, ptr %826, align 4, !tbaa !143
  %828 = load float, ptr %96, align 4, !tbaa !154
  %829 = load float, ptr %5, align 8, !tbaa !126
  %830 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %831 = load i16, ptr %830, align 2, !tbaa !131
  %832 = sext i16 %831 to i32
  %833 = call float @texture_value_blend(float noundef %827, float noundef %828, float noundef %829, float noundef %825, i32 noundef %832) #17
  store float %833, ptr %96, align 4, !tbaa !154
  %834 = fcmp olt float %833, 0.000000e+00
  br i1 %834, label %837, label %835

835:                                              ; preds = %822
  %836 = fcmp ogt float %833, 1.000000e+00
  br i1 %836, label %837, label %839

837:                                              ; preds = %835, %822
  %838 = phi float [ 0.000000e+00, %822 ], [ 1.000000e+00, %835 ]
  store float %838, ptr %96, align 4, !tbaa !154
  br label %839

839:                                              ; preds = %837, %835, %819
  %840 = and i16 %632, 1024
  %841 = icmp eq i16 %840, 0
  br i1 %841, label %859, label %842

842:                                              ; preds = %839
  %843 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 41
  %844 = load float, ptr %843, align 8, !tbaa !155
  %845 = fmul float %320, %844
  %846 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %847 = load float, ptr %846, align 4, !tbaa !143
  %848 = load float, ptr %97, align 4, !tbaa !156
  %849 = load float, ptr %5, align 8, !tbaa !126
  %850 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %851 = load i16, ptr %850, align 2, !tbaa !131
  %852 = sext i16 %851 to i32
  %853 = call float @texture_value_blend(float noundef %847, float noundef %848, float noundef %849, float noundef %845, i32 noundef %852) #17
  store float %853, ptr %97, align 4, !tbaa !156
  %854 = fcmp olt float %853, 0.000000e+00
  br i1 %854, label %857, label %855

855:                                              ; preds = %842
  %856 = fcmp ogt float %853, 1.000000e+00
  br i1 %856, label %857, label %859

857:                                              ; preds = %855, %842
  %858 = phi float [ 0.000000e+00, %842 ], [ 1.000000e+00, %855 ]
  store float %858, ptr %97, align 4, !tbaa !156
  br label %859

859:                                              ; preds = %857, %855, %839
  %860 = and i16 %632, 2048
  %861 = icmp eq i16 %860, 0
  br i1 %861, label %890, label %862

862:                                              ; preds = %859
  %863 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 42
  %864 = load float, ptr %863, align 4, !tbaa !157
  %865 = fmul float %320, %864
  %866 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 26
  %867 = load float, ptr %866, align 4, !tbaa !143
  %868 = load float, ptr %98, align 4, !tbaa !158
  %869 = load float, ptr %5, align 8, !tbaa !126
  %870 = getelementptr inbounds %struct.MTex, ptr %122, i64 0, i32 3
  %871 = load i16, ptr %870, align 2, !tbaa !131
  %872 = sext i16 %871 to i32
  %873 = call float @texture_value_blend(float noundef %867, float noundef %868, float noundef %869, float noundef %865, i32 noundef %872) #17
  store float %873, ptr %98, align 4, !tbaa !158
  %874 = fcmp olt float %873, 0.000000e+00
  br i1 %874, label %877, label %875

875:                                              ; preds = %862
  %876 = fcmp ogt float %873, 1.000000e+00
  br i1 %876, label %877, label %879

877:                                              ; preds = %875, %862
  %878 = phi float [ 0.000000e+00, %862 ], [ 1.000000e+00, %875 ]
  store float %878, ptr %98, align 4, !tbaa !158
  br label %879

879:                                              ; preds = %877, %875
  %880 = phi float [ %873, %875 ], [ %878, %877 ]
  %881 = load float, ptr %99, align 8, !tbaa !159
  %882 = load float, ptr %101, align 4, !tbaa !160
  %883 = fmul float %880, %882
  store float %883, ptr %102, align 8, !tbaa !161
  %884 = load float, ptr %103, align 8, !tbaa !162
  %885 = insertelement <2 x float> poison, float %880, i64 0
  %886 = shufflevector <2 x float> %885, <2 x float> poison, <2 x i32> zeroinitializer
  %887 = insertelement <2 x float> poison, float %881, i64 0
  %888 = insertelement <2 x float> %887, float %884, i64 1
  %889 = fmul <2 x float> %886, %888
  store <2 x float> %889, ptr %100, align 8, !tbaa !98
  br label %890

890:                                              ; preds = %156, %120, %859, %879, %709, %124, %104
  %891 = phi i8 [ %112, %104 ], [ %112, %124 ], [ %633, %879 ], [ %633, %859 ], [ %633, %709 ], [ %112, %120 ], [ %112, %156 ]
  %892 = phi i8 [ %111, %104 ], [ %111, %124 ], [ %634, %879 ], [ %634, %859 ], [ %634, %709 ], [ %111, %120 ], [ %111, %156 ]
  %893 = phi i8 [ %110, %104 ], [ %110, %124 ], [ %167, %879 ], [ %167, %859 ], [ %167, %709 ], [ %110, %120 ], [ %167, %156 ]
  %894 = phi i8 [ %109, %104 ], [ %109, %124 ], [ %169, %879 ], [ %169, %859 ], [ %169, %709 ], [ %109, %120 ], [ %169, %156 ]
  %895 = phi i8 [ %108, %104 ], [ %108, %124 ], [ %374, %879 ], [ %374, %859 ], [ %374, %709 ], [ %108, %120 ], [ %108, %156 ]
  %896 = phi float [ %107, %104 ], [ %107, %124 ], [ %319, %879 ], [ %319, %859 ], [ %319, %709 ], [ %107, %120 ], [ %107, %156 ]
  %897 = phi float [ %106, %104 ], [ %106, %124 ], [ %320, %879 ], [ %320, %859 ], [ %320, %709 ], [ %106, %120 ], [ %106, %156 ]
  %898 = add nuw nsw i64 %105, 1
  %899 = icmp eq i64 %898, 18
  br i1 %899, label %900, label %104, !llvm.loop !163

900:                                              ; preds = %890
  %901 = icmp ne i8 %894, 0
  %902 = icmp ne i8 %893, 0
  %903 = select i1 %901, i1 true, i1 %902
  %904 = icmp ne i8 %892, 0
  %905 = select i1 %903, i1 true, i1 %904
  br i1 %905, label %906, label %915

906:                                              ; preds = %900
  %907 = load ptr, ptr %0, align 8, !tbaa !102
  %908 = getelementptr inbounds %struct.Material, ptr %907, i64 0, i32 51
  %909 = load i32, ptr %908, align 4, !tbaa !139
  %910 = and i32 %909, 67108864
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %915, label %912

912:                                              ; preds = %906
  %913 = call fastcc float @dot_v3v3(ptr noundef nonnull %62, ptr noundef nonnull %41) #17
  %914 = fneg float %913
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %41, ptr noundef nonnull %62, float noundef %914) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %41) #17
  br label %915

915:                                              ; preds = %906, %912, %900, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @compatible_bump_init(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !164 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %2 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %2, align 4, !tbaa !165
  %3 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %3, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ntap_bump_init(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !168 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @calc_R_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compatible_bump_uv_derivs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !169 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  %9 = load i16, ptr %8, align 8, !tbaa !107
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %187, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = icmp eq ptr %14, null
  br i1 %15, label %187, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  %19 = icmp eq ptr %18, null
  br i1 %19, label %187, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = icmp eq ptr %22, null
  br i1 %23, label %187, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !89
  %27 = and i16 %26, 8194
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %187, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 32
  %33 = load i16, ptr %32, align 8, !tbaa !66
  %34 = icmp eq i16 %33, 8
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.Tex, ptr %31, i64 0, i32 30
  %37 = load i16, ptr %36, align 4, !tbaa !67
  %38 = and i16 %37, 2048
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %187

40:                                               ; preds = %35, %29
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = tail call ptr @RE_vlakren_get_tface(ptr noundef nonnull %14, ptr noundef %42, i32 noundef %3, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 11
  %45 = load i16, ptr %44, align 8, !tbaa !171
  %46 = sext i16 %45 to i32
  store i32 %46, ptr %5, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 12
  %48 = load i16, ptr %47, align 2, !tbaa !173
  %49 = sext i16 %48 to i32
  store i32 %49, ptr %6, align 4, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 13
  %51 = load i16, ptr %50, align 4, !tbaa !174
  %52 = sext i16 %51 to i32
  store i32 %52, ptr %7, align 4, !tbaa !172
  %53 = load ptr, ptr %41, align 8, !tbaa !87
  call void @vlr_set_uv_indices(ptr noundef %53, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %54 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 7
  %55 = load i8, ptr %54, align 4, !tbaa !175
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  %59 = load float, ptr %58, align 4, !tbaa !98
  %60 = fneg float %59
  %61 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2
  store float %60, ptr %61, align 4, !tbaa !98
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !98
  %64 = fneg float %63
  %65 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2, i64 1
  store float %64, ptr %65, align 4, !tbaa !98
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !98
  %68 = fneg float %67
  %69 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2, i64 2
  store float %68, ptr %69, align 4, !tbaa !98
  %70 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %70, ptr noundef nonnull %61) #16
  store i8 1, ptr %54, align 4, !tbaa !175
  br label %71

71:                                               ; preds = %57, %40
  %72 = icmp eq ptr %43, null
  br i1 %72, label %186, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %5, align 4, !tbaa !172
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 %75
  %77 = load i32, ptr %6, align 4, !tbaa !172
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 %78
  %80 = load i32, ptr %7, align 4, !tbaa !172
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2
  %84 = load float, ptr %83, align 4, !tbaa !98
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2, i64 1
  %87 = load <2 x float>, ptr %86, align 4, !tbaa !98
  %88 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %87)
  %89 = extractelement <2 x float> %88, i64 0
  %90 = fcmp ogt float %85, %89
  %91 = extractelement <2 x float> %88, i64 1
  %92 = fcmp ogt float %85, %91
  %93 = and i1 %90, %92
  %94 = fcmp ogt float %91, %85
  %95 = fcmp ogt float %91, %89
  %96 = and i1 %94, %95
  %97 = load ptr, ptr %21, align 8, !tbaa !170
  %98 = zext i1 %93 to i64
  %99 = getelementptr inbounds [3 x float], ptr %97, i64 0, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !98
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !176
  %103 = getelementptr inbounds [3 x float], ptr %102, i64 0, i64 %98
  %104 = load float, ptr %103, align 4, !tbaa !98
  %105 = select i1 %96, i64 1, i64 2
  %106 = getelementptr inbounds [3 x float], ptr %97, i64 0, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !98
  %108 = getelementptr inbounds [3 x float], ptr %102, i64 0, i64 %105
  %109 = load float, ptr %108, align 4, !tbaa !98
  %110 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !177
  %112 = getelementptr inbounds [3 x float], ptr %111, i64 0, i64 %98
  %113 = load float, ptr %112, align 4, !tbaa !98
  %114 = getelementptr inbounds [3 x float], ptr %111, i64 0, i64 %105
  %115 = load float, ptr %114, align 4, !tbaa !98
  %116 = load float, ptr %76, align 4, !tbaa !98
  %117 = load float, ptr %79, align 4, !tbaa !98
  %118 = getelementptr inbounds float, ptr %76, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !98
  %120 = getelementptr inbounds float, ptr %79, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !98
  %122 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %98
  %123 = load float, ptr %122, align 4, !tbaa !98
  %124 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %105
  %125 = load float, ptr %124, align 4, !tbaa !98
  %126 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 3
  %127 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1, i64 %98
  %128 = load float, ptr %127, align 4, !tbaa !98
  %129 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1, i64 %105
  %130 = load float, ptr %129, align 4, !tbaa !98
  %131 = insertelement <2 x float> poison, float %107, i64 0
  %132 = insertelement <2 x float> %131, float %113, i64 1
  %133 = insertelement <2 x float> poison, float %109, i64 0
  %134 = insertelement <2 x float> %133, float %104, i64 1
  %135 = fsub <2 x float> %132, %134
  %136 = insertelement <2 x float> poison, float %115, i64 0
  %137 = insertelement <2 x float> %136, float %100, i64 1
  %138 = fsub <2 x float> %137, %134
  %139 = load <2 x float>, ptr %82, align 4, !tbaa !98
  %140 = insertelement <2 x float> poison, float %117, i64 0
  %141 = insertelement <2 x float> %140, float %119, i64 1
  %142 = fsub <2 x float> %141, %139
  %143 = insertelement <2 x float> poison, float %116, i64 0
  %144 = insertelement <2 x float> %143, float %121, i64 1
  %145 = fsub <2 x float> %144, %139
  %146 = fneg <2 x float> %142
  %147 = shufflevector <2 x float> %138, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %148 = fmul <2 x float> %147, %146
  %149 = shufflevector <2 x float> %135, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %150 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %145, <2 x float> %149, <2 x float> %148)
  %151 = fmul <2 x float> %135, %146
  %152 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %145, <2 x float> %138, <2 x float> %151)
  %153 = shufflevector <2 x float> %152, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %154 = shufflevector <2 x float> %150, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %155 = fneg <4 x float> %154
  %156 = extractelement <4 x float> %155, i64 0
  %157 = extractelement <2 x float> %150, i64 1
  %158 = fmul float %157, %156
  %159 = extractelement <2 x float> %152, i64 0
  %160 = extractelement <2 x float> %152, i64 1
  %161 = call float @llvm.fmuladd.f32(float %160, float %159, float %158)
  %162 = shufflevector <2 x float> %146, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %163 = fmul <2 x float> %142, %162
  %164 = extractelement <2 x float> %163, i64 0
  %165 = extractelement <2 x float> %145, i64 0
  %166 = extractelement <2 x float> %145, i64 1
  %167 = call float @llvm.fmuladd.f32(float %165, float %166, float %164)
  %168 = fcmp oeq float %167, 0.000000e+00
  %169 = select i1 %168, float 0x3EE4F8B580000000, float %167
  %170 = fcmp oeq float %161, 0.000000e+00
  %171 = select i1 %170, float 0x3EE4F8B580000000, float %161
  %172 = fdiv float %169, %171
  %173 = insertelement <4 x float> poison, float %125, i64 0
  %174 = insertelement <4 x float> %173, float %130, i64 1
  %175 = insertelement <4 x float> %174, float %123, i64 2
  %176 = insertelement <4 x float> %175, float %128, i64 3
  %177 = fmul <4 x float> %176, %155
  %178 = insertelement <4 x float> poison, float %123, i64 0
  %179 = insertelement <4 x float> %178, float %128, i64 1
  %180 = insertelement <4 x float> %179, float %125, i64 2
  %181 = insertelement <4 x float> %180, float %130, i64 3
  %182 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %181, <4 x float> %177)
  %183 = insertelement <4 x float> poison, float %172, i64 0
  %184 = shufflevector <4 x float> %183, <4 x float> poison, <4 x i32> zeroinitializer
  %185 = fmul <4 x float> %184, %182
  store <4 x float> %185, ptr %126, align 4, !tbaa !98
  br label %186

186:                                              ; preds = %73, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %187

187:                                              ; preds = %24, %35, %186, %20, %16, %12, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !178 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = load float, ptr %2, align 4, !tbaa !98
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !98
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compatible_bump_compute(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 !PGOFuncName !179 {
  %14 = alloca %struct.TexResult, align 8
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 8
  %18 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %19 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 5
  %20 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !141
  store i32 %21, ptr %19, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  %22 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 32
  %23 = load i16, ptr %22, align 8, !tbaa !66
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %30, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %27 = load i16, ptr %26, align 2, !tbaa !180
  %28 = and i16 %27, 1
  %29 = icmp ne i16 %28, 0
  br label %30

30:                                               ; preds = %25, %13
  %31 = phi i1 [ true, %13 ], [ %29, %25 ]
  %32 = fmul float %5, 0xBFA47AE140000000
  %33 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 30
  %34 = load float, ptr %33, align 4, !tbaa !134
  %35 = fmul float %32, %34
  %36 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  store ptr null, ptr %36, align 8, !tbaa !122
  %38 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 7
  %39 = load i8, ptr %38, align 4, !tbaa !175
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #17
  %44 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1
  tail call void @ortho_basis_v3v3_v3(ptr noundef nonnull %0, ptr noundef nonnull %44, ptr noundef nonnull %42) #16
  store i8 1, ptr %38, align 4, !tbaa !175
  br label %45

45:                                               ; preds = %41, %30
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 15
  %47 = load i16, ptr %46, align 8, !tbaa !108
  %48 = icmp eq i16 %47, 0
  %49 = load i16, ptr %22, align 8, !tbaa !66
  %50 = icmp eq i16 %49, 8
  br i1 %48, label %51, label %68

51:                                               ; preds = %45
  br i1 %50, label %52, label %94

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  %55 = icmp eq ptr %54, null
  br i1 %55, label %94, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 51
  %58 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %54, ptr noundef nonnull %57, ptr noundef %12) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %62 = load <2 x i32>, ptr %61, align 8, !tbaa !172
  %63 = sitofp <2 x i32> %62 to <2 x float>
  %64 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi <2 x float> [ %64, %60 ], [ <float 0x3F847AE140000000, float 0x3F847AE140000000>, %56 ]
  %67 = load ptr, ptr %53, align 8, !tbaa !63
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %67, ptr noundef %58, ptr noundef %12) #16
  br label %94

68:                                               ; preds = %45
  %69 = load <2 x float>, ptr %7, align 4, !tbaa !98
  %70 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %69)
  br i1 %50, label %71, label %76

71:                                               ; preds = %68
  %72 = load <2 x float>, ptr %8, align 4, !tbaa !98
  %73 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %72)
  %74 = fcmp ogt <2 x float> %70, %73
  %75 = select <2 x i1> %74, <2 x float> %70, <2 x float> %73
  br label %94

76:                                               ; preds = %68
  %77 = getelementptr inbounds float, ptr %7, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !98
  %79 = tail call float @llvm.fabs.f32(float %78)
  %80 = load float, ptr %8, align 4, !tbaa !98
  %81 = tail call float @llvm.fabs.f32(float %80)
  %82 = getelementptr inbounds float, ptr %8, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !98
  %84 = tail call float @llvm.fabs.f32(float %83)
  %85 = getelementptr inbounds float, ptr %8, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !98
  %87 = tail call float @llvm.fabs.f32(float %86)
  %88 = extractelement <2 x float> %70, i64 0
  %89 = extractelement <2 x float> %70, i64 1
  %90 = tail call fastcc float @max_fff(float noundef %88, float noundef %89, float noundef %79) #17
  %91 = tail call fastcc float @max_fff(float noundef %81, float noundef %84, float noundef %87) #17
  %92 = insertelement <2 x float> poison, float %90, i64 0
  %93 = insertelement <2 x float> %92, float %91, i64 1
  br label %94

94:                                               ; preds = %51, %52, %76, %71, %65
  %95 = phi <2 x float> [ %75, %71 ], [ %93, %76 ], [ %66, %65 ], [ <float 0x3F847AE140000000, float 0x3F847AE140000000>, %52 ], [ <float 0x3F847AE140000000, float 0x3F847AE140000000>, %51 ]
  tail call fastcc void @texco_mapping(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #17
  %96 = tail call fastcc i32 @multitex_mtex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %4, ptr noundef %12) #17
  br i1 %31, label %97, label %107

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !181
  %100 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 2
  %101 = load float, ptr %100, align 8, !tbaa !182
  %102 = fadd float %99, %101
  %103 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 3
  %104 = load float, ptr %103, align 4, !tbaa !127
  %105 = fadd float %102, %104
  %106 = fdiv float %105, 3.000000e+00
  br label %109

107:                                              ; preds = %94
  %108 = load float, ptr %4, align 8, !tbaa !126
  br label %109

109:                                              ; preds = %107, %97
  %110 = phi float [ %106, %97 ], [ %108, %107 ]
  %111 = load i16, ptr %2, align 8, !tbaa !97
  %112 = icmp eq i16 %111, 16
  br i1 %112, label %113, label %175

113:                                              ; preds = %109
  %114 = extractelement <2 x float> %95, i64 0
  %115 = extractelement <2 x float> %95, i64 1
  %116 = tail call fastcc float @min_ff(float noundef %114, float noundef %115) #17
  %117 = fcmp olt float %116, 0x3EE4F8B580000000
  %118 = select i1 %117, float 1.000000e+00, float %116
  %119 = fdiv float %35, %118
  %120 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 3
  %121 = load float, ptr %120, align 4, !tbaa !165
  %122 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 5
  %123 = load float, ptr %122, align 4, !tbaa !183
  %124 = load <2 x float>, ptr %6, align 4, !tbaa !98
  %125 = insertelement <2 x float> poison, float %121, i64 0
  %126 = insertelement <2 x float> %125, float %123, i64 1
  %127 = insertelement <2 x float> poison, float %116, i64 0
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> zeroinitializer
  %129 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %126, <2 x float> %128, <2 x float> %124)
  store <2 x float> %129, ptr %15, align 8, !tbaa !98
  %130 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  store float 0.000000e+00, ptr %130, align 8, !tbaa !98
  call fastcc void @texco_mapping(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11) #17
  %131 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14, ptr noundef %12) #17
  br i1 %31, label %132, label %142

132:                                              ; preds = %113
  %133 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %134 = load float, ptr %133, align 4, !tbaa !181
  %135 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 2
  %136 = load float, ptr %135, align 8, !tbaa !182
  %137 = fadd float %134, %136
  %138 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 3
  %139 = load float, ptr %138, align 4, !tbaa !127
  %140 = fadd float %137, %139
  %141 = fdiv float %140, 3.000000e+00
  br label %144

142:                                              ; preds = %113
  %143 = load float, ptr %14, align 8, !tbaa !126
  br label %144

144:                                              ; preds = %142, %132
  %145 = phi float [ %141, %132 ], [ %143, %142 ]
  %146 = fsub float %110, %145
  %147 = fmul float %119, %146
  %148 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 4
  %149 = load float, ptr %148, align 4, !tbaa !184
  %150 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 6
  %151 = load float, ptr %150, align 4, !tbaa !167
  %152 = load <2 x float>, ptr %6, align 4, !tbaa !98
  %153 = insertelement <2 x float> poison, float %149, i64 0
  %154 = insertelement <2 x float> %153, float %151, i64 1
  %155 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %154, <2 x float> %128, <2 x float> %152)
  store <2 x float> %155, ptr %15, align 8, !tbaa !98
  store float 0.000000e+00, ptr %130, align 8, !tbaa !98
  call fastcc void @texco_mapping(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11) #17
  %156 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14, ptr noundef %12) #17
  br i1 %31, label %157, label %167

157:                                              ; preds = %144
  %158 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %159 = load float, ptr %158, align 4, !tbaa !181
  %160 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 2
  %161 = load float, ptr %160, align 8, !tbaa !182
  %162 = fadd float %159, %161
  %163 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 3
  %164 = load float, ptr %163, align 4, !tbaa !127
  %165 = fadd float %162, %164
  %166 = fdiv float %165, 3.000000e+00
  br label %169

167:                                              ; preds = %144
  %168 = load float, ptr %14, align 8, !tbaa !126
  br label %169

169:                                              ; preds = %167, %157
  %170 = phi float [ %166, %157 ], [ %168, %167 ]
  %171 = fsub float %110, %170
  %172 = fmul float %119, %171
  %173 = insertelement <2 x float> poison, float %147, i64 0
  %174 = insertelement <2 x float> %173, float %172, i64 1
  br label %264

175:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %0) #17
  %176 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %176) #17
  %177 = fcmp olt <2 x float> %95, <float 0x3EE4F8B580000000, float 0x3EE4F8B580000000>
  %178 = extractelement <2 x i1> %177, i64 0
  %179 = extractelement <2 x float> %95, i64 0
  %180 = select i1 %178, float 1.000000e+00, float %179
  %181 = fdiv float %35, %180
  %182 = extractelement <2 x i1> %177, i64 1
  %183 = extractelement <2 x float> %95, i64 1
  %184 = select i1 %182, float 1.000000e+00, float %183
  %185 = fdiv float %35, %184
  switch i16 %111, label %209 [
    i16 1, label %186
    i16 8, label %200
    i16 32, label %201
  ]

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %188 = load ptr, ptr %187, align 8, !tbaa !136
  %189 = icmp eq ptr %188, null
  br i1 %189, label %209, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.ObjectRen, ptr %188, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !137
  %193 = icmp eq ptr %192, null
  br i1 %193, label %209, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.Object, ptr %192, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %195, ptr noundef nonnull %17) #16
  %196 = load ptr, ptr %187, align 8, !tbaa !136
  %197 = getelementptr inbounds %struct.ObjectRen, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !137
  %199 = getelementptr inbounds %struct.Object, ptr %198, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %199, ptr noundef nonnull %18) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %17) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %18) #17
  br label %209

200:                                              ; preds = %175
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %17) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %18) #16
  br label %209

201:                                              ; preds = %175
  %202 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !96
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.Object, ptr %203, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %206, ptr noundef nonnull %17) #16
  %207 = load ptr, ptr %202, align 8, !tbaa !96
  %208 = getelementptr inbounds %struct.Object, ptr %207, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %208, ptr noundef nonnull %18) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %17) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %18) #17
  br label %209

209:                                              ; preds = %175, %186, %190, %200, %205, %201, %194
  %210 = load <2 x float>, ptr %6, align 4, !tbaa !98
  %211 = load <2 x float>, ptr %17, align 8, !tbaa !98
  %212 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %213 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %211, <2 x float> %212, <2 x float> %210)
  store <2 x float> %213, ptr %15, align 8, !tbaa !98
  %214 = getelementptr inbounds float, ptr %6, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !98
  %216 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %217 = load float, ptr %216, align 8, !tbaa !98
  %218 = call float @llvm.fmuladd.f32(float %217, float %179, float %215)
  %219 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  store float %218, ptr %219, align 8, !tbaa !98
  call fastcc void @texco_mapping(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11) #17
  %220 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14, ptr noundef %12) #17
  br i1 %31, label %221, label %231

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %223 = load float, ptr %222, align 4, !tbaa !181
  %224 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 2
  %225 = load float, ptr %224, align 8, !tbaa !182
  %226 = fadd float %223, %225
  %227 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 3
  %228 = load float, ptr %227, align 4, !tbaa !127
  %229 = fadd float %226, %228
  %230 = fdiv float %229, 3.000000e+00
  br label %233

231:                                              ; preds = %209
  %232 = load float, ptr %14, align 8, !tbaa !126
  br label %233

233:                                              ; preds = %231, %221
  %234 = phi float [ %230, %221 ], [ %232, %231 ]
  %235 = fsub float %110, %234
  %236 = fmul float %181, %235
  %237 = load <2 x float>, ptr %6, align 4, !tbaa !98
  %238 = load <2 x float>, ptr %18, align 8, !tbaa !98
  %239 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %240 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %238, <2 x float> %239, <2 x float> %237)
  store <2 x float> %240, ptr %15, align 8, !tbaa !98
  %241 = load float, ptr %214, align 4, !tbaa !98
  %242 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %243 = load float, ptr %242, align 8, !tbaa !98
  %244 = call float @llvm.fmuladd.f32(float %243, float %183, float %241)
  store float %244, ptr %219, align 8, !tbaa !98
  call fastcc void @texco_mapping(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11) #17
  %245 = call fastcc i32 @multitex_mtex(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %14, ptr noundef %12) #17
  br i1 %31, label %246, label %256

246:                                              ; preds = %233
  %247 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !181
  %249 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 2
  %250 = load float, ptr %249, align 8, !tbaa !182
  %251 = fadd float %248, %250
  %252 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 3
  %253 = load float, ptr %252, align 4, !tbaa !127
  %254 = fadd float %251, %253
  %255 = fdiv float %254, 3.000000e+00
  br label %258

256:                                              ; preds = %233
  %257 = load float, ptr %14, align 8, !tbaa !126
  br label %258

258:                                              ; preds = %256, %246
  %259 = phi float [ %255, %246 ], [ %257, %256 ]
  %260 = fsub float %110, %259
  %261 = fmul float %185, %260
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  %262 = insertelement <2 x float> poison, float %236, i64 0
  %263 = insertelement <2 x float> %262, float %261, i64 1
  br label %264

264:                                              ; preds = %258, %169
  %265 = phi <2 x float> [ %174, %169 ], [ %263, %258 ]
  %266 = shufflevector <2 x float> %265, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %267 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2
  %268 = load float, ptr %267, align 4, !tbaa !98
  %269 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 2, i64 1
  %270 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1
  %271 = load <4 x float>, ptr %0, align 4, !tbaa !98
  %272 = insertelement <4 x float> poison, float %268, i64 0
  %273 = getelementptr inbounds %struct.CompatibleBump, ptr %0, i64 0, i32 1, i64 1
  %274 = load <2 x float>, ptr %269, align 4, !tbaa !98
  %275 = shufflevector <2 x float> %274, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %276 = shufflevector <4 x float> %272, <4 x float> %275, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %277 = shufflevector <4 x float> %276, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %278 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %266, <4 x float> %277, <4 x float> %271)
  store <4 x float> %278, ptr %0, align 4, !tbaa !98
  %279 = load <2 x float>, ptr %273, align 4, !tbaa !98
  %280 = shufflevector <2 x float> %265, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %281 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %280, <2 x float> %274, <2 x float> %279)
  store <2 x float> %281, ptr %273, align 4, !tbaa !98
  call fastcc void @cross_v3_v3v3(ptr noundef %37, ptr noundef nonnull %0, ptr noundef nonnull %270) #17
  %282 = load <2 x float>, ptr %37, align 4, !tbaa !98
  %283 = fneg <2 x float> %282
  store <2 x float> %283, ptr %37, align 4, !tbaa !98
  %284 = getelementptr inbounds float, ptr %37, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !98
  %286 = fneg float %285
  store float %286, ptr %284, align 4, !tbaa !98
  store ptr %37, ptr %36, align 8, !tbaa !122
  %287 = or i32 %96, 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #18
  ret i32 %287
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ntap_bump_compute(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 !PGOFuncName !185 {
  %14 = alloca %struct.TexResult, align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = alloca [4 x [4 x float]], align 16
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 5
  %31 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !141
  store i32 %32, ptr %30, align 4, !tbaa !141
  %33 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 32
  %34 = load i16, ptr %33, align 8, !tbaa !66
  %35 = icmp eq i16 %34, 8
  %36 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  br i1 %35, label %50, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %40 = load i16, ptr %39, align 2, !tbaa !180
  %41 = and i16 %40, 1
  %42 = icmp ne i16 %41, 0
  %43 = fneg float %5
  %44 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 30
  %45 = load float, ptr %44, align 4, !tbaa !134
  %46 = fmul float %45, %43
  %47 = load i16, ptr %2, align 8, !tbaa !97
  %48 = icmp eq i16 %47, 16
  %49 = select i1 %48, i32 2, i32 3
  store ptr null, ptr %36, align 8, !tbaa !122
  br label %62

50:                                               ; preds = %13
  %51 = fneg float %5
  %52 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 30
  %53 = load float, ptr %52, align 4, !tbaa !134
  %54 = fmul float %53, %51
  %55 = load i16, ptr %2, align 8, !tbaa !97
  %56 = icmp eq i16 %55, 16
  %57 = select i1 %56, i32 2, i32 3
  %58 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 30
  %59 = load i16, ptr %58, align 4, !tbaa !67
  %60 = and i16 %59, 16384
  %61 = icmp eq i16 %60, 0
  store ptr null, ptr %36, align 8, !tbaa !122
  br i1 %61, label %62, label %78

62:                                               ; preds = %38, %50
  %63 = phi i1 [ %42, %38 ], [ true, %50 ]
  %64 = phi float [ %46, %38 ], [ %54, %50 ]
  %65 = phi i32 [ %49, %38 ], [ %57, %50 ]
  %66 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  %67 = load i16, ptr %66, align 8, !tbaa !107
  %68 = and i16 %67, 2048
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 54
  %72 = load ptr, ptr %71, align 8, !tbaa !63
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = fmul float %64, 1.300000e+01
  br label %78

76:                                               ; preds = %62
  %77 = fmul float %64, 0x3FB99999A0000000
  br label %78

78:                                               ; preds = %76, %74, %70, %50
  %79 = phi i1 [ false, %74 ], [ false, %70 ], [ false, %76 ], [ true, %50 ]
  %80 = phi i1 [ %63, %74 ], [ %63, %70 ], [ %63, %76 ], [ true, %50 ]
  %81 = phi i32 [ %65, %74 ], [ %65, %70 ], [ %65, %76 ], [ %57, %50 ]
  %82 = phi float [ %75, %74 ], [ %64, %70 ], [ %77, %76 ], [ %54, %50 ]
  %83 = load i32, ptr %0, align 4, !tbaa !186
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 3
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %87) #17
  %88 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %87) #17
  %89 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %89, align 4, !tbaa !188
  %90 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 1
  store i32 0, ptr %90, align 4, !tbaa !189
  store i32 1, ptr %0, align 4, !tbaa !186
  br label %91

91:                                               ; preds = %85, %78
  br i1 %79, label %97, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  %94 = load i16, ptr %93, align 8, !tbaa !107
  %95 = and i16 %94, 2048
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %175, label %97

97:                                               ; preds = %92, %91
  %98 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 54
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  %100 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 51
  %101 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %99, ptr noundef nonnull %100, ptr noundef %12) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ImBuf, ptr %101, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !190
  %106 = getelementptr inbounds %struct.ImBuf, ptr %101, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !191
  %108 = sitofp i32 %107 to float
  %109 = sitofp i32 %105 to float
  %110 = fdiv float %108, %109
  br label %111

111:                                              ; preds = %97, %103
  %112 = phi float [ %110, %103 ], [ 1.000000e+00, %97 ]
  %113 = phi i32 [ %107, %103 ], [ 512, %97 ]
  %114 = phi i32 [ %105, %103 ], [ 512, %97 ]
  %115 = load ptr, ptr %98, align 8, !tbaa !63
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %115, ptr noundef %101, ptr noundef %12) #16
  br i1 %79, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  %118 = load i16, ptr %117, align 8, !tbaa !107
  br label %175

119:                                              ; preds = %111
  tail call fastcc void @texco_mapping(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #17
  %120 = tail call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %4, ptr noundef %12) #17
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !136
  %123 = getelementptr inbounds %struct.ObjectRen, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !137
  %125 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 120
  %126 = load ptr, ptr %125, align 8, !tbaa !192
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.DerivedMesh, ptr %126, i64 0, i32 15
  %130 = load float, ptr %129, align 4, !tbaa !196
  br label %131

131:                                              ; preds = %128, %119
  %132 = phi float [ %130, %128 ], [ 1.000000e+00, %119 ]
  %133 = mul nsw i32 %114, %113
  %134 = sitofp i32 %133 to float
  %135 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  %136 = load float, ptr %135, align 8, !tbaa !98
  %137 = fmul float %136, %134
  %138 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !98
  %140 = fmul float %137, %139
  %141 = tail call float @llvm.fabs.f32(float %140)
  %142 = tail call float @llvm.sqrt.f32(float %141)
  %143 = fcmp ogt float %142, 0x3E80000000000000
  %144 = select i1 %143, float %142, float 0x3E80000000000000
  %145 = fdiv float %132, %144
  %146 = fmul float %82, %145
  %147 = sitofp i32 %114 to float
  %148 = fmul float %146, %147
  %149 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 1
  %150 = load float, ptr %149, align 4, !tbaa !181
  %151 = tail call float @llvm.fmuladd.f32(float %150, float 2.000000e+00, float -1.000000e+00)
  %152 = fmul float %151, %148
  %153 = sitofp i32 %113 to float
  %154 = fmul float %146, %153
  %155 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 2
  %156 = load float, ptr %155, align 8, !tbaa !182
  %157 = tail call float @llvm.fmuladd.f32(float %156, float 2.000000e+00, float -1.000000e+00)
  %158 = fmul float %157, %154
  %159 = load float, ptr %10, align 4, !tbaa !98
  %160 = getelementptr inbounds float, ptr %10, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !98
  %162 = load float, ptr %11, align 4, !tbaa !98
  %163 = getelementptr inbounds float, ptr %11, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !98
  %165 = insertelement <2 x float> poison, float %164, i64 0
  %166 = insertelement <2 x float> %165, float %161, i64 1
  %167 = insertelement <2 x float> poison, float %158, i64 0
  %168 = shufflevector <2 x float> %167, <2 x float> poison, <2 x i32> zeroinitializer
  %169 = fmul <2 x float> %166, %168
  %170 = insertelement <2 x float> poison, float %152, i64 0
  %171 = shufflevector <2 x float> %170, <2 x float> poison, <2 x i32> zeroinitializer
  %172 = insertelement <2 x float> poison, float %162, i64 0
  %173 = insertelement <2 x float> %172, float %159, i64 1
  %174 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %171, <2 x float> %173, <2 x float> %169)
  br label %296

175:                                              ; preds = %116, %92
  %176 = phi i16 [ %118, %116 ], [ %94, %92 ]
  %177 = phi float [ %112, %116 ], [ 1.000000e+00, %92 ]
  %178 = and i16 %176, 512
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %232

180:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  tail call fastcc void @texco_mapping(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #17
  %181 = zext nneg i32 %81 to i64
  %182 = shl nuw nsw i64 %181, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %15, ptr align 4 %9, i64 %182, i1 false), !tbaa !98
  br label %189

183:                                              ; preds = %189
  %184 = icmp eq i32 %81, 3
  br i1 %184, label %203, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  store float 0.000000e+00, ptr %186, align 4, !tbaa !98
  %187 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  store float 0.000000e+00, ptr %187, align 4, !tbaa !98
  %188 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  store float 0.000000e+00, ptr %188, align 4, !tbaa !98
  br label %203

189:                                              ; preds = %180, %189
  %190 = phi i64 [ 0, %180 ], [ %201, %189 ]
  %191 = getelementptr inbounds float, ptr %9, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !98
  %193 = getelementptr inbounds float, ptr %10, i64 %190
  %194 = load float, ptr %193, align 4, !tbaa !98
  %195 = fadd float %192, %194
  %196 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %190
  store float %195, ptr %196, align 4, !tbaa !98
  %197 = getelementptr inbounds float, ptr %11, i64 %190
  %198 = load float, ptr %197, align 4, !tbaa !98
  %199 = fadd float %192, %198
  %200 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %190
  store float %199, ptr %200, align 4, !tbaa !98
  %201 = add nuw nsw i64 %190, 1
  %202 = icmp eq i64 %201, %181
  br i1 %202, label %183, label %189, !llvm.loop !199

203:                                              ; preds = %185, %183
  %204 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %4, ptr noundef %12) #17
  br i1 %80, label %205, label %215

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 1
  %207 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %206) #17
  %208 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %209 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %210 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %209) #17
  %211 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %212 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %209) #17
  %213 = insertelement <2 x float> poison, float %212, i64 0
  %214 = insertelement <2 x float> %213, float %210, i64 1
  br label %223

215:                                              ; preds = %203
  %216 = load float, ptr %4, align 8, !tbaa !126
  %217 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %218 = load float, ptr %14, align 16, !tbaa !126
  %219 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %220 = load <4 x float>, ptr %14, align 16
  %221 = shufflevector <4 x float> %220, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %222 = insertelement <2 x float> %221, float %218, i64 1
  br label %223

223:                                              ; preds = %215, %205
  %224 = phi float [ %207, %205 ], [ %216, %215 ]
  %225 = phi <2 x float> [ %214, %205 ], [ %222, %215 ]
  %226 = insertelement <2 x float> poison, float %224, i64 0
  %227 = shufflevector <2 x float> %226, <2 x float> poison, <2 x i32> zeroinitializer
  %228 = fsub <2 x float> %225, %227
  %229 = insertelement <2 x float> poison, float %82, i64 0
  %230 = shufflevector <2 x float> %229, <2 x float> poison, <2 x i32> zeroinitializer
  %231 = fmul <2 x float> %230, %228
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  br label %296

232:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #18
  tail call fastcc void @texco_mapping(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #17
  %233 = zext nneg i32 %81 to i64
  %234 = shl nuw nsw i64 %233, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %18, ptr align 4 %9, i64 %234, i1 false), !tbaa !98
  br label %243

235:                                              ; preds = %243
  %236 = icmp eq i32 %81, 3
  br i1 %236, label %261, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  store float 0.000000e+00, ptr %238, align 4, !tbaa !98
  %239 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  store float 0.000000e+00, ptr %239, align 4, !tbaa !98
  %240 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float 0.000000e+00, ptr %240, align 4, !tbaa !98
  %241 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  store float 0.000000e+00, ptr %241, align 4, !tbaa !98
  %242 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  store float 0.000000e+00, ptr %242, align 4, !tbaa !98
  br label %261

243:                                              ; preds = %232, %243
  %244 = phi i64 [ 0, %232 ], [ %259, %243 ]
  %245 = getelementptr inbounds float, ptr %9, i64 %244
  %246 = load float, ptr %245, align 4, !tbaa !98
  %247 = getelementptr inbounds float, ptr %10, i64 %244
  %248 = load float, ptr %247, align 4, !tbaa !98
  %249 = tail call float @llvm.fmuladd.f32(float %248, float -5.000000e-01, float %246)
  %250 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 %244
  store float %249, ptr %250, align 4, !tbaa !98
  %251 = tail call float @llvm.fmuladd.f32(float %248, float 5.000000e-01, float %246)
  %252 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 %244
  store float %251, ptr %252, align 4, !tbaa !98
  %253 = getelementptr inbounds float, ptr %11, i64 %244
  %254 = load float, ptr %253, align 4, !tbaa !98
  %255 = tail call float @llvm.fmuladd.f32(float %254, float -5.000000e-01, float %246)
  %256 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 %244
  store float %255, ptr %256, align 4, !tbaa !98
  %257 = tail call float @llvm.fmuladd.f32(float %254, float 5.000000e-01, float %246)
  %258 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 %244
  store float %257, ptr %258, align 4, !tbaa !98
  %259 = add nuw nsw i64 %244, 1
  %260 = icmp eq i64 %259, %233
  br i1 %260, label %235, label %243, !llvm.loop !200

261:                                              ; preds = %237, %235
  %262 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %4, ptr noundef %12) #17
  %263 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  br i1 %80, label %264, label %277

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.TexResult, ptr %14, i64 0, i32 1
  %266 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %265) #17
  %267 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %268 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %265) #17
  %269 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %270 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %265) #17
  %271 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %272 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %265) #17
  %273 = insertelement <2 x float> poison, float %272, i64 0
  %274 = insertelement <2 x float> %273, float %268, i64 1
  %275 = insertelement <2 x float> poison, float %270, i64 0
  %276 = insertelement <2 x float> %275, float %266, i64 1
  br label %289

277:                                              ; preds = %261
  %278 = load float, ptr %14, align 16, !tbaa !126
  %279 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %280 = load float, ptr %14, align 16, !tbaa !126
  %281 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %282 = load <4 x float>, ptr %14, align 16
  %283 = shufflevector <4 x float> %282, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %284 = call fastcc i32 @multitex_mtex(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef %12) #17
  %285 = load <4 x float>, ptr %14, align 16
  %286 = shufflevector <4 x float> %285, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %287 = insertelement <2 x float> %286, float %280, i64 1
  %288 = insertelement <2 x float> %283, float %278, i64 1
  br label %289

289:                                              ; preds = %277, %264
  %290 = phi <2 x float> [ %274, %264 ], [ %287, %277 ]
  %291 = phi <2 x float> [ %276, %264 ], [ %288, %277 ]
  %292 = fsub <2 x float> %290, %291
  %293 = insertelement <2 x float> poison, float %82, i64 0
  %294 = shufflevector <2 x float> %293, <2 x float> poison, <2 x i32> zeroinitializer
  %295 = fmul <2 x float> %294, %292
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  br label %296

296:                                              ; preds = %223, %289, %131
  %297 = phi float [ %112, %131 ], [ %177, %289 ], [ %177, %223 ]
  %298 = phi i32 [ %120, %131 ], [ %262, %289 ], [ %204, %223 ]
  %299 = phi <2 x float> [ %174, %131 ], [ %295, %289 ], [ %231, %223 ]
  store ptr %37, ptr %36, align 8, !tbaa !122
  %300 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  %301 = load i16, ptr %300, align 8, !tbaa !107
  %302 = zext i16 %301 to i32
  %303 = and i32 %302, 1024
  %304 = icmp eq i32 %303, 0
  %305 = and i32 %302, 2048
  %306 = icmp eq i32 %305, 0
  %307 = select i1 %306, i32 4, i32 2
  %308 = select i1 %304, i32 %307, i32 1
  %309 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !189
  %311 = icmp eq i32 %310, %308
  br i1 %311, label %366, label %312

312:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %25) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #18
  %313 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %313) #17
  %314 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %314) #17
  %315 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %315) #17
  %316 = and i16 %301, 1024
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !136
  %321 = getelementptr inbounds %struct.ObjectRen, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !137
  %323 = getelementptr inbounds %struct.Object, ptr %322, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %25, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 32), ptr noundef nonnull %323) #16
  call void @copy_m3_m4(ptr noundef nonnull %23, ptr noundef nonnull %25) #16
  %324 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %24, ptr noundef nonnull %23) #16
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef nonnull %26) #16
  call void @mul_m3_v3(ptr noundef nonnull %24, ptr noundef nonnull %27) #16
  call void @mul_transposed_m3_v3(ptr noundef nonnull %23, ptr noundef nonnull %28) #16
  call fastcc void @normalize_v3(ptr noundef nonnull %28) #17
  br label %325

325:                                              ; preds = %318, %312
  %326 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %326, ptr noundef nonnull %27, ptr noundef nonnull %28) #17
  %327 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 5
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %327, ptr noundef nonnull %28, ptr noundef nonnull %26) #17
  %328 = call fastcc float @dot_v3v3(ptr noundef nonnull %26, ptr noundef nonnull %326) #17
  %329 = fcmp olt float %328, 0.000000e+00
  %330 = select i1 %329, float -1.000000e+00, float 1.000000e+00
  %331 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 6
  store float %330, ptr %331, align 4, !tbaa !201
  %332 = fmul float %328, %330
  %333 = load i16, ptr %300, align 8, !tbaa !107
  %334 = and i16 %333, 2048
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %325
  %337 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 54
  %338 = load ptr, ptr %337, align 8, !tbaa !63
  %339 = icmp eq ptr %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %336
  call fastcc void @normalize_v3(ptr noundef nonnull %326) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %327) #17
  %341 = load i16, ptr %300, align 8, !tbaa !107
  br label %342

342:                                              ; preds = %336, %340, %325
  %343 = phi i16 [ %341, %340 ], [ %333, %336 ], [ %333, %325 ]
  %344 = phi float [ 1.000000e+00, %340 ], [ %332, %336 ], [ %332, %325 ]
  %345 = and i16 %343, 1024
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %342
  call void @mul_transposed_m3_v3(ptr noundef nonnull %24, ptr noundef nonnull %28) #16
  call void @mul_transposed_m3_v3(ptr noundef nonnull %24, ptr noundef nonnull %326) #16
  call void @mul_transposed_m3_v3(ptr noundef nonnull %24, ptr noundef nonnull %327) #16
  %348 = call fastcc float @len_v3(ptr noundef nonnull %28) #17
  %349 = fmul float %344, %348
  br label %350

350:                                              ; preds = %347, %342
  %351 = phi float [ %349, %347 ], [ %344, %342 ]
  %352 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 7
  %353 = load float, ptr %352, align 4, !tbaa !188
  %354 = fcmp ogt float %353, 0.000000e+00
  br i1 %354, label %355, label %364

355:                                              ; preds = %350, %355
  %356 = phi i64 [ %362, %355 ], [ 0, %350 ]
  %357 = load float, ptr %352, align 4, !tbaa !188
  %358 = fdiv float %351, %357
  %359 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 3, i64 %356
  %360 = load float, ptr %359, align 4, !tbaa !98
  %361 = fmul float %360, %358
  store float %361, ptr %359, align 4, !tbaa !98
  %362 = add nuw nsw i64 %356, 1
  %363 = icmp eq i64 %362, 3
  br i1 %363, label %364, label %355, !llvm.loop !202

364:                                              ; preds = %355, %350
  store float %351, ptr %352, align 4, !tbaa !188
  store i32 %308, ptr %309, align 4, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #18
  %365 = load i16, ptr %300, align 8, !tbaa !107
  br label %366

366:                                              ; preds = %364, %296
  %367 = phi i16 [ %365, %364 ], [ %301, %296 ]
  %368 = and i16 %367, 2048
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %387, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 54
  %372 = load ptr, ptr %371, align 8, !tbaa !63
  %373 = icmp eq ptr %372, null
  br i1 %373, label %387, label %374

374:                                              ; preds = %370
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #18
  %375 = fmul float %297, 1.024000e+03
  %376 = load <2 x float>, ptr %10, align 4, !tbaa !98
  %377 = insertelement <2 x float> <float 1.024000e+03, float poison>, float %375, i64 1
  %378 = fmul <2 x float> %377, %376
  store <2 x float> %378, ptr %29, align 8, !tbaa !98
  %379 = call fastcc float @len_v2(ptr noundef nonnull %29) #17
  %380 = load <2 x float>, ptr %11, align 4, !tbaa !98
  %381 = fmul <2 x float> %377, %380
  store <2 x float> %381, ptr %29, align 8, !tbaa !98
  %382 = call fastcc float @len_v2(ptr noundef nonnull %29) #17
  %383 = insertelement <2 x float> poison, float %382, i64 0
  %384 = insertelement <2 x float> %383, float %379, i64 1
  %385 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %384
  %386 = fmul <2 x float> %299, %385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #18
  br label %387

387:                                              ; preds = %370, %374, %366
  %388 = phi <2 x float> [ %386, %374 ], [ %299, %370 ], [ %299, %366 ]
  %389 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 6
  %390 = load ptr, ptr %36, align 8, !tbaa !122
  %391 = extractelement <2 x float> %388, i64 0
  %392 = extractelement <2 x float> %388, i64 1
  br label %393

393:                                              ; preds = %387, %393
  %394 = phi i64 [ 0, %387 ], [ %407, %393 ]
  %395 = load float, ptr %389, align 4, !tbaa !201
  %396 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 4, i64 %394
  %397 = load float, ptr %396, align 4, !tbaa !98
  %398 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 5, i64 %394
  %399 = load float, ptr %398, align 4, !tbaa !98
  %400 = fmul float %391, %399
  %401 = call float @llvm.fmuladd.f32(float %392, float %397, float %400)
  %402 = fmul float %395, %401
  %403 = getelementptr inbounds %struct.NTapBump, ptr %0, i64 0, i32 3, i64 %394
  %404 = load float, ptr %403, align 4, !tbaa !98
  %405 = fsub float %404, %402
  store float %405, ptr %403, align 4, !tbaa !98
  %406 = getelementptr inbounds float, ptr %390, i64 %394
  store float %405, ptr %406, align 4, !tbaa !98
  %407 = add nuw nsw i64 %394, 1
  %408 = icmp eq i64 %407, 3
  br i1 %408, label %409, label %393, !llvm.loop !203

409:                                              ; preds = %393
  %410 = or i32 %298, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #18
  ret i32 %410
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texco_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 !PGOFuncName !204 {
  %10 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 32
  %11 = load i16, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %187

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 7
  %15 = load i8, ptr %14, align 8, !tbaa !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = zext i8 %15 to i64
  %19 = add nuw nsw i64 %18, 4294967295
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds float, ptr %3, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !98
  br label %23

23:                                               ; preds = %13, %17
  %24 = phi float [ %22, %17 ], [ 0.000000e+00, %13 ]
  store float %24, ptr %6, align 4, !tbaa !98
  %25 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 8
  %26 = load i8, ptr %25, align 1, !tbaa !206
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = zext i8 %26 to i64
  %30 = add nuw nsw i64 %29, 4294967295
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds float, ptr %3, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !98
  br label %34

34:                                               ; preds = %23, %28
  %35 = phi float [ %33, %28 ], [ 0.000000e+00, %23 ]
  %36 = getelementptr inbounds float, ptr %6, i64 1
  store float %35, ptr %36, align 4, !tbaa !98
  %37 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 9
  %38 = load i8, ptr %37, align 2, !tbaa !207
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = zext i8 %38 to i64
  %42 = add nuw nsw i64 %41, 4294967295
  %43 = and i64 %42, 4294967295
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !98
  br label %46

46:                                               ; preds = %34, %40
  %47 = phi float [ %45, %40 ], [ 0.000000e+00, %34 ]
  %48 = getelementptr inbounds float, ptr %6, i64 2
  store float %47, ptr %48, align 4, !tbaa !98
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %50 = load i16, ptr %49, align 8, !tbaa !108
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %46
  br i1 %16, label %62, label %53

53:                                               ; preds = %52
  %54 = zext i8 %15 to i64
  %55 = add nuw nsw i64 %54, 4294967295
  %56 = and i64 %55, 4294967295
  %57 = getelementptr inbounds float, ptr %4, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !98
  store float %58, ptr %7, align 4, !tbaa !98
  %59 = getelementptr float, ptr %5, i64 %54
  %60 = getelementptr float, ptr %59, i64 -1
  %61 = load float, ptr %60, align 4, !tbaa !98
  store float %61, ptr %8, align 4, !tbaa !98
  br label %63

62:                                               ; preds = %52
  store float 0.000000e+00, ptr %8, align 4, !tbaa !98
  store float 0.000000e+00, ptr %7, align 4, !tbaa !98
  br label %63

63:                                               ; preds = %62, %53
  br i1 %27, label %74, label %64

64:                                               ; preds = %63
  %65 = zext i8 %26 to i64
  %66 = add nuw nsw i64 %65, 4294967295
  %67 = and i64 %66, 4294967295
  %68 = getelementptr inbounds float, ptr %4, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !98
  %70 = getelementptr inbounds float, ptr %7, i64 1
  store float %69, ptr %70, align 4, !tbaa !98
  %71 = getelementptr float, ptr %5, i64 %65
  %72 = getelementptr float, ptr %71, i64 -1
  %73 = load float, ptr %72, align 4, !tbaa !98
  br label %76

74:                                               ; preds = %63
  %75 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %75, align 4, !tbaa !98
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi ptr [ %7, %74 ], [ %8, %64 ]
  %78 = phi float [ 0.000000e+00, %74 ], [ %73, %64 ]
  %79 = getelementptr inbounds float, ptr %77, i64 1
  store float %78, ptr %79, align 4, !tbaa !98
  br i1 %39, label %90, label %80

80:                                               ; preds = %76
  %81 = zext i8 %38 to i64
  %82 = add nuw nsw i64 %81, 4294967295
  %83 = and i64 %82, 4294967295
  %84 = getelementptr inbounds float, ptr %4, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !98
  %86 = getelementptr inbounds float, ptr %7, i64 2
  store float %85, ptr %86, align 4, !tbaa !98
  %87 = getelementptr float, ptr %5, i64 %81
  %88 = getelementptr float, ptr %87, i64 -1
  %89 = load float, ptr %88, align 4, !tbaa !98
  br label %92

90:                                               ; preds = %76
  %91 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %91, align 4, !tbaa !98
  br label %92

92:                                               ; preds = %90, %80
  %93 = phi ptr [ %8, %80 ], [ %7, %90 ]
  %94 = phi float [ %89, %80 ], [ 0.000000e+00, %90 ]
  %95 = getelementptr inbounds float, ptr %93, i64 2
  store float %94, ptr %95, align 4, !tbaa !98
  br label %96

96:                                               ; preds = %92, %46
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !87
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @do_2d_mapping(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %98, ptr noundef nonnull %99, ptr noundef %7, ptr noundef %8) #17
  %100 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  %101 = load float, ptr %100, align 8, !tbaa !98
  %102 = load float, ptr %6, align 4, !tbaa !98
  %103 = fadd float %102, -5.000000e-01
  %104 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %105 = load float, ptr %104, align 4, !tbaa !98
  %106 = tail call float @llvm.fmuladd.f32(float %101, float %103, float %105)
  %107 = fadd float %106, 5.000000e-01
  store float %107, ptr %6, align 4, !tbaa !98
  %108 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !98
  %110 = load float, ptr %36, align 4, !tbaa !98
  %111 = fadd float %110, -5.000000e-01
  %112 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !98
  %114 = tail call float @llvm.fmuladd.f32(float %109, float %111, float %113)
  %115 = fadd float %114, 5.000000e-01
  store float %115, ptr %36, align 4, !tbaa !98
  %116 = load i16, ptr %49, align 8, !tbaa !108
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %96
  %119 = load float, ptr %100, align 8, !tbaa !98
  %120 = load float, ptr %7, align 4, !tbaa !98
  %121 = fmul float %119, %120
  store float %121, ptr %7, align 4, !tbaa !98
  %122 = load float, ptr %108, align 4, !tbaa !98
  %123 = getelementptr inbounds float, ptr %7, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !98
  %125 = fmul float %122, %124
  store float %125, ptr %123, align 4, !tbaa !98
  %126 = load float, ptr %100, align 8, !tbaa !98
  %127 = load float, ptr %8, align 4, !tbaa !98
  %128 = fmul float %126, %127
  store float %128, ptr %8, align 4, !tbaa !98
  %129 = load float, ptr %108, align 4, !tbaa !98
  %130 = getelementptr inbounds float, ptr %8, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !98
  %132 = fmul float %129, %131
  store float %132, ptr %130, align 4, !tbaa !98
  br label %133

133:                                              ; preds = %118, %96
  %134 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 42
  %135 = load i16, ptr %134, align 8, !tbaa !68
  %136 = icmp eq i16 %135, 3
  br i1 %136, label %137, label %307

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 31
  %139 = load i16, ptr %138, align 2, !tbaa !180
  %140 = and i16 %139, 128
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %164, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 38
  %144 = load i32, ptr %143, align 4, !tbaa !208
  %145 = icmp eq i32 %144, 0
  %146 = load float, ptr %6, align 4, !tbaa !98
  br i1 %145, label %147, label %150

147:                                              ; preds = %142
  %148 = tail call float @llvm.floor.f32(float %146)
  %149 = fsub float %146, %148
  br label %162

150:                                              ; preds = %142
  %151 = fcmp olt float %146, 0.000000e+00
  %152 = fcmp ogt float %146, 1.000000e+00
  %153 = or i1 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = fmul float %146, 5.000000e-01
  %156 = tail call float @llvm.floor.f32(float %155)
  %157 = fsub float %155, %156
  %158 = fmul float %157, 2.000000e+00
  %159 = fcmp ogt float %158, 1.000000e+00
  %160 = fsub float 2.000000e+00, %158
  %161 = select i1 %159, float %160, float %158
  br label %162

162:                                              ; preds = %154, %147
  %163 = phi float [ %149, %147 ], [ %161, %154 ]
  store float %163, ptr %6, align 4, !tbaa !98
  br label %164

164:                                              ; preds = %162, %150, %137
  %165 = and i16 %139, 256
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %307, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 38
  %169 = load i32, ptr %168, align 4, !tbaa !208
  %170 = icmp eq i32 %169, 0
  %171 = load float, ptr %36, align 4, !tbaa !98
  br i1 %170, label %172, label %175

172:                                              ; preds = %167
  %173 = tail call float @llvm.floor.f32(float %171)
  %174 = fsub float %171, %173
  store float %174, ptr %36, align 4, !tbaa !98
  br label %307

175:                                              ; preds = %167
  %176 = fcmp olt float %171, 0.000000e+00
  %177 = fcmp ogt float %171, 1.000000e+00
  %178 = or i1 %176, %177
  br i1 %178, label %179, label %307

179:                                              ; preds = %175
  %180 = fmul float %171, 5.000000e-01
  %181 = tail call float @llvm.floor.f32(float %180)
  %182 = fsub float %180, %181
  %183 = fmul float %182, 2.000000e+00
  %184 = fcmp ogt float %183, 1.000000e+00
  %185 = fsub float 2.000000e+00, %183
  %186 = select i1 %184, float %185, float %183
  store float %186, ptr %36, align 4, !tbaa !98
  br label %307

187:                                              ; preds = %9
  %188 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  %189 = load float, ptr %188, align 8, !tbaa !98
  %190 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 7
  %191 = load i8, ptr %190, align 8, !tbaa !205
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %187
  %194 = zext i8 %191 to i64
  %195 = add nuw nsw i64 %194, 4294967295
  %196 = and i64 %195, 4294967295
  %197 = getelementptr inbounds float, ptr %3, i64 %196
  %198 = load float, ptr %197, align 4, !tbaa !98
  %199 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %200 = load float, ptr %199, align 4, !tbaa !98
  %201 = fadd float %198, %200
  br label %205

202:                                              ; preds = %187
  %203 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %204 = load float, ptr %203, align 4, !tbaa !98
  br label %205

205:                                              ; preds = %202, %193
  %206 = phi float [ %201, %193 ], [ %204, %202 ]
  %207 = fmul float %189, %206
  store float %207, ptr %6, align 4, !tbaa !98
  %208 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !98
  %210 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 8
  %211 = load i8, ptr %210, align 1, !tbaa !206
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %205
  %214 = zext i8 %211 to i64
  %215 = add nuw nsw i64 %214, 4294967295
  %216 = and i64 %215, 4294967295
  %217 = getelementptr inbounds float, ptr %3, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !98
  %219 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !98
  %221 = fadd float %218, %220
  br label %225

222:                                              ; preds = %205
  %223 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !98
  br label %225

225:                                              ; preds = %222, %213
  %226 = phi float [ %221, %213 ], [ %224, %222 ]
  %227 = fmul float %209, %226
  %228 = getelementptr inbounds float, ptr %6, i64 1
  store float %227, ptr %228, align 4, !tbaa !98
  %229 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 2
  %230 = load float, ptr %229, align 8, !tbaa !98
  %231 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 9
  %232 = load i8, ptr %231, align 2, !tbaa !207
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %225
  %235 = zext i8 %232 to i64
  %236 = add nuw nsw i64 %235, 4294967295
  %237 = and i64 %236, 4294967295
  %238 = getelementptr inbounds float, ptr %3, i64 %237
  %239 = load float, ptr %238, align 4, !tbaa !98
  %240 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !98
  %242 = fadd float %239, %241
  br label %246

243:                                              ; preds = %225
  %244 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 2
  %245 = load float, ptr %244, align 4, !tbaa !98
  br label %246

246:                                              ; preds = %243, %234
  %247 = phi float [ %242, %234 ], [ %245, %243 ]
  %248 = fmul float %230, %247
  %249 = getelementptr inbounds float, ptr %6, i64 2
  store float %248, ptr %249, align 4, !tbaa !98
  %250 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %251 = load i16, ptr %250, align 8, !tbaa !108
  %252 = icmp eq i16 %251, 0
  br i1 %252, label %307, label %253

253:                                              ; preds = %246
  br i1 %192, label %267, label %254

254:                                              ; preds = %253
  %255 = load float, ptr %188, align 8, !tbaa !98
  %256 = zext i8 %191 to i64
  %257 = add nuw nsw i64 %256, 4294967295
  %258 = and i64 %257, 4294967295
  %259 = getelementptr inbounds float, ptr %4, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !98
  %261 = fmul float %255, %260
  store float %261, ptr %7, align 4, !tbaa !98
  %262 = load float, ptr %188, align 8, !tbaa !98
  %263 = getelementptr float, ptr %5, i64 %256
  %264 = getelementptr float, ptr %263, i64 -1
  %265 = load float, ptr %264, align 4, !tbaa !98
  %266 = fmul float %262, %265
  store float %266, ptr %8, align 4, !tbaa !98
  br label %268

267:                                              ; preds = %253
  store float 0.000000e+00, ptr %8, align 4, !tbaa !98
  store float 0.000000e+00, ptr %7, align 4, !tbaa !98
  br label %268

268:                                              ; preds = %267, %254
  br i1 %212, label %283, label %269

269:                                              ; preds = %268
  %270 = load float, ptr %208, align 4, !tbaa !98
  %271 = zext i8 %211 to i64
  %272 = add nuw nsw i64 %271, 4294967295
  %273 = and i64 %272, 4294967295
  %274 = getelementptr inbounds float, ptr %4, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !98
  %276 = fmul float %270, %275
  %277 = getelementptr inbounds float, ptr %7, i64 1
  store float %276, ptr %277, align 4, !tbaa !98
  %278 = load float, ptr %208, align 4, !tbaa !98
  %279 = getelementptr float, ptr %5, i64 %271
  %280 = getelementptr float, ptr %279, i64 -1
  %281 = load float, ptr %280, align 4, !tbaa !98
  %282 = fmul float %278, %281
  br label %285

283:                                              ; preds = %268
  %284 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %284, align 4, !tbaa !98
  br label %285

285:                                              ; preds = %283, %269
  %286 = phi ptr [ %7, %283 ], [ %8, %269 ]
  %287 = phi float [ 0.000000e+00, %283 ], [ %282, %269 ]
  %288 = getelementptr inbounds float, ptr %286, i64 1
  store float %287, ptr %288, align 4, !tbaa !98
  br i1 %233, label %304, label %289

289:                                              ; preds = %285
  %290 = load float, ptr %229, align 8, !tbaa !98
  %291 = zext i8 %232 to i64
  %292 = add nuw nsw i64 %291, 4294967295
  %293 = and i64 %292, 4294967295
  %294 = getelementptr inbounds float, ptr %4, i64 %293
  %295 = load float, ptr %294, align 4, !tbaa !98
  %296 = fmul float %290, %295
  %297 = getelementptr inbounds float, ptr %7, i64 2
  store float %296, ptr %297, align 4, !tbaa !98
  %298 = load float, ptr %229, align 8, !tbaa !98
  %299 = getelementptr float, ptr %5, i64 %291
  %300 = getelementptr float, ptr %299, i64 -1
  %301 = load float, ptr %300, align 4, !tbaa !98
  %302 = fmul float %298, %301
  %303 = getelementptr inbounds float, ptr %8, i64 2
  store float %302, ptr %303, align 4, !tbaa !98
  br label %307

304:                                              ; preds = %285
  %305 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %305, align 4, !tbaa !98
  %306 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %306, align 4, !tbaa !98
  br label %307

307:                                              ; preds = %133, %175, %246, %304, %289, %164, %179, %172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @multitex_mtex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !209 {
  %8 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 61
  %11 = load i8, ptr %10, align 8, !tbaa !77
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Tex, ptr %9, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %19 = load i16, ptr %18, align 8, !tbaa !108
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !210
  %23 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 19
  %24 = load i16, ptr %23, align 2, !tbaa !85
  %25 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !64
  %26 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %27 = lshr i32 %26, 18
  %28 = and i32 %27, 1
  %29 = tail call i32 @ntreeTexExecTree(ptr noundef nonnull %15, ptr noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %20, i16 noundef signext %22, ptr noundef nonnull %9, i16 noundef signext %24, i32 noundef %25, i32 noundef %28, ptr noundef %0, ptr noundef nonnull %1) #16
  br label %39

30:                                               ; preds = %13, %7
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %32 = load i16, ptr %31, align 8, !tbaa !108
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %35 = load i16, ptr %34, align 2, !tbaa !210
  %36 = getelementptr inbounds %struct.MTex, ptr %1, i64 0, i32 19
  %37 = load i16, ptr %36, align 2, !tbaa !85
  %38 = tail call fastcc i32 @multitex(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %33, ptr noundef %5, i16 noundef signext %35, i16 noundef signext %37, ptr noundef %6) #17
  br label %39

39:                                               ; preds = %30, %17
  %40 = phi i32 [ %29, %17 ], [ %38, %30 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_grayscale(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !211 {
  %2 = load float, ptr %0, align 4, !tbaa !98
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = fmul float %4, 0x3FE28F5C20000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD3333340000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FBEB851E0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !212 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !213 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !98
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !98
  %15 = load float, ptr %8, align 4, !tbaa !98
  %16 = load float, ptr %2, align 4, !tbaa !98
  %17 = load float, ptr %1, align 4, !tbaa !98
  %18 = load float, ptr %6, align 4, !tbaa !98
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !98
  %23 = load float, ptr %1, align 4, !tbaa !98
  %24 = load float, ptr %10, align 4, !tbaa !98
  %25 = load float, ptr %4, align 4, !tbaa !98
  %26 = load float, ptr %2, align 4, !tbaa !98
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !214 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !98
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !215 {
  %3 = load float, ptr %0, align 4, !tbaa !98
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !216 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = load float, ptr %0, align 4, !tbaa !98
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !98
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !98
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !98
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_volume_tex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.TexResult, align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  %11 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 45, i32 46
  %12 = load i32, ptr %11, align 4, !tbaa !101
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %417

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 33
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %20 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 6
  %21 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %24 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 100
  %25 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %26 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %27 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %28 = and i32 %2, 13
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %31 = insertelement <8 x i32> poison, i32 %2, i64 0
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer
  %33 = and <8 x i32> %32, <i32 32, i32 16, i32 128, i32 64, i32 65520, i32 8, i32 4, i32 1>
  %34 = icmp eq <8 x i32> %33, zeroinitializer
  %35 = extractelement <8 x i1> %34, i64 0
  %36 = extractelement <8 x i1> %34, i64 1
  %37 = extractelement <8 x i1> %34, i64 2
  %38 = extractelement <8 x i1> %34, i64 3
  %39 = extractelement <8 x i1> %34, i64 4
  %40 = extractelement <8 x i1> %34, i64 5
  %41 = extractelement <8 x i1> %34, i64 6
  %42 = extractelement <8 x i1> %34, i64 7
  br label %43

43:                                               ; preds = %15, %413
  %44 = phi i64 [ 0, %15 ], [ %415, %413 ]
  %45 = phi float [ 1.000000e+00, %15 ], [ %414, %413 ]
  %46 = load ptr, ptr %0, align 8, !tbaa !102
  %47 = getelementptr inbounds %struct.Material, ptr %46, i64 0, i32 73
  %48 = load i32, ptr %47, align 8, !tbaa !103
  %49 = trunc i64 %44 to i32
  %50 = shl nuw nsw i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %413

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.Material, ptr %46, i64 0, i32 102, i64 %44
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %413, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !95
  %60 = icmp eq ptr %59, null
  br i1 %60, label %413, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !89
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, %2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %413, label %67

67:                                               ; preds = %61
  %68 = load i16, ptr %55, align 8, !tbaa !97
  switch i16 %68, label %413 [
    i16 32, label %69
    i16 1, label %113
    i16 8, label %149
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !96
  %72 = icmp eq ptr %71, null
  br i1 %72, label %150, label %73

73:                                               ; preds = %69
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #17
  %74 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 14
  %75 = load i16, ptr %74, align 8, !tbaa !107
  %76 = and i16 %75, 64
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %18, align 8, !tbaa !109
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %79, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !110
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @mul_m4_v3(ptr noundef nonnull %83, ptr noundef nonnull %8) #16
  br label %86

86:                                               ; preds = %78, %81, %85, %73
  %87 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %87, ptr noundef nonnull %8) #16
  %88 = load i16, ptr %74, align 8, !tbaa !107
  %89 = and i16 %88, 16384
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %150, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 15
  %93 = load ptr, ptr %92, align 8, !tbaa !217
  %94 = icmp eq ptr %93, null
  br i1 %94, label %150, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds [8 x [3 x float]], ptr %93, i64 0, i64 6
  %97 = load <2 x float>, ptr %8, align 8, !tbaa !98
  %98 = load <2 x float>, ptr %93, align 4, !tbaa !98
  %99 = fsub <2 x float> %97, %98
  %100 = load <2 x float>, ptr %96, align 4, !tbaa !98
  %101 = fsub <2 x float> %100, %98
  %102 = fdiv <2 x float> %99, %101
  %103 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %103, ptr %8, align 8, !tbaa !98
  %104 = load float, ptr %19, align 8, !tbaa !98
  %105 = getelementptr inbounds [3 x float], ptr %93, i64 0, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !98
  %107 = fsub float %104, %106
  %108 = getelementptr inbounds [8 x [3 x float]], ptr %93, i64 0, i64 6, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !98
  %110 = fsub float %109, %106
  %111 = fdiv float %107, %110
  %112 = call float @llvm.fmuladd.f32(float %111, float 2.000000e+00, float -1.000000e+00)
  store float %112, ptr %19, align 8, !tbaa !98
  br label %150

113:                                              ; preds = %67
  %114 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 14
  %115 = load i16, ptr %114, align 8, !tbaa !107
  %116 = and i16 %115, 32
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %17) #17
  br label %150

119:                                              ; preds = %113
  %120 = load ptr, ptr %18, align 8, !tbaa !109
  %121 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !218
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #17
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %123, ptr noundef nonnull %8) #16
  %124 = load i16, ptr %114, align 8, !tbaa !107
  %125 = and i16 %124, 16384
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %150, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 15
  %129 = load ptr, ptr %128, align 8, !tbaa !217
  %130 = icmp eq ptr %129, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds [8 x [3 x float]], ptr %129, i64 0, i64 6
  %133 = load <2 x float>, ptr %8, align 8, !tbaa !98
  %134 = load <2 x float>, ptr %129, align 4, !tbaa !98
  %135 = fsub <2 x float> %133, %134
  %136 = load <2 x float>, ptr %132, align 4, !tbaa !98
  %137 = fsub <2 x float> %136, %134
  %138 = fdiv <2 x float> %135, %137
  %139 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %138, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %139, ptr %8, align 8, !tbaa !98
  %140 = load float, ptr %19, align 8, !tbaa !98
  %141 = getelementptr inbounds [3 x float], ptr %129, i64 0, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !98
  %143 = fsub float %140, %142
  %144 = getelementptr inbounds [8 x [3 x float]], ptr %129, i64 0, i64 6, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !98
  %146 = fsub float %145, %142
  %147 = fdiv float %143, %146
  %148 = call float @llvm.fmuladd.f32(float %147, float 2.000000e+00, float -1.000000e+00)
  store float %148, ptr %19, align 8, !tbaa !98
  br label %150

149:                                              ; preds = %67
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #17
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %8) #16
  br label %150

150:                                              ; preds = %119, %127, %131, %69, %95, %91, %86, %149, %118
  store ptr null, ptr %20, align 8, !tbaa !122
  %151 = getelementptr inbounds %struct.Tex, ptr %59, i64 0, i32 32
  %152 = load i16, ptr %151, align 8, !tbaa !66
  %153 = icmp eq i16 %152, 8
  br i1 %153, label %413, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 7
  %156 = load i8, ptr %155, align 8, !tbaa !205
  %157 = icmp eq i8 %156, 0
  %158 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 12
  %159 = load float, ptr %158, align 8, !tbaa !98
  br i1 %157, label %169, label %160

160:                                              ; preds = %154
  %161 = zext i8 %156 to i64
  %162 = add nuw nsw i64 %161, 4294967295
  %163 = and i64 %162, 4294967295
  %164 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !98
  %166 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11
  %167 = load float, ptr %166, align 4, !tbaa !98
  %168 = fadd float %165, %167
  br label %172

169:                                              ; preds = %154
  %170 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11
  %171 = load float, ptr %170, align 4, !tbaa !98
  br label %172

172:                                              ; preds = %169, %160
  %173 = phi float [ %171, %169 ], [ %168, %160 ]
  %174 = fmul float %159, %173
  store float %174, ptr %9, align 4, !tbaa !98
  %175 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 8
  %176 = load i8, ptr %175, align 1, !tbaa !206
  %177 = icmp eq i8 %176, 0
  %178 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 12, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !98
  br i1 %177, label %189, label %180

180:                                              ; preds = %172
  %181 = zext i8 %176 to i64
  %182 = add nuw nsw i64 %181, 4294967295
  %183 = and i64 %182, 4294967295
  %184 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !98
  %186 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !98
  %188 = fadd float %185, %187
  br label %192

189:                                              ; preds = %172
  %190 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !98
  br label %192

192:                                              ; preds = %189, %180
  %193 = phi float [ %191, %189 ], [ %188, %180 ]
  %194 = fmul float %179, %193
  store float %194, ptr %21, align 4, !tbaa !98
  %195 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 9
  %196 = load i8, ptr %195, align 2, !tbaa !207
  %197 = icmp eq i8 %196, 0
  %198 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 12, i64 2
  %199 = load float, ptr %198, align 8, !tbaa !98
  br i1 %197, label %209, label %200

200:                                              ; preds = %192
  %201 = zext i8 %196 to i64
  %202 = add nuw nsw i64 %201, 4294967295
  %203 = and i64 %202, 4294967295
  %204 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %203
  %205 = load float, ptr %204, align 4, !tbaa !98
  %206 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !98
  %208 = fadd float %205, %207
  br label %212

209:                                              ; preds = %192
  %210 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 11, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !98
  br label %212

212:                                              ; preds = %200, %209
  %213 = phi float [ %208, %200 ], [ %211, %209 ]
  %214 = fmul float %199, %213
  store float %214, ptr %22, align 4, !tbaa !98
  %215 = load i16, ptr %23, align 2, !tbaa !210
  %216 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 19
  %217 = load i16, ptr %216, align 2, !tbaa !85
  %218 = load ptr, ptr %24, align 8, !tbaa !124
  %219 = call fastcc i32 @multitex(ptr noundef nonnull %59, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %215, i16 noundef signext %217, ptr noundef %218) #17
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  %222 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 14
  %223 = load i16, ptr %222, align 8, !tbaa !107
  %224 = and i16 %223, 1
  %225 = icmp eq i16 %224, 0
  %226 = select i1 %221, i1 true, i1 %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %212
  %228 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %25) #17
  store float %228, ptr %7, align 8, !tbaa !126
  %229 = add nsw i32 %219, -1
  br label %230

230:                                              ; preds = %212, %227
  %231 = phi i32 [ %229, %227 ], [ %219, %212 ]
  %232 = and i16 %223, 4
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %230
  %235 = and i32 %231, 1
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = load <2 x float>, ptr %25, align 4, !tbaa !98
  %239 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %238
  store <2 x float> %239, ptr %25, align 4, !tbaa !98
  %240 = load float, ptr %26, align 4, !tbaa !127
  %241 = fsub float 1.000000e+00, %240
  store float %241, ptr %26, align 4, !tbaa !127
  br label %242

242:                                              ; preds = %237, %234
  %243 = load float, ptr %7, align 8, !tbaa !126
  %244 = fsub float 1.000000e+00, %243
  store float %244, ptr %7, align 8, !tbaa !126
  br label %245

245:                                              ; preds = %242, %230
  %246 = and i16 %223, 2
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %245
  %249 = and i32 %231, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load float, ptr %27, align 8, !tbaa !128
  %253 = fmul float %45, %252
  store float %253, ptr %27, align 8, !tbaa !128
  br label %257

254:                                              ; preds = %248
  %255 = load float, ptr %7, align 8, !tbaa !126
  %256 = fmul float %45, %255
  store float %256, ptr %7, align 8, !tbaa !126
  br label %257

257:                                              ; preds = %251, %254, %245
  %258 = phi float [ %253, %251 ], [ %256, %254 ], [ %45, %245 ]
  br i1 %29, label %318, label %259

259:                                              ; preds = %257
  %260 = load i16, ptr %62, align 2, !tbaa !89
  %261 = and i16 %260, 13
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %318, label %263

263:                                              ; preds = %259
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %264 = and i32 %231, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %267) #17
  br label %278

268:                                              ; preds = %263
  %269 = and i16 %260, 128
  %270 = icmp eq i16 %269, 0
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %25) #17
  %271 = load i32, ptr %30, align 4, !tbaa !141
  %272 = icmp eq i32 %271, 0
  br i1 %270, label %275, label %273

273:                                              ; preds = %268
  br i1 %272, label %278, label %274

274:                                              ; preds = %273
  store float %258, ptr %7, align 8, !tbaa !126
  br label %278

275:                                              ; preds = %268
  br i1 %272, label %278, label %276

276:                                              ; preds = %275
  %277 = load float, ptr %27, align 8, !tbaa !128
  store float %277, ptr %7, align 8, !tbaa !126
  br label %278

278:                                              ; preds = %274, %273, %276, %275, %266
  br i1 %42, label %291, label %279

279:                                              ; preds = %278
  %280 = load i16, ptr %62, align 2, !tbaa !89
  %281 = and i16 %280, 1
  %282 = icmp eq i16 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 43
  %285 = load float, ptr %284, align 8, !tbaa !219
  %286 = fmul float %258, %285
  %287 = load float, ptr %7, align 8, !tbaa !126
  %288 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %289 = load i16, ptr %288, align 2, !tbaa !131
  %290 = sext i16 %289 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %287, float noundef %286, i32 noundef %290) #17
  br label %291

291:                                              ; preds = %283, %279, %278
  br i1 %41, label %304, label %292

292:                                              ; preds = %291
  %293 = load i16, ptr %62, align 2, !tbaa !89
  %294 = and i16 %293, 4
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 44
  %298 = load float, ptr %297, align 4, !tbaa !220
  %299 = fmul float %258, %298
  %300 = load float, ptr %7, align 8, !tbaa !126
  %301 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %302 = load i16, ptr %301, align 2, !tbaa !131
  %303 = sext i16 %302 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %300, float noundef %299, i32 noundef %303) #17
  br label %304

304:                                              ; preds = %296, %292, %291
  br i1 %40, label %317, label %305

305:                                              ; preds = %304
  %306 = load i16, ptr %62, align 2, !tbaa !89
  %307 = and i16 %306, 8
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 45
  %311 = load float, ptr %310, align 8, !tbaa !221
  %312 = fmul float %258, %311
  %313 = load float, ptr %7, align 8, !tbaa !126
  %314 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %315 = load i16, ptr %314, align 2, !tbaa !131
  %316 = sext i16 %315 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %313, float noundef %312, i32 noundef %316) #17
  br label %317

317:                                              ; preds = %309, %305, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  br label %318

318:                                              ; preds = %317, %259, %257
  br i1 %39, label %413, label %319

319:                                              ; preds = %318
  %320 = load i16, ptr %62, align 2, !tbaa !89
  %321 = icmp ult i16 %320, 16
  br i1 %321, label %413, label %322

322:                                              ; preds = %319
  %323 = and i32 %231, 1
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %322
  %326 = load i32, ptr %30, align 4, !tbaa !141
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %325
  %329 = load float, ptr %27, align 8, !tbaa !128
  store float %329, ptr %7, align 8, !tbaa !126
  br label %332

330:                                              ; preds = %325
  %331 = call fastcc float @rgb_to_grayscale(ptr noundef nonnull %25) #17
  store float %331, ptr %7, align 8, !tbaa !126
  br label %332

332:                                              ; preds = %328, %330, %322
  %333 = and i16 %320, 64
  %334 = icmp eq i16 %333, 0
  %335 = or i1 %38, %334
  br i1 %335, label %350, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 38
  %338 = load float, ptr %337, align 4, !tbaa !147
  %339 = fmul float %258, %338
  %340 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 26
  %341 = load float, ptr %340, align 4, !tbaa !143
  %342 = load float, ptr %4, align 4, !tbaa !98
  %343 = load float, ptr %7, align 8, !tbaa !126
  %344 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %345 = load i16, ptr %344, align 2, !tbaa !131
  %346 = sext i16 %345 to i32
  %347 = call float @texture_value_blend(float noundef %341, float noundef %342, float noundef %343, float noundef %339, i32 noundef %346) #17
  %348 = fcmp olt float %347, 0.000000e+00
  %349 = select i1 %348, float 0.000000e+00, float %347
  store float %349, ptr %4, align 4, !tbaa !98
  br label %350

350:                                              ; preds = %336, %332
  %351 = and i16 %320, 128
  %352 = icmp eq i16 %351, 0
  %353 = or i1 %37, %352
  br i1 %353, label %371, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 46
  %356 = load float, ptr %355, align 4, !tbaa !222
  %357 = fmul float %258, %356
  %358 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 26
  %359 = load float, ptr %358, align 4, !tbaa !143
  %360 = load float, ptr %4, align 4, !tbaa !98
  %361 = load float, ptr %7, align 8, !tbaa !126
  %362 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %363 = load i16, ptr %362, align 2, !tbaa !131
  %364 = sext i16 %363 to i32
  %365 = call float @texture_value_blend(float noundef %359, float noundef %360, float noundef %361, float noundef %357, i32 noundef %364) #17
  store float %365, ptr %4, align 4, !tbaa !98
  %366 = fcmp olt float %365, 0.000000e+00
  br i1 %366, label %369, label %367

367:                                              ; preds = %354
  %368 = fcmp ogt float %365, 1.000000e+00
  br i1 %368, label %369, label %371

369:                                              ; preds = %367, %354
  %370 = phi float [ 0.000000e+00, %354 ], [ 1.000000e+00, %367 ]
  store float %370, ptr %4, align 4, !tbaa !98
  br label %371

371:                                              ; preds = %369, %367, %350
  %372 = and i16 %320, 16
  %373 = icmp eq i16 %372, 0
  %374 = or i1 %36, %373
  br i1 %374, label %392, label %375

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 47
  %377 = load float, ptr %376, align 8, !tbaa !223
  %378 = fmul float %258, %377
  %379 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 26
  %380 = load float, ptr %379, align 4, !tbaa !143
  %381 = load float, ptr %4, align 4, !tbaa !98
  %382 = load float, ptr %7, align 8, !tbaa !126
  %383 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %384 = load i16, ptr %383, align 2, !tbaa !131
  %385 = sext i16 %384 to i32
  %386 = call float @texture_value_blend(float noundef %380, float noundef %381, float noundef %382, float noundef %378, i32 noundef %385) #17
  store float %386, ptr %4, align 4, !tbaa !98
  %387 = fcmp olt float %386, 0.000000e+00
  br i1 %387, label %390, label %388

388:                                              ; preds = %375
  %389 = fcmp ogt float %386, 1.000000e+00
  br i1 %389, label %390, label %392

390:                                              ; preds = %388, %375
  %391 = phi float [ 0.000000e+00, %375 ], [ 1.000000e+00, %388 ]
  store float %391, ptr %4, align 4, !tbaa !98
  br label %392

392:                                              ; preds = %390, %388, %371
  %393 = and i16 %320, 32
  %394 = icmp eq i16 %393, 0
  %395 = or i1 %35, %394
  br i1 %395, label %413, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 48
  %398 = load float, ptr %397, align 4, !tbaa !224
  %399 = fmul float %258, %398
  %400 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 26
  %401 = load float, ptr %400, align 4, !tbaa !143
  %402 = load float, ptr %4, align 4, !tbaa !98
  %403 = load float, ptr %7, align 8, !tbaa !126
  %404 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 3
  %405 = load i16, ptr %404, align 2, !tbaa !131
  %406 = sext i16 %405 to i32
  %407 = call float @texture_value_blend(float noundef %401, float noundef %402, float noundef %403, float noundef %399, i32 noundef %406) #17
  store float %407, ptr %4, align 4, !tbaa !98
  %408 = fcmp olt float %407, 0.000000e+00
  br i1 %408, label %411, label %409

409:                                              ; preds = %396
  %410 = fcmp ogt float %407, 1.000000e+00
  br i1 %410, label %411, label %413

411:                                              ; preds = %409, %396
  %412 = phi float [ 0.000000e+00, %396 ], [ 1.000000e+00, %409 ]
  store float %412, ptr %4, align 4, !tbaa !98
  br label %413

413:                                              ; preds = %411, %409, %67, %53, %392, %319, %318, %150, %61, %57, %43
  %414 = phi float [ %45, %43 ], [ %45, %57 ], [ %45, %150 ], [ %258, %392 ], [ %258, %319 ], [ %258, %318 ], [ %45, %61 ], [ %45, %53 ], [ %45, %67 ], [ %258, %409 ], [ %258, %411 ]
  %415 = add nuw nsw i64 %44, 1
  %416 = icmp eq i64 %415, 18
  br i1 %416, label %417, label %43, !llvm.loop !225

417:                                              ; preds = %413, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @multitex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !226 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %12 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !141
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 61
  %14 = load i8, ptr %13, align 8, !tbaa !77
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !64
  %22 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %23 = lshr i32 %22, 18
  %24 = and i32 %23, 1
  %25 = tail call i32 @ntreeTexExecTree(ptr noundef nonnull %18, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %6, ptr noundef nonnull %0, i16 noundef signext %7, i32 noundef %21, i32 noundef %24, ptr noundef null, ptr noundef null) #16
  br label %91

26:                                               ; preds = %16, %9
  %27 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %28 = load i16, ptr %27, align 8, !tbaa !66
  switch i16 %28, label %91 [
    i16 0, label %29
    i16 1, label %30
    i16 2, label %32
    i16 3, label %34
    i16 4, label %36
    i16 5, label %37
    i16 6, label %38
    i16 7, label %40
    i16 8, label %42
    i16 10, label %56
    i16 11, label %58
    i16 12, label %73
    i16 13, label %79
    i16 14, label %85
    i16 15, label %87
    i16 16, label %89
  ]

29:                                               ; preds = %26
  store float 0.000000e+00, ptr %5, align 8, !tbaa !126
  br label %109

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @clouds(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  br label %91

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @wood(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17, !range !227
  br label %91

34:                                               ; preds = %26
  %35 = tail call fastcc i32 @marble(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17, !range !227
  br label %91

36:                                               ; preds = %26
  tail call fastcc void @magic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  br label %91

37:                                               ; preds = %26
  tail call fastcc void @blend(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17
  br label %91

38:                                               ; preds = %26
  %39 = tail call fastcc i32 @stucci(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #17, !range !227
  br label %91

40:                                               ; preds = %26
  %41 = sext i16 %6 to i32
  tail call fastcc void @texnoise(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %41) #17
  br label %91

42:                                               ; preds = %26
  %43 = icmp eq i32 %4, 0
  %44 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  br i1 %43, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @imagewraposa(ptr noundef nonnull %0, ptr noundef %45, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %8) #16
  br label %50

48:                                               ; preds = %42
  %49 = tail call i32 @imagewrap(ptr noundef nonnull %0, ptr noundef %45, ptr noundef null, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %8) #16
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %91, label %55

55:                                               ; preds = %50
  tail call void @BKE_image_tag_time(ptr noundef nonnull %53) #16
  br label %91

56:                                               ; preds = %26
  %57 = tail call i32 @envmaptex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %8) #16
  br label %91

58:                                               ; preds = %26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #17
  %59 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %60 = load float, ptr %59, align 8, !tbaa !228
  %61 = fdiv float 1.000000e+00, %60
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %61) #17
  %62 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %63 = load i16, ptr %62, align 2, !tbaa !229
  switch i16 %63, label %91 [
    i16 0, label %64
    i16 3, label %64
    i16 1, label %67
    i16 2, label %67
    i16 4, label %70
  ]

64:                                               ; preds = %58, %58
  %65 = call fastcc float @mg_mFractalOrfBmTex(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %66 = fptosi float %65 to i32
  br label %91

67:                                               ; preds = %58, %58
  %68 = call fastcc float @mg_ridgedOrHybridMFTex(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %69 = fptosi float %68 to i32
  br label %91

70:                                               ; preds = %58
  %71 = call fastcc float @mg_HTerrainTex(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %72 = fptosi float %71 to i32
  br label %91

73:                                               ; preds = %26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #17
  %74 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %75 = load float, ptr %74, align 8, !tbaa !228
  %76 = fdiv float 1.000000e+00, %75
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %76) #17
  %77 = call fastcc float @voronoiTex(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %78 = fptosi float %77 to i32
  br label %91

79:                                               ; preds = %26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #17
  %80 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !228
  %82 = fdiv float 1.000000e+00, %81
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %82) #17
  %83 = call fastcc float @mg_distNoiseTex(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #17
  %84 = fptosi float %83 to i32
  br label %91

85:                                               ; preds = %26
  %86 = tail call i32 @pointdensitytex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #16
  br label %91

87:                                               ; preds = %26
  %88 = tail call i32 @voxeldatatex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #16
  br label %91

89:                                               ; preds = %26
  %90 = tail call i32 @ocean_texture(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #16
  br label %91

91:                                               ; preds = %30, %32, %34, %36, %37, %38, %40, %56, %73, %79, %85, %87, %89, %26, %55, %50, %58, %70, %67, %64, %20
  %92 = phi i32 [ %25, %20 ], [ 0, %26 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %79 ], [ %78, %73 ], [ 0, %58 ], [ %72, %70 ], [ %69, %67 ], [ %66, %64 ], [ %57, %56 ], [ %51, %55 ], [ %51, %50 ], [ 0, %40 ], [ %39, %38 ], [ 0, %37 ], [ 1, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ]
  %93 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %94 = load i16, ptr %93, align 2, !tbaa !180
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  %98 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %99 = load ptr, ptr %98, align 8, !tbaa !230
  %100 = load float, ptr %5, align 8, !tbaa !126
  %101 = call zeroext i8 @do_colorband(ptr noundef %99, float noundef %100, ptr noundef nonnull %11) #16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  store i32 1, ptr %12, align 4, !tbaa !141
  %104 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %105 = load <4 x float>, ptr %11, align 16, !tbaa !98
  store <4 x float> %105, ptr %104, align 4, !tbaa !98
  %106 = or i32 %92, 1
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi i32 [ %106, %103 ], [ %92, %97 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %109

109:                                              ; preds = %91, %107, %29
  %110 = phi i32 [ 0, %29 ], [ %108, %107 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_halo_tex(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TexResult, align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %9 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %10 = and i32 %9, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %312

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 29
  %14 = load ptr, ptr %13, align 8, !tbaa !231
  %15 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 102
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 73
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %312

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = icmp eq ptr %23, null
  br i1 %24, label %312, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  store ptr null, ptr %26, align 8, !tbaa !122
  %27 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %28 = load float, ptr %27, align 8, !tbaa !233
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %30 = insertelement <2 x float> poison, float %1, i64 0
  %31 = insertelement <2 x float> %30, float %2, i64 1
  %32 = insertelement <2 x float> poison, float %28, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = fdiv <2 x float> %31, %33
  store <2 x float> %34, ptr %6, align 8, !tbaa !98
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %35, align 8, !tbaa !98
  %36 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 90
  %37 = load i16, ptr %36, align 4, !tbaa !234
  %38 = and i16 %37, 512
  %39 = zext nneg i16 %38 to i32
  %40 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 7
  %41 = load i8, ptr %40, align 8, !tbaa !205
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 12
  %44 = load float, ptr %43, align 8, !tbaa !98
  br i1 %42, label %54, label %45

45:                                               ; preds = %25
  %46 = zext i8 %41 to i64
  %47 = add nuw nsw i64 %46, 4294967295
  %48 = and i64 %47, 4294967295
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !98
  %51 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11
  %52 = load float, ptr %51, align 4, !tbaa !98
  %53 = fadd float %50, %52
  br label %57

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11
  %56 = load float, ptr %55, align 4, !tbaa !98
  br label %57

57:                                               ; preds = %54, %45
  %58 = phi float [ %56, %54 ], [ %53, %45 ]
  %59 = fmul float %44, %58
  store float %59, ptr %6, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 8
  %61 = load i8, ptr %60, align 1, !tbaa !206
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 12, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !98
  br i1 %62, label %74, label %65

65:                                               ; preds = %57
  %66 = zext i8 %61 to i64
  %67 = add nuw nsw i64 %66, 4294967295
  %68 = and i64 %67, 4294967295
  %69 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !98
  %71 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !98
  %73 = fadd float %70, %72
  br label %77

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !98
  br label %77

77:                                               ; preds = %74, %65
  %78 = phi float [ %76, %74 ], [ %73, %65 ]
  %79 = fmul float %64, %78
  store float %79, ptr %29, align 4, !tbaa !98
  %80 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 9
  %81 = load i8, ptr %80, align 2, !tbaa !207
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 12, i64 2
  %84 = load float, ptr %83, align 8, !tbaa !98
  br i1 %82, label %94, label %85

85:                                               ; preds = %77
  %86 = zext i8 %81 to i64
  %87 = add nuw nsw i64 %86, 4294967295
  %88 = and i64 %87, 4294967295
  %89 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !98
  %91 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !98
  %93 = fadd float %90, %92
  br label %97

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 11, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !98
  br label %97

97:                                               ; preds = %94, %85
  %98 = phi float [ %96, %94 ], [ %93, %85 ]
  %99 = fmul float %84, %98
  store float %99, ptr %35, align 8, !tbaa !98
  %100 = icmp eq i16 %38, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = fdiv float 1.000000e+00, %28
  %103 = fmul float %102, %44
  %104 = select i1 %42, float 0.000000e+00, float %103
  store float %104, ptr %8, align 4
  store float %104, ptr %7, align 4
  %105 = fmul float %102, %64
  %106 = select i1 %62, float 0.000000e+00, float %105
  %107 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float %106, ptr %107, align 4
  %108 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %106, ptr %108, align 4
  %109 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %110 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %111 = select i1 %82, ptr %109, ptr %110
  store float 0.000000e+00, ptr %111, align 4, !tbaa !98
  %112 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %113 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %114 = select i1 %82, ptr %112, ptr %113
  store float 0.000000e+00, ptr %114, align 4, !tbaa !98
  br label %115

115:                                              ; preds = %101, %97
  %116 = getelementptr inbounds %struct.Tex, ptr %23, i64 0, i32 32
  %117 = load i16, ptr %116, align 8, !tbaa !66
  %118 = icmp eq i16 %117, 8
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  call fastcc void @do_2d_mapping(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %120 = load ptr, ptr %22, align 8, !tbaa !95
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi ptr [ %120, %119 ], [ %23, %115 ]
  %123 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 19
  %124 = load i16, ptr %123, align 2, !tbaa !85
  %125 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 30
  %126 = load ptr, ptr %125, align 8, !tbaa !235
  %127 = call fastcc i32 @multitex(ptr noundef %122, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %39, ptr noundef nonnull %5, i16 noundef signext 0, i16 noundef signext %124, ptr noundef %126) #17
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 14
  %130 = load i16, ptr %129, align 8, !tbaa !107
  br i1 %128, label %137, label %131

131:                                              ; preds = %121
  %132 = and i16 %130, 1
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %136 = call fastcc float @rgb_to_bw(ptr noundef nonnull %135) #17
  store float %136, ptr %5, align 8, !tbaa !126
  br label %137

137:                                              ; preds = %121, %134
  %138 = and i16 %130, 4
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %153, label %150

140:                                              ; preds = %131
  %141 = and i16 %130, 4
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %145 = load <2 x float>, ptr %144, align 4, !tbaa !98
  %146 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %145
  store <2 x float> %146, ptr %144, align 4, !tbaa !98
  %147 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !127
  %149 = fsub float 1.000000e+00, %148
  store float %149, ptr %147, align 4, !tbaa !127
  br label %153

150:                                              ; preds = %137
  %151 = load float, ptr %5, align 8, !tbaa !126
  %152 = fsub float 1.000000e+00, %151
  store float %152, ptr %5, align 8, !tbaa !126
  br label %153

153:                                              ; preds = %140, %143, %150, %137
  %154 = phi i1 [ false, %140 ], [ false, %143 ], [ true, %150 ], [ true, %137 ]
  %155 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !89
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %290, label %160

160:                                              ; preds = %153
  br i1 %154, label %161, label %168

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 22
  %163 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %164 = load <2 x float>, ptr %162, align 4, !tbaa !98
  store <2 x float> %164, ptr %163, align 4, !tbaa !98
  %165 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 24
  %166 = load float, ptr %165, align 4, !tbaa !236
  %167 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %166, ptr %167, align 4, !tbaa !127
  br label %175

168:                                              ; preds = %160
  %169 = and i32 %157, 128
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  store float 1.000000e+00, ptr %5, align 8, !tbaa !126
  br label %175

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %174 = load float, ptr %173, align 8, !tbaa !128
  store float %174, ptr %5, align 8, !tbaa !126
  br label %175

175:                                              ; preds = %171, %172, %161
  %176 = load ptr, ptr %22, align 8, !tbaa !95
  %177 = getelementptr inbounds %struct.Tex, ptr %176, i64 0, i32 32
  %178 = load i16, ptr %177, align 8, !tbaa !66
  %179 = icmp eq i16 %178, 8
  br i1 %179, label %180, label %200

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.Tex, ptr %176, i64 0, i32 54
  %182 = load ptr, ptr %181, align 8, !tbaa !63
  %183 = getelementptr inbounds %struct.Tex, ptr %176, i64 0, i32 51
  %184 = load ptr, ptr %125, align 8, !tbaa !235
  %185 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %182, ptr noundef nonnull %183, ptr noundef %184) #16
  %186 = icmp eq ptr %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.ImBuf, ptr %185, i64 0, i32 9
  %189 = load ptr, ptr %188, align 8, !tbaa !90
  %190 = icmp eq ptr %189, null
  %191 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %192 = icmp ne i8 %191, 0
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %196 = getelementptr inbounds %struct.ImBuf, ptr %185, i64 0, i32 34
  %197 = load ptr, ptr %196, align 8, !tbaa !93
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %195, ptr noundef %197) #16
  br label %198

198:                                              ; preds = %194, %187, %180
  %199 = load ptr, ptr %125, align 8, !tbaa !235
  call void @BKE_image_pool_release_ibuf(ptr noundef %182, ptr noundef %185, ptr noundef %199) #16
  br label %200

200:                                              ; preds = %198, %175
  %201 = load float, ptr %5, align 8, !tbaa !126
  %202 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 28
  %203 = load float, ptr %202, align 4, !tbaa !130
  %204 = fmul float %201, %203
  %205 = getelementptr inbounds %struct.MTex, ptr %16, i64 0, i32 3
  %206 = load i16, ptr %205, align 2, !tbaa !131
  %207 = icmp eq i16 %206, 1
  %208 = select i1 %207, float %203, float %204
  %209 = fsub float 1.000000e+00, %208
  switch i16 %206, label %252 [
    i16 0, label %210
    i16 1, label %231
  ]

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %212 = load float, ptr %211, align 4, !tbaa !181
  %213 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %214 = load float, ptr %213, align 4, !tbaa !237
  %215 = fmul float %209, %214
  %216 = call float @llvm.fmuladd.f32(float %204, float %212, float %215)
  store float %216, ptr %3, align 4, !tbaa !98
  %217 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %218 = load float, ptr %217, align 8, !tbaa !182
  %219 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %220 = load float, ptr %219, align 8, !tbaa !238
  %221 = fmul float %209, %220
  %222 = call float @llvm.fmuladd.f32(float %204, float %218, float %221)
  %223 = getelementptr inbounds float, ptr %3, i64 1
  store float %222, ptr %223, align 4, !tbaa !98
  %224 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %225 = load float, ptr %224, align 4, !tbaa !127
  %226 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %227 = load float, ptr %226, align 4, !tbaa !239
  %228 = fmul float %209, %227
  %229 = call float @llvm.fmuladd.f32(float %204, float %225, float %228)
  %230 = getelementptr inbounds float, ptr %3, i64 2
  store float %229, ptr %230, align 4, !tbaa !98
  br label %290

231:                                              ; preds = %200
  %232 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %233 = load float, ptr %232, align 4, !tbaa !181
  %234 = call float @llvm.fmuladd.f32(float %204, float %233, float %209)
  %235 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %236 = load float, ptr %235, align 4, !tbaa !237
  %237 = fmul float %234, %236
  store float %237, ptr %3, align 4, !tbaa !98
  %238 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %239 = load float, ptr %238, align 8, !tbaa !182
  %240 = call float @llvm.fmuladd.f32(float %204, float %239, float %209)
  %241 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %242 = load float, ptr %241, align 8, !tbaa !238
  %243 = fmul float %240, %242
  %244 = getelementptr inbounds float, ptr %3, i64 1
  store float %243, ptr %244, align 4, !tbaa !98
  %245 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %246 = load float, ptr %245, align 4, !tbaa !127
  %247 = call float @llvm.fmuladd.f32(float %204, float %246, float %209)
  %248 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %249 = load float, ptr %248, align 4, !tbaa !239
  %250 = fmul float %247, %249
  %251 = getelementptr inbounds float, ptr %3, i64 2
  store float %250, ptr %251, align 4, !tbaa !98
  br label %290

252:                                              ; preds = %200
  %253 = icmp eq i16 %206, 3
  %254 = fneg float %204
  %255 = select i1 %253, float %254, float %204
  %256 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %257 = load float, ptr %256, align 4, !tbaa !181
  %258 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %259 = load float, ptr %258, align 4, !tbaa !237
  %260 = call float @llvm.fmuladd.f32(float %255, float %257, float %259)
  store float %260, ptr %3, align 4, !tbaa !98
  %261 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %262 = load float, ptr %261, align 8, !tbaa !182
  %263 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %264 = load float, ptr %263, align 8, !tbaa !238
  %265 = call float @llvm.fmuladd.f32(float %255, float %262, float %264)
  %266 = getelementptr inbounds float, ptr %3, i64 1
  store float %265, ptr %266, align 4, !tbaa !98
  %267 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %268 = load float, ptr %267, align 4, !tbaa !127
  %269 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %270 = load float, ptr %269, align 4, !tbaa !239
  %271 = call float @llvm.fmuladd.f32(float %255, float %268, float %270)
  %272 = getelementptr inbounds float, ptr %3, i64 2
  store float %271, ptr %272, align 4, !tbaa !98
  %273 = fcmp olt float %260, 0.000000e+00
  br i1 %273, label %276, label %274

274:                                              ; preds = %252
  %275 = fcmp ogt float %260, 1.000000e+00
  br i1 %275, label %276, label %278

276:                                              ; preds = %274, %252
  %277 = phi float [ 0.000000e+00, %252 ], [ 1.000000e+00, %274 ]
  store float %277, ptr %3, align 4, !tbaa !98
  br label %278

278:                                              ; preds = %276, %274
  %279 = fcmp olt float %265, 0.000000e+00
  br i1 %279, label %282, label %280

280:                                              ; preds = %278
  %281 = fcmp ogt float %265, 1.000000e+00
  br i1 %281, label %282, label %284

282:                                              ; preds = %280, %278
  %283 = phi float [ 0.000000e+00, %278 ], [ 1.000000e+00, %280 ]
  store float %283, ptr %266, align 4, !tbaa !98
  br label %284

284:                                              ; preds = %282, %280
  %285 = fcmp olt float %271, 0.000000e+00
  br i1 %285, label %286, label %287

286:                                              ; preds = %284
  store float 0.000000e+00, ptr %272, align 4, !tbaa !98
  br label %290

287:                                              ; preds = %284
  %288 = fcmp ogt float %271, 1.000000e+00
  br i1 %288, label %289, label %290

289:                                              ; preds = %287
  store float 1.000000e+00, ptr %272, align 4, !tbaa !98
  br label %290

290:                                              ; preds = %210, %286, %289, %287, %231, %153
  %291 = load i16, ptr %155, align 2, !tbaa !89
  %292 = and i16 %291, 128
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %312, label %294

294:                                              ; preds = %290
  br i1 %154, label %295, label %297

295:                                              ; preds = %294
  %296 = load float, ptr %5, align 8, !tbaa !126
  br label %307

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %299 = load i32, ptr %298, align 4, !tbaa !141
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %303 = load float, ptr %302, align 8, !tbaa !128
  br label %307

304:                                              ; preds = %297
  %305 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %306 = call fastcc float @rgb_to_bw(ptr noundef nonnull %305) #17
  br label %307

307:                                              ; preds = %295, %301, %304
  %308 = phi float [ %296, %295 ], [ %303, %301 ], [ %306, %304 ]
  %309 = getelementptr inbounds float, ptr %3, i64 3
  %310 = load float, ptr %309, align 4, !tbaa !98
  %311 = fmul float %308, %310
  store float %311, ptr %309, align 4, !tbaa !98
  br label %312

312:                                              ; preds = %290, %307, %21, %12, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_2d_mapping(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !240 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !94
  %12 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = load i16, ptr %0, align 8, !tbaa !97
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !241
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %146

19:                                               ; preds = %6
  %20 = load float, ptr %1, align 4, !tbaa !98
  switch i8 %11, label %38 [
    i8 0, label %21
    i8 2, label %28
    i8 3, label %33
  ]

21:                                               ; preds = %19
  %22 = fadd float %20, 1.000000e+00
  %23 = fmul float %22, 5.000000e-01
  store float %23, ptr %7, align 4, !tbaa !98
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !98
  %26 = fadd float %25, 1.000000e+00
  %27 = fmul float %26, 5.000000e-01
  store float %27, ptr %8, align 4, !tbaa !98
  br label %49

28:                                               ; preds = %19
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !98
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !98
  call void @map_to_tube(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %20, float noundef %30, float noundef %32) #16
  br label %49

33:                                               ; preds = %19
  %34 = getelementptr inbounds float, ptr %1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !98
  %36 = getelementptr inbounds float, ptr %1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !98
  call void @map_to_sphere(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %20, float noundef %35, float noundef %37) #16
  br label %49

38:                                               ; preds = %19
  %39 = getelementptr inbounds float, ptr %1, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !98
  %41 = getelementptr inbounds float, ptr %1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !98
  switch i16 %16, label %47 [
    i16 32, label %43
    i16 8, label %45
  ]

43:                                               ; preds = %38
  %44 = call fastcc i32 @cubemap_ob(ptr noundef %15, ptr noundef %3, float noundef %20, float noundef %40, float noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !range !227
  br label %49

45:                                               ; preds = %38
  %46 = call fastcc i32 @cubemap_glob(ptr noundef %3, float noundef %20, float noundef %40, float noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !range !227
  br label %49

47:                                               ; preds = %38
  %48 = call fastcc i32 @cubemap(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, float noundef %20, float noundef %40, float noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  br label %49

49:                                               ; preds = %28, %43, %47, %45, %33, %21
  %50 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 42
  %51 = load i16, ptr %50, align 8, !tbaa !68
  %52 = icmp eq i16 %51, 3
  br i1 %52, label %53, label %119

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 40
  %55 = load i16, ptr %54, align 4, !tbaa !242
  %56 = icmp sgt i16 %55, 1
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = sitofp i16 %55 to float
  %59 = load float, ptr %7, align 4, !tbaa !98
  %60 = fmul float %59, %58
  store float %60, ptr %7, align 4, !tbaa !98
  %61 = fcmp ogt float %60, 1.000000e+00
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = fptosi float %60 to i32
  %64 = sitofp i32 %63 to float
  %65 = fsub float %60, %64
  store float %65, ptr %7, align 4, !tbaa !98
  br label %73

66:                                               ; preds = %57
  %67 = fcmp olt float %60, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = fptosi float %60 to i32
  %70 = sub nsw i32 1, %69
  %71 = sitofp i32 %70 to float
  %72 = fadd float %60, %71
  store float %72, ptr %7, align 4, !tbaa !98
  br label %73

73:                                               ; preds = %66, %68, %62
  %74 = phi float [ %60, %66 ], [ %72, %68 ], [ %65, %62 ]
  %75 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 31
  %76 = load i16, ptr %75, align 2, !tbaa !180
  %77 = and i16 %76, 128
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = call float @llvm.floor.f32(float %60)
  %81 = fptosi float %80 to i32
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = fsub float 1.000000e+00, %74
  store float %85, ptr %7, align 4, !tbaa !98
  br label %86

86:                                               ; preds = %73, %84, %79, %53
  %87 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 41
  %88 = load i16, ptr %87, align 2, !tbaa !243
  %89 = icmp sgt i16 %88, 1
  br i1 %89, label %90, label %119

90:                                               ; preds = %86
  %91 = sitofp i16 %88 to float
  %92 = load float, ptr %8, align 4, !tbaa !98
  %93 = fmul float %92, %91
  store float %93, ptr %8, align 4, !tbaa !98
  %94 = fcmp ogt float %93, 1.000000e+00
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = fptosi float %93 to i32
  %97 = sitofp i32 %96 to float
  %98 = fsub float %93, %97
  store float %98, ptr %8, align 4, !tbaa !98
  br label %106

99:                                               ; preds = %90
  %100 = fcmp olt float %93, 0.000000e+00
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = fptosi float %93 to i32
  %103 = sub nsw i32 1, %102
  %104 = sitofp i32 %103 to float
  %105 = fadd float %93, %104
  store float %105, ptr %8, align 4, !tbaa !98
  br label %106

106:                                              ; preds = %99, %101, %95
  %107 = phi float [ %93, %99 ], [ %105, %101 ], [ %98, %95 ]
  %108 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 31
  %109 = load i16, ptr %108, align 2, !tbaa !180
  %110 = and i16 %109, 256
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = call float @llvm.floor.f32(float %93)
  %114 = fptosi float %113 to i32
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = fsub float 1.000000e+00, %107
  store float %118, ptr %8, align 4, !tbaa !98
  br label %119

119:                                              ; preds = %106, %117, %112, %86, %49
  %120 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 34
  %121 = load float, ptr %120, align 4, !tbaa !244
  %122 = fcmp une float %121, 0.000000e+00
  %123 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 36
  %124 = load float, ptr %123, align 4, !tbaa !245
  %125 = fcmp une float %124, 1.000000e+00
  %126 = select i1 %122, i1 true, i1 %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = fsub float %124, %121
  %129 = load float, ptr %7, align 4, !tbaa !98
  %130 = call float @llvm.fmuladd.f32(float %129, float %128, float %121)
  store float %130, ptr %7, align 4, !tbaa !98
  br label %131

131:                                              ; preds = %119, %127
  %132 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 35
  %133 = load float, ptr %132, align 8, !tbaa !246
  %134 = fcmp une float %133, 0.000000e+00
  %135 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 37
  %136 = load float, ptr %135, align 8, !tbaa !247
  br i1 %134, label %137, label %139

137:                                              ; preds = %131
  %138 = load float, ptr %8, align 4, !tbaa !98
  br label %142

139:                                              ; preds = %131
  %140 = fcmp une float %136, 1.000000e+00
  %141 = load float, ptr %8, align 4, !tbaa !98
  br i1 %140, label %142, label %445

142:                                              ; preds = %137, %139
  %143 = phi float [ %138, %137 ], [ %141, %139 ]
  %144 = fsub float %136, %133
  %145 = call float @llvm.fmuladd.f32(float %143, float %144, float %133)
  br label %445

146:                                              ; preds = %6
  %147 = icmp eq i8 %11, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %146
  %149 = load float, ptr %1, align 4, !tbaa !98
  %150 = fadd float %149, 1.000000e+00
  %151 = fmul float %150, 5.000000e-01
  store float %151, ptr %7, align 4, !tbaa !98
  %152 = getelementptr inbounds float, ptr %1, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !98
  %154 = fadd float %153, 1.000000e+00
  %155 = fmul float %154, 5.000000e-01
  store float %155, ptr %8, align 4, !tbaa !98
  %156 = load <2 x float>, ptr %4, align 4, !tbaa !98
  %157 = fmul <2 x float> %156, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %157, ptr %4, align 4, !tbaa !98
  %158 = getelementptr inbounds float, ptr %4, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !98
  %160 = fmul float %159, 5.000000e-01
  store float %160, ptr %158, align 4, !tbaa !98
  %161 = load <2 x float>, ptr %5, align 4, !tbaa !98
  %162 = fmul <2 x float> %161, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %162, ptr %5, align 4, !tbaa !98
  %163 = getelementptr inbounds float, ptr %5, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !98
  %165 = fmul float %164, 5.000000e-01
  store float %165, ptr %163, align 4, !tbaa !98
  br label %305

166:                                              ; preds = %146
  %167 = icmp eq i8 %11, 2
  %168 = and i8 %11, -2
  %169 = icmp eq i8 %168, 2
  br i1 %169, label %170, label %252

170:                                              ; preds = %166
  %171 = getelementptr inbounds float, ptr %1, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !98
  %173 = fcmp ugt float %172, 0.000000e+00
  br i1 %173, label %194, label %174

174:                                              ; preds = %170
  %175 = load float, ptr %1, align 4, !tbaa !98
  %176 = load float, ptr %4, align 4, !tbaa !98
  %177 = fadd float %175, %176
  store float %177, ptr %7, align 4, !tbaa !98
  %178 = load float, ptr %5, align 4, !tbaa !98
  %179 = fadd float %175, %178
  store float %179, ptr %8, align 4, !tbaa !98
  %180 = fcmp ult float %177, 0.000000e+00
  %181 = fcmp ult float %179, 0.000000e+00
  %182 = select i1 %180, i1 true, i1 %181
  %183 = fcmp ult float %175, 0.000000e+00
  %184 = or i1 %183, %182
  br i1 %184, label %185, label %194

185:                                              ; preds = %174
  %186 = fcmp ugt float %177, 0.000000e+00
  %187 = fcmp ugt float %179, 0.000000e+00
  %188 = select i1 %186, i1 true, i1 %187
  %189 = fcmp ugt float %175, 0.000000e+00
  %190 = or i1 %189, %188
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = getelementptr inbounds float, ptr %1, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !98
  br i1 %167, label %245, label %246

194:                                              ; preds = %185, %174, %170
  %195 = getelementptr inbounds float, ptr %9, i64 1
  %196 = load float, ptr %1, align 4, !tbaa !98
  %197 = getelementptr inbounds float, ptr %1, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !98
  %199 = getelementptr inbounds float, ptr %9, i64 2
  %200 = getelementptr inbounds float, ptr %9, i64 3
  %201 = getelementptr inbounds float, ptr %4, i64 1
  %202 = getelementptr inbounds float, ptr %4, i64 2
  %203 = getelementptr inbounds float, ptr %9, i64 4
  %204 = getelementptr inbounds float, ptr %9, i64 5
  %205 = getelementptr inbounds float, ptr %5, i64 1
  %206 = getelementptr inbounds float, ptr %5, i64 2
  br i1 %167, label %207, label %226

207:                                              ; preds = %194
  call void @map_to_tube(ptr noundef nonnull %9, ptr noundef nonnull %195, float noundef %196, float noundef %172, float noundef %198) #16
  %208 = load float, ptr %1, align 4, !tbaa !98
  %209 = load float, ptr %4, align 4, !tbaa !98
  %210 = fadd float %208, %209
  %211 = load float, ptr %171, align 4, !tbaa !98
  %212 = load float, ptr %201, align 4, !tbaa !98
  %213 = fadd float %211, %212
  %214 = load float, ptr %197, align 4, !tbaa !98
  %215 = load float, ptr %202, align 4, !tbaa !98
  %216 = fadd float %214, %215
  call void @map_to_tube(ptr noundef nonnull %199, ptr noundef nonnull %200, float noundef %210, float noundef %213, float noundef %216) #16
  %217 = load float, ptr %1, align 4, !tbaa !98
  %218 = load float, ptr %5, align 4, !tbaa !98
  %219 = fadd float %217, %218
  %220 = load float, ptr %171, align 4, !tbaa !98
  %221 = load float, ptr %205, align 4, !tbaa !98
  %222 = fadd float %220, %221
  %223 = load float, ptr %197, align 4, !tbaa !98
  %224 = load float, ptr %206, align 4, !tbaa !98
  %225 = fadd float %223, %224
  call void @map_to_tube(ptr noundef nonnull %203, ptr noundef nonnull %204, float noundef %219, float noundef %222, float noundef %225) #16
  br label %295

226:                                              ; preds = %194
  call void @map_to_sphere(ptr noundef nonnull %9, ptr noundef nonnull %195, float noundef %196, float noundef %172, float noundef %198) #16
  %227 = load float, ptr %1, align 4, !tbaa !98
  %228 = load float, ptr %4, align 4, !tbaa !98
  %229 = fadd float %227, %228
  %230 = load float, ptr %171, align 4, !tbaa !98
  %231 = load float, ptr %201, align 4, !tbaa !98
  %232 = fadd float %230, %231
  %233 = load float, ptr %197, align 4, !tbaa !98
  %234 = load float, ptr %202, align 4, !tbaa !98
  %235 = fadd float %233, %234
  call void @map_to_sphere(ptr noundef nonnull %199, ptr noundef nonnull %200, float noundef %229, float noundef %232, float noundef %235) #16
  %236 = load float, ptr %1, align 4, !tbaa !98
  %237 = load float, ptr %5, align 4, !tbaa !98
  %238 = fadd float %236, %237
  %239 = load float, ptr %171, align 4, !tbaa !98
  %240 = load float, ptr %205, align 4, !tbaa !98
  %241 = fadd float %239, %240
  %242 = load float, ptr %197, align 4, !tbaa !98
  %243 = load float, ptr %206, align 4, !tbaa !98
  %244 = fadd float %242, %243
  call void @map_to_sphere(ptr noundef nonnull %203, ptr noundef nonnull %204, float noundef %238, float noundef %241, float noundef %244) #16
  br label %295

245:                                              ; preds = %191
  call void @map_to_tube(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %175, float noundef %172, float noundef %193) #16
  br label %247

246:                                              ; preds = %191
  call void @map_to_sphere(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %175, float noundef %172, float noundef %193) #16
  br label %247

247:                                              ; preds = %246, %245
  %248 = load <2 x float>, ptr %4, align 4, !tbaa !98
  %249 = fmul <2 x float> %248, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %249, ptr %4, align 4, !tbaa !98
  %250 = load <2 x float>, ptr %5, align 4, !tbaa !98
  %251 = fmul <2 x float> %250, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %251, ptr %5, align 4, !tbaa !98
  br label %305

252:                                              ; preds = %166
  %253 = load float, ptr %1, align 4, !tbaa !98
  %254 = getelementptr inbounds float, ptr %1, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !98
  %256 = getelementptr inbounds float, ptr %1, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !98
  switch i16 %16, label %262 [
    i16 32, label %258
    i16 8, label %260
  ]

258:                                              ; preds = %252
  %259 = call fastcc i32 @cubemap_ob(ptr noundef %15, ptr noundef %3, float noundef %253, float noundef %255, float noundef %257, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !range !227
  br label %264

260:                                              ; preds = %252
  %261 = call fastcc i32 @cubemap_glob(ptr noundef %3, float noundef %253, float noundef %255, float noundef %257, ptr noundef nonnull %7, ptr noundef nonnull %8) #17, !range !227
  br label %264

262:                                              ; preds = %252
  %263 = call fastcc i32 @cubemap(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, float noundef %253, float noundef %255, float noundef %257, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  br label %264

264:                                              ; preds = %260, %262, %258
  %265 = phi i32 [ %259, %258 ], [ %261, %260 ], [ %263, %262 ]
  switch i32 %265, label %284 [
    i32 1, label %266
    i32 2, label %273
  ]

266:                                              ; preds = %264
  %267 = getelementptr inbounds float, ptr %4, i64 1
  %268 = load <2 x float>, ptr %267, align 4, !tbaa !98
  %269 = shufflevector <2 x float> %268, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %269, ptr %267, align 4, !tbaa !98
  %270 = getelementptr inbounds float, ptr %5, i64 1
  %271 = load <2 x float>, ptr %270, align 4, !tbaa !98
  %272 = shufflevector <2 x float> %271, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %272, ptr %270, align 4, !tbaa !98
  br label %284

273:                                              ; preds = %264
  %274 = load float, ptr %4, align 4, !tbaa !98
  %275 = load float, ptr %5, align 4, !tbaa !98
  %276 = getelementptr inbounds float, ptr %4, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !98
  store float %277, ptr %4, align 4, !tbaa !98
  %278 = getelementptr inbounds float, ptr %5, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !98
  store float %279, ptr %5, align 4, !tbaa !98
  %280 = getelementptr inbounds float, ptr %4, i64 2
  %281 = load float, ptr %280, align 4, !tbaa !98
  store float %281, ptr %276, align 4, !tbaa !98
  %282 = getelementptr inbounds float, ptr %5, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !98
  store float %283, ptr %278, align 4, !tbaa !98
  store float %274, ptr %280, align 4, !tbaa !98
  store float %275, ptr %282, align 4, !tbaa !98
  br label %284

284:                                              ; preds = %264, %273, %266
  %285 = load <2 x float>, ptr %4, align 4, !tbaa !98
  %286 = fmul <2 x float> %285, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %286, ptr %4, align 4, !tbaa !98
  %287 = getelementptr inbounds float, ptr %4, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !98
  %289 = fmul float %288, 5.000000e-01
  store float %289, ptr %287, align 4, !tbaa !98
  %290 = load <2 x float>, ptr %5, align 4, !tbaa !98
  %291 = fmul <2 x float> %290, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %291, ptr %5, align 4, !tbaa !98
  %292 = getelementptr inbounds float, ptr %5, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !98
  %294 = fmul float %293, 5.000000e-01
  store float %294, ptr %292, align 4, !tbaa !98
  br label %305

295:                                              ; preds = %226, %207
  %296 = getelementptr inbounds [8 x float], ptr %9, i64 0, i64 2
  %297 = load <2 x float>, ptr %9, align 16, !tbaa !98
  %298 = extractelement <2 x float> %297, i64 0
  store float %298, ptr %7, align 4, !tbaa !98
  %299 = extractelement <2 x float> %297, i64 1
  store float %299, ptr %8, align 4, !tbaa !98
  %300 = load <2 x float>, ptr %296, align 8, !tbaa !98
  %301 = fsub <2 x float> %300, %297
  store <2 x float> %301, ptr %4, align 4, !tbaa !98
  %302 = getelementptr inbounds [8 x float], ptr %9, i64 0, i64 4
  %303 = load <2 x float>, ptr %302, align 16, !tbaa !98
  %304 = fsub <2 x float> %303, %297
  store <2 x float> %304, ptr %5, align 4, !tbaa !98
  br label %305

305:                                              ; preds = %148, %247, %284, %295
  %306 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 42
  %307 = load i16, ptr %306, align 8, !tbaa !68
  %308 = icmp eq i16 %307, 3
  br i1 %308, label %309, label %408

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 40
  %311 = load i16, ptr %310, align 4, !tbaa !242
  %312 = icmp sgt i16 %311, 1
  br i1 %312, label %313, label %351

313:                                              ; preds = %309
  %314 = sitofp i16 %311 to float
  %315 = load float, ptr %7, align 4, !tbaa !98
  %316 = fmul float %315, %314
  store float %316, ptr %7, align 4, !tbaa !98
  %317 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 38
  %318 = load i32, ptr %317, align 4, !tbaa !208
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %346

320:                                              ; preds = %313
  %321 = fcmp ogt float %316, 1.000000e+00
  br i1 %321, label %322, label %326

322:                                              ; preds = %320
  %323 = fptosi float %316 to i32
  %324 = sitofp i32 %323 to float
  %325 = fsub float %316, %324
  store float %325, ptr %7, align 4, !tbaa !98
  br label %333

326:                                              ; preds = %320
  %327 = fcmp olt float %316, 0.000000e+00
  br i1 %327, label %328, label %333

328:                                              ; preds = %326
  %329 = fptosi float %316 to i32
  %330 = sub nsw i32 1, %329
  %331 = sitofp i32 %330 to float
  %332 = fadd float %316, %331
  store float %332, ptr %7, align 4, !tbaa !98
  br label %333

333:                                              ; preds = %326, %328, %322
  %334 = phi float [ %316, %326 ], [ %332, %328 ], [ %325, %322 ]
  %335 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 31
  %336 = load i16, ptr %335, align 2, !tbaa !180
  %337 = and i16 %336, 128
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %333
  %340 = call float @llvm.floor.f32(float %316)
  %341 = fptosi float %340 to i32
  %342 = and i32 %341, 1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %339
  %345 = fsub float 1.000000e+00, %334
  store float %345, ptr %7, align 4, !tbaa !98
  br label %346

346:                                              ; preds = %339, %344, %333, %313
  %347 = load float, ptr %4, align 4, !tbaa !98
  %348 = fmul float %347, %314
  store float %348, ptr %4, align 4, !tbaa !98
  %349 = load float, ptr %5, align 4, !tbaa !98
  %350 = fmul float %349, %314
  store float %350, ptr %5, align 4, !tbaa !98
  br label %351

351:                                              ; preds = %346, %309
  %352 = phi float [ %314, %346 ], [ 1.000000e+00, %309 ]
  %353 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 41
  %354 = load i16, ptr %353, align 2, !tbaa !243
  %355 = icmp sgt i16 %354, 1
  br i1 %355, label %356, label %398

356:                                              ; preds = %351
  %357 = sitofp i16 %354 to float
  %358 = load float, ptr %8, align 4, !tbaa !98
  %359 = fmul float %358, %357
  store float %359, ptr %8, align 4, !tbaa !98
  %360 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 38
  %361 = load i32, ptr %360, align 4, !tbaa !208
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %389

363:                                              ; preds = %356
  %364 = fcmp ogt float %359, 1.000000e+00
  br i1 %364, label %365, label %369

365:                                              ; preds = %363
  %366 = fptosi float %359 to i32
  %367 = sitofp i32 %366 to float
  %368 = fsub float %359, %367
  store float %368, ptr %8, align 4, !tbaa !98
  br label %376

369:                                              ; preds = %363
  %370 = fcmp olt float %359, 0.000000e+00
  br i1 %370, label %371, label %376

371:                                              ; preds = %369
  %372 = fptosi float %359 to i32
  %373 = sub nsw i32 1, %372
  %374 = sitofp i32 %373 to float
  %375 = fadd float %359, %374
  store float %375, ptr %8, align 4, !tbaa !98
  br label %376

376:                                              ; preds = %369, %371, %365
  %377 = phi float [ %359, %369 ], [ %375, %371 ], [ %368, %365 ]
  %378 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 31
  %379 = load i16, ptr %378, align 2, !tbaa !180
  %380 = and i16 %379, 256
  %381 = icmp eq i16 %380, 0
  br i1 %381, label %389, label %382

382:                                              ; preds = %376
  %383 = call float @llvm.floor.f32(float %359)
  %384 = fptosi float %383 to i32
  %385 = and i32 %384, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %382
  %388 = fsub float 1.000000e+00, %377
  store float %388, ptr %8, align 4, !tbaa !98
  br label %389

389:                                              ; preds = %382, %387, %376, %356
  %390 = fcmp olt float %352, %357
  %391 = select i1 %390, float %357, float %352
  %392 = getelementptr inbounds float, ptr %4, i64 1
  %393 = load float, ptr %392, align 4, !tbaa !98
  %394 = fmul float %393, %357
  store float %394, ptr %392, align 4, !tbaa !98
  %395 = getelementptr inbounds float, ptr %5, i64 1
  %396 = load float, ptr %395, align 4, !tbaa !98
  %397 = fmul float %396, %357
  store float %397, ptr %395, align 4, !tbaa !98
  br label %398

398:                                              ; preds = %389, %351
  %399 = phi float [ %391, %389 ], [ %352, %351 ]
  %400 = fcmp une float %399, 1.000000e+00
  br i1 %400, label %401, label %408

401:                                              ; preds = %398
  %402 = getelementptr inbounds float, ptr %4, i64 2
  %403 = load float, ptr %402, align 4, !tbaa !98
  %404 = fmul float %399, %403
  store float %404, ptr %402, align 4, !tbaa !98
  %405 = getelementptr inbounds float, ptr %5, i64 2
  %406 = load float, ptr %405, align 4, !tbaa !98
  %407 = fmul float %399, %406
  store float %407, ptr %405, align 4, !tbaa !98
  br label %408

408:                                              ; preds = %398, %401, %305
  %409 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 34
  %410 = load float, ptr %409, align 4, !tbaa !244
  %411 = fcmp une float %410, 0.000000e+00
  %412 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 36
  %413 = load float, ptr %412, align 4, !tbaa !245
  %414 = fcmp une float %413, 1.000000e+00
  %415 = select i1 %411, i1 true, i1 %414
  br i1 %415, label %416, label %424

416:                                              ; preds = %408
  %417 = fsub float %413, %410
  %418 = load float, ptr %7, align 4, !tbaa !98
  %419 = call float @llvm.fmuladd.f32(float %418, float %417, float %410)
  store float %419, ptr %7, align 4, !tbaa !98
  %420 = load float, ptr %4, align 4, !tbaa !98
  %421 = fmul float %417, %420
  store float %421, ptr %4, align 4, !tbaa !98
  %422 = load float, ptr %5, align 4, !tbaa !98
  %423 = fmul float %417, %422
  store float %423, ptr %5, align 4, !tbaa !98
  br label %424

424:                                              ; preds = %408, %416
  %425 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 35
  %426 = load float, ptr %425, align 8, !tbaa !246
  %427 = fcmp une float %426, 0.000000e+00
  %428 = getelementptr inbounds %struct.Tex, ptr %13, i64 0, i32 37
  %429 = load float, ptr %428, align 8, !tbaa !247
  br i1 %427, label %430, label %432

430:                                              ; preds = %424
  %431 = load float, ptr %8, align 4, !tbaa !98
  br label %435

432:                                              ; preds = %424
  %433 = fcmp une float %429, 1.000000e+00
  %434 = load float, ptr %8, align 4, !tbaa !98
  br i1 %433, label %435, label %445

435:                                              ; preds = %430, %432
  %436 = phi float [ %431, %430 ], [ %434, %432 ]
  %437 = fsub float %429, %426
  %438 = call float @llvm.fmuladd.f32(float %436, float %437, float %426)
  %439 = getelementptr inbounds float, ptr %4, i64 1
  %440 = load float, ptr %439, align 4, !tbaa !98
  %441 = fmul float %437, %440
  store float %441, ptr %439, align 4, !tbaa !98
  %442 = getelementptr inbounds float, ptr %5, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !98
  %444 = fmul float %437, %443
  store float %444, ptr %442, align 4, !tbaa !98
  br label %445

445:                                              ; preds = %435, %432, %142, %139
  %446 = phi float [ %145, %142 ], [ %141, %139 ], [ %438, %435 ], [ %434, %432 ]
  %447 = load float, ptr %7, align 4, !tbaa !98
  store float %447, ptr %1, align 4, !tbaa !98
  %448 = getelementptr inbounds float, ptr %1, i64 1
  store float %446, ptr %448, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_bw(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !248 {
  %2 = load float, ptr %0, align 4, !tbaa !98
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = fmul float %4, 0x3FDCCCCCC0000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD6666660000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC99999A0000000, float %6)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_sky_tex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6, i16 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  %15 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %345

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  store ptr null, ptr %19, align 8, !tbaa !122
  %20 = icmp eq ptr %2, null
  %21 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %22 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %25 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %26 = icmp eq ptr %0, null
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %30 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %31 = and i32 %6, 16
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %35 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %36 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %37 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %38 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  br label %39

39:                                               ; preds = %18, %341
  %40 = phi i64 [ 0, %18 ], [ %343, %341 ]
  %41 = phi float [ 1.000000e+00, %18 ], [ %342, %341 ]
  %42 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 46, i32 70, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %341, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = icmp eq ptr %47, null
  br i1 %48, label %341, label %49

49:                                               ; preds = %45
  br i1 %20, label %53, label %50

50:                                               ; preds = %49
  %51 = load float, ptr %2, align 4, !tbaa !98
  store float %51, ptr %21, align 8, !tbaa !98
  store float %51, ptr %22, align 4, !tbaa !98
  store float %51, ptr %12, align 8, !tbaa !98
  %52 = load float, ptr %23, align 4, !tbaa !98
  br label %54

53:                                               ; preds = %49
  store float 0.000000e+00, ptr %21, align 8, !tbaa !98
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !98
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi float [ %52, %50 ], [ 0.000000e+00, %53 ]
  store float %55, ptr %24, align 4, !tbaa !98
  store float %55, ptr %25, align 4, !tbaa !98
  store float %55, ptr %13, align 4, !tbaa !98
  %56 = load i16, ptr %43, align 8, !tbaa !97
  switch i16 %56, label %113 [
    i16 64, label %57
    i16 256, label %78
    i16 1024, label %78
    i16 2048, label %94
    i16 32, label %104
    i16 8, label %111
  ]

57:                                               ; preds = %54
  %58 = load float, ptr %1, align 4, !tbaa !98
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load float, ptr %28, align 4, !tbaa !98
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %77

63:                                               ; preds = %60, %57
  %64 = load float, ptr %27, align 4, !tbaa !98
  %65 = call fastcc float @saacos(float noundef %64) #17
  %66 = fmul float %65, 0x3FD45F3060000000
  %67 = load <2 x float>, ptr %1, align 4, !tbaa !98
  %68 = fmul <2 x float> %67, %67
  %69 = extractelement <2 x float> %68, i64 1
  %70 = extractelement <2 x float> %67, i64 0
  %71 = call float @llvm.fmuladd.f32(float %70, float %70, float %69)
  %72 = call float @llvm.sqrt.f32(float %71)
  %73 = fdiv float %66, %72
  %74 = insertelement <2 x float> poison, float %73, i64 0
  %75 = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> zeroinitializer
  %76 = fmul <2 x float> %67, %75
  store <2 x float> %76, ptr %10, align 8, !tbaa !98
  store float 0.000000e+00, ptr %30, align 8, !tbaa !98
  br label %113

77:                                               ; preds = %60
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %10, align 8, !tbaa !98
  store float 0.000000e+00, ptr %30, align 8, !tbaa !98
  br label %113

78:                                               ; preds = %54, %54
  br i1 %32, label %341, label %79

79:                                               ; preds = %78
  %80 = icmp eq i16 %56, 1024
  %81 = load float, ptr %1, align 4, !tbaa !98
  %82 = load float, ptr %27, align 4, !tbaa !98
  %83 = load float, ptr %28, align 4, !tbaa !98
  br i1 %80, label %84, label %85

84:                                               ; preds = %79
  call void @map_to_tube(ptr noundef nonnull %10, ptr noundef nonnull %29, float noundef %81, float noundef %82, float noundef %83) #16
  br label %86

85:                                               ; preds = %79
  call void @map_to_sphere(ptr noundef nonnull %10, ptr noundef nonnull %29, float noundef %81, float noundef %82, float noundef %83) #16
  br label %86

86:                                               ; preds = %85, %84
  %87 = load float, ptr %10, align 8, !tbaa !98
  %88 = fsub float 1.000000e+00, %87
  %89 = load float, ptr %29, align 4, !tbaa !98
  %90 = call float @llvm.fmuladd.f32(float %89, float 2.000000e+00, float -1.000000e+00)
  store float 0.000000e+00, ptr %30, align 8, !tbaa !98
  %91 = insertelement <2 x float> poison, float %88, i64 0
  %92 = insertelement <2 x float> %91, float %90, i64 1
  %93 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %92, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %93, ptr %10, align 8, !tbaa !98
  br label %113

94:                                               ; preds = %54
  %95 = load float, ptr %1, align 4, !tbaa !98
  %96 = load float, ptr %27, align 4, !tbaa !98
  %97 = call float @atan2f(float noundef %95, float noundef %96) #16
  %98 = fdiv float %97, 0x400921FB60000000
  store float %98, ptr %10, align 8, !tbaa !98
  %99 = load float, ptr %28, align 4, !tbaa !98
  %100 = call fastcc float @saacos(float noundef %99) #17
  %101 = fmul float %100, 2.000000e+00
  %102 = fdiv float %101, 0x400921FB60000000
  %103 = fsub float 1.000000e+00, %102
  store float %103, ptr %29, align 4, !tbaa !98
  store float 0.000000e+00, ptr %30, align 8, !tbaa !98
  br label %113

104:                                              ; preds = %54
  %105 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !96
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #17
  %109 = load ptr, ptr %105, align 8, !tbaa !96
  %110 = getelementptr inbounds %struct.Object, ptr %109, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %110, ptr noundef nonnull %10) #16
  br label %113

111:                                              ; preds = %54
  br i1 %26, label %113, label %112

112:                                              ; preds = %111
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %0) #17
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %10) #16
  br label %113

113:                                              ; preds = %111, %63, %77, %112, %104, %108, %54, %94, %86
  %114 = phi ptr [ %1, %54 ], [ %10, %112 ], [ %10, %108 ], [ %1, %104 ], [ %10, %94 ], [ %10, %86 ], [ %10, %77 ], [ %10, %63 ], [ %1, %111 ]
  %115 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 7
  %116 = load i8, ptr %115, align 8, !tbaa !205
  %117 = icmp eq i8 %116, 0
  %118 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 12
  %119 = load float, ptr %118, align 8, !tbaa !98
  br i1 %117, label %129, label %120

120:                                              ; preds = %113
  %121 = zext i8 %116 to i64
  %122 = add nuw nsw i64 %121, 4294967295
  %123 = and i64 %122, 4294967295
  %124 = getelementptr inbounds float, ptr %114, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !98
  %126 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11
  %127 = load float, ptr %126, align 4, !tbaa !98
  %128 = fadd float %125, %127
  br label %132

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11
  %131 = load float, ptr %130, align 4, !tbaa !98
  br label %132

132:                                              ; preds = %129, %120
  %133 = phi float [ %131, %129 ], [ %128, %120 ]
  %134 = fmul float %119, %133
  store float %134, ptr %11, align 4, !tbaa !98
  %135 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 8
  %136 = load i8, ptr %135, align 1, !tbaa !206
  %137 = icmp eq i8 %136, 0
  %138 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 12, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !98
  br i1 %137, label %149, label %140

140:                                              ; preds = %132
  %141 = zext i8 %136 to i64
  %142 = add nuw nsw i64 %141, 4294967295
  %143 = and i64 %142, 4294967295
  %144 = getelementptr inbounds float, ptr %114, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !98
  %146 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !98
  %148 = fadd float %145, %147
  br label %152

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !98
  br label %152

152:                                              ; preds = %149, %140
  %153 = phi float [ %151, %149 ], [ %148, %140 ]
  %154 = fmul float %139, %153
  store float %154, ptr %33, align 4, !tbaa !98
  %155 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 9
  %156 = load i8, ptr %155, align 2, !tbaa !207
  %157 = icmp eq i8 %156, 0
  %158 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 12, i64 2
  %159 = load float, ptr %158, align 8, !tbaa !98
  br i1 %157, label %169, label %160

160:                                              ; preds = %152
  %161 = zext i8 %156 to i64
  %162 = add nuw nsw i64 %161, 4294967295
  %163 = and i64 %162, 4294967295
  %164 = getelementptr inbounds float, ptr %114, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !98
  %166 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !98
  %168 = fadd float %165, %167
  br label %172

169:                                              ; preds = %152
  %170 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 11, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !98
  br label %172

172:                                              ; preds = %169, %160
  %173 = phi float [ %171, %169 ], [ %168, %160 ]
  %174 = fmul float %159, %173
  store float %174, ptr %34, align 4, !tbaa !98
  %175 = getelementptr inbounds %struct.Tex, ptr %47, i64 0, i32 32
  %176 = load i16, ptr %175, align 8, !tbaa !66
  %177 = icmp eq i16 %176, 8
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  call fastcc void @do_2d_mapping(ptr noundef nonnull %43, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  br label %179

179:                                              ; preds = %178, %172
  %180 = load ptr, ptr %46, align 8, !tbaa !95
  %181 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !241
  %182 = sext i16 %181 to i32
  %183 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 19
  %184 = load i16, ptr %183, align 2, !tbaa !85
  %185 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %186 = call fastcc i32 @multitex(ptr noundef %180, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %182, ptr noundef nonnull %9, i16 noundef signext %7, i16 noundef signext %184, ptr noundef %185) #17
  %187 = icmp eq i32 %186, 0
  %188 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 14
  %189 = load i16, ptr %188, align 8, !tbaa !107
  br i1 %187, label %195, label %190

190:                                              ; preds = %179
  %191 = and i16 %189, 1
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = call fastcc float @rgb_to_bw(ptr noundef nonnull %35) #17
  store float %194, ptr %9, align 8, !tbaa !126
  br label %195

195:                                              ; preds = %179, %193
  %196 = and i16 %189, 4
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %209, label %206

198:                                              ; preds = %190
  %199 = and i16 %189, 4
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %198
  %202 = load <2 x float>, ptr %35, align 4, !tbaa !98
  %203 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %202
  store <2 x float> %203, ptr %35, align 4, !tbaa !98
  %204 = load float, ptr %36, align 4, !tbaa !127
  %205 = fsub float 1.000000e+00, %204
  store float %205, ptr %36, align 4, !tbaa !127
  br label %209

206:                                              ; preds = %195
  %207 = load float, ptr %9, align 8, !tbaa !126
  %208 = fsub float 1.000000e+00, %207
  store float %208, ptr %9, align 8, !tbaa !126
  br label %209

209:                                              ; preds = %198, %201, %206, %195
  %210 = phi i1 [ false, %198 ], [ false, %201 ], [ true, %206 ], [ true, %195 ]
  %211 = and i16 %189, 2
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %209
  br i1 %210, label %217, label %214

214:                                              ; preds = %213
  %215 = load float, ptr %37, align 8, !tbaa !128
  %216 = fmul float %41, %215
  store float %216, ptr %37, align 8, !tbaa !128
  br label %227

217:                                              ; preds = %213
  %218 = load float, ptr %9, align 8, !tbaa !126
  %219 = fmul float %41, %218
  store float %219, ptr %9, align 8, !tbaa !126
  br label %227

220:                                              ; preds = %209
  br i1 %210, label %224, label %221

221:                                              ; preds = %220
  %222 = load float, ptr %37, align 8, !tbaa !128
  %223 = fmul float %41, %222
  store float %223, ptr %37, align 8, !tbaa !128
  br label %227

224:                                              ; preds = %220
  %225 = load float, ptr %9, align 8, !tbaa !126
  %226 = fmul float %41, %225
  store float %226, ptr %9, align 8, !tbaa !126
  br label %227

227:                                              ; preds = %221, %224, %214, %217
  %228 = phi float [ %216, %214 ], [ %219, %217 ], [ %41, %221 ], [ %41, %224 ]
  %229 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 1
  %230 = load i16, ptr %229, align 2, !tbaa !89
  %231 = and i16 %230, 14
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %321, label %233

233:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  br i1 %210, label %234, label %239

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 22
  %236 = load <2 x float>, ptr %235, align 4, !tbaa !98
  store <2 x float> %236, ptr %35, align 4, !tbaa !98
  %237 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 24
  %238 = load float, ptr %237, align 4, !tbaa !236
  store float %238, ptr %36, align 4, !tbaa !127
  br label %243

239:                                              ; preds = %233
  %240 = load float, ptr %37, align 8, !tbaa !128
  store float %240, ptr %9, align 8, !tbaa !126
  %241 = load <2 x float>, ptr %35, align 4, !tbaa !98
  %242 = load float, ptr %36, align 4, !tbaa !127
  br label %243

243:                                              ; preds = %239, %234
  %244 = phi float [ %242, %239 ], [ %238, %234 ]
  %245 = phi <2 x float> [ %241, %239 ], [ %236, %234 ]
  store <2 x float> %245, ptr %14, align 8, !tbaa !98
  store float %244, ptr %38, align 8, !tbaa !98
  %246 = load i16, ptr %175, align 8, !tbaa !66
  %247 = icmp eq i16 %246, 8
  br i1 %247, label %248, label %268

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.Tex, ptr %47, i64 0, i32 54
  %250 = load ptr, ptr %249, align 8, !tbaa !63
  %251 = getelementptr inbounds %struct.Tex, ptr %47, i64 0, i32 51
  %252 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %253 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %250, ptr noundef nonnull %251, ptr noundef %252) #16
  %254 = icmp eq ptr %253, null
  br i1 %254, label %265, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.ImBuf, ptr %253, i64 0, i32 9
  %257 = load ptr, ptr %256, align 8, !tbaa !90
  %258 = icmp eq ptr %257, null
  %259 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %260 = icmp ne i8 %259, 0
  %261 = select i1 %258, i1 %260, i1 false
  br i1 %261, label %262, label %265

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.ImBuf, ptr %253, i64 0, i32 34
  %264 = load ptr, ptr %263, align 8, !tbaa !93
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %14, ptr noundef %264) #16
  br label %265

265:                                              ; preds = %262, %255, %248
  %266 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  call void @BKE_image_pool_release_ibuf(ptr noundef %250, ptr noundef %253, ptr noundef %266) #16
  %267 = load i16, ptr %229, align 2, !tbaa !89
  br label %268

268:                                              ; preds = %265, %243
  %269 = phi i16 [ %267, %265 ], [ %230, %243 ]
  %270 = and i16 %269, 2
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %268
  %273 = load float, ptr %9, align 8, !tbaa !126
  %274 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 28
  %275 = load float, ptr %274, align 4, !tbaa !130
  %276 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 3
  %277 = load i16, ptr %276, align 2, !tbaa !131
  %278 = sext i16 %277 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %14, ptr noundef %3, float noundef %273, float noundef %275, i32 noundef %278) #17
  %279 = load i16, ptr %229, align 2, !tbaa !89
  br label %280

280:                                              ; preds = %272, %268
  %281 = phi i16 [ %279, %272 ], [ %269, %268 ]
  %282 = zext i16 %281 to i32
  %283 = and i32 %282, 12
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %319, label %285

285:                                              ; preds = %280
  %286 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !249
  %287 = and i16 %286, 2
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %285
  br i1 %32, label %295, label %290

290:                                              ; preds = %289
  %291 = and i32 %282, 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %319, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 62
  br label %310

295:                                              ; preds = %289
  %296 = and i32 %282, 8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %319, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 63
  br label %310

300:                                              ; preds = %285
  %301 = and i32 %282, 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 62
  br label %310

305:                                              ; preds = %300
  %306 = and i32 %282, 8
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 63
  br label %310

310:                                              ; preds = %303, %308, %293, %298
  %311 = phi ptr [ %294, %293 ], [ %299, %298 ], [ %304, %303 ], [ %309, %308 ]
  %312 = load float, ptr %311, align 4, !tbaa !98
  %313 = fcmp une float %312, 0.000000e+00
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load float, ptr %9, align 8, !tbaa !126
  %316 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 3
  %317 = load i16, ptr %316, align 2, !tbaa !131
  %318 = sext i16 %317 to i32
  call void @texture_rgb_blend(ptr noundef %4, ptr noundef nonnull %14, ptr noundef %4, float noundef %315, float noundef %312, i32 noundef %318) #17
  br label %319

319:                                              ; preds = %305, %295, %290, %310, %314, %280
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  %320 = load i16, ptr %229, align 2, !tbaa !89
  br label %321

321:                                              ; preds = %319, %227
  %322 = phi i16 [ %320, %319 ], [ %230, %227 ]
  %323 = and i16 %322, 1
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %341, label %325

325:                                              ; preds = %321
  br i1 %210, label %326, label %328

326:                                              ; preds = %325
  %327 = load float, ptr %9, align 8, !tbaa !126
  br label %330

328:                                              ; preds = %325
  %329 = call fastcc float @rgb_to_bw(ptr noundef nonnull %35) #17
  store float %329, ptr %9, align 8, !tbaa !126
  br label %330

330:                                              ; preds = %326, %328
  %331 = phi float [ %327, %326 ], [ %329, %328 ]
  %332 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 26
  %333 = load float, ptr %332, align 4, !tbaa !143
  %334 = load float, ptr %5, align 4, !tbaa !98
  %335 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 64
  %336 = load float, ptr %335, align 4, !tbaa !250
  %337 = getelementptr inbounds %struct.MTex, ptr %43, i64 0, i32 3
  %338 = load i16, ptr %337, align 2, !tbaa !131
  %339 = sext i16 %338 to i32
  %340 = call float @texture_value_blend(float noundef %333, float noundef %334, float noundef %331, float noundef %336, i32 noundef %339) #17
  store float %340, ptr %5, align 4, !tbaa !98
  br label %341

341:                                              ; preds = %39, %330, %321, %78, %45
  %342 = phi float [ %41, %45 ], [ %228, %330 ], [ %228, %321 ], [ %41, %78 ], [ %41, %39 ]
  %343 = add nuw nsw i64 %40, 1
  %344 = icmp eq i64 %343, 18
  br i1 %344, label %345, label %39, !llvm.loop !251

345:                                              ; preds = %341, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #12 !PGOFuncName !252 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #16
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @map_to_tube(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_lamp_tex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %12 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %339

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  %17 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  %18 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 60
  %20 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 15
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 92
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 93
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  %28 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %30 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %33 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %35 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %36 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %37 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %38 = and i32 %4, 256
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %4, 65536
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 15
  %43 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  br label %44

44:                                               ; preds = %15, %332
  %45 = phi i64 [ 0, %15 ], [ %337, %332 ]
  %46 = phi ptr [ null, %15 ], [ %336, %332 ]
  %47 = phi ptr [ null, %15 ], [ %335, %332 ]
  %48 = phi float [ 1.000000e+00, %15 ], [ %334, %332 ]
  %49 = phi ptr [ null, %15 ], [ %333, %332 ]
  %50 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 69, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %332, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  %56 = icmp eq ptr %55, null
  br i1 %56, label %332, label %57

57:                                               ; preds = %53
  store ptr null, ptr %16, align 8, !tbaa !122
  %58 = load i16, ptr %51, align 8, !tbaa !97
  switch i16 %58, label %88 [
    i16 32, label %59
    i16 8, label %68
    i16 128, label %69
  ]

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !96
  %62 = icmp eq ptr %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %27) #17
  %64 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %10) #16
  %65 = load i16, ptr %21, align 8, !tbaa !108
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %25) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %26) #17
  call void @mul_mat3_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %8) #16
  call void @mul_mat3_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %9) #16
  br label %88

68:                                               ; preds = %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %27) #17
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %24) #16
  br label %88

69:                                               ; preds = %57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #17
  call void @mul_m3_v3(ptr noundef nonnull %17, ptr noundef nonnull %10) #16
  %70 = load i16, ptr %18, align 8, !tbaa !253
  %71 = icmp eq i16 %70, 2
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load float, ptr %19, align 4, !tbaa !255
  %74 = load float, ptr %20, align 8, !tbaa !98
  %75 = fneg float %74
  %76 = load <2 x float>, ptr %10, align 8, !tbaa !98
  %77 = insertelement <2 x float> poison, float %73, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %79 = fmul <2 x float> %78, %76
  %80 = insertelement <2 x float> poison, float %75, i64 0
  %81 = shufflevector <2 x float> %80, <2 x float> poison, <2 x i32> zeroinitializer
  %82 = fdiv <2 x float> %79, %81
  store <2 x float> %82, ptr %10, align 8, !tbaa !98
  br label %83

83:                                               ; preds = %72, %69
  %84 = load i16, ptr %21, align 8, !tbaa !108
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %22) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %23) #17
  call void @mul_m3_v3(ptr noundef nonnull %17, ptr noundef nonnull %8) #16
  call void @mul_m3_v3(ptr noundef nonnull %17, ptr noundef nonnull %9) #16
  %87 = load float, ptr %19, align 4, !tbaa !255
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %87) #17
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %87) #17
  br label %88

88:                                               ; preds = %59, %57, %68, %83, %86, %67, %63
  %89 = phi ptr [ %9, %67 ], [ %9, %63 ], [ %26, %68 ], [ %9, %86 ], [ %9, %83 ], [ %49, %57 ], [ %26, %59 ]
  %90 = phi ptr [ %8, %67 ], [ %8, %63 ], [ %25, %68 ], [ %8, %86 ], [ %8, %83 ], [ %47, %57 ], [ %25, %59 ]
  %91 = phi ptr [ %10, %67 ], [ %10, %63 ], [ %24, %68 ], [ %10, %86 ], [ %10, %83 ], [ %46, %57 ], [ %27, %59 ]
  %92 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 7
  %93 = load i8, ptr %92, align 8, !tbaa !205
  %94 = icmp ne i8 %93, 0
  %95 = icmp ne ptr %91, null
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = zext i8 %93 to i64
  %99 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12
  %100 = load float, ptr %99, align 8, !tbaa !98
  %101 = add nuw nsw i64 %98, 4294967295
  %102 = and i64 %101, 4294967295
  %103 = getelementptr inbounds float, ptr %91, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !98
  %105 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11
  %106 = load float, ptr %105, align 4, !tbaa !98
  %107 = fadd float %104, %106
  %108 = fmul float %100, %107
  br label %115

109:                                              ; preds = %88
  %110 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12
  %111 = load float, ptr %110, align 8, !tbaa !98
  %112 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11
  %113 = load float, ptr %112, align 4, !tbaa !98
  %114 = fmul float %111, %113
  br label %115

115:                                              ; preds = %109, %97
  %116 = phi float [ %111, %109 ], [ %100, %97 ]
  %117 = phi float [ %114, %109 ], [ %108, %97 ]
  store float %117, ptr %7, align 4, !tbaa !98
  %118 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 8
  %119 = load i8, ptr %118, align 1, !tbaa !206
  %120 = icmp ne i8 %119, 0
  %121 = select i1 %120, i1 %95, i1 false
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = zext i8 %119 to i64
  %124 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !98
  %126 = add nuw nsw i64 %123, 4294967295
  %127 = and i64 %126, 4294967295
  %128 = getelementptr inbounds float, ptr %91, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !98
  %130 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !98
  %132 = fadd float %129, %131
  %133 = fmul float %125, %132
  br label %140

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !98
  %137 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !98
  %139 = fmul float %136, %138
  br label %140

140:                                              ; preds = %134, %122
  %141 = phi float [ %139, %134 ], [ %133, %122 ]
  %142 = phi float [ %136, %134 ], [ %125, %122 ]
  store float %141, ptr %28, align 4, !tbaa !98
  %143 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 9
  %144 = load i8, ptr %143, align 2, !tbaa !207
  %145 = icmp ne i8 %144, 0
  %146 = select i1 %145, i1 %95, i1 false
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = zext i8 %144 to i64
  %149 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12, i64 2
  %150 = load float, ptr %149, align 8, !tbaa !98
  %151 = add nuw nsw i64 %148, 4294967295
  %152 = and i64 %151, 4294967295
  %153 = getelementptr inbounds float, ptr %91, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !98
  %155 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !98
  %157 = fadd float %154, %156
  %158 = fmul float %150, %157
  br label %165

159:                                              ; preds = %140
  %160 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 12, i64 2
  %161 = load float, ptr %160, align 8, !tbaa !98
  %162 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 11, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !98
  %164 = fmul float %161, %163
  br label %165

165:                                              ; preds = %159, %147
  %166 = phi float [ %164, %159 ], [ %158, %147 ]
  %167 = phi float [ %161, %159 ], [ %150, %147 ]
  store float %166, ptr %29, align 4, !tbaa !98
  %168 = load i16, ptr %21, align 8, !tbaa !108
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %217, label %170

170:                                              ; preds = %165
  %171 = icmp eq ptr %90, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  store i64 0, ptr %9, align 8
  store i64 0, ptr %8, align 8
  br label %217

173:                                              ; preds = %170
  %174 = icmp eq i8 %93, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %173
  %176 = zext i8 %93 to i64
  %177 = add nuw nsw i64 %176, 4294967295
  %178 = and i64 %177, 4294967295
  %179 = getelementptr inbounds float, ptr %90, i64 %178
  %180 = load float, ptr %179, align 4, !tbaa !98
  %181 = fmul float %116, %180
  store float %181, ptr %8, align 8, !tbaa !98
  %182 = add nsw i64 %176, -1
  %183 = getelementptr inbounds float, ptr %89, i64 %182
  %184 = load float, ptr %183, align 4, !tbaa !98
  %185 = fmul float %116, %184
  br label %187

186:                                              ; preds = %173
  store float 0.000000e+00, ptr %8, align 8, !tbaa !98
  br label %187

187:                                              ; preds = %186, %175
  %188 = phi float [ 0.000000e+00, %186 ], [ %185, %175 ]
  store float %188, ptr %9, align 8, !tbaa !98
  %189 = icmp eq i8 %119, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %187
  %191 = zext i8 %119 to i64
  %192 = add nuw nsw i64 %191, 4294967295
  %193 = and i64 %192, 4294967295
  %194 = getelementptr inbounds float, ptr %90, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !98
  %196 = fmul float %142, %195
  store float %196, ptr %30, align 4, !tbaa !98
  %197 = add nsw i64 %191, -1
  %198 = getelementptr inbounds float, ptr %89, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !98
  %200 = fmul float %142, %199
  br label %202

201:                                              ; preds = %187
  store float 0.000000e+00, ptr %30, align 4, !tbaa !98
  br label %202

202:                                              ; preds = %201, %190
  %203 = phi float [ %200, %190 ], [ 0.000000e+00, %201 ]
  store float %203, ptr %31, align 4, !tbaa !98
  %204 = icmp eq i8 %144, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %202
  %206 = zext i8 %144 to i64
  %207 = add nuw nsw i64 %206, 4294967295
  %208 = and i64 %207, 4294967295
  %209 = getelementptr inbounds float, ptr %90, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !98
  %211 = fmul float %167, %210
  store float %211, ptr %32, align 8, !tbaa !98
  %212 = add nsw i64 %206, -1
  %213 = getelementptr inbounds float, ptr %89, i64 %212
  %214 = load float, ptr %213, align 4, !tbaa !98
  %215 = fmul float %167, %214
  store float %215, ptr %33, align 8, !tbaa !98
  br label %217

216:                                              ; preds = %202
  store float 0.000000e+00, ptr %32, align 8, !tbaa !98
  store float 0.000000e+00, ptr %33, align 8, !tbaa !98
  br label %217

217:                                              ; preds = %172, %216, %205, %165
  %218 = getelementptr inbounds %struct.Tex, ptr %55, i64 0, i32 32
  %219 = load i16, ptr %218, align 8, !tbaa !66
  %220 = icmp eq i16 %219, 8
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  call fastcc void @do_2d_mapping(ptr noundef nonnull %51, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %222 = load i16, ptr %21, align 8, !tbaa !108
  br label %223

223:                                              ; preds = %221, %217
  %224 = phi i16 [ %222, %221 ], [ %168, %217 ]
  %225 = sext i16 %224 to i32
  %226 = load i16, ptr %34, align 2, !tbaa !210
  %227 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 19
  %228 = load i16, ptr %227, align 2, !tbaa !85
  %229 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %230 = call fastcc i32 @multitex(ptr noundef nonnull %55, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %225, ptr noundef nonnull %6, i16 noundef signext %226, i16 noundef signext %228, ptr noundef %229) #17
  %231 = icmp eq i32 %230, 0
  %232 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 14
  %233 = load i16, ptr %232, align 8, !tbaa !107
  br i1 %231, label %239, label %234

234:                                              ; preds = %223
  %235 = and i16 %233, 1
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = call fastcc float @rgb_to_bw(ptr noundef nonnull %35) #17
  store float %238, ptr %6, align 8, !tbaa !126
  br label %239

239:                                              ; preds = %223, %237
  %240 = and i16 %233, 4
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %253, label %250

242:                                              ; preds = %234
  %243 = and i16 %233, 4
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %242
  %246 = load <2 x float>, ptr %35, align 4, !tbaa !98
  %247 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %246
  store <2 x float> %247, ptr %35, align 4, !tbaa !98
  %248 = load float, ptr %36, align 4, !tbaa !127
  %249 = fsub float 1.000000e+00, %248
  store float %249, ptr %36, align 4, !tbaa !127
  br label %253

250:                                              ; preds = %239
  %251 = load float, ptr %6, align 8, !tbaa !126
  %252 = fsub float 1.000000e+00, %251
  store float %252, ptr %6, align 8, !tbaa !126
  br label %253

253:                                              ; preds = %242, %245, %250, %239
  %254 = phi i1 [ false, %242 ], [ false, %245 ], [ true, %250 ], [ true, %239 ]
  %255 = and i16 %233, 2
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  br i1 %254, label %261, label %258

258:                                              ; preds = %257
  %259 = load float, ptr %37, align 8, !tbaa !128
  %260 = fmul float %48, %259
  store float %260, ptr %37, align 8, !tbaa !128
  br label %271

261:                                              ; preds = %257
  %262 = load float, ptr %6, align 8, !tbaa !126
  %263 = fmul float %48, %262
  store float %263, ptr %6, align 8, !tbaa !126
  br label %271

264:                                              ; preds = %253
  br i1 %254, label %268, label %265

265:                                              ; preds = %264
  %266 = load float, ptr %37, align 8, !tbaa !128
  %267 = fmul float %48, %266
  store float %267, ptr %37, align 8, !tbaa !128
  br label %271

268:                                              ; preds = %264
  %269 = load float, ptr %6, align 8, !tbaa !126
  %270 = fmul float %48, %269
  store float %270, ptr %6, align 8, !tbaa !126
  br label %271

271:                                              ; preds = %265, %268, %258, %261
  %272 = phi float [ %260, %258 ], [ %263, %261 ], [ %48, %265 ], [ %48, %268 ]
  %273 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 1
  %274 = load i16, ptr %273, align 2, !tbaa !89
  %275 = and i16 %274, 1
  %276 = icmp eq i16 %275, 0
  %277 = or i1 %39, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %271
  %279 = and i16 %274, 2
  %280 = icmp eq i16 %279, 0
  %281 = or i1 %41, %280
  br i1 %281, label %332, label %282

282:                                              ; preds = %278, %271
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  br i1 %254, label %283, label %288

283:                                              ; preds = %282
  %284 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 22
  %285 = load <2 x float>, ptr %284, align 4, !tbaa !98
  store <2 x float> %285, ptr %35, align 4, !tbaa !98
  %286 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 24
  %287 = load float, ptr %286, align 4, !tbaa !236
  store float %287, ptr %36, align 4, !tbaa !127
  br label %294

288:                                              ; preds = %282
  %289 = and i16 %274, 128
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  store float %272, ptr %6, align 8, !tbaa !126
  br label %294

292:                                              ; preds = %288
  %293 = load float, ptr %37, align 8, !tbaa !128
  store float %293, ptr %6, align 8, !tbaa !126
  br label %294

294:                                              ; preds = %291, %292, %283
  %295 = load i16, ptr %218, align 8, !tbaa !66
  %296 = icmp eq i16 %295, 8
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.Tex, ptr %55, i64 0, i32 54
  %299 = load ptr, ptr %298, align 8, !tbaa !63
  %300 = getelementptr inbounds %struct.Tex, ptr %55, i64 0, i32 51
  %301 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %302 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %299, ptr noundef nonnull %300, ptr noundef %301) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %314, label %304

304:                                              ; preds = %297
  %305 = getelementptr inbounds %struct.ImBuf, ptr %302, i64 0, i32 9
  %306 = load ptr, ptr %305, align 8, !tbaa !90
  %307 = icmp eq ptr %306, null
  %308 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %309 = icmp ne i8 %308, 0
  %310 = select i1 %307, i1 %309, i1 false
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = getelementptr inbounds %struct.ImBuf, ptr %302, i64 0, i32 34
  %313 = load ptr, ptr %312, align 8, !tbaa !93
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %35, ptr noundef %313) #16
  br label %314

314:                                              ; preds = %311, %304, %297
  %315 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  call void @BKE_image_pool_release_ibuf(ptr noundef %299, ptr noundef %302, ptr noundef %315) #16
  br label %316

316:                                              ; preds = %314, %294
  %317 = load float, ptr %42, align 4, !tbaa !256
  %318 = load <2 x float>, ptr %35, align 4, !tbaa !98
  %319 = insertelement <2 x float> poison, float %317, i64 0
  %320 = shufflevector <2 x float> %319, <2 x float> poison, <2 x i32> zeroinitializer
  %321 = fmul <2 x float> %320, %318
  store <2 x float> %321, ptr %11, align 8, !tbaa !98
  %322 = load float, ptr %36, align 4, !tbaa !127
  %323 = fmul float %317, %322
  store float %323, ptr %43, align 8, !tbaa !98
  %324 = load float, ptr %6, align 8, !tbaa !126
  %325 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 3
  %326 = load i16, ptr %325, align 2, !tbaa !131
  %327 = sext i16 %326 to i32
  %328 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 28
  %329 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 61
  %330 = select i1 %41, ptr %328, ptr %329
  %331 = load float, ptr %330, align 4, !tbaa !98
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %11, ptr noundef %3, float noundef %324, float noundef %331, i32 noundef %327) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  br label %332

332:                                              ; preds = %44, %316, %278, %53
  %333 = phi ptr [ %49, %53 ], [ %89, %316 ], [ %89, %278 ], [ %49, %44 ]
  %334 = phi float [ %48, %53 ], [ %272, %316 ], [ %272, %278 ], [ %48, %44 ]
  %335 = phi ptr [ %47, %53 ], [ %90, %316 ], [ %90, %278 ], [ %47, %44 ]
  %336 = phi ptr [ %46, %53 ], [ %91, %316 ], [ %91, %278 ], [ %46, %44 ]
  %337 = add nuw nsw i64 %45, 1
  %338 = icmp eq i64 %337, 18
  br i1 %338, label %339, label %44, !llvm.loop !257

339:                                              ; preds = %332, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @externtex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.TexResult, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = icmp eq ptr %15, null
  br i1 %16, label %112, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 8, !tbaa !205
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !98
  br i1 %21, label %33, label %24

24:                                               ; preds = %17
  %25 = zext i8 %20 to i64
  %26 = add nuw nsw i64 %25, 4294967295
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds float, ptr %1, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !98
  %30 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11
  %31 = load float, ptr %30, align 4, !tbaa !98
  %32 = fadd float %29, %31
  br label %36

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11
  %35 = load float, ptr %34, align 4, !tbaa !98
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi float [ %35, %33 ], [ %32, %24 ]
  %38 = fmul float %23, %37
  store float %38, ptr %13, align 4, !tbaa !98
  %39 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  %40 = load i8, ptr %39, align 1, !tbaa !206
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !98
  br i1 %41, label %53, label %44

44:                                               ; preds = %36
  %45 = zext i8 %40 to i64
  %46 = add nuw nsw i64 %45, 4294967295
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds float, ptr %1, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !98
  %50 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !98
  %52 = fadd float %49, %51
  br label %56

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !98
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi float [ %55, %53 ], [ %52, %44 ]
  %58 = fmul float %43, %57
  %59 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  %61 = load i8, ptr %60, align 2, !tbaa !207
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 2
  %64 = load float, ptr %63, align 8, !tbaa !98
  br i1 %62, label %74, label %65

65:                                               ; preds = %56
  %66 = zext i8 %61 to i64
  %67 = add nuw nsw i64 %66, 4294967295
  %68 = and i64 %67, 4294967295
  %69 = getelementptr inbounds float, ptr %1, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !98
  %71 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !98
  %73 = fadd float %70, %72
  br label %77

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !98
  br label %77

77:                                               ; preds = %74, %65
  %78 = phi float [ %76, %74 ], [ %73, %65 ]
  %79 = fmul float %64, %78
  %80 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 32
  %82 = load i16, ptr %81, align 8, !tbaa !66
  %83 = icmp eq i16 %82, 8
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  call fastcc void @do_2d_mapping(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  br label %85

85:                                               ; preds = %84, %77
  %86 = trunc i32 %7 to i16
  %87 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 19
  %88 = load i16, ptr %87, align 2, !tbaa !85
  %89 = call fastcc i32 @multitex(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %10, i16 noundef signext %86, i16 noundef signext %88, ptr noundef %8) #17
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 1
  %93 = call fastcc float @rgb_to_bw(ptr noundef nonnull %92) #17
  %94 = load <2 x float>, ptr %92, align 4, !tbaa !98
  %95 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 3
  %96 = load float, ptr %95, align 4, !tbaa !127
  br label %103

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 22
  %99 = load <2 x float>, ptr %98, align 4, !tbaa !98
  %100 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 24
  %101 = load float, ptr %100, align 4, !tbaa !236
  %102 = load float, ptr %10, align 8, !tbaa !126
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi float [ %101, %97 ], [ %96, %91 ]
  %105 = phi float [ %102, %97 ], [ %93, %91 ]
  %106 = phi <2 x float> [ %99, %97 ], [ %94, %91 ]
  store float %105, ptr %2, align 4, !tbaa !98
  %107 = extractelement <2 x float> %106, i64 0
  store float %107, ptr %3, align 4, !tbaa !98
  %108 = extractelement <2 x float> %106, i64 1
  store float %108, ptr %4, align 4, !tbaa !98
  store float %104, ptr %5, align 4, !tbaa !98
  %109 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 4
  %110 = load float, ptr %109, align 8, !tbaa !128
  store float %110, ptr %6, align 4, !tbaa !98
  %111 = zext i1 %90 to i32
  br label %112

112:                                              ; preds = %9, %103
  %113 = phi i32 [ %111, %103 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  ret i32 %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_realtime_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.TexResult, align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %8 = load i32, ptr %7, align 8, !tbaa !112
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9
  %11 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !101
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %2
  %15 = load i1, ptr @render_realtime_texture.firsttime, align 4
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  tail call void @BLI_lock_thread(i32 noundef 0) #16
  %17 = load i1, ptr @render_realtime_texture.firsttime, align 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) @render_realtime_texture.imatex, i8 0, i64 416, i1 false)
  tail call void @default_tex(ptr noundef nonnull @render_realtime_texture.imatex) #16
  store i16 8, ptr getelementptr inbounds ([1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 0, i32 32), align 8, !tbaa !66
  store i1 true, ptr @render_realtime_texture.firsttime, align 4
  br label %19

19:                                               ; preds = %18, %16
  tail call void @BLI_unlock_thread(i32 noundef 0) #16
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !210
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 9
  %26 = load i16, ptr %25, align 4, !tbaa !258
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23, i32 51, i32 7
  store i8 %27, ptr %28, align 2, !tbaa !261
  %29 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23, i32 54
  store ptr %1, ptr %29, align 16, !tbaa !63
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 2
  %31 = load <2 x float>, ptr %30, align 8, !tbaa !98
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  store <2 x float> %32, ptr %4, align 8, !tbaa !98
  %33 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %35 = load i16, ptr %34, align 8, !tbaa !108
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %20
  %38 = load <2 x float>, ptr %10, align 8, !tbaa !98
  %39 = fmul <2 x float> %38, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %39, ptr %5, align 8, !tbaa !98
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 1
  %41 = load <2 x float>, ptr %40, align 4, !tbaa !98
  %42 = fmul <2 x float> %41, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %42, ptr %6, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 6
  store ptr null, ptr %43, align 8, !tbaa !122
  %44 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %45 = call i32 @imagewraposa(ptr noundef nonnull %24, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %44) #16
  br label %50

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 6
  store ptr null, ptr %47, align 8, !tbaa !122
  %48 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !124
  %49 = call i32 @imagewrap(ptr noundef nonnull %24, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %48) #16
  br label %50

50:                                               ; preds = %46, %37
  %51 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %53 = load <4 x float>, ptr %51, align 4, !tbaa !98
  %54 = load <4 x float>, ptr %52, align 8, !tbaa !98
  %55 = fmul <4 x float> %53, %54
  store <4 x float> %55, ptr %52, align 8, !tbaa !98
  br label %56

56:                                               ; preds = %2, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @default_tex(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @imagewraposa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @imagewrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_init_sample_material(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.Render, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %88, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @localize_material(ptr noundef nonnull %0) #16
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !262
  %9 = tail call float @BKE_scene_frame_get(ptr noundef %1) #16
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %6, ptr noundef %8, float noundef %9, i16 noundef signext 2) #16
  %10 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %11 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 2
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %13 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 44
  %14 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 33
  %15 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 32
  %16 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 35
  %17 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 14
  %18 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 13
  br label %19

19:                                               ; preds = %5, %85
  %20 = phi i64 [ 0, %5 ], [ %86, %85 ]
  %21 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 102, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %85, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  store ptr null, ptr %25, align 8, !tbaa !95
  %27 = load i32, ptr %10, align 8, !tbaa !103
  %28 = trunc i64 %20 to i32
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  %32 = icmp ne ptr %26, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %85

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 14
  %36 = load i16, ptr %35, align 8, !tbaa !107
  %37 = and i16 %36, 15
  store i16 %37, ptr %35, align 8, !tbaa !107
  %38 = load i16, ptr %11, align 8, !tbaa !263
  %39 = load i16, ptr %22, align 8, !tbaa !97
  switch i16 %38, label %49 [
    i16 0, label %40
    i16 2, label %42
  ]

40:                                               ; preds = %34
  switch i16 %39, label %41 [
    i16 1, label %44
    i16 32, label %44
    i16 8, label %44
    i16 16, label %44
  ]

41:                                               ; preds = %40
  store i16 0, ptr %22, align 8, !tbaa !97
  br label %85

42:                                               ; preds = %34
  switch i16 %39, label %43 [
    i16 32, label %44
    i16 1, label %44
    i16 8, label %44
  ]

43:                                               ; preds = %42
  store i16 0, ptr %22, align 8, !tbaa !97
  br label %85

44:                                               ; preds = %42, %42, %42, %40, %40, %40, %40
  %45 = phi i16 [ 129, %40 ], [ 129, %40 ], [ 129, %40 ], [ 129, %40 ], [ 140, %42 ], [ 140, %42 ], [ 140, %42 ]
  %46 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !89
  %48 = and i16 %47, %45
  store i16 %48, ptr %46, align 2, !tbaa !89
  br label %49

49:                                               ; preds = %44, %34
  %50 = icmp eq i16 %39, 32
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !96
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 50
  %57 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 47
  %58 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %56, ptr noundef nonnull %57) #16
  %59 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 51
  call void @copy_m4_m4(ptr noundef nonnull %59, ptr noundef nonnull %56) #16
  br label %60

60:                                               ; preds = %51, %55, %49
  %61 = call ptr @localize_texture(ptr noundef nonnull %26) #16
  store ptr %61, ptr %25, align 8, !tbaa !95
  %62 = getelementptr inbounds %struct.Tex, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !264
  %64 = call float @BKE_scene_frame_get(ptr noundef %1) #16
  call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %61, ptr noundef %63, float noundef %64, i16 noundef signext 2) #16
  %65 = getelementptr inbounds %struct.Tex, ptr %61, i64 0, i32 32
  %66 = load i16, ptr %65, align 8, !tbaa !66
  %67 = icmp eq i16 %66, 15
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, ptr %12, align 8, !tbaa !265
  call void @cache_voxeldata(ptr noundef nonnull %61, i32 noundef %69) #16
  %70 = load i16, ptr %65, align 8, !tbaa !66
  br label %71

71:                                               ; preds = %68, %60
  %72 = phi i16 [ %70, %68 ], [ %66, %60 ]
  %73 = icmp eq i16 %72, 14
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 6240, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) %3, i8 0, i64 6240, i1 false)
  store ptr %1, ptr %13, align 8, !tbaa !274
  call void @unit_m4(ptr noundef nonnull %14) #16
  call void @unit_m4(ptr noundef nonnull %15) #16
  call void @unit_m4(ptr noundef nonnull %16) #16
  store i32 128, ptr %17, align 8, !tbaa !275
  store i32 128, ptr %18, align 4, !tbaa !276
  call void @cache_pointdensity(ptr noundef nonnull %3, ptr noundef nonnull %61) #16
  call void @llvm.lifetime.end.p0(i64 6240, ptr nonnull %3) #18
  br label %75

75:                                               ; preds = %74, %71
  %76 = getelementptr inbounds %struct.Tex, ptr %61, i64 0, i32 54
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %77) #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Tex, ptr %61, i64 0, i32 51
  %84 = load i32, ptr %12, align 8, !tbaa !265
  call void @BKE_image_user_check_frame_calc(ptr noundef nonnull %83, i32 noundef %84, i32 noundef 0) #16
  br label %85

85:                                               ; preds = %41, %43, %24, %82, %79, %75, %19
  %86 = add nuw nsw i64 %20, 1
  %87 = icmp eq i64 %86, 18
  br i1 %87, label %88, label %19, !llvm.loop !277

88:                                               ; preds = %85, %2
  %89 = phi ptr [ null, %2 ], [ %6, %85 ]
  ret ptr %89
}

; Function Attrs: optsize
declare ptr @localize_material(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @localize_texture(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cache_voxeldata(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cache_pointdensity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_free_sample_material(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  br label %3

3:                                                ; preds = %1, %21
  %4 = phi i64 [ 0, %1 ], [ %22, %21 ]
  %5 = load i32, ptr %2, align 8, !tbaa !103
  %6 = trunc i64 %4 to i32
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  tail call void @BKE_texture_free(ptr noundef nonnull %16) #16
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = load ptr, ptr %15, align 8, !tbaa !95
  tail call void %19(ptr noundef %20) #16
  store ptr null, ptr %15, align 8, !tbaa !95
  br label %21

21:                                               ; preds = %14, %18, %10, %3
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %3, !llvm.loop !278

24:                                               ; preds = %21
  tail call void @BKE_material_free_ex(ptr noundef nonnull %0, i8 noundef zeroext 0) #16
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BKE_texture_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_material_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_sample_material_color(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i16 noundef signext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.ShadeInput, align 8
  %13 = alloca %struct.Render, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca %struct.ObjectInstanceRen, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %12) #18
  %16 = getelementptr inbounds i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %16, i8 0, i64 1464, i1 false)
  call void @llvm.lifetime.start.p0(i64 6240, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) %13, i8 0, i64 6240, i1 false)
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 31
  %18 = load ptr, ptr %17, align 8, !tbaa !279
  %19 = tail call ptr %18(ptr noundef %7) #16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 33
  %21 = load ptr, ptr %20, align 8, !tbaa !280
  %22 = tail call ptr %21(ptr noundef %7) #16
  %23 = icmp ne ptr %19, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp ne ptr %0, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %168

28:                                               ; preds = %9
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds %struct.MFace, ptr %22, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !281
  %32 = getelementptr inbounds %struct.MFace, ptr %22, i64 %29, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !283
  %34 = getelementptr inbounds %struct.MFace, ptr %22, i64 %29, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !284
  %36 = icmp eq i16 %6, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.MFace, ptr %22, i64 %29, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !285
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i32 [ %39, %37 ], [ %35, %28 ]
  %42 = phi i32 [ %35, %37 ], [ %33, %28 ]
  %43 = sext i32 %31 to i64
  %44 = getelementptr inbounds %struct.MVert, ptr %19, i64 %43
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %19, i64 %45
  %47 = sext i32 %41 to i64
  %48 = getelementptr inbounds %struct.MVert, ptr %19, i64 %47
  %49 = call float @normal_tri_v3(ptr noundef nonnull %11, ptr noundef nonnull %44, ptr noundef nonnull %46, ptr noundef nonnull %48) #16
  store ptr %0, ptr %12, align 8, !tbaa !102
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 2
  %51 = load i16, ptr %50, align 8, !tbaa !263
  switch i16 %51, label %168 [
    i16 0, label %52
    i16 2, label %161
  ]

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef %4) #17
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef %4) #17
  %55 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %55, ptr noundef nonnull %54) #16
  call fastcc void @textured_face_generate_uv(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %54, ptr noundef nonnull %44, ptr noundef nonnull %46, ptr noundef nonnull %48) #17
  %56 = load float, ptr %10, align 4, !tbaa !98
  %57 = fadd float %56, 1.000000e+00
  %58 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !98
  %60 = fadd float %57, %59
  %61 = load float, ptr %48, align 4, !tbaa !98
  %62 = load float, ptr %44, align 4, !tbaa !98
  %63 = fneg float %56
  %64 = fmul float %62, %63
  %65 = call float @llvm.fmuladd.f32(float %60, float %61, float %64)
  %66 = load float, ptr %46, align 4, !tbaa !98
  %67 = fneg float %59
  %68 = call float @llvm.fmuladd.f32(float %67, float %66, float %65)
  %69 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 56
  store float %68, ptr %69, align 4, !tbaa !98
  %70 = getelementptr inbounds [3 x float], ptr %48, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !98
  %72 = getelementptr inbounds [3 x float], ptr %44, i64 0, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !98
  %74 = fmul float %73, %63
  %75 = call float @llvm.fmuladd.f32(float %60, float %71, float %74)
  %76 = getelementptr inbounds [3 x float], ptr %46, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !98
  %78 = call float @llvm.fmuladd.f32(float %67, float %77, float %75)
  %79 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 56, i64 1
  store float %78, ptr %79, align 8, !tbaa !98
  %80 = getelementptr inbounds [3 x float], ptr %48, i64 0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !98
  %82 = getelementptr inbounds [3 x float], ptr %44, i64 0, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !98
  %84 = fmul float %83, %63
  %85 = call float @llvm.fmuladd.f32(float %60, float %81, float %84)
  %86 = getelementptr inbounds [3 x float], ptr %46, i64 0, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !98
  %88 = call float @llvm.fmuladd.f32(float %67, float %87, float %85)
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 56, i64 2
  store float %88, ptr %89, align 4, !tbaa !98
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 2
  %91 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %90, i32 noundef 5) #16
  %92 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %90, i32 noundef 5) #16
  %93 = icmp sgt i32 %91, 0
  br i1 %93, label %94, label %143

94:                                               ; preds = %52
  %95 = icmp sgt i32 %92, -1
  %96 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %97 = zext i32 %92 to i64
  %98 = zext nneg i32 %91 to i64
  br label %99

99:                                               ; preds = %94, %140
  %100 = phi i64 [ 0, %94 ], [ %141, %140 ]
  br i1 %95, label %101, label %140

101:                                              ; preds = %99
  %102 = load ptr, ptr %90, align 8, !tbaa !286
  %103 = add nuw nsw i64 %100, %97
  %104 = getelementptr inbounds %struct.CustomDataLayer, ptr %102, i64 %103, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  %106 = getelementptr inbounds %struct.CustomDataLayer, ptr %102, i64 %100, i32 8
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 72, i64 %100, i32 3
  store ptr %106, ptr %107, align 8, !tbaa !115
  call fastcc void @textured_face_generate_uv(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %54, ptr noundef nonnull %44, ptr noundef nonnull %46, ptr noundef nonnull %48) #17
  %108 = load float, ptr %14, align 4, !tbaa !98
  %109 = fadd float %108, 1.000000e+00
  %110 = load float, ptr %96, align 4, !tbaa !98
  %111 = fadd float %109, %110
  %112 = getelementptr inbounds %struct.MTFace, ptr %105, i64 %29
  %113 = getelementptr inbounds [4 x [2 x float]], ptr %112, i64 0, i64 2
  %114 = getelementptr inbounds [4 x [2 x float]], ptr %112, i64 0, i64 1
  %115 = select i1 %36, ptr %114, ptr %113
  %116 = getelementptr inbounds [4 x [2 x float]], ptr %112, i64 0, i64 3
  %117 = select i1 %36, ptr %113, ptr %116
  %118 = load float, ptr %117, align 4, !tbaa !98
  %119 = load float, ptr %112, align 4, !tbaa !98
  %120 = fneg float %108
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %111, float %118, float %121)
  %123 = load float, ptr %115, align 4, !tbaa !98
  %124 = fneg float %110
  %125 = call float @llvm.fmuladd.f32(float %124, float %123, float %122)
  %126 = call float @llvm.fmuladd.f32(float %125, float 2.000000e+00, float -1.000000e+00)
  %127 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 72, i64 %100, i32 2
  store float %126, ptr %127, align 8, !tbaa !98
  %128 = getelementptr inbounds float, ptr %117, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !98
  %130 = getelementptr inbounds float, ptr %112, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !98
  %132 = fmul float %131, %120
  %133 = call float @llvm.fmuladd.f32(float %111, float %129, float %132)
  %134 = getelementptr inbounds float, ptr %115, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !98
  %136 = call float @llvm.fmuladd.f32(float %124, float %135, float %133)
  %137 = call float @llvm.fmuladd.f32(float %136, float 2.000000e+00, float -1.000000e+00)
  %138 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 72, i64 %100, i32 2, i64 1
  store float %137, ptr %138, align 4, !tbaa !98
  %139 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 72, i64 %100, i32 2, i64 2
  store float 0.000000e+00, ptr %139, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  br label %140

140:                                              ; preds = %99, %101
  %141 = add nuw nsw i64 %100, 1
  %142 = icmp eq i64 %141, %98
  br i1 %142, label %143, label %99, !llvm.loop !289

143:                                              ; preds = %140, %52
  %144 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %90, i32 noundef 5) #16
  %145 = sub nsw i32 %144, %92
  %146 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 76
  store i32 %145, ptr %146, align 8, !tbaa !112
  %147 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 74
  store i32 %91, ptr %147, align 8, !tbaa !114
  %148 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 4
  %149 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 32
  %150 = load <2 x float>, ptr %148, align 4, !tbaa !98
  store <2 x float> %150, ptr %149, align 4, !tbaa !98
  %151 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 6
  %152 = load float, ptr %151, align 4, !tbaa !290
  %153 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 34
  store float %152, ptr %153, align 4, !tbaa !291
  %154 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 21
  %155 = load float, ptr %154, align 8, !tbaa !292
  %156 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 49
  store float %155, ptr %156, align 8, !tbaa !150
  call void @do_material_tex(ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %157 = load <2 x float>, ptr %149, align 4, !tbaa !98
  store <2 x float> %157, ptr %1, align 4, !tbaa !98
  %158 = load float, ptr %153, align 4, !tbaa !291
  %159 = getelementptr inbounds float, ptr %1, i64 2
  store float %158, ptr %159, align 4, !tbaa !98
  %160 = load float, ptr %156, align 8, !tbaa !150
  store float %160, ptr %2, align 4, !tbaa !98
  br label %168

161:                                              ; preds = %40
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %15, i8 0, i64 288, i1 false)
  %162 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 0, i32 3
  store ptr %8, ptr %162, align 8, !tbaa !218
  %163 = getelementptr inbounds %struct.ShadeInput, ptr %12, i64 0, i32 3
  store ptr %15, ptr %163, align 8, !tbaa !109
  %164 = getelementptr inbounds %struct.Render, ptr %13, i64 0, i32 33
  call void @unit_m4(ptr noundef nonnull %164) #16
  %165 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27
  %166 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %166) #17
  %167 = load float, ptr %165, align 8, !tbaa !293
  store float %167, ptr %2, align 4, !tbaa !98
  call void @do_volume_tex(ptr noundef nonnull %12, ptr noundef %3, i32 noundef 140, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %15) #18
  br label %168

168:                                              ; preds = %143, %161, %40, %9
  call void @llvm.lifetime.end.p0(i64 6240, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  ret void
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @textured_face_generate_uv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #5 !PGOFuncName !294 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %1) #17
  %9 = load i32, ptr %7, align 4, !tbaa !172
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr %5, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %3, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = fsub float %12, %14
  %16 = load i32, ptr %8, align 4, !tbaa !172
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %5, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !98
  %20 = getelementptr inbounds float, ptr %3, i64 %17
  %21 = load float, ptr %20, align 4, !tbaa !98
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %4, i64 %10
  %24 = load float, ptr %23, align 4, !tbaa !98
  %25 = fsub float %12, %24
  %26 = getelementptr inbounds float, ptr %4, i64 %17
  %27 = load float, ptr %26, align 4, !tbaa !98
  %28 = fsub float %19, %27
  %29 = fneg float %25
  %30 = fmul float %22, %29
  %31 = tail call float @llvm.fmuladd.f32(float %15, float %28, float %30)
  %32 = fdiv float 1.000000e+00, %31
  %33 = fmul float %15, %32
  %34 = fmul float %22, %32
  %35 = fmul float %25, %32
  %36 = fmul float %28, %32
  %37 = getelementptr inbounds float, ptr %2, i64 %10
  %38 = load float, ptr %37, align 4, !tbaa !98
  %39 = fsub float %38, %12
  %40 = getelementptr inbounds float, ptr %2, i64 %17
  %41 = load float, ptr %40, align 4, !tbaa !98
  %42 = fsub float %41, %19
  %43 = fneg float %42
  %44 = fmul float %35, %43
  %45 = tail call float @llvm.fmuladd.f32(float %39, float %36, float %44)
  store float %45, ptr %0, align 4, !tbaa !98
  %46 = load float, ptr %40, align 4, !tbaa !98
  %47 = load float, ptr %18, align 4, !tbaa !98
  %48 = fsub float %46, %47
  %49 = load float, ptr %37, align 4, !tbaa !98
  %50 = load float, ptr %11, align 4, !tbaa !98
  %51 = fsub float %49, %50
  %52 = fneg float %51
  %53 = fmul float %34, %52
  %54 = tail call float @llvm.fmuladd.f32(float %48, float %33, float %53)
  %55 = getelementptr inbounds float, ptr %0, i64 1
  store float %54, ptr %55, align 4, !tbaa !98
  %56 = fcmp olt float %45, -2.000000e+00
  br i1 %56, label %59, label %57

57:                                               ; preds = %6
  %58 = fcmp ogt float %45, 1.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57, %6
  %60 = phi float [ -2.000000e+00, %6 ], [ 1.000000e+00, %57 ]
  store float %60, ptr %0, align 4, !tbaa !98
  br label %61

61:                                               ; preds = %59, %57
  %62 = fcmp olt float %54, -2.000000e+00
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = fcmp ogt float %54, 1.000000e+00
  br i1 %64, label %65, label %67

65:                                               ; preds = %63, %61
  %66 = phi float [ -2.000000e+00, %61 ], [ 1.000000e+00, %63 ]
  store float %66, ptr %55, align 4, !tbaa !98
  br label %67

67:                                               ; preds = %65, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !295 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !98
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @vlr_set_uv_indices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !296 {
  %3 = load float, ptr %1, align 4, !tbaa !98
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !297 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #17
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #17
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !298 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_transposed_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !299 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !300 {
  %2 = load float, ptr %0, align 4, !tbaa !98
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !98
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: optsize
declare i32 @ntreeTexExecTree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, i16 noundef signext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !301 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !302 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !98
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @clouds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !303 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !228
  %7 = load float, ptr %1, align 4, !tbaa !98
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %13 = load i16, ptr %12, align 4, !tbaa !304
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %16 = load i16, ptr %15, align 2, !tbaa !305
  %17 = icmp ne i16 %16, 0
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %20 = load i16, ptr %19, align 8, !tbaa !306
  %21 = sext i16 %20 to i32
  %22 = tail call float @BLI_gTurbulence(float noundef %6, float noundef %7, float noundef %9, float noundef %11, i32 noundef %14, i32 noundef %18, i32 noundef %21) #16
  store float %22, ptr %2, align 8, !tbaa !126
  %23 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %3
  %27 = load float, ptr %5, align 8, !tbaa !228
  %28 = load float, ptr %1, align 4, !tbaa !98
  %29 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %30 = load float, ptr %29, align 8, !tbaa !307
  %31 = fadd float %28, %30
  %32 = load float, ptr %8, align 4, !tbaa !98
  %33 = load float, ptr %10, align 4, !tbaa !98
  %34 = load i16, ptr %12, align 4, !tbaa !304
  %35 = sext i16 %34 to i32
  %36 = load i16, ptr %15, align 2, !tbaa !305
  %37 = icmp ne i16 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i16, ptr %19, align 8, !tbaa !306
  %40 = sext i16 %39 to i32
  %41 = tail call float @BLI_gTurbulence(float noundef %27, float noundef %31, float noundef %32, float noundef %33, i32 noundef %35, i32 noundef %38, i32 noundef %40) #16
  %42 = load ptr, ptr %23, align 8, !tbaa !122
  store float %41, ptr %42, align 4, !tbaa !98
  %43 = load float, ptr %5, align 8, !tbaa !228
  %44 = load float, ptr %1, align 4, !tbaa !98
  %45 = load float, ptr %8, align 4, !tbaa !98
  %46 = load float, ptr %29, align 8, !tbaa !307
  %47 = fadd float %45, %46
  %48 = load float, ptr %10, align 4, !tbaa !98
  %49 = load i16, ptr %12, align 4, !tbaa !304
  %50 = sext i16 %49 to i32
  %51 = load i16, ptr %15, align 2, !tbaa !305
  %52 = icmp ne i16 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i16, ptr %19, align 8, !tbaa !306
  %55 = sext i16 %54 to i32
  %56 = tail call float @BLI_gTurbulence(float noundef %43, float noundef %44, float noundef %47, float noundef %48, i32 noundef %50, i32 noundef %53, i32 noundef %55) #16
  %57 = load ptr, ptr %23, align 8, !tbaa !122
  %58 = getelementptr inbounds float, ptr %57, i64 1
  store float %56, ptr %58, align 4, !tbaa !98
  %59 = load float, ptr %5, align 8, !tbaa !228
  %60 = load float, ptr %1, align 4, !tbaa !98
  %61 = load float, ptr %8, align 4, !tbaa !98
  %62 = load float, ptr %10, align 4, !tbaa !98
  %63 = load float, ptr %29, align 8, !tbaa !307
  %64 = fadd float %62, %63
  %65 = load i16, ptr %12, align 4, !tbaa !304
  %66 = sext i16 %65 to i32
  %67 = load i16, ptr %15, align 2, !tbaa !305
  %68 = icmp ne i16 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i16, ptr %19, align 8, !tbaa !306
  %71 = sext i16 %70 to i32
  %72 = tail call float @BLI_gTurbulence(float noundef %59, float noundef %60, float noundef %61, float noundef %64, i32 noundef %66, i32 noundef %69, i32 noundef %71) #16
  %73 = load ptr, ptr %23, align 8, !tbaa !122
  %74 = getelementptr inbounds float, ptr %73, i64 2
  store float %72, ptr %74, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  br label %75

75:                                               ; preds = %26, %3
  %76 = phi i32 [ 2, %26 ], [ 0, %3 ]
  %77 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %78 = load i16, ptr %77, align 2, !tbaa !229
  %79 = icmp eq i16 %78, 1
  %80 = load float, ptr %2, align 8, !tbaa !126
  br i1 %79, label %81, label %168

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %80, ptr %82, align 4, !tbaa !181
  %83 = load float, ptr %5, align 8, !tbaa !228
  %84 = load float, ptr %8, align 4, !tbaa !98
  %85 = load float, ptr %1, align 4, !tbaa !98
  %86 = load float, ptr %10, align 4, !tbaa !98
  %87 = load i16, ptr %12, align 4, !tbaa !304
  %88 = sext i16 %87 to i32
  %89 = load i16, ptr %15, align 2, !tbaa !305
  %90 = icmp ne i16 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load i16, ptr %19, align 8, !tbaa !306
  %93 = sext i16 %92 to i32
  %94 = tail call float @BLI_gTurbulence(float noundef %83, float noundef %84, float noundef %85, float noundef %86, i32 noundef %88, i32 noundef %91, i32 noundef %93) #16
  %95 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %94, ptr %95, align 8, !tbaa !182
  %96 = load float, ptr %5, align 8, !tbaa !228
  %97 = load float, ptr %8, align 4, !tbaa !98
  %98 = load float, ptr %10, align 4, !tbaa !98
  %99 = load float, ptr %1, align 4, !tbaa !98
  %100 = load i16, ptr %12, align 4, !tbaa !304
  %101 = sext i16 %100 to i32
  %102 = load i16, ptr %15, align 2, !tbaa !305
  %103 = icmp ne i16 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i16, ptr %19, align 8, !tbaa !306
  %106 = sext i16 %105 to i32
  %107 = tail call float @BLI_gTurbulence(float noundef %96, float noundef %97, float noundef %98, float noundef %99, i32 noundef %101, i32 noundef %104, i32 noundef %106) #16
  %108 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %109 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %110 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %111 = load float, ptr %110, align 4, !tbaa !308
  %112 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %113 = load float, ptr %112, align 8, !tbaa !309
  %114 = load <2 x float>, ptr %109, align 4, !tbaa !98
  %115 = load <2 x float>, ptr %82, align 4, !tbaa !98
  %116 = fadd <2 x float> %115, <float -5.000000e-01, float -5.000000e-01>
  %117 = insertelement <2 x float> poison, float %111, i64 0
  %118 = shufflevector <2 x float> %117, <2 x float> poison, <2 x i32> zeroinitializer
  %119 = insertelement <2 x float> poison, float %113, i64 0
  %120 = shufflevector <2 x float> %119, <2 x float> poison, <2 x i32> zeroinitializer
  %121 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %116, <2 x float> %118, <2 x float> %120)
  %122 = fadd <2 x float> %121, <float -5.000000e-01, float -5.000000e-01>
  %123 = fmul <2 x float> %114, %122
  store <2 x float> %123, ptr %82, align 4, !tbaa !98
  %124 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %125 = load float, ptr %124, align 4, !tbaa !310
  %126 = fadd float %107, -5.000000e-01
  %127 = tail call float @llvm.fmuladd.f32(float %126, float %111, float %113)
  %128 = fadd float %127, -5.000000e-01
  %129 = fmul float %128, %125
  store float %129, ptr %108, align 4, !tbaa !127
  %130 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %131 = load i16, ptr %130, align 2, !tbaa !180
  %132 = and i16 %131, 1024
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %81
  %135 = extractelement <2 x float> %123, i64 0
  %136 = fcmp olt float %135, 0.000000e+00
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store float 0.000000e+00, ptr %82, align 4, !tbaa !181
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi float [ 0.000000e+00, %137 ], [ %135, %134 ]
  %140 = extractelement <2 x float> %123, i64 1
  %141 = fcmp olt float %140, 0.000000e+00
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store float 0.000000e+00, ptr %95, align 8, !tbaa !182
  br label %143

143:                                              ; preds = %142, %138
  %144 = phi float [ 0.000000e+00, %142 ], [ %140, %138 ]
  %145 = fcmp olt float %129, 0.000000e+00
  %146 = insertelement <2 x float> poison, float %139, i64 0
  %147 = insertelement <2 x float> %146, float %144, i64 1
  br i1 %145, label %148, label %149

148:                                              ; preds = %143
  store float 0.000000e+00, ptr %108, align 4, !tbaa !127
  br label %149

149:                                              ; preds = %143, %148, %81
  %150 = phi float [ %129, %143 ], [ 0.000000e+00, %148 ], [ %129, %81 ]
  %151 = phi <2 x float> [ %147, %143 ], [ %147, %148 ], [ %123, %81 ]
  %152 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %153 = load float, ptr %152, align 8, !tbaa !311
  %154 = fcmp une float %153, 1.000000e+00
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %156 = getelementptr inbounds float, ptr %4, i64 1
  %157 = getelementptr inbounds float, ptr %4, i64 2
  %158 = extractelement <2 x float> %151, i64 0
  %159 = extractelement <2 x float> %151, i64 1
  call void @rgb_to_hsv(float noundef %158, float noundef %159, float noundef %150, ptr noundef nonnull %4, ptr noundef nonnull %156, ptr noundef nonnull %157) #16
  %160 = load float, ptr %152, align 8, !tbaa !311
  %161 = load float, ptr %156, align 4, !tbaa !98
  %162 = fmul float %160, %161
  store float %162, ptr %156, align 4, !tbaa !98
  %163 = load float, ptr %4, align 4, !tbaa !98
  %164 = load float, ptr %157, align 4, !tbaa !98
  call void @hsv_to_rgb(float noundef %163, float noundef %162, float noundef %164, ptr noundef nonnull %82, ptr noundef nonnull %95, ptr noundef nonnull %108) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %165

165:                                              ; preds = %155, %149
  %166 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %166, align 8, !tbaa !128
  %167 = or disjoint i32 %76, 1
  br label %186

168:                                              ; preds = %75
  %169 = fadd float %80, -5.000000e-01
  %170 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %171 = load float, ptr %170, align 4, !tbaa !308
  %172 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %173 = load float, ptr %172, align 8, !tbaa !309
  %174 = tail call float @llvm.fmuladd.f32(float %169, float %171, float %173)
  %175 = fadd float %174, -5.000000e-01
  store float %175, ptr %2, align 8, !tbaa !126
  %176 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %177 = load i16, ptr %176, align 2, !tbaa !180
  %178 = and i16 %177, 1024
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %168
  %181 = fcmp olt float %175, 0.000000e+00
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  store float 0.000000e+00, ptr %2, align 8, !tbaa !126
  br label %186

183:                                              ; preds = %180
  %184 = fcmp ogt float %175, 1.000000e+00
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  store float 1.000000e+00, ptr %2, align 8, !tbaa !126
  br label %186

186:                                              ; preds = %168, %183, %185, %182, %165
  %187 = phi i32 [ %167, %165 ], [ %76, %182 ], [ %76, %185 ], [ %76, %183 ], [ %76, %168 ]
  ret i32 %187
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wood(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !312 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %4, float noundef %6, float noundef %8) #17
  store float %9, ptr %2, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = load float, ptr %1, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %16 = load float, ptr %15, align 8, !tbaa !307
  %17 = fadd float %14, %16
  %18 = load float, ptr %5, align 4, !tbaa !98
  %19 = load float, ptr %7, align 4, !tbaa !98
  %20 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %17, float noundef %18, float noundef %19) #17
  %21 = load ptr, ptr %10, align 8, !tbaa !122
  store float %20, ptr %21, align 4, !tbaa !98
  %22 = load float, ptr %1, align 4, !tbaa !98
  %23 = load float, ptr %5, align 4, !tbaa !98
  %24 = load float, ptr %15, align 8, !tbaa !307
  %25 = fadd float %23, %24
  %26 = load float, ptr %7, align 4, !tbaa !98
  %27 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %22, float noundef %25, float noundef %26) #17
  %28 = load ptr, ptr %10, align 8, !tbaa !122
  %29 = getelementptr inbounds float, ptr %28, i64 1
  store float %27, ptr %29, align 4, !tbaa !98
  %30 = load float, ptr %1, align 4, !tbaa !98
  %31 = load float, ptr %5, align 4, !tbaa !98
  %32 = load float, ptr %7, align 4, !tbaa !98
  %33 = load float, ptr %15, align 8, !tbaa !307
  %34 = fadd float %32, %33
  %35 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %30, float noundef %31, float noundef %34) #17
  %36 = load ptr, ptr %10, align 8, !tbaa !122
  %37 = getelementptr inbounds float, ptr %36, i64 2
  store float %35, ptr %37, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %2) #17
  %38 = load float, ptr %2, align 8, !tbaa !126
  br label %39

39:                                               ; preds = %13, %3
  %40 = phi float [ %38, %13 ], [ %9, %3 ]
  %41 = phi i32 [ 2, %13 ], [ 0, %3 ]
  %42 = fadd float %40, -5.000000e-01
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %44 = load float, ptr %43, align 4, !tbaa !308
  %45 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %46 = load float, ptr %45, align 8, !tbaa !309
  %47 = tail call float @llvm.fmuladd.f32(float %42, float %44, float %46)
  %48 = fadd float %47, -5.000000e-01
  store float %48, ptr %2, align 8, !tbaa !126
  %49 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %50 = load i16, ptr %49, align 2, !tbaa !180
  %51 = and i16 %50, 1024
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = fcmp olt float %48, 0.000000e+00
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = fcmp ogt float %48, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %55, %53
  %58 = phi float [ 0.000000e+00, %53 ], [ 1.000000e+00, %55 ]
  store float %58, ptr %2, align 8, !tbaa !126
  br label %59

59:                                               ; preds = %57, %55, %39
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @marble(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !313 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = tail call fastcc float @marble_int(ptr noundef %0, float noundef %4, float noundef %6, float noundef %8) #17
  store float %9, ptr %2, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = load float, ptr %1, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %16 = load float, ptr %15, align 8, !tbaa !307
  %17 = fadd float %14, %16
  %18 = load float, ptr %5, align 4, !tbaa !98
  %19 = load float, ptr %7, align 4, !tbaa !98
  %20 = tail call fastcc float @marble_int(ptr noundef %0, float noundef %17, float noundef %18, float noundef %19) #17
  %21 = load ptr, ptr %10, align 8, !tbaa !122
  store float %20, ptr %21, align 4, !tbaa !98
  %22 = load float, ptr %1, align 4, !tbaa !98
  %23 = load float, ptr %5, align 4, !tbaa !98
  %24 = load float, ptr %15, align 8, !tbaa !307
  %25 = fadd float %23, %24
  %26 = load float, ptr %7, align 4, !tbaa !98
  %27 = tail call fastcc float @marble_int(ptr noundef %0, float noundef %22, float noundef %25, float noundef %26) #17
  %28 = load ptr, ptr %10, align 8, !tbaa !122
  %29 = getelementptr inbounds float, ptr %28, i64 1
  store float %27, ptr %29, align 4, !tbaa !98
  %30 = load float, ptr %1, align 4, !tbaa !98
  %31 = load float, ptr %5, align 4, !tbaa !98
  %32 = load float, ptr %7, align 4, !tbaa !98
  %33 = load float, ptr %15, align 8, !tbaa !307
  %34 = fadd float %32, %33
  %35 = tail call fastcc float @marble_int(ptr noundef %0, float noundef %30, float noundef %31, float noundef %34) #17
  %36 = load ptr, ptr %10, align 8, !tbaa !122
  %37 = getelementptr inbounds float, ptr %36, i64 2
  store float %35, ptr %37, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %2) #17
  %38 = load float, ptr %2, align 8, !tbaa !126
  br label %39

39:                                               ; preds = %13, %3
  %40 = phi float [ %38, %13 ], [ %9, %3 ]
  %41 = phi i32 [ 2, %13 ], [ 0, %3 ]
  %42 = fadd float %40, -5.000000e-01
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %44 = load float, ptr %43, align 4, !tbaa !308
  %45 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %46 = load float, ptr %45, align 8, !tbaa !309
  %47 = tail call float @llvm.fmuladd.f32(float %42, float %44, float %46)
  %48 = fadd float %47, -5.000000e-01
  store float %48, ptr %2, align 8, !tbaa !126
  %49 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %50 = load i16, ptr %49, align 2, !tbaa !180
  %51 = and i16 %50, 1024
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = fcmp olt float %48, 0.000000e+00
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = fcmp ogt float %48, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %55, %53
  %58 = phi float [ 0.000000e+00, %53 ], [ 1.000000e+00, %55 ]
  store float %58, ptr %2, align 8, !tbaa !126
  br label %59

59:                                               ; preds = %57, %55, %39
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @magic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !314 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %6 = load i16, ptr %5, align 4, !tbaa !304
  %7 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !315
  %9 = fdiv float %8, 5.000000e+00
  %10 = load float, ptr %1, align 4, !tbaa !98
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = fadd float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !98
  %16 = fadd float %13, %15
  %17 = fmul float %16, 5.000000e+00
  %18 = tail call float @sinf(float noundef %17) #16
  %19 = load float, ptr %1, align 4, !tbaa !98
  %20 = load float, ptr %11, align 4, !tbaa !98
  %21 = fsub float %20, %19
  %22 = load float, ptr %14, align 4, !tbaa !98
  %23 = fsub float %21, %22
  %24 = fmul float %23, 5.000000e+00
  %25 = tail call float @cosf(float noundef %24) #16
  %26 = load float, ptr %1, align 4, !tbaa !98
  %27 = fneg float %26
  %28 = load float, ptr %11, align 4, !tbaa !98
  %29 = fsub float %27, %28
  %30 = load float, ptr %14, align 4, !tbaa !98
  %31 = fadd float %29, %30
  %32 = fmul float %31, 5.000000e+00
  %33 = tail call float @cosf(float noundef %32) #16
  %34 = fneg float %33
  %35 = icmp sgt i16 %6, 0
  %36 = insertelement <2 x float> poison, float %25, i64 0
  %37 = insertelement <2 x float> %36, float %34, i64 1
  br i1 %35, label %38, label %115

38:                                               ; preds = %3
  %39 = fmul float %9, %18
  %40 = fmul float %9, %25
  %41 = fsub float %39, %40
  %42 = fmul float %9, %34
  %43 = fadd float %41, %42
  %44 = tail call float @cosf(float noundef %43) #16
  %45 = fneg float %44
  %46 = fmul float %9, %45
  %47 = icmp eq i16 %6, 1
  %48 = insertelement <2 x float> poison, float %46, i64 0
  %49 = insertelement <2 x float> %48, float %42, i64 1
  br i1 %47, label %115, label %50

50:                                               ; preds = %38
  %51 = fsub float %39, %46
  %52 = fsub float %51, %42
  %53 = tail call float @cosf(float noundef %52) #16
  %54 = fmul float %9, %53
  %55 = icmp ugt i16 %6, 2
  br i1 %55, label %56, label %115

56:                                               ; preds = %50
  %57 = fneg float %54
  %58 = fsub float %57, %46
  %59 = fsub float %58, %42
  %60 = tail call float @sinf(float noundef %59) #16
  %61 = fmul float %9, %60
  %62 = icmp eq i16 %6, 3
  %63 = insertelement <2 x float> %49, float %61, i64 1
  br i1 %62, label %115, label %64

64:                                               ; preds = %56
  %65 = fsub float %46, %54
  %66 = fsub float %65, %61
  %67 = tail call float @cosf(float noundef %66) #16
  %68 = fneg float %67
  %69 = fmul float %9, %68
  %70 = icmp ugt i16 %6, 4
  br i1 %70, label %71, label %115

71:                                               ; preds = %64
  %72 = fsub float %46, %69
  %73 = fadd float %61, %72
  %74 = tail call float @sinf(float noundef %73) #16
  %75 = fneg float %74
  %76 = fmul float %9, %75
  %77 = icmp eq i16 %6, 5
  %78 = insertelement <2 x float> %63, float %76, i64 0
  br i1 %77, label %115, label %79

79:                                               ; preds = %71
  %80 = fsub float %76, %69
  %81 = fadd float %61, %80
  %82 = tail call float @cosf(float noundef %81) #16
  %83 = fneg float %82
  %84 = fmul float %9, %83
  %85 = icmp ugt i16 %6, 6
  %86 = insertelement <2 x float> %78, float %84, i64 0
  br i1 %85, label %87, label %115

87:                                               ; preds = %79
  %88 = fadd float %69, %84
  %89 = fadd float %61, %88
  %90 = tail call float @cosf(float noundef %89) #16
  %91 = fmul float %9, %90
  %92 = icmp eq i16 %6, 7
  br i1 %92, label %115, label %93

93:                                               ; preds = %87
  %94 = fadd float %84, %91
  %95 = fsub float %94, %61
  %96 = tail call float @sinf(float noundef %95) #16
  %97 = fmul float %9, %96
  %98 = icmp ugt i16 %6, 8
  %99 = insertelement <2 x float> %86, float %97, i64 1
  br i1 %98, label %100, label %115

100:                                              ; preds = %93
  %101 = fneg float %91
  %102 = fsub float %101, %84
  %103 = fadd float %102, %97
  %104 = tail call float @cosf(float noundef %103) #16
  %105 = fneg float %104
  %106 = fmul float %9, %105
  %107 = icmp eq i16 %6, 9
  br i1 %107, label %115, label %108

108:                                              ; preds = %100
  %109 = fsub float %106, %84
  %110 = fadd float %97, %109
  %111 = tail call float @sinf(float noundef %110) #16
  %112 = fneg float %111
  %113 = fmul float %9, %112
  %114 = insertelement <2 x float> %99, float %113, i64 0
  br label %115

115:                                              ; preds = %38, %56, %71, %87, %100, %108, %93, %79, %64, %50, %3
  %116 = phi float [ %106, %108 ], [ %106, %100 ], [ %91, %93 ], [ %91, %87 ], [ %69, %79 ], [ %69, %71 ], [ %69, %64 ], [ %54, %56 ], [ %54, %50 ], [ %39, %38 ], [ %18, %3 ]
  %117 = phi <2 x float> [ %114, %108 ], [ %99, %100 ], [ %99, %93 ], [ %86, %87 ], [ %86, %79 ], [ %78, %71 ], [ %63, %64 ], [ %63, %56 ], [ %49, %50 ], [ %49, %38 ], [ %37, %3 ]
  %118 = fcmp une float %9, 0.000000e+00
  %119 = fmul float %9, 2.000000e+00
  %120 = select i1 %118, float %119, float 1.000000e+00
  %121 = fdiv float %116, %120
  %122 = fsub float 5.000000e-01, %121
  %123 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %124 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %125 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %126 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %127 = load float, ptr %126, align 4, !tbaa !316
  %128 = fadd float %122, -5.000000e-01
  %129 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %130 = load float, ptr %129, align 4, !tbaa !308
  %131 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %132 = load float, ptr %131, align 8, !tbaa !309
  %133 = tail call float @llvm.fmuladd.f32(float %128, float %130, float %132)
  %134 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %135 = load <2 x float>, ptr %134, align 8, !tbaa !98
  %136 = insertelement <2 x float> poison, float %120, i64 0
  %137 = shufflevector <2 x float> %136, <2 x float> poison, <2 x i32> zeroinitializer
  %138 = fdiv <2 x float> %117, %137
  %139 = fsub <2 x float> <float 5.000000e-01, float 5.000000e-01>, %138
  %140 = extractelement <2 x float> %139, i64 0
  %141 = fadd float %140, %122
  %142 = fadd <2 x float> %139, <float -5.000000e-01, float -5.000000e-01>
  %143 = insertelement <2 x float> poison, float %130, i64 0
  %144 = shufflevector <2 x float> %143, <2 x float> poison, <2 x i32> zeroinitializer
  %145 = insertelement <2 x float> poison, float %132, i64 0
  %146 = shufflevector <2 x float> %145, <2 x float> poison, <2 x i32> zeroinitializer
  %147 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %142, <2 x float> %144, <2 x float> %146)
  %148 = shufflevector <2 x float> %139, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %149 = insertelement <4 x float> %148, float %133, i64 1
  %150 = shufflevector <2 x float> %147, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %151 = shufflevector <4 x float> %149, <4 x float> %150, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %152 = insertelement <4 x float> <float poison, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>, float %141, i64 0
  %153 = fadd <4 x float> %151, %152
  %154 = insertelement <4 x float> <float 0x3FD5555560000000, float poison, float poison, float poison>, float %127, i64 1
  %155 = shufflevector <2 x float> %135, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %156 = shufflevector <4 x float> %154, <4 x float> %155, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %157 = fmul <4 x float> %153, %156
  store <4 x float> %157, ptr %2, align 8, !tbaa !98
  %158 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %159 = load i16, ptr %158, align 2, !tbaa !180
  %160 = and i16 %159, 1024
  %161 = icmp eq i16 %160, 0
  %162 = extractelement <4 x float> %157, i64 1
  %163 = extractelement <4 x float> %157, i64 2
  %164 = extractelement <4 x float> %157, i64 3
  br i1 %161, label %165, label %176

165:                                              ; preds = %115
  %166 = fcmp olt float %162, 0.000000e+00
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  store float 0.000000e+00, ptr %123, align 4, !tbaa !181
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi float [ 0.000000e+00, %167 ], [ %162, %165 ]
  %170 = fcmp olt float %163, 0.000000e+00
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store float 0.000000e+00, ptr %124, align 8, !tbaa !182
  br label %172

172:                                              ; preds = %171, %168
  %173 = phi float [ 0.000000e+00, %171 ], [ %163, %168 ]
  %174 = fcmp olt float %164, 0.000000e+00
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store float 0.000000e+00, ptr %125, align 4, !tbaa !127
  br label %176

176:                                              ; preds = %172, %175, %115
  %177 = phi float [ %164, %172 ], [ 0.000000e+00, %175 ], [ %164, %115 ]
  %178 = phi float [ %173, %172 ], [ %173, %175 ], [ %163, %115 ]
  %179 = phi float [ %169, %172 ], [ %169, %175 ], [ %162, %115 ]
  %180 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %181 = load float, ptr %180, align 8, !tbaa !311
  %182 = fcmp une float %181, 1.000000e+00
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %184 = getelementptr inbounds float, ptr %4, i64 1
  %185 = getelementptr inbounds float, ptr %4, i64 2
  call void @rgb_to_hsv(float noundef %179, float noundef %178, float noundef %177, ptr noundef nonnull %4, ptr noundef nonnull %184, ptr noundef nonnull %185) #16
  %186 = load float, ptr %180, align 8, !tbaa !311
  %187 = load float, ptr %184, align 4, !tbaa !98
  %188 = fmul float %186, %187
  store float %188, ptr %184, align 4, !tbaa !98
  %189 = load float, ptr %4, align 4, !tbaa !98
  %190 = load float, ptr %185, align 4, !tbaa !98
  call void @hsv_to_rgb(float noundef %189, float noundef %188, float noundef %190, ptr noundef nonnull %123, ptr noundef nonnull %124, ptr noundef nonnull %125) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %191

191:                                              ; preds = %183, %176
  %192 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %192, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @blend(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !317 {
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %5 = load i16, ptr %4, align 2, !tbaa !180
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = select i1 %7, ptr %8, ptr %1
  %10 = select i1 %7, ptr %1, ptr %8
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = load float, ptr %9, align 4, !tbaa !98
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %14 = load i16, ptr %13, align 2, !tbaa !229
  switch i16 %14, label %46 [
    i16 0, label %15
    i16 1, label %18
    i16 2, label %24
    i16 3, label %35
    i16 6, label %39
  ]

15:                                               ; preds = %3
  %16 = fadd float %11, 1.000000e+00
  %17 = fmul float %16, 5.000000e-01
  br label %59

18:                                               ; preds = %3
  %19 = fadd float %11, 1.000000e+00
  %20 = fmul float %19, 5.000000e-01
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = fmul float %20, %20
  br label %59

24:                                               ; preds = %3
  %25 = fadd float %11, 1.000000e+00
  %26 = fmul float %25, 5.000000e-01
  %27 = fcmp ugt float %26, 0.000000e+00
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = fcmp ult float %26, 1.000000e+00
  br i1 %29, label %30, label %59

30:                                               ; preds = %28
  %31 = fmul float %26, %26
  %32 = fmul float %31, -2.000000e+00
  %33 = fmul float %26, %32
  %34 = tail call float @llvm.fmuladd.f32(float %31, float 3.000000e+00, float %33)
  br label %59

35:                                               ; preds = %3
  %36 = fadd float %11, 2.000000e+00
  %37 = fadd float %36, %12
  %38 = fmul float %37, 2.500000e-01
  br label %59

39:                                               ; preds = %3
  %40 = tail call float @atan2f(float noundef %12, float noundef %11) #16
  %41 = fpext float %40 to double
  %42 = fdiv double %41, 0x401921FB54442D18
  %43 = fadd double %42, 5.000000e-01
  %44 = fptrunc double %43 to float
  %45 = load i16, ptr %4, align 2, !tbaa !180
  br label %59

46:                                               ; preds = %3
  %47 = fmul float %12, %12
  %48 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %47)
  %49 = getelementptr inbounds float, ptr %1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !98
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %48)
  %52 = tail call float @llvm.sqrt.f32(float %51)
  %53 = fsub float 1.000000e+00, %52
  %54 = fcmp olt float %53, 0.000000e+00
  %55 = select i1 %54, float 0.000000e+00, float %53
  %56 = icmp eq i16 %14, 5
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = fmul float %55, %55
  br label %59

59:                                               ; preds = %28, %24, %18, %22, %35, %46, %57, %39, %30, %15
  %60 = phi i16 [ %5, %22 ], [ %5, %35 ], [ %5, %46 ], [ %5, %57 ], [ %45, %39 ], [ %5, %30 ], [ %5, %15 ], [ %5, %18 ], [ %5, %24 ], [ %5, %28 ]
  %61 = phi float [ %23, %22 ], [ %38, %35 ], [ %55, %46 ], [ %58, %57 ], [ %44, %39 ], [ %34, %30 ], [ %17, %15 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %24 ], [ 1.000000e+00, %28 ]
  %62 = fadd float %61, -5.000000e-01
  %63 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !308
  %65 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %66 = load float, ptr %65, align 8, !tbaa !309
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %64, float %66)
  %68 = fadd float %67, -5.000000e-01
  store float %68, ptr %2, align 8, !tbaa !126
  %69 = and i16 %60, 1024
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = fcmp olt float %68, 0.000000e+00
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = fcmp ogt float %68, 1.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %73, %71
  %76 = phi float [ 0.000000e+00, %71 ], [ 1.000000e+00, %73 ]
  store float %76, ptr %2, align 8, !tbaa !126
  br label %77

77:                                               ; preds = %75, %73, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stucci(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !318 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !228
  %7 = load float, ptr %1, align 4, !tbaa !98
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %13 = load i16, ptr %12, align 2, !tbaa !305
  %14 = icmp ne i16 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %17 = load i16, ptr %16, align 8, !tbaa !306
  %18 = sext i16 %17 to i32
  %19 = tail call float @BLI_gNoise(float noundef %6, float noundef %7, float noundef %9, float noundef %11, i32 noundef %15, i32 noundef %18) #16
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !315
  %22 = fdiv float %21, 2.000000e+02
  %23 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %24 = load i16, ptr %23, align 2, !tbaa !229
  %25 = icmp eq i16 %24, 0
  %26 = fmul float %19, %19
  %27 = select i1 %25, float 1.000000e+00, float %26
  %28 = fmul float %22, %27
  %29 = load float, ptr %5, align 8, !tbaa !228
  %30 = load float, ptr %1, align 4, !tbaa !98
  %31 = fadd float %30, %28
  %32 = load float, ptr %8, align 4, !tbaa !98
  %33 = load float, ptr %10, align 4, !tbaa !98
  %34 = load i16, ptr %12, align 2, !tbaa !305
  %35 = icmp ne i16 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i16, ptr %16, align 8, !tbaa !306
  %38 = sext i16 %37 to i32
  %39 = tail call float @BLI_gNoise(float noundef %29, float noundef %31, float noundef %32, float noundef %33, i32 noundef %36, i32 noundef %38) #16
  store float %39, ptr %4, align 4, !tbaa !98
  %40 = load float, ptr %5, align 8, !tbaa !228
  %41 = load float, ptr %1, align 4, !tbaa !98
  %42 = load float, ptr %8, align 4, !tbaa !98
  %43 = fadd float %28, %42
  %44 = load float, ptr %10, align 4, !tbaa !98
  %45 = load i16, ptr %12, align 2, !tbaa !305
  %46 = icmp ne i16 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i16, ptr %16, align 8, !tbaa !306
  %49 = sext i16 %48 to i32
  %50 = tail call float @BLI_gNoise(float noundef %40, float noundef %41, float noundef %43, float noundef %44, i32 noundef %47, i32 noundef %49) #16
  %51 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %50, ptr %51, align 4, !tbaa !98
  %52 = load float, ptr %5, align 8, !tbaa !228
  %53 = load float, ptr %1, align 4, !tbaa !98
  %54 = load float, ptr %8, align 4, !tbaa !98
  %55 = load float, ptr %10, align 4, !tbaa !98
  %56 = fadd float %28, %55
  %57 = load i16, ptr %12, align 2, !tbaa !305
  %58 = icmp ne i16 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i16, ptr %16, align 8, !tbaa !306
  %61 = sext i16 %60 to i32
  %62 = tail call float @BLI_gNoise(float noundef %52, float noundef %53, float noundef %54, float noundef %56, i32 noundef %59, i32 noundef %61) #16
  %63 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %62, ptr %63, align 4, !tbaa !98
  store float %62, ptr %2, align 8, !tbaa !126
  %64 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !122
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %4) #17
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %68 = load i16, ptr %23, align 2, !tbaa !229
  %69 = icmp eq i16 %68, 2
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load float, ptr %2, align 8, !tbaa !126
  br label %87

72:                                               ; preds = %67
  %73 = load ptr, ptr %64, align 8, !tbaa !122
  %74 = load <2 x float>, ptr %73, align 4, !tbaa !98
  %75 = fneg <2 x float> %74
  store <2 x float> %75, ptr %73, align 4, !tbaa !98
  %76 = getelementptr inbounds float, ptr %73, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !98
  %78 = fneg float %77
  store float %78, ptr %76, align 4, !tbaa !98
  %79 = load float, ptr %2, align 8, !tbaa !126
  br label %83

80:                                               ; preds = %3
  %81 = load i16, ptr %23, align 2, !tbaa !229
  %82 = icmp eq i16 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %72, %80
  %84 = phi i32 [ 2, %72 ], [ 0, %80 ]
  %85 = phi float [ %79, %72 ], [ %62, %80 ]
  %86 = fsub float 1.000000e+00, %85
  store float %86, ptr %2, align 8, !tbaa !126
  br label %87

87:                                               ; preds = %80, %70, %83
  %88 = phi float [ %86, %83 ], [ %62, %80 ], [ %71, %70 ]
  %89 = phi i32 [ %84, %83 ], [ 0, %80 ], [ 2, %70 ]
  %90 = fcmp olt float %88, 0.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store float 0.000000e+00, ptr %2, align 8, !tbaa !126
  br label %92

92:                                               ; preds = %91, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret i32 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texnoise(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !319 {
  %4 = load ptr, ptr @random_tex_array, align 8, !tbaa !34
  %5 = tail call i32 @BLI_rng_thread_rand(ptr noundef %4, i32 noundef %2) #16
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %7 = load i16, ptr %6, align 4, !tbaa !304
  %8 = lshr i32 %5, 29
  %9 = and i32 %8, 3
  %10 = icmp eq i16 %7, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = sext i16 %7 to i32
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %19, %13 ], [ 29, %11 ]
  %15 = phi i32 [ %18, %13 ], [ %12, %11 ]
  %16 = phi float [ %23, %13 ], [ 3.000000e+00, %11 ]
  %17 = phi i32 [ %22, %13 ], [ %9, %11 ]
  %18 = add nsw i32 %15, -1
  %19 = add nsw i32 %14, -2
  %20 = ashr i32 %5, %19
  %21 = and i32 %20, 3
  %22 = mul nsw i32 %21, %17
  %23 = fmul float %16, 3.000000e+00
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %25, label %13, !llvm.loop !320

25:                                               ; preds = %13, %3
  %26 = phi i32 [ %9, %3 ], [ %22, %13 ]
  %27 = phi float [ 3.000000e+00, %3 ], [ %23, %13 ]
  %28 = sitofp i32 %26 to float
  %29 = fdiv float %28, %27
  %30 = fadd float %29, -5.000000e-01
  %31 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %32 = load float, ptr %31, align 4, !tbaa !308
  %33 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %34 = load float, ptr %33, align 8, !tbaa !309
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %34)
  %36 = fadd float %35, -5.000000e-01
  store float %36, ptr %1, align 8, !tbaa !126
  %37 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %38 = load i16, ptr %37, align 2, !tbaa !180
  %39 = and i16 %38, 1024
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = fcmp olt float %36, 0.000000e+00
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = fcmp ogt float %36, 1.000000e+00
  br i1 %44, label %45, label %47

45:                                               ; preds = %43, %41
  %46 = phi float [ 0.000000e+00, %41 ], [ 1.000000e+00, %43 ]
  store float %46, ptr %1, align 8, !tbaa !126
  br label %47

47:                                               ; preds = %45, %43, %25
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_tag_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @envmaptex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @mg_mFractalOrfBmTex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !321 {
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !229
  %6 = icmp eq i16 %5, 0
  %7 = select i1 %6, ptr @mg_MultiFractal, ptr @mg_fBm
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %9 = load float, ptr %8, align 8, !tbaa !322
  %10 = load float, ptr %1, align 4, !tbaa !98
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %16 = load float, ptr %15, align 8, !tbaa !323
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !324
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %20 = load float, ptr %19, align 8, !tbaa !325
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %22 = load i16, ptr %21, align 8, !tbaa !306
  %23 = sext i16 %22 to i32
  %24 = tail call float %7(float noundef %10, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %20, i32 noundef %23) #16, !callees !326
  %25 = fmul float %9, %24
  store float %25, ptr %2, align 8, !tbaa !126
  %26 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !122
  %28 = icmp eq ptr %27, null
  br i1 %28, label %77, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %31 = load float, ptr %30, align 8, !tbaa !307
  %32 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !228
  %34 = fdiv float %31, %33
  %35 = load float, ptr %8, align 8, !tbaa !322
  %36 = load float, ptr %1, align 4, !tbaa !98
  %37 = fadd float %34, %36
  %38 = load float, ptr %11, align 4, !tbaa !98
  %39 = load float, ptr %13, align 4, !tbaa !98
  %40 = load float, ptr %15, align 8, !tbaa !323
  %41 = load float, ptr %17, align 4, !tbaa !324
  %42 = load float, ptr %19, align 8, !tbaa !325
  %43 = load i16, ptr %21, align 8, !tbaa !306
  %44 = sext i16 %43 to i32
  %45 = tail call float %7(float noundef %37, float noundef %38, float noundef %39, float noundef %40, float noundef %41, float noundef %42, i32 noundef %44) #16, !callees !326
  %46 = fmul float %35, %45
  %47 = load ptr, ptr %26, align 8, !tbaa !122
  store float %46, ptr %47, align 4, !tbaa !98
  %48 = load float, ptr %8, align 8, !tbaa !322
  %49 = load float, ptr %1, align 4, !tbaa !98
  %50 = load float, ptr %11, align 4, !tbaa !98
  %51 = fadd float %34, %50
  %52 = load float, ptr %13, align 4, !tbaa !98
  %53 = load float, ptr %15, align 8, !tbaa !323
  %54 = load float, ptr %17, align 4, !tbaa !324
  %55 = load float, ptr %19, align 8, !tbaa !325
  %56 = load i16, ptr %21, align 8, !tbaa !306
  %57 = sext i16 %56 to i32
  %58 = tail call float %7(float noundef %49, float noundef %51, float noundef %52, float noundef %53, float noundef %54, float noundef %55, i32 noundef %57) #16, !callees !326
  %59 = fmul float %48, %58
  %60 = load ptr, ptr %26, align 8, !tbaa !122
  %61 = getelementptr inbounds float, ptr %60, i64 1
  store float %59, ptr %61, align 4, !tbaa !98
  %62 = load float, ptr %8, align 8, !tbaa !322
  %63 = load float, ptr %1, align 4, !tbaa !98
  %64 = load float, ptr %11, align 4, !tbaa !98
  %65 = load float, ptr %13, align 4, !tbaa !98
  %66 = fadd float %34, %65
  %67 = load float, ptr %15, align 8, !tbaa !323
  %68 = load float, ptr %17, align 4, !tbaa !324
  %69 = load float, ptr %19, align 8, !tbaa !325
  %70 = load i16, ptr %21, align 8, !tbaa !306
  %71 = sext i16 %70 to i32
  %72 = tail call float %7(float noundef %63, float noundef %64, float noundef %66, float noundef %67, float noundef %68, float noundef %69, i32 noundef %71) #16, !callees !326
  %73 = fmul float %62, %72
  %74 = load ptr, ptr %26, align 8, !tbaa !122
  %75 = getelementptr inbounds float, ptr %74, i64 2
  store float %73, ptr %75, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %76 = load float, ptr %2, align 8, !tbaa !126
  br label %77

77:                                               ; preds = %29, %3
  %78 = phi float [ %76, %29 ], [ %25, %3 ]
  %79 = phi float [ 2.000000e+00, %29 ], [ 0.000000e+00, %3 ]
  %80 = fadd float %78, -5.000000e-01
  %81 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %82 = load float, ptr %81, align 4, !tbaa !308
  %83 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %84 = load float, ptr %83, align 8, !tbaa !309
  %85 = tail call float @llvm.fmuladd.f32(float %80, float %82, float %84)
  %86 = fadd float %85, -5.000000e-01
  store float %86, ptr %2, align 8, !tbaa !126
  %87 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %88 = load i16, ptr %87, align 2, !tbaa !180
  %89 = and i16 %88, 1024
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %77
  %92 = fcmp olt float %86, 0.000000e+00
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = fcmp ogt float %86, 1.000000e+00
  br i1 %94, label %95, label %97

95:                                               ; preds = %93, %91
  %96 = phi float [ 0.000000e+00, %91 ], [ 1.000000e+00, %93 ]
  store float %96, ptr %2, align 8, !tbaa !126
  br label %97

97:                                               ; preds = %95, %93, %77
  ret float %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @mg_ridgedOrHybridMFTex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !327 {
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !229
  %6 = icmp eq i16 %5, 1
  %7 = select i1 %6, ptr @mg_RidgedMultiFractal, ptr @mg_HybridMultiFractal
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %9 = load float, ptr %8, align 8, !tbaa !322
  %10 = load float, ptr %1, align 4, !tbaa !98
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %16 = load float, ptr %15, align 8, !tbaa !323
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !324
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %20 = load float, ptr %19, align 8, !tbaa !325
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 15
  %22 = load float, ptr %21, align 4, !tbaa !328
  %23 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 16
  %24 = load float, ptr %23, align 8, !tbaa !329
  %25 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %26 = load i16, ptr %25, align 8, !tbaa !306
  %27 = sext i16 %26 to i32
  %28 = tail call float %7(float noundef %10, float noundef %12, float noundef %14, float noundef %16, float noundef %18, float noundef %20, float noundef %22, float noundef %24, i32 noundef %27) #16, !callees !330
  %29 = fmul float %9, %28
  store float %29, ptr %2, align 8, !tbaa !126
  %30 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !122
  %32 = icmp eq ptr %31, null
  br i1 %32, label %87, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %35 = load float, ptr %34, align 8, !tbaa !307
  %36 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !228
  %38 = fdiv float %35, %37
  %39 = load float, ptr %8, align 8, !tbaa !322
  %40 = load float, ptr %1, align 4, !tbaa !98
  %41 = fadd float %38, %40
  %42 = load float, ptr %11, align 4, !tbaa !98
  %43 = load float, ptr %13, align 4, !tbaa !98
  %44 = load float, ptr %15, align 8, !tbaa !323
  %45 = load float, ptr %17, align 4, !tbaa !324
  %46 = load float, ptr %19, align 8, !tbaa !325
  %47 = load float, ptr %21, align 4, !tbaa !328
  %48 = load float, ptr %23, align 8, !tbaa !329
  %49 = load i16, ptr %25, align 8, !tbaa !306
  %50 = sext i16 %49 to i32
  %51 = tail call float %7(float noundef %41, float noundef %42, float noundef %43, float noundef %44, float noundef %45, float noundef %46, float noundef %47, float noundef %48, i32 noundef %50) #16, !callees !330
  %52 = fmul float %39, %51
  %53 = load ptr, ptr %30, align 8, !tbaa !122
  store float %52, ptr %53, align 4, !tbaa !98
  %54 = load float, ptr %8, align 8, !tbaa !322
  %55 = load float, ptr %1, align 4, !tbaa !98
  %56 = load float, ptr %11, align 4, !tbaa !98
  %57 = fadd float %38, %56
  %58 = load float, ptr %13, align 4, !tbaa !98
  %59 = load float, ptr %15, align 8, !tbaa !323
  %60 = load float, ptr %17, align 4, !tbaa !324
  %61 = load float, ptr %19, align 8, !tbaa !325
  %62 = load float, ptr %21, align 4, !tbaa !328
  %63 = load float, ptr %23, align 8, !tbaa !329
  %64 = load i16, ptr %25, align 8, !tbaa !306
  %65 = sext i16 %64 to i32
  %66 = tail call float %7(float noundef %55, float noundef %57, float noundef %58, float noundef %59, float noundef %60, float noundef %61, float noundef %62, float noundef %63, i32 noundef %65) #16, !callees !330
  %67 = fmul float %54, %66
  %68 = load ptr, ptr %30, align 8, !tbaa !122
  %69 = getelementptr inbounds float, ptr %68, i64 1
  store float %67, ptr %69, align 4, !tbaa !98
  %70 = load float, ptr %8, align 8, !tbaa !322
  %71 = load float, ptr %1, align 4, !tbaa !98
  %72 = load float, ptr %11, align 4, !tbaa !98
  %73 = load float, ptr %13, align 4, !tbaa !98
  %74 = fadd float %38, %73
  %75 = load float, ptr %15, align 8, !tbaa !323
  %76 = load float, ptr %17, align 4, !tbaa !324
  %77 = load float, ptr %19, align 8, !tbaa !325
  %78 = load float, ptr %21, align 4, !tbaa !328
  %79 = load float, ptr %23, align 8, !tbaa !329
  %80 = load i16, ptr %25, align 8, !tbaa !306
  %81 = sext i16 %80 to i32
  %82 = tail call float %7(float noundef %71, float noundef %72, float noundef %74, float noundef %75, float noundef %76, float noundef %77, float noundef %78, float noundef %79, i32 noundef %81) #16, !callees !330
  %83 = fmul float %70, %82
  %84 = load ptr, ptr %30, align 8, !tbaa !122
  %85 = getelementptr inbounds float, ptr %84, i64 2
  store float %83, ptr %85, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %86 = load float, ptr %2, align 8, !tbaa !126
  br label %87

87:                                               ; preds = %33, %3
  %88 = phi float [ %86, %33 ], [ %29, %3 ]
  %89 = phi float [ 2.000000e+00, %33 ], [ 0.000000e+00, %3 ]
  %90 = fadd float %88, -5.000000e-01
  %91 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %92 = load float, ptr %91, align 4, !tbaa !308
  %93 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %94 = load float, ptr %93, align 8, !tbaa !309
  %95 = tail call float @llvm.fmuladd.f32(float %90, float %92, float %94)
  %96 = fadd float %95, -5.000000e-01
  store float %96, ptr %2, align 8, !tbaa !126
  %97 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %98 = load i16, ptr %97, align 2, !tbaa !180
  %99 = and i16 %98, 1024
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = fcmp olt float %96, 0.000000e+00
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = fcmp ogt float %96, 1.000000e+00
  br i1 %104, label %105, label %107

105:                                              ; preds = %103, %101
  %106 = phi float [ 0.000000e+00, %101 ], [ 1.000000e+00, %103 ]
  store float %106, ptr %2, align 8, !tbaa !126
  br label %107

107:                                              ; preds = %105, %103, %87
  ret float %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @mg_HTerrainTex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !331 {
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !322
  %6 = load float, ptr %1, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !98
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %12 = load float, ptr %11, align 8, !tbaa !323
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %14 = load float, ptr %13, align 4, !tbaa !324
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %16 = load float, ptr %15, align 8, !tbaa !325
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 15
  %18 = load float, ptr %17, align 4, !tbaa !328
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %20 = load i16, ptr %19, align 8, !tbaa !306
  %21 = sext i16 %20 to i32
  %22 = tail call float @mg_HeteroTerrain(float noundef %6, float noundef %8, float noundef %10, float noundef %12, float noundef %14, float noundef %16, float noundef %18, i32 noundef %21) #16
  %23 = fmul float %5, %22
  store float %23, ptr %2, align 8, !tbaa !126
  %24 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %29 = load float, ptr %28, align 8, !tbaa !307
  %30 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !228
  %32 = fdiv float %29, %31
  %33 = load float, ptr %4, align 8, !tbaa !322
  %34 = load float, ptr %1, align 4, !tbaa !98
  %35 = fadd float %32, %34
  %36 = load float, ptr %7, align 4, !tbaa !98
  %37 = load float, ptr %9, align 4, !tbaa !98
  %38 = load float, ptr %11, align 8, !tbaa !323
  %39 = load float, ptr %13, align 4, !tbaa !324
  %40 = load float, ptr %15, align 8, !tbaa !325
  %41 = load float, ptr %17, align 4, !tbaa !328
  %42 = load i16, ptr %19, align 8, !tbaa !306
  %43 = sext i16 %42 to i32
  %44 = tail call float @mg_HeteroTerrain(float noundef %35, float noundef %36, float noundef %37, float noundef %38, float noundef %39, float noundef %40, float noundef %41, i32 noundef %43) #16
  %45 = fmul float %33, %44
  %46 = load ptr, ptr %24, align 8, !tbaa !122
  store float %45, ptr %46, align 4, !tbaa !98
  %47 = load float, ptr %4, align 8, !tbaa !322
  %48 = load float, ptr %1, align 4, !tbaa !98
  %49 = load float, ptr %7, align 4, !tbaa !98
  %50 = fadd float %32, %49
  %51 = load float, ptr %9, align 4, !tbaa !98
  %52 = load float, ptr %11, align 8, !tbaa !323
  %53 = load float, ptr %13, align 4, !tbaa !324
  %54 = load float, ptr %15, align 8, !tbaa !325
  %55 = load float, ptr %17, align 4, !tbaa !328
  %56 = load i16, ptr %19, align 8, !tbaa !306
  %57 = sext i16 %56 to i32
  %58 = tail call float @mg_HeteroTerrain(float noundef %48, float noundef %50, float noundef %51, float noundef %52, float noundef %53, float noundef %54, float noundef %55, i32 noundef %57) #16
  %59 = fmul float %47, %58
  %60 = load ptr, ptr %24, align 8, !tbaa !122
  %61 = getelementptr inbounds float, ptr %60, i64 1
  store float %59, ptr %61, align 4, !tbaa !98
  %62 = load float, ptr %4, align 8, !tbaa !322
  %63 = load float, ptr %1, align 4, !tbaa !98
  %64 = load float, ptr %7, align 4, !tbaa !98
  %65 = load float, ptr %9, align 4, !tbaa !98
  %66 = fadd float %32, %65
  %67 = load float, ptr %11, align 8, !tbaa !323
  %68 = load float, ptr %13, align 4, !tbaa !324
  %69 = load float, ptr %15, align 8, !tbaa !325
  %70 = load float, ptr %17, align 4, !tbaa !328
  %71 = load i16, ptr %19, align 8, !tbaa !306
  %72 = sext i16 %71 to i32
  %73 = tail call float @mg_HeteroTerrain(float noundef %63, float noundef %64, float noundef %66, float noundef %67, float noundef %68, float noundef %69, float noundef %70, i32 noundef %72) #16
  %74 = fmul float %62, %73
  %75 = load ptr, ptr %24, align 8, !tbaa !122
  %76 = getelementptr inbounds float, ptr %75, i64 2
  store float %74, ptr %76, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %77 = load float, ptr %2, align 8, !tbaa !126
  br label %78

78:                                               ; preds = %27, %3
  %79 = phi float [ %77, %27 ], [ %23, %3 ]
  %80 = phi float [ 2.000000e+00, %27 ], [ 0.000000e+00, %3 ]
  %81 = fadd float %79, -5.000000e-01
  %82 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %83 = load float, ptr %82, align 4, !tbaa !308
  %84 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %85 = load float, ptr %84, align 8, !tbaa !309
  %86 = tail call float @llvm.fmuladd.f32(float %81, float %83, float %85)
  %87 = fadd float %86, -5.000000e-01
  store float %87, ptr %2, align 8, !tbaa !126
  %88 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %89 = load i16, ptr %88, align 2, !tbaa !180
  %90 = and i16 %89, 1024
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = fcmp olt float %87, 0.000000e+00
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = fcmp ogt float %87, 1.000000e+00
  br i1 %95, label %96, label %98

96:                                               ; preds = %94, %92
  %97 = phi float [ 0.000000e+00, %92 ], [ 1.000000e+00, %94 ]
  store float %97, ptr %2, align 8, !tbaa !126
  br label %98

98:                                               ; preds = %96, %94, %78
  ret float %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @voronoiTex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !332 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [12 x float], align 16
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 19
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  %10 = load <2 x float>, ptr %8, align 4, !tbaa !98
  %11 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 21
  %13 = load float, ptr %12, align 4, !tbaa !333
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 22
  %16 = load float, ptr %15, align 8, !tbaa !334
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = extractelement <2 x float> %11, i64 0
  %19 = extractelement <2 x float> %11, i64 1
  %20 = fadd float %18, %19
  %21 = fadd float %20, %14
  %22 = fadd float %21, %17
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %26 = load float, ptr %25, align 8, !tbaa !322
  %27 = fdiv float %26, %22
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi float [ %27, %24 ], [ %22, %3 ]
  %30 = load float, ptr %1, align 4, !tbaa !98
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !98
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !98
  %35 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 23
  %36 = load float, ptr %35, align 4, !tbaa !335
  %37 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 24
  %38 = load i16, ptr %37, align 8, !tbaa !336
  %39 = sext i16 %38 to i32
  call void @voronoi(float noundef %30, float noundef %32, float noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %36, i32 noundef %39) #16
  %40 = load float, ptr %8, align 4, !tbaa !337
  %41 = load float, ptr %4, align 16, !tbaa !98
  %42 = load float, ptr %9, align 8, !tbaa !338
  %43 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !98
  %45 = fmul float %42, %44
  %46 = call float @llvm.fmuladd.f32(float %40, float %41, float %45)
  %47 = load float, ptr %12, align 4, !tbaa !333
  %48 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !98
  %50 = call float @llvm.fmuladd.f32(float %47, float %49, float %46)
  %51 = load float, ptr %15, align 8, !tbaa !334
  %52 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !98
  %54 = call float @llvm.fmuladd.f32(float %51, float %53, float %50)
  %55 = call float @llvm.fabs.f32(float %54)
  %56 = fmul float %29, %55
  store float %56, ptr %2, align 8, !tbaa !126
  %57 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 25
  %58 = load i16, ptr %57, align 2, !tbaa !339
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %142, label %60

60:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %61 = load float, ptr %5, align 16, !tbaa !98
  %62 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !98
  %64 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 2
  %65 = load float, ptr %64, align 8, !tbaa !98
  call void @cellNoiseV(float noundef %61, float noundef %63, float noundef %65, ptr noundef nonnull %6) #16
  %66 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %67 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %69 = load <2 x float>, ptr %6, align 8, !tbaa !98
  %70 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = fmul <2 x float> %70, %69
  store <2 x float> %71, ptr %66, align 4, !tbaa !98
  %72 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %73 = load float, ptr %72, align 8, !tbaa !98
  %74 = fmul float %18, %73
  %75 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %74, ptr %75, align 4, !tbaa !127
  %76 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !98
  %78 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 4
  %79 = load float, ptr %78, align 16, !tbaa !98
  %80 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 5
  %81 = load float, ptr %80, align 4, !tbaa !98
  call void @cellNoiseV(float noundef %77, float noundef %79, float noundef %81, ptr noundef nonnull %6) #16
  %82 = load <2 x float>, ptr %6, align 8, !tbaa !98
  %83 = load <2 x float>, ptr %66, align 4, !tbaa !98
  %84 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %85 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %84, <2 x float> %82, <2 x float> %83)
  store <2 x float> %85, ptr %66, align 4, !tbaa !98
  %86 = load float, ptr %72, align 8, !tbaa !98
  %87 = load float, ptr %75, align 4, !tbaa !127
  %88 = call float @llvm.fmuladd.f32(float %19, float %86, float %87)
  store float %88, ptr %75, align 4, !tbaa !127
  %89 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 6
  %90 = load float, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 7
  %92 = load float, ptr %91, align 4, !tbaa !98
  %93 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 8
  %94 = load float, ptr %93, align 16, !tbaa !98
  call void @cellNoiseV(float noundef %90, float noundef %92, float noundef %94, ptr noundef nonnull %6) #16
  %95 = load <2 x float>, ptr %6, align 8, !tbaa !98
  %96 = load <2 x float>, ptr %66, align 4, !tbaa !98
  %97 = insertelement <2 x float> poison, float %14, i64 0
  %98 = shufflevector <2 x float> %97, <2 x float> poison, <2 x i32> zeroinitializer
  %99 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %98, <2 x float> %95, <2 x float> %96)
  store <2 x float> %99, ptr %66, align 4, !tbaa !98
  %100 = load float, ptr %72, align 8, !tbaa !98
  %101 = load float, ptr %75, align 4, !tbaa !127
  %102 = call float @llvm.fmuladd.f32(float %14, float %100, float %101)
  store float %102, ptr %75, align 4, !tbaa !127
  %103 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 9
  %104 = load float, ptr %103, align 4, !tbaa !98
  %105 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 10
  %106 = load float, ptr %105, align 8, !tbaa !98
  %107 = getelementptr inbounds [12 x float], ptr %5, i64 0, i64 11
  %108 = load float, ptr %107, align 4, !tbaa !98
  call void @cellNoiseV(float noundef %104, float noundef %106, float noundef %108, ptr noundef nonnull %6) #16
  %109 = load float, ptr %6, align 8, !tbaa !98
  %110 = load float, ptr %66, align 4, !tbaa !181
  %111 = call float @llvm.fmuladd.f32(float %17, float %109, float %110)
  %112 = load float, ptr %67, align 4, !tbaa !98
  %113 = load float, ptr %68, align 8, !tbaa !182
  %114 = call float @llvm.fmuladd.f32(float %17, float %112, float %113)
  %115 = load float, ptr %72, align 8, !tbaa !98
  %116 = load float, ptr %75, align 4, !tbaa !127
  %117 = call float @llvm.fmuladd.f32(float %17, float %115, float %116)
  %118 = load i16, ptr %57, align 2, !tbaa !339
  %119 = icmp sgt i16 %118, 1
  br i1 %119, label %120, label %135

120:                                              ; preds = %60
  %121 = load float, ptr %43, align 4, !tbaa !98
  %122 = load float, ptr %4, align 16, !tbaa !98
  %123 = fsub float %121, %122
  %124 = fmul float %123, 1.000000e+01
  %125 = fcmp ogt float %124, 1.000000e+00
  %126 = select i1 %125, float 1.000000e+00, float %124
  %127 = icmp eq i16 %118, 3
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load float, ptr %2, align 8, !tbaa !126
  br label %130

130:                                              ; preds = %120, %128
  %131 = phi float [ %129, %128 ], [ %29, %120 ]
  %132 = fmul float %126, %131
  %133 = fmul float %111, %132
  store float %133, ptr %66, align 4, !tbaa !181
  %134 = fmul float %114, %132
  br label %138

135:                                              ; preds = %60
  %136 = fmul float %29, %111
  store float %136, ptr %66, align 4, !tbaa !181
  %137 = fmul float %29, %114
  br label %138

138:                                              ; preds = %135, %130
  %139 = phi float [ %137, %135 ], [ %134, %130 ]
  %140 = phi float [ %29, %135 ], [ %132, %130 ]
  store float %139, ptr %68, align 8, !tbaa !182
  %141 = fmul float %117, %140
  store float %141, ptr %75, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %142

142:                                              ; preds = %138, %28
  %143 = phi i16 [ %118, %138 ], [ 0, %28 ]
  %144 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !122
  %146 = icmp eq ptr %145, null
  br i1 %146, label %222, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %149 = load float, ptr %148, align 8, !tbaa !307
  %150 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %151 = load float, ptr %150, align 8, !tbaa !228
  %152 = fdiv float %149, %151
  %153 = load float, ptr %1, align 4, !tbaa !98
  %154 = fadd float %153, %152
  %155 = load float, ptr %31, align 4, !tbaa !98
  %156 = load float, ptr %33, align 4, !tbaa !98
  %157 = load float, ptr %35, align 4, !tbaa !335
  %158 = load i16, ptr %37, align 8, !tbaa !336
  %159 = sext i16 %158 to i32
  call void @voronoi(float noundef %154, float noundef %155, float noundef %156, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %157, i32 noundef %159) #16
  %160 = load float, ptr %8, align 4, !tbaa !337
  %161 = load float, ptr %4, align 16, !tbaa !98
  %162 = load float, ptr %9, align 8, !tbaa !338
  %163 = load float, ptr %43, align 4, !tbaa !98
  %164 = fmul float %162, %163
  %165 = call float @llvm.fmuladd.f32(float %160, float %161, float %164)
  %166 = load float, ptr %12, align 4, !tbaa !333
  %167 = load float, ptr %48, align 8, !tbaa !98
  %168 = call float @llvm.fmuladd.f32(float %166, float %167, float %165)
  %169 = load float, ptr %15, align 8, !tbaa !334
  %170 = load float, ptr %52, align 4, !tbaa !98
  %171 = call float @llvm.fmuladd.f32(float %169, float %170, float %168)
  %172 = call float @llvm.fabs.f32(float %171)
  %173 = fmul float %29, %172
  %174 = load ptr, ptr %144, align 8, !tbaa !122
  store float %173, ptr %174, align 4, !tbaa !98
  %175 = load float, ptr %1, align 4, !tbaa !98
  %176 = load float, ptr %31, align 4, !tbaa !98
  %177 = fadd float %152, %176
  %178 = load float, ptr %33, align 4, !tbaa !98
  %179 = load float, ptr %35, align 4, !tbaa !335
  %180 = load i16, ptr %37, align 8, !tbaa !336
  %181 = sext i16 %180 to i32
  call void @voronoi(float noundef %175, float noundef %177, float noundef %178, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %179, i32 noundef %181) #16
  %182 = load float, ptr %8, align 4, !tbaa !337
  %183 = load float, ptr %4, align 16, !tbaa !98
  %184 = load float, ptr %9, align 8, !tbaa !338
  %185 = load float, ptr %43, align 4, !tbaa !98
  %186 = fmul float %184, %185
  %187 = call float @llvm.fmuladd.f32(float %182, float %183, float %186)
  %188 = load float, ptr %12, align 4, !tbaa !333
  %189 = load float, ptr %48, align 8, !tbaa !98
  %190 = call float @llvm.fmuladd.f32(float %188, float %189, float %187)
  %191 = load float, ptr %15, align 8, !tbaa !334
  %192 = load float, ptr %52, align 4, !tbaa !98
  %193 = call float @llvm.fmuladd.f32(float %191, float %192, float %190)
  %194 = call float @llvm.fabs.f32(float %193)
  %195 = fmul float %29, %194
  %196 = load ptr, ptr %144, align 8, !tbaa !122
  %197 = getelementptr inbounds float, ptr %196, i64 1
  store float %195, ptr %197, align 4, !tbaa !98
  %198 = load float, ptr %1, align 4, !tbaa !98
  %199 = load float, ptr %31, align 4, !tbaa !98
  %200 = load float, ptr %33, align 4, !tbaa !98
  %201 = fadd float %152, %200
  %202 = load float, ptr %35, align 4, !tbaa !335
  %203 = load i16, ptr %37, align 8, !tbaa !336
  %204 = sext i16 %203 to i32
  call void @voronoi(float noundef %198, float noundef %199, float noundef %201, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %202, i32 noundef %204) #16
  %205 = load float, ptr %8, align 4, !tbaa !337
  %206 = load float, ptr %4, align 16, !tbaa !98
  %207 = load float, ptr %9, align 8, !tbaa !338
  %208 = load float, ptr %43, align 4, !tbaa !98
  %209 = fmul float %207, %208
  %210 = call float @llvm.fmuladd.f32(float %205, float %206, float %209)
  %211 = load float, ptr %12, align 4, !tbaa !333
  %212 = load float, ptr %48, align 8, !tbaa !98
  %213 = call float @llvm.fmuladd.f32(float %211, float %212, float %210)
  %214 = load float, ptr %15, align 8, !tbaa !334
  %215 = load float, ptr %52, align 4, !tbaa !98
  %216 = call float @llvm.fmuladd.f32(float %214, float %215, float %213)
  %217 = call float @llvm.fabs.f32(float %216)
  %218 = fmul float %29, %217
  %219 = load ptr, ptr %144, align 8, !tbaa !122
  %220 = getelementptr inbounds float, ptr %219, i64 2
  store float %218, ptr %220, align 4, !tbaa !98
  call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %221 = load i16, ptr %57, align 2, !tbaa !339
  br label %222

222:                                              ; preds = %147, %142
  %223 = phi i16 [ %221, %147 ], [ %143, %142 ]
  %224 = phi i32 [ 2, %147 ], [ 0, %142 ]
  %225 = icmp eq i16 %223, 0
  br i1 %225, label %290, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %228 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %229 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %230 = load float, ptr %229, align 4, !tbaa !308
  %231 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %232 = load float, ptr %231, align 8, !tbaa !309
  %233 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %234 = load <2 x float>, ptr %227, align 4, !tbaa !98
  %235 = load <2 x float>, ptr %228, align 4, !tbaa !98
  %236 = fadd <2 x float> %235, <float -5.000000e-01, float -5.000000e-01>
  %237 = insertelement <2 x float> poison, float %230, i64 0
  %238 = shufflevector <2 x float> %237, <2 x float> poison, <2 x i32> zeroinitializer
  %239 = insertelement <2 x float> poison, float %232, i64 0
  %240 = shufflevector <2 x float> %239, <2 x float> poison, <2 x i32> zeroinitializer
  %241 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %236, <2 x float> %238, <2 x float> %240)
  %242 = fadd <2 x float> %241, <float -5.000000e-01, float -5.000000e-01>
  %243 = fmul <2 x float> %234, %242
  store <2 x float> %243, ptr %228, align 4, !tbaa !98
  %244 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %245 = load float, ptr %244, align 4, !tbaa !310
  %246 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %247 = load float, ptr %246, align 4, !tbaa !127
  %248 = fadd float %247, -5.000000e-01
  %249 = call float @llvm.fmuladd.f32(float %248, float %230, float %232)
  %250 = fadd float %249, -5.000000e-01
  %251 = fmul float %245, %250
  store float %251, ptr %246, align 4, !tbaa !127
  %252 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %253 = load i16, ptr %252, align 2, !tbaa !180
  %254 = and i16 %253, 1024
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %226
  %257 = extractelement <2 x float> %243, i64 0
  %258 = fcmp olt float %257, 0.000000e+00
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store float 0.000000e+00, ptr %228, align 4, !tbaa !181
  br label %260

260:                                              ; preds = %259, %256
  %261 = phi float [ 0.000000e+00, %259 ], [ %257, %256 ]
  %262 = extractelement <2 x float> %243, i64 1
  %263 = fcmp olt float %262, 0.000000e+00
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store float 0.000000e+00, ptr %233, align 8, !tbaa !182
  br label %265

265:                                              ; preds = %264, %260
  %266 = phi float [ 0.000000e+00, %264 ], [ %262, %260 ]
  %267 = fcmp olt float %251, 0.000000e+00
  %268 = insertelement <2 x float> poison, float %261, i64 0
  %269 = insertelement <2 x float> %268, float %266, i64 1
  br i1 %267, label %270, label %271

270:                                              ; preds = %265
  store float 0.000000e+00, ptr %246, align 4, !tbaa !127
  br label %271

271:                                              ; preds = %265, %270, %226
  %272 = phi float [ %251, %265 ], [ 0.000000e+00, %270 ], [ %251, %226 ]
  %273 = phi <2 x float> [ %269, %265 ], [ %269, %270 ], [ %243, %226 ]
  %274 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %275 = load float, ptr %274, align 8, !tbaa !311
  %276 = fcmp une float %275, 1.000000e+00
  br i1 %276, label %277, label %287

277:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %278 = getelementptr inbounds float, ptr %7, i64 1
  %279 = getelementptr inbounds float, ptr %7, i64 2
  %280 = extractelement <2 x float> %273, i64 0
  %281 = extractelement <2 x float> %273, i64 1
  call void @rgb_to_hsv(float noundef %280, float noundef %281, float noundef %272, ptr noundef nonnull %7, ptr noundef nonnull %278, ptr noundef nonnull %279) #16
  %282 = load float, ptr %274, align 8, !tbaa !311
  %283 = load float, ptr %278, align 4, !tbaa !98
  %284 = fmul float %282, %283
  store float %284, ptr %278, align 4, !tbaa !98
  %285 = load float, ptr %7, align 4, !tbaa !98
  %286 = load float, ptr %279, align 4, !tbaa !98
  call void @hsv_to_rgb(float noundef %285, float noundef %284, float noundef %286, ptr noundef nonnull %228, ptr noundef nonnull %233, ptr noundef nonnull %246) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %287

287:                                              ; preds = %277, %271
  %288 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float 1.000000e+00, ptr %288, align 8, !tbaa !128
  %289 = or disjoint i32 %224, 1
  br label %309

290:                                              ; preds = %222
  %291 = load float, ptr %2, align 8, !tbaa !126
  %292 = fadd float %291, -5.000000e-01
  %293 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %294 = load float, ptr %293, align 4, !tbaa !308
  %295 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %296 = load float, ptr %295, align 8, !tbaa !309
  %297 = call float @llvm.fmuladd.f32(float %292, float %294, float %296)
  %298 = fadd float %297, -5.000000e-01
  store float %298, ptr %2, align 8, !tbaa !126
  %299 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %300 = load i16, ptr %299, align 2, !tbaa !180
  %301 = and i16 %300, 1024
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %290
  %304 = fcmp olt float %298, 0.000000e+00
  br i1 %304, label %305, label %306

305:                                              ; preds = %303
  store float 0.000000e+00, ptr %2, align 8, !tbaa !126
  br label %309

306:                                              ; preds = %303
  %307 = fcmp ogt float %298, 1.000000e+00
  br i1 %307, label %308, label %309

308:                                              ; preds = %306
  store float 1.000000e+00, ptr %2, align 8, !tbaa !126
  br label %309

309:                                              ; preds = %290, %306, %308, %305, %287
  %310 = phi i32 [ %289, %287 ], [ %224, %305 ], [ %224, %308 ], [ %224, %306 ], [ %224, %290 ]
  %311 = sitofp i32 %310 to float
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret float %311
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @mg_distNoiseTex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !340 {
  %4 = load float, ptr %1, align 4, !tbaa !98
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 17
  %10 = load float, ptr %9, align 4, !tbaa !341
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !306
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %15 = load i16, ptr %14, align 2, !tbaa !342
  %16 = sext i16 %15 to i32
  %17 = tail call float @mg_VLNoise(float noundef %4, float noundef %6, float noundef %8, float noundef %10, i32 noundef %13, i32 noundef %16) #16
  store float %17, ptr %2, align 8, !tbaa !126
  %18 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %23 = load float, ptr %22, align 8, !tbaa !307
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %25 = load float, ptr %24, align 8, !tbaa !228
  %26 = fdiv float %23, %25
  %27 = load float, ptr %1, align 4, !tbaa !98
  %28 = fadd float %27, %26
  %29 = load float, ptr %5, align 4, !tbaa !98
  %30 = load float, ptr %7, align 4, !tbaa !98
  %31 = load float, ptr %9, align 4, !tbaa !341
  %32 = load i16, ptr %11, align 8, !tbaa !306
  %33 = sext i16 %32 to i32
  %34 = load i16, ptr %14, align 2, !tbaa !342
  %35 = sext i16 %34 to i32
  %36 = tail call float @mg_VLNoise(float noundef %28, float noundef %29, float noundef %30, float noundef %31, i32 noundef %33, i32 noundef %35) #16
  %37 = load ptr, ptr %18, align 8, !tbaa !122
  store float %36, ptr %37, align 4, !tbaa !98
  %38 = load float, ptr %1, align 4, !tbaa !98
  %39 = load float, ptr %5, align 4, !tbaa !98
  %40 = fadd float %26, %39
  %41 = load float, ptr %7, align 4, !tbaa !98
  %42 = load float, ptr %9, align 4, !tbaa !341
  %43 = load i16, ptr %11, align 8, !tbaa !306
  %44 = sext i16 %43 to i32
  %45 = load i16, ptr %14, align 2, !tbaa !342
  %46 = sext i16 %45 to i32
  %47 = tail call float @mg_VLNoise(float noundef %38, float noundef %40, float noundef %41, float noundef %42, i32 noundef %44, i32 noundef %46) #16
  %48 = load ptr, ptr %18, align 8, !tbaa !122
  %49 = getelementptr inbounds float, ptr %48, i64 1
  store float %47, ptr %49, align 4, !tbaa !98
  %50 = load float, ptr %1, align 4, !tbaa !98
  %51 = load float, ptr %5, align 4, !tbaa !98
  %52 = load float, ptr %7, align 4, !tbaa !98
  %53 = fadd float %26, %52
  %54 = load float, ptr %9, align 4, !tbaa !341
  %55 = load i16, ptr %11, align 8, !tbaa !306
  %56 = sext i16 %55 to i32
  %57 = load i16, ptr %14, align 2, !tbaa !342
  %58 = sext i16 %57 to i32
  %59 = tail call float @mg_VLNoise(float noundef %50, float noundef %51, float noundef %53, float noundef %54, i32 noundef %56, i32 noundef %58) #16
  %60 = load ptr, ptr %18, align 8, !tbaa !122
  %61 = getelementptr inbounds float, ptr %60, i64 2
  store float %59, ptr %61, align 4, !tbaa !98
  tail call fastcc void @tex_normal_derivate(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %62 = load float, ptr %2, align 8, !tbaa !126
  br label %63

63:                                               ; preds = %21, %3
  %64 = phi float [ %62, %21 ], [ %17, %3 ]
  %65 = phi float [ 2.000000e+00, %21 ], [ 0.000000e+00, %3 ]
  %66 = fadd float %64, -5.000000e-01
  %67 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %68 = load float, ptr %67, align 4, !tbaa !308
  %69 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %70 = load float, ptr %69, align 8, !tbaa !309
  %71 = tail call float @llvm.fmuladd.f32(float %66, float %68, float %70)
  %72 = fadd float %71, -5.000000e-01
  store float %72, ptr %2, align 8, !tbaa !126
  %73 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %74 = load i16, ptr %73, align 2, !tbaa !180
  %75 = and i16 %74, 1024
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = fcmp olt float %72, 0.000000e+00
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = fcmp ogt float %72, 1.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %79, %77
  %82 = phi float [ 0.000000e+00, %77 ], [ 1.000000e+00, %79 ]
  store float %82, ptr %2, align 8, !tbaa !126
  br label %83

83:                                               ; preds = %81, %79, %63
  ret float %65
}

; Function Attrs: optsize
declare i32 @pointdensitytex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @voxeldatatex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ocean_texture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tex_normal_derivate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !343 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %5 = load i16, ptr %4, align 2, !tbaa !180
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = load float, ptr %1, align 8, !tbaa !126
  %12 = call zeroext i8 @do_colorband(ptr noundef %10, float noundef %11, ptr noundef nonnull %3) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %64

15:                                               ; preds = %8
  %16 = load float, ptr %3, align 16, !tbaa !98
  %17 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !98
  %19 = fadd float %16, %18
  %20 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !98
  %22 = fadd float %19, %21
  %23 = load ptr, ptr %9, align 8, !tbaa !230
  %24 = getelementptr inbounds %struct.TexResult, ptr %1, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = load float, ptr %25, align 4, !tbaa !98
  %27 = call zeroext i8 @do_colorband(ptr noundef %23, float noundef %26, ptr noundef nonnull %3) #16
  %28 = load <4 x float>, ptr %3, align 16
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %30 = load ptr, ptr %9, align 8, !tbaa !230
  %31 = load ptr, ptr %24, align 8, !tbaa !122
  %32 = getelementptr inbounds float, ptr %31, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !98
  %34 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %35 = load float, ptr %17, align 4, !tbaa !98
  %36 = call zeroext i8 @do_colorband(ptr noundef %30, float noundef %33, ptr noundef nonnull %3) #16
  %37 = load float, ptr %3, align 16, !tbaa !98
  %38 = load float, ptr %17, align 4, !tbaa !98
  %39 = insertelement <2 x float> poison, float %35, i64 0
  %40 = insertelement <2 x float> %39, float %37, i64 1
  %41 = insertelement <2 x float> %34, float %38, i64 1
  %42 = fadd <2 x float> %40, %41
  %43 = load float, ptr %20, align 8, !tbaa !98
  %44 = insertelement <2 x float> %29, float %43, i64 1
  %45 = fadd <2 x float> %42, %44
  %46 = load ptr, ptr %9, align 8, !tbaa !230
  %47 = load ptr, ptr %24, align 8, !tbaa !122
  %48 = getelementptr inbounds float, ptr %47, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !98
  %50 = call zeroext i8 @do_colorband(ptr noundef %46, float noundef %49, ptr noundef nonnull %3) #16
  %51 = load float, ptr %3, align 16, !tbaa !98
  %52 = load float, ptr %17, align 4, !tbaa !98
  %53 = fadd float %51, %52
  %54 = load float, ptr %20, align 8, !tbaa !98
  %55 = fadd float %53, %54
  %56 = load ptr, ptr %24, align 8, !tbaa !122
  %57 = insertelement <2 x float> poison, float %22, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = fsub <2 x float> %58, %45
  %60 = fdiv <2 x float> %59, <float 3.000000e+00, float 3.000000e+00>
  store <2 x float> %60, ptr %56, align 4, !tbaa !98
  %61 = fsub float %22, %55
  %62 = fdiv float %61, 3.000000e+00
  %63 = getelementptr inbounds float, ptr %56, i64 2
  store float %62, ptr %63, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %78

64:                                               ; preds = %14, %2
  %65 = load float, ptr %1, align 8, !tbaa !126
  %66 = getelementptr inbounds %struct.TexResult, ptr %1, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  %68 = load float, ptr %67, align 4, !tbaa !98
  %69 = fsub float %65, %68
  store float %69, ptr %67, align 4, !tbaa !98
  %70 = load float, ptr %1, align 8, !tbaa !126
  %71 = getelementptr inbounds float, ptr %67, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !98
  %73 = fsub float %70, %72
  store float %73, ptr %71, align 4, !tbaa !98
  %74 = load float, ptr %1, align 8, !tbaa !126
  %75 = getelementptr inbounds float, ptr %67, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !98
  %77 = fsub float %74, %76
  store float %77, ptr %75, align 4, !tbaa !98
  br label %78

78:                                               ; preds = %15, %64
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @wood_int(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !344 {
  %5 = alloca [3 x ptr], align 16
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !342
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %9 = load i16, ptr %8, align 2, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  store ptr @tex_sin, ptr %5, align 16, !tbaa !34
  %10 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr @tex_saw, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr @tex_tri, ptr %11, align 16, !tbaa !34
  %12 = icmp ugt i16 %7, 2
  %13 = select i1 %12, i16 0, i16 %7
  switch i16 %9, label %76 [
    i16 0, label %14
    i16 1, label %22
    i16 2, label %32
    i16 3, label %53
  ]

14:                                               ; preds = %4
  %15 = sext i16 %13 to i64
  %16 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = fadd float %1, %2
  %19 = fadd float %18, %3
  %20 = fmul float %19, 1.000000e+01
  %21 = tail call float %17(float noundef %20) #16
  br label %76

22:                                               ; preds = %4
  %23 = sext i16 %13 to i64
  %24 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = fmul float %2, %2
  %27 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %27)
  %29 = tail call float @llvm.sqrt.f32(float %28)
  %30 = fmul float %29, 2.000000e+01
  %31 = tail call float %25(float noundef %30) #16
  br label %76

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !315
  %35 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !228
  %37 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %38 = load i16, ptr %37, align 2, !tbaa !305
  %39 = icmp ne i16 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %42 = load i16, ptr %41, align 8, !tbaa !306
  %43 = sext i16 %42 to i32
  %44 = tail call float @BLI_gNoise(float noundef %36, float noundef %1, float noundef %2, float noundef %3, i32 noundef %40, i32 noundef %43) #16
  %45 = fmul float %34, %44
  %46 = sext i16 %13 to i64
  %47 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = fadd float %1, %2
  %50 = fadd float %49, %3
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 1.000000e+01, float %45)
  %52 = tail call float %48(float noundef %51) #16
  br label %76

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !315
  %56 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !228
  %58 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %59 = load i16, ptr %58, align 2, !tbaa !305
  %60 = icmp ne i16 %59, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %63 = load i16, ptr %62, align 8, !tbaa !306
  %64 = sext i16 %63 to i32
  %65 = tail call float @BLI_gNoise(float noundef %57, float noundef %1, float noundef %2, float noundef %3, i32 noundef %61, i32 noundef %64) #16
  %66 = fmul float %55, %65
  %67 = sext i16 %13 to i64
  %68 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = fmul float %2, %2
  %71 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %71)
  %73 = tail call float @llvm.sqrt.f32(float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %73, float 2.000000e+01, float %66)
  %75 = tail call float %69(float noundef %74) #16
  br label %76

76:                                               ; preds = %4, %22, %53, %32, %14
  %77 = phi float [ %21, %14 ], [ %31, %22 ], [ %52, %32 ], [ %75, %53 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret float %77
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @tex_sin(float noundef %0) #12 !PGOFuncName !345 {
  %2 = tail call float @sinf(float noundef %0) #16
  %3 = fpext float %2 to double
  %4 = tail call double @llvm.fmuladd.f64(double %3, double 5.000000e-01, double 5.000000e-01)
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal float @tex_saw(float noundef %0) #4 !PGOFuncName !346 {
  %2 = fdiv float %0, 0x401921FB60000000
  %3 = fptosi float %2 to i32
  %4 = sitofp i32 %3 to float
  %5 = fneg float %4
  %6 = tail call float @llvm.fmuladd.f32(float %5, float 0x401921FB60000000, float %0)
  %7 = fcmp olt float %6, 0.000000e+00
  %8 = fadd float %6, 0x401921FB60000000
  %9 = select i1 %7, float %8, float %6
  %10 = fdiv float %9, 0x401921FB60000000
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @tex_tri(float noundef %0) #4 !PGOFuncName !347 {
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FC45F3060000000, float 5.000000e-01)
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fneg float %0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FC45F3060000000, float %3)
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %6, float -2.000000e+00, float 1.000000e+00)
  ret float %7
}

; Function Attrs: optsize
declare float @BLI_gNoise(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @marble_int(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !348 {
  %5 = alloca [3 x ptr], align 16
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !342
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %9 = load i16, ptr %8, align 2, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  store ptr @tex_sin, ptr %5, align 16, !tbaa !34
  %10 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr @tex_saw, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr @tex_tri, ptr %11, align 16, !tbaa !34
  %12 = fadd float %1, %2
  %13 = fadd float %12, %3
  %14 = fmul float %13, 5.000000e+00
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !315
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !228
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %20 = load i16, ptr %19, align 4, !tbaa !304
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %23 = load i16, ptr %22, align 2, !tbaa !305
  %24 = icmp ne i16 %23, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %27 = load i16, ptr %26, align 8, !tbaa !306
  %28 = sext i16 %27 to i32
  %29 = tail call float @BLI_gTurbulence(float noundef %18, float noundef %1, float noundef %2, float noundef %3, i32 noundef %21, i32 noundef %25, i32 noundef %28) #16
  %30 = tail call float @llvm.fmuladd.f32(float %16, float %29, float %14)
  %31 = icmp sgt i16 %9, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %4
  %33 = icmp ugt i16 %7, 2
  %34 = select i1 %33, i16 0, i16 %7
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = tail call float %37(float noundef %30) #16
  switch i16 %9, label %44 [
    i16 1, label %41
    i16 2, label %39
  ]

39:                                               ; preds = %32
  %40 = tail call float @sqrtf(float noundef %38) #16
  br label %41

41:                                               ; preds = %32, %39
  %42 = phi float [ %40, %39 ], [ %38, %32 ]
  %43 = tail call float @sqrtf(float noundef %42) #16
  br label %44

44:                                               ; preds = %41, %32, %4
  %45 = phi float [ %30, %4 ], [ %38, %32 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret float %45
}

; Function Attrs: optsize
declare i32 @BLI_rng_thread_rand(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_MultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_fBm(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_RidgedMultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_HybridMultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_HeteroTerrain(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @voronoi(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cellNoiseV(float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @mg_VLNoise(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cubemap_ob(ptr noundef %0, ptr noundef readonly %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !349 {
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  %9 = icmp eq ptr %1, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %1) #17
  %11 = icmp eq ptr %0, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #16
  br label %14

14:                                               ; preds = %12, %10
  %15 = load float, ptr %8, align 4, !tbaa !98
  %16 = call float @llvm.fabs.f32(float %15)
  %17 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %18 = load <2 x float>, ptr %17, align 4, !tbaa !98
  %19 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %18)
  %20 = extractelement <2 x float> %19, i64 1
  %21 = fcmp ult float %20, %16
  %22 = extractelement <2 x float> %19, i64 0
  %23 = fcmp ult float %20, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = fcmp ult float %22, %16
  %27 = fcmp ult float %22, %20
  %28 = or i1 %26, %27
  %29 = select i1 %28, float %3, float %2
  %30 = select i1 %28, i32 2, i32 1
  br label %31

31:                                               ; preds = %25, %14
  %32 = phi float [ %2, %14 ], [ %29, %25 ]
  %33 = phi float [ %3, %14 ], [ %4, %25 ]
  %34 = phi i32 [ 0, %14 ], [ %30, %25 ]
  %35 = fadd float %32, 1.000000e+00
  %36 = fmul float %35, 5.000000e-01
  store float %36, ptr %5, align 4, !tbaa !98
  %37 = fadd float %33, 1.000000e+00
  %38 = fmul float %37, 5.000000e-01
  store float %38, ptr %6, align 4, !tbaa !98
  br label %39

39:                                               ; preds = %31, %7
  %40 = phi i32 [ 0, %7 ], [ %34, %31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cubemap_glob(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !PGOFuncName !350 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  store float %1, ptr %7, align 4, !tbaa !98
  %10 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %2, ptr %10, align 4, !tbaa !98
  %11 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %3, ptr %11, align 4, !tbaa !98
  br label %13

12:                                               ; preds = %6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %0) #17
  br label %13

13:                                               ; preds = %12, %9
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %7) #16
  %14 = load float, ptr %7, align 4, !tbaa !98
  %15 = call float @llvm.fabs.f32(float %14)
  %16 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %17 = load <2 x float>, ptr %16, align 4, !tbaa !98
  %18 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %17)
  %19 = extractelement <2 x float> %18, i64 1
  %20 = fcmp ult float %19, %15
  %21 = extractelement <2 x float> %18, i64 0
  %22 = fcmp ult float %19, %21
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = fcmp ult float %21, %15
  %26 = fcmp ult float %21, %19
  %27 = or i1 %25, %26
  %28 = select i1 %27, float %2, float %1
  %29 = select i1 %27, i32 2, i32 1
  br label %30

30:                                               ; preds = %24, %13
  %31 = phi float [ %1, %13 ], [ %28, %24 ]
  %32 = phi float [ %2, %13 ], [ %3, %24 ]
  %33 = phi i32 [ 0, %13 ], [ %29, %24 ]
  %34 = fadd float %31, 1.000000e+00
  %35 = fmul float %34, 5.000000e-01
  store float %35, ptr %4, align 4, !tbaa !98
  %36 = fadd float %32, 1.000000e+00
  %37 = fmul float %36, 5.000000e-01
  store float %37, ptr %5, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cubemap(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !PGOFuncName !351 {
  %9 = alloca [4 x i32], align 16
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) @__const.cubemap.proj, i64 16, i1 false)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %101, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 6
  %14 = load i8, ptr %13, align 8, !tbaa !352
  %15 = and i8 %14, 112
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !354
  %19 = icmp eq ptr %18, null
  br i1 %19, label %99, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VertRen, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !355
  %23 = icmp eq ptr %22, null
  br i1 %23, label %99, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %25 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !357
  %27 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !355
  %29 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !358
  %31 = getelementptr inbounds %struct.VertRen, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !355
  %33 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %22, ptr noundef %28, ptr noundef %32) #16
  %34 = load float, ptr %10, align 4, !tbaa !98
  %35 = call float @llvm.fabs.f32(float %34)
  %36 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %37 = load <2 x float>, ptr %36, align 4, !tbaa !98
  %38 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %37)
  %39 = extractelement <2 x float> %38, i64 1
  %40 = fcmp olt float %35, %39
  %41 = extractelement <2 x float> %38, i64 0
  %42 = fcmp olt float %41, %39
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load i8, ptr %13, align 8, !tbaa !352
  %46 = or i8 %45, 16
  br label %56

47:                                               ; preds = %24
  %48 = fcmp olt float %35, %41
  %49 = fcmp olt float %39, %41
  %50 = and i1 %48, %49
  %51 = load i8, ptr %13, align 8, !tbaa !352
  br i1 %50, label %52, label %54

52:                                               ; preds = %47
  %53 = or i8 %51, 32
  br label %56

54:                                               ; preds = %47
  %55 = or i8 %51, 64
  br label %56

56:                                               ; preds = %52, %54, %44
  %57 = phi i8 [ %53, %52 ], [ %55, %54 ], [ %46, %44 ]
  store i8 %57, ptr %13, align 8, !tbaa !352
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  br label %58

58:                                               ; preds = %56, %12
  %59 = phi i8 [ %57, %56 ], [ %14, %12 ]
  %60 = icmp eq ptr %0, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  %63 = load i8, ptr %62, align 8, !tbaa !205
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %64
  store i32 16, ptr %65, align 4, !tbaa !172
  %66 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  %67 = load i8, ptr %66, align 1, !tbaa !206
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %68
  store i32 32, ptr %69, align 4, !tbaa !172
  %70 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  %71 = load i8, ptr %70, align 2, !tbaa !207
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %72
  store i32 64, ptr %73, align 4, !tbaa !172
  %74 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %75 = load i32, ptr %74, align 4, !tbaa !172
  br label %76

76:                                               ; preds = %61, %58
  %77 = phi i32 [ %75, %61 ], [ 16, %58 ]
  %78 = zext i8 %59 to i32
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = fadd float %3, 1.000000e+00
  %83 = fmul float %82, 5.000000e-01
  store float %83, ptr %6, align 4, !tbaa !98
  %84 = fadd float %4, 1.000000e+00
  %85 = fmul float %84, 5.000000e-01
  store float %85, ptr %7, align 4, !tbaa !98
  br label %103

86:                                               ; preds = %76
  %87 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %88 = load i32, ptr %87, align 8, !tbaa !172
  %89 = and i32 %88, %78
  %90 = icmp eq i32 %89, 0
  %91 = fadd float %5, 1.000000e+00
  %92 = fmul float %91, 5.000000e-01
  br i1 %90, label %96, label %93

93:                                               ; preds = %86
  %94 = fadd float %3, 1.000000e+00
  %95 = fmul float %94, 5.000000e-01
  store float %95, ptr %6, align 4, !tbaa !98
  store float %92, ptr %7, align 4, !tbaa !98
  br label %103

96:                                               ; preds = %86
  %97 = fadd float %4, 1.000000e+00
  %98 = fmul float %97, 5.000000e-01
  store float %98, ptr %6, align 4, !tbaa !98
  store float %92, ptr %7, align 4, !tbaa !98
  br label %103

99:                                               ; preds = %17, %20
  %100 = tail call fastcc i32 @cubemap_glob(ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) #17, !range !227
  br label %103

101:                                              ; preds = %8
  %102 = tail call fastcc i32 @cubemap_glob(ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7) #17, !range !227
  br label %103

103:                                              ; preds = %99, %93, %96, %81, %101
  %104 = phi i32 [ %102, %101 ], [ %100, %99 ], [ 2, %96 ], [ 1, %93 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  ret i32 %104
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !359 {
  %4 = load float, ptr %2, align 4, !tbaa !98
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !98
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !172
  store i32 %19, ptr %1, align 4, !tbaa !172
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 1088}
!39 = !{!"Render", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 92, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102, !36, i64 104, !35, i64 112, !35, i64 120, !42, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !43, i64 156, !44, i64 172, !45, i64 188, !45, i64 192, !45, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !45, i64 544, !45, i64 548, !35, i64 552, !36, i64 560, !36, i64 816, !35, i64 1072, !36, i64 1080, !35, i64 1088, !35, i64 1096, !46, i64 1104, !53, i64 5088, !35, i64 5616, !40, i64 5624, !40, i64 5628, !42, i64 5632, !35, i64 5648, !35, i64 5656, !35, i64 5664, !35, i64 5672, !45, i64 5680, !35, i64 5688, !42, i64 5696, !45, i64 5712, !45, i64 5716, !40, i64 5720, !40, i64 5724, !40, i64 5728, !40, i64 5732, !40, i64 5736, !35, i64 5744, !42, i64 5752, !42, i64 5768, !42, i64 5784, !35, i64 5800, !42, i64 5808, !40, i64 5824, !35, i64 5832, !35, i64 5840, !35, i64 5848, !35, i64 5856, !35, i64 5864, !42, i64 5872, !35, i64 5888, !42, i64 5896, !42, i64 5912, !35, i64 5928, !35, i64 5936, !35, i64 5944, !35, i64 5952, !35, i64 5960, !35, i64 5968, !35, i64 5976, !35, i64 5984, !35, i64 5992, !35, i64 6000, !35, i64 6008, !35, i64 6016, !35, i64 6024, !35, i64 6032, !35, i64 6040, !35, i64 6048, !35, i64 6056, !55, i64 6064, !35, i64 6216, !35, i64 6224, !35, i64 6232}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!44 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!45 = !{!"float", !36, i64 0}
!46 = !{!"RenderData", !47, i64 0, !35, i64 248, !35, i64 256, !50, i64 264, !51, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !45, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !44, i64 544, !44, i64 560, !43, i64 576, !42, i64 592, !41, i64 608, !41, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !40, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !45, i64 660, !45, i64 664, !41, i64 668, !41, i64 670, !45, i64 672, !45, i64 676, !36, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !45, i64 2528, !45, i64 2532, !41, i64 2536, !41, i64 2538, !45, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !45, i64 2560, !45, i64 2564, !35, i64 2568, !40, i64 2576, !45, i64 2580, !36, i64 2584, !52, i64 2616, !40, i64 3976, !40, i64 3980}
!47 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !41, i64 8, !41, i64 10, !45, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !48, i64 24, !49, i64 184}
!48 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !45, i64 136, !45, i64 140, !35, i64 144, !35, i64 152}
!49 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!50 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!51 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !45, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!52 = !{!"BakeData", !47, i64 0, !36, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !45, i64 1280, !45, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!53 = !{!"World", !54, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !41, i64 504, !41, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!54 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!55 = !{!"RenderStats", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !36, i64 40, !56, i64 48, !56, i64 56, !35, i64 64, !35, i64 72, !36, i64 80, !45, i64 144, !45, i64 148}
!56 = !{!"double", !36, i64 0}
!57 = !{!58, !40, i64 100}
!58 = !{!"Tex", !54, i64 0, !35, i64 120, !45, i64 128, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !59, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!59 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"render_texture.c:init_render_texture"}
!63 = !{!58, !35, i64 352}
!64 = !{!39, !40, i64 1504}
!65 = !{!39, !41, i64 96}
!66 = !{!58, !41, i64 232}
!67 = !{!58, !41, i64 228}
!68 = !{!58, !41, i64 264}
!69 = !{!58, !35, i64 368}
!70 = !{!71, !41, i64 164}
!71 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !41, i64 164, !41, i64 166, !45, i64 168, !45, i64 172, !45, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!72 = !{!73, !36, i64 2090}
!73 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !42, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!74 = !{!39, !40, i64 1624}
!75 = !{!71, !41, i64 166}
!76 = !{!58, !35, i64 336}
!77 = !{!58, !36, i64 408}
!78 = distinct !{!78, !61}
!79 = !{!"render_texture.c:end_render_texture"}
!80 = !{!81, !35, i64 360}
!81 = !{!"bNodeTree", !54, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !42, i64 224, !42, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !41, i64 276, !41, i64 278, !40, i64 280, !40, i64 284, !41, i64 288, !41, i64 290, !40, i64 292, !44, i64 296, !42, i64 312, !42, i64 328, !35, i64 344, !82, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!82 = !{!"bNodeInstanceKey", !40, i64 0}
!83 = !{!39, !36, i64 104}
!84 = !{!"render_texture.c:multitex_nodes_intern"}
!85 = !{!86, !41, i64 130}
!86 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !45, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !36, i64 132, !36, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!87 = !{!88, !35, i64 8}
!88 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !41, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !45, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !45, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !45, i64 1256, !45, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !45, i64 1336, !45, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !45, i64 1428, !36, i64 1432, !36, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!89 = !{!86, !41, i64 2}
!90 = !{!91, !35, i64 48}
!91 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !45, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !43, i64 2436, !92, i64 2456}
!92 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!93 = !{!91, !35, i64 2400}
!94 = !{!86, !36, i64 91}
!95 = !{!86, !35, i64 16}
!96 = !{!86, !35, i64 8}
!97 = !{!86, !41, i64 0}
!98 = !{!45, !45, i64 0}
!99 = !{!"render_texture.c:min_ff"}
!100 = !{!"render_texture.c:copy_v3_v3"}
!101 = !{!39, !40, i64 1620}
!102 = !{!88, !35, i64 0}
!103 = !{!104, !40, i64 536}
!104 = !{!"Material", !54, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !105, i64 224, !106, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !36, i64 362, !36, i64 363, !45, i64 364, !45, i64 368, !41, i64 372, !41, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !36, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !40, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !36, i64 550, !36, i64 551, !41, i64 552, !41, i64 554, !45, i64 556, !45, i64 560, !36, i64 564, !45, i64 580, !45, i64 584, !41, i64 588, !41, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !41, i64 612, !41, i64 614, !45, i64 616, !45, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !41, i64 820, !41, i64 822, !36, i64 824, !36, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !36, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !36, i64 914, !35, i64 920, !42, i64 928}
!105 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!106 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!107 = !{!86, !41, i64 120}
!108 = !{!88, !41, i64 96}
!109 = !{!88, !35, i64 24}
!110 = !{!111, !35, i64 240}
!111 = !{!"ObjectInstanceRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !41, i64 216, !36, i64 220, !36, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !40, i64 264, !35, i64 272, !40, i64 280}
!112 = !{!88, !40, i64 1104}
!113 = !{!36, !36, i64 0}
!114 = !{!88, !40, i64 1096}
!115 = !{!116, !35, i64 40}
!116 = !{!"ShadeInputUV", !36, i64 0, !36, i64 12, !36, i64 24, !35, i64 40}
!117 = distinct !{!117, !61}
!118 = !{!88, !45, i64 428}
!119 = !{!88, !45, i64 1336}
!120 = !{!88, !45, i64 1340}
!121 = !{!88, !45, i64 472}
!122 = !{!123, !35, i64 24}
!123 = !{!"TexResult", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !40, i64 20, !35, i64 24}
!124 = !{!39, !35, i64 6224}
!125 = !{i32 2, i32 0}
!126 = !{!123, !45, i64 0}
!127 = !{!123, !45, i64 12}
!128 = !{!123, !45, i64 16}
!129 = !{!86, !45, i64 180}
!130 = !{!86, !45, i64 164}
!131 = !{!86, !41, i64 6}
!132 = !{!86, !45, i64 184}
!133 = !{!86, !45, i64 188}
!134 = !{!86, !45, i64 172}
!135 = !{!86, !41, i64 128}
!136 = !{!88, !35, i64 32}
!137 = !{!138, !35, i64 16}
!138 = !{!"ObjectRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272}
!139 = !{!104, !40, i64 396}
!140 = !{!86, !45, i64 176}
!141 = !{!123, !40, i64 20}
!142 = !{!86, !45, i64 196}
!143 = !{!86, !45, i64 156}
!144 = !{!88, !45, i64 300}
!145 = !{!86, !45, i64 200}
!146 = !{!88, !45, i64 304}
!147 = !{!86, !45, i64 204}
!148 = !{!88, !45, i64 280}
!149 = !{!86, !45, i64 192}
!150 = !{!88, !45, i64 296}
!151 = !{!86, !45, i64 208}
!152 = !{!88, !40, i64 320}
!153 = !{!86, !45, i64 212}
!154 = !{!88, !45, i64 292}
!155 = !{!86, !45, i64 216}
!156 = !{!88, !45, i64 316}
!157 = !{!86, !45, i64 220}
!158 = !{!88, !45, i64 276}
!159 = !{!39, !45, i64 5248}
!160 = !{!39, !45, i64 5252}
!161 = !{!88, !45, i64 272}
!162 = !{!39, !45, i64 5256}
!163 = distinct !{!163, !61}
!164 = !{!"render_texture.c:compatible_bump_init"}
!165 = !{!166, !45, i64 36}
!166 = !{!"CompatibleBump", !36, i64 0, !36, i64 12, !36, i64 24, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !36, i64 52}
!167 = !{!166, !45, i64 48}
!168 = !{!"render_texture.c:ntap_bump_init"}
!169 = !{!"render_texture.c:compatible_bump_uv_derivs"}
!170 = !{!88, !35, i64 64}
!171 = !{!88, !41, i64 88}
!172 = !{!40, !40, i64 0}
!173 = !{!88, !41, i64 90}
!174 = !{!88, !41, i64 92}
!175 = !{!166, !36, i64 52}
!176 = !{!88, !35, i64 80}
!177 = !{!88, !35, i64 72}
!178 = !{!"render_texture.c:add_v3_v3v3"}
!179 = !{!"render_texture.c:compatible_bump_compute"}
!180 = !{!58, !41, i64 230}
!181 = !{!123, !45, i64 4}
!182 = !{!123, !45, i64 8}
!183 = !{!166, !45, i64 44}
!184 = !{!166, !45, i64 40}
!185 = !{!"render_texture.c:ntap_bump_compute"}
!186 = !{!187, !40, i64 0}
!187 = !{!"NTapBump", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 44, !45, i64 56, !45, i64 60}
!188 = !{!187, !45, i64 60}
!189 = !{!187, !40, i64 4}
!190 = !{!91, !40, i64 16}
!191 = !{!91, !40, i64 20}
!192 = !{!193, !35, i64 1296}
!193 = !{!"Object", !54, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !194, i64 312, !35, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !45, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !195, i64 1304, !195, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !42, i64 1400, !35, i64 1416}
!194 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!195 = !{!"long", !36, i64 0}
!196 = !{!197, !45, i64 1052}
!197 = !{!"DerivedMesh", !198, i64 0, !198, i64 200, !198, i64 400, !198, i64 600, !198, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !45, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!198 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!199 = distinct !{!199, !61}
!200 = distinct !{!200, !61}
!201 = !{!187, !45, i64 56}
!202 = distinct !{!202, !61}
!203 = distinct !{!203, !61}
!204 = !{!"render_texture.c:texco_mapping"}
!205 = !{!86, !36, i64 88}
!206 = !{!86, !36, i64 89}
!207 = !{!86, !36, i64 90}
!208 = !{!58, !40, i64 252}
!209 = !{!"render_texture.c:multitex_mtex"}
!210 = !{!88, !41, i64 1434}
!211 = !{!"render_texture.c:rgb_to_grayscale"}
!212 = !{!"render_texture.c:normalize_v3"}
!213 = !{!"render_texture.c:cross_v3_v3v3"}
!214 = !{!"render_texture.c:mul_v3_fl"}
!215 = !{!"render_texture.c:dot_v3v3"}
!216 = !{!"render_texture.c:madd_v3_v3fl"}
!217 = !{!193, !35, i64 264}
!218 = !{!111, !35, i64 24}
!219 = !{!86, !45, i64 224}
!220 = !{!86, !45, i64 228}
!221 = !{!86, !45, i64 232}
!222 = !{!86, !45, i64 236}
!223 = !{!86, !45, i64 240}
!224 = !{!86, !45, i64 244}
!225 = distinct !{!225, !61}
!226 = !{!"render_texture.c:multitex"}
!227 = !{i32 0, i32 3}
!228 = !{!58, !45, i64 128}
!229 = !{!58, !41, i64 234}
!230 = !{!58, !35, i64 360}
!231 = !{!232, !35, i64 112}
!232 = !{!"HaloRen", !41, i64 0, !41, i64 2, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !36, i64 32, !36, i64 44, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !41, i64 92, !45, i64 96, !40, i64 100, !40, i64 104, !35, i64 112, !35, i64 120}
!233 = !{!232, !45, i64 16}
!234 = !{!104, !41, i64 588}
!235 = !{!232, !35, i64 120}
!236 = !{!86, !45, i64 148}
!237 = !{!232, !45, i64 68}
!238 = !{!232, !45, i64 64}
!239 = !{!232, !45, i64 60}
!240 = !{!"render_texture.c:do_2d_mapping"}
!241 = !{!39, !41, i64 98}
!242 = !{!58, !41, i64 260}
!243 = !{!58, !41, i64 262}
!244 = !{!58, !45, i64 236}
!245 = !{!58, !45, i64 244}
!246 = !{!58, !45, i64 240}
!247 = !{!58, !45, i64 248}
!248 = !{!"render_texture.c:rgb_to_bw"}
!249 = !{!39, !41, i64 5288}
!250 = !{!86, !45, i64 308}
!251 = distinct !{!251, !61}
!252 = !{!"render_texture.c:saacos"}
!253 = !{!254, !41, i64 40}
!254 = !{!"LampRen", !35, i64 0, !35, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !36, i64 28, !41, i64 40, !40, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !40, i64 84, !45, i64 88, !45, i64 92, !36, i64 96, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !45, i64 128, !41, i64 132, !45, i64 136, !45, i64 140, !35, i64 144, !41, i64 152, !41, i64 154, !45, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !36, i64 202, !36, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !35, i64 224, !35, i64 232, !35, i64 240, !36, i64 248, !45, i64 284, !36, i64 288, !45, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !45, i64 500, !35, i64 504, !36, i64 512, !36, i64 520, !40, i64 664, !40, i64 668}
!255 = !{!254, !45, i64 284}
!256 = !{!254, !45, i64 76}
!257 = distinct !{!257, !61}
!258 = !{!259, !41, i64 1244}
!259 = !{!"Image", !54, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !45, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !45, i64 1336, !45, i64 1340, !260, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!260 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!261 = !{!58, !36, i64 322}
!262 = !{!104, !35, i64 120}
!263 = !{!104, !41, i64 128}
!264 = !{!58, !35, i64 120}
!265 = !{!266, !40, i64 680}
!266 = !{!"Scene", !54, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !46, i64 280, !267, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !268, i64 4400, !269, i64 4416, !272, i64 4600, !35, i64 4608, !273, i64 4616, !35, i64 4640, !195, i64 4648, !195, i64 4656, !48, i64 4664, !49, i64 4824, !260, i64 4888, !35, i64 4952}
!267 = !{!"AudioData", !40, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !45, i64 24, !45, i64 28}
!268 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!269 = !{!"GameData", !268, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !270, i64 40, !41, i64 64, !41, i64 66, !45, i64 68, !271, i64 72, !45, i64 128, !45, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!270 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !45, i64 8, !45, i64 12, !35, i64 16}
!271 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !40, i64 40, !45, i64 44, !45, i64 48, !41, i64 52, !41, i64 54}
!272 = !{!"UnitSettings", !45, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!273 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!274 = !{!39, !35, i64 1096}
!275 = !{!39, !40, i64 152}
!276 = !{!39, !40, i64 148}
!277 = distinct !{!277, !61}
!278 = distinct !{!278, !61}
!279 = !{!197, !35, i64 1168}
!280 = !{!197, !35, i64 1184}
!281 = !{!282, !40, i64 0}
!282 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !36, i64 18, !36, i64 19}
!283 = !{!282, !40, i64 4}
!284 = !{!282, !40, i64 8}
!285 = !{!282, !40, i64 12}
!286 = !{!198, !35, i64 0}
!287 = !{!288, !35, i64 96}
!288 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96}
!289 = distinct !{!289, !61}
!290 = !{!104, !45, i64 140}
!291 = !{!88, !45, i64 236}
!292 = !{!104, !45, i64 200}
!293 = !{!104, !45, i64 224}
!294 = !{!"render_texture.c:textured_face_generate_uv"}
!295 = !{!"render_texture.c:zero_v3"}
!296 = !{!"render_texture.c:negate_v3_v3"}
!297 = !{!"render_texture.c:max_fff"}
!298 = !{!"render_texture.c:max_ff"}
!299 = !{!"render_texture.c:len_v3"}
!300 = !{!"render_texture.c:len_v2"}
!301 = !{!"render_texture.c:normalize_v3_v3"}
!302 = !{!"render_texture.c:mul_v3_v3fl"}
!303 = !{!"render_texture.c:clouds"}
!304 = !{!58, !41, i64 220}
!305 = !{!58, !41, i64 222}
!306 = !{!58, !41, i64 224}
!307 = !{!58, !45, i64 288}
!308 = !{!58, !45, i64 140}
!309 = !{!58, !45, i64 136}
!310 = !{!58, !45, i64 156}
!311 = !{!58, !45, i64 144}
!312 = !{!"render_texture.c:wood"}
!313 = !{!"render_texture.c:marble"}
!314 = !{!"render_texture.c:magic"}
!315 = !{!58, !45, i64 132}
!316 = !{!58, !45, i64 148}
!317 = !{!"render_texture.c:blend"}
!318 = !{!"render_texture.c:stucci"}
!319 = !{!"render_texture.c:texnoise"}
!320 = distinct !{!320, !61}
!321 = !{!"render_texture.c:mg_mFractalOrfBmTex"}
!322 = !{!58, !45, i64 192}
!323 = !{!58, !45, i64 168}
!324 = !{!58, !45, i64 172}
!325 = !{!58, !45, i64 176}
!326 = !{ptr @mg_MultiFractal, ptr @mg_fBm}
!327 = !{!"render_texture.c:mg_ridgedOrHybridMFTex"}
!328 = !{!58, !45, i64 180}
!329 = !{!58, !45, i64 184}
!330 = !{ptr @mg_HybridMultiFractal, ptr @mg_RidgedMultiFractal}
!331 = !{!"render_texture.c:mg_HTerrainTex"}
!332 = !{!"render_texture.c:voronoiTex"}
!333 = !{!58, !45, i64 204}
!334 = !{!58, !45, i64 208}
!335 = !{!58, !45, i64 212}
!336 = !{!58, !41, i64 216}
!337 = !{!58, !45, i64 196}
!338 = !{!58, !45, i64 200}
!339 = !{!58, !41, i64 218}
!340 = !{!"render_texture.c:mg_distNoiseTex"}
!341 = !{!58, !45, i64 188}
!342 = !{!58, !41, i64 226}
!343 = !{!"render_texture.c:tex_normal_derivate"}
!344 = !{!"render_texture.c:wood_int"}
!345 = !{!"render_texture.c:tex_sin"}
!346 = !{!"render_texture.c:tex_saw"}
!347 = !{!"render_texture.c:tex_tri"}
!348 = !{!"render_texture.c:marble_int"}
!349 = !{!"render_texture.c:cubemap_ob"}
!350 = !{!"render_texture.c:cubemap_glob"}
!351 = !{!"render_texture.c:cubemap"}
!352 = !{!353, !36, i64 56}
!353 = !{!"VlakRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !40, i64 60}
!354 = !{!353, !35, i64 0}
!355 = !{!356, !35, i64 24}
!356 = !{!"VertRen", !36, i64 0, !36, i64 12, !35, i64 24, !40, i64 32, !45, i64 36, !40, i64 40}
!357 = !{!353, !35, i64 8}
!358 = !{!353, !35, i64 16}
!359 = !{!"render_texture.c:axis_dominant_v3"}
