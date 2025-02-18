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

; Function Attrs: nounwind uwtable
define dso_local void @RE_init_texture_rng() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_rng_threaded_new() #10
  store ptr %1, ptr @random_tex_array, align 8, !tbaa !34
  ret void
}

declare ptr @BLI_rng_threaded_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_exit_texture_rng() local_unnamed_addr #0 {
  %1 = load ptr, ptr @random_tex_array, align 8, !tbaa !34
  tail call void @BLI_rng_threaded_free(ptr noundef %1) #10
  ret void
}

declare void @BLI_rng_threaded_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_render_textures(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %0, null
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %11 = icmp ne ptr %0, null
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  br label %13

13:                                               ; preds = %7, %77
  %14 = phi ptr [ %5, %7 ], [ %78, %77 ]
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %77, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %20) #10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 51
  br i1 %8, label %29, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %9, align 8, !tbaa !61
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %28, %27 ], [ 0, %25 ]
  br i1 %8, label %35, label %31

31:                                               ; preds = %29
  %32 = load i16, ptr %10, align 8, !tbaa !62
  %33 = and i16 %32, 4
  %34 = zext nneg i16 %33 to i32
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %34, %31 ], [ 0, %29 ]
  tail call void @BKE_image_user_frame_calc(ptr noundef nonnull %26, i32 noundef %30, i32 noundef %36) #10
  br label %67

37:                                               ; preds = %22, %18
  %38 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 32
  %39 = load i16, ptr %38, align 8, !tbaa !63
  %40 = icmp eq i16 %39, 10
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 30
  %43 = load i16, ptr %42, align 4, !tbaa !64
  %44 = or i16 %43, 5
  store i16 %44, ptr %42, align 4, !tbaa !64
  %45 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 42
  store i16 2, ptr %45, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 56
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.EnvMap, ptr %47, i64 0, i32 5
  %51 = load i16, ptr %50, align 4, !tbaa !67
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i16 1, ptr %45, align 8, !tbaa !65
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !69
  %56 = icmp ne i8 %55, 0
  %57 = and i1 %11, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, ptr %12, align 8, !tbaa !71
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.EnvMap, ptr %47, i64 0, i32 6
  %64 = load i16, ptr %63, align 2, !tbaa !72
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @BKE_free_envmapdata(ptr noundef nonnull %47) #10
  br label %67

67:                                               ; preds = %66, %62, %58, %54, %41, %37, %35
  %68 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 52
  %69 = load ptr, ptr %68, align 8, !tbaa !73
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Tex, ptr %14, i64 0, i32 61
  %73 = load i8, ptr %72, align 8, !tbaa !74
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = tail call ptr @ntreeTexBeginExecTree(ptr noundef nonnull %69) #10
  br label %77

77:                                               ; preds = %75, %71, %67, %13
  %78 = load ptr, ptr %14, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %13, !llvm.loop !75

80:                                               ; preds = %77, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @end_render_textures(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1, %25
  %8 = phi ptr [ %26, %25 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 61
  %14 = load i8, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 52
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %7
  %26 = load ptr, ptr %8, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %7, !llvm.loop !81

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @multitex_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8, !tbaa !82
  %13 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext %12)
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i8 noundef zeroext %11) unnamed_addr #0 {
  %13 = alloca %struct.MTex, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  br label %112

19:                                               ; preds = %12
  %20 = icmp eq ptr %9, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.MTex, ptr %9, i64 0, i32 19
  %23 = load i16, ptr %22, align 2, !tbaa !83
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i16 [ %23, %21 ], [ %7, %19 ]
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %27 = load i16, ptr %26, align 8, !tbaa !63
  %28 = icmp eq i16 %27, 8
  br i1 %28, label %29, label %110

29:                                               ; preds = %24
  br i1 %20, label %57, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %8, i64 0, i32 6
  tail call fastcc void @do_2d_mapping(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %32, ptr noundef nonnull %33, ptr noundef %2, ptr noundef %3)
  %34 = tail call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %25, ptr noundef %10)
  %35 = getelementptr inbounds %struct.MTex, ptr %9, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !87
  %37 = and i16 %36, 13
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %112, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %43 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %41, ptr noundef nonnull %42, ptr noundef %10) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !88
  %48 = icmp eq ptr %47, null
  %49 = icmp ne i8 %11, 0
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %53 = getelementptr inbounds %struct.ImBuf, ptr %43, i64 0, i32 34
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  tail call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %52, ptr noundef %54) #10
  br label %55

55:                                               ; preds = %51, %45, %39
  %56 = load ptr, ptr %40, align 8, !tbaa !60
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %56, ptr noundef %43, ptr noundef %10) #10
  br label %112

57:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %58 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 10
  store i8 0, ptr %58, align 1, !tbaa !92
  %59 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 5
  store ptr %0, ptr %59, align 8, !tbaa !93
  %60 = getelementptr inbounds %struct.MTex, ptr %13, i64 0, i32 4
  store ptr null, ptr %60, align 8, !tbaa !94
  store i16 1, ptr %13, align 8, !tbaa !95
  %61 = load float, ptr %1, align 4, !tbaa !96
  store float %61, ptr %14, align 4, !tbaa !96
  %62 = getelementptr inbounds float, ptr %1, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !96
  %64 = getelementptr inbounds float, ptr %14, i64 1
  store float %63, ptr %64, align 4, !tbaa !96
  %65 = getelementptr inbounds float, ptr %1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !96
  %67 = getelementptr inbounds float, ptr %14, i64 2
  store float %66, ptr %67, align 4, !tbaa !96
  %68 = icmp ne ptr %2, null
  %69 = icmp ne ptr %3, null
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %57
  %72 = load float, ptr %2, align 4, !tbaa !96
  store float %72, ptr %15, align 4, !tbaa !96
  %73 = getelementptr inbounds float, ptr %2, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !96
  %75 = getelementptr inbounds float, ptr %15, i64 1
  store float %74, ptr %75, align 4, !tbaa !96
  %76 = getelementptr inbounds float, ptr %2, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !96
  %78 = getelementptr inbounds float, ptr %15, i64 2
  store float %77, ptr %78, align 4, !tbaa !96
  %79 = load float, ptr %3, align 4, !tbaa !96
  store float %79, ptr %16, align 4, !tbaa !96
  %80 = getelementptr inbounds float, ptr %3, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !96
  %82 = getelementptr inbounds float, ptr %16, i64 1
  store float %81, ptr %82, align 4, !tbaa !96
  %83 = getelementptr inbounds float, ptr %3, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !96
  br label %89

85:                                               ; preds = %57
  store float 0.000000e+00, ptr %15, align 4, !tbaa !96
  %86 = getelementptr inbounds float, ptr %15, i64 1
  store float 0.000000e+00, ptr %86, align 4, !tbaa !96
  %87 = getelementptr inbounds float, ptr %15, i64 2
  store float 0.000000e+00, ptr %87, align 4, !tbaa !96
  store float 0.000000e+00, ptr %16, align 4, !tbaa !96
  %88 = getelementptr inbounds float, ptr %16, i64 1
  store float 0.000000e+00, ptr %88, align 4, !tbaa !96
  br label %89

89:                                               ; preds = %85, %71
  %90 = phi float [ 0.000000e+00, %85 ], [ %84, %71 ]
  %91 = getelementptr inbounds float, ptr %16, i64 2
  store float %90, ptr %91, align 4, !tbaa !96
  call fastcc void @do_2d_mapping(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %15, ptr noundef nonnull %16)
  %92 = call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %25, ptr noundef %10)
  %93 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %96 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %94, ptr noundef nonnull %95, ptr noundef %10) #10
  %97 = icmp eq ptr %96, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.ImBuf, ptr %96, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !88
  %101 = icmp eq ptr %100, null
  %102 = icmp ne i8 %11, 0
  %103 = and i1 %102, %101
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %106 = getelementptr inbounds %struct.ImBuf, ptr %96, i64 0, i32 34
  %107 = load ptr, ptr %106, align 8, !tbaa !91
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %105, ptr noundef %107) #10
  br label %108

108:                                              ; preds = %104, %98, %89
  %109 = load ptr, ptr %93, align 8, !tbaa !60
  call void @BKE_image_pool_release_ibuf(ptr noundef %109, ptr noundef %96, ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %13) #10
  br label %112

110:                                              ; preds = %24
  %111 = tail call fastcc i32 @multitex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %25, ptr noundef %10)
  br label %112

112:                                              ; preds = %108, %55, %30, %110, %18
  %113 = phi i32 [ 0, %18 ], [ %111, %110 ], [ %34, %55 ], [ %34, %30 ], [ %92, %108 ]
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define dso_local i32 @multitex_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef null, ptr noundef %6, i8 noundef zeroext %7)
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @multitex_ext_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 61
  %7 = load i8, ptr %6, align 8, !tbaa !74
  store i8 0, ptr %6, align 8, !tbaa !74
  %8 = tail call fastcc i32 @multitex_nodes_intern(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %2, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef null, ptr noundef %3, i8 noundef zeroext %4)
  store i8 %7, ptr %6, align 8, !tbaa !74
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @texture_rgb_blend(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  switch i32 %5, label %316 [
    i32 0, label %7
    i32 1, label %28
    i32 8, label %49
    i32 9, label %79
    i32 3, label %132
    i32 2, label %134
    i32 4, label %152
    i32 6, label %184
    i32 5, label %211
    i32 7, label %238
    i32 10, label %262
    i32 11, label %271
    i32 12, label %280
    i32 13, label %289
    i32 15, label %298
    i32 16, label %307
  ]

7:                                                ; preds = %6
  %8 = fmul float %3, %4
  %9 = fsub float 1.000000e+00, %8
  %10 = load float, ptr %1, align 4, !tbaa !96
  %11 = load float, ptr %2, align 4, !tbaa !96
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %12)
  store float %13, ptr %0, align 4, !tbaa !96
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !96
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !96
  %18 = fmul float %9, %17
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %18)
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !96
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !96
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !96
  %25 = fmul float %9, %24
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %22, float %25)
  %27 = getelementptr inbounds float, ptr %0, i64 2
  store float %26, ptr %27, align 4, !tbaa !96
  br label %316

28:                                               ; preds = %6
  %29 = fmul float %3, %4
  %30 = fsub float 1.000000e+00, %29
  %31 = load float, ptr %1, align 4, !tbaa !96
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %30)
  %33 = load float, ptr %2, align 4, !tbaa !96
  %34 = fmul float %32, %33
  store float %34, ptr %0, align 4, !tbaa !96
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !96
  %37 = tail call float @llvm.fmuladd.f32(float %29, float %36, float %30)
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !96
  %40 = fmul float %37, %39
  %41 = getelementptr inbounds float, ptr %0, i64 1
  store float %40, ptr %41, align 4, !tbaa !96
  %42 = getelementptr inbounds float, ptr %1, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !96
  %44 = tail call float @llvm.fmuladd.f32(float %29, float %43, float %30)
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !96
  %47 = fmul float %44, %46
  %48 = getelementptr inbounds float, ptr %0, i64 2
  store float %47, ptr %48, align 4, !tbaa !96
  br label %316

49:                                               ; preds = %6
  %50 = fmul float %3, %4
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, ptr %1, align 4, !tbaa !96
  %53 = fsub float 1.000000e+00, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %53, float %51)
  %55 = load float, ptr %2, align 4, !tbaa !96
  %56 = fsub float 1.000000e+00, %55
  %57 = fneg float %54
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %56, float 1.000000e+00)
  store float %58, ptr %0, align 4, !tbaa !96
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !96
  %61 = fsub float 1.000000e+00, %60
  %62 = tail call float @llvm.fmuladd.f32(float %50, float %61, float %51)
  %63 = getelementptr inbounds float, ptr %2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !96
  %65 = fsub float 1.000000e+00, %64
  %66 = fneg float %62
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %65, float 1.000000e+00)
  %68 = getelementptr inbounds float, ptr %0, i64 1
  store float %67, ptr %68, align 4, !tbaa !96
  %69 = getelementptr inbounds float, ptr %1, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !96
  %71 = fsub float 1.000000e+00, %70
  %72 = tail call float @llvm.fmuladd.f32(float %50, float %71, float %51)
  %73 = getelementptr inbounds float, ptr %2, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !96
  %75 = fsub float 1.000000e+00, %74
  %76 = fneg float %72
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %75, float 1.000000e+00)
  %78 = getelementptr inbounds float, ptr %0, i64 2
  store float %77, ptr %78, align 4, !tbaa !96
  br label %316

79:                                               ; preds = %6
  %80 = fmul float %3, %4
  %81 = fsub float 1.000000e+00, %80
  %82 = load float, ptr %2, align 4, !tbaa !96
  %83 = fcmp olt float %82, 5.000000e-01
  %84 = fmul float %80, 2.000000e+00
  %85 = load float, ptr %1, align 4, !tbaa !96
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
  store float %96, ptr %0, align 4, !tbaa !96
  %97 = getelementptr inbounds float, ptr %2, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !96
  %99 = fcmp olt float %98, 5.000000e-01
  %100 = fmul float %80, 2.000000e+00
  %101 = getelementptr inbounds float, ptr %1, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !96
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
  %113 = phi float [ %111, %106 ], [ %105, %103 ]
  %114 = getelementptr inbounds float, ptr %0, i64 1
  store float %113, ptr %114, align 4, !tbaa !96
  %115 = getelementptr inbounds float, ptr %2, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !96
  %117 = fcmp olt float %116, 5.000000e-01
  %118 = fmul float %80, 2.000000e+00
  %119 = getelementptr inbounds float, ptr %1, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !96
  br i1 %117, label %121, label %125

121:                                              ; preds = %112
  %122 = tail call float @llvm.fmuladd.f32(float %118, float %120, float %81)
  %123 = fmul float %116, %122
  %124 = getelementptr inbounds float, ptr %0, i64 2
  store float %123, ptr %124, align 4, !tbaa !96
  br label %316

125:                                              ; preds = %112
  %126 = fsub float 1.000000e+00, %120
  %127 = tail call float @llvm.fmuladd.f32(float %118, float %126, float %81)
  %128 = fsub float 1.000000e+00, %116
  %129 = fneg float %127
  %130 = tail call float @llvm.fmuladd.f32(float %129, float %128, float 1.000000e+00)
  %131 = getelementptr inbounds float, ptr %0, i64 2
  store float %130, ptr %131, align 4, !tbaa !96
  br label %316

132:                                              ; preds = %6
  %133 = fneg float %3
  br label %134

134:                                              ; preds = %6, %132
  %135 = phi float [ %3, %6 ], [ %133, %132 ]
  %136 = fmul float %135, %4
  %137 = load float, ptr %1, align 4, !tbaa !96
  %138 = load float, ptr %2, align 4, !tbaa !96
  %139 = tail call float @llvm.fmuladd.f32(float %136, float %137, float %138)
  store float %139, ptr %0, align 4, !tbaa !96
  %140 = getelementptr inbounds float, ptr %1, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !96
  %142 = getelementptr inbounds float, ptr %2, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !96
  %144 = tail call float @llvm.fmuladd.f32(float %136, float %141, float %143)
  %145 = getelementptr inbounds float, ptr %0, i64 1
  store float %144, ptr %145, align 4, !tbaa !96
  %146 = getelementptr inbounds float, ptr %1, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !96
  %148 = getelementptr inbounds float, ptr %2, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !96
  %150 = tail call float @llvm.fmuladd.f32(float %136, float %147, float %149)
  %151 = getelementptr inbounds float, ptr %0, i64 2
  store float %150, ptr %151, align 4, !tbaa !96
  br label %316

152:                                              ; preds = %6
  %153 = fmul float %3, %4
  %154 = fsub float 1.000000e+00, %153
  %155 = load float, ptr %1, align 4, !tbaa !96
  %156 = fcmp une float %155, 0.000000e+00
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load float, ptr %2, align 4, !tbaa !96
  %159 = fmul float %153, %158
  %160 = fdiv float %159, %155
  %161 = tail call float @llvm.fmuladd.f32(float %154, float %158, float %160)
  store float %161, ptr %0, align 4, !tbaa !96
  br label %162

162:                                              ; preds = %157, %152
  %163 = getelementptr inbounds float, ptr %1, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !96
  %165 = fcmp une float %164, 0.000000e+00
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = getelementptr inbounds float, ptr %2, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !96
  %169 = fmul float %153, %168
  %170 = fdiv float %169, %164
  %171 = tail call float @llvm.fmuladd.f32(float %154, float %168, float %170)
  %172 = getelementptr inbounds float, ptr %0, i64 1
  store float %171, ptr %172, align 4, !tbaa !96
  br label %173

173:                                              ; preds = %166, %162
  %174 = getelementptr inbounds float, ptr %1, i64 2
  %175 = load float, ptr %174, align 4, !tbaa !96
  %176 = fcmp une float %175, 0.000000e+00
  br i1 %176, label %177, label %316

177:                                              ; preds = %173
  %178 = getelementptr inbounds float, ptr %2, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !96
  %180 = fmul float %153, %179
  %181 = fdiv float %180, %175
  %182 = tail call float @llvm.fmuladd.f32(float %154, float %179, float %181)
  %183 = getelementptr inbounds float, ptr %0, i64 2
  store float %182, ptr %183, align 4, !tbaa !96
  br label %316

184:                                              ; preds = %6
  %185 = fmul float %3, %4
  %186 = fsub float 1.000000e+00, %185
  %187 = load float, ptr %2, align 4, !tbaa !96
  %188 = load float, ptr %1, align 4, !tbaa !96
  %189 = fsub float %188, %187
  %190 = tail call float @llvm.fabs.f32(float %189)
  %191 = fmul float %185, %190
  %192 = tail call float @llvm.fmuladd.f32(float %186, float %187, float %191)
  store float %192, ptr %0, align 4, !tbaa !96
  %193 = getelementptr inbounds float, ptr %2, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !96
  %195 = getelementptr inbounds float, ptr %1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !96
  %197 = fsub float %196, %194
  %198 = tail call float @llvm.fabs.f32(float %197)
  %199 = fmul float %185, %198
  %200 = tail call float @llvm.fmuladd.f32(float %186, float %194, float %199)
  %201 = getelementptr inbounds float, ptr %0, i64 1
  store float %200, ptr %201, align 4, !tbaa !96
  %202 = getelementptr inbounds float, ptr %2, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !96
  %204 = getelementptr inbounds float, ptr %1, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !96
  %206 = fsub float %205, %203
  %207 = tail call float @llvm.fabs.f32(float %206)
  %208 = fmul float %185, %207
  %209 = tail call float @llvm.fmuladd.f32(float %186, float %203, float %208)
  %210 = getelementptr inbounds float, ptr %0, i64 2
  store float %209, ptr %210, align 4, !tbaa !96
  br label %316

211:                                              ; preds = %6
  %212 = fmul float %3, %4
  %213 = fsub float 1.000000e+00, %212
  %214 = load float, ptr %2, align 4, !tbaa !96
  %215 = load float, ptr %1, align 4, !tbaa !96
  %216 = fcmp olt float %214, %215
  %217 = select i1 %216, float %214, float %215
  %218 = fmul float %213, %214
  %219 = tail call float @llvm.fmuladd.f32(float %217, float %212, float %218)
  store float %219, ptr %0, align 4, !tbaa !96
  %220 = getelementptr inbounds float, ptr %2, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !96
  %222 = getelementptr inbounds float, ptr %1, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !96
  %224 = fcmp olt float %221, %223
  %225 = select i1 %224, float %221, float %223
  %226 = fmul float %213, %221
  %227 = tail call float @llvm.fmuladd.f32(float %225, float %212, float %226)
  %228 = getelementptr inbounds float, ptr %0, i64 1
  store float %227, ptr %228, align 4, !tbaa !96
  %229 = getelementptr inbounds float, ptr %2, i64 2
  %230 = load float, ptr %229, align 4, !tbaa !96
  %231 = getelementptr inbounds float, ptr %1, i64 2
  %232 = load float, ptr %231, align 4, !tbaa !96
  %233 = fcmp olt float %230, %232
  %234 = select i1 %233, float %230, float %232
  %235 = fmul float %213, %230
  %236 = tail call float @llvm.fmuladd.f32(float %234, float %212, float %235)
  %237 = getelementptr inbounds float, ptr %0, i64 2
  store float %236, ptr %237, align 4, !tbaa !96
  br label %316

238:                                              ; preds = %6
  %239 = fmul float %3, %4
  %240 = load float, ptr %1, align 4, !tbaa !96
  %241 = fmul float %239, %240
  %242 = load float, ptr %2, align 4, !tbaa !96
  %243 = fcmp ogt float %241, %242
  %244 = select i1 %243, float %241, float %242
  store float %244, ptr %0, align 4, !tbaa !96
  %245 = getelementptr inbounds float, ptr %1, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !96
  %247 = fmul float %239, %246
  %248 = getelementptr inbounds float, ptr %2, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !96
  %250 = fcmp ogt float %247, %249
  %251 = getelementptr inbounds float, ptr %0, i64 1
  %252 = select i1 %250, float %247, float %249
  store float %252, ptr %251, align 4, !tbaa !96
  %253 = getelementptr inbounds float, ptr %1, i64 2
  %254 = load float, ptr %253, align 4, !tbaa !96
  %255 = fmul float %239, %254
  %256 = getelementptr inbounds float, ptr %2, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !96
  %258 = fcmp ogt float %255, %257
  %259 = getelementptr inbounds float, ptr %0, i64 2
  br i1 %258, label %260, label %261

260:                                              ; preds = %238
  store float %255, ptr %259, align 4, !tbaa !96
  br label %316

261:                                              ; preds = %238
  store float %257, ptr %259, align 4, !tbaa !96
  br label %316

262:                                              ; preds = %6
  %263 = fmul float %3, %4
  %264 = load float, ptr %2, align 4, !tbaa !96
  store float %264, ptr %0, align 4, !tbaa !96
  %265 = getelementptr inbounds float, ptr %2, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !96
  %267 = getelementptr inbounds float, ptr %0, i64 1
  store float %266, ptr %267, align 4, !tbaa !96
  %268 = getelementptr inbounds float, ptr %2, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !96
  %270 = getelementptr inbounds float, ptr %0, i64 2
  store float %269, ptr %270, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 12, ptr noundef nonnull %0, float noundef %263, ptr noundef %1) #10
  br label %316

271:                                              ; preds = %6
  %272 = fmul float %3, %4
  %273 = load float, ptr %2, align 4, !tbaa !96
  store float %273, ptr %0, align 4, !tbaa !96
  %274 = getelementptr inbounds float, ptr %2, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !96
  %276 = getelementptr inbounds float, ptr %0, i64 1
  store float %275, ptr %276, align 4, !tbaa !96
  %277 = getelementptr inbounds float, ptr %2, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !96
  %279 = getelementptr inbounds float, ptr %0, i64 2
  store float %278, ptr %279, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 13, ptr noundef nonnull %0, float noundef %272, ptr noundef %1) #10
  br label %316

280:                                              ; preds = %6
  %281 = fmul float %3, %4
  %282 = load float, ptr %2, align 4, !tbaa !96
  store float %282, ptr %0, align 4, !tbaa !96
  %283 = getelementptr inbounds float, ptr %2, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !96
  %285 = getelementptr inbounds float, ptr %0, i64 1
  store float %284, ptr %285, align 4, !tbaa !96
  %286 = getelementptr inbounds float, ptr %2, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !96
  %288 = getelementptr inbounds float, ptr %0, i64 2
  store float %287, ptr %288, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 14, ptr noundef nonnull %0, float noundef %281, ptr noundef %1) #10
  br label %316

289:                                              ; preds = %6
  %290 = fmul float %3, %4
  %291 = load float, ptr %2, align 4, !tbaa !96
  store float %291, ptr %0, align 4, !tbaa !96
  %292 = getelementptr inbounds float, ptr %2, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !96
  %294 = getelementptr inbounds float, ptr %0, i64 1
  store float %293, ptr %294, align 4, !tbaa !96
  %295 = getelementptr inbounds float, ptr %2, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !96
  %297 = getelementptr inbounds float, ptr %0, i64 2
  store float %296, ptr %297, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 15, ptr noundef nonnull %0, float noundef %290, ptr noundef %1) #10
  br label %316

298:                                              ; preds = %6
  %299 = fmul float %3, %4
  %300 = load float, ptr %2, align 4, !tbaa !96
  store float %300, ptr %0, align 4, !tbaa !96
  %301 = getelementptr inbounds float, ptr %2, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !96
  %303 = getelementptr inbounds float, ptr %0, i64 1
  store float %302, ptr %303, align 4, !tbaa !96
  %304 = getelementptr inbounds float, ptr %2, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !96
  %306 = getelementptr inbounds float, ptr %0, i64 2
  store float %305, ptr %306, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 16, ptr noundef nonnull %0, float noundef %299, ptr noundef %1) #10
  br label %316

307:                                              ; preds = %6
  %308 = fmul float %3, %4
  %309 = load float, ptr %2, align 4, !tbaa !96
  store float %309, ptr %0, align 4, !tbaa !96
  %310 = getelementptr inbounds float, ptr %2, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !96
  %312 = getelementptr inbounds float, ptr %0, i64 1
  store float %311, ptr %312, align 4, !tbaa !96
  %313 = getelementptr inbounds float, ptr %2, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !96
  %315 = getelementptr inbounds float, ptr %0, i64 2
  store float %314, ptr %315, align 4, !tbaa !96
  tail call void @ramp_blend(i32 noundef 17, ptr noundef nonnull %0, float noundef %308, ptr noundef %1) #10
  br label %316

316:                                              ; preds = %260, %261, %173, %177, %121, %125, %6, %307, %298, %289, %280, %271, %262, %211, %184, %134, %49, %28, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @texture_value_blend(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = fcmp olt float %3, 0.000000e+00
  %7 = tail call float @llvm.fabs.f32(float %3)
  %8 = fmul float %7, %2
  %9 = fsub float 1.000000e+00, %8
  %10 = select i1 %6, float %8, float %9
  %11 = select i1 %6, float %9, float %8
  switch i32 %4, label %83 [
    i32 0, label %12
    i32 1, label %15
    i32 8, label %19
    i32 9, label %26
    i32 3, label %39
    i32 2, label %41
    i32 4, label %44
    i32 6, label %50
    i32 5, label %55
    i32 7, label %60
    i32 15, label %64
    i32 16, label %74
  ]

12:                                               ; preds = %5
  %13 = fmul float %10, %1
  %14 = tail call float @llvm.fmuladd.f32(float %11, float %0, float %13)
  br label %83

15:                                               ; preds = %5
  %16 = fsub float 1.000000e+00, %7
  %17 = tail call float @llvm.fmuladd.f32(float %11, float %0, float %16)
  %18 = fmul float %17, %1
  br label %83

19:                                               ; preds = %5
  %20 = fsub float 1.000000e+00, %7
  %21 = fsub float 1.000000e+00, %0
  %22 = tail call float @llvm.fmuladd.f32(float %11, float %21, float %20)
  %23 = fsub float 1.000000e+00, %1
  %24 = fneg float %22
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %23, float 1.000000e+00)
  br label %83

26:                                               ; preds = %5
  %27 = fsub float 1.000000e+00, %7
  %28 = fcmp olt float %1, 5.000000e-01
  %29 = fmul float %11, 2.000000e+00
  br i1 %28, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call float @llvm.fmuladd.f32(float %29, float %0, float %27)
  %32 = fmul float %31, %1
  br label %83

33:                                               ; preds = %26
  %34 = fsub float 1.000000e+00, %0
  %35 = tail call float @llvm.fmuladd.f32(float %29, float %34, float %27)
  %36 = fsub float 1.000000e+00, %1
  %37 = fneg float %35
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %36, float 1.000000e+00)
  br label %83

39:                                               ; preds = %5
  %40 = fneg float %11
  br label %41

41:                                               ; preds = %5, %39
  %42 = phi float [ %11, %5 ], [ %40, %39 ]
  %43 = tail call float @llvm.fmuladd.f32(float %42, float %0, float %1)
  br label %83

44:                                               ; preds = %5
  %45 = fcmp une float %0, 0.000000e+00
  br i1 %45, label %46, label %83

46:                                               ; preds = %44
  %47 = fmul float %11, %1
  %48 = fdiv float %47, %0
  %49 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %48)
  br label %83

50:                                               ; preds = %5
  %51 = fsub float %0, %1
  %52 = tail call float @llvm.fabs.f32(float %51)
  %53 = fmul float %52, %11
  %54 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %53)
  br label %83

55:                                               ; preds = %5
  %56 = fcmp olt float %1, %0
  %57 = select i1 %56, float %1, float %0
  %58 = fmul float %10, %1
  %59 = tail call float @llvm.fmuladd.f32(float %57, float %11, float %58)
  br label %83

60:                                               ; preds = %5
  %61 = fmul float %11, %0
  %62 = fcmp ogt float %61, %1
  %63 = select i1 %62, float %61, float %1
  br label %83

64:                                               ; preds = %5
  %65 = fsub float 1.000000e+00, %0
  %66 = fsub float 1.000000e+00, %1
  %67 = fneg float %65
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %66, float 1.000000e+00)
  %69 = fmul float %66, %0
  %70 = fmul float %69, %1
  %71 = fmul float %70, %11
  %72 = tail call float @llvm.fmuladd.f32(float %10, float %1, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %1, float %68, float %72)
  br label %83

74:                                               ; preds = %5
  %75 = fcmp ogt float %0, 5.000000e-01
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = fadd float %0, -5.000000e-01
  %78 = fmul float %77, 2.000000e+00
  %79 = tail call float @llvm.fmuladd.f32(float %11, float %78, float %1)
  br label %83

80:                                               ; preds = %74
  %81 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float -1.000000e+00)
  %82 = tail call float @llvm.fmuladd.f32(float %11, float %81, float %1)
  br label %83

83:                                               ; preds = %60, %76, %80, %44, %46, %30, %33, %5, %64, %55, %50, %41, %19, %15, %12
  %84 = phi float [ 0.000000e+00, %5 ], [ %79, %76 ], [ %82, %80 ], [ %73, %64 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ 0.000000e+00, %44 ], [ %43, %41 ], [ %32, %30 ], [ %38, %33 ], [ %25, %19 ], [ %18, %15 ], [ %14, %12 ], [ %63, %60 ]
  ret float %84
}

; Function Attrs: nounwind uwtable
define dso_local void @do_material_tex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.TexResult, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.TexResult, align 8
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.CompatibleBump, align 4
  %27 = alloca %struct.NTapBump, align 4
  %28 = alloca %struct.TexResult, align 8
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %26, i8 0, i64 56, i1 false)
  %39 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 3
  store float 1.000000e+00, ptr %39, align 4, !tbaa !97
  %40 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 6
  store float 1.000000e+00, ptr %40, align 4, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, i8 0, i64 64, i1 false)
  %41 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 45, i32 46
  %42 = load i32, ptr %41, align 4, !tbaa !100
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %2736

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 68
  %48 = getelementptr inbounds float, ptr %32, i64 2
  %49 = getelementptr inbounds float, ptr %32, i64 1
  %50 = getelementptr inbounds float, ptr %30, i64 2
  %51 = getelementptr inbounds float, ptr %30, i64 1
  %52 = getelementptr inbounds float, ptr %31, i64 2
  %53 = getelementptr inbounds float, ptr %31, i64 1
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 64
  %55 = getelementptr inbounds float, ptr %32, i64 2
  %56 = getelementptr inbounds float, ptr %32, i64 1
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 98
  %58 = getelementptr inbounds float, ptr %30, i64 2
  %59 = getelementptr inbounds float, ptr %30, i64 1
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 99
  %61 = getelementptr inbounds float, ptr %31, i64 2
  %62 = getelementptr inbounds float, ptr %31, i64 1
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 60
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 94
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 95
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 71
  %67 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 2
  %68 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %69 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 2
  %70 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 74
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %74 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 8
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 11
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 12
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 13
  %79 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 7
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %81 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2
  %82 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %83 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 1
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %85 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 2
  %86 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1
  %87 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2
  %88 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 1
  %89 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 2
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 10
  %91 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 9
  %92 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 5
  %93 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 4
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 57
  %95 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 82
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 83
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 88
  %102 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 89
  %103 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 58
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 84
  %105 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 85
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 1
  %108 = getelementptr inbounds float, ptr %32, i64 1
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29, i64 2
  %110 = getelementptr inbounds float, ptr %32, i64 2
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %114 = getelementptr inbounds float, ptr %30, i64 1
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %116 = getelementptr inbounds float, ptr %30, i64 2
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %119 = getelementptr inbounds float, ptr %31, i64 1
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %121 = getelementptr inbounds float, ptr %31, i64 2
  %122 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 29
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %124 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %125 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %126 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 2
  %127 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %128 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 2
  %129 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %130 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 56
  %131 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 80
  %132 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 81
  %133 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 6
  %134 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 2
  %135 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 1
  %136 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 6
  %137 = getelementptr inbounds float, ptr %32, i64 1
  %138 = getelementptr inbounds float, ptr %32, i64 2
  %139 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 6
  %140 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %142 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %143 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %144 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 5
  %145 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 5
  %146 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 3
  %147 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %148 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %149 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 3, i64 1
  %150 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %151 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 3, i64 2
  %152 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2
  %153 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2, i64 1
  %154 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2, i64 2
  %155 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 7
  %156 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 1
  %157 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %158 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %159 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %160 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %161 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %162 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %163 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %164 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %165 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %166 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %167 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %168 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %170 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %171 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %172 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %173 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %174 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %175 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %176 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %177 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %178 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %179 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %180 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %181 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %182 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %183 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %184 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %185 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %186 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %187 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %188 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %189 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %190 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %191 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %192 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %193 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %194 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %195 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %196 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %197 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %198 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %199 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %200 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %201 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %202 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %204 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %205 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %206 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %207 = getelementptr inbounds float, ptr %30, i64 1
  %208 = getelementptr inbounds float, ptr %31, i64 1
  %209 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 1
  %210 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78
  %211 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 1
  %212 = getelementptr inbounds float, ptr %15, i64 1
  %213 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 78, i64 2
  %214 = getelementptr inbounds float, ptr %15, i64 2
  %215 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79
  %216 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 1
  %217 = getelementptr inbounds float, ptr %16, i64 1
  %218 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 79, i64 2
  %219 = getelementptr inbounds float, ptr %16, i64 2
  %220 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2
  %221 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2, i64 1
  %222 = getelementptr inbounds float, ptr %17, i64 1
  %223 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 2, i64 2
  %224 = getelementptr inbounds float, ptr %17, i64 2
  %225 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %226 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 4
  %227 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 4, i64 1
  %228 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 4, i64 2
  %229 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 5
  %230 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 5, i64 1
  %231 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 5, i64 2
  %232 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 6
  %233 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 7
  %234 = getelementptr inbounds float, ptr %30, i64 1
  %235 = getelementptr inbounds float, ptr %31, i64 1
  %236 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 6
  %237 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %238 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 5
  %239 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 5
  %240 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 7
  %241 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2
  %242 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %243 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %244 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 1
  %245 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %246 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 2
  %247 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1
  %248 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %249 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %250 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %251 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %252 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %253 = getelementptr inbounds float, ptr %26, i64 1
  %254 = getelementptr inbounds float, ptr %21, i64 1
  %255 = getelementptr inbounds float, ptr %26, i64 2
  %256 = getelementptr inbounds float, ptr %21, i64 2
  %257 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1
  %258 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 1
  %259 = getelementptr inbounds float, ptr %22, i64 1
  %260 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 2
  %261 = getelementptr inbounds float, ptr %22, i64 2
  %262 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %263 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %264 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %265 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %266 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %267 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 1
  %268 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 2
  %269 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 3
  %270 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %271 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %272 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 1
  %273 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 2
  %274 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 3
  %275 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 5
  %276 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %277 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %278 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %279 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %280 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 1
  %281 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 2
  %282 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 3
  %283 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 4
  %284 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %285 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %286 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 1
  %287 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 2
  %288 = getelementptr inbounds %struct.TexResult, ptr %18, i64 0, i32 3
  %289 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2
  %290 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 1
  %291 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %292 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 2, i64 2
  %293 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 2
  %294 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1
  %295 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 1
  %296 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 2
  %297 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %298 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %299 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %300 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %301 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %302 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %303 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %304 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %305 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %306 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 4
  %307 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %308 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %309 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %310 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %311 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %312 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %313 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %314 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %315 = getelementptr inbounds float, ptr %37, i64 1
  %316 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %317 = getelementptr inbounds float, ptr %37, i64 2
  %318 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 4
  %319 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 100
  %320 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 32
  %321 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 35
  %322 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 38
  %323 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62
  %324 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 1
  %325 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 2
  %326 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 62, i64 3
  %327 = getelementptr inbounds float, ptr %38, i64 1
  %328 = getelementptr inbounds float, ptr %38, i64 2
  %329 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %330 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %331 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %332 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %333 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 66
  %334 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %335 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67
  %336 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 2
  %337 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 1
  %338 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 67, i64 3
  %339 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %340 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %341 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %342 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  %343 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  %344 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %345 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %346 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %347 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %348 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %349 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %350 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %351 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %352 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %353 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59
  %354 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 1
  %355 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 59, i64 2
  %356 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63
  %357 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 1
  %358 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 2
  %359 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %360 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %361 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %362 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %363 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63
  %364 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %365 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 1
  %366 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %367 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 2
  %368 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %369 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63
  %370 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %371 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 1
  %372 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %373 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 2
  %374 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %375 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63
  %376 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %377 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 1
  %378 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %379 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 63, i64 2
  %380 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 5
  %381 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 4
  %382 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 1
  %383 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 2
  %384 = getelementptr inbounds %struct.TexResult, ptr %28, i64 0, i32 3
  %385 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 50
  %386 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 51
  %387 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 45
  %388 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 49
  %389 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 55
  %390 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 48
  %391 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 54
  %392 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 44
  %393 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 12
  %394 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 41
  %395 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 13
  %396 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 43
  %397 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 46, i32 14
  %398 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 42
  %399 = getelementptr inbounds %struct.Render, ptr %1, i64 0, i32 32
  br label %400

400:                                              ; preds = %45, %2675
  %401 = phi i64 [ 0, %45 ], [ %2686, %2675 ]
  %402 = phi float [ 1.000000e+00, %45 ], [ %2685, %2675 ]
  %403 = phi float [ 1.000000e+00, %45 ], [ %2684, %2675 ]
  %404 = phi i8 [ 0, %45 ], [ %2683, %2675 ]
  %405 = phi i8 [ 0, %45 ], [ %2682, %2675 ]
  %406 = phi i8 [ 0, %45 ], [ %2681, %2675 ]
  %407 = phi i8 [ 0, %45 ], [ %2680, %2675 ]
  %408 = phi i8 [ 1, %45 ], [ %2679, %2675 ]
  %409 = phi float [ 0.000000e+00, %45 ], [ %2678, %2675 ]
  %410 = phi float [ 0.000000e+00, %45 ], [ %2677, %2675 ]
  %411 = phi float [ 0.000000e+00, %45 ], [ %2676, %2675 ]
  %412 = load ptr, ptr %0, align 8, !tbaa !101
  %413 = getelementptr inbounds %struct.Material, ptr %412, i64 0, i32 73
  %414 = load i32, ptr %413, align 8, !tbaa !102
  %415 = trunc i64 %401 to i32
  %416 = shl nuw nsw i32 1, %415
  %417 = and i32 %414, %416
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %2675

419:                                              ; preds = %400
  %420 = getelementptr inbounds %struct.Material, ptr %412, i64 0, i32 102, i64 %401
  %421 = load ptr, ptr %420, align 8, !tbaa !34
  %422 = icmp eq ptr %421, null
  br i1 %422, label %2675, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 5
  %425 = load ptr, ptr %424, align 8, !tbaa !93
  %426 = icmp eq ptr %425, null
  br i1 %426, label %2675, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 32
  %429 = load i16, ptr %428, align 8, !tbaa !63
  %430 = icmp eq i16 %429, 8
  br i1 %430, label %431, label %436

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 30
  %433 = load i16, ptr %432, align 4, !tbaa !64
  %434 = and i16 %433, 16384
  %435 = icmp ne i16 %434, 0
  br label %436

436:                                              ; preds = %431, %427
  %437 = phi i1 [ false, %427 ], [ %435, %431 ]
  %438 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 14
  %439 = load i16, ptr %438, align 8, !tbaa !106
  %440 = zext i16 %439 to i32
  %441 = and i32 %440, 128
  %442 = icmp ne i32 %441, 0
  %443 = and i32 %440, 8960
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, i1 true, i1 %437
  %446 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 52
  %447 = load ptr, ptr %446, align 8, !tbaa !73
  %448 = icmp eq ptr %447, null
  br i1 %448, label %455, label %449

449:                                              ; preds = %436
  %450 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 61
  %451 = load i8, ptr %450, align 8, !tbaa !74
  %452 = icmp eq i8 %451, 0
  %453 = select i1 %452, i1 %445, i1 false
  %454 = select i1 %452, i1 %442, i1 false
  br label %455

455:                                              ; preds = %449, %436
  %456 = phi i1 [ %445, %436 ], [ %453, %449 ]
  %457 = phi i1 [ %442, %436 ], [ %454, %449 ]
  %458 = load i16, ptr %46, align 8, !tbaa !107
  %459 = icmp eq i16 %458, 0
  %460 = select i1 %459, i1 %456, i1 false
  %461 = xor i1 %460, true
  %462 = select i1 %460, i1 true, i1 %457
  %463 = icmp ne i16 %429, 16
  %464 = select i1 %463, i1 %461, i1 false
  %465 = select i1 %464, i1 %456, i1 false
  %466 = zext i1 %465 to i8
  %467 = select i1 %463, i1 %462, i1 false
  %468 = zext i1 %467 to i8
  %469 = load i16, ptr %421, align 8, !tbaa !95
  switch i16 %469, label %2675 [
    i16 1, label %470
    i16 32, label %474
    i16 2, label %503
    i16 4, label %688
    i16 4096, label %504
    i16 8, label %505
    i16 16, label %506
    i16 1024, label %681
    i16 8192, label %682
    i16 16384, label %686
  ]

470:                                              ; preds = %455
  %471 = and i16 %439, 32
  %472 = icmp eq i16 %471, 0
  br i1 %472, label %688, label %473

473:                                              ; preds = %470
  store float 0.000000e+00, ptr %126, align 4, !tbaa !96
  store float 0.000000e+00, ptr %127, align 4, !tbaa !96
  store float 0.000000e+00, ptr %30, align 4, !tbaa !96
  store float 0.000000e+00, ptr %128, align 4, !tbaa !96
  store float 0.000000e+00, ptr %129, align 4, !tbaa !96
  store float 0.000000e+00, ptr %31, align 4, !tbaa !96
  br label %688

474:                                              ; preds = %455
  %475 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 4
  %476 = load ptr, ptr %475, align 8, !tbaa !94
  %477 = icmp eq ptr %476, null
  br i1 %477, label %688, label %478

478:                                              ; preds = %474
  %479 = load float, ptr %106, align 4, !tbaa !96
  store float %479, ptr %32, align 4, !tbaa !96
  %480 = load float, ptr %107, align 4, !tbaa !96
  store float %480, ptr %108, align 4, !tbaa !96
  %481 = load float, ptr %109, align 4, !tbaa !96
  store float %481, ptr %110, align 4, !tbaa !96
  %482 = and i16 %439, 64
  %483 = icmp eq i16 %482, 0
  br i1 %483, label %492, label %484

484:                                              ; preds = %478
  %485 = load ptr, ptr %111, align 8, !tbaa !108
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %485, i64 0, i32 14
  %489 = load ptr, ptr %488, align 8, !tbaa !109
  %490 = icmp eq ptr %489, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %487
  call void @mul_m4_v3(ptr noundef nonnull %489, ptr noundef nonnull %32) #10
  br label %492

492:                                              ; preds = %484, %487, %491, %478
  %493 = getelementptr inbounds %struct.Object, ptr %476, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %493, ptr noundef nonnull %32) #10
  %494 = load i16, ptr %46, align 8, !tbaa !107
  %495 = icmp eq i16 %494, 0
  br i1 %495, label %688, label %496

496:                                              ; preds = %492
  %497 = load float, ptr %112, align 4, !tbaa !96
  store float %497, ptr %30, align 4, !tbaa !96
  %498 = load float, ptr %113, align 4, !tbaa !96
  store float %498, ptr %114, align 4, !tbaa !96
  %499 = load float, ptr %115, align 4, !tbaa !96
  store float %499, ptr %116, align 4, !tbaa !96
  %500 = load float, ptr %117, align 4, !tbaa !96
  store float %500, ptr %31, align 4, !tbaa !96
  %501 = load float, ptr %118, align 4, !tbaa !96
  store float %501, ptr %119, align 4, !tbaa !96
  %502 = load float, ptr %120, align 4, !tbaa !96
  store float %502, ptr %121, align 4, !tbaa !96
  call void @mul_mat3_m4_v3(ptr noundef nonnull %493, ptr noundef nonnull %30) #10
  call void @mul_mat3_m4_v3(ptr noundef nonnull %493, ptr noundef nonnull %31) #10
  br label %688

503:                                              ; preds = %455
  call void @calc_R_ref(ptr noundef nonnull %0) #10
  br label %688

504:                                              ; preds = %455
  br label %688

505:                                              ; preds = %455
  br label %688

506:                                              ; preds = %455
  %507 = and i16 %439, 32
  %508 = icmp eq i16 %507, 0
  br i1 %508, label %510, label %509

509:                                              ; preds = %506
  store float 0.000000e+00, ptr %67, align 4, !tbaa !96
  store float 0.000000e+00, ptr %68, align 4, !tbaa !96
  store float 0.000000e+00, ptr %30, align 4, !tbaa !96
  store float 0.000000e+00, ptr %69, align 4, !tbaa !96
  store float 0.000000e+00, ptr %70, align 4, !tbaa !96
  store float 0.000000e+00, ptr %31, align 4, !tbaa !96
  br label %688

510:                                              ; preds = %506
  %511 = load i32, ptr %71, align 8, !tbaa !111
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %512
  %514 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 6
  %515 = load i8, ptr %514, align 8, !tbaa !112
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %534, label %517

517:                                              ; preds = %510
  %518 = load i32, ptr %72, align 8, !tbaa !113
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %520, label %534

520:                                              ; preds = %517
  %521 = zext nneg i32 %518 to i64
  br label %522

522:                                              ; preds = %520, %531
  %523 = phi i64 [ 0, %520 ], [ %532, %531 ]
  %524 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %523, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !114
  %526 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %525, ptr noundef nonnull dereferenceable(1) %514) #11
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %522
  %529 = trunc i64 %523 to i32
  %530 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %523
  br label %534

531:                                              ; preds = %522
  %532 = add nuw nsw i64 %523, 1
  %533 = icmp eq i64 %532, %521
  br i1 %533, label %534, label %522, !llvm.loop !116

534:                                              ; preds = %531, %517, %528, %510
  %535 = phi i32 [ %529, %528 ], [ %511, %510 ], [ 0, %517 ], [ %518, %531 ]
  %536 = phi ptr [ %530, %528 ], [ %513, %510 ], [ %513, %517 ], [ %513, %531 ]
  %537 = getelementptr inbounds %struct.ShadeInputUV, ptr %536, i64 0, i32 2
  %538 = getelementptr inbounds %struct.ShadeInputUV, ptr %536, i64 0, i32 1
  %539 = and i16 %439, 128
  %540 = icmp eq i16 %539, 0
  br i1 %540, label %688, label %541

541:                                              ; preds = %534
  %542 = load ptr, ptr %73, align 8, !tbaa !117
  %543 = icmp eq ptr %542, null
  br i1 %543, label %688, label %544

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.ObjectRen, ptr %542, i64 0, i32 2
  %546 = load ptr, ptr %545, align 8, !tbaa !118
  %547 = icmp eq ptr %546, null
  br i1 %547, label %688, label %548

548:                                              ; preds = %544
  %549 = load ptr, ptr %74, align 8, !tbaa !120
  %550 = icmp eq ptr %549, null
  br i1 %550, label %688, label %551

551:                                              ; preds = %548
  %552 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 1
  %553 = load i16, ptr %552, align 2, !tbaa !87
  %554 = and i16 %553, 8194
  %555 = icmp eq i16 %554, 0
  br i1 %555, label %688, label %556

556:                                              ; preds = %551
  br i1 %430, label %557, label %562

557:                                              ; preds = %556
  %558 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 30
  %559 = load i16, ptr %558, align 4, !tbaa !64
  %560 = and i16 %559, 2048
  %561 = icmp eq i16 %560, 0
  br i1 %561, label %562, label %688

562:                                              ; preds = %557, %556
  %563 = load ptr, ptr %75, align 8, !tbaa !85
  %564 = call ptr @RE_vlakren_get_tface(ptr noundef nonnull %542, ptr noundef %563, i32 noundef %535, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #10
  %565 = load i16, ptr %76, align 8, !tbaa !121
  %566 = sext i16 %565 to i32
  store i32 %566, ptr %23, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #10
  %567 = load i16, ptr %77, align 2, !tbaa !123
  %568 = sext i16 %567 to i32
  store i32 %568, ptr %24, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #10
  %569 = load i16, ptr %78, align 4, !tbaa !124
  %570 = sext i16 %569 to i32
  store i32 %570, ptr %25, align 4, !tbaa !122
  %571 = load ptr, ptr %75, align 8, !tbaa !85
  call void @vlr_set_uv_indices(ptr noundef %571, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #10
  %572 = load i8, ptr %79, align 4, !tbaa !125
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %574, label %581

574:                                              ; preds = %562
  %575 = load float, ptr %80, align 4, !tbaa !96
  %576 = fneg float %575
  store float %576, ptr %81, align 4, !tbaa !96
  %577 = load float, ptr %82, align 4, !tbaa !96
  %578 = fneg float %577
  store float %578, ptr %83, align 4, !tbaa !96
  %579 = load float, ptr %84, align 4, !tbaa !96
  %580 = fneg float %579
  store float %580, ptr %85, align 4, !tbaa !96
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %86, ptr noundef nonnull %81) #10
  store i8 1, ptr %79, align 4, !tbaa !125
  br label %581

581:                                              ; preds = %574, %562
  %582 = icmp eq ptr %564, null
  br i1 %582, label %680, label %583

583:                                              ; preds = %581
  %584 = load i32, ptr %23, align 4, !tbaa !122
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [4 x [2 x float]], ptr %564, i64 0, i64 %585
  %587 = load i32, ptr %24, align 4, !tbaa !122
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [4 x [2 x float]], ptr %564, i64 0, i64 %588
  %590 = load i32, ptr %25, align 4, !tbaa !122
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [4 x [2 x float]], ptr %564, i64 0, i64 %591
  %593 = load float, ptr %87, align 4, !tbaa !96
  %594 = call float @llvm.fabs.f32(float %593)
  %595 = load float, ptr %88, align 4, !tbaa !96
  %596 = call float @llvm.fabs.f32(float %595)
  %597 = load float, ptr %89, align 4, !tbaa !96
  %598 = call float @llvm.fabs.f32(float %597)
  %599 = fcmp ogt float %594, %596
  %600 = fcmp ogt float %594, %598
  %601 = and i1 %599, %600
  %602 = fcmp ogt float %598, %594
  %603 = fcmp ogt float %598, %596
  %604 = and i1 %602, %603
  %605 = load ptr, ptr %74, align 8, !tbaa !120
  %606 = zext i1 %601 to i64
  %607 = getelementptr inbounds [3 x float], ptr %605, i64 0, i64 %606
  %608 = load float, ptr %607, align 4, !tbaa !96
  %609 = load ptr, ptr %90, align 8, !tbaa !126
  %610 = getelementptr inbounds [3 x float], ptr %609, i64 0, i64 %606
  %611 = load float, ptr %610, align 4, !tbaa !96
  %612 = fsub float %608, %611
  %613 = select i1 %604, i64 1, i64 2
  %614 = getelementptr inbounds [3 x float], ptr %605, i64 0, i64 %613
  %615 = load float, ptr %614, align 4, !tbaa !96
  %616 = getelementptr inbounds [3 x float], ptr %609, i64 0, i64 %613
  %617 = load float, ptr %616, align 4, !tbaa !96
  %618 = fsub float %615, %617
  %619 = load ptr, ptr %91, align 8, !tbaa !127
  %620 = getelementptr inbounds [3 x float], ptr %619, i64 0, i64 %606
  %621 = load float, ptr %620, align 4, !tbaa !96
  %622 = fsub float %621, %611
  %623 = getelementptr inbounds [3 x float], ptr %619, i64 0, i64 %613
  %624 = load float, ptr %623, align 4, !tbaa !96
  %625 = fsub float %624, %617
  %626 = load float, ptr %586, align 4, !tbaa !96
  %627 = load float, ptr %592, align 4, !tbaa !96
  %628 = fsub float %626, %627
  %629 = load float, ptr %589, align 4, !tbaa !96
  %630 = fsub float %629, %627
  %631 = getelementptr inbounds float, ptr %586, i64 1
  %632 = load float, ptr %631, align 4, !tbaa !96
  %633 = getelementptr inbounds float, ptr %592, i64 1
  %634 = load float, ptr %633, align 4, !tbaa !96
  %635 = fsub float %632, %634
  %636 = getelementptr inbounds float, ptr %589, i64 1
  %637 = load float, ptr %636, align 4, !tbaa !96
  %638 = fsub float %637, %634
  %639 = fneg float %635
  %640 = fmul float %622, %639
  %641 = call float @llvm.fmuladd.f32(float %638, float %612, float %640)
  %642 = fmul float %625, %639
  %643 = call float @llvm.fmuladd.f32(float %638, float %618, float %642)
  %644 = fneg float %630
  %645 = fmul float %612, %644
  %646 = call float @llvm.fmuladd.f32(float %628, float %622, float %645)
  %647 = fmul float %618, %644
  %648 = call float @llvm.fmuladd.f32(float %628, float %625, float %647)
  %649 = fneg float %646
  %650 = fmul float %643, %649
  %651 = call float @llvm.fmuladd.f32(float %641, float %648, float %650)
  %652 = fmul float %630, %639
  %653 = call float @llvm.fmuladd.f32(float %628, float %638, float %652)
  %654 = fcmp oeq float %653, 0.000000e+00
  %655 = select i1 %654, float 0x3EE4F8B580000000, float %653
  %656 = fcmp oeq float %651, 0.000000e+00
  %657 = select i1 %656, float 0x3EE4F8B580000000, float %651
  %658 = fdiv float %655, %657
  %659 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %606
  %660 = load float, ptr %659, align 4, !tbaa !96
  %661 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %613
  %662 = load float, ptr %661, align 4, !tbaa !96
  %663 = fmul float %662, %649
  %664 = call float @llvm.fmuladd.f32(float %648, float %660, float %663)
  %665 = fmul float %664, %658
  store float %665, ptr %39, align 4, !tbaa !97
  %666 = fneg float %643
  %667 = fmul float %660, %666
  %668 = call float @llvm.fmuladd.f32(float %641, float %662, float %667)
  %669 = fmul float %668, %658
  store float %669, ptr %92, align 4, !tbaa !128
  %670 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 %606
  %671 = load float, ptr %670, align 4, !tbaa !96
  %672 = getelementptr inbounds %struct.CompatibleBump, ptr %26, i64 0, i32 1, i64 %613
  %673 = load float, ptr %672, align 4, !tbaa !96
  %674 = fmul float %673, %649
  %675 = call float @llvm.fmuladd.f32(float %648, float %671, float %674)
  %676 = fmul float %658, %675
  store float %676, ptr %93, align 4, !tbaa !129
  %677 = fmul float %671, %666
  %678 = call float @llvm.fmuladd.f32(float %641, float %673, float %677)
  %679 = fmul float %678, %658
  store float %679, ptr %40, align 4, !tbaa !99
  br label %680

680:                                              ; preds = %583, %581
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #10
  br label %688

681:                                              ; preds = %455
  br label %688

682:                                              ; preds = %455
  %683 = load float, ptr %54, align 4, !tbaa !130
  store float %683, ptr %32, align 4, !tbaa !96
  store float 0.000000e+00, ptr %55, align 4, !tbaa !96
  store float 0.000000e+00, ptr %56, align 4, !tbaa !96
  %684 = load float, ptr %57, align 8, !tbaa !131
  store float %684, ptr %30, align 4, !tbaa !96
  store float 0.000000e+00, ptr %58, align 4, !tbaa !96
  store float 0.000000e+00, ptr %59, align 4, !tbaa !96
  %685 = load float, ptr %60, align 4, !tbaa !132
  store float %685, ptr %31, align 4, !tbaa !96
  store float 0.000000e+00, ptr %61, align 4, !tbaa !96
  store float 0.000000e+00, ptr %62, align 4, !tbaa !96
  br label %688

686:                                              ; preds = %455
  %687 = load float, ptr %47, align 8, !tbaa !133
  store float %687, ptr %32, align 4, !tbaa !96
  store float 0.000000e+00, ptr %48, align 4, !tbaa !96
  store float 0.000000e+00, ptr %49, align 4, !tbaa !96
  store float 0.000000e+00, ptr %30, align 4, !tbaa !96
  store float 0.000000e+00, ptr %50, align 4, !tbaa !96
  store float 0.000000e+00, ptr %51, align 4, !tbaa !96
  store float 0.000000e+00, ptr %31, align 4, !tbaa !96
  store float 0.000000e+00, ptr %52, align 4, !tbaa !96
  store float 0.000000e+00, ptr %53, align 4, !tbaa !96
  br label %688

688:                                              ; preds = %455, %474, %470, %680, %557, %551, %548, %544, %541, %534, %496, %492, %505, %681, %686, %682, %509, %504, %503, %473
  %689 = phi ptr [ %31, %473 ], [ %105, %503 ], [ %99, %504 ], [ %96, %505 ], [ %31, %509 ], [ %65, %681 ], [ %31, %682 ], [ %31, %686 ], [ %31, %496 ], [ %31, %492 ], [ %538, %534 ], [ %538, %541 ], [ %538, %544 ], [ %538, %548 ], [ %538, %551 ], [ %538, %557 ], [ %538, %680 ], [ %132, %470 ], [ %124, %474 ], [ %102, %455 ]
  %690 = phi ptr [ %30, %473 ], [ %104, %503 ], [ %98, %504 ], [ %95, %505 ], [ %30, %509 ], [ %64, %681 ], [ %30, %682 ], [ %30, %686 ], [ %30, %496 ], [ %30, %492 ], [ %536, %534 ], [ %536, %541 ], [ %536, %544 ], [ %536, %548 ], [ %536, %551 ], [ %536, %557 ], [ %536, %680 ], [ %131, %470 ], [ %123, %474 ], [ %101, %455 ]
  %691 = phi ptr [ %125, %473 ], [ %103, %503 ], [ %97, %504 ], [ %94, %505 ], [ %66, %509 ], [ %63, %681 ], [ %32, %682 ], [ %32, %686 ], [ %32, %496 ], [ %32, %492 ], [ %537, %534 ], [ %537, %541 ], [ %537, %544 ], [ %537, %548 ], [ %537, %551 ], [ %537, %557 ], [ %537, %680 ], [ %130, %470 ], [ %122, %474 ], [ %100, %455 ]
  %692 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 1
  %693 = load i16, ptr %692, align 2, !tbaa !87
  %694 = and i16 %693, 8194
  %695 = icmp eq i16 %694, 0
  br i1 %695, label %697, label %696

696:                                              ; preds = %688
  store ptr %33, ptr %133, align 8, !tbaa !134
  store float 0.000000e+00, ptr %134, align 4, !tbaa !96
  store float 0.000000e+00, ptr %135, align 4, !tbaa !96
  store float 0.000000e+00, ptr %33, align 4, !tbaa !96
  br label %698

697:                                              ; preds = %688
  store ptr null, ptr %136, align 8, !tbaa !134
  br label %698

698:                                              ; preds = %697, %696
  %699 = icmp eq i8 %404, 0
  br i1 %699, label %709, label %700

700:                                              ; preds = %698
  %701 = load float, ptr %691, align 4, !tbaa !96
  %702 = fadd float %409, %701
  store float %702, ptr %32, align 4, !tbaa !96
  %703 = getelementptr inbounds float, ptr %691, i64 1
  %704 = load float, ptr %703, align 4, !tbaa !96
  %705 = fadd float %410, %704
  store float %705, ptr %137, align 4, !tbaa !96
  %706 = getelementptr inbounds float, ptr %691, i64 2
  %707 = load float, ptr %706, align 4, !tbaa !96
  %708 = fadd float %411, %707
  store float %708, ptr %138, align 4, !tbaa !96
  br label %709

709:                                              ; preds = %700, %698
  %710 = phi ptr [ %32, %700 ], [ %691, %698 ]
  %711 = load ptr, ptr %139, align 8, !tbaa !134
  %712 = icmp eq ptr %711, null
  br i1 %712, label %1942, label %713

713:                                              ; preds = %709
  %714 = load i16, ptr %428, align 8, !tbaa !63
  %715 = icmp eq i16 %714, 8
  br i1 %715, label %716, label %721

716:                                              ; preds = %713
  %717 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 30
  %718 = load i16, ptr %717, align 4, !tbaa !64
  %719 = and i16 %718, 2048
  %720 = icmp eq i16 %719, 0
  br i1 %720, label %721, label %1942

721:                                              ; preds = %716, %713
  br i1 %467, label %722, label %1209

722:                                              ; preds = %721
  %723 = fmul float %403, %402
  %724 = load ptr, ptr %237, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %725 = load i32, ptr %239, align 4, !tbaa !137
  store i32 %725, ptr %238, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  br i1 %715, label %731, label %726

726:                                              ; preds = %722
  %727 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 31
  %728 = load i16, ptr %727, align 2, !tbaa !138
  %729 = and i16 %728, 1
  %730 = icmp ne i16 %729, 0
  br label %731

731:                                              ; preds = %726, %722
  %732 = phi i1 [ true, %722 ], [ %730, %726 ]
  %733 = fmul float %723, 0xBFA47AE140000000
  %734 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 30
  %735 = load float, ptr %734, align 4, !tbaa !139
  %736 = fmul float %733, %735
  store ptr null, ptr %139, align 8, !tbaa !134
  %737 = load i8, ptr %240, align 4, !tbaa !125
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %739, label %746

739:                                              ; preds = %731
  %740 = load float, ptr %242, align 4, !tbaa !96
  %741 = fneg float %740
  store float %741, ptr %241, align 4, !tbaa !96
  %742 = load float, ptr %243, align 4, !tbaa !96
  %743 = fneg float %742
  store float %743, ptr %244, align 4, !tbaa !96
  %744 = load float, ptr %245, align 4, !tbaa !96
  %745 = fneg float %744
  store float %745, ptr %246, align 4, !tbaa !96
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %247, ptr noundef nonnull %241) #10
  store i8 1, ptr %240, align 4, !tbaa !125
  br label %746

746:                                              ; preds = %739, %731
  %747 = load i16, ptr %46, align 8, !tbaa !107
  %748 = icmp eq i16 %747, 0
  br i1 %748, label %749, label %774

749:                                              ; preds = %746
  %750 = load i16, ptr %428, align 8, !tbaa !63
  %751 = icmp eq i16 %750, 8
  br i1 %751, label %752, label %773

752:                                              ; preds = %749
  %753 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %754 = load ptr, ptr %753, align 8, !tbaa !60
  %755 = icmp eq ptr %754, null
  br i1 %755, label %773, label %756

756:                                              ; preds = %752
  %757 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 51
  %758 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %754, ptr noundef nonnull %757, ptr noundef %724) #10
  %759 = icmp eq ptr %758, null
  br i1 %759, label %769, label %760

760:                                              ; preds = %756
  %761 = getelementptr inbounds %struct.ImBuf, ptr %758, i64 0, i32 2
  %762 = load i32, ptr %761, align 8, !tbaa !140
  %763 = sitofp i32 %762 to float
  %764 = fdiv float 1.000000e+00, %763
  %765 = getelementptr inbounds %struct.ImBuf, ptr %758, i64 0, i32 3
  %766 = load i32, ptr %765, align 4, !tbaa !141
  %767 = sitofp i32 %766 to float
  %768 = fdiv float 1.000000e+00, %767
  br label %769

769:                                              ; preds = %760, %756
  %770 = phi float [ %768, %760 ], [ 0x3F847AE140000000, %756 ]
  %771 = phi float [ %764, %760 ], [ 0x3F847AE140000000, %756 ]
  %772 = load ptr, ptr %753, align 8, !tbaa !60
  call void @BKE_image_pool_release_ibuf(ptr noundef %772, ptr noundef %758, ptr noundef %724) #10
  br label %812

773:                                              ; preds = %752, %749
  br i1 %748, label %812, label %774

774:                                              ; preds = %746, %773
  %775 = load i16, ptr %428, align 8, !tbaa !63
  %776 = icmp eq i16 %775, 8
  %777 = load float, ptr %690, align 4, !tbaa !96
  %778 = call float @llvm.fabs.f32(float %777)
  %779 = getelementptr inbounds float, ptr %690, i64 1
  %780 = load float, ptr %779, align 4, !tbaa !96
  %781 = call float @llvm.fabs.f32(float %780)
  br i1 %776, label %782, label %792

782:                                              ; preds = %774
  %783 = load float, ptr %689, align 4, !tbaa !96
  %784 = call float @llvm.fabs.f32(float %783)
  %785 = getelementptr inbounds float, ptr %689, i64 1
  %786 = load float, ptr %785, align 4, !tbaa !96
  %787 = call float @llvm.fabs.f32(float %786)
  %788 = fcmp ogt float %778, %784
  %789 = select i1 %788, float %778, float %784
  %790 = fcmp ogt float %781, %787
  %791 = select i1 %790, float %781, float %787
  br label %812

792:                                              ; preds = %774
  %793 = getelementptr inbounds float, ptr %690, i64 2
  %794 = load float, ptr %793, align 4, !tbaa !96
  %795 = call float @llvm.fabs.f32(float %794)
  %796 = load float, ptr %689, align 4, !tbaa !96
  %797 = call float @llvm.fabs.f32(float %796)
  %798 = getelementptr inbounds float, ptr %689, i64 1
  %799 = load float, ptr %798, align 4, !tbaa !96
  %800 = call float @llvm.fabs.f32(float %799)
  %801 = getelementptr inbounds float, ptr %689, i64 2
  %802 = load float, ptr %801, align 4, !tbaa !96
  %803 = call float @llvm.fabs.f32(float %802)
  %804 = fcmp ogt float %778, %781
  %805 = select i1 %804, float %778, float %781
  %806 = fcmp ogt float %805, %795
  %807 = select i1 %806, float %805, float %795
  %808 = fcmp ogt float %797, %800
  %809 = select i1 %808, float %797, float %800
  %810 = fcmp ogt float %809, %803
  %811 = select i1 %810, float %809, float %803
  br label %812

812:                                              ; preds = %792, %782, %773, %769
  %813 = phi float [ %791, %782 ], [ %811, %792 ], [ 0x3F847AE140000000, %773 ], [ %770, %769 ]
  %814 = phi float [ %789, %782 ], [ %807, %792 ], [ 0x3F847AE140000000, %773 ], [ %771, %769 ]
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %815 = load ptr, ptr %424, align 8, !tbaa !93
  %816 = getelementptr inbounds %struct.Tex, ptr %815, i64 0, i32 61
  %817 = load i8, ptr %816, align 8, !tbaa !74
  %818 = icmp eq i8 %817, 0
  br i1 %818, label %834, label %819

819:                                              ; preds = %812
  %820 = getelementptr inbounds %struct.Tex, ptr %815, i64 0, i32 52
  %821 = load ptr, ptr %820, align 8, !tbaa !73
  %822 = icmp eq ptr %821, null
  br i1 %822, label %834, label %823

823:                                              ; preds = %819
  %824 = load i16, ptr %46, align 8, !tbaa !107
  %825 = sext i16 %824 to i32
  %826 = load i16, ptr %248, align 2, !tbaa !142
  %827 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %828 = load i16, ptr %827, align 2, !tbaa !83
  %829 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %830 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %831 = lshr i32 %830, 18
  %832 = and i32 %831, 1
  %833 = call i32 @ntreeTexExecTree(ptr noundef nonnull %821, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %825, i16 noundef signext %826, ptr noundef %815, i16 noundef signext %828, i32 noundef %829, i32 noundef %832, ptr noundef %0, ptr noundef %421) #10
  br label %841

834:                                              ; preds = %819, %812
  %835 = load i16, ptr %46, align 8, !tbaa !107
  %836 = sext i16 %835 to i32
  %837 = load i16, ptr %249, align 2, !tbaa !142
  %838 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %839 = load i16, ptr %838, align 2, !tbaa !83
  %840 = call fastcc i32 @multitex(ptr noundef %815, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %836, ptr noundef nonnull %28, i16 noundef signext %837, i16 noundef signext %839, ptr noundef %724)
  br label %841

841:                                              ; preds = %823, %834
  %842 = phi i32 [ %833, %823 ], [ %840, %834 ]
  br i1 %732, label %843, label %850

843:                                              ; preds = %841
  %844 = load float, ptr %250, align 4, !tbaa !143
  %845 = load float, ptr %251, align 8, !tbaa !144
  %846 = fadd float %844, %845
  %847 = load float, ptr %252, align 4, !tbaa !145
  %848 = fadd float %846, %847
  %849 = fdiv float %848, 3.000000e+00
  br label %852

850:                                              ; preds = %841
  %851 = load float, ptr %28, align 8, !tbaa !146
  br label %852

852:                                              ; preds = %850, %843
  %853 = phi float [ %849, %843 ], [ %851, %850 ]
  %854 = load i16, ptr %421, align 8, !tbaa !95
  %855 = icmp eq i16 %854, 16
  br i1 %855, label %856, label %955

856:                                              ; preds = %852
  %857 = fcmp olt float %814, %813
  %858 = select i1 %857, float %814, float %813
  %859 = fcmp olt float %858, 0x3EE4F8B580000000
  %860 = select i1 %859, float 1.000000e+00, float %858
  %861 = fdiv float %736, %860
  %862 = load float, ptr %710, align 4, !tbaa !96
  %863 = load float, ptr %39, align 4, !tbaa !97
  %864 = call float @llvm.fmuladd.f32(float %863, float %858, float %862)
  store float %864, ptr %19, align 4, !tbaa !96
  %865 = getelementptr inbounds float, ptr %710, i64 1
  %866 = load float, ptr %865, align 4, !tbaa !96
  %867 = load float, ptr %275, align 4, !tbaa !128
  %868 = call float @llvm.fmuladd.f32(float %867, float %858, float %866)
  store float %868, ptr %276, align 4, !tbaa !96
  store float 0.000000e+00, ptr %277, align 4, !tbaa !96
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef nonnull %19, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %869 = load ptr, ptr %424, align 8, !tbaa !93
  %870 = getelementptr inbounds %struct.Tex, ptr %869, i64 0, i32 61
  %871 = load i8, ptr %870, align 8, !tbaa !74
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %888, label %873

873:                                              ; preds = %856
  %874 = getelementptr inbounds %struct.Tex, ptr %869, i64 0, i32 52
  %875 = load ptr, ptr %874, align 8, !tbaa !73
  %876 = icmp eq ptr %875, null
  br i1 %876, label %888, label %877

877:                                              ; preds = %873
  %878 = load i16, ptr %46, align 8, !tbaa !107
  %879 = sext i16 %878 to i32
  %880 = load i16, ptr %278, align 2, !tbaa !142
  %881 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %882 = load i16, ptr %881, align 2, !tbaa !83
  %883 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %884 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %885 = lshr i32 %884, 18
  %886 = and i32 %885, 1
  %887 = call i32 @ntreeTexExecTree(ptr noundef nonnull %875, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %879, i16 noundef signext %880, ptr noundef %869, i16 noundef signext %882, i32 noundef %883, i32 noundef %886, ptr noundef %0, ptr noundef %421) #10
  br label %895

888:                                              ; preds = %873, %856
  %889 = load i16, ptr %46, align 8, !tbaa !107
  %890 = sext i16 %889 to i32
  %891 = load i16, ptr %279, align 2, !tbaa !142
  %892 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %893 = load i16, ptr %892, align 2, !tbaa !83
  %894 = call fastcc i32 @multitex(ptr noundef %869, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %890, ptr noundef nonnull %18, i16 noundef signext %891, i16 noundef signext %893, ptr noundef %724)
  br label %895

895:                                              ; preds = %877, %888
  br i1 %732, label %896, label %903

896:                                              ; preds = %895
  %897 = load float, ptr %280, align 4, !tbaa !143
  %898 = load float, ptr %281, align 8, !tbaa !144
  %899 = fadd float %897, %898
  %900 = load float, ptr %282, align 4, !tbaa !145
  %901 = fadd float %899, %900
  %902 = fdiv float %901, 3.000000e+00
  br label %905

903:                                              ; preds = %895
  %904 = load float, ptr %18, align 8, !tbaa !146
  br label %905

905:                                              ; preds = %903, %896
  %906 = phi float [ %902, %896 ], [ %904, %903 ]
  %907 = fsub float %853, %906
  %908 = fmul float %861, %907
  %909 = load float, ptr %710, align 4, !tbaa !96
  %910 = load float, ptr %283, align 4, !tbaa !129
  %911 = call float @llvm.fmuladd.f32(float %910, float %858, float %909)
  store float %911, ptr %19, align 4, !tbaa !96
  %912 = load float, ptr %865, align 4, !tbaa !96
  %913 = load float, ptr %40, align 4, !tbaa !99
  %914 = call float @llvm.fmuladd.f32(float %913, float %858, float %912)
  store float %914, ptr %276, align 4, !tbaa !96
  store float 0.000000e+00, ptr %277, align 4, !tbaa !96
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef nonnull %19, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %915 = load ptr, ptr %424, align 8, !tbaa !93
  %916 = getelementptr inbounds %struct.Tex, ptr %915, i64 0, i32 61
  %917 = load i8, ptr %916, align 8, !tbaa !74
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %934, label %919

919:                                              ; preds = %905
  %920 = getelementptr inbounds %struct.Tex, ptr %915, i64 0, i32 52
  %921 = load ptr, ptr %920, align 8, !tbaa !73
  %922 = icmp eq ptr %921, null
  br i1 %922, label %934, label %923

923:                                              ; preds = %919
  %924 = load i16, ptr %46, align 8, !tbaa !107
  %925 = sext i16 %924 to i32
  %926 = load i16, ptr %284, align 2, !tbaa !142
  %927 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %928 = load i16, ptr %927, align 2, !tbaa !83
  %929 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %930 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %931 = lshr i32 %930, 18
  %932 = and i32 %931, 1
  %933 = call i32 @ntreeTexExecTree(ptr noundef nonnull %921, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %925, i16 noundef signext %926, ptr noundef %915, i16 noundef signext %928, i32 noundef %929, i32 noundef %932, ptr noundef %0, ptr noundef %421) #10
  br label %941

934:                                              ; preds = %919, %905
  %935 = load i16, ptr %46, align 8, !tbaa !107
  %936 = sext i16 %935 to i32
  %937 = load i16, ptr %285, align 2, !tbaa !142
  %938 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %939 = load i16, ptr %938, align 2, !tbaa !83
  %940 = call fastcc i32 @multitex(ptr noundef %915, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %936, ptr noundef nonnull %18, i16 noundef signext %937, i16 noundef signext %939, ptr noundef %724)
  br label %941

941:                                              ; preds = %923, %934
  br i1 %732, label %942, label %949

942:                                              ; preds = %941
  %943 = load float, ptr %286, align 4, !tbaa !143
  %944 = load float, ptr %287, align 8, !tbaa !144
  %945 = fadd float %943, %944
  %946 = load float, ptr %288, align 4, !tbaa !145
  %947 = fadd float %945, %946
  %948 = fdiv float %947, 3.000000e+00
  br label %951

949:                                              ; preds = %941
  %950 = load float, ptr %18, align 8, !tbaa !146
  br label %951

951:                                              ; preds = %949, %942
  %952 = phi float [ %948, %942 ], [ %950, %949 ]
  %953 = fsub float %853, %952
  %954 = fmul float %861, %953
  br label %1169

955:                                              ; preds = %852
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %956 = load float, ptr %26, align 4, !tbaa !96
  store float %956, ptr %21, align 4, !tbaa !96
  %957 = load float, ptr %253, align 4, !tbaa !96
  store float %957, ptr %254, align 4, !tbaa !96
  %958 = load float, ptr %255, align 4, !tbaa !96
  store float %958, ptr %256, align 4, !tbaa !96
  %959 = load float, ptr %257, align 4, !tbaa !96
  store float %959, ptr %22, align 4, !tbaa !96
  %960 = load float, ptr %258, align 4, !tbaa !96
  store float %960, ptr %259, align 4, !tbaa !96
  %961 = load float, ptr %260, align 4, !tbaa !96
  store float %961, ptr %261, align 4, !tbaa !96
  %962 = fcmp olt float %814, 0x3EE4F8B580000000
  %963 = select i1 %962, float 1.000000e+00, float %814
  %964 = fdiv float %736, %963
  %965 = fcmp olt float %813, 0x3EE4F8B580000000
  %966 = select i1 %965, float 1.000000e+00, float %813
  %967 = fdiv float %736, %966
  %968 = load i16, ptr %421, align 8, !tbaa !95
  switch i16 %968, label %1068 [
    i16 1, label %969
    i16 8, label %1021
    i16 32, label %1022
  ]

969:                                              ; preds = %955
  %970 = load ptr, ptr %262, align 8, !tbaa !117
  %971 = icmp eq ptr %970, null
  br i1 %971, label %1020, label %972

972:                                              ; preds = %969
  %973 = getelementptr inbounds %struct.ObjectRen, ptr %970, i64 0, i32 2
  %974 = load ptr, ptr %973, align 8, !tbaa !118
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1020, label %976

976:                                              ; preds = %972
  %977 = getelementptr inbounds %struct.Object, ptr %974, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %977, ptr noundef nonnull %21) #10
  %978 = load ptr, ptr %262, align 8, !tbaa !117
  %979 = getelementptr inbounds %struct.ObjectRen, ptr %978, i64 0, i32 2
  %980 = load ptr, ptr %979, align 8, !tbaa !118
  %981 = getelementptr inbounds %struct.Object, ptr %980, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %981, ptr noundef nonnull %22) #10
  %982 = load float, ptr %21, align 4, !tbaa !96
  %983 = load float, ptr %254, align 4, !tbaa !96
  %984 = fmul float %983, %983
  %985 = call float @llvm.fmuladd.f32(float %982, float %982, float %984)
  %986 = load float, ptr %256, align 4, !tbaa !96
  %987 = call float @llvm.fmuladd.f32(float %986, float %986, float %985)
  %988 = fcmp ogt float %987, 0x38AA95A5C0000000
  br i1 %988, label %989, label %998

989:                                              ; preds = %976
  %990 = call float @sqrtf(float noundef %987) #10
  %991 = fdiv float 1.000000e+00, %990
  %992 = load float, ptr %21, align 4, !tbaa !96
  %993 = fmul float %992, %991
  store float %993, ptr %21, align 4, !tbaa !96
  %994 = load float, ptr %254, align 4, !tbaa !96
  %995 = fmul float %991, %994
  store float %995, ptr %254, align 4, !tbaa !96
  %996 = load float, ptr %256, align 4, !tbaa !96
  %997 = fmul float %991, %996
  br label %999

998:                                              ; preds = %976
  store float 0.000000e+00, ptr %21, align 4, !tbaa !96
  store float 0.000000e+00, ptr %254, align 4, !tbaa !96
  br label %999

999:                                              ; preds = %998, %989
  %1000 = phi float [ 0.000000e+00, %998 ], [ %997, %989 ]
  store float %1000, ptr %256, align 4, !tbaa !96
  %1001 = load float, ptr %22, align 4, !tbaa !96
  %1002 = load float, ptr %259, align 4, !tbaa !96
  %1003 = fmul float %1002, %1002
  %1004 = call float @llvm.fmuladd.f32(float %1001, float %1001, float %1003)
  %1005 = load float, ptr %261, align 4, !tbaa !96
  %1006 = call float @llvm.fmuladd.f32(float %1005, float %1005, float %1004)
  %1007 = fcmp ogt float %1006, 0x38AA95A5C0000000
  br i1 %1007, label %1008, label %1017

1008:                                             ; preds = %999
  %1009 = call float @sqrtf(float noundef %1006) #10
  %1010 = fdiv float 1.000000e+00, %1009
  %1011 = load float, ptr %22, align 4, !tbaa !96
  %1012 = fmul float %1011, %1010
  store float %1012, ptr %22, align 4, !tbaa !96
  %1013 = load float, ptr %259, align 4, !tbaa !96
  %1014 = fmul float %1010, %1013
  store float %1014, ptr %259, align 4, !tbaa !96
  %1015 = load float, ptr %261, align 4, !tbaa !96
  %1016 = fmul float %1010, %1015
  br label %1018

1017:                                             ; preds = %999
  store float 0.000000e+00, ptr %22, align 4, !tbaa !96
  store float 0.000000e+00, ptr %259, align 4, !tbaa !96
  br label %1018

1018:                                             ; preds = %1017, %1008
  %1019 = phi float [ 0.000000e+00, %1017 ], [ %1016, %1008 ]
  store float %1019, ptr %261, align 4, !tbaa !96
  br label %1068

1020:                                             ; preds = %972, %969
  switch i16 %968, label %1068 [
    i16 8, label %1021
    i16 32, label %1022
  ]

1021:                                             ; preds = %955, %1020
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %21) #10
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %22) #10
  br label %1068

1022:                                             ; preds = %955, %1020
  %1023 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 4
  %1024 = load ptr, ptr %1023, align 8, !tbaa !94
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1068, label %1026

1026:                                             ; preds = %1022
  %1027 = getelementptr inbounds %struct.Object, ptr %1024, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %1027, ptr noundef nonnull %21) #10
  %1028 = load ptr, ptr %1023, align 8, !tbaa !94
  %1029 = getelementptr inbounds %struct.Object, ptr %1028, i64 0, i32 51
  call void @mul_mat3_m4_v3(ptr noundef nonnull %1029, ptr noundef nonnull %22) #10
  %1030 = load float, ptr %21, align 4, !tbaa !96
  %1031 = load float, ptr %254, align 4, !tbaa !96
  %1032 = fmul float %1031, %1031
  %1033 = call float @llvm.fmuladd.f32(float %1030, float %1030, float %1032)
  %1034 = load float, ptr %256, align 4, !tbaa !96
  %1035 = call float @llvm.fmuladd.f32(float %1034, float %1034, float %1033)
  %1036 = fcmp ogt float %1035, 0x38AA95A5C0000000
  br i1 %1036, label %1037, label %1046

1037:                                             ; preds = %1026
  %1038 = call float @sqrtf(float noundef %1035) #10
  %1039 = fdiv float 1.000000e+00, %1038
  %1040 = load float, ptr %21, align 4, !tbaa !96
  %1041 = fmul float %1040, %1039
  store float %1041, ptr %21, align 4, !tbaa !96
  %1042 = load float, ptr %254, align 4, !tbaa !96
  %1043 = fmul float %1039, %1042
  store float %1043, ptr %254, align 4, !tbaa !96
  %1044 = load float, ptr %256, align 4, !tbaa !96
  %1045 = fmul float %1039, %1044
  br label %1047

1046:                                             ; preds = %1026
  store float 0.000000e+00, ptr %21, align 4, !tbaa !96
  store float 0.000000e+00, ptr %254, align 4, !tbaa !96
  br label %1047

1047:                                             ; preds = %1046, %1037
  %1048 = phi float [ 0.000000e+00, %1046 ], [ %1045, %1037 ]
  store float %1048, ptr %256, align 4, !tbaa !96
  %1049 = load float, ptr %22, align 4, !tbaa !96
  %1050 = load float, ptr %259, align 4, !tbaa !96
  %1051 = fmul float %1050, %1050
  %1052 = call float @llvm.fmuladd.f32(float %1049, float %1049, float %1051)
  %1053 = load float, ptr %261, align 4, !tbaa !96
  %1054 = call float @llvm.fmuladd.f32(float %1053, float %1053, float %1052)
  %1055 = fcmp ogt float %1054, 0x38AA95A5C0000000
  br i1 %1055, label %1056, label %1065

1056:                                             ; preds = %1047
  %1057 = call float @sqrtf(float noundef %1054) #10
  %1058 = fdiv float 1.000000e+00, %1057
  %1059 = load float, ptr %22, align 4, !tbaa !96
  %1060 = fmul float %1059, %1058
  store float %1060, ptr %22, align 4, !tbaa !96
  %1061 = load float, ptr %259, align 4, !tbaa !96
  %1062 = fmul float %1058, %1061
  store float %1062, ptr %259, align 4, !tbaa !96
  %1063 = load float, ptr %261, align 4, !tbaa !96
  %1064 = fmul float %1058, %1063
  br label %1066

1065:                                             ; preds = %1047
  store float 0.000000e+00, ptr %22, align 4, !tbaa !96
  store float 0.000000e+00, ptr %259, align 4, !tbaa !96
  br label %1066

1066:                                             ; preds = %1065, %1056
  %1067 = phi float [ 0.000000e+00, %1065 ], [ %1064, %1056 ]
  store float %1067, ptr %261, align 4, !tbaa !96
  br label %1068

1068:                                             ; preds = %955, %1066, %1022, %1021, %1020, %1018
  %1069 = load float, ptr %710, align 4, !tbaa !96
  %1070 = load float, ptr %21, align 4, !tbaa !96
  %1071 = call float @llvm.fmuladd.f32(float %1070, float %814, float %1069)
  store float %1071, ptr %19, align 4, !tbaa !96
  %1072 = getelementptr inbounds float, ptr %710, i64 1
  %1073 = load float, ptr %1072, align 4, !tbaa !96
  %1074 = load float, ptr %254, align 4, !tbaa !96
  %1075 = call float @llvm.fmuladd.f32(float %1074, float %814, float %1073)
  store float %1075, ptr %263, align 4, !tbaa !96
  %1076 = getelementptr inbounds float, ptr %710, i64 2
  %1077 = load float, ptr %1076, align 4, !tbaa !96
  %1078 = load float, ptr %256, align 4, !tbaa !96
  %1079 = call float @llvm.fmuladd.f32(float %1078, float %814, float %1077)
  store float %1079, ptr %264, align 4, !tbaa !96
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef nonnull %19, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1080 = load ptr, ptr %424, align 8, !tbaa !93
  %1081 = getelementptr inbounds %struct.Tex, ptr %1080, i64 0, i32 61
  %1082 = load i8, ptr %1081, align 8, !tbaa !74
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %1099, label %1084

1084:                                             ; preds = %1068
  %1085 = getelementptr inbounds %struct.Tex, ptr %1080, i64 0, i32 52
  %1086 = load ptr, ptr %1085, align 8, !tbaa !73
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1099, label %1088

1088:                                             ; preds = %1084
  %1089 = load i16, ptr %46, align 8, !tbaa !107
  %1090 = sext i16 %1089 to i32
  %1091 = load i16, ptr %265, align 2, !tbaa !142
  %1092 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1093 = load i16, ptr %1092, align 2, !tbaa !83
  %1094 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1095 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1096 = lshr i32 %1095, 18
  %1097 = and i32 %1096, 1
  %1098 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1086, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1090, i16 noundef signext %1091, ptr noundef %1080, i16 noundef signext %1093, i32 noundef %1094, i32 noundef %1097, ptr noundef %0, ptr noundef %421) #10
  br label %1106

1099:                                             ; preds = %1084, %1068
  %1100 = load i16, ptr %46, align 8, !tbaa !107
  %1101 = sext i16 %1100 to i32
  %1102 = load i16, ptr %266, align 2, !tbaa !142
  %1103 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1104 = load i16, ptr %1103, align 2, !tbaa !83
  %1105 = call fastcc i32 @multitex(ptr noundef %1080, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1101, ptr noundef nonnull %18, i16 noundef signext %1102, i16 noundef signext %1104, ptr noundef %724)
  br label %1106

1106:                                             ; preds = %1088, %1099
  br i1 %732, label %1107, label %1114

1107:                                             ; preds = %1106
  %1108 = load float, ptr %267, align 4, !tbaa !143
  %1109 = load float, ptr %268, align 8, !tbaa !144
  %1110 = fadd float %1108, %1109
  %1111 = load float, ptr %269, align 4, !tbaa !145
  %1112 = fadd float %1110, %1111
  %1113 = fdiv float %1112, 3.000000e+00
  br label %1116

1114:                                             ; preds = %1106
  %1115 = load float, ptr %18, align 8, !tbaa !146
  br label %1116

1116:                                             ; preds = %1114, %1107
  %1117 = phi float [ %1113, %1107 ], [ %1115, %1114 ]
  %1118 = fsub float %853, %1117
  %1119 = fmul float %964, %1118
  %1120 = load float, ptr %710, align 4, !tbaa !96
  %1121 = load float, ptr %22, align 4, !tbaa !96
  %1122 = call float @llvm.fmuladd.f32(float %1121, float %813, float %1120)
  store float %1122, ptr %19, align 4, !tbaa !96
  %1123 = load float, ptr %1072, align 4, !tbaa !96
  %1124 = load float, ptr %259, align 4, !tbaa !96
  %1125 = call float @llvm.fmuladd.f32(float %1124, float %813, float %1123)
  store float %1125, ptr %263, align 4, !tbaa !96
  %1126 = load float, ptr %1076, align 4, !tbaa !96
  %1127 = load float, ptr %261, align 4, !tbaa !96
  %1128 = call float @llvm.fmuladd.f32(float %1127, float %813, float %1126)
  store float %1128, ptr %264, align 4, !tbaa !96
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef nonnull %19, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1129 = load ptr, ptr %424, align 8, !tbaa !93
  %1130 = getelementptr inbounds %struct.Tex, ptr %1129, i64 0, i32 61
  %1131 = load i8, ptr %1130, align 8, !tbaa !74
  %1132 = icmp eq i8 %1131, 0
  br i1 %1132, label %1148, label %1133

1133:                                             ; preds = %1116
  %1134 = getelementptr inbounds %struct.Tex, ptr %1129, i64 0, i32 52
  %1135 = load ptr, ptr %1134, align 8, !tbaa !73
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1148, label %1137

1137:                                             ; preds = %1133
  %1138 = load i16, ptr %46, align 8, !tbaa !107
  %1139 = sext i16 %1138 to i32
  %1140 = load i16, ptr %270, align 2, !tbaa !142
  %1141 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1142 = load i16, ptr %1141, align 2, !tbaa !83
  %1143 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1144 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1145 = lshr i32 %1144, 18
  %1146 = and i32 %1145, 1
  %1147 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1135, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1139, i16 noundef signext %1140, ptr noundef %1129, i16 noundef signext %1142, i32 noundef %1143, i32 noundef %1146, ptr noundef %0, ptr noundef %421) #10
  br label %1155

1148:                                             ; preds = %1133, %1116
  %1149 = load i16, ptr %46, align 8, !tbaa !107
  %1150 = sext i16 %1149 to i32
  %1151 = load i16, ptr %271, align 2, !tbaa !142
  %1152 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1153 = load i16, ptr %1152, align 2, !tbaa !83
  %1154 = call fastcc i32 @multitex(ptr noundef %1129, ptr noundef nonnull %20, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1150, ptr noundef nonnull %18, i16 noundef signext %1151, i16 noundef signext %1153, ptr noundef %724)
  br label %1155

1155:                                             ; preds = %1137, %1148
  br i1 %732, label %1156, label %1163

1156:                                             ; preds = %1155
  %1157 = load float, ptr %272, align 4, !tbaa !143
  %1158 = load float, ptr %273, align 8, !tbaa !144
  %1159 = fadd float %1157, %1158
  %1160 = load float, ptr %274, align 4, !tbaa !145
  %1161 = fadd float %1159, %1160
  %1162 = fdiv float %1161, 3.000000e+00
  br label %1165

1163:                                             ; preds = %1155
  %1164 = load float, ptr %18, align 8, !tbaa !146
  br label %1165

1165:                                             ; preds = %1163, %1156
  %1166 = phi float [ %1162, %1156 ], [ %1164, %1163 ]
  %1167 = fsub float %853, %1166
  %1168 = fmul float %967, %1167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  br label %1169

1169:                                             ; preds = %951, %1165
  %1170 = phi float [ %954, %951 ], [ %1168, %1165 ]
  %1171 = phi float [ %908, %951 ], [ %1119, %1165 ]
  %1172 = load float, ptr %289, align 4, !tbaa !96
  %1173 = load float, ptr %26, align 4, !tbaa !96
  %1174 = call float @llvm.fmuladd.f32(float %1171, float %1172, float %1173)
  store float %1174, ptr %26, align 4, !tbaa !96
  %1175 = load float, ptr %290, align 4, !tbaa !96
  %1176 = load float, ptr %291, align 4, !tbaa !96
  %1177 = call float @llvm.fmuladd.f32(float %1171, float %1175, float %1176)
  store float %1177, ptr %291, align 4, !tbaa !96
  %1178 = load float, ptr %292, align 4, !tbaa !96
  %1179 = load float, ptr %293, align 4, !tbaa !96
  %1180 = call float @llvm.fmuladd.f32(float %1171, float %1178, float %1179)
  store float %1180, ptr %293, align 4, !tbaa !96
  %1181 = load float, ptr %294, align 4, !tbaa !96
  %1182 = call float @llvm.fmuladd.f32(float %1170, float %1172, float %1181)
  store float %1182, ptr %294, align 4, !tbaa !96
  %1183 = load float, ptr %295, align 4, !tbaa !96
  %1184 = call float @llvm.fmuladd.f32(float %1170, float %1175, float %1183)
  store float %1184, ptr %295, align 4, !tbaa !96
  %1185 = load float, ptr %296, align 4, !tbaa !96
  %1186 = call float @llvm.fmuladd.f32(float %1170, float %1178, float %1185)
  store float %1186, ptr %296, align 4, !tbaa !96
  %1187 = fneg float %1180
  %1188 = fmul float %1184, %1187
  %1189 = call float @llvm.fmuladd.f32(float %1177, float %1186, float %1188)
  store float %1189, ptr %711, align 4, !tbaa !96
  %1190 = load float, ptr %293, align 4, !tbaa !96
  %1191 = load float, ptr %294, align 4, !tbaa !96
  %1192 = load float, ptr %26, align 4, !tbaa !96
  %1193 = load float, ptr %296, align 4, !tbaa !96
  %1194 = fneg float %1192
  %1195 = fmul float %1193, %1194
  %1196 = call float @llvm.fmuladd.f32(float %1190, float %1191, float %1195)
  %1197 = getelementptr inbounds float, ptr %711, i64 1
  store float %1196, ptr %1197, align 4, !tbaa !96
  %1198 = load float, ptr %295, align 4, !tbaa !96
  %1199 = load float, ptr %291, align 4, !tbaa !96
  %1200 = load float, ptr %294, align 4, !tbaa !96
  %1201 = fneg float %1199
  %1202 = fmul float %1200, %1201
  %1203 = call float @llvm.fmuladd.f32(float %1192, float %1198, float %1202)
  %1204 = getelementptr inbounds float, ptr %711, i64 2
  store float %1203, ptr %1204, align 4, !tbaa !96
  %1205 = fneg float %1189
  store float %1205, ptr %711, align 4, !tbaa !96
  %1206 = fneg float %1196
  store float %1206, ptr %1197, align 4, !tbaa !96
  %1207 = fneg float %1203
  store float %1207, ptr %1204, align 4, !tbaa !96
  store ptr %711, ptr %139, align 8, !tbaa !134
  %1208 = or i32 %842, 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #10
  br label %1970

1209:                                             ; preds = %721
  br i1 %465, label %1210, label %1914

1210:                                             ; preds = %1209
  %1211 = load ptr, ptr %143, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %1212 = load i32, ptr %145, align 4, !tbaa !137
  store i32 %1212, ptr %144, align 4, !tbaa !137
  br i1 %715, label %1218, label %1213

1213:                                             ; preds = %1210
  %1214 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 31
  %1215 = load i16, ptr %1214, align 2, !tbaa !138
  %1216 = and i16 %1215, 1
  %1217 = icmp ne i16 %1216, 0
  br label %1218

1218:                                             ; preds = %1213, %1210
  %1219 = phi i1 [ true, %1210 ], [ %1217, %1213 ]
  %1220 = fneg float %403
  %1221 = fmul float %402, %1220
  %1222 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 30
  %1223 = load float, ptr %1222, align 4, !tbaa !139
  %1224 = fmul float %1221, %1223
  %1225 = load i16, ptr %421, align 8, !tbaa !95
  %1226 = icmp eq i16 %1225, 16
  %1227 = select i1 %1226, i32 2, i32 3
  br i1 %715, label %1228, label %1233

1228:                                             ; preds = %1218
  %1229 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 30
  %1230 = load i16, ptr %1229, align 4, !tbaa !64
  %1231 = and i16 %1230, 16384
  %1232 = icmp ne i16 %1231, 0
  br label %1233

1233:                                             ; preds = %1228, %1218
  %1234 = phi i1 [ false, %1218 ], [ %1232, %1228 ]
  store ptr null, ptr %139, align 8, !tbaa !134
  br i1 %1234, label %1247, label %1235

1235:                                             ; preds = %1233
  %1236 = load i16, ptr %438, align 8, !tbaa !106
  %1237 = and i16 %1236, 2048
  %1238 = icmp eq i16 %1237, 0
  br i1 %1238, label %1245, label %1239

1239:                                             ; preds = %1235
  %1240 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %1241 = load ptr, ptr %1240, align 8, !tbaa !60
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1247, label %1243

1243:                                             ; preds = %1239
  %1244 = fmul float %1224, 1.300000e+01
  br label %1247

1245:                                             ; preds = %1235
  %1246 = fmul float %1224, 0x3FB99999A0000000
  br label %1247

1247:                                             ; preds = %1245, %1243, %1239, %1233
  %1248 = phi float [ %1244, %1243 ], [ %1224, %1239 ], [ %1246, %1245 ], [ %1224, %1233 ]
  %1249 = load i32, ptr %27, align 4, !tbaa !147
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1251, label %1255

1251:                                             ; preds = %1247
  %1252 = load float, ptr %147, align 4, !tbaa !96
  store float %1252, ptr %146, align 4, !tbaa !96
  %1253 = load float, ptr %148, align 4, !tbaa !96
  store float %1253, ptr %149, align 4, !tbaa !96
  %1254 = load float, ptr %150, align 4, !tbaa !96
  store float %1254, ptr %151, align 4, !tbaa !96
  store float %1252, ptr %152, align 4, !tbaa !96
  store float %1253, ptr %153, align 4, !tbaa !96
  store float %1254, ptr %154, align 4, !tbaa !96
  store float 1.000000e+00, ptr %155, align 4, !tbaa !149
  store i32 0, ptr %156, align 4, !tbaa !150
  store i32 1, ptr %27, align 4, !tbaa !147
  br label %1255

1255:                                             ; preds = %1251, %1247
  br i1 %1234, label %1260, label %1256

1256:                                             ; preds = %1255
  %1257 = load i16, ptr %438, align 8, !tbaa !106
  %1258 = and i16 %1257, 2048
  %1259 = icmp eq i16 %1258, 0
  br i1 %1259, label %1279, label %1260

1260:                                             ; preds = %1256, %1255
  %1261 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %1262 = load ptr, ptr %1261, align 8, !tbaa !60
  %1263 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 51
  %1264 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %1262, ptr noundef nonnull %1263, ptr noundef %1211) #10
  %1265 = icmp eq ptr %1264, null
  br i1 %1265, label %1274, label %1266

1266:                                             ; preds = %1260
  %1267 = getelementptr inbounds %struct.ImBuf, ptr %1264, i64 0, i32 2
  %1268 = load i32, ptr %1267, align 8, !tbaa !140
  %1269 = getelementptr inbounds %struct.ImBuf, ptr %1264, i64 0, i32 3
  %1270 = load i32, ptr %1269, align 4, !tbaa !141
  %1271 = sitofp i32 %1270 to float
  %1272 = sitofp i32 %1268 to float
  %1273 = fdiv float %1271, %1272
  br label %1274

1274:                                             ; preds = %1266, %1260
  %1275 = phi float [ %1273, %1266 ], [ 1.000000e+00, %1260 ]
  %1276 = phi i32 [ %1270, %1266 ], [ 512, %1260 ]
  %1277 = phi i32 [ %1268, %1266 ], [ 512, %1260 ]
  %1278 = load ptr, ptr %1261, align 8, !tbaa !60
  call void @BKE_image_pool_release_ibuf(ptr noundef %1278, ptr noundef %1264, ptr noundef %1211) #10
  br label %1279

1279:                                             ; preds = %1274, %1256
  %1280 = phi float [ %1275, %1274 ], [ 1.000000e+00, %1256 ]
  %1281 = phi i32 [ %1276, %1274 ], [ 512, %1256 ]
  %1282 = phi i32 [ %1277, %1274 ], [ 512, %1256 ]
  br i1 %1234, label %1283, label %1355

1283:                                             ; preds = %1279
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1284 = load ptr, ptr %424, align 8, !tbaa !93
  %1285 = getelementptr inbounds %struct.Tex, ptr %1284, i64 0, i32 61
  %1286 = load i8, ptr %1285, align 8, !tbaa !74
  %1287 = icmp eq i8 %1286, 0
  br i1 %1287, label %1303, label %1288

1288:                                             ; preds = %1283
  %1289 = getelementptr inbounds %struct.Tex, ptr %1284, i64 0, i32 52
  %1290 = load ptr, ptr %1289, align 8, !tbaa !73
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %1303, label %1292

1292:                                             ; preds = %1288
  %1293 = load i16, ptr %46, align 8, !tbaa !107
  %1294 = sext i16 %1293 to i32
  %1295 = load i16, ptr %202, align 2, !tbaa !142
  %1296 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1297 = load i16, ptr %1296, align 2, !tbaa !83
  %1298 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1299 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1300 = lshr i32 %1299, 18
  %1301 = and i32 %1300, 1
  %1302 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1290, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1294, i16 noundef signext %1295, ptr noundef %1284, i16 noundef signext %1297, i32 noundef %1298, i32 noundef %1301, ptr noundef %0, ptr noundef %421) #10
  br label %1310

1303:                                             ; preds = %1288, %1283
  %1304 = load i16, ptr %46, align 8, !tbaa !107
  %1305 = sext i16 %1304 to i32
  %1306 = load i16, ptr %203, align 2, !tbaa !142
  %1307 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1308 = load i16, ptr %1307, align 2, !tbaa !83
  %1309 = call fastcc i32 @multitex(ptr noundef %1284, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1305, ptr noundef nonnull %28, i16 noundef signext %1306, i16 noundef signext %1308, ptr noundef %1211)
  br label %1310

1310:                                             ; preds = %1292, %1303
  %1311 = phi i32 [ %1302, %1292 ], [ %1309, %1303 ]
  %1312 = load ptr, ptr %204, align 8, !tbaa !117
  %1313 = getelementptr inbounds %struct.ObjectRen, ptr %1312, i64 0, i32 2
  %1314 = load ptr, ptr %1313, align 8, !tbaa !118
  %1315 = getelementptr inbounds %struct.Object, ptr %1314, i64 0, i32 120
  %1316 = load ptr, ptr %1315, align 8, !tbaa !151
  %1317 = icmp eq ptr %1316, null
  br i1 %1317, label %1321, label %1318

1318:                                             ; preds = %1310
  %1319 = getelementptr inbounds %struct.DerivedMesh, ptr %1316, i64 0, i32 15
  %1320 = load float, ptr %1319, align 4, !tbaa !155
  br label %1321

1321:                                             ; preds = %1318, %1310
  %1322 = phi float [ %1320, %1318 ], [ 1.000000e+00, %1310 ]
  %1323 = mul nsw i32 %1282, %1281
  %1324 = sitofp i32 %1323 to float
  %1325 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 12
  %1326 = load float, ptr %1325, align 8, !tbaa !96
  %1327 = fmul float %1326, %1324
  %1328 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 12, i64 1
  %1329 = load float, ptr %1328, align 4, !tbaa !96
  %1330 = fmul float %1327, %1329
  %1331 = call float @llvm.fabs.f32(float %1330)
  %1332 = call float @sqrtf(float noundef %1331) #10
  %1333 = fcmp ogt float %1332, 0x3E80000000000000
  %1334 = select i1 %1333, float %1332, float 0x3E80000000000000
  %1335 = fdiv float %1322, %1334
  %1336 = fmul float %1248, %1335
  %1337 = sitofp i32 %1282 to float
  %1338 = fmul float %1336, %1337
  %1339 = load float, ptr %205, align 4, !tbaa !143
  %1340 = call float @llvm.fmuladd.f32(float %1339, float 2.000000e+00, float -1.000000e+00)
  %1341 = fmul float %1340, %1338
  %1342 = sitofp i32 %1281 to float
  %1343 = fmul float %1336, %1342
  %1344 = load float, ptr %206, align 8, !tbaa !144
  %1345 = call float @llvm.fmuladd.f32(float %1344, float 2.000000e+00, float -1.000000e+00)
  %1346 = fmul float %1345, %1343
  %1347 = load float, ptr %30, align 4, !tbaa !96
  %1348 = load float, ptr %207, align 4, !tbaa !96
  %1349 = fmul float %1348, %1346
  %1350 = call float @llvm.fmuladd.f32(float %1341, float %1347, float %1349)
  %1351 = load float, ptr %31, align 4, !tbaa !96
  %1352 = load float, ptr %208, align 4, !tbaa !96
  %1353 = fmul float %1346, %1352
  %1354 = call float @llvm.fmuladd.f32(float %1341, float %1351, float %1353)
  br label %1708

1355:                                             ; preds = %1279
  %1356 = load i16, ptr %438, align 8, !tbaa !106
  %1357 = and i16 %1356, 512
  %1358 = icmp eq i16 %1357, 0
  br i1 %1358, label %1359, label %1499

1359:                                             ; preds = %1355
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1360 = shl nuw nsw i32 %1227, 2
  %1361 = zext nneg i32 %1360 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(1) %29, i64 %1361, i1 false), !tbaa !96
  %1362 = zext nneg i32 %1227 to i64
  br label %1365

1363:                                             ; preds = %1365
  br i1 %1226, label %1364, label %1379

1364:                                             ; preds = %1363
  store float 0.000000e+00, ptr %184, align 4, !tbaa !96
  store float 0.000000e+00, ptr %185, align 4, !tbaa !96
  store float 0.000000e+00, ptr %186, align 4, !tbaa !96
  br label %1379

1365:                                             ; preds = %1359, %1365
  %1366 = phi i64 [ 0, %1359 ], [ %1377, %1365 ]
  %1367 = getelementptr inbounds float, ptr %29, i64 %1366
  %1368 = load float, ptr %1367, align 4, !tbaa !96
  %1369 = getelementptr inbounds float, ptr %30, i64 %1366
  %1370 = load float, ptr %1369, align 4, !tbaa !96
  %1371 = fadd float %1368, %1370
  %1372 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %1366
  store float %1371, ptr %1372, align 4, !tbaa !96
  %1373 = getelementptr inbounds float, ptr %31, i64 %1366
  %1374 = load float, ptr %1373, align 4, !tbaa !96
  %1375 = fadd float %1368, %1374
  %1376 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %1366
  store float %1375, ptr %1376, align 4, !tbaa !96
  %1377 = add nuw nsw i64 %1366, 1
  %1378 = icmp eq i64 %1377, %1362
  br i1 %1378, label %1363, label %1365, !llvm.loop !158

1379:                                             ; preds = %1364, %1363
  %1380 = load ptr, ptr %424, align 8, !tbaa !93
  %1381 = getelementptr inbounds %struct.Tex, ptr %1380, i64 0, i32 61
  %1382 = load i8, ptr %1381, align 8, !tbaa !74
  %1383 = icmp eq i8 %1382, 0
  br i1 %1383, label %1399, label %1384

1384:                                             ; preds = %1379
  %1385 = getelementptr inbounds %struct.Tex, ptr %1380, i64 0, i32 52
  %1386 = load ptr, ptr %1385, align 8, !tbaa !73
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1399, label %1388

1388:                                             ; preds = %1384
  %1389 = load i16, ptr %46, align 8, !tbaa !107
  %1390 = sext i16 %1389 to i32
  %1391 = load i16, ptr %187, align 2, !tbaa !142
  %1392 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1393 = load i16, ptr %1392, align 2, !tbaa !83
  %1394 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1395 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1396 = lshr i32 %1395, 18
  %1397 = and i32 %1396, 1
  %1398 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1386, ptr noundef nonnull %28, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1390, i16 noundef signext %1391, ptr noundef %1380, i16 noundef signext %1393, i32 noundef %1394, i32 noundef %1397, ptr noundef %0, ptr noundef %421) #10
  br label %1406

1399:                                             ; preds = %1384, %1379
  %1400 = load i16, ptr %46, align 8, !tbaa !107
  %1401 = sext i16 %1400 to i32
  %1402 = load i16, ptr %188, align 2, !tbaa !142
  %1403 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1404 = load i16, ptr %1403, align 2, !tbaa !83
  %1405 = call fastcc i32 @multitex(ptr noundef %1380, ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1401, ptr noundef nonnull %28, i16 noundef signext %1402, i16 noundef signext %1404, ptr noundef %1211)
  br label %1406

1406:                                             ; preds = %1388, %1399
  %1407 = phi i32 [ %1398, %1388 ], [ %1405, %1399 ]
  br i1 %1219, label %1408, label %1415

1408:                                             ; preds = %1406
  %1409 = load float, ptr %189, align 4, !tbaa !96
  %1410 = load float, ptr %190, align 8, !tbaa !96
  %1411 = fmul float %1410, 0x3FE28F5C20000000
  %1412 = call float @llvm.fmuladd.f32(float %1409, float 0x3FD3333340000000, float %1411)
  %1413 = load float, ptr %191, align 4, !tbaa !96
  %1414 = call float @llvm.fmuladd.f32(float %1413, float 0x3FBEB851E0000000, float %1412)
  br label %1417

1415:                                             ; preds = %1406
  %1416 = load float, ptr %28, align 8, !tbaa !146
  br label %1417

1417:                                             ; preds = %1415, %1408
  %1418 = phi float [ %1414, %1408 ], [ %1416, %1415 ]
  %1419 = load ptr, ptr %424, align 8, !tbaa !93
  %1420 = getelementptr inbounds %struct.Tex, ptr %1419, i64 0, i32 61
  %1421 = load i8, ptr %1420, align 8, !tbaa !74
  %1422 = icmp eq i8 %1421, 0
  br i1 %1422, label %1438, label %1423

1423:                                             ; preds = %1417
  %1424 = getelementptr inbounds %struct.Tex, ptr %1419, i64 0, i32 52
  %1425 = load ptr, ptr %1424, align 8, !tbaa !73
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1438, label %1427

1427:                                             ; preds = %1423
  %1428 = load i16, ptr %46, align 8, !tbaa !107
  %1429 = sext i16 %1428 to i32
  %1430 = load i16, ptr %192, align 2, !tbaa !142
  %1431 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1432 = load i16, ptr %1431, align 2, !tbaa !83
  %1433 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1434 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1435 = lshr i32 %1434, 18
  %1436 = and i32 %1435, 1
  %1437 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1425, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1429, i16 noundef signext %1430, ptr noundef %1419, i16 noundef signext %1432, i32 noundef %1433, i32 noundef %1436, ptr noundef %0, ptr noundef %421) #10
  br label %1445

1438:                                             ; preds = %1423, %1417
  %1439 = load i16, ptr %46, align 8, !tbaa !107
  %1440 = sext i16 %1439 to i32
  %1441 = load i16, ptr %193, align 2, !tbaa !142
  %1442 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1443 = load i16, ptr %1442, align 2, !tbaa !83
  %1444 = call fastcc i32 @multitex(ptr noundef %1419, ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1440, ptr noundef nonnull %3, i16 noundef signext %1441, i16 noundef signext %1443, ptr noundef %1211)
  br label %1445

1445:                                             ; preds = %1427, %1438
  br i1 %1219, label %1446, label %1453

1446:                                             ; preds = %1445
  %1447 = load float, ptr %194, align 4, !tbaa !96
  %1448 = load float, ptr %195, align 8, !tbaa !96
  %1449 = fmul float %1448, 0x3FE28F5C20000000
  %1450 = call float @llvm.fmuladd.f32(float %1447, float 0x3FD3333340000000, float %1449)
  %1451 = load float, ptr %196, align 4, !tbaa !96
  %1452 = call float @llvm.fmuladd.f32(float %1451, float 0x3FBEB851E0000000, float %1450)
  br label %1455

1453:                                             ; preds = %1445
  %1454 = load float, ptr %3, align 8, !tbaa !146
  br label %1455

1455:                                             ; preds = %1453, %1446
  %1456 = phi float [ %1452, %1446 ], [ %1454, %1453 ]
  %1457 = load ptr, ptr %424, align 8, !tbaa !93
  %1458 = getelementptr inbounds %struct.Tex, ptr %1457, i64 0, i32 61
  %1459 = load i8, ptr %1458, align 8, !tbaa !74
  %1460 = icmp eq i8 %1459, 0
  br i1 %1460, label %1476, label %1461

1461:                                             ; preds = %1455
  %1462 = getelementptr inbounds %struct.Tex, ptr %1457, i64 0, i32 52
  %1463 = load ptr, ptr %1462, align 8, !tbaa !73
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %1476, label %1465

1465:                                             ; preds = %1461
  %1466 = load i16, ptr %46, align 8, !tbaa !107
  %1467 = sext i16 %1466 to i32
  %1468 = load i16, ptr %197, align 2, !tbaa !142
  %1469 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1470 = load i16, ptr %1469, align 2, !tbaa !83
  %1471 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1472 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1473 = lshr i32 %1472, 18
  %1474 = and i32 %1473, 1
  %1475 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1463, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1467, i16 noundef signext %1468, ptr noundef %1457, i16 noundef signext %1470, i32 noundef %1471, i32 noundef %1474, ptr noundef %0, ptr noundef %421) #10
  br label %1483

1476:                                             ; preds = %1461, %1455
  %1477 = load i16, ptr %46, align 8, !tbaa !107
  %1478 = sext i16 %1477 to i32
  %1479 = load i16, ptr %198, align 2, !tbaa !142
  %1480 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1481 = load i16, ptr %1480, align 2, !tbaa !83
  %1482 = call fastcc i32 @multitex(ptr noundef %1457, ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1478, ptr noundef nonnull %3, i16 noundef signext %1479, i16 noundef signext %1481, ptr noundef %1211)
  br label %1483

1483:                                             ; preds = %1465, %1476
  br i1 %1219, label %1484, label %1491

1484:                                             ; preds = %1483
  %1485 = load float, ptr %199, align 4, !tbaa !96
  %1486 = load float, ptr %200, align 8, !tbaa !96
  %1487 = fmul float %1486, 0x3FE28F5C20000000
  %1488 = call float @llvm.fmuladd.f32(float %1485, float 0x3FD3333340000000, float %1487)
  %1489 = load float, ptr %201, align 4, !tbaa !96
  %1490 = call float @llvm.fmuladd.f32(float %1489, float 0x3FBEB851E0000000, float %1488)
  br label %1493

1491:                                             ; preds = %1483
  %1492 = load float, ptr %3, align 8, !tbaa !146
  br label %1493

1493:                                             ; preds = %1491, %1484
  %1494 = phi float [ %1490, %1484 ], [ %1492, %1491 ]
  %1495 = fsub float %1456, %1418
  %1496 = fmul float %1248, %1495
  %1497 = fsub float %1494, %1418
  %1498 = fmul float %1248, %1497
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %1708

1499:                                             ; preds = %1355
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call fastcc void @texco_mapping(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1500 = shl nuw nsw i32 %1227, 2
  %1501 = zext nneg i32 %1500 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(1) %29, i64 %1501, i1 false), !tbaa !96
  %1502 = zext nneg i32 %1227 to i64
  br label %1505

1503:                                             ; preds = %1505
  br i1 %1226, label %1504, label %1523

1504:                                             ; preds = %1503
  store float 0.000000e+00, ptr %157, align 4, !tbaa !96
  store float 0.000000e+00, ptr %158, align 4, !tbaa !96
  store float 0.000000e+00, ptr %159, align 4, !tbaa !96
  store float 0.000000e+00, ptr %160, align 4, !tbaa !96
  store float 0.000000e+00, ptr %161, align 4, !tbaa !96
  br label %1523

1505:                                             ; preds = %1499, %1505
  %1506 = phi i64 [ 0, %1499 ], [ %1521, %1505 ]
  %1507 = getelementptr inbounds float, ptr %29, i64 %1506
  %1508 = load float, ptr %1507, align 4, !tbaa !96
  %1509 = getelementptr inbounds float, ptr %30, i64 %1506
  %1510 = load float, ptr %1509, align 4, !tbaa !96
  %1511 = call float @llvm.fmuladd.f32(float %1510, float -5.000000e-01, float %1508)
  %1512 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %1506
  store float %1511, ptr %1512, align 4, !tbaa !96
  %1513 = call float @llvm.fmuladd.f32(float %1510, float 5.000000e-01, float %1508)
  %1514 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %1506
  store float %1513, ptr %1514, align 4, !tbaa !96
  %1515 = getelementptr inbounds float, ptr %31, i64 %1506
  %1516 = load float, ptr %1515, align 4, !tbaa !96
  %1517 = call float @llvm.fmuladd.f32(float %1516, float -5.000000e-01, float %1508)
  %1518 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %1506
  store float %1517, ptr %1518, align 4, !tbaa !96
  %1519 = call float @llvm.fmuladd.f32(float %1516, float 5.000000e-01, float %1508)
  %1520 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %1506
  store float %1519, ptr %1520, align 4, !tbaa !96
  %1521 = add nuw nsw i64 %1506, 1
  %1522 = icmp eq i64 %1521, %1502
  br i1 %1522, label %1503, label %1505, !llvm.loop !159

1523:                                             ; preds = %1504, %1503
  %1524 = load ptr, ptr %424, align 8, !tbaa !93
  %1525 = getelementptr inbounds %struct.Tex, ptr %1524, i64 0, i32 61
  %1526 = load i8, ptr %1525, align 8, !tbaa !74
  %1527 = icmp eq i8 %1526, 0
  br i1 %1527, label %1543, label %1528

1528:                                             ; preds = %1523
  %1529 = getelementptr inbounds %struct.Tex, ptr %1524, i64 0, i32 52
  %1530 = load ptr, ptr %1529, align 8, !tbaa !73
  %1531 = icmp eq ptr %1530, null
  br i1 %1531, label %1543, label %1532

1532:                                             ; preds = %1528
  %1533 = load i16, ptr %46, align 8, !tbaa !107
  %1534 = sext i16 %1533 to i32
  %1535 = load i16, ptr %162, align 2, !tbaa !142
  %1536 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1537 = load i16, ptr %1536, align 2, !tbaa !83
  %1538 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1539 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1540 = lshr i32 %1539, 18
  %1541 = and i32 %1540, 1
  %1542 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1530, ptr noundef nonnull %28, ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1534, i16 noundef signext %1535, ptr noundef %1524, i16 noundef signext %1537, i32 noundef %1538, i32 noundef %1541, ptr noundef %0, ptr noundef %421) #10
  br label %1550

1543:                                             ; preds = %1528, %1523
  %1544 = load i16, ptr %46, align 8, !tbaa !107
  %1545 = sext i16 %1544 to i32
  %1546 = load i16, ptr %163, align 2, !tbaa !142
  %1547 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1548 = load i16, ptr %1547, align 2, !tbaa !83
  %1549 = call fastcc i32 @multitex(ptr noundef %1524, ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1545, ptr noundef nonnull %28, i16 noundef signext %1546, i16 noundef signext %1548, ptr noundef %1211)
  br label %1550

1550:                                             ; preds = %1532, %1543
  %1551 = phi i32 [ %1542, %1532 ], [ %1549, %1543 ]
  %1552 = load ptr, ptr %424, align 8, !tbaa !93
  %1553 = getelementptr inbounds %struct.Tex, ptr %1552, i64 0, i32 61
  %1554 = load i8, ptr %1553, align 8, !tbaa !74
  %1555 = icmp eq i8 %1554, 0
  br i1 %1555, label %1571, label %1556

1556:                                             ; preds = %1550
  %1557 = getelementptr inbounds %struct.Tex, ptr %1552, i64 0, i32 52
  %1558 = load ptr, ptr %1557, align 8, !tbaa !73
  %1559 = icmp eq ptr %1558, null
  br i1 %1559, label %1571, label %1560

1560:                                             ; preds = %1556
  %1561 = load i16, ptr %46, align 8, !tbaa !107
  %1562 = sext i16 %1561 to i32
  %1563 = load i16, ptr %164, align 2, !tbaa !142
  %1564 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1565 = load i16, ptr %1564, align 2, !tbaa !83
  %1566 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1567 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1568 = lshr i32 %1567, 18
  %1569 = and i32 %1568, 1
  %1570 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1558, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1562, i16 noundef signext %1563, ptr noundef %1552, i16 noundef signext %1565, i32 noundef %1566, i32 noundef %1569, ptr noundef %0, ptr noundef %421) #10
  br label %1578

1571:                                             ; preds = %1556, %1550
  %1572 = load i16, ptr %46, align 8, !tbaa !107
  %1573 = sext i16 %1572 to i32
  %1574 = load i16, ptr %165, align 2, !tbaa !142
  %1575 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1576 = load i16, ptr %1575, align 2, !tbaa !83
  %1577 = call fastcc i32 @multitex(ptr noundef %1552, ptr noundef nonnull %8, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1573, ptr noundef nonnull %3, i16 noundef signext %1574, i16 noundef signext %1576, ptr noundef %1211)
  br label %1578

1578:                                             ; preds = %1560, %1571
  br i1 %1219, label %1579, label %1586

1579:                                             ; preds = %1578
  %1580 = load float, ptr %166, align 4, !tbaa !96
  %1581 = load float, ptr %167, align 8, !tbaa !96
  %1582 = fmul float %1581, 0x3FE28F5C20000000
  %1583 = call float @llvm.fmuladd.f32(float %1580, float 0x3FD3333340000000, float %1582)
  %1584 = load float, ptr %168, align 4, !tbaa !96
  %1585 = call float @llvm.fmuladd.f32(float %1584, float 0x3FBEB851E0000000, float %1583)
  br label %1588

1586:                                             ; preds = %1578
  %1587 = load float, ptr %3, align 8, !tbaa !146
  br label %1588

1588:                                             ; preds = %1586, %1579
  %1589 = phi float [ %1585, %1579 ], [ %1587, %1586 ]
  %1590 = load ptr, ptr %424, align 8, !tbaa !93
  %1591 = getelementptr inbounds %struct.Tex, ptr %1590, i64 0, i32 61
  %1592 = load i8, ptr %1591, align 8, !tbaa !74
  %1593 = icmp eq i8 %1592, 0
  br i1 %1593, label %1609, label %1594

1594:                                             ; preds = %1588
  %1595 = getelementptr inbounds %struct.Tex, ptr %1590, i64 0, i32 52
  %1596 = load ptr, ptr %1595, align 8, !tbaa !73
  %1597 = icmp eq ptr %1596, null
  br i1 %1597, label %1609, label %1598

1598:                                             ; preds = %1594
  %1599 = load i16, ptr %46, align 8, !tbaa !107
  %1600 = sext i16 %1599 to i32
  %1601 = load i16, ptr %169, align 2, !tbaa !142
  %1602 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1603 = load i16, ptr %1602, align 2, !tbaa !83
  %1604 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1605 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1606 = lshr i32 %1605, 18
  %1607 = and i32 %1606, 1
  %1608 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1596, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1600, i16 noundef signext %1601, ptr noundef %1590, i16 noundef signext %1603, i32 noundef %1604, i32 noundef %1607, ptr noundef %0, ptr noundef %421) #10
  br label %1616

1609:                                             ; preds = %1594, %1588
  %1610 = load i16, ptr %46, align 8, !tbaa !107
  %1611 = sext i16 %1610 to i32
  %1612 = load i16, ptr %170, align 2, !tbaa !142
  %1613 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1614 = load i16, ptr %1613, align 2, !tbaa !83
  %1615 = call fastcc i32 @multitex(ptr noundef %1590, ptr noundef nonnull %9, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1611, ptr noundef nonnull %3, i16 noundef signext %1612, i16 noundef signext %1614, ptr noundef %1211)
  br label %1616

1616:                                             ; preds = %1598, %1609
  br i1 %1219, label %1617, label %1624

1617:                                             ; preds = %1616
  %1618 = load float, ptr %171, align 4, !tbaa !96
  %1619 = load float, ptr %172, align 8, !tbaa !96
  %1620 = fmul float %1619, 0x3FE28F5C20000000
  %1621 = call float @llvm.fmuladd.f32(float %1618, float 0x3FD3333340000000, float %1620)
  %1622 = load float, ptr %173, align 4, !tbaa !96
  %1623 = call float @llvm.fmuladd.f32(float %1622, float 0x3FBEB851E0000000, float %1621)
  br label %1626

1624:                                             ; preds = %1616
  %1625 = load float, ptr %3, align 8, !tbaa !146
  br label %1626

1626:                                             ; preds = %1624, %1617
  %1627 = phi float [ %1623, %1617 ], [ %1625, %1624 ]
  %1628 = load ptr, ptr %424, align 8, !tbaa !93
  %1629 = getelementptr inbounds %struct.Tex, ptr %1628, i64 0, i32 61
  %1630 = load i8, ptr %1629, align 8, !tbaa !74
  %1631 = icmp eq i8 %1630, 0
  br i1 %1631, label %1647, label %1632

1632:                                             ; preds = %1626
  %1633 = getelementptr inbounds %struct.Tex, ptr %1628, i64 0, i32 52
  %1634 = load ptr, ptr %1633, align 8, !tbaa !73
  %1635 = icmp eq ptr %1634, null
  br i1 %1635, label %1647, label %1636

1636:                                             ; preds = %1632
  %1637 = load i16, ptr %46, align 8, !tbaa !107
  %1638 = sext i16 %1637 to i32
  %1639 = load i16, ptr %174, align 2, !tbaa !142
  %1640 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1641 = load i16, ptr %1640, align 2, !tbaa !83
  %1642 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1643 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1644 = lshr i32 %1643, 18
  %1645 = and i32 %1644, 1
  %1646 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1634, ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1638, i16 noundef signext %1639, ptr noundef %1628, i16 noundef signext %1641, i32 noundef %1642, i32 noundef %1645, ptr noundef %0, ptr noundef %421) #10
  br label %1654

1647:                                             ; preds = %1632, %1626
  %1648 = load i16, ptr %46, align 8, !tbaa !107
  %1649 = sext i16 %1648 to i32
  %1650 = load i16, ptr %175, align 2, !tbaa !142
  %1651 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1652 = load i16, ptr %1651, align 2, !tbaa !83
  %1653 = call fastcc i32 @multitex(ptr noundef %1628, ptr noundef nonnull %10, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1649, ptr noundef nonnull %3, i16 noundef signext %1650, i16 noundef signext %1652, ptr noundef %1211)
  br label %1654

1654:                                             ; preds = %1636, %1647
  br i1 %1219, label %1655, label %1662

1655:                                             ; preds = %1654
  %1656 = load float, ptr %176, align 4, !tbaa !96
  %1657 = load float, ptr %177, align 8, !tbaa !96
  %1658 = fmul float %1657, 0x3FE28F5C20000000
  %1659 = call float @llvm.fmuladd.f32(float %1656, float 0x3FD3333340000000, float %1658)
  %1660 = load float, ptr %178, align 4, !tbaa !96
  %1661 = call float @llvm.fmuladd.f32(float %1660, float 0x3FBEB851E0000000, float %1659)
  br label %1664

1662:                                             ; preds = %1654
  %1663 = load float, ptr %3, align 8, !tbaa !146
  br label %1664

1664:                                             ; preds = %1662, %1655
  %1665 = phi float [ %1661, %1655 ], [ %1663, %1662 ]
  %1666 = load ptr, ptr %424, align 8, !tbaa !93
  %1667 = getelementptr inbounds %struct.Tex, ptr %1666, i64 0, i32 61
  %1668 = load i8, ptr %1667, align 8, !tbaa !74
  %1669 = icmp eq i8 %1668, 0
  br i1 %1669, label %1685, label %1670

1670:                                             ; preds = %1664
  %1671 = getelementptr inbounds %struct.Tex, ptr %1666, i64 0, i32 52
  %1672 = load ptr, ptr %1671, align 8, !tbaa !73
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1685, label %1674

1674:                                             ; preds = %1670
  %1675 = load i16, ptr %46, align 8, !tbaa !107
  %1676 = sext i16 %1675 to i32
  %1677 = load i16, ptr %179, align 2, !tbaa !142
  %1678 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1679 = load i16, ptr %1678, align 2, !tbaa !83
  %1680 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1681 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1682 = lshr i32 %1681, 18
  %1683 = and i32 %1682, 1
  %1684 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1672, ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1676, i16 noundef signext %1677, ptr noundef %1666, i16 noundef signext %1679, i32 noundef %1680, i32 noundef %1683, ptr noundef %0, ptr noundef %421) #10
  br label %1692

1685:                                             ; preds = %1670, %1664
  %1686 = load i16, ptr %46, align 8, !tbaa !107
  %1687 = sext i16 %1686 to i32
  %1688 = load i16, ptr %180, align 2, !tbaa !142
  %1689 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1690 = load i16, ptr %1689, align 2, !tbaa !83
  %1691 = call fastcc i32 @multitex(ptr noundef %1666, ptr noundef nonnull %11, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1687, ptr noundef nonnull %3, i16 noundef signext %1688, i16 noundef signext %1690, ptr noundef %1211)
  br label %1692

1692:                                             ; preds = %1674, %1685
  br i1 %1219, label %1693, label %1700

1693:                                             ; preds = %1692
  %1694 = load float, ptr %181, align 4, !tbaa !96
  %1695 = load float, ptr %182, align 8, !tbaa !96
  %1696 = fmul float %1695, 0x3FE28F5C20000000
  %1697 = call float @llvm.fmuladd.f32(float %1694, float 0x3FD3333340000000, float %1696)
  %1698 = load float, ptr %183, align 4, !tbaa !96
  %1699 = call float @llvm.fmuladd.f32(float %1698, float 0x3FBEB851E0000000, float %1697)
  br label %1702

1700:                                             ; preds = %1692
  %1701 = load float, ptr %3, align 8, !tbaa !146
  br label %1702

1702:                                             ; preds = %1700, %1693
  %1703 = phi float [ %1699, %1693 ], [ %1701, %1700 ]
  %1704 = fsub float %1627, %1589
  %1705 = fmul float %1248, %1704
  %1706 = fsub float %1703, %1665
  %1707 = fmul float %1248, %1706
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %1708

1708:                                             ; preds = %1702, %1493, %1321
  %1709 = phi float [ %1354, %1321 ], [ %1707, %1702 ], [ %1498, %1493 ]
  %1710 = phi float [ %1350, %1321 ], [ %1705, %1702 ], [ %1496, %1493 ]
  %1711 = phi i32 [ %1311, %1321 ], [ %1551, %1702 ], [ %1407, %1493 ]
  store ptr %711, ptr %139, align 8, !tbaa !134
  %1712 = load i16, ptr %438, align 8, !tbaa !106
  %1713 = zext i16 %1712 to i32
  %1714 = and i32 %1713, 1024
  %1715 = icmp eq i32 %1714, 0
  %1716 = and i32 %1713, 2048
  %1717 = icmp eq i32 %1716, 0
  %1718 = select i1 %1717, i32 4, i32 2
  %1719 = select i1 %1715, i32 %1718, i32 1
  %1720 = load i32, ptr %209, align 4, !tbaa !150
  %1721 = icmp eq i32 %1720, %1719
  br i1 %1721, label %1864, label %1722

1722:                                             ; preds = %1708
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %1723 = load float, ptr %210, align 4, !tbaa !96
  store float %1723, ptr %15, align 4, !tbaa !96
  %1724 = load float, ptr %211, align 4, !tbaa !96
  store float %1724, ptr %212, align 4, !tbaa !96
  %1725 = load float, ptr %213, align 4, !tbaa !96
  store float %1725, ptr %214, align 4, !tbaa !96
  %1726 = load float, ptr %215, align 4, !tbaa !96
  store float %1726, ptr %16, align 4, !tbaa !96
  %1727 = load float, ptr %216, align 4, !tbaa !96
  store float %1727, ptr %217, align 4, !tbaa !96
  %1728 = load float, ptr %218, align 4, !tbaa !96
  store float %1728, ptr %219, align 4, !tbaa !96
  %1729 = load float, ptr %220, align 4, !tbaa !96
  store float %1729, ptr %17, align 4, !tbaa !96
  %1730 = load float, ptr %221, align 4, !tbaa !96
  store float %1730, ptr %222, align 4, !tbaa !96
  %1731 = load float, ptr %223, align 4, !tbaa !96
  store float %1731, ptr %224, align 4, !tbaa !96
  %1732 = and i16 %1712, 1024
  %1733 = icmp eq i16 %1732, 0
  br i1 %1733, label %1759, label %1734

1734:                                             ; preds = %1722
  %1735 = load ptr, ptr %225, align 8, !tbaa !117
  %1736 = getelementptr inbounds %struct.ObjectRen, ptr %1735, i64 0, i32 2
  %1737 = load ptr, ptr %1736, align 8, !tbaa !118
  %1738 = getelementptr inbounds %struct.Object, ptr %1737, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %14, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 32), ptr noundef nonnull %1738) #10
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef nonnull %14) #10
  %1739 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12) #10
  call void @mul_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #10
  call void @mul_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #10
  call void @mul_transposed_m3_v3(ptr noundef nonnull %12, ptr noundef nonnull %17) #10
  %1740 = load float, ptr %17, align 4, !tbaa !96
  %1741 = load float, ptr %222, align 4, !tbaa !96
  %1742 = fmul float %1741, %1741
  %1743 = call float @llvm.fmuladd.f32(float %1740, float %1740, float %1742)
  %1744 = load float, ptr %224, align 4, !tbaa !96
  %1745 = call float @llvm.fmuladd.f32(float %1744, float %1744, float %1743)
  %1746 = fcmp ogt float %1745, 0x38AA95A5C0000000
  br i1 %1746, label %1747, label %1756

1747:                                             ; preds = %1734
  %1748 = call float @sqrtf(float noundef %1745) #10
  %1749 = fdiv float 1.000000e+00, %1748
  %1750 = load float, ptr %17, align 4, !tbaa !96
  %1751 = fmul float %1750, %1749
  store float %1751, ptr %17, align 4, !tbaa !96
  %1752 = load float, ptr %222, align 4, !tbaa !96
  %1753 = fmul float %1749, %1752
  store float %1753, ptr %222, align 4, !tbaa !96
  %1754 = load float, ptr %224, align 4, !tbaa !96
  %1755 = fmul float %1749, %1754
  br label %1757

1756:                                             ; preds = %1734
  store float 0.000000e+00, ptr %17, align 4, !tbaa !96
  store float 0.000000e+00, ptr %222, align 4, !tbaa !96
  br label %1757

1757:                                             ; preds = %1756, %1747
  %1758 = phi float [ 0.000000e+00, %1756 ], [ %1755, %1747 ]
  store float %1758, ptr %224, align 4, !tbaa !96
  br label %1759

1759:                                             ; preds = %1757, %1722
  %1760 = load float, ptr %217, align 4, !tbaa !96
  %1761 = load float, ptr %224, align 4, !tbaa !96
  %1762 = load float, ptr %219, align 4, !tbaa !96
  %1763 = load float, ptr %222, align 4, !tbaa !96
  %1764 = fneg float %1762
  %1765 = fmul float %1763, %1764
  %1766 = call float @llvm.fmuladd.f32(float %1760, float %1761, float %1765)
  store float %1766, ptr %226, align 4, !tbaa !96
  %1767 = load float, ptr %17, align 4, !tbaa !96
  %1768 = load float, ptr %16, align 4, !tbaa !96
  %1769 = fneg float %1768
  %1770 = fmul float %1761, %1769
  %1771 = call float @llvm.fmuladd.f32(float %1762, float %1767, float %1770)
  store float %1771, ptr %227, align 4, !tbaa !96
  %1772 = fneg float %1760
  %1773 = fmul float %1767, %1772
  %1774 = call float @llvm.fmuladd.f32(float %1768, float %1763, float %1773)
  store float %1774, ptr %228, align 4, !tbaa !96
  %1775 = load float, ptr %214, align 4, !tbaa !96
  %1776 = load float, ptr %212, align 4, !tbaa !96
  %1777 = fneg float %1761
  %1778 = fmul float %1776, %1777
  %1779 = call float @llvm.fmuladd.f32(float %1763, float %1775, float %1778)
  store float %1779, ptr %229, align 4, !tbaa !96
  %1780 = load float, ptr %15, align 4, !tbaa !96
  %1781 = fneg float %1767
  %1782 = fmul float %1775, %1781
  %1783 = call float @llvm.fmuladd.f32(float %1761, float %1780, float %1782)
  store float %1783, ptr %230, align 4, !tbaa !96
  %1784 = fneg float %1763
  %1785 = fmul float %1780, %1784
  %1786 = call float @llvm.fmuladd.f32(float %1767, float %1776, float %1785)
  store float %1786, ptr %231, align 4, !tbaa !96
  %1787 = fmul float %1771, %1776
  %1788 = call float @llvm.fmuladd.f32(float %1780, float %1766, float %1787)
  %1789 = call float @llvm.fmuladd.f32(float %1775, float %1774, float %1788)
  %1790 = fcmp olt float %1789, 0.000000e+00
  %1791 = select i1 %1790, float -1.000000e+00, float 1.000000e+00
  store float %1791, ptr %232, align 4, !tbaa !160
  %1792 = fmul float %1789, %1791
  %1793 = load i16, ptr %438, align 8, !tbaa !106
  %1794 = and i16 %1793, 2048
  %1795 = icmp eq i16 %1794, 0
  br i1 %1795, label %1836, label %1796

1796:                                             ; preds = %1759
  %1797 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %1798 = load ptr, ptr %1797, align 8, !tbaa !60
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1836, label %1800

1800:                                             ; preds = %1796
  %1801 = fmul float %1771, %1771
  %1802 = call float @llvm.fmuladd.f32(float %1766, float %1766, float %1801)
  %1803 = call float @llvm.fmuladd.f32(float %1774, float %1774, float %1802)
  %1804 = fcmp ogt float %1803, 0x38AA95A5C0000000
  br i1 %1804, label %1805, label %1814

1805:                                             ; preds = %1800
  %1806 = call float @sqrtf(float noundef %1803) #10
  %1807 = fdiv float 1.000000e+00, %1806
  %1808 = load float, ptr %226, align 4, !tbaa !96
  %1809 = fmul float %1808, %1807
  store float %1809, ptr %226, align 4, !tbaa !96
  %1810 = load float, ptr %227, align 4, !tbaa !96
  %1811 = fmul float %1807, %1810
  store float %1811, ptr %227, align 4, !tbaa !96
  %1812 = load float, ptr %228, align 4, !tbaa !96
  %1813 = fmul float %1807, %1812
  br label %1815

1814:                                             ; preds = %1800
  store float 0.000000e+00, ptr %226, align 4, !tbaa !96
  store float 0.000000e+00, ptr %227, align 4, !tbaa !96
  br label %1815

1815:                                             ; preds = %1814, %1805
  %1816 = phi float [ 0.000000e+00, %1814 ], [ %1813, %1805 ]
  store float %1816, ptr %228, align 4, !tbaa !96
  %1817 = load float, ptr %229, align 4, !tbaa !96
  %1818 = load float, ptr %230, align 4, !tbaa !96
  %1819 = fmul float %1818, %1818
  %1820 = call float @llvm.fmuladd.f32(float %1817, float %1817, float %1819)
  %1821 = load float, ptr %231, align 4, !tbaa !96
  %1822 = call float @llvm.fmuladd.f32(float %1821, float %1821, float %1820)
  %1823 = fcmp ogt float %1822, 0x38AA95A5C0000000
  br i1 %1823, label %1824, label %1833

1824:                                             ; preds = %1815
  %1825 = call float @sqrtf(float noundef %1822) #10
  %1826 = fdiv float 1.000000e+00, %1825
  %1827 = load float, ptr %229, align 4, !tbaa !96
  %1828 = fmul float %1827, %1826
  store float %1828, ptr %229, align 4, !tbaa !96
  %1829 = load float, ptr %230, align 4, !tbaa !96
  %1830 = fmul float %1826, %1829
  store float %1830, ptr %230, align 4, !tbaa !96
  %1831 = load float, ptr %231, align 4, !tbaa !96
  %1832 = fmul float %1826, %1831
  br label %1834

1833:                                             ; preds = %1815
  store float 0.000000e+00, ptr %229, align 4, !tbaa !96
  store float 0.000000e+00, ptr %230, align 4, !tbaa !96
  br label %1834

1834:                                             ; preds = %1833, %1824
  %1835 = phi float [ 0.000000e+00, %1833 ], [ %1832, %1824 ]
  store float %1835, ptr %231, align 4, !tbaa !96
  br label %1836

1836:                                             ; preds = %1834, %1796, %1759
  %1837 = phi float [ 1.000000e+00, %1834 ], [ %1792, %1796 ], [ %1792, %1759 ]
  %1838 = load i16, ptr %438, align 8, !tbaa !106
  %1839 = and i16 %1838, 1024
  %1840 = icmp eq i16 %1839, 0
  br i1 %1840, label %1850, label %1841

1841:                                             ; preds = %1836
  call void @mul_transposed_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %17) #10
  call void @mul_transposed_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %226) #10
  call void @mul_transposed_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %229) #10
  %1842 = load float, ptr %17, align 4, !tbaa !96
  %1843 = load float, ptr %222, align 4, !tbaa !96
  %1844 = fmul float %1843, %1843
  %1845 = call float @llvm.fmuladd.f32(float %1842, float %1842, float %1844)
  %1846 = load float, ptr %224, align 4, !tbaa !96
  %1847 = call float @llvm.fmuladd.f32(float %1846, float %1846, float %1845)
  %1848 = call float @sqrtf(float noundef %1847) #10
  %1849 = fmul float %1837, %1848
  br label %1850

1850:                                             ; preds = %1841, %1836
  %1851 = phi float [ %1849, %1841 ], [ %1837, %1836 ]
  %1852 = load float, ptr %233, align 4, !tbaa !149
  %1853 = fcmp ogt float %1852, 0.000000e+00
  br i1 %1853, label %1854, label %1863

1854:                                             ; preds = %1850, %1854
  %1855 = phi i64 [ %1861, %1854 ], [ 0, %1850 ]
  %1856 = load float, ptr %233, align 4, !tbaa !149
  %1857 = fdiv float %1851, %1856
  %1858 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 3, i64 %1855
  %1859 = load float, ptr %1858, align 4, !tbaa !96
  %1860 = fmul float %1859, %1857
  store float %1860, ptr %1858, align 4, !tbaa !96
  %1861 = add nuw nsw i64 %1855, 1
  %1862 = icmp eq i64 %1861, 3
  br i1 %1862, label %1863, label %1854, !llvm.loop !161

1863:                                             ; preds = %1854, %1850
  store float %1851, ptr %233, align 4, !tbaa !149
  store i32 %1719, ptr %209, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #10
  br label %1864

1864:                                             ; preds = %1863, %1708
  %1865 = load i16, ptr %438, align 8, !tbaa !106
  %1866 = and i16 %1865, 2048
  %1867 = icmp eq i16 %1866, 0
  br i1 %1867, label %1892, label %1868

1868:                                             ; preds = %1864
  %1869 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %1870 = load ptr, ptr %1869, align 8, !tbaa !60
  %1871 = icmp eq ptr %1870, null
  br i1 %1871, label %1892, label %1872

1872:                                             ; preds = %1868
  %1873 = fmul float %1280, 1.024000e+03
  %1874 = load float, ptr %30, align 4, !tbaa !96
  %1875 = fmul float %1874, 1.024000e+03
  %1876 = load float, ptr %234, align 4, !tbaa !96
  %1877 = fmul float %1873, %1876
  %1878 = fmul float %1877, %1877
  %1879 = call float @llvm.fmuladd.f32(float %1875, float %1875, float %1878)
  %1880 = call float @sqrtf(float noundef %1879) #10
  %1881 = fdiv float 1.000000e+00, %1880
  %1882 = fmul float %1710, %1881
  %1883 = load float, ptr %31, align 4, !tbaa !96
  %1884 = fmul float %1883, 1.024000e+03
  %1885 = load float, ptr %235, align 4, !tbaa !96
  %1886 = fmul float %1873, %1885
  %1887 = fmul float %1886, %1886
  %1888 = call float @llvm.fmuladd.f32(float %1884, float %1884, float %1887)
  %1889 = call float @sqrtf(float noundef %1888) #10
  %1890 = fdiv float 1.000000e+00, %1889
  %1891 = fmul float %1709, %1890
  br label %1892

1892:                                             ; preds = %1872, %1868, %1864
  %1893 = phi float [ %1891, %1872 ], [ %1709, %1868 ], [ %1709, %1864 ]
  %1894 = phi float [ %1882, %1872 ], [ %1710, %1868 ], [ %1710, %1864 ]
  %1895 = load ptr, ptr %139, align 8, !tbaa !134
  br label %1896

1896:                                             ; preds = %1892, %1896
  %1897 = phi i64 [ 0, %1892 ], [ %1910, %1896 ]
  %1898 = load float, ptr %236, align 4, !tbaa !160
  %1899 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 4, i64 %1897
  %1900 = load float, ptr %1899, align 4, !tbaa !96
  %1901 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 5, i64 %1897
  %1902 = load float, ptr %1901, align 4, !tbaa !96
  %1903 = fmul float %1893, %1902
  %1904 = call float @llvm.fmuladd.f32(float %1894, float %1900, float %1903)
  %1905 = fmul float %1898, %1904
  %1906 = getelementptr inbounds %struct.NTapBump, ptr %27, i64 0, i32 3, i64 %1897
  %1907 = load float, ptr %1906, align 4, !tbaa !96
  %1908 = fsub float %1907, %1905
  store float %1908, ptr %1906, align 4, !tbaa !96
  %1909 = getelementptr inbounds float, ptr %1895, i64 %1897
  store float %1908, ptr %1909, align 4, !tbaa !96
  %1910 = add nuw nsw i64 %1897, 1
  %1911 = icmp eq i64 %1910, 3
  br i1 %1911, label %1912, label %1896, !llvm.loop !162

1912:                                             ; preds = %1896
  %1913 = or i32 %1711, 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %1970

1914:                                             ; preds = %1209
  call fastcc void @texco_mapping(ptr noundef nonnull %0, ptr noundef nonnull %425, ptr noundef nonnull %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1915 = load ptr, ptr %140, align 8, !tbaa !136
  %1916 = load ptr, ptr %424, align 8, !tbaa !93
  %1917 = getelementptr inbounds %struct.Tex, ptr %1916, i64 0, i32 61
  %1918 = load i8, ptr %1917, align 8, !tbaa !74
  %1919 = icmp eq i8 %1918, 0
  br i1 %1919, label %1935, label %1920

1920:                                             ; preds = %1914
  %1921 = getelementptr inbounds %struct.Tex, ptr %1916, i64 0, i32 52
  %1922 = load ptr, ptr %1921, align 8, !tbaa !73
  %1923 = icmp eq ptr %1922, null
  br i1 %1923, label %1935, label %1924

1924:                                             ; preds = %1920
  %1925 = load i16, ptr %46, align 8, !tbaa !107
  %1926 = sext i16 %1925 to i32
  %1927 = load i16, ptr %141, align 2, !tbaa !142
  %1928 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1929 = load i16, ptr %1928, align 2, !tbaa !83
  %1930 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1931 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1932 = lshr i32 %1931, 18
  %1933 = and i32 %1932, 1
  %1934 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1922, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1926, i16 noundef signext %1927, ptr noundef %1916, i16 noundef signext %1929, i32 noundef %1930, i32 noundef %1933, ptr noundef %0, ptr noundef %421) #10
  br label %1970

1935:                                             ; preds = %1920, %1914
  %1936 = load i16, ptr %46, align 8, !tbaa !107
  %1937 = sext i16 %1936 to i32
  %1938 = load i16, ptr %142, align 2, !tbaa !142
  %1939 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1940 = load i16, ptr %1939, align 2, !tbaa !83
  %1941 = call fastcc i32 @multitex(ptr noundef %1916, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1937, ptr noundef nonnull %28, i16 noundef signext %1938, i16 noundef signext %1940, ptr noundef %1915)
  br label %1970

1942:                                             ; preds = %716, %709
  call fastcc void @texco_mapping(ptr noundef nonnull %0, ptr noundef nonnull %425, ptr noundef nonnull %421, ptr noundef %710, ptr noundef %690, ptr noundef nonnull %689, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31)
  %1943 = load ptr, ptr %297, align 8, !tbaa !136
  %1944 = load ptr, ptr %424, align 8, !tbaa !93
  %1945 = getelementptr inbounds %struct.Tex, ptr %1944, i64 0, i32 61
  %1946 = load i8, ptr %1945, align 8, !tbaa !74
  %1947 = icmp eq i8 %1946, 0
  br i1 %1947, label %1963, label %1948

1948:                                             ; preds = %1942
  %1949 = getelementptr inbounds %struct.Tex, ptr %1944, i64 0, i32 52
  %1950 = load ptr, ptr %1949, align 8, !tbaa !73
  %1951 = icmp eq ptr %1950, null
  br i1 %1951, label %1963, label %1952

1952:                                             ; preds = %1948
  %1953 = load i16, ptr %46, align 8, !tbaa !107
  %1954 = sext i16 %1953 to i32
  %1955 = load i16, ptr %298, align 2, !tbaa !142
  %1956 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1957 = load i16, ptr %1956, align 2, !tbaa !83
  %1958 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %1959 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %1960 = lshr i32 %1959, 18
  %1961 = and i32 %1960, 1
  %1962 = call i32 @ntreeTexExecTree(ptr noundef nonnull %1950, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1954, i16 noundef signext %1955, ptr noundef %1944, i16 noundef signext %1957, i32 noundef %1958, i32 noundef %1961, ptr noundef %0, ptr noundef %421) #10
  br label %1970

1963:                                             ; preds = %1948, %1942
  %1964 = load i16, ptr %46, align 8, !tbaa !107
  %1965 = sext i16 %1964 to i32
  %1966 = load i16, ptr %299, align 2, !tbaa !142
  %1967 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 19
  %1968 = load i16, ptr %1967, align 2, !tbaa !83
  %1969 = call fastcc i32 @multitex(ptr noundef %1944, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, i32 noundef %1965, ptr noundef nonnull %28, i16 noundef signext %1966, i16 noundef signext %1968, ptr noundef %1943)
  br label %1970

1970:                                             ; preds = %1963, %1952, %1935, %1924, %1169, %1912
  %1971 = phi i32 [ %1208, %1169 ], [ %1913, %1912 ], [ %1934, %1924 ], [ %1941, %1935 ], [ %1962, %1952 ], [ %1969, %1963 ]
  %1972 = and i32 %1971, 1
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1986, label %1974

1974:                                             ; preds = %1970
  %1975 = load i16, ptr %438, align 8, !tbaa !106
  %1976 = and i16 %1975, 1
  %1977 = icmp eq i16 %1976, 0
  br i1 %1977, label %1986, label %1978

1978:                                             ; preds = %1974
  %1979 = load float, ptr %300, align 4, !tbaa !96
  %1980 = load float, ptr %301, align 8, !tbaa !96
  %1981 = fmul float %1980, 0x3FE28F5C20000000
  %1982 = call float @llvm.fmuladd.f32(float %1979, float 0x3FD3333340000000, float %1981)
  %1983 = load float, ptr %302, align 4, !tbaa !96
  %1984 = call float @llvm.fmuladd.f32(float %1983, float 0x3FBEB851E0000000, float %1982)
  store float %1984, ptr %28, align 8, !tbaa !146
  %1985 = add nsw i32 %1971, -1
  br label %1986

1986:                                             ; preds = %1978, %1974, %1970
  %1987 = phi i32 [ %1985, %1978 ], [ %1971, %1974 ], [ %1971, %1970 ]
  %1988 = load i16, ptr %438, align 8, !tbaa !106
  %1989 = and i16 %1988, 4
  %1990 = icmp eq i16 %1989, 0
  br i1 %1990, label %2004, label %1991

1991:                                             ; preds = %1986
  %1992 = and i32 %1987, 1
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2001, label %1994

1994:                                             ; preds = %1991
  %1995 = load float, ptr %303, align 4, !tbaa !143
  %1996 = fsub float 1.000000e+00, %1995
  store float %1996, ptr %303, align 4, !tbaa !143
  %1997 = load float, ptr %304, align 8, !tbaa !144
  %1998 = fsub float 1.000000e+00, %1997
  store float %1998, ptr %304, align 8, !tbaa !144
  %1999 = load float, ptr %305, align 4, !tbaa !145
  %2000 = fsub float 1.000000e+00, %1999
  store float %2000, ptr %305, align 4, !tbaa !145
  br label %2001

2001:                                             ; preds = %1994, %1991
  %2002 = load float, ptr %28, align 8, !tbaa !146
  %2003 = fsub float 1.000000e+00, %2002
  store float %2003, ptr %28, align 8, !tbaa !146
  br label %2004

2004:                                             ; preds = %2001, %1986
  %2005 = and i16 %1988, 2
  %2006 = icmp eq i16 %2005, 0
  br i1 %2006, label %2016, label %2007

2007:                                             ; preds = %2004
  %2008 = and i32 %1987, 1
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2013, label %2010

2010:                                             ; preds = %2007
  %2011 = load float, ptr %306, align 8, !tbaa !163
  %2012 = fmul float %402, %2011
  store float %2012, ptr %306, align 8, !tbaa !163
  br label %2018

2013:                                             ; preds = %2007
  %2014 = load float, ptr %28, align 8, !tbaa !146
  %2015 = fmul float %402, %2014
  store float %2015, ptr %28, align 8, !tbaa !146
  br label %2018

2016:                                             ; preds = %2004
  %2017 = fmul float %403, %402
  br label %2018

2018:                                             ; preds = %2010, %2013, %2016
  %2019 = phi float [ %403, %2010 ], [ %403, %2013 ], [ %2017, %2016 ]
  %2020 = phi float [ %2012, %2010 ], [ %2015, %2013 ], [ %402, %2016 ]
  %2021 = load ptr, ptr %139, align 8, !tbaa !134
  %2022 = icmp eq ptr %2021, null
  br i1 %2022, label %2097, label %2023

2023:                                             ; preds = %2018
  %2024 = and i32 %1987, 2
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2026, label %2060

2026:                                             ; preds = %2023
  %2027 = and i32 %1987, 1
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2034, label %2029

2029:                                             ; preds = %2026
  %2030 = load float, ptr %307, align 4, !tbaa !96
  store float %2030, ptr %2021, align 4, !tbaa !96
  %2031 = load float, ptr %308, align 8, !tbaa !96
  %2032 = getelementptr inbounds float, ptr %2021, i64 1
  store float %2031, ptr %2032, align 4, !tbaa !96
  %2033 = load float, ptr %309, align 4, !tbaa !96
  br label %2056

2034:                                             ; preds = %2026
  %2035 = load float, ptr %28, align 8, !tbaa !146
  %2036 = fadd float %2035, -5.000000e-01
  %2037 = call float @cosf(float noundef %2036) #10
  %2038 = fmul float %2037, 5.000000e-01
  %2039 = load float, ptr %28, align 8, !tbaa !146
  %2040 = fadd float %2039, -5.000000e-01
  %2041 = call float @sinf(float noundef %2040) #10
  %2042 = fmul float %2041, 5.000000e-01
  %2043 = load float, ptr %310, align 4, !tbaa !96
  %2044 = load float, ptr %311, align 4, !tbaa !96
  %2045 = fmul float %2042, %2044
  %2046 = call float @llvm.fmuladd.f32(float %2043, float %2038, float %2045)
  %2047 = load ptr, ptr %139, align 8, !tbaa !134
  store float %2046, ptr %2047, align 4, !tbaa !96
  %2048 = load float, ptr %311, align 4, !tbaa !96
  %2049 = load float, ptr %312, align 4, !tbaa !96
  %2050 = fmul float %2042, %2049
  %2051 = call float @llvm.fmuladd.f32(float %2048, float %2038, float %2050)
  %2052 = getelementptr inbounds float, ptr %2047, i64 1
  store float %2051, ptr %2052, align 4, !tbaa !96
  %2053 = fneg float %2048
  %2054 = fmul float %2042, %2053
  %2055 = call float @llvm.fmuladd.f32(float %2049, float %2038, float %2054)
  br label %2056

2056:                                             ; preds = %2034, %2029
  %2057 = phi ptr [ %2021, %2029 ], [ %2047, %2034 ]
  %2058 = phi float [ %2033, %2029 ], [ %2055, %2034 ]
  %2059 = getelementptr inbounds float, ptr %2057, i64 2
  store float %2058, ptr %2059, align 4, !tbaa !96
  br label %2060

2060:                                             ; preds = %2056, %2023
  %2061 = load i16, ptr %692, align 2, !tbaa !87
  %2062 = and i16 %2061, 8192
  %2063 = icmp eq i16 %2062, 0
  br i1 %2063, label %2097, label %2064

2064:                                             ; preds = %2060
  %2065 = load ptr, ptr %139, align 8, !tbaa !134
  %2066 = getelementptr inbounds float, ptr %2065, i64 2
  %2067 = getelementptr inbounds float, ptr %2065, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36)
  br i1 %465, label %2068, label %2085

2068:                                             ; preds = %2064
  %2069 = load float, ptr %2065, align 4, !tbaa !96
  store float %2069, ptr %34, align 4, !tbaa !96
  %2070 = load float, ptr %2067, align 4, !tbaa !96
  store float %2070, ptr %35, align 4, !tbaa !96
  %2071 = load float, ptr %2066, align 4, !tbaa !96
  store float %2071, ptr %36, align 4, !tbaa !96
  %2072 = fmul float %2070, %2070
  %2073 = call float @llvm.fmuladd.f32(float %2069, float %2069, float %2072)
  %2074 = call float @llvm.fmuladd.f32(float %2071, float %2071, float %2073)
  %2075 = fcmp ogt float %2074, 0x38AA95A5C0000000
  br i1 %2075, label %2076, label %2082

2076:                                             ; preds = %2068
  %2077 = call float @sqrtf(float noundef %2074) #10
  %2078 = fdiv float 1.000000e+00, %2077
  %2079 = fmul float %2069, %2078
  store float %2079, ptr %34, align 4, !tbaa !96
  %2080 = fmul float %2070, %2078
  store float %2080, ptr %35, align 4, !tbaa !96
  %2081 = fmul float %2071, %2078
  br label %2083

2082:                                             ; preds = %2068
  store float 0.000000e+00, ptr %34, align 4, !tbaa !96
  store float 0.000000e+00, ptr %35, align 4, !tbaa !96
  br label %2083

2083:                                             ; preds = %2076, %2082
  %2084 = phi float [ 0.000000e+00, %2082 ], [ %2081, %2076 ]
  store float %2084, ptr %36, align 4, !tbaa !96
  br label %2085

2085:                                             ; preds = %2083, %2064
  %2086 = phi ptr [ %34, %2083 ], [ %2065, %2064 ]
  %2087 = phi ptr [ %35, %2083 ], [ %2067, %2064 ]
  %2088 = phi ptr [ %36, %2083 ], [ %2066, %2064 ]
  %2089 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 32
  %2090 = load float, ptr %2089, align 4, !tbaa !164
  %2091 = load float, ptr %2086, align 4, !tbaa !96
  %2092 = fmul float %2090, %2091
  %2093 = load float, ptr %2087, align 4, !tbaa !96
  %2094 = fmul float %2090, %2093
  %2095 = load float, ptr %2088, align 4, !tbaa !96
  %2096 = fmul float %2090, %2095
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36)
  br label %2097

2097:                                             ; preds = %2060, %2085, %2018
  %2098 = phi float [ %411, %2018 ], [ %411, %2060 ], [ %2096, %2085 ]
  %2099 = phi float [ %410, %2018 ], [ %410, %2060 ], [ %2094, %2085 ]
  %2100 = phi float [ %409, %2018 ], [ %409, %2060 ], [ %2092, %2085 ]
  %2101 = phi i8 [ %404, %2018 ], [ %404, %2060 ], [ 1, %2085 ]
  %2102 = load i16, ptr %692, align 2, !tbaa !87
  %2103 = and i16 %2102, 13
  %2104 = icmp eq i16 %2103, 0
  br i1 %2104, label %2209, label %2105

2105:                                             ; preds = %2097
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %2106 = load float, ptr %313, align 4, !tbaa !96
  store float %2106, ptr %37, align 4, !tbaa !96
  %2107 = load float, ptr %314, align 8, !tbaa !96
  store float %2107, ptr %315, align 4, !tbaa !96
  %2108 = load float, ptr %316, align 4, !tbaa !96
  store float %2108, ptr %317, align 4, !tbaa !96
  %2109 = and i32 %1987, 1
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2111, label %2118

2111:                                             ; preds = %2105
  %2112 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 22
  %2113 = load float, ptr %2112, align 4, !tbaa !96
  store float %2113, ptr %37, align 4, !tbaa !96
  %2114 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 23
  %2115 = load float, ptr %2114, align 4, !tbaa !96
  store float %2115, ptr %315, align 4, !tbaa !96
  %2116 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 24
  %2117 = load float, ptr %2116, align 4, !tbaa !96
  store float %2117, ptr %317, align 4, !tbaa !96
  br label %2125

2118:                                             ; preds = %2105
  %2119 = load i16, ptr %692, align 2, !tbaa !87
  %2120 = and i16 %2119, 128
  %2121 = icmp eq i16 %2120, 0
  br i1 %2121, label %2123, label %2122

2122:                                             ; preds = %2118
  store float %2020, ptr %28, align 8, !tbaa !146
  br label %2125

2123:                                             ; preds = %2118
  %2124 = load float, ptr %318, align 8, !tbaa !163
  store float %2124, ptr %28, align 8, !tbaa !146
  br label %2125

2125:                                             ; preds = %2122, %2123, %2111
  %2126 = load i16, ptr %428, align 8, !tbaa !63
  %2127 = icmp eq i16 %2126, 8
  br i1 %2127, label %2128, label %2147

2128:                                             ; preds = %2125
  %2129 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 54
  %2130 = load ptr, ptr %2129, align 8, !tbaa !60
  %2131 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 51
  %2132 = load ptr, ptr %319, align 8, !tbaa !136
  %2133 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %2130, ptr noundef nonnull %2131, ptr noundef %2132) #10
  %2134 = icmp eq ptr %2133, null
  br i1 %2134, label %2145, label %2135

2135:                                             ; preds = %2128
  %2136 = getelementptr inbounds %struct.ImBuf, ptr %2133, i64 0, i32 9
  %2137 = load ptr, ptr %2136, align 8, !tbaa !88
  %2138 = icmp eq ptr %2137, null
  %2139 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %2140 = icmp ne i8 %2139, 0
  %2141 = select i1 %2138, i1 %2140, i1 false
  br i1 %2141, label %2142, label %2145

2142:                                             ; preds = %2135
  %2143 = getelementptr inbounds %struct.ImBuf, ptr %2133, i64 0, i32 34
  %2144 = load ptr, ptr %2143, align 8, !tbaa !91
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %37, ptr noundef %2144) #10
  br label %2145

2145:                                             ; preds = %2142, %2135, %2128
  %2146 = load ptr, ptr %319, align 8, !tbaa !136
  call void @BKE_image_pool_release_ibuf(ptr noundef %2130, ptr noundef %2133, ptr noundef %2146) #10
  br label %2147

2147:                                             ; preds = %2145, %2125
  %2148 = load i16, ptr %692, align 2, !tbaa !87
  %2149 = and i16 %2148, 1
  %2150 = icmp eq i16 %2149, 0
  br i1 %2150, label %2159, label %2151

2151:                                             ; preds = %2147
  %2152 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 28
  %2153 = load float, ptr %2152, align 4, !tbaa !165
  %2154 = fmul float %2020, %2153
  %2155 = load float, ptr %28, align 8, !tbaa !146
  %2156 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2157 = load i16, ptr %2156, align 2, !tbaa !166
  %2158 = sext i16 %2157 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %320, ptr noundef nonnull %37, ptr noundef nonnull %320, float noundef %2155, float noundef %2154, i32 noundef %2158)
  br label %2159

2159:                                             ; preds = %2151, %2147
  %2160 = load i16, ptr %692, align 2, !tbaa !87
  %2161 = and i16 %2160, 4
  %2162 = icmp eq i16 %2161, 0
  br i1 %2162, label %2171, label %2163

2163:                                             ; preds = %2159
  %2164 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 33
  %2165 = load float, ptr %2164, align 8, !tbaa !167
  %2166 = fmul float %2020, %2165
  %2167 = load float, ptr %28, align 8, !tbaa !146
  %2168 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2169 = load i16, ptr %2168, align 2, !tbaa !166
  %2170 = sext i16 %2169 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %321, ptr noundef nonnull %37, ptr noundef nonnull %321, float noundef %2167, float noundef %2166, i32 noundef %2170)
  br label %2171

2171:                                             ; preds = %2163, %2159
  %2172 = load i16, ptr %692, align 2, !tbaa !87
  %2173 = and i16 %2172, 8
  %2174 = icmp eq i16 %2173, 0
  br i1 %2174, label %2208, label %2175

2175:                                             ; preds = %2171
  %2176 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 34
  %2177 = load float, ptr %2176, align 4, !tbaa !168
  %2178 = fmul float %2020, %2177
  %2179 = load i16, ptr %428, align 8, !tbaa !63
  %2180 = icmp eq i16 %2179, 10
  br i1 %2180, label %2181, label %2203

2181:                                             ; preds = %2175
  %2182 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2183 = load i16, ptr %2182, align 2, !tbaa !166
  %2184 = icmp eq i16 %2183, 0
  br i1 %2184, label %2185, label %2203

2185:                                             ; preds = %2181
  %2186 = load float, ptr %28, align 8, !tbaa !146
  %2187 = fmul float %2178, %2186
  %2188 = fsub float 1.000000e+00, %2187
  %2189 = load float, ptr %323, align 8, !tbaa !96
  %2190 = call float @llvm.fmuladd.f32(float %2188, float %2189, float %2187)
  store float %2190, ptr %323, align 8, !tbaa !96
  %2191 = load float, ptr %37, align 4, !tbaa !96
  %2192 = load float, ptr %324, align 4, !tbaa !96
  %2193 = fmul float %2188, %2192
  %2194 = call float @llvm.fmuladd.f32(float %2187, float %2191, float %2193)
  store float %2194, ptr %324, align 4, !tbaa !96
  %2195 = load float, ptr %315, align 4, !tbaa !96
  %2196 = load float, ptr %325, align 8, !tbaa !96
  %2197 = fmul float %2188, %2196
  %2198 = call float @llvm.fmuladd.f32(float %2187, float %2195, float %2197)
  store float %2198, ptr %325, align 8, !tbaa !96
  %2199 = load float, ptr %317, align 4, !tbaa !96
  %2200 = load float, ptr %326, align 4, !tbaa !96
  %2201 = fmul float %2188, %2200
  %2202 = call float @llvm.fmuladd.f32(float %2187, float %2199, float %2201)
  store float %2202, ptr %326, align 4, !tbaa !96
  br label %2208

2203:                                             ; preds = %2181, %2175
  %2204 = load float, ptr %28, align 8, !tbaa !146
  %2205 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2206 = load i16, ptr %2205, align 2, !tbaa !166
  %2207 = sext i16 %2206 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %322, ptr noundef nonnull %37, ptr noundef nonnull %322, float noundef %2204, float noundef %2178, i32 noundef %2207)
  br label %2208

2208:                                             ; preds = %2185, %2203, %2171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  br label %2209

2209:                                             ; preds = %2208, %2097
  %2210 = load i16, ptr %692, align 2, !tbaa !87
  %2211 = and i16 %2210, 2
  %2212 = icmp ne i16 %2211, 0
  %2213 = load ptr, ptr %139, align 8
  %2214 = icmp ne ptr %2213, null
  %2215 = select i1 %2212, i1 %2214, i1 false
  br i1 %2215, label %2216, label %2410

2216:                                             ; preds = %2209
  %2217 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 30
  %2218 = load float, ptr %2217, align 4, !tbaa !139
  %2219 = load i16, ptr %428, align 8, !tbaa !63
  %2220 = icmp eq i16 %2219, 8
  br i1 %2220, label %2221, label %2336

2221:                                             ; preds = %2216
  %2222 = getelementptr inbounds %struct.Tex, ptr %425, i64 0, i32 30
  %2223 = load i16, ptr %2222, align 4, !tbaa !64
  %2224 = and i16 %2223, 2048
  %2225 = icmp eq i16 %2224, 0
  br i1 %2225, label %2336, label %2226

2226:                                             ; preds = %2221
  %2227 = fcmp olt float %2218, 0.000000e+00
  br i1 %2227, label %2228, label %2234

2228:                                             ; preds = %2226
  %2229 = load float, ptr %2213, align 4, !tbaa !96
  %2230 = fneg float %2229
  store float %2230, ptr %2213, align 4, !tbaa !96
  %2231 = getelementptr inbounds float, ptr %2213, i64 1
  %2232 = load float, ptr %2231, align 4, !tbaa !96
  %2233 = fneg float %2232
  store float %2233, ptr %2231, align 4, !tbaa !96
  br label %2234

2234:                                             ; preds = %2228, %2226
  %2235 = call float @llvm.fabs.f32(float %2218)
  %2236 = fmul float %2019, %2235
  %2237 = fcmp ogt float %2236, 1.000000e+00
  %2238 = select i1 %2237, float 1.000000e+00, float %2236
  %2239 = fsub float 1.000000e+00, %2238
  %2240 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 18
  %2241 = load i16, ptr %2240, align 8, !tbaa !169
  %2242 = icmp eq i16 %2241, 3
  br i1 %2242, label %2243, label %2289

2243:                                             ; preds = %2234
  %2244 = icmp eq i8 %408, 0
  %2245 = select i1 %2244, ptr %334, ptr %333
  %2246 = getelementptr inbounds float, ptr %2245, i64 1
  %2247 = load float, ptr %2246, align 4, !tbaa !96
  %2248 = load float, ptr %336, align 4, !tbaa !96
  %2249 = getelementptr inbounds float, ptr %2245, i64 2
  %2250 = load float, ptr %2249, align 4, !tbaa !96
  %2251 = load float, ptr %337, align 4, !tbaa !96
  %2252 = fneg float %2250
  %2253 = fmul float %2251, %2252
  %2254 = call float @llvm.fmuladd.f32(float %2247, float %2248, float %2253)
  %2255 = load float, ptr %335, align 4, !tbaa !96
  %2256 = load float, ptr %2245, align 4, !tbaa !96
  %2257 = fneg float %2256
  %2258 = fmul float %2248, %2257
  %2259 = call float @llvm.fmuladd.f32(float %2250, float %2255, float %2258)
  %2260 = fneg float %2247
  %2261 = fmul float %2255, %2260
  %2262 = call float @llvm.fmuladd.f32(float %2256, float %2251, float %2261)
  %2263 = load float, ptr %338, align 4, !tbaa !96
  %2264 = fmul float %2254, %2263
  %2265 = fmul float %2263, %2259
  %2266 = fmul float %2262, %2263
  %2267 = load float, ptr %2213, align 4, !tbaa !96
  %2268 = getelementptr inbounds float, ptr %2213, i64 1
  %2269 = load float, ptr %2268, align 4, !tbaa !96
  %2270 = fmul float %2264, %2269
  %2271 = call float @llvm.fmuladd.f32(float %2267, float %2255, float %2270)
  %2272 = getelementptr inbounds float, ptr %2213, i64 2
  %2273 = load float, ptr %2272, align 4, !tbaa !96
  %2274 = call float @llvm.fmuladd.f32(float %2273, float %2256, float %2271)
  %2275 = fmul float %2269, %2265
  %2276 = call float @llvm.fmuladd.f32(float %2267, float %2251, float %2275)
  %2277 = call float @llvm.fmuladd.f32(float %2273, float %2247, float %2276)
  %2278 = fmul float %2266, %2269
  %2279 = call float @llvm.fmuladd.f32(float %2267, float %2248, float %2278)
  %2280 = call float @llvm.fmuladd.f32(float %2273, float %2250, float %2279)
  %2281 = fmul float %2238, %2274
  %2282 = call float @llvm.fmuladd.f32(float %2239, float %2256, float %2281)
  store float %2282, ptr %334, align 4, !tbaa !96
  %2283 = load float, ptr %2246, align 4, !tbaa !96
  %2284 = fmul float %2238, %2277
  %2285 = call float @llvm.fmuladd.f32(float %2239, float %2283, float %2284)
  store float %2285, ptr %339, align 4, !tbaa !96
  %2286 = load float, ptr %2249, align 4, !tbaa !96
  %2287 = fmul float %2238, %2280
  %2288 = call float @llvm.fmuladd.f32(float %2239, float %2286, float %2287)
  store float %2288, ptr %340, align 4, !tbaa !96
  br label %2383

2289:                                             ; preds = %2234
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %2290 = load float, ptr %2213, align 4, !tbaa !96
  store float %2290, ptr %38, align 4, !tbaa !96
  %2291 = getelementptr inbounds float, ptr %2213, i64 1
  %2292 = load float, ptr %2291, align 4, !tbaa !96
  store float %2292, ptr %327, align 4, !tbaa !96
  %2293 = getelementptr inbounds float, ptr %2213, i64 2
  %2294 = load float, ptr %2293, align 4, !tbaa !96
  store float %2294, ptr %328, align 4, !tbaa !96
  switch i16 %2241, label %2305 [
    i16 2, label %2295
    i16 1, label %2304
  ]

2295:                                             ; preds = %2289
  %2296 = load ptr, ptr %329, align 8, !tbaa !117
  %2297 = icmp eq ptr %2296, null
  br i1 %2297, label %2304, label %2298

2298:                                             ; preds = %2295
  %2299 = getelementptr inbounds %struct.ObjectRen, ptr %2296, i64 0, i32 2
  %2300 = load ptr, ptr %2299, align 8, !tbaa !118
  %2301 = icmp eq ptr %2300, null
  br i1 %2301, label %2304, label %2302

2302:                                             ; preds = %2298
  %2303 = getelementptr inbounds %struct.Object, ptr %2300, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %2303, ptr noundef nonnull %38) #10
  br label %2304

2304:                                             ; preds = %2295, %2298, %2302, %2289
  call void @mul_mat3_m4_v3(ptr noundef nonnull %399, ptr noundef nonnull %38) #10
  br label %2305

2305:                                             ; preds = %2304, %2289
  %2306 = load float, ptr %38, align 4, !tbaa !96
  %2307 = load float, ptr %327, align 4, !tbaa !96
  %2308 = fmul float %2307, %2307
  %2309 = call float @llvm.fmuladd.f32(float %2306, float %2306, float %2308)
  %2310 = load float, ptr %328, align 4, !tbaa !96
  %2311 = call float @llvm.fmuladd.f32(float %2310, float %2310, float %2309)
  %2312 = fcmp ogt float %2311, 0x38AA95A5C0000000
  br i1 %2312, label %2313, label %2322

2313:                                             ; preds = %2305
  %2314 = call float @sqrtf(float noundef %2311) #10
  %2315 = fdiv float 1.000000e+00, %2314
  %2316 = load float, ptr %38, align 4, !tbaa !96
  %2317 = fmul float %2316, %2315
  store float %2317, ptr %38, align 4, !tbaa !96
  %2318 = load float, ptr %327, align 4, !tbaa !96
  %2319 = fmul float %2315, %2318
  store float %2319, ptr %327, align 4, !tbaa !96
  %2320 = load float, ptr %328, align 4, !tbaa !96
  %2321 = fmul float %2315, %2320
  br label %2323

2322:                                             ; preds = %2305
  store float 0.000000e+00, ptr %38, align 4, !tbaa !96
  store float 0.000000e+00, ptr %327, align 4, !tbaa !96
  br label %2323

2323:                                             ; preds = %2313, %2322
  %2324 = phi float [ 0.000000e+00, %2322 ], [ %2321, %2313 ]
  store float %2324, ptr %328, align 4, !tbaa !96
  %2325 = load float, ptr %330, align 4, !tbaa !96
  %2326 = load float, ptr %38, align 4, !tbaa !96
  %2327 = fmul float %2238, %2326
  %2328 = call float @llvm.fmuladd.f32(float %2239, float %2325, float %2327)
  store float %2328, ptr %330, align 4, !tbaa !96
  %2329 = load float, ptr %331, align 4, !tbaa !96
  %2330 = load float, ptr %327, align 4, !tbaa !96
  %2331 = fmul float %2238, %2330
  %2332 = call float @llvm.fmuladd.f32(float %2239, float %2329, float %2331)
  store float %2332, ptr %331, align 4, !tbaa !96
  %2333 = load float, ptr %332, align 4, !tbaa !96
  %2334 = fmul float %2238, %2324
  %2335 = call float @llvm.fmuladd.f32(float %2239, float %2333, float %2334)
  store float %2335, ptr %332, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  br label %2383

2336:                                             ; preds = %2221, %2216
  %2337 = select i1 %467, i1 true, i1 %465
  br i1 %2337, label %2338, label %2344

2338:                                             ; preds = %2336
  %2339 = load float, ptr %2213, align 4, !tbaa !96
  store float %2339, ptr %347, align 4, !tbaa !96
  %2340 = getelementptr inbounds float, ptr %2213, i64 1
  %2341 = load float, ptr %2340, align 4, !tbaa !96
  store float %2341, ptr %348, align 4, !tbaa !96
  %2342 = getelementptr inbounds float, ptr %2213, i64 2
  %2343 = load float, ptr %2342, align 4, !tbaa !96
  store float %2343, ptr %349, align 4, !tbaa !96
  br label %2383

2344:                                             ; preds = %2336
  %2345 = load ptr, ptr %0, align 8, !tbaa !101
  %2346 = getelementptr inbounds %struct.Material, ptr %2345, i64 0, i32 51
  %2347 = load i32, ptr %2346, align 4, !tbaa !170
  %2348 = and i32 %2347, 67108864
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2363, label %2350

2350:                                             ; preds = %2344
  %2351 = fmul float %2019, %2218
  %2352 = load float, ptr %2213, align 4, !tbaa !96
  %2353 = load float, ptr %341, align 8, !tbaa !96
  %2354 = call float @llvm.fmuladd.f32(float %2351, float %2352, float %2353)
  store float %2354, ptr %341, align 8, !tbaa !96
  %2355 = getelementptr inbounds float, ptr %2213, i64 1
  %2356 = load float, ptr %2355, align 4, !tbaa !96
  %2357 = load float, ptr %342, align 4, !tbaa !96
  %2358 = call float @llvm.fmuladd.f32(float %2351, float %2356, float %2357)
  store float %2358, ptr %342, align 4, !tbaa !96
  %2359 = getelementptr inbounds float, ptr %2213, i64 2
  %2360 = load float, ptr %2359, align 4, !tbaa !96
  %2361 = load float, ptr %343, align 8, !tbaa !96
  %2362 = call float @llvm.fmuladd.f32(float %2351, float %2360, float %2361)
  store float %2362, ptr %343, align 8, !tbaa !96
  br label %2363

2363:                                             ; preds = %2350, %2344
  %2364 = fmul float %2019, %2218
  %2365 = load float, ptr %2213, align 4, !tbaa !96
  %2366 = fmul float %2364, %2365
  %2367 = getelementptr inbounds float, ptr %2213, i64 1
  %2368 = load float, ptr %2367, align 4, !tbaa !96
  %2369 = fmul float %2364, %2368
  %2370 = getelementptr inbounds float, ptr %2213, i64 2
  %2371 = load float, ptr %2370, align 4, !tbaa !96
  %2372 = fmul float %2364, %2371
  %2373 = load float, ptr %344, align 4, !tbaa !96
  %2374 = load float, ptr %345, align 4, !tbaa !96
  %2375 = fmul float %2369, %2374
  %2376 = call float @llvm.fmuladd.f32(float %2366, float %2373, float %2375)
  %2377 = load float, ptr %346, align 4, !tbaa !96
  %2378 = call float @llvm.fmuladd.f32(float %2372, float %2377, float %2376)
  %2379 = call float @llvm.fmuladd.f32(float %2378, float 5.000000e-01, float 5.000000e-01)
  %2380 = call float @llvm.fmuladd.f32(float %2379, float %2366, float %2373)
  store float %2380, ptr %344, align 4, !tbaa !96
  %2381 = call float @llvm.fmuladd.f32(float %2379, float %2369, float %2374)
  store float %2381, ptr %345, align 4, !tbaa !96
  %2382 = call float @llvm.fmuladd.f32(float %2379, float %2372, float %2377)
  store float %2382, ptr %346, align 4, !tbaa !96
  br label %2383

2383:                                             ; preds = %2338, %2363, %2243, %2323
  %2384 = phi i8 [ 0, %2243 ], [ %408, %2323 ], [ %408, %2338 ], [ %408, %2363 ]
  %2385 = phi i8 [ 1, %2243 ], [ 1, %2323 ], [ %407, %2338 ], [ %407, %2363 ]
  %2386 = load float, ptr %350, align 4, !tbaa !96
  %2387 = load float, ptr %351, align 4, !tbaa !96
  %2388 = fmul float %2387, %2387
  %2389 = call float @llvm.fmuladd.f32(float %2386, float %2386, float %2388)
  %2390 = load float, ptr %352, align 4, !tbaa !96
  %2391 = call float @llvm.fmuladd.f32(float %2390, float %2390, float %2389)
  %2392 = fcmp ogt float %2391, 0x38AA95A5C0000000
  br i1 %2392, label %2393, label %2402

2393:                                             ; preds = %2383
  %2394 = call float @sqrtf(float noundef %2391) #10
  %2395 = fdiv float 1.000000e+00, %2394
  %2396 = load float, ptr %350, align 4, !tbaa !96
  %2397 = fmul float %2396, %2395
  store float %2397, ptr %350, align 4, !tbaa !96
  %2398 = load float, ptr %351, align 4, !tbaa !96
  %2399 = fmul float %2395, %2398
  store float %2399, ptr %351, align 4, !tbaa !96
  %2400 = load float, ptr %352, align 4, !tbaa !96
  %2401 = fmul float %2395, %2400
  br label %2403

2402:                                             ; preds = %2383
  store float 0.000000e+00, ptr %350, align 4, !tbaa !96
  store float 0.000000e+00, ptr %351, align 4, !tbaa !96
  br label %2403

2403:                                             ; preds = %2393, %2402
  %2404 = phi float [ 0.000000e+00, %2402 ], [ %2401, %2393 ]
  store float %2404, ptr %352, align 4, !tbaa !96
  %2405 = load float, ptr %350, align 4, !tbaa !96
  %2406 = fneg float %2405
  store float %2406, ptr %353, align 8, !tbaa !96
  %2407 = load float, ptr %351, align 4, !tbaa !96
  %2408 = fneg float %2407
  store float %2408, ptr %354, align 4, !tbaa !96
  %2409 = fneg float %2404
  store float %2409, ptr %355, align 8, !tbaa !96
  br label %2410

2410:                                             ; preds = %2403, %2209
  %2411 = phi i8 [ %2384, %2403 ], [ %408, %2209 ]
  %2412 = phi i8 [ %2385, %2403 ], [ %407, %2209 ]
  %2413 = load i16, ptr %692, align 2, !tbaa !87
  %2414 = and i16 %2413, 4096
  %2415 = icmp eq i16 %2414, 0
  br i1 %2415, label %2494, label %2416

2416:                                             ; preds = %2410
  %2417 = load ptr, ptr %139, align 8, !tbaa !134
  %2418 = icmp eq ptr %2417, null
  br i1 %2418, label %2435, label %2419

2419:                                             ; preds = %2416
  %2420 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 30
  %2421 = load float, ptr %2420, align 4, !tbaa !139
  %2422 = fmul float %2019, 0x3FC99999A0000000
  %2423 = fmul float %2422, %2421
  %2424 = load float, ptr %2417, align 4, !tbaa !96
  %2425 = load float, ptr %356, align 8, !tbaa !96
  %2426 = call float @llvm.fmuladd.f32(float %2423, float %2424, float %2425)
  store float %2426, ptr %356, align 8, !tbaa !96
  %2427 = getelementptr inbounds float, ptr %2417, i64 1
  %2428 = load float, ptr %2427, align 4, !tbaa !96
  %2429 = load float, ptr %357, align 4, !tbaa !96
  %2430 = call float @llvm.fmuladd.f32(float %2423, float %2428, float %2429)
  store float %2430, ptr %357, align 4, !tbaa !96
  %2431 = getelementptr inbounds float, ptr %2417, i64 2
  %2432 = load float, ptr %2431, align 4, !tbaa !96
  %2433 = load float, ptr %358, align 8, !tbaa !96
  %2434 = call float @llvm.fmuladd.f32(float %2423, float %2432, float %2433)
  store float %2434, ptr %358, align 8, !tbaa !96
  br label %2435

2435:                                             ; preds = %2419, %2416
  %2436 = and i32 %1987, 1
  %2437 = icmp eq i32 %2436, 0
  br i1 %2437, label %2445, label %2438

2438:                                             ; preds = %2435
  %2439 = load float, ptr %359, align 4, !tbaa !96
  %2440 = load float, ptr %360, align 8, !tbaa !96
  %2441 = fmul float %2440, 0x3FE28F5C20000000
  %2442 = call float @llvm.fmuladd.f32(float %2439, float 0x3FD3333340000000, float %2441)
  %2443 = load float, ptr %361, align 4, !tbaa !96
  %2444 = call float @llvm.fmuladd.f32(float %2443, float 0x3FBEB851E0000000, float %2442)
  store float %2444, ptr %28, align 8, !tbaa !146
  br label %2445

2445:                                             ; preds = %2438, %2435
  %2446 = load float, ptr %28, align 8, !tbaa !146
  %2447 = fsub float 5.000000e-01, %2446
  %2448 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 31
  %2449 = load float, ptr %2448, align 8, !tbaa !171
  %2450 = fmul float %2447, %2449
  %2451 = fmul float %2020, %2450
  %2452 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2453 = load i16, ptr %2452, align 2, !tbaa !166
  switch i16 %2453, label %2483 [
    i16 0, label %2454
    i16 1, label %2468
    i16 3, label %2481
  ]

2454:                                             ; preds = %2445
  %2455 = fsub float 1.000000e+00, %2451
  %2456 = load float, ptr %368, align 4, !tbaa !96
  %2457 = load float, ptr %369, align 8, !tbaa !96
  %2458 = fmul float %2455, %2457
  %2459 = call float @llvm.fmuladd.f32(float %2451, float %2456, float %2458)
  store float %2459, ptr %369, align 8, !tbaa !96
  %2460 = load float, ptr %370, align 4, !tbaa !96
  %2461 = load float, ptr %371, align 4, !tbaa !96
  %2462 = fmul float %2455, %2461
  %2463 = call float @llvm.fmuladd.f32(float %2451, float %2460, float %2462)
  store float %2463, ptr %371, align 4, !tbaa !96
  %2464 = load float, ptr %372, align 4, !tbaa !96
  %2465 = load float, ptr %373, align 8, !tbaa !96
  %2466 = fmul float %2455, %2465
  %2467 = call float @llvm.fmuladd.f32(float %2451, float %2464, float %2466)
  store float %2467, ptr %373, align 8, !tbaa !96
  br label %2494

2468:                                             ; preds = %2445
  %2469 = load float, ptr %362, align 4, !tbaa !96
  %2470 = fmul float %2451, %2469
  %2471 = load float, ptr %363, align 8, !tbaa !96
  %2472 = fmul float %2471, %2470
  store float %2472, ptr %363, align 8, !tbaa !96
  %2473 = load float, ptr %364, align 4, !tbaa !96
  %2474 = fmul float %2451, %2473
  %2475 = load float, ptr %365, align 4, !tbaa !96
  %2476 = fmul float %2475, %2474
  store float %2476, ptr %365, align 4, !tbaa !96
  %2477 = load float, ptr %366, align 4, !tbaa !96
  %2478 = fmul float %2451, %2477
  %2479 = load float, ptr %367, align 8, !tbaa !96
  %2480 = fmul float %2479, %2478
  store float %2480, ptr %367, align 8, !tbaa !96
  br label %2494

2481:                                             ; preds = %2445
  %2482 = fneg float %2451
  br label %2483

2483:                                             ; preds = %2445, %2481
  %2484 = phi float [ %2482, %2481 ], [ %2451, %2445 ]
  %2485 = load float, ptr %374, align 4, !tbaa !96
  %2486 = load float, ptr %375, align 8, !tbaa !96
  %2487 = call float @llvm.fmuladd.f32(float %2484, float %2485, float %2486)
  store float %2487, ptr %375, align 8, !tbaa !96
  %2488 = load float, ptr %376, align 4, !tbaa !96
  %2489 = load float, ptr %377, align 4, !tbaa !96
  %2490 = call float @llvm.fmuladd.f32(float %2484, float %2488, float %2489)
  store float %2490, ptr %377, align 4, !tbaa !96
  %2491 = load float, ptr %378, align 4, !tbaa !96
  %2492 = load float, ptr %379, align 8, !tbaa !96
  %2493 = call float @llvm.fmuladd.f32(float %2484, float %2491, float %2492)
  store float %2493, ptr %379, align 8, !tbaa !96
  br label %2494

2494:                                             ; preds = %2454, %2483, %2468, %2410
  %2495 = icmp ult i16 %2413, 16
  br i1 %2495, label %2675, label %2496

2496:                                             ; preds = %2494
  %2497 = and i32 %1987, 1
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2511, label %2499

2499:                                             ; preds = %2496
  %2500 = load i32, ptr %380, align 4, !tbaa !137
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2504, label %2502

2502:                                             ; preds = %2499
  %2503 = load float, ptr %381, align 8, !tbaa !163
  store float %2503, ptr %28, align 8, !tbaa !146
  br label %2511

2504:                                             ; preds = %2499
  %2505 = load float, ptr %382, align 4, !tbaa !96
  %2506 = load float, ptr %383, align 8, !tbaa !96
  %2507 = fmul float %2506, 0x3FE28F5C20000000
  %2508 = call float @llvm.fmuladd.f32(float %2505, float 0x3FD3333340000000, float %2507)
  %2509 = load float, ptr %384, align 4, !tbaa !96
  %2510 = call float @llvm.fmuladd.f32(float %2509, float 0x3FBEB851E0000000, float %2508)
  store float %2510, ptr %28, align 8, !tbaa !146
  br label %2511

2511:                                             ; preds = %2502, %2504, %2496
  %2512 = and i16 %2413, 16
  %2513 = icmp eq i16 %2512, 0
  br i1 %2513, label %2528, label %2514

2514:                                             ; preds = %2511
  %2515 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 36
  %2516 = load float, ptr %2515, align 4, !tbaa !172
  %2517 = fmul float %2020, %2516
  %2518 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2519 = load float, ptr %2518, align 4, !tbaa !173
  %2520 = load float, ptr %385, align 4, !tbaa !174
  %2521 = load float, ptr %28, align 8, !tbaa !146
  %2522 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2523 = load i16, ptr %2522, align 2, !tbaa !166
  %2524 = sext i16 %2523 to i32
  %2525 = call float @texture_value_blend(float noundef %2519, float noundef %2520, float noundef %2521, float noundef %2517, i32 noundef %2524)
  %2526 = fcmp olt float %2525, 0.000000e+00
  %2527 = select i1 %2526, float 0.000000e+00, float %2525
  store float %2527, ptr %385, align 4, !tbaa !174
  br label %2528

2528:                                             ; preds = %2514, %2511
  %2529 = and i16 %2413, 32
  %2530 = icmp eq i16 %2529, 0
  br i1 %2530, label %2545, label %2531

2531:                                             ; preds = %2528
  %2532 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 37
  %2533 = load float, ptr %2532, align 8, !tbaa !175
  %2534 = fmul float %2020, %2533
  %2535 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2536 = load float, ptr %2535, align 4, !tbaa !173
  %2537 = load float, ptr %386, align 8, !tbaa !176
  %2538 = load float, ptr %28, align 8, !tbaa !146
  %2539 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2540 = load i16, ptr %2539, align 2, !tbaa !166
  %2541 = sext i16 %2540 to i32
  %2542 = call float @texture_value_blend(float noundef %2536, float noundef %2537, float noundef %2538, float noundef %2534, i32 noundef %2541)
  %2543 = fcmp olt float %2542, 0.000000e+00
  %2544 = select i1 %2543, float 0.000000e+00, float %2542
  store float %2544, ptr %386, align 8, !tbaa !176
  br label %2545

2545:                                             ; preds = %2531, %2528
  %2546 = and i16 %2413, 64
  %2547 = icmp eq i16 %2546, 0
  br i1 %2547, label %2562, label %2548

2548:                                             ; preds = %2545
  %2549 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 38
  %2550 = load float, ptr %2549, align 4, !tbaa !177
  %2551 = fmul float %2020, %2550
  %2552 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2553 = load float, ptr %2552, align 4, !tbaa !173
  %2554 = load float, ptr %387, align 8, !tbaa !178
  %2555 = load float, ptr %28, align 8, !tbaa !146
  %2556 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2557 = load i16, ptr %2556, align 2, !tbaa !166
  %2558 = sext i16 %2557 to i32
  %2559 = call float @texture_value_blend(float noundef %2553, float noundef %2554, float noundef %2555, float noundef %2551, i32 noundef %2558)
  %2560 = fcmp olt float %2559, 0.000000e+00
  %2561 = select i1 %2560, float 0.000000e+00, float %2559
  store float %2561, ptr %387, align 8, !tbaa !178
  br label %2562

2562:                                             ; preds = %2548, %2545
  %2563 = and i16 %2413, 128
  %2564 = icmp eq i16 %2563, 0
  br i1 %2564, label %2582, label %2565

2565:                                             ; preds = %2562
  %2566 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 35
  %2567 = load float, ptr %2566, align 8, !tbaa !179
  %2568 = fmul float %2020, %2567
  %2569 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2570 = load float, ptr %2569, align 4, !tbaa !173
  %2571 = load float, ptr %388, align 8, !tbaa !180
  %2572 = load float, ptr %28, align 8, !tbaa !146
  %2573 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2574 = load i16, ptr %2573, align 2, !tbaa !166
  %2575 = sext i16 %2574 to i32
  %2576 = call float @texture_value_blend(float noundef %2570, float noundef %2571, float noundef %2572, float noundef %2568, i32 noundef %2575)
  store float %2576, ptr %388, align 8, !tbaa !180
  %2577 = fcmp olt float %2576, 0.000000e+00
  br i1 %2577, label %2580, label %2578

2578:                                             ; preds = %2565
  %2579 = fcmp ogt float %2576, 1.000000e+00
  br i1 %2579, label %2580, label %2582

2580:                                             ; preds = %2578, %2565
  %2581 = phi float [ 0.000000e+00, %2565 ], [ 1.000000e+00, %2578 ]
  store float %2581, ptr %388, align 8, !tbaa !180
  br label %2582

2582:                                             ; preds = %2580, %2578, %2562
  %2583 = and i16 %2413, 256
  %2584 = icmp eq i16 %2583, 0
  br i1 %2584, label %2607, label %2585

2585:                                             ; preds = %2582
  %2586 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 39
  %2587 = load float, ptr %2586, align 8, !tbaa !181
  %2588 = fmul float %2020, %2587
  %2589 = load i32, ptr %389, align 8, !tbaa !182
  %2590 = sitofp i32 %2589 to float
  %2591 = fmul float %2590, 7.812500e-03
  %2592 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2593 = load float, ptr %2592, align 4, !tbaa !173
  %2594 = load float, ptr %28, align 8, !tbaa !146
  %2595 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2596 = load i16, ptr %2595, align 2, !tbaa !166
  %2597 = sext i16 %2596 to i32
  %2598 = call float @texture_value_blend(float noundef %2593, float noundef %2591, float noundef %2594, float noundef %2588, i32 noundef %2597)
  %2599 = fmul float %2598, 1.280000e+02
  %2600 = fcmp olt float %2599, 1.000000e+00
  br i1 %2600, label %2605, label %2601

2601:                                             ; preds = %2585
  %2602 = fcmp ogt float %2599, 5.110000e+02
  br i1 %2602, label %2605, label %2603

2603:                                             ; preds = %2601
  %2604 = fptosi float %2599 to i32
  br label %2605

2605:                                             ; preds = %2601, %2585, %2603
  %2606 = phi i32 [ %2604, %2603 ], [ 1, %2585 ], [ 511, %2601 ]
  store i32 %2606, ptr %389, align 8, !tbaa !182
  br label %2607

2607:                                             ; preds = %2605, %2582
  %2608 = and i16 %2413, 512
  %2609 = icmp eq i16 %2608, 0
  br i1 %2609, label %2627, label %2610

2610:                                             ; preds = %2607
  %2611 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 40
  %2612 = load float, ptr %2611, align 4, !tbaa !183
  %2613 = fmul float %2020, %2612
  %2614 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2615 = load float, ptr %2614, align 4, !tbaa !173
  %2616 = load float, ptr %390, align 4, !tbaa !184
  %2617 = load float, ptr %28, align 8, !tbaa !146
  %2618 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2619 = load i16, ptr %2618, align 2, !tbaa !166
  %2620 = sext i16 %2619 to i32
  %2621 = call float @texture_value_blend(float noundef %2615, float noundef %2616, float noundef %2617, float noundef %2613, i32 noundef %2620)
  store float %2621, ptr %390, align 4, !tbaa !184
  %2622 = fcmp olt float %2621, 0.000000e+00
  br i1 %2622, label %2625, label %2623

2623:                                             ; preds = %2610
  %2624 = fcmp ogt float %2621, 1.000000e+00
  br i1 %2624, label %2625, label %2627

2625:                                             ; preds = %2623, %2610
  %2626 = phi float [ 0.000000e+00, %2610 ], [ 1.000000e+00, %2623 ]
  store float %2626, ptr %390, align 4, !tbaa !184
  br label %2627

2627:                                             ; preds = %2625, %2623, %2607
  %2628 = and i16 %2413, 1024
  %2629 = icmp eq i16 %2628, 0
  br i1 %2629, label %2647, label %2630

2630:                                             ; preds = %2627
  %2631 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 41
  %2632 = load float, ptr %2631, align 8, !tbaa !185
  %2633 = fmul float %2020, %2632
  %2634 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2635 = load float, ptr %2634, align 4, !tbaa !173
  %2636 = load float, ptr %391, align 4, !tbaa !186
  %2637 = load float, ptr %28, align 8, !tbaa !146
  %2638 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2639 = load i16, ptr %2638, align 2, !tbaa !166
  %2640 = sext i16 %2639 to i32
  %2641 = call float @texture_value_blend(float noundef %2635, float noundef %2636, float noundef %2637, float noundef %2633, i32 noundef %2640)
  store float %2641, ptr %391, align 4, !tbaa !186
  %2642 = fcmp olt float %2641, 0.000000e+00
  br i1 %2642, label %2645, label %2643

2643:                                             ; preds = %2630
  %2644 = fcmp ogt float %2641, 1.000000e+00
  br i1 %2644, label %2645, label %2647

2645:                                             ; preds = %2643, %2630
  %2646 = phi float [ 0.000000e+00, %2630 ], [ 1.000000e+00, %2643 ]
  store float %2646, ptr %391, align 4, !tbaa !186
  br label %2647

2647:                                             ; preds = %2645, %2643, %2627
  %2648 = and i16 %2413, 2048
  %2649 = icmp eq i16 %2648, 0
  br i1 %2649, label %2675, label %2650

2650:                                             ; preds = %2647
  %2651 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 42
  %2652 = load float, ptr %2651, align 4, !tbaa !187
  %2653 = fmul float %2020, %2652
  %2654 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 26
  %2655 = load float, ptr %2654, align 4, !tbaa !173
  %2656 = load float, ptr %392, align 4, !tbaa !188
  %2657 = load float, ptr %28, align 8, !tbaa !146
  %2658 = getelementptr inbounds %struct.MTex, ptr %421, i64 0, i32 3
  %2659 = load i16, ptr %2658, align 2, !tbaa !166
  %2660 = sext i16 %2659 to i32
  %2661 = call float @texture_value_blend(float noundef %2655, float noundef %2656, float noundef %2657, float noundef %2653, i32 noundef %2660)
  store float %2661, ptr %392, align 4, !tbaa !188
  %2662 = fcmp olt float %2661, 0.000000e+00
  br i1 %2662, label %2665, label %2663

2663:                                             ; preds = %2650
  %2664 = fcmp ogt float %2661, 1.000000e+00
  br i1 %2664, label %2665, label %2667

2665:                                             ; preds = %2663, %2650
  %2666 = phi float [ 0.000000e+00, %2650 ], [ 1.000000e+00, %2663 ]
  store float %2666, ptr %392, align 4, !tbaa !188
  br label %2667

2667:                                             ; preds = %2665, %2663
  %2668 = load float, ptr %392, align 4, !tbaa !188
  %2669 = load float, ptr %393, align 8, !tbaa !189
  %2670 = fmul float %2668, %2669
  store float %2670, ptr %394, align 8, !tbaa !190
  %2671 = load float, ptr %395, align 4, !tbaa !191
  %2672 = fmul float %2668, %2671
  store float %2672, ptr %396, align 8, !tbaa !192
  %2673 = load float, ptr %397, align 8, !tbaa !193
  %2674 = fmul float %2668, %2673
  store float %2674, ptr %398, align 4, !tbaa !194
  br label %2675

2675:                                             ; preds = %455, %419, %2647, %2667, %2494, %423, %400
  %2676 = phi float [ %411, %419 ], [ %411, %423 ], [ %411, %455 ], [ %2098, %2494 ], [ %2098, %2647 ], [ %2098, %2667 ], [ %411, %400 ]
  %2677 = phi float [ %410, %419 ], [ %410, %423 ], [ %410, %455 ], [ %2099, %2494 ], [ %2099, %2647 ], [ %2099, %2667 ], [ %410, %400 ]
  %2678 = phi float [ %409, %419 ], [ %409, %423 ], [ %409, %455 ], [ %2100, %2494 ], [ %2100, %2647 ], [ %2100, %2667 ], [ %409, %400 ]
  %2679 = phi i8 [ %408, %419 ], [ %408, %423 ], [ %408, %455 ], [ %2411, %2494 ], [ %2411, %2647 ], [ %2411, %2667 ], [ %408, %400 ]
  %2680 = phi i8 [ %407, %419 ], [ %407, %423 ], [ %407, %455 ], [ %2412, %2494 ], [ %2412, %2647 ], [ %2412, %2667 ], [ %407, %400 ]
  %2681 = phi i8 [ %406, %419 ], [ %406, %423 ], [ %466, %455 ], [ %466, %2494 ], [ %466, %2647 ], [ %466, %2667 ], [ %406, %400 ]
  %2682 = phi i8 [ %405, %419 ], [ %405, %423 ], [ %468, %455 ], [ %468, %2494 ], [ %468, %2647 ], [ %468, %2667 ], [ %405, %400 ]
  %2683 = phi i8 [ %404, %419 ], [ %404, %423 ], [ %404, %455 ], [ %2101, %2494 ], [ %2101, %2647 ], [ %2101, %2667 ], [ %404, %400 ]
  %2684 = phi float [ %403, %419 ], [ %403, %423 ], [ %403, %455 ], [ %2019, %2494 ], [ %2019, %2647 ], [ %2019, %2667 ], [ %403, %400 ]
  %2685 = phi float [ %402, %419 ], [ %402, %423 ], [ %402, %455 ], [ %2020, %2494 ], [ %2020, %2647 ], [ %2020, %2667 ], [ %402, %400 ]
  %2686 = add nuw nsw i64 %401, 1
  %2687 = icmp eq i64 %2686, 18
  br i1 %2687, label %2688, label %400, !llvm.loop !195

2688:                                             ; preds = %2675
  %2689 = icmp ne i8 %2682, 0
  %2690 = icmp ne i8 %2681, 0
  %2691 = select i1 %2689, i1 true, i1 %2690
  %2692 = icmp ne i8 %2680, 0
  %2693 = select i1 %2691, i1 true, i1 %2692
  br i1 %2693, label %2694, label %2736

2694:                                             ; preds = %2688
  %2695 = load ptr, ptr %0, align 8, !tbaa !101
  %2696 = getelementptr inbounds %struct.Material, ptr %2695, i64 0, i32 51
  %2697 = load i32, ptr %2696, align 4, !tbaa !170
  %2698 = and i32 %2697, 67108864
  %2699 = icmp eq i32 %2698, 0
  br i1 %2699, label %2736, label %2700

2700:                                             ; preds = %2694
  %2701 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16
  %2702 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65
  %2703 = load float, ptr %2701, align 4, !tbaa !96
  %2704 = load float, ptr %2702, align 4, !tbaa !96
  %2705 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 1
  %2706 = load float, ptr %2705, align 4, !tbaa !96
  %2707 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 1
  %2708 = load float, ptr %2707, align 4, !tbaa !96
  %2709 = fmul float %2706, %2708
  %2710 = call float @llvm.fmuladd.f32(float %2703, float %2704, float %2709)
  %2711 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 16, i64 2
  %2712 = load float, ptr %2711, align 4, !tbaa !96
  %2713 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 65, i64 2
  %2714 = load float, ptr %2713, align 4, !tbaa !96
  %2715 = call float @llvm.fmuladd.f32(float %2712, float %2714, float %2710)
  %2716 = fneg float %2715
  %2717 = call float @llvm.fmuladd.f32(float %2703, float %2716, float %2704)
  store float %2717, ptr %2702, align 4, !tbaa !96
  %2718 = call float @llvm.fmuladd.f32(float %2706, float %2716, float %2708)
  store float %2718, ptr %2707, align 4, !tbaa !96
  %2719 = call float @llvm.fmuladd.f32(float %2712, float %2716, float %2714)
  store float %2719, ptr %2713, align 4, !tbaa !96
  %2720 = fmul float %2718, %2718
  %2721 = call float @llvm.fmuladd.f32(float %2717, float %2717, float %2720)
  %2722 = call float @llvm.fmuladd.f32(float %2719, float %2719, float %2721)
  %2723 = fcmp ogt float %2722, 0x38AA95A5C0000000
  br i1 %2723, label %2724, label %2733

2724:                                             ; preds = %2700
  %2725 = call float @sqrtf(float noundef %2722) #10
  %2726 = fdiv float 1.000000e+00, %2725
  %2727 = load float, ptr %2702, align 4, !tbaa !96
  %2728 = fmul float %2727, %2726
  store float %2728, ptr %2702, align 4, !tbaa !96
  %2729 = load float, ptr %2707, align 4, !tbaa !96
  %2730 = fmul float %2726, %2729
  store float %2730, ptr %2707, align 4, !tbaa !96
  %2731 = load float, ptr %2713, align 4, !tbaa !96
  %2732 = fmul float %2726, %2731
  br label %2734

2733:                                             ; preds = %2700
  store float 0.000000e+00, ptr %2702, align 4, !tbaa !96
  store float 0.000000e+00, ptr %2707, align 4, !tbaa !96
  br label %2734

2734:                                             ; preds = %2724, %2733
  %2735 = phi float [ 0.000000e+00, %2733 ], [ %2732, %2724 ]
  store float %2735, ptr %2713, align 4, !tbaa !96
  br label %2736

2736:                                             ; preds = %2694, %2734, %2688, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %26) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @calc_R_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @texco_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 32
  %11 = load i16, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %190

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 7
  %15 = load i8, ptr %14, align 8, !tbaa !196
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = zext i8 %15 to i64
  %19 = add nuw nsw i64 %18, 4294967295
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds float, ptr %3, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !96
  br label %23

23:                                               ; preds = %13, %17
  %24 = phi float [ %22, %17 ], [ 0.000000e+00, %13 ]
  store float %24, ptr %6, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 8
  %26 = load i8, ptr %25, align 1, !tbaa !197
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = zext i8 %26 to i64
  %30 = add nuw nsw i64 %29, 4294967295
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds float, ptr %3, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !96
  br label %34

34:                                               ; preds = %23, %28
  %35 = phi float [ %33, %28 ], [ 0.000000e+00, %23 ]
  %36 = getelementptr inbounds float, ptr %6, i64 1
  store float %35, ptr %36, align 4, !tbaa !96
  %37 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 9
  %38 = load i8, ptr %37, align 2, !tbaa !198
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = zext i8 %38 to i64
  %42 = add nuw nsw i64 %41, 4294967295
  %43 = and i64 %42, 4294967295
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !96
  br label %46

46:                                               ; preds = %34, %40
  %47 = phi float [ %45, %40 ], [ 0.000000e+00, %34 ]
  %48 = getelementptr inbounds float, ptr %6, i64 2
  store float %47, ptr %48, align 4, !tbaa !96
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %50 = load i16, ptr %49, align 8, !tbaa !107
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %46
  br i1 %16, label %62, label %53

53:                                               ; preds = %52
  %54 = zext i8 %15 to i64
  %55 = add nuw nsw i64 %54, 4294967295
  %56 = and i64 %55, 4294967295
  %57 = getelementptr inbounds float, ptr %4, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !96
  store float %58, ptr %7, align 4, !tbaa !96
  %59 = getelementptr float, ptr %5, i64 %54
  %60 = getelementptr float, ptr %59, i64 -1
  %61 = load float, ptr %60, align 4, !tbaa !96
  store float %61, ptr %8, align 4, !tbaa !96
  br label %63

62:                                               ; preds = %52
  store float 0.000000e+00, ptr %8, align 4, !tbaa !96
  store float 0.000000e+00, ptr %7, align 4, !tbaa !96
  br label %63

63:                                               ; preds = %62, %53
  br i1 %27, label %74, label %64

64:                                               ; preds = %63
  %65 = zext i8 %26 to i64
  %66 = add nuw nsw i64 %65, 4294967295
  %67 = and i64 %66, 4294967295
  %68 = getelementptr inbounds float, ptr %4, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !96
  %70 = getelementptr inbounds float, ptr %7, i64 1
  store float %69, ptr %70, align 4, !tbaa !96
  %71 = getelementptr float, ptr %5, i64 %65
  %72 = getelementptr float, ptr %71, i64 -1
  %73 = load float, ptr %72, align 4, !tbaa !96
  br label %76

74:                                               ; preds = %63
  %75 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %75, align 4, !tbaa !96
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi ptr [ %7, %74 ], [ %8, %64 ]
  %78 = phi float [ 0.000000e+00, %74 ], [ %73, %64 ]
  %79 = getelementptr inbounds float, ptr %77, i64 1
  store float %78, ptr %79, align 4, !tbaa !96
  br i1 %39, label %90, label %80

80:                                               ; preds = %76
  %81 = zext i8 %38 to i64
  %82 = add nuw nsw i64 %81, 4294967295
  %83 = and i64 %82, 4294967295
  %84 = getelementptr inbounds float, ptr %4, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !96
  %86 = getelementptr inbounds float, ptr %7, i64 2
  store float %85, ptr %86, align 4, !tbaa !96
  %87 = getelementptr float, ptr %5, i64 %81
  %88 = getelementptr float, ptr %87, i64 -1
  %89 = load float, ptr %88, align 4, !tbaa !96
  br label %92

90:                                               ; preds = %76
  %91 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %91, align 4, !tbaa !96
  br label %92

92:                                               ; preds = %90, %80
  %93 = phi ptr [ %8, %80 ], [ %7, %90 ]
  %94 = phi float [ %89, %80 ], [ 0.000000e+00, %90 ]
  %95 = getelementptr inbounds float, ptr %93, i64 2
  store float %94, ptr %95, align 4, !tbaa !96
  br label %96

96:                                               ; preds = %92, %46
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !85
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 6
  tail call fastcc void @do_2d_mapping(ptr noundef %2, ptr noundef nonnull %6, ptr noundef %98, ptr noundef nonnull %99, ptr noundef %7, ptr noundef %8)
  %100 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  %101 = load float, ptr %100, align 8, !tbaa !96
  %102 = load float, ptr %6, align 4, !tbaa !96
  %103 = fadd float %102, -5.000000e-01
  %104 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %105 = load float, ptr %104, align 4, !tbaa !96
  %106 = tail call float @llvm.fmuladd.f32(float %101, float %103, float %105)
  %107 = fadd float %106, 5.000000e-01
  store float %107, ptr %6, align 4, !tbaa !96
  %108 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !96
  %110 = load float, ptr %36, align 4, !tbaa !96
  %111 = fadd float %110, -5.000000e-01
  %112 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !96
  %114 = tail call float @llvm.fmuladd.f32(float %109, float %111, float %113)
  %115 = fadd float %114, 5.000000e-01
  store float %115, ptr %36, align 4, !tbaa !96
  %116 = load i16, ptr %49, align 8, !tbaa !107
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %96
  %119 = load float, ptr %100, align 8, !tbaa !96
  %120 = load float, ptr %7, align 4, !tbaa !96
  %121 = fmul float %119, %120
  store float %121, ptr %7, align 4, !tbaa !96
  %122 = load float, ptr %108, align 4, !tbaa !96
  %123 = getelementptr inbounds float, ptr %7, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !96
  %125 = fmul float %122, %124
  store float %125, ptr %123, align 4, !tbaa !96
  %126 = load float, ptr %100, align 8, !tbaa !96
  %127 = load float, ptr %8, align 4, !tbaa !96
  %128 = fmul float %126, %127
  store float %128, ptr %8, align 4, !tbaa !96
  %129 = load float, ptr %108, align 4, !tbaa !96
  %130 = getelementptr inbounds float, ptr %8, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !96
  %132 = fmul float %129, %131
  store float %132, ptr %130, align 4, !tbaa !96
  br label %133

133:                                              ; preds = %118, %96
  %134 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 42
  %135 = load i16, ptr %134, align 8, !tbaa !65
  %136 = icmp eq i16 %135, 3
  br i1 %136, label %137, label %310

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 31
  %139 = load i16, ptr %138, align 2, !tbaa !138
  %140 = and i16 %139, 128
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %164, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 38
  %144 = load i32, ptr %143, align 4, !tbaa !199
  %145 = icmp eq i32 %144, 0
  %146 = load float, ptr %6, align 4, !tbaa !96
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
  store float %163, ptr %6, align 4, !tbaa !96
  br label %164

164:                                              ; preds = %162, %150, %137
  br i1 %136, label %165, label %310

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 31
  %167 = load i16, ptr %166, align 2, !tbaa !138
  %168 = and i16 %167, 256
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %310, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 38
  %172 = load i32, ptr %171, align 4, !tbaa !199
  %173 = icmp eq i32 %172, 0
  %174 = load float, ptr %36, align 4, !tbaa !96
  br i1 %173, label %175, label %178

175:                                              ; preds = %170
  %176 = tail call float @llvm.floor.f32(float %174)
  %177 = fsub float %174, %176
  store float %177, ptr %36, align 4, !tbaa !96
  br label %310

178:                                              ; preds = %170
  %179 = fcmp olt float %174, 0.000000e+00
  %180 = fcmp ogt float %174, 1.000000e+00
  %181 = or i1 %179, %180
  br i1 %181, label %182, label %310

182:                                              ; preds = %178
  %183 = fmul float %174, 5.000000e-01
  %184 = tail call float @llvm.floor.f32(float %183)
  %185 = fsub float %183, %184
  %186 = fmul float %185, 2.000000e+00
  %187 = fcmp ogt float %186, 1.000000e+00
  %188 = fsub float 2.000000e+00, %186
  %189 = select i1 %187, float %188, float %186
  store float %189, ptr %36, align 4, !tbaa !96
  br label %310

190:                                              ; preds = %9
  %191 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  %192 = load float, ptr %191, align 8, !tbaa !96
  %193 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 7
  %194 = load i8, ptr %193, align 8, !tbaa !196
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %190
  %197 = zext i8 %194 to i64
  %198 = add nuw nsw i64 %197, 4294967295
  %199 = and i64 %198, 4294967295
  %200 = getelementptr inbounds float, ptr %3, i64 %199
  %201 = load float, ptr %200, align 4, !tbaa !96
  %202 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %203 = load float, ptr %202, align 4, !tbaa !96
  %204 = fadd float %201, %203
  br label %208

205:                                              ; preds = %190
  %206 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11
  %207 = load float, ptr %206, align 4, !tbaa !96
  br label %208

208:                                              ; preds = %205, %196
  %209 = phi float [ %204, %196 ], [ %207, %205 ]
  %210 = fmul float %192, %209
  store float %210, ptr %6, align 4, !tbaa !96
  %211 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !96
  %213 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 8
  %214 = load i8, ptr %213, align 1, !tbaa !197
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %208
  %217 = zext i8 %214 to i64
  %218 = add nuw nsw i64 %217, 4294967295
  %219 = and i64 %218, 4294967295
  %220 = getelementptr inbounds float, ptr %3, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !96
  %222 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !96
  %224 = fadd float %221, %223
  br label %228

225:                                              ; preds = %208
  %226 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !96
  br label %228

228:                                              ; preds = %225, %216
  %229 = phi float [ %224, %216 ], [ %227, %225 ]
  %230 = fmul float %212, %229
  %231 = getelementptr inbounds float, ptr %6, i64 1
  store float %230, ptr %231, align 4, !tbaa !96
  %232 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 2
  %233 = load float, ptr %232, align 8, !tbaa !96
  %234 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 9
  %235 = load i8, ptr %234, align 2, !tbaa !198
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %228
  %238 = zext i8 %235 to i64
  %239 = add nuw nsw i64 %238, 4294967295
  %240 = and i64 %239, 4294967295
  %241 = getelementptr inbounds float, ptr %3, i64 %240
  %242 = load float, ptr %241, align 4, !tbaa !96
  %243 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !96
  %245 = fadd float %242, %244
  br label %249

246:                                              ; preds = %228
  %247 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 11, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !96
  br label %249

249:                                              ; preds = %246, %237
  %250 = phi float [ %245, %237 ], [ %248, %246 ]
  %251 = fmul float %233, %250
  %252 = getelementptr inbounds float, ptr %6, i64 2
  store float %251, ptr %252, align 4, !tbaa !96
  %253 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %254 = load i16, ptr %253, align 8, !tbaa !107
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %310, label %256

256:                                              ; preds = %249
  br i1 %195, label %270, label %257

257:                                              ; preds = %256
  %258 = load float, ptr %191, align 8, !tbaa !96
  %259 = zext i8 %194 to i64
  %260 = add nuw nsw i64 %259, 4294967295
  %261 = and i64 %260, 4294967295
  %262 = getelementptr inbounds float, ptr %4, i64 %261
  %263 = load float, ptr %262, align 4, !tbaa !96
  %264 = fmul float %258, %263
  store float %264, ptr %7, align 4, !tbaa !96
  %265 = load float, ptr %191, align 8, !tbaa !96
  %266 = getelementptr float, ptr %5, i64 %259
  %267 = getelementptr float, ptr %266, i64 -1
  %268 = load float, ptr %267, align 4, !tbaa !96
  %269 = fmul float %265, %268
  store float %269, ptr %8, align 4, !tbaa !96
  br label %271

270:                                              ; preds = %256
  store float 0.000000e+00, ptr %8, align 4, !tbaa !96
  store float 0.000000e+00, ptr %7, align 4, !tbaa !96
  br label %271

271:                                              ; preds = %270, %257
  br i1 %215, label %286, label %272

272:                                              ; preds = %271
  %273 = load float, ptr %211, align 4, !tbaa !96
  %274 = zext i8 %214 to i64
  %275 = add nuw nsw i64 %274, 4294967295
  %276 = and i64 %275, 4294967295
  %277 = getelementptr inbounds float, ptr %4, i64 %276
  %278 = load float, ptr %277, align 4, !tbaa !96
  %279 = fmul float %273, %278
  %280 = getelementptr inbounds float, ptr %7, i64 1
  store float %279, ptr %280, align 4, !tbaa !96
  %281 = load float, ptr %211, align 4, !tbaa !96
  %282 = getelementptr float, ptr %5, i64 %274
  %283 = getelementptr float, ptr %282, i64 -1
  %284 = load float, ptr %283, align 4, !tbaa !96
  %285 = fmul float %281, %284
  br label %288

286:                                              ; preds = %271
  %287 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %287, align 4, !tbaa !96
  br label %288

288:                                              ; preds = %286, %272
  %289 = phi ptr [ %7, %286 ], [ %8, %272 ]
  %290 = phi float [ 0.000000e+00, %286 ], [ %285, %272 ]
  %291 = getelementptr inbounds float, ptr %289, i64 1
  store float %290, ptr %291, align 4, !tbaa !96
  br i1 %236, label %307, label %292

292:                                              ; preds = %288
  %293 = load float, ptr %232, align 8, !tbaa !96
  %294 = zext i8 %235 to i64
  %295 = add nuw nsw i64 %294, 4294967295
  %296 = and i64 %295, 4294967295
  %297 = getelementptr inbounds float, ptr %4, i64 %296
  %298 = load float, ptr %297, align 4, !tbaa !96
  %299 = fmul float %293, %298
  %300 = getelementptr inbounds float, ptr %7, i64 2
  store float %299, ptr %300, align 4, !tbaa !96
  %301 = load float, ptr %232, align 8, !tbaa !96
  %302 = getelementptr float, ptr %5, i64 %294
  %303 = getelementptr float, ptr %302, i64 -1
  %304 = load float, ptr %303, align 4, !tbaa !96
  %305 = fmul float %301, %304
  %306 = getelementptr inbounds float, ptr %8, i64 2
  store float %305, ptr %306, align 4, !tbaa !96
  br label %310

307:                                              ; preds = %288
  %308 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %308, align 4, !tbaa !96
  %309 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %309, align 4, !tbaa !96
  br label %310

310:                                              ; preds = %133, %178, %249, %307, %292, %164, %165, %182, %175
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @do_volume_tex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.TexResult, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %11 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 45, i32 46
  %12 = load i32, ptr %11, align 4, !tbaa !100
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %522

15:                                               ; preds = %6
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = getelementptr inbounds float, ptr %8, i64 1
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = getelementptr inbounds float, ptr %8, i64 2
  %20 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 33
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70, i64 1
  %23 = getelementptr inbounds float, ptr %8, i64 1
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 70, i64 2
  %25 = getelementptr inbounds float, ptr %8, i64 2
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = getelementptr inbounds float, ptr %8, i64 1
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = getelementptr inbounds float, ptr %8, i64 2
  %31 = getelementptr inbounds float, ptr %1, i64 1
  %32 = getelementptr inbounds float, ptr %8, i64 1
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = getelementptr inbounds float, ptr %8, i64 2
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %36 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 6
  %37 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %38 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %40 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %42 = getelementptr inbounds %struct.Render, ptr %5, i64 0, i32 100
  %43 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %44 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  %45 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %46 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %47 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  %48 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %49 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %50 = and i32 %2, 13
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %53 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  %54 = getelementptr inbounds float, ptr %10, i64 1
  %55 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %56 = getelementptr inbounds float, ptr %10, i64 2
  %57 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %58 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %59 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  %60 = getelementptr inbounds float, ptr %10, i64 1
  %61 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %62 = getelementptr inbounds float, ptr %10, i64 2
  %63 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %64 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %65 = getelementptr inbounds float, ptr %10, i64 1
  %66 = getelementptr inbounds float, ptr %10, i64 2
  %67 = and i32 %2, 1
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %2, 4
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %2, 8
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %2, 65520
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %76 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %77 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  %78 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  %79 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  %80 = and i32 %2, 64
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %2, 128
  %83 = icmp eq i32 %82, 0
  %84 = and i32 %2, 16
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %2, 32
  %87 = icmp eq i32 %86, 0
  br label %88

88:                                               ; preds = %15, %518
  %89 = phi i64 [ 0, %15 ], [ %520, %518 ]
  %90 = phi float [ 1.000000e+00, %15 ], [ %519, %518 ]
  %91 = load ptr, ptr %0, align 8, !tbaa !101
  %92 = getelementptr inbounds %struct.Material, ptr %91, i64 0, i32 73
  %93 = load i32, ptr %92, align 8, !tbaa !102
  %94 = trunc i64 %89 to i32
  %95 = shl nuw nsw i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %518

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.Material, ptr %91, i64 0, i32 102, i64 %89
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %518, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !93
  %105 = icmp eq ptr %104, null
  br i1 %105, label %518, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !87
  %109 = sext i16 %108 to i32
  %110 = and i32 %109, %2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %518, label %112

112:                                              ; preds = %106
  %113 = load i16, ptr %100, align 8, !tbaa !95
  switch i16 %113, label %518 [
    i16 32, label %114
    i16 1, label %170
    i16 8, label %221
  ]

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !94
  %117 = icmp eq ptr %116, null
  br i1 %117, label %225, label %118

118:                                              ; preds = %114
  %119 = load float, ptr %1, align 4, !tbaa !96
  store float %119, ptr %8, align 4, !tbaa !96
  %120 = load float, ptr %31, align 4, !tbaa !96
  store float %120, ptr %32, align 4, !tbaa !96
  %121 = load float, ptr %33, align 4, !tbaa !96
  store float %121, ptr %34, align 4, !tbaa !96
  %122 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 14
  %123 = load i16, ptr %122, align 8, !tbaa !106
  %124 = and i16 %123, 64
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load ptr, ptr %35, align 8, !tbaa !108
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %127, i64 0, i32 14
  %131 = load ptr, ptr %130, align 8, !tbaa !109
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void @mul_m4_v3(ptr noundef nonnull %131, ptr noundef nonnull %8) #10
  br label %134

134:                                              ; preds = %126, %129, %133, %118
  %135 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %135, ptr noundef nonnull %8) #10
  %136 = load i16, ptr %122, align 8, !tbaa !106
  %137 = and i16 %136, 16384
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %225, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 15
  %141 = load ptr, ptr %140, align 8, !tbaa !200
  %142 = icmp eq ptr %141, null
  br i1 %142, label %225, label %143

143:                                              ; preds = %139
  %144 = load float, ptr %8, align 4, !tbaa !96
  %145 = load float, ptr %141, align 4, !tbaa !96
  %146 = fsub float %144, %145
  %147 = getelementptr inbounds [8 x [3 x float]], ptr %141, i64 0, i64 6
  %148 = load float, ptr %147, align 4, !tbaa !96
  %149 = fsub float %148, %145
  %150 = fdiv float %146, %149
  %151 = call float @llvm.fmuladd.f32(float %150, float 2.000000e+00, float -1.000000e+00)
  store float %151, ptr %8, align 4, !tbaa !96
  %152 = load float, ptr %32, align 4, !tbaa !96
  %153 = getelementptr inbounds [3 x float], ptr %141, i64 0, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !96
  %155 = fsub float %152, %154
  %156 = getelementptr inbounds [8 x [3 x float]], ptr %141, i64 0, i64 6, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !96
  %158 = fsub float %157, %154
  %159 = fdiv float %155, %158
  %160 = call float @llvm.fmuladd.f32(float %159, float 2.000000e+00, float -1.000000e+00)
  store float %160, ptr %32, align 4, !tbaa !96
  %161 = load float, ptr %34, align 4, !tbaa !96
  %162 = getelementptr inbounds [3 x float], ptr %141, i64 0, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !96
  %164 = fsub float %161, %163
  %165 = getelementptr inbounds [8 x [3 x float]], ptr %141, i64 0, i64 6, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !96
  %167 = fsub float %166, %163
  %168 = fdiv float %164, %167
  %169 = call float @llvm.fmuladd.f32(float %168, float 2.000000e+00, float -1.000000e+00)
  store float %169, ptr %34, align 4, !tbaa !96
  br label %225

170:                                              ; preds = %112
  %171 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 14
  %172 = load i16, ptr %171, align 8, !tbaa !106
  %173 = and i16 %172, 32
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load float, ptr %21, align 4, !tbaa !96
  store float %176, ptr %8, align 4, !tbaa !96
  %177 = load float, ptr %22, align 4, !tbaa !96
  store float %177, ptr %23, align 4, !tbaa !96
  %178 = load float, ptr %24, align 4, !tbaa !96
  store float %178, ptr %25, align 4, !tbaa !96
  br label %225

179:                                              ; preds = %170
  %180 = load ptr, ptr %26, align 8, !tbaa !108
  %181 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !201
  %183 = load float, ptr %1, align 4, !tbaa !96
  store float %183, ptr %8, align 4, !tbaa !96
  %184 = load float, ptr %27, align 4, !tbaa !96
  store float %184, ptr %28, align 4, !tbaa !96
  %185 = load float, ptr %29, align 4, !tbaa !96
  store float %185, ptr %30, align 4, !tbaa !96
  %186 = getelementptr inbounds %struct.Object, ptr %182, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %186, ptr noundef nonnull %8) #10
  %187 = load i16, ptr %171, align 8, !tbaa !106
  %188 = and i16 %187, 16384
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %225, label %190

190:                                              ; preds = %179
  %191 = getelementptr inbounds %struct.Object, ptr %182, i64 0, i32 15
  %192 = load ptr, ptr %191, align 8, !tbaa !200
  %193 = icmp eq ptr %192, null
  br i1 %193, label %225, label %194

194:                                              ; preds = %190
  %195 = load float, ptr %8, align 4, !tbaa !96
  %196 = load float, ptr %192, align 4, !tbaa !96
  %197 = fsub float %195, %196
  %198 = getelementptr inbounds [8 x [3 x float]], ptr %192, i64 0, i64 6
  %199 = load float, ptr %198, align 4, !tbaa !96
  %200 = fsub float %199, %196
  %201 = fdiv float %197, %200
  %202 = call float @llvm.fmuladd.f32(float %201, float 2.000000e+00, float -1.000000e+00)
  store float %202, ptr %8, align 4, !tbaa !96
  %203 = load float, ptr %28, align 4, !tbaa !96
  %204 = getelementptr inbounds [3 x float], ptr %192, i64 0, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !96
  %206 = fsub float %203, %205
  %207 = getelementptr inbounds [8 x [3 x float]], ptr %192, i64 0, i64 6, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !96
  %209 = fsub float %208, %205
  %210 = fdiv float %206, %209
  %211 = call float @llvm.fmuladd.f32(float %210, float 2.000000e+00, float -1.000000e+00)
  store float %211, ptr %28, align 4, !tbaa !96
  %212 = load float, ptr %30, align 4, !tbaa !96
  %213 = getelementptr inbounds [3 x float], ptr %192, i64 0, i64 2
  %214 = load float, ptr %213, align 4, !tbaa !96
  %215 = fsub float %212, %214
  %216 = getelementptr inbounds [8 x [3 x float]], ptr %192, i64 0, i64 6, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !96
  %218 = fsub float %217, %214
  %219 = fdiv float %215, %218
  %220 = call float @llvm.fmuladd.f32(float %219, float 2.000000e+00, float -1.000000e+00)
  store float %220, ptr %30, align 4, !tbaa !96
  br label %225

221:                                              ; preds = %112
  %222 = load float, ptr %1, align 4, !tbaa !96
  store float %222, ptr %8, align 4, !tbaa !96
  %223 = load float, ptr %16, align 4, !tbaa !96
  store float %223, ptr %17, align 4, !tbaa !96
  %224 = load float, ptr %18, align 4, !tbaa !96
  store float %224, ptr %19, align 4, !tbaa !96
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef nonnull %8) #10
  br label %225

225:                                              ; preds = %179, %190, %194, %114, %143, %139, %134, %221, %175
  store ptr null, ptr %36, align 8, !tbaa !134
  %226 = getelementptr inbounds %struct.Tex, ptr %104, i64 0, i32 32
  %227 = load i16, ptr %226, align 8, !tbaa !63
  %228 = icmp eq i16 %227, 8
  br i1 %228, label %518, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 7
  %231 = load i8, ptr %230, align 8, !tbaa !196
  %232 = icmp eq i8 %231, 0
  %233 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 12
  %234 = load float, ptr %233, align 8, !tbaa !96
  br i1 %232, label %244, label %235

235:                                              ; preds = %229
  %236 = zext i8 %231 to i64
  %237 = add nuw nsw i64 %236, 4294967295
  %238 = and i64 %237, 4294967295
  %239 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %238
  %240 = load float, ptr %239, align 4, !tbaa !96
  %241 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11
  %242 = load float, ptr %241, align 4, !tbaa !96
  %243 = fadd float %240, %242
  br label %247

244:                                              ; preds = %229
  %245 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11
  %246 = load float, ptr %245, align 4, !tbaa !96
  br label %247

247:                                              ; preds = %244, %235
  %248 = phi float [ %246, %244 ], [ %243, %235 ]
  %249 = fmul float %234, %248
  store float %249, ptr %9, align 4, !tbaa !96
  %250 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 8
  %251 = load i8, ptr %250, align 1, !tbaa !197
  %252 = icmp eq i8 %251, 0
  %253 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 12, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !96
  br i1 %252, label %264, label %255

255:                                              ; preds = %247
  %256 = zext i8 %251 to i64
  %257 = add nuw nsw i64 %256, 4294967295
  %258 = and i64 %257, 4294967295
  %259 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !96
  %261 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !96
  %263 = fadd float %260, %262
  br label %267

264:                                              ; preds = %247
  %265 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !96
  br label %267

267:                                              ; preds = %264, %255
  %268 = phi float [ %266, %264 ], [ %263, %255 ]
  %269 = phi ptr [ %38, %264 ], [ %37, %255 ]
  %270 = fmul float %254, %268
  store float %270, ptr %269, align 4, !tbaa !96
  %271 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 9
  %272 = load i8, ptr %271, align 2, !tbaa !198
  %273 = icmp eq i8 %272, 0
  %274 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 12, i64 2
  %275 = load float, ptr %274, align 8, !tbaa !96
  br i1 %273, label %285, label %276

276:                                              ; preds = %267
  %277 = zext i8 %272 to i64
  %278 = add nuw nsw i64 %277, 4294967295
  %279 = and i64 %278, 4294967295
  %280 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %279
  %281 = load float, ptr %280, align 4, !tbaa !96
  %282 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !96
  %284 = fadd float %281, %283
  br label %288

285:                                              ; preds = %267
  %286 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 11, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !96
  br label %288

288:                                              ; preds = %276, %285
  %289 = phi float [ %284, %276 ], [ %287, %285 ]
  %290 = phi ptr [ %39, %276 ], [ %40, %285 ]
  %291 = fmul float %275, %289
  store float %291, ptr %290, align 4, !tbaa !96
  %292 = load i16, ptr %41, align 2, !tbaa !142
  %293 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 19
  %294 = load i16, ptr %293, align 2, !tbaa !83
  %295 = load ptr, ptr %42, align 8, !tbaa !136
  %296 = call fastcc i32 @multitex(ptr noundef nonnull %104, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %292, i16 noundef signext %294, ptr noundef %295)
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %312, label %299

299:                                              ; preds = %288
  %300 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 14
  %301 = load i16, ptr %300, align 8, !tbaa !106
  %302 = and i16 %301, 1
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %299
  %305 = load float, ptr %43, align 4, !tbaa !96
  %306 = load float, ptr %44, align 8, !tbaa !96
  %307 = fmul float %306, 0x3FE28F5C20000000
  %308 = call float @llvm.fmuladd.f32(float %305, float 0x3FD3333340000000, float %307)
  %309 = load float, ptr %45, align 4, !tbaa !96
  %310 = call float @llvm.fmuladd.f32(float %309, float 0x3FBEB851E0000000, float %308)
  store float %310, ptr %7, align 8, !tbaa !146
  %311 = add nsw i32 %296, -1
  br label %312

312:                                              ; preds = %304, %299, %288
  %313 = phi i32 [ %311, %304 ], [ %296, %299 ], [ %296, %288 ]
  %314 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 14
  %315 = load i16, ptr %314, align 8, !tbaa !106
  %316 = and i16 %315, 4
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %331, label %318

318:                                              ; preds = %312
  %319 = and i32 %313, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %318
  %322 = load float, ptr %46, align 4, !tbaa !143
  %323 = fsub float 1.000000e+00, %322
  store float %323, ptr %46, align 4, !tbaa !143
  %324 = load float, ptr %47, align 8, !tbaa !144
  %325 = fsub float 1.000000e+00, %324
  store float %325, ptr %47, align 8, !tbaa !144
  %326 = load float, ptr %48, align 4, !tbaa !145
  %327 = fsub float 1.000000e+00, %326
  store float %327, ptr %48, align 4, !tbaa !145
  br label %328

328:                                              ; preds = %321, %318
  %329 = load float, ptr %7, align 8, !tbaa !146
  %330 = fsub float 1.000000e+00, %329
  store float %330, ptr %7, align 8, !tbaa !146
  br label %331

331:                                              ; preds = %328, %312
  %332 = and i16 %315, 2
  %333 = icmp eq i16 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %331
  %335 = and i32 %313, 1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load float, ptr %49, align 8, !tbaa !163
  %339 = fmul float %90, %338
  store float %339, ptr %49, align 8, !tbaa !163
  br label %343

340:                                              ; preds = %334
  %341 = load float, ptr %7, align 8, !tbaa !146
  %342 = fmul float %90, %341
  store float %342, ptr %7, align 8, !tbaa !146
  br label %343

343:                                              ; preds = %337, %340, %331
  %344 = phi float [ %339, %337 ], [ %342, %340 ], [ %90, %331 ]
  br i1 %51, label %418, label %345

345:                                              ; preds = %343
  %346 = load i16, ptr %107, align 2, !tbaa !87
  %347 = and i16 %346, 13
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %418, label %349

349:                                              ; preds = %345
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %350 = and i32 %313, 1
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 22
  %354 = load float, ptr %353, align 4, !tbaa !96
  store float %354, ptr %10, align 4, !tbaa !96
  %355 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 23
  %356 = load float, ptr %355, align 4, !tbaa !96
  store float %356, ptr %65, align 4, !tbaa !96
  %357 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 24
  %358 = load float, ptr %357, align 4, !tbaa !96
  store float %358, ptr %66, align 4, !tbaa !96
  br label %378

359:                                              ; preds = %349
  %360 = load i16, ptr %107, align 2, !tbaa !87
  %361 = and i16 %360, 128
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %370, label %363

363:                                              ; preds = %359
  %364 = load float, ptr %52, align 4, !tbaa !96
  store float %364, ptr %10, align 4, !tbaa !96
  %365 = load float, ptr %53, align 8, !tbaa !96
  store float %365, ptr %54, align 4, !tbaa !96
  %366 = load float, ptr %55, align 4, !tbaa !96
  store float %366, ptr %56, align 4, !tbaa !96
  %367 = load i32, ptr %57, align 4, !tbaa !137
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %378, label %369

369:                                              ; preds = %363
  store float %344, ptr %7, align 8, !tbaa !146
  br label %378

370:                                              ; preds = %359
  %371 = load float, ptr %58, align 4, !tbaa !96
  store float %371, ptr %10, align 4, !tbaa !96
  %372 = load float, ptr %59, align 8, !tbaa !96
  store float %372, ptr %60, align 4, !tbaa !96
  %373 = load float, ptr %61, align 4, !tbaa !96
  store float %373, ptr %62, align 4, !tbaa !96
  %374 = load i32, ptr %63, align 4, !tbaa !137
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %370
  %377 = load float, ptr %64, align 8, !tbaa !163
  store float %377, ptr %7, align 8, !tbaa !146
  br label %378

378:                                              ; preds = %369, %363, %376, %370, %352
  br i1 %68, label %391, label %379

379:                                              ; preds = %378
  %380 = load i16, ptr %107, align 2, !tbaa !87
  %381 = and i16 %380, 1
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 43
  %385 = load float, ptr %384, align 8, !tbaa !202
  %386 = fmul float %344, %385
  %387 = load float, ptr %7, align 8, !tbaa !146
  %388 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %389 = load i16, ptr %388, align 2, !tbaa !166
  %390 = sext i16 %389 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %387, float noundef %386, i32 noundef %390)
  br label %391

391:                                              ; preds = %383, %379, %378
  br i1 %70, label %404, label %392

392:                                              ; preds = %391
  %393 = load i16, ptr %107, align 2, !tbaa !87
  %394 = and i16 %393, 4
  %395 = icmp eq i16 %394, 0
  br i1 %395, label %404, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 44
  %398 = load float, ptr %397, align 4, !tbaa !203
  %399 = fmul float %344, %398
  %400 = load float, ptr %7, align 8, !tbaa !146
  %401 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %402 = load i16, ptr %401, align 2, !tbaa !166
  %403 = sext i16 %402 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %400, float noundef %399, i32 noundef %403)
  br label %404

404:                                              ; preds = %396, %392, %391
  br i1 %72, label %417, label %405

405:                                              ; preds = %404
  %406 = load i16, ptr %107, align 2, !tbaa !87
  %407 = and i16 %406, 8
  %408 = icmp eq i16 %407, 0
  br i1 %408, label %417, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 45
  %411 = load float, ptr %410, align 8, !tbaa !204
  %412 = fmul float %344, %411
  %413 = load float, ptr %7, align 8, !tbaa !146
  %414 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %415 = load i16, ptr %414, align 2, !tbaa !166
  %416 = sext i16 %415 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %3, float noundef %413, float noundef %412, i32 noundef %416)
  br label %417

417:                                              ; preds = %409, %405, %404
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %418

418:                                              ; preds = %417, %345, %343
  br i1 %74, label %518, label %419

419:                                              ; preds = %418
  %420 = load i16, ptr %107, align 2, !tbaa !87
  %421 = icmp ult i16 %420, 16
  br i1 %421, label %518, label %422

422:                                              ; preds = %419
  %423 = and i32 %313, 1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %437, label %425

425:                                              ; preds = %422
  %426 = load i32, ptr %75, align 4, !tbaa !137
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %425
  %429 = load float, ptr %76, align 8, !tbaa !163
  store float %429, ptr %7, align 8, !tbaa !146
  br label %437

430:                                              ; preds = %425
  %431 = load float, ptr %77, align 4, !tbaa !96
  %432 = load float, ptr %78, align 8, !tbaa !96
  %433 = fmul float %432, 0x3FE28F5C20000000
  %434 = call float @llvm.fmuladd.f32(float %431, float 0x3FD3333340000000, float %433)
  %435 = load float, ptr %79, align 4, !tbaa !96
  %436 = call float @llvm.fmuladd.f32(float %435, float 0x3FBEB851E0000000, float %434)
  store float %436, ptr %7, align 8, !tbaa !146
  br label %437

437:                                              ; preds = %428, %430, %422
  %438 = and i16 %420, 64
  %439 = icmp eq i16 %438, 0
  %440 = or i1 %81, %439
  br i1 %440, label %455, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 38
  %443 = load float, ptr %442, align 4, !tbaa !177
  %444 = fmul float %344, %443
  %445 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 26
  %446 = load float, ptr %445, align 4, !tbaa !173
  %447 = load float, ptr %4, align 4, !tbaa !96
  %448 = load float, ptr %7, align 8, !tbaa !146
  %449 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %450 = load i16, ptr %449, align 2, !tbaa !166
  %451 = sext i16 %450 to i32
  %452 = call float @texture_value_blend(float noundef %446, float noundef %447, float noundef %448, float noundef %444, i32 noundef %451)
  %453 = fcmp olt float %452, 0.000000e+00
  %454 = select i1 %453, float 0.000000e+00, float %452
  store float %454, ptr %4, align 4, !tbaa !96
  br label %455

455:                                              ; preds = %441, %437
  %456 = and i16 %420, 128
  %457 = icmp eq i16 %456, 0
  %458 = or i1 %83, %457
  br i1 %458, label %476, label %459

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 46
  %461 = load float, ptr %460, align 4, !tbaa !205
  %462 = fmul float %344, %461
  %463 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 26
  %464 = load float, ptr %463, align 4, !tbaa !173
  %465 = load float, ptr %4, align 4, !tbaa !96
  %466 = load float, ptr %7, align 8, !tbaa !146
  %467 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %468 = load i16, ptr %467, align 2, !tbaa !166
  %469 = sext i16 %468 to i32
  %470 = call float @texture_value_blend(float noundef %464, float noundef %465, float noundef %466, float noundef %462, i32 noundef %469)
  store float %470, ptr %4, align 4, !tbaa !96
  %471 = fcmp olt float %470, 0.000000e+00
  br i1 %471, label %474, label %472

472:                                              ; preds = %459
  %473 = fcmp ogt float %470, 1.000000e+00
  br i1 %473, label %474, label %476

474:                                              ; preds = %472, %459
  %475 = phi float [ 0.000000e+00, %459 ], [ 1.000000e+00, %472 ]
  store float %475, ptr %4, align 4, !tbaa !96
  br label %476

476:                                              ; preds = %474, %472, %455
  %477 = and i16 %420, 16
  %478 = icmp eq i16 %477, 0
  %479 = or i1 %85, %478
  br i1 %479, label %497, label %480

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 47
  %482 = load float, ptr %481, align 8, !tbaa !206
  %483 = fmul float %344, %482
  %484 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 26
  %485 = load float, ptr %484, align 4, !tbaa !173
  %486 = load float, ptr %4, align 4, !tbaa !96
  %487 = load float, ptr %7, align 8, !tbaa !146
  %488 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %489 = load i16, ptr %488, align 2, !tbaa !166
  %490 = sext i16 %489 to i32
  %491 = call float @texture_value_blend(float noundef %485, float noundef %486, float noundef %487, float noundef %483, i32 noundef %490)
  store float %491, ptr %4, align 4, !tbaa !96
  %492 = fcmp olt float %491, 0.000000e+00
  br i1 %492, label %495, label %493

493:                                              ; preds = %480
  %494 = fcmp ogt float %491, 1.000000e+00
  br i1 %494, label %495, label %497

495:                                              ; preds = %493, %480
  %496 = phi float [ 0.000000e+00, %480 ], [ 1.000000e+00, %493 ]
  store float %496, ptr %4, align 4, !tbaa !96
  br label %497

497:                                              ; preds = %495, %493, %476
  %498 = and i16 %420, 32
  %499 = icmp eq i16 %498, 0
  %500 = or i1 %87, %499
  br i1 %500, label %518, label %501

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 48
  %503 = load float, ptr %502, align 4, !tbaa !207
  %504 = fmul float %344, %503
  %505 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 26
  %506 = load float, ptr %505, align 4, !tbaa !173
  %507 = load float, ptr %4, align 4, !tbaa !96
  %508 = load float, ptr %7, align 8, !tbaa !146
  %509 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 3
  %510 = load i16, ptr %509, align 2, !tbaa !166
  %511 = sext i16 %510 to i32
  %512 = call float @texture_value_blend(float noundef %506, float noundef %507, float noundef %508, float noundef %504, i32 noundef %511)
  store float %512, ptr %4, align 4, !tbaa !96
  %513 = fcmp olt float %512, 0.000000e+00
  br i1 %513, label %516, label %514

514:                                              ; preds = %501
  %515 = fcmp ogt float %512, 1.000000e+00
  br i1 %515, label %516, label %518

516:                                              ; preds = %514, %501
  %517 = phi float [ 0.000000e+00, %501 ], [ 1.000000e+00, %514 ]
  store float %517, ptr %4, align 4, !tbaa !96
  br label %518

518:                                              ; preds = %516, %514, %112, %98, %497, %419, %418, %225, %106, %102, %88
  %519 = phi float [ %90, %88 ], [ %90, %102 ], [ %90, %225 ], [ %344, %497 ], [ %344, %419 ], [ %344, %418 ], [ %90, %106 ], [ %90, %98 ], [ %90, %112 ], [ %344, %514 ], [ %344, %516 ]
  %520 = add nuw nsw i64 %89, 1
  %521 = icmp eq i64 %520, 18
  br i1 %521, label %522, label %88, !llvm.loop !208

522:                                              ; preds = %518, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @multitex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [3 x ptr], align 16
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x ptr], align 16
  %13 = alloca [3 x ptr], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [12 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [4 x float], align 16
  %21 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  store i32 0, ptr %21, align 4, !tbaa !137
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 61
  %23 = load i8, ptr %22, align 8, !tbaa !74
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 5), align 8, !tbaa !61
  %31 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %32 = lshr i32 %31, 18
  %33 = and i32 %32, 1
  %34 = tail call i32 @ntreeTexExecTree(ptr noundef nonnull %27, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %6, ptr noundef %0, i16 noundef signext %7, i32 noundef %30, i32 noundef %33, ptr noundef null, ptr noundef null) #10
  br label %1495

35:                                               ; preds = %25, %9
  %36 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %37 = load i16, ptr %36, align 8, !tbaa !63
  switch i16 %37, label %1495 [
    i16 0, label %38
    i16 1, label %39
    i16 2, label %217
    i16 3, label %272
    i16 4, label %462
    i16 5, label %635
    i16 6, label %711
    i16 7, label %798
    i16 8, label %843
    i16 10, label %857
    i16 11, label %859
    i16 12, label %1114
    i16 13, label %1414
    i16 14, label %1489
    i16 15, label %1491
    i16 16, label %1493
  ]

38:                                               ; preds = %35
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1522

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !209
  %42 = load float, ptr %1, align 4, !tbaa !96
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !96
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !96
  %47 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %48 = load i16, ptr %47, align 4, !tbaa !210
  %49 = sext i16 %48 to i32
  %50 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %51 = load i16, ptr %50, align 2, !tbaa !211
  %52 = icmp ne i16 %51, 0
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %55 = load i16, ptr %54, align 8, !tbaa !212
  %56 = sext i16 %55 to i32
  %57 = tail call float @BLI_gTurbulence(float noundef %41, float noundef %42, float noundef %44, float noundef %46, i32 noundef %49, i32 noundef %53, i32 noundef %56) #10
  store float %57, ptr %5, align 8, !tbaa !146
  %58 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !134
  %60 = icmp eq ptr %59, null
  br i1 %60, label %110, label %61

61:                                               ; preds = %39
  %62 = load float, ptr %40, align 8, !tbaa !209
  %63 = load float, ptr %1, align 4, !tbaa !96
  %64 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %65 = load float, ptr %64, align 8, !tbaa !213
  %66 = fadd float %63, %65
  %67 = load float, ptr %43, align 4, !tbaa !96
  %68 = load float, ptr %45, align 4, !tbaa !96
  %69 = load i16, ptr %47, align 4, !tbaa !210
  %70 = sext i16 %69 to i32
  %71 = load i16, ptr %50, align 2, !tbaa !211
  %72 = icmp ne i16 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load i16, ptr %54, align 8, !tbaa !212
  %75 = sext i16 %74 to i32
  %76 = tail call float @BLI_gTurbulence(float noundef %62, float noundef %66, float noundef %67, float noundef %68, i32 noundef %70, i32 noundef %73, i32 noundef %75) #10
  %77 = load ptr, ptr %58, align 8, !tbaa !134
  store float %76, ptr %77, align 4, !tbaa !96
  %78 = load float, ptr %40, align 8, !tbaa !209
  %79 = load float, ptr %1, align 4, !tbaa !96
  %80 = load float, ptr %43, align 4, !tbaa !96
  %81 = load float, ptr %64, align 8, !tbaa !213
  %82 = fadd float %80, %81
  %83 = load float, ptr %45, align 4, !tbaa !96
  %84 = load i16, ptr %47, align 4, !tbaa !210
  %85 = sext i16 %84 to i32
  %86 = load i16, ptr %50, align 2, !tbaa !211
  %87 = icmp ne i16 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i16, ptr %54, align 8, !tbaa !212
  %90 = sext i16 %89 to i32
  %91 = tail call float @BLI_gTurbulence(float noundef %78, float noundef %79, float noundef %82, float noundef %83, i32 noundef %85, i32 noundef %88, i32 noundef %90) #10
  %92 = load ptr, ptr %58, align 8, !tbaa !134
  %93 = getelementptr inbounds float, ptr %92, i64 1
  store float %91, ptr %93, align 4, !tbaa !96
  %94 = load float, ptr %40, align 8, !tbaa !209
  %95 = load float, ptr %1, align 4, !tbaa !96
  %96 = load float, ptr %43, align 4, !tbaa !96
  %97 = load float, ptr %45, align 4, !tbaa !96
  %98 = load float, ptr %64, align 8, !tbaa !213
  %99 = fadd float %97, %98
  %100 = load i16, ptr %47, align 4, !tbaa !210
  %101 = sext i16 %100 to i32
  %102 = load i16, ptr %50, align 2, !tbaa !211
  %103 = icmp ne i16 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i16, ptr %54, align 8, !tbaa !212
  %106 = sext i16 %105 to i32
  %107 = tail call float @BLI_gTurbulence(float noundef %94, float noundef %95, float noundef %96, float noundef %99, i32 noundef %101, i32 noundef %104, i32 noundef %106) #10
  %108 = load ptr, ptr %58, align 8, !tbaa !134
  %109 = getelementptr inbounds float, ptr %108, i64 2
  store float %107, ptr %109, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %110

110:                                              ; preds = %61, %39
  %111 = phi i32 [ 2, %61 ], [ 0, %39 ]
  %112 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %113 = load i16, ptr %112, align 2, !tbaa !214
  %114 = icmp eq i16 %113, 1
  %115 = load float, ptr %5, align 8, !tbaa !146
  br i1 %114, label %116, label %199

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  store float %115, ptr %117, align 4, !tbaa !143
  %118 = load float, ptr %40, align 8, !tbaa !209
  %119 = load float, ptr %43, align 4, !tbaa !96
  %120 = load float, ptr %1, align 4, !tbaa !96
  %121 = load float, ptr %45, align 4, !tbaa !96
  %122 = load i16, ptr %47, align 4, !tbaa !210
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %50, align 2, !tbaa !211
  %125 = icmp ne i16 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load i16, ptr %54, align 8, !tbaa !212
  %128 = sext i16 %127 to i32
  %129 = tail call float @BLI_gTurbulence(float noundef %118, float noundef %119, float noundef %120, float noundef %121, i32 noundef %123, i32 noundef %126, i32 noundef %128) #10
  %130 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  store float %129, ptr %130, align 8, !tbaa !144
  %131 = load float, ptr %40, align 8, !tbaa !209
  %132 = load float, ptr %43, align 4, !tbaa !96
  %133 = load float, ptr %45, align 4, !tbaa !96
  %134 = load float, ptr %1, align 4, !tbaa !96
  %135 = load i16, ptr %47, align 4, !tbaa !210
  %136 = sext i16 %135 to i32
  %137 = load i16, ptr %50, align 2, !tbaa !211
  %138 = icmp ne i16 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load i16, ptr %54, align 8, !tbaa !212
  %141 = sext i16 %140 to i32
  %142 = tail call float @BLI_gTurbulence(float noundef %131, float noundef %132, float noundef %133, float noundef %134, i32 noundef %136, i32 noundef %139, i32 noundef %141) #10
  %143 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %142, ptr %143, align 4, !tbaa !145
  %144 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %145 = load float, ptr %144, align 4, !tbaa !215
  %146 = load float, ptr %117, align 4, !tbaa !143
  %147 = fadd float %146, -5.000000e-01
  %148 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %149 = load float, ptr %148, align 4, !tbaa !216
  %150 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %151 = load float, ptr %150, align 8, !tbaa !217
  %152 = tail call float @llvm.fmuladd.f32(float %147, float %149, float %151)
  %153 = fadd float %152, -5.000000e-01
  %154 = fmul float %145, %153
  store float %154, ptr %117, align 4, !tbaa !143
  %155 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %156 = load float, ptr %155, align 8, !tbaa !218
  %157 = load float, ptr %130, align 8, !tbaa !144
  %158 = fadd float %157, -5.000000e-01
  %159 = tail call float @llvm.fmuladd.f32(float %158, float %149, float %151)
  %160 = fadd float %159, -5.000000e-01
  %161 = fmul float %156, %160
  store float %161, ptr %130, align 8, !tbaa !144
  %162 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %163 = load float, ptr %162, align 4, !tbaa !219
  %164 = fadd float %142, -5.000000e-01
  %165 = tail call float @llvm.fmuladd.f32(float %164, float %149, float %151)
  %166 = fadd float %165, -5.000000e-01
  %167 = fmul float %166, %163
  store float %167, ptr %143, align 4, !tbaa !145
  %168 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %169 = load i16, ptr %168, align 2, !tbaa !138
  %170 = and i16 %169, 1024
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %116
  %173 = fcmp olt float %154, 0.000000e+00
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  store float 0.000000e+00, ptr %117, align 4, !tbaa !143
  br label %175

175:                                              ; preds = %174, %172
  %176 = fcmp olt float %161, 0.000000e+00
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  store float 0.000000e+00, ptr %130, align 8, !tbaa !144
  br label %178

178:                                              ; preds = %177, %175
  %179 = fcmp olt float %167, 0.000000e+00
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  store float 0.000000e+00, ptr %143, align 4, !tbaa !145
  br label %181

181:                                              ; preds = %180, %178, %116
  %182 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %183 = load float, ptr %182, align 8, !tbaa !220
  %184 = fcmp une float %183, 1.000000e+00
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %186 = load float, ptr %117, align 4, !tbaa !143
  %187 = load float, ptr %130, align 8, !tbaa !144
  %188 = load float, ptr %143, align 4, !tbaa !145
  %189 = getelementptr inbounds float, ptr %19, i64 1
  %190 = getelementptr inbounds float, ptr %19, i64 2
  call void @rgb_to_hsv(float noundef %186, float noundef %187, float noundef %188, ptr noundef nonnull %19, ptr noundef nonnull %189, ptr noundef nonnull %190) #10
  %191 = load float, ptr %182, align 8, !tbaa !220
  %192 = load float, ptr %189, align 4, !tbaa !96
  %193 = fmul float %191, %192
  store float %193, ptr %189, align 4, !tbaa !96
  %194 = load float, ptr %19, align 4, !tbaa !96
  %195 = load float, ptr %190, align 4, !tbaa !96
  call void @hsv_to_rgb(float noundef %194, float noundef %193, float noundef %195, ptr noundef nonnull %117, ptr noundef nonnull %130, ptr noundef nonnull %143) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  br label %196

196:                                              ; preds = %185, %181
  %197 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %197, align 8, !tbaa !163
  %198 = or disjoint i32 %111, 1
  br label %1495

199:                                              ; preds = %110
  %200 = fadd float %115, -5.000000e-01
  %201 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %202 = load float, ptr %201, align 4, !tbaa !216
  %203 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %204 = load float, ptr %203, align 8, !tbaa !217
  %205 = tail call float @llvm.fmuladd.f32(float %200, float %202, float %204)
  %206 = fadd float %205, -5.000000e-01
  store float %206, ptr %5, align 8, !tbaa !146
  %207 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %208 = load i16, ptr %207, align 2, !tbaa !138
  %209 = and i16 %208, 1024
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %1495

211:                                              ; preds = %199
  %212 = fcmp olt float %206, 0.000000e+00
  br i1 %212, label %213, label %214

213:                                              ; preds = %211
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

214:                                              ; preds = %211
  %215 = fcmp ogt float %206, 1.000000e+00
  br i1 %215, label %216, label %1495

216:                                              ; preds = %214
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

217:                                              ; preds = %35
  %218 = load float, ptr %1, align 4, !tbaa !96
  %219 = getelementptr inbounds float, ptr %1, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !96
  %221 = getelementptr inbounds float, ptr %1, i64 2
  %222 = load float, ptr %221, align 4, !tbaa !96
  %223 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %218, float noundef %220, float noundef %222)
  store float %223, ptr %5, align 8, !tbaa !146
  %224 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !134
  %226 = icmp eq ptr %225, null
  br i1 %226, label %252, label %227

227:                                              ; preds = %217
  %228 = load float, ptr %1, align 4, !tbaa !96
  %229 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %230 = load float, ptr %229, align 8, !tbaa !213
  %231 = fadd float %228, %230
  %232 = load float, ptr %219, align 4, !tbaa !96
  %233 = load float, ptr %221, align 4, !tbaa !96
  %234 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %231, float noundef %232, float noundef %233)
  %235 = load ptr, ptr %224, align 8, !tbaa !134
  store float %234, ptr %235, align 4, !tbaa !96
  %236 = load float, ptr %1, align 4, !tbaa !96
  %237 = load float, ptr %219, align 4, !tbaa !96
  %238 = load float, ptr %229, align 8, !tbaa !213
  %239 = fadd float %237, %238
  %240 = load float, ptr %221, align 4, !tbaa !96
  %241 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %236, float noundef %239, float noundef %240)
  %242 = load ptr, ptr %224, align 8, !tbaa !134
  %243 = getelementptr inbounds float, ptr %242, i64 1
  store float %241, ptr %243, align 4, !tbaa !96
  %244 = load float, ptr %1, align 4, !tbaa !96
  %245 = load float, ptr %219, align 4, !tbaa !96
  %246 = load float, ptr %221, align 4, !tbaa !96
  %247 = load float, ptr %229, align 8, !tbaa !213
  %248 = fadd float %246, %247
  %249 = tail call fastcc float @wood_int(ptr noundef %0, float noundef %244, float noundef %245, float noundef %248)
  %250 = load ptr, ptr %224, align 8, !tbaa !134
  %251 = getelementptr inbounds float, ptr %250, i64 2
  store float %249, ptr %251, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %252

252:                                              ; preds = %227, %217
  %253 = phi i32 [ 2, %227 ], [ 0, %217 ]
  %254 = load float, ptr %5, align 8, !tbaa !146
  %255 = fadd float %254, -5.000000e-01
  %256 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %257 = load float, ptr %256, align 4, !tbaa !216
  %258 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %259 = load float, ptr %258, align 8, !tbaa !217
  %260 = tail call float @llvm.fmuladd.f32(float %255, float %257, float %259)
  %261 = fadd float %260, -5.000000e-01
  store float %261, ptr %5, align 8, !tbaa !146
  %262 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %263 = load i16, ptr %262, align 2, !tbaa !138
  %264 = and i16 %263, 1024
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %266, label %1495

266:                                              ; preds = %252
  %267 = fcmp olt float %261, 0.000000e+00
  br i1 %267, label %268, label %269

268:                                              ; preds = %266
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

269:                                              ; preds = %266
  %270 = fcmp ogt float %261, 1.000000e+00
  br i1 %270, label %271, label %1495

271:                                              ; preds = %269
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

272:                                              ; preds = %35
  %273 = load float, ptr %1, align 4, !tbaa !96
  %274 = getelementptr inbounds float, ptr %1, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !96
  %276 = getelementptr inbounds float, ptr %1, i64 2
  %277 = load float, ptr %276, align 4, !tbaa !96
  %278 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %279 = load i16, ptr %278, align 2, !tbaa !221
  %280 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %281 = load i16, ptr %280, align 2, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  store ptr @tex_sin, ptr %13, align 16, !tbaa !34
  %282 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 1
  store ptr @tex_saw, ptr %282, align 8, !tbaa !34
  %283 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 2
  store ptr @tex_tri, ptr %283, align 16, !tbaa !34
  %284 = fadd float %273, %275
  %285 = fadd float %284, %277
  %286 = fmul float %285, 5.000000e+00
  %287 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %288 = load float, ptr %287, align 4, !tbaa !222
  %289 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %290 = load float, ptr %289, align 8, !tbaa !209
  %291 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %292 = load i16, ptr %291, align 4, !tbaa !210
  %293 = sext i16 %292 to i32
  %294 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %295 = load i16, ptr %294, align 2, !tbaa !211
  %296 = icmp ne i16 %295, 0
  %297 = zext i1 %296 to i32
  %298 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %299 = load i16, ptr %298, align 8, !tbaa !212
  %300 = sext i16 %299 to i32
  %301 = tail call float @BLI_gTurbulence(float noundef %290, float noundef %273, float noundef %275, float noundef %277, i32 noundef %293, i32 noundef %297, i32 noundef %300) #10
  %302 = tail call float @llvm.fmuladd.f32(float %288, float %301, float %286)
  %303 = icmp sgt i16 %281, -1
  br i1 %303, label %304, label %316

304:                                              ; preds = %272
  %305 = icmp ugt i16 %279, 2
  %306 = select i1 %305, i16 0, i16 %279
  %307 = sext i16 %306 to i64
  %308 = getelementptr inbounds [3 x ptr], ptr %13, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !34
  %310 = tail call float %309(float noundef %302) #10
  switch i16 %281, label %316 [
    i16 1, label %313
    i16 2, label %311
  ]

311:                                              ; preds = %304
  %312 = tail call float @sqrtf(float noundef %310) #10
  br label %313

313:                                              ; preds = %304, %311
  %314 = phi float [ %312, %311 ], [ %310, %304 ]
  %315 = tail call float @sqrtf(float noundef %314) #10
  br label %316

316:                                              ; preds = %313, %272, %304
  %317 = phi float [ %302, %272 ], [ %310, %304 ], [ %315, %313 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  store float %317, ptr %5, align 8, !tbaa !146
  %318 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %319 = load ptr, ptr %318, align 8, !tbaa !134
  %320 = icmp eq ptr %319, null
  br i1 %320, label %442, label %321

321:                                              ; preds = %316
  %322 = load float, ptr %1, align 4, !tbaa !96
  %323 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %324 = load float, ptr %323, align 8, !tbaa !213
  %325 = fadd float %322, %324
  %326 = load float, ptr %274, align 4, !tbaa !96
  %327 = load float, ptr %276, align 4, !tbaa !96
  %328 = load i16, ptr %278, align 2, !tbaa !221
  %329 = load i16, ptr %280, align 2, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  store ptr @tex_sin, ptr %12, align 16, !tbaa !34
  %330 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  store ptr @tex_saw, ptr %330, align 8, !tbaa !34
  %331 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  store ptr @tex_tri, ptr %331, align 16, !tbaa !34
  %332 = fadd float %325, %326
  %333 = fadd float %332, %327
  %334 = fmul float %333, 5.000000e+00
  %335 = load float, ptr %287, align 4, !tbaa !222
  %336 = load float, ptr %289, align 8, !tbaa !209
  %337 = load i16, ptr %291, align 4, !tbaa !210
  %338 = sext i16 %337 to i32
  %339 = load i16, ptr %294, align 2, !tbaa !211
  %340 = icmp ne i16 %339, 0
  %341 = zext i1 %340 to i32
  %342 = load i16, ptr %298, align 8, !tbaa !212
  %343 = sext i16 %342 to i32
  %344 = tail call float @BLI_gTurbulence(float noundef %336, float noundef %325, float noundef %326, float noundef %327, i32 noundef %338, i32 noundef %341, i32 noundef %343) #10
  %345 = tail call float @llvm.fmuladd.f32(float %335, float %344, float %334)
  %346 = icmp sgt i16 %329, -1
  br i1 %346, label %347, label %359

347:                                              ; preds = %321
  %348 = icmp ugt i16 %328, 2
  %349 = select i1 %348, i16 0, i16 %328
  %350 = sext i16 %349 to i64
  %351 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !34
  %353 = tail call float %352(float noundef %345) #10
  switch i16 %329, label %359 [
    i16 1, label %356
    i16 2, label %354
  ]

354:                                              ; preds = %347
  %355 = tail call float @sqrtf(float noundef %353) #10
  br label %356

356:                                              ; preds = %347, %354
  %357 = phi float [ %355, %354 ], [ %353, %347 ]
  %358 = tail call float @sqrtf(float noundef %357) #10
  br label %359

359:                                              ; preds = %356, %321, %347
  %360 = phi float [ %345, %321 ], [ %353, %347 ], [ %358, %356 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  %361 = load ptr, ptr %318, align 8, !tbaa !134
  store float %360, ptr %361, align 4, !tbaa !96
  %362 = load float, ptr %1, align 4, !tbaa !96
  %363 = load float, ptr %274, align 4, !tbaa !96
  %364 = load float, ptr %323, align 8, !tbaa !213
  %365 = fadd float %363, %364
  %366 = load float, ptr %276, align 4, !tbaa !96
  %367 = load i16, ptr %278, align 2, !tbaa !221
  %368 = load i16, ptr %280, align 2, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  store ptr @tex_sin, ptr %11, align 16, !tbaa !34
  %369 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  store ptr @tex_saw, ptr %369, align 8, !tbaa !34
  %370 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr @tex_tri, ptr %370, align 16, !tbaa !34
  %371 = fadd float %362, %365
  %372 = fadd float %366, %371
  %373 = fmul float %372, 5.000000e+00
  %374 = load float, ptr %287, align 4, !tbaa !222
  %375 = load float, ptr %289, align 8, !tbaa !209
  %376 = load i16, ptr %291, align 4, !tbaa !210
  %377 = sext i16 %376 to i32
  %378 = load i16, ptr %294, align 2, !tbaa !211
  %379 = icmp ne i16 %378, 0
  %380 = zext i1 %379 to i32
  %381 = load i16, ptr %298, align 8, !tbaa !212
  %382 = sext i16 %381 to i32
  %383 = tail call float @BLI_gTurbulence(float noundef %375, float noundef %362, float noundef %365, float noundef %366, i32 noundef %377, i32 noundef %380, i32 noundef %382) #10
  %384 = tail call float @llvm.fmuladd.f32(float %374, float %383, float %373)
  %385 = icmp sgt i16 %368, -1
  br i1 %385, label %386, label %398

386:                                              ; preds = %359
  %387 = icmp ugt i16 %367, 2
  %388 = select i1 %387, i16 0, i16 %367
  %389 = sext i16 %388 to i64
  %390 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !34
  %392 = tail call float %391(float noundef %384) #10
  switch i16 %368, label %398 [
    i16 1, label %395
    i16 2, label %393
  ]

393:                                              ; preds = %386
  %394 = tail call float @sqrtf(float noundef %392) #10
  br label %395

395:                                              ; preds = %386, %393
  %396 = phi float [ %394, %393 ], [ %392, %386 ]
  %397 = tail call float @sqrtf(float noundef %396) #10
  br label %398

398:                                              ; preds = %395, %359, %386
  %399 = phi float [ %384, %359 ], [ %392, %386 ], [ %397, %395 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  %400 = load ptr, ptr %318, align 8, !tbaa !134
  %401 = getelementptr inbounds float, ptr %400, i64 1
  store float %399, ptr %401, align 4, !tbaa !96
  %402 = load float, ptr %1, align 4, !tbaa !96
  %403 = load float, ptr %274, align 4, !tbaa !96
  %404 = load float, ptr %276, align 4, !tbaa !96
  %405 = load float, ptr %323, align 8, !tbaa !213
  %406 = fadd float %404, %405
  %407 = load i16, ptr %278, align 2, !tbaa !221
  %408 = load i16, ptr %280, align 2, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  store ptr @tex_sin, ptr %10, align 16, !tbaa !34
  %409 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr @tex_saw, ptr %409, align 8, !tbaa !34
  %410 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr @tex_tri, ptr %410, align 16, !tbaa !34
  %411 = fadd float %402, %403
  %412 = fadd float %411, %406
  %413 = fmul float %412, 5.000000e+00
  %414 = load float, ptr %287, align 4, !tbaa !222
  %415 = load float, ptr %289, align 8, !tbaa !209
  %416 = load i16, ptr %291, align 4, !tbaa !210
  %417 = sext i16 %416 to i32
  %418 = load i16, ptr %294, align 2, !tbaa !211
  %419 = icmp ne i16 %418, 0
  %420 = zext i1 %419 to i32
  %421 = load i16, ptr %298, align 8, !tbaa !212
  %422 = sext i16 %421 to i32
  %423 = tail call float @BLI_gTurbulence(float noundef %415, float noundef %402, float noundef %403, float noundef %406, i32 noundef %417, i32 noundef %420, i32 noundef %422) #10
  %424 = tail call float @llvm.fmuladd.f32(float %414, float %423, float %413)
  %425 = icmp sgt i16 %408, -1
  br i1 %425, label %426, label %438

426:                                              ; preds = %398
  %427 = icmp ugt i16 %407, 2
  %428 = select i1 %427, i16 0, i16 %407
  %429 = sext i16 %428 to i64
  %430 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !34
  %432 = tail call float %431(float noundef %424) #10
  switch i16 %408, label %438 [
    i16 1, label %435
    i16 2, label %433
  ]

433:                                              ; preds = %426
  %434 = tail call float @sqrtf(float noundef %432) #10
  br label %435

435:                                              ; preds = %426, %433
  %436 = phi float [ %434, %433 ], [ %432, %426 ]
  %437 = tail call float @sqrtf(float noundef %436) #10
  br label %438

438:                                              ; preds = %435, %398, %426
  %439 = phi float [ %424, %398 ], [ %432, %426 ], [ %437, %435 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  %440 = load ptr, ptr %318, align 8, !tbaa !134
  %441 = getelementptr inbounds float, ptr %440, i64 2
  store float %439, ptr %441, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %442

442:                                              ; preds = %438, %316
  %443 = phi i32 [ 2, %438 ], [ 0, %316 ]
  %444 = load float, ptr %5, align 8, !tbaa !146
  %445 = fadd float %444, -5.000000e-01
  %446 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %447 = load float, ptr %446, align 4, !tbaa !216
  %448 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %449 = load float, ptr %448, align 8, !tbaa !217
  %450 = tail call float @llvm.fmuladd.f32(float %445, float %447, float %449)
  %451 = fadd float %450, -5.000000e-01
  store float %451, ptr %5, align 8, !tbaa !146
  %452 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %453 = load i16, ptr %452, align 2, !tbaa !138
  %454 = and i16 %453, 1024
  %455 = icmp eq i16 %454, 0
  br i1 %455, label %456, label %1495

456:                                              ; preds = %442
  %457 = fcmp olt float %451, 0.000000e+00
  br i1 %457, label %458, label %459

458:                                              ; preds = %456
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

459:                                              ; preds = %456
  %460 = fcmp ogt float %451, 1.000000e+00
  br i1 %460, label %461, label %1495

461:                                              ; preds = %459
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

462:                                              ; preds = %35
  %463 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %464 = load i16, ptr %463, align 4, !tbaa !210
  %465 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %466 = load float, ptr %465, align 4, !tbaa !222
  %467 = fdiv float %466, 5.000000e+00
  %468 = load float, ptr %1, align 4, !tbaa !96
  %469 = getelementptr inbounds float, ptr %1, i64 1
  %470 = load float, ptr %469, align 4, !tbaa !96
  %471 = fadd float %468, %470
  %472 = getelementptr inbounds float, ptr %1, i64 2
  %473 = load float, ptr %472, align 4, !tbaa !96
  %474 = fadd float %471, %473
  %475 = fmul float %474, 5.000000e+00
  %476 = tail call float @sinf(float noundef %475) #10
  %477 = load float, ptr %1, align 4, !tbaa !96
  %478 = load float, ptr %469, align 4, !tbaa !96
  %479 = fsub float %478, %477
  %480 = load float, ptr %472, align 4, !tbaa !96
  %481 = fsub float %479, %480
  %482 = fmul float %481, 5.000000e+00
  %483 = tail call float @cosf(float noundef %482) #10
  %484 = load float, ptr %1, align 4, !tbaa !96
  %485 = fneg float %484
  %486 = load float, ptr %469, align 4, !tbaa !96
  %487 = fsub float %485, %486
  %488 = load float, ptr %472, align 4, !tbaa !96
  %489 = fadd float %487, %488
  %490 = fmul float %489, 5.000000e+00
  %491 = tail call float @cosf(float noundef %490) #10
  %492 = fneg float %491
  %493 = icmp sgt i16 %464, 0
  br i1 %493, label %494, label %564

494:                                              ; preds = %462
  %495 = fmul float %467, %476
  %496 = fmul float %467, %483
  %497 = fmul float %467, %492
  %498 = fsub float %495, %496
  %499 = fadd float %498, %497
  %500 = tail call float @cosf(float noundef %499) #10
  %501 = fneg float %500
  %502 = fmul float %467, %501
  %503 = icmp eq i16 %464, 1
  br i1 %503, label %564, label %504

504:                                              ; preds = %494
  %505 = fsub float %495, %502
  %506 = fsub float %505, %497
  %507 = tail call float @cosf(float noundef %506) #10
  %508 = fmul float %467, %507
  %509 = icmp sgt i16 %464, 2
  br i1 %509, label %510, label %564

510:                                              ; preds = %504
  %511 = fneg float %508
  %512 = fsub float %511, %502
  %513 = fsub float %512, %497
  %514 = tail call float @sinf(float noundef %513) #10
  %515 = fmul float %467, %514
  %516 = icmp eq i16 %464, 3
  br i1 %516, label %564, label %517

517:                                              ; preds = %510
  %518 = fsub float %502, %508
  %519 = fsub float %518, %515
  %520 = tail call float @cosf(float noundef %519) #10
  %521 = fneg float %520
  %522 = fmul float %467, %521
  %523 = icmp sgt i16 %464, 4
  br i1 %523, label %524, label %564

524:                                              ; preds = %517
  %525 = fsub float %502, %522
  %526 = fadd float %515, %525
  %527 = tail call float @sinf(float noundef %526) #10
  %528 = fneg float %527
  %529 = fmul float %467, %528
  %530 = icmp eq i16 %464, 5
  br i1 %530, label %564, label %531

531:                                              ; preds = %524
  %532 = fsub float %529, %522
  %533 = fadd float %515, %532
  %534 = tail call float @cosf(float noundef %533) #10
  %535 = fneg float %534
  %536 = fmul float %467, %535
  %537 = icmp sgt i16 %464, 6
  br i1 %537, label %538, label %564

538:                                              ; preds = %531
  %539 = fadd float %522, %536
  %540 = fadd float %515, %539
  %541 = tail call float @cosf(float noundef %540) #10
  %542 = fmul float %467, %541
  %543 = icmp eq i16 %464, 7
  br i1 %543, label %564, label %544

544:                                              ; preds = %538
  %545 = fadd float %536, %542
  %546 = fsub float %545, %515
  %547 = tail call float @sinf(float noundef %546) #10
  %548 = fmul float %467, %547
  %549 = icmp sgt i16 %464, 8
  br i1 %549, label %550, label %564

550:                                              ; preds = %544
  %551 = fneg float %542
  %552 = fsub float %551, %536
  %553 = fadd float %552, %548
  %554 = tail call float @cosf(float noundef %553) #10
  %555 = fneg float %554
  %556 = fmul float %467, %555
  %557 = icmp eq i16 %464, 9
  br i1 %557, label %564, label %558

558:                                              ; preds = %550
  %559 = fsub float %556, %536
  %560 = fadd float %548, %559
  %561 = tail call float @sinf(float noundef %560) #10
  %562 = fneg float %561
  %563 = fmul float %467, %562
  br label %564

564:                                              ; preds = %558, %550, %544, %538, %531, %524, %517, %510, %504, %494, %462
  %565 = phi float [ %563, %558 ], [ %536, %550 ], [ %536, %544 ], [ %536, %538 ], [ %536, %531 ], [ %529, %524 ], [ %502, %517 ], [ %502, %510 ], [ %502, %504 ], [ %502, %494 ], [ %483, %462 ]
  %566 = phi float [ %548, %558 ], [ %548, %550 ], [ %548, %544 ], [ %515, %538 ], [ %515, %531 ], [ %515, %524 ], [ %515, %517 ], [ %515, %510 ], [ %497, %504 ], [ %497, %494 ], [ %492, %462 ]
  %567 = phi float [ %556, %558 ], [ %556, %550 ], [ %542, %544 ], [ %542, %538 ], [ %522, %531 ], [ %522, %524 ], [ %522, %517 ], [ %508, %510 ], [ %508, %504 ], [ %495, %494 ], [ %476, %462 ]
  %568 = fcmp une float %467, 0.000000e+00
  %569 = fmul float %467, 2.000000e+00
  %570 = select i1 %568, float %569, float 1.000000e+00
  %571 = fdiv float %565, %570
  %572 = fdiv float %566, %570
  %573 = fdiv float %567, %570
  %574 = fsub float 5.000000e-01, %573
  %575 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  store float %574, ptr %575, align 4, !tbaa !143
  %576 = fsub float 5.000000e-01, %571
  %577 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  store float %576, ptr %577, align 8, !tbaa !144
  %578 = fsub float 5.000000e-01, %572
  %579 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %578, ptr %579, align 4, !tbaa !145
  %580 = fadd float %576, %574
  %581 = fadd float %578, %580
  %582 = fmul float %581, 0x3FD5555560000000
  store float %582, ptr %5, align 8, !tbaa !146
  %583 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %584 = load float, ptr %583, align 4, !tbaa !215
  %585 = fadd float %574, -5.000000e-01
  %586 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %587 = load float, ptr %586, align 4, !tbaa !216
  %588 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %589 = load float, ptr %588, align 8, !tbaa !217
  %590 = tail call float @llvm.fmuladd.f32(float %585, float %587, float %589)
  %591 = fadd float %590, -5.000000e-01
  %592 = fmul float %584, %591
  store float %592, ptr %575, align 4, !tbaa !143
  %593 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %594 = load float, ptr %593, align 8, !tbaa !218
  %595 = fadd float %576, -5.000000e-01
  %596 = tail call float @llvm.fmuladd.f32(float %595, float %587, float %589)
  %597 = fadd float %596, -5.000000e-01
  %598 = fmul float %594, %597
  store float %598, ptr %577, align 8, !tbaa !144
  %599 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %600 = load float, ptr %599, align 4, !tbaa !219
  %601 = fadd float %578, -5.000000e-01
  %602 = tail call float @llvm.fmuladd.f32(float %601, float %587, float %589)
  %603 = fadd float %602, -5.000000e-01
  %604 = fmul float %603, %600
  store float %604, ptr %579, align 4, !tbaa !145
  %605 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %606 = load i16, ptr %605, align 2, !tbaa !138
  %607 = and i16 %606, 1024
  %608 = icmp eq i16 %607, 0
  br i1 %608, label %609, label %618

609:                                              ; preds = %564
  %610 = fcmp olt float %592, 0.000000e+00
  br i1 %610, label %611, label %612

611:                                              ; preds = %609
  store float 0.000000e+00, ptr %575, align 4, !tbaa !143
  br label %612

612:                                              ; preds = %611, %609
  %613 = fcmp olt float %598, 0.000000e+00
  br i1 %613, label %614, label %615

614:                                              ; preds = %612
  store float 0.000000e+00, ptr %577, align 8, !tbaa !144
  br label %615

615:                                              ; preds = %614, %612
  %616 = fcmp olt float %604, 0.000000e+00
  br i1 %616, label %617, label %618

617:                                              ; preds = %615
  store float 0.000000e+00, ptr %579, align 4, !tbaa !145
  br label %618

618:                                              ; preds = %617, %615, %564
  %619 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %620 = load float, ptr %619, align 8, !tbaa !220
  %621 = fcmp une float %620, 1.000000e+00
  br i1 %621, label %622, label %633

622:                                              ; preds = %618
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %623 = load float, ptr %575, align 4, !tbaa !143
  %624 = load float, ptr %577, align 8, !tbaa !144
  %625 = load float, ptr %579, align 4, !tbaa !145
  %626 = getelementptr inbounds float, ptr %18, i64 1
  %627 = getelementptr inbounds float, ptr %18, i64 2
  call void @rgb_to_hsv(float noundef %623, float noundef %624, float noundef %625, ptr noundef nonnull %18, ptr noundef nonnull %626, ptr noundef nonnull %627) #10
  %628 = load float, ptr %619, align 8, !tbaa !220
  %629 = load float, ptr %626, align 4, !tbaa !96
  %630 = fmul float %628, %629
  store float %630, ptr %626, align 4, !tbaa !96
  %631 = load float, ptr %18, align 4, !tbaa !96
  %632 = load float, ptr %627, align 4, !tbaa !96
  call void @hsv_to_rgb(float noundef %631, float noundef %630, float noundef %632, ptr noundef nonnull %575, ptr noundef nonnull %577, ptr noundef nonnull %579) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  br label %633

633:                                              ; preds = %618, %622
  %634 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %634, align 8, !tbaa !163
  br label %1495

635:                                              ; preds = %35
  %636 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %637 = load i16, ptr %636, align 2, !tbaa !138
  %638 = and i16 %637, 2
  %639 = icmp eq i16 %638, 0
  %640 = getelementptr inbounds float, ptr %1, i64 1
  %641 = select i1 %639, ptr %640, ptr %1
  %642 = select i1 %639, ptr %1, ptr %640
  %643 = load float, ptr %642, align 4, !tbaa !96
  %644 = load float, ptr %641, align 4, !tbaa !96
  %645 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %646 = load i16, ptr %645, align 2, !tbaa !214
  switch i16 %646, label %677 [
    i16 0, label %647
    i16 1, label %650
    i16 2, label %656
    i16 3, label %667
    i16 6, label %671
  ]

647:                                              ; preds = %635
  %648 = fadd float %643, 1.000000e+00
  %649 = fmul float %648, 5.000000e-01
  br label %691

650:                                              ; preds = %635
  %651 = fadd float %643, 1.000000e+00
  %652 = fmul float %651, 5.000000e-01
  store float %652, ptr %5, align 8, !tbaa !146
  %653 = fcmp olt float %652, 0.000000e+00
  br i1 %653, label %691, label %654

654:                                              ; preds = %650
  %655 = fmul float %652, %652
  br label %691

656:                                              ; preds = %635
  %657 = fadd float %643, 1.000000e+00
  %658 = fmul float %657, 5.000000e-01
  store float %658, ptr %5, align 8, !tbaa !146
  %659 = fcmp ugt float %658, 0.000000e+00
  br i1 %659, label %660, label %691

660:                                              ; preds = %656
  %661 = fcmp ult float %658, 1.000000e+00
  br i1 %661, label %662, label %691

662:                                              ; preds = %660
  %663 = fmul float %658, %658
  %664 = fmul float %663, -2.000000e+00
  %665 = fmul float %658, %664
  %666 = tail call float @llvm.fmuladd.f32(float %663, float 3.000000e+00, float %665)
  br label %691

667:                                              ; preds = %635
  %668 = fadd float %643, 2.000000e+00
  %669 = fadd float %668, %644
  %670 = fmul float %669, 2.500000e-01
  br label %691

671:                                              ; preds = %635
  %672 = tail call float @atan2f(float noundef %644, float noundef %643) #10
  %673 = fpext float %672 to double
  %674 = fdiv double %673, 0x401921FB54442D18
  %675 = fadd double %674, 5.000000e-01
  %676 = fptrunc double %675 to float
  br label %691

677:                                              ; preds = %635
  %678 = fmul float %644, %644
  %679 = tail call float @llvm.fmuladd.f32(float %643, float %643, float %678)
  %680 = getelementptr inbounds float, ptr %1, i64 2
  %681 = load float, ptr %680, align 4, !tbaa !96
  %682 = tail call float @llvm.fmuladd.f32(float %681, float %681, float %679)
  %683 = tail call float @sqrtf(float noundef %682) #10
  %684 = fsub float 1.000000e+00, %683
  %685 = fcmp olt float %684, 0.000000e+00
  %686 = select i1 %685, float 0.000000e+00, float %684
  store float %686, ptr %5, align 8, !tbaa !146
  %687 = load i16, ptr %645, align 2, !tbaa !214
  %688 = icmp eq i16 %687, 5
  br i1 %688, label %689, label %693

689:                                              ; preds = %677
  %690 = fmul float %686, %686
  br label %691

691:                                              ; preds = %660, %656, %650, %647, %654, %662, %667, %671, %689
  %692 = phi float [ %690, %689 ], [ %676, %671 ], [ %670, %667 ], [ %666, %662 ], [ %655, %654 ], [ %649, %647 ], [ 0.000000e+00, %650 ], [ 0.000000e+00, %656 ], [ 1.000000e+00, %660 ]
  store float %692, ptr %5, align 8, !tbaa !146
  br label %693

693:                                              ; preds = %691, %677
  %694 = load float, ptr %5, align 8, !tbaa !146
  %695 = fadd float %694, -5.000000e-01
  %696 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %697 = load float, ptr %696, align 4, !tbaa !216
  %698 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %699 = load float, ptr %698, align 8, !tbaa !217
  %700 = tail call float @llvm.fmuladd.f32(float %695, float %697, float %699)
  %701 = fadd float %700, -5.000000e-01
  store float %701, ptr %5, align 8, !tbaa !146
  %702 = load i16, ptr %636, align 2, !tbaa !138
  %703 = and i16 %702, 1024
  %704 = icmp eq i16 %703, 0
  br i1 %704, label %705, label %1495

705:                                              ; preds = %693
  %706 = fcmp olt float %701, 0.000000e+00
  br i1 %706, label %707, label %708

707:                                              ; preds = %705
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

708:                                              ; preds = %705
  %709 = fcmp ogt float %701, 1.000000e+00
  br i1 %709, label %710, label %1495

710:                                              ; preds = %708
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

711:                                              ; preds = %35
  %712 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %713 = load float, ptr %712, align 8, !tbaa !209
  %714 = load float, ptr %1, align 4, !tbaa !96
  %715 = getelementptr inbounds float, ptr %1, i64 1
  %716 = load float, ptr %715, align 4, !tbaa !96
  %717 = getelementptr inbounds float, ptr %1, i64 2
  %718 = load float, ptr %717, align 4, !tbaa !96
  %719 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %720 = load i16, ptr %719, align 2, !tbaa !211
  %721 = icmp ne i16 %720, 0
  %722 = zext i1 %721 to i32
  %723 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %724 = load i16, ptr %723, align 8, !tbaa !212
  %725 = sext i16 %724 to i32
  %726 = tail call float @BLI_gNoise(float noundef %713, float noundef %714, float noundef %716, float noundef %718, i32 noundef %722, i32 noundef %725) #10
  %727 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %728 = load float, ptr %727, align 4, !tbaa !222
  %729 = fdiv float %728, 2.000000e+02
  %730 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %731 = load i16, ptr %730, align 2, !tbaa !214
  %732 = icmp eq i16 %731, 0
  %733 = fmul float %726, %726
  %734 = select i1 %732, float 1.000000e+00, float %733
  %735 = fmul float %729, %734
  %736 = load float, ptr %712, align 8, !tbaa !209
  %737 = load float, ptr %1, align 4, !tbaa !96
  %738 = fadd float %737, %735
  %739 = load float, ptr %715, align 4, !tbaa !96
  %740 = load float, ptr %717, align 4, !tbaa !96
  %741 = load i16, ptr %719, align 2, !tbaa !211
  %742 = icmp ne i16 %741, 0
  %743 = zext i1 %742 to i32
  %744 = load i16, ptr %723, align 8, !tbaa !212
  %745 = sext i16 %744 to i32
  %746 = tail call float @BLI_gNoise(float noundef %736, float noundef %738, float noundef %739, float noundef %740, i32 noundef %743, i32 noundef %745) #10
  %747 = load float, ptr %712, align 8, !tbaa !209
  %748 = load float, ptr %1, align 4, !tbaa !96
  %749 = load float, ptr %715, align 4, !tbaa !96
  %750 = fadd float %735, %749
  %751 = load float, ptr %717, align 4, !tbaa !96
  %752 = load i16, ptr %719, align 2, !tbaa !211
  %753 = icmp ne i16 %752, 0
  %754 = zext i1 %753 to i32
  %755 = load i16, ptr %723, align 8, !tbaa !212
  %756 = sext i16 %755 to i32
  %757 = tail call float @BLI_gNoise(float noundef %747, float noundef %748, float noundef %750, float noundef %751, i32 noundef %754, i32 noundef %756) #10
  %758 = load float, ptr %712, align 8, !tbaa !209
  %759 = load float, ptr %1, align 4, !tbaa !96
  %760 = load float, ptr %715, align 4, !tbaa !96
  %761 = load float, ptr %717, align 4, !tbaa !96
  %762 = fadd float %735, %761
  %763 = load i16, ptr %719, align 2, !tbaa !211
  %764 = icmp ne i16 %763, 0
  %765 = zext i1 %764 to i32
  %766 = load i16, ptr %723, align 8, !tbaa !212
  %767 = sext i16 %766 to i32
  %768 = tail call float @BLI_gNoise(float noundef %758, float noundef %759, float noundef %760, float noundef %762, i32 noundef %765, i32 noundef %767) #10
  store float %768, ptr %5, align 8, !tbaa !146
  %769 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %770 = load ptr, ptr %769, align 8, !tbaa !134
  %771 = icmp eq ptr %770, null
  br i1 %771, label %787, label %772

772:                                              ; preds = %711
  store float %746, ptr %770, align 4, !tbaa !96
  %773 = getelementptr inbounds float, ptr %770, i64 1
  store float %757, ptr %773, align 4, !tbaa !96
  %774 = getelementptr inbounds float, ptr %770, i64 2
  store float %768, ptr %774, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  %775 = load i16, ptr %730, align 2, !tbaa !214
  %776 = icmp eq i16 %775, 2
  br i1 %776, label %777, label %787

777:                                              ; preds = %772
  %778 = load ptr, ptr %769, align 8, !tbaa !134
  %779 = load float, ptr %778, align 4, !tbaa !96
  %780 = fneg float %779
  store float %780, ptr %778, align 4, !tbaa !96
  %781 = getelementptr inbounds float, ptr %778, i64 1
  %782 = load float, ptr %781, align 4, !tbaa !96
  %783 = fneg float %782
  store float %783, ptr %781, align 4, !tbaa !96
  %784 = getelementptr inbounds float, ptr %778, i64 2
  %785 = load float, ptr %784, align 4, !tbaa !96
  %786 = fneg float %785
  store float %786, ptr %784, align 4, !tbaa !96
  br label %787

787:                                              ; preds = %777, %772, %711
  %788 = phi i32 [ 0, %711 ], [ 2, %777 ], [ 2, %772 ]
  %789 = load i16, ptr %730, align 2, !tbaa !214
  %790 = icmp eq i16 %789, 2
  br i1 %790, label %791, label %794

791:                                              ; preds = %787
  %792 = load float, ptr %5, align 8, !tbaa !146
  %793 = fsub float 1.000000e+00, %792
  store float %793, ptr %5, align 8, !tbaa !146
  br label %794

794:                                              ; preds = %791, %787
  %795 = load float, ptr %5, align 8, !tbaa !146
  %796 = fcmp olt float %795, 0.000000e+00
  br i1 %796, label %797, label %1495

797:                                              ; preds = %794
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

798:                                              ; preds = %35
  %799 = sext i16 %6 to i32
  %800 = load ptr, ptr @random_tex_array, align 8, !tbaa !34
  %801 = tail call i32 @BLI_rng_thread_rand(ptr noundef %800, i32 noundef %799) #10
  %802 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  %803 = load i16, ptr %802, align 4, !tbaa !210
  %804 = lshr i32 %801, 29
  %805 = and i32 %804, 3
  %806 = icmp eq i16 %803, 0
  br i1 %806, label %821, label %807

807:                                              ; preds = %798
  %808 = sext i16 %803 to i32
  br label %809

809:                                              ; preds = %807, %809
  %810 = phi i32 [ %815, %809 ], [ 29, %807 ]
  %811 = phi i32 [ %814, %809 ], [ %808, %807 ]
  %812 = phi float [ %819, %809 ], [ 3.000000e+00, %807 ]
  %813 = phi i32 [ %818, %809 ], [ %805, %807 ]
  %814 = add nsw i32 %811, -1
  %815 = add nsw i32 %810, -2
  %816 = ashr i32 %801, %815
  %817 = and i32 %816, 3
  %818 = mul nsw i32 %817, %813
  %819 = fmul float %812, 3.000000e+00
  %820 = icmp eq i32 %814, 0
  br i1 %820, label %821, label %809, !llvm.loop !223

821:                                              ; preds = %809, %798
  %822 = phi i32 [ %805, %798 ], [ %818, %809 ]
  %823 = phi float [ 3.000000e+00, %798 ], [ %819, %809 ]
  %824 = sitofp i32 %822 to float
  %825 = fdiv float %824, %823
  store float %825, ptr %5, align 8, !tbaa !146
  %826 = fadd float %825, -5.000000e-01
  %827 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %828 = load float, ptr %827, align 4, !tbaa !216
  %829 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %830 = load float, ptr %829, align 8, !tbaa !217
  %831 = tail call float @llvm.fmuladd.f32(float %826, float %828, float %830)
  %832 = fadd float %831, -5.000000e-01
  store float %832, ptr %5, align 8, !tbaa !146
  %833 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %834 = load i16, ptr %833, align 2, !tbaa !138
  %835 = and i16 %834, 1024
  %836 = icmp eq i16 %835, 0
  br i1 %836, label %837, label %1495

837:                                              ; preds = %821
  %838 = fcmp olt float %832, 0.000000e+00
  br i1 %838, label %839, label %840

839:                                              ; preds = %837
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

840:                                              ; preds = %837
  %841 = fcmp ogt float %832, 1.000000e+00
  br i1 %841, label %842, label %1495

842:                                              ; preds = %840
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

843:                                              ; preds = %35
  %844 = icmp eq i32 %4, 0
  %845 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %846 = load ptr, ptr %845, align 8, !tbaa !60
  br i1 %844, label %849, label %847

847:                                              ; preds = %843
  %848 = tail call i32 @imagewraposa(ptr noundef %0, ptr noundef %846, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %8) #10
  br label %851

849:                                              ; preds = %843
  %850 = tail call i32 @imagewrap(ptr noundef %0, ptr noundef %846, ptr noundef null, ptr noundef %1, ptr noundef %5, ptr noundef %8) #10
  br label %851

851:                                              ; preds = %849, %847
  %852 = phi i32 [ %848, %847 ], [ %850, %849 ]
  %853 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %854 = load ptr, ptr %853, align 8, !tbaa !60
  %855 = icmp eq ptr %854, null
  br i1 %855, label %1495, label %856

856:                                              ; preds = %851
  tail call void @BKE_image_tag_time(ptr noundef nonnull %854) #10
  br label %1495

857:                                              ; preds = %35
  %858 = tail call i32 @envmaptex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %8) #10
  br label %1495

859:                                              ; preds = %35
  %860 = load float, ptr %1, align 4, !tbaa !96
  %861 = getelementptr inbounds float, ptr %1, i64 1
  %862 = load float, ptr %861, align 4, !tbaa !96
  %863 = getelementptr inbounds float, ptr %1, i64 2
  %864 = load float, ptr %863, align 4, !tbaa !96
  %865 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %866 = load float, ptr %865, align 8, !tbaa !209
  %867 = fdiv float 1.000000e+00, %866
  %868 = fmul float %860, %867
  %869 = fmul float %862, %867
  %870 = fmul float %864, %867
  %871 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %872 = load i16, ptr %871, align 2, !tbaa !214
  switch i16 %872, label %1495 [
    i16 0, label %873
    i16 3, label %873
    i16 1, label %949
    i16 2, label %949
    i16 4, label %1035
  ]

873:                                              ; preds = %859, %859
  %874 = icmp eq i16 %872, 0
  %875 = select i1 %874, ptr @mg_MultiFractal, ptr @mg_fBm
  %876 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %877 = load float, ptr %876, align 8, !tbaa !224
  %878 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %879 = load float, ptr %878, align 8, !tbaa !225
  %880 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %881 = load float, ptr %880, align 4, !tbaa !226
  %882 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %883 = load float, ptr %882, align 8, !tbaa !227
  %884 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %885 = load i16, ptr %884, align 8, !tbaa !212
  %886 = sext i16 %885 to i32
  %887 = tail call float %875(float noundef %868, float noundef %869, float noundef %870, float noundef %879, float noundef %881, float noundef %883, i32 noundef %886) #10, !callees !228
  %888 = fmul float %877, %887
  store float %888, ptr %5, align 8, !tbaa !146
  %889 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %890 = load ptr, ptr %889, align 8, !tbaa !134
  %891 = icmp eq ptr %890, null
  br i1 %891, label %929, label %892

892:                                              ; preds = %873
  %893 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %894 = load float, ptr %893, align 8, !tbaa !213
  %895 = load float, ptr %865, align 8, !tbaa !209
  %896 = fdiv float %894, %895
  %897 = load float, ptr %876, align 8, !tbaa !224
  %898 = fadd float %868, %896
  %899 = load float, ptr %878, align 8, !tbaa !225
  %900 = load float, ptr %880, align 4, !tbaa !226
  %901 = load float, ptr %882, align 8, !tbaa !227
  %902 = load i16, ptr %884, align 8, !tbaa !212
  %903 = sext i16 %902 to i32
  %904 = tail call float %875(float noundef %898, float noundef %869, float noundef %870, float noundef %899, float noundef %900, float noundef %901, i32 noundef %903) #10, !callees !228
  %905 = fmul float %897, %904
  %906 = load ptr, ptr %889, align 8, !tbaa !134
  store float %905, ptr %906, align 4, !tbaa !96
  %907 = load float, ptr %876, align 8, !tbaa !224
  %908 = fadd float %869, %896
  %909 = load float, ptr %878, align 8, !tbaa !225
  %910 = load float, ptr %880, align 4, !tbaa !226
  %911 = load float, ptr %882, align 8, !tbaa !227
  %912 = load i16, ptr %884, align 8, !tbaa !212
  %913 = sext i16 %912 to i32
  %914 = tail call float %875(float noundef %868, float noundef %908, float noundef %870, float noundef %909, float noundef %910, float noundef %911, i32 noundef %913) #10, !callees !228
  %915 = fmul float %907, %914
  %916 = load ptr, ptr %889, align 8, !tbaa !134
  %917 = getelementptr inbounds float, ptr %916, i64 1
  store float %915, ptr %917, align 4, !tbaa !96
  %918 = load float, ptr %876, align 8, !tbaa !224
  %919 = fadd float %870, %896
  %920 = load float, ptr %878, align 8, !tbaa !225
  %921 = load float, ptr %880, align 4, !tbaa !226
  %922 = load float, ptr %882, align 8, !tbaa !227
  %923 = load i16, ptr %884, align 8, !tbaa !212
  %924 = sext i16 %923 to i32
  %925 = tail call float %875(float noundef %868, float noundef %869, float noundef %919, float noundef %920, float noundef %921, float noundef %922, i32 noundef %924) #10, !callees !228
  %926 = fmul float %918, %925
  %927 = load ptr, ptr %889, align 8, !tbaa !134
  %928 = getelementptr inbounds float, ptr %927, i64 2
  store float %926, ptr %928, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %929

929:                                              ; preds = %892, %873
  %930 = phi i32 [ 2, %892 ], [ 0, %873 ]
  %931 = load float, ptr %5, align 8, !tbaa !146
  %932 = fadd float %931, -5.000000e-01
  %933 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %934 = load float, ptr %933, align 4, !tbaa !216
  %935 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %936 = load float, ptr %935, align 8, !tbaa !217
  %937 = tail call float @llvm.fmuladd.f32(float %932, float %934, float %936)
  %938 = fadd float %937, -5.000000e-01
  store float %938, ptr %5, align 8, !tbaa !146
  %939 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %940 = load i16, ptr %939, align 2, !tbaa !138
  %941 = and i16 %940, 1024
  %942 = icmp eq i16 %941, 0
  br i1 %942, label %943, label %1495

943:                                              ; preds = %929
  %944 = fcmp olt float %938, 0.000000e+00
  br i1 %944, label %945, label %946

945:                                              ; preds = %943
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

946:                                              ; preds = %943
  %947 = fcmp ogt float %938, 1.000000e+00
  br i1 %947, label %948, label %1495

948:                                              ; preds = %946
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

949:                                              ; preds = %859, %859
  %950 = icmp eq i16 %872, 1
  %951 = select i1 %950, ptr @mg_RidgedMultiFractal, ptr @mg_HybridMultiFractal
  %952 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %953 = load float, ptr %952, align 8, !tbaa !224
  %954 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %955 = load float, ptr %954, align 8, !tbaa !225
  %956 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %957 = load float, ptr %956, align 4, !tbaa !226
  %958 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %959 = load float, ptr %958, align 8, !tbaa !227
  %960 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 15
  %961 = load float, ptr %960, align 4, !tbaa !229
  %962 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 16
  %963 = load float, ptr %962, align 8, !tbaa !230
  %964 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %965 = load i16, ptr %964, align 8, !tbaa !212
  %966 = sext i16 %965 to i32
  %967 = tail call float %951(float noundef %868, float noundef %869, float noundef %870, float noundef %955, float noundef %957, float noundef %959, float noundef %961, float noundef %963, i32 noundef %966) #10, !callees !231
  %968 = fmul float %953, %967
  store float %968, ptr %5, align 8, !tbaa !146
  %969 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %970 = load ptr, ptr %969, align 8, !tbaa !134
  %971 = icmp eq ptr %970, null
  br i1 %971, label %1015, label %972

972:                                              ; preds = %949
  %973 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %974 = load float, ptr %973, align 8, !tbaa !213
  %975 = load float, ptr %865, align 8, !tbaa !209
  %976 = fdiv float %974, %975
  %977 = load float, ptr %952, align 8, !tbaa !224
  %978 = fadd float %868, %976
  %979 = load float, ptr %954, align 8, !tbaa !225
  %980 = load float, ptr %956, align 4, !tbaa !226
  %981 = load float, ptr %958, align 8, !tbaa !227
  %982 = load float, ptr %960, align 4, !tbaa !229
  %983 = load float, ptr %962, align 8, !tbaa !230
  %984 = load i16, ptr %964, align 8, !tbaa !212
  %985 = sext i16 %984 to i32
  %986 = tail call float %951(float noundef %978, float noundef %869, float noundef %870, float noundef %979, float noundef %980, float noundef %981, float noundef %982, float noundef %983, i32 noundef %985) #10, !callees !231
  %987 = fmul float %977, %986
  %988 = load ptr, ptr %969, align 8, !tbaa !134
  store float %987, ptr %988, align 4, !tbaa !96
  %989 = load float, ptr %952, align 8, !tbaa !224
  %990 = fadd float %869, %976
  %991 = load float, ptr %954, align 8, !tbaa !225
  %992 = load float, ptr %956, align 4, !tbaa !226
  %993 = load float, ptr %958, align 8, !tbaa !227
  %994 = load float, ptr %960, align 4, !tbaa !229
  %995 = load float, ptr %962, align 8, !tbaa !230
  %996 = load i16, ptr %964, align 8, !tbaa !212
  %997 = sext i16 %996 to i32
  %998 = tail call float %951(float noundef %868, float noundef %990, float noundef %870, float noundef %991, float noundef %992, float noundef %993, float noundef %994, float noundef %995, i32 noundef %997) #10, !callees !231
  %999 = fmul float %989, %998
  %1000 = load ptr, ptr %969, align 8, !tbaa !134
  %1001 = getelementptr inbounds float, ptr %1000, i64 1
  store float %999, ptr %1001, align 4, !tbaa !96
  %1002 = load float, ptr %952, align 8, !tbaa !224
  %1003 = fadd float %870, %976
  %1004 = load float, ptr %954, align 8, !tbaa !225
  %1005 = load float, ptr %956, align 4, !tbaa !226
  %1006 = load float, ptr %958, align 8, !tbaa !227
  %1007 = load float, ptr %960, align 4, !tbaa !229
  %1008 = load float, ptr %962, align 8, !tbaa !230
  %1009 = load i16, ptr %964, align 8, !tbaa !212
  %1010 = sext i16 %1009 to i32
  %1011 = tail call float %951(float noundef %868, float noundef %869, float noundef %1003, float noundef %1004, float noundef %1005, float noundef %1006, float noundef %1007, float noundef %1008, i32 noundef %1010) #10, !callees !231
  %1012 = fmul float %1002, %1011
  %1013 = load ptr, ptr %969, align 8, !tbaa !134
  %1014 = getelementptr inbounds float, ptr %1013, i64 2
  store float %1012, ptr %1014, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %1015

1015:                                             ; preds = %972, %949
  %1016 = phi i32 [ 2, %972 ], [ 0, %949 ]
  %1017 = load float, ptr %5, align 8, !tbaa !146
  %1018 = fadd float %1017, -5.000000e-01
  %1019 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1020 = load float, ptr %1019, align 4, !tbaa !216
  %1021 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1022 = load float, ptr %1021, align 8, !tbaa !217
  %1023 = tail call float @llvm.fmuladd.f32(float %1018, float %1020, float %1022)
  %1024 = fadd float %1023, -5.000000e-01
  store float %1024, ptr %5, align 8, !tbaa !146
  %1025 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1026 = load i16, ptr %1025, align 2, !tbaa !138
  %1027 = and i16 %1026, 1024
  %1028 = icmp eq i16 %1027, 0
  br i1 %1028, label %1029, label %1495

1029:                                             ; preds = %1015
  %1030 = fcmp olt float %1024, 0.000000e+00
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1029
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1032:                                             ; preds = %1029
  %1033 = fcmp ogt float %1024, 1.000000e+00
  br i1 %1033, label %1034, label %1495

1034:                                             ; preds = %1032
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1035:                                             ; preds = %859
  %1036 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %1037 = load float, ptr %1036, align 8, !tbaa !224
  %1038 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  %1039 = load float, ptr %1038, align 8, !tbaa !225
  %1040 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  %1041 = load float, ptr %1040, align 4, !tbaa !226
  %1042 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  %1043 = load float, ptr %1042, align 8, !tbaa !227
  %1044 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 15
  %1045 = load float, ptr %1044, align 4, !tbaa !229
  %1046 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %1047 = load i16, ptr %1046, align 8, !tbaa !212
  %1048 = sext i16 %1047 to i32
  %1049 = tail call float @mg_HeteroTerrain(float noundef %868, float noundef %869, float noundef %870, float noundef %1039, float noundef %1041, float noundef %1043, float noundef %1045, i32 noundef %1048) #10
  %1050 = fmul float %1037, %1049
  store float %1050, ptr %5, align 8, !tbaa !146
  %1051 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %1052 = load ptr, ptr %1051, align 8, !tbaa !134
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1094, label %1054

1054:                                             ; preds = %1035
  %1055 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %1056 = load float, ptr %1055, align 8, !tbaa !213
  %1057 = load float, ptr %865, align 8, !tbaa !209
  %1058 = fdiv float %1056, %1057
  %1059 = load float, ptr %1036, align 8, !tbaa !224
  %1060 = fadd float %868, %1058
  %1061 = load float, ptr %1038, align 8, !tbaa !225
  %1062 = load float, ptr %1040, align 4, !tbaa !226
  %1063 = load float, ptr %1042, align 8, !tbaa !227
  %1064 = load float, ptr %1044, align 4, !tbaa !229
  %1065 = load i16, ptr %1046, align 8, !tbaa !212
  %1066 = sext i16 %1065 to i32
  %1067 = tail call float @mg_HeteroTerrain(float noundef %1060, float noundef %869, float noundef %870, float noundef %1061, float noundef %1062, float noundef %1063, float noundef %1064, i32 noundef %1066) #10
  %1068 = fmul float %1059, %1067
  %1069 = load ptr, ptr %1051, align 8, !tbaa !134
  store float %1068, ptr %1069, align 4, !tbaa !96
  %1070 = load float, ptr %1036, align 8, !tbaa !224
  %1071 = fadd float %869, %1058
  %1072 = load float, ptr %1038, align 8, !tbaa !225
  %1073 = load float, ptr %1040, align 4, !tbaa !226
  %1074 = load float, ptr %1042, align 8, !tbaa !227
  %1075 = load float, ptr %1044, align 4, !tbaa !229
  %1076 = load i16, ptr %1046, align 8, !tbaa !212
  %1077 = sext i16 %1076 to i32
  %1078 = tail call float @mg_HeteroTerrain(float noundef %868, float noundef %1071, float noundef %870, float noundef %1072, float noundef %1073, float noundef %1074, float noundef %1075, i32 noundef %1077) #10
  %1079 = fmul float %1070, %1078
  %1080 = load ptr, ptr %1051, align 8, !tbaa !134
  %1081 = getelementptr inbounds float, ptr %1080, i64 1
  store float %1079, ptr %1081, align 4, !tbaa !96
  %1082 = load float, ptr %1036, align 8, !tbaa !224
  %1083 = fadd float %870, %1058
  %1084 = load float, ptr %1038, align 8, !tbaa !225
  %1085 = load float, ptr %1040, align 4, !tbaa !226
  %1086 = load float, ptr %1042, align 8, !tbaa !227
  %1087 = load float, ptr %1044, align 4, !tbaa !229
  %1088 = load i16, ptr %1046, align 8, !tbaa !212
  %1089 = sext i16 %1088 to i32
  %1090 = tail call float @mg_HeteroTerrain(float noundef %868, float noundef %869, float noundef %1083, float noundef %1084, float noundef %1085, float noundef %1086, float noundef %1087, i32 noundef %1089) #10
  %1091 = fmul float %1082, %1090
  %1092 = load ptr, ptr %1051, align 8, !tbaa !134
  %1093 = getelementptr inbounds float, ptr %1092, i64 2
  store float %1091, ptr %1093, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %1094

1094:                                             ; preds = %1054, %1035
  %1095 = phi i32 [ 2, %1054 ], [ 0, %1035 ]
  %1096 = load float, ptr %5, align 8, !tbaa !146
  %1097 = fadd float %1096, -5.000000e-01
  %1098 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1099 = load float, ptr %1098, align 4, !tbaa !216
  %1100 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1101 = load float, ptr %1100, align 8, !tbaa !217
  %1102 = tail call float @llvm.fmuladd.f32(float %1097, float %1099, float %1101)
  %1103 = fadd float %1102, -5.000000e-01
  store float %1103, ptr %5, align 8, !tbaa !146
  %1104 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1105 = load i16, ptr %1104, align 2, !tbaa !138
  %1106 = and i16 %1105, 1024
  %1107 = icmp eq i16 %1106, 0
  br i1 %1107, label %1108, label %1495

1108:                                             ; preds = %1094
  %1109 = fcmp olt float %1103, 0.000000e+00
  br i1 %1109, label %1110, label %1111

1110:                                             ; preds = %1108
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1111:                                             ; preds = %1108
  %1112 = fcmp ogt float %1103, 1.000000e+00
  br i1 %1112, label %1113, label %1495

1113:                                             ; preds = %1111
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1114:                                             ; preds = %35
  %1115 = load float, ptr %1, align 4, !tbaa !96
  %1116 = getelementptr inbounds float, ptr %1, i64 1
  %1117 = load float, ptr %1116, align 4, !tbaa !96
  %1118 = getelementptr inbounds float, ptr %1, i64 2
  %1119 = load float, ptr %1118, align 4, !tbaa !96
  %1120 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %1121 = load float, ptr %1120, align 8, !tbaa !209
  %1122 = fdiv float 1.000000e+00, %1121
  %1123 = fmul float %1115, %1122
  %1124 = fmul float %1117, %1122
  %1125 = fmul float %1119, %1122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #10
  %1126 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 19
  %1127 = load float, ptr %1126, align 4, !tbaa !232
  %1128 = tail call float @llvm.fabs.f32(float %1127)
  %1129 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  %1130 = load float, ptr %1129, align 8, !tbaa !233
  %1131 = tail call float @llvm.fabs.f32(float %1130)
  %1132 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 21
  %1133 = load float, ptr %1132, align 4, !tbaa !234
  %1134 = tail call float @llvm.fabs.f32(float %1133)
  %1135 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 22
  %1136 = load float, ptr %1135, align 8, !tbaa !235
  %1137 = tail call float @llvm.fabs.f32(float %1136)
  %1138 = fadd float %1128, %1131
  %1139 = fadd float %1138, %1134
  %1140 = fadd float %1139, %1137
  %1141 = fcmp une float %1140, 0.000000e+00
  br i1 %1141, label %1142, label %1146

1142:                                             ; preds = %1114
  %1143 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  %1144 = load float, ptr %1143, align 8, !tbaa !224
  %1145 = fdiv float %1144, %1140
  br label %1146

1146:                                             ; preds = %1142, %1114
  %1147 = phi float [ %1145, %1142 ], [ %1140, %1114 ]
  %1148 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 23
  %1149 = load float, ptr %1148, align 4, !tbaa !236
  %1150 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 24
  %1151 = load i16, ptr %1150, align 8, !tbaa !237
  %1152 = sext i16 %1151 to i32
  call void @voronoi(float noundef %1123, float noundef %1124, float noundef %1125, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %1149, i32 noundef %1152) #10
  %1153 = load float, ptr %1126, align 4, !tbaa !232
  %1154 = load float, ptr %14, align 16, !tbaa !96
  %1155 = load float, ptr %1129, align 8, !tbaa !233
  %1156 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 1
  %1157 = load float, ptr %1156, align 4, !tbaa !96
  %1158 = fmul float %1155, %1157
  %1159 = call float @llvm.fmuladd.f32(float %1153, float %1154, float %1158)
  %1160 = load float, ptr %1132, align 4, !tbaa !234
  %1161 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 2
  %1162 = load float, ptr %1161, align 8, !tbaa !96
  %1163 = call float @llvm.fmuladd.f32(float %1160, float %1162, float %1159)
  %1164 = load float, ptr %1135, align 8, !tbaa !235
  %1165 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 3
  %1166 = load float, ptr %1165, align 4, !tbaa !96
  %1167 = call float @llvm.fmuladd.f32(float %1164, float %1166, float %1163)
  %1168 = call float @llvm.fabs.f32(float %1167)
  %1169 = fmul float %1147, %1168
  store float %1169, ptr %5, align 8, !tbaa !146
  %1170 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 25
  %1171 = load i16, ptr %1170, align 2, !tbaa !238
  %1172 = icmp eq i16 %1171, 0
  br i1 %1172, label %1259, label %1173

1173:                                             ; preds = %1146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %1174 = load float, ptr %15, align 16, !tbaa !96
  %1175 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 1
  %1176 = load float, ptr %1175, align 4, !tbaa !96
  %1177 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 2
  %1178 = load float, ptr %1177, align 8, !tbaa !96
  call void @cellNoiseV(float noundef %1174, float noundef %1176, float noundef %1178, ptr noundef nonnull %16) #10
  %1179 = load float, ptr %16, align 4, !tbaa !96
  %1180 = fmul float %1128, %1179
  %1181 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  store float %1180, ptr %1181, align 4, !tbaa !143
  %1182 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  %1183 = load float, ptr %1182, align 4, !tbaa !96
  %1184 = fmul float %1128, %1183
  %1185 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  store float %1184, ptr %1185, align 8, !tbaa !144
  %1186 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  %1187 = load float, ptr %1186, align 4, !tbaa !96
  %1188 = fmul float %1128, %1187
  %1189 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %1188, ptr %1189, align 4, !tbaa !145
  %1190 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 3
  %1191 = load float, ptr %1190, align 4, !tbaa !96
  %1192 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 4
  %1193 = load float, ptr %1192, align 16, !tbaa !96
  %1194 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 5
  %1195 = load float, ptr %1194, align 4, !tbaa !96
  call void @cellNoiseV(float noundef %1191, float noundef %1193, float noundef %1195, ptr noundef nonnull %16) #10
  %1196 = load float, ptr %16, align 4, !tbaa !96
  %1197 = load float, ptr %1181, align 4, !tbaa !143
  %1198 = call float @llvm.fmuladd.f32(float %1131, float %1196, float %1197)
  store float %1198, ptr %1181, align 4, !tbaa !143
  %1199 = load float, ptr %1182, align 4, !tbaa !96
  %1200 = load float, ptr %1185, align 8, !tbaa !144
  %1201 = call float @llvm.fmuladd.f32(float %1131, float %1199, float %1200)
  store float %1201, ptr %1185, align 8, !tbaa !144
  %1202 = load float, ptr %1186, align 4, !tbaa !96
  %1203 = load float, ptr %1189, align 4, !tbaa !145
  %1204 = call float @llvm.fmuladd.f32(float %1131, float %1202, float %1203)
  store float %1204, ptr %1189, align 4, !tbaa !145
  %1205 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 6
  %1206 = load float, ptr %1205, align 8, !tbaa !96
  %1207 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 7
  %1208 = load float, ptr %1207, align 4, !tbaa !96
  %1209 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 8
  %1210 = load float, ptr %1209, align 16, !tbaa !96
  call void @cellNoiseV(float noundef %1206, float noundef %1208, float noundef %1210, ptr noundef nonnull %16) #10
  %1211 = load float, ptr %16, align 4, !tbaa !96
  %1212 = load float, ptr %1181, align 4, !tbaa !143
  %1213 = call float @llvm.fmuladd.f32(float %1134, float %1211, float %1212)
  store float %1213, ptr %1181, align 4, !tbaa !143
  %1214 = load float, ptr %1182, align 4, !tbaa !96
  %1215 = load float, ptr %1185, align 8, !tbaa !144
  %1216 = call float @llvm.fmuladd.f32(float %1134, float %1214, float %1215)
  store float %1216, ptr %1185, align 8, !tbaa !144
  %1217 = load float, ptr %1186, align 4, !tbaa !96
  %1218 = load float, ptr %1189, align 4, !tbaa !145
  %1219 = call float @llvm.fmuladd.f32(float %1134, float %1217, float %1218)
  store float %1219, ptr %1189, align 4, !tbaa !145
  %1220 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 9
  %1221 = load float, ptr %1220, align 4, !tbaa !96
  %1222 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 10
  %1223 = load float, ptr %1222, align 8, !tbaa !96
  %1224 = getelementptr inbounds [12 x float], ptr %15, i64 0, i64 11
  %1225 = load float, ptr %1224, align 4, !tbaa !96
  call void @cellNoiseV(float noundef %1221, float noundef %1223, float noundef %1225, ptr noundef nonnull %16) #10
  %1226 = load float, ptr %16, align 4, !tbaa !96
  %1227 = load float, ptr %1181, align 4, !tbaa !143
  %1228 = call float @llvm.fmuladd.f32(float %1137, float %1226, float %1227)
  store float %1228, ptr %1181, align 4, !tbaa !143
  %1229 = load float, ptr %1182, align 4, !tbaa !96
  %1230 = load float, ptr %1185, align 8, !tbaa !144
  %1231 = call float @llvm.fmuladd.f32(float %1137, float %1229, float %1230)
  store float %1231, ptr %1185, align 8, !tbaa !144
  %1232 = load float, ptr %1186, align 4, !tbaa !96
  %1233 = load float, ptr %1189, align 4, !tbaa !145
  %1234 = call float @llvm.fmuladd.f32(float %1137, float %1232, float %1233)
  store float %1234, ptr %1189, align 4, !tbaa !145
  %1235 = load i16, ptr %1170, align 2, !tbaa !238
  %1236 = icmp sgt i16 %1235, 1
  br i1 %1236, label %1237, label %1252

1237:                                             ; preds = %1173
  %1238 = load float, ptr %1156, align 4, !tbaa !96
  %1239 = load float, ptr %14, align 16, !tbaa !96
  %1240 = fsub float %1238, %1239
  %1241 = fmul float %1240, 1.000000e+01
  %1242 = fcmp ogt float %1241, 1.000000e+00
  %1243 = select i1 %1242, float 1.000000e+00, float %1241
  %1244 = icmp eq i16 %1235, 3
  br i1 %1244, label %1245, label %1247

1245:                                             ; preds = %1237
  %1246 = load float, ptr %5, align 8, !tbaa !146
  br label %1247

1247:                                             ; preds = %1245, %1237
  %1248 = phi float [ %1246, %1245 ], [ %1147, %1237 ]
  %1249 = fmul float %1243, %1248
  %1250 = fmul float %1228, %1249
  store float %1250, ptr %1181, align 4, !tbaa !143
  %1251 = fmul float %1231, %1249
  br label %1255

1252:                                             ; preds = %1173
  %1253 = fmul float %1147, %1228
  store float %1253, ptr %1181, align 4, !tbaa !143
  %1254 = fmul float %1147, %1231
  br label %1255

1255:                                             ; preds = %1252, %1247
  %1256 = phi float [ %1254, %1252 ], [ %1251, %1247 ]
  %1257 = phi float [ %1147, %1252 ], [ %1249, %1247 ]
  store float %1256, ptr %1185, align 8, !tbaa !144
  %1258 = fmul float %1234, %1257
  store float %1258, ptr %1189, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  br label %1259

1259:                                             ; preds = %1255, %1146
  %1260 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %1261 = load ptr, ptr %1260, align 8, !tbaa !134
  %1262 = icmp eq ptr %1261, null
  br i1 %1262, label %1327, label %1263

1263:                                             ; preds = %1259
  %1264 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %1265 = load float, ptr %1264, align 8, !tbaa !213
  %1266 = load float, ptr %1120, align 8, !tbaa !209
  %1267 = fdiv float %1265, %1266
  %1268 = fadd float %1123, %1267
  %1269 = load float, ptr %1148, align 4, !tbaa !236
  %1270 = load i16, ptr %1150, align 8, !tbaa !237
  %1271 = sext i16 %1270 to i32
  call void @voronoi(float noundef %1268, float noundef %1124, float noundef %1125, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %1269, i32 noundef %1271) #10
  %1272 = load float, ptr %1126, align 4, !tbaa !232
  %1273 = load float, ptr %14, align 16, !tbaa !96
  %1274 = load float, ptr %1129, align 8, !tbaa !233
  %1275 = load float, ptr %1156, align 4, !tbaa !96
  %1276 = fmul float %1274, %1275
  %1277 = call float @llvm.fmuladd.f32(float %1272, float %1273, float %1276)
  %1278 = load float, ptr %1132, align 4, !tbaa !234
  %1279 = load float, ptr %1161, align 8, !tbaa !96
  %1280 = call float @llvm.fmuladd.f32(float %1278, float %1279, float %1277)
  %1281 = load float, ptr %1135, align 8, !tbaa !235
  %1282 = load float, ptr %1165, align 4, !tbaa !96
  %1283 = call float @llvm.fmuladd.f32(float %1281, float %1282, float %1280)
  %1284 = call float @llvm.fabs.f32(float %1283)
  %1285 = fmul float %1147, %1284
  %1286 = load ptr, ptr %1260, align 8, !tbaa !134
  store float %1285, ptr %1286, align 4, !tbaa !96
  %1287 = fadd float %1124, %1267
  %1288 = load float, ptr %1148, align 4, !tbaa !236
  %1289 = load i16, ptr %1150, align 8, !tbaa !237
  %1290 = sext i16 %1289 to i32
  call void @voronoi(float noundef %1123, float noundef %1287, float noundef %1125, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %1288, i32 noundef %1290) #10
  %1291 = load float, ptr %1126, align 4, !tbaa !232
  %1292 = load float, ptr %14, align 16, !tbaa !96
  %1293 = load float, ptr %1129, align 8, !tbaa !233
  %1294 = load float, ptr %1156, align 4, !tbaa !96
  %1295 = fmul float %1293, %1294
  %1296 = call float @llvm.fmuladd.f32(float %1291, float %1292, float %1295)
  %1297 = load float, ptr %1132, align 4, !tbaa !234
  %1298 = load float, ptr %1161, align 8, !tbaa !96
  %1299 = call float @llvm.fmuladd.f32(float %1297, float %1298, float %1296)
  %1300 = load float, ptr %1135, align 8, !tbaa !235
  %1301 = load float, ptr %1165, align 4, !tbaa !96
  %1302 = call float @llvm.fmuladd.f32(float %1300, float %1301, float %1299)
  %1303 = call float @llvm.fabs.f32(float %1302)
  %1304 = fmul float %1147, %1303
  %1305 = load ptr, ptr %1260, align 8, !tbaa !134
  %1306 = getelementptr inbounds float, ptr %1305, i64 1
  store float %1304, ptr %1306, align 4, !tbaa !96
  %1307 = fadd float %1125, %1267
  %1308 = load float, ptr %1148, align 4, !tbaa !236
  %1309 = load i16, ptr %1150, align 8, !tbaa !237
  %1310 = sext i16 %1309 to i32
  call void @voronoi(float noundef %1123, float noundef %1124, float noundef %1307, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %1308, i32 noundef %1310) #10
  %1311 = load float, ptr %1126, align 4, !tbaa !232
  %1312 = load float, ptr %14, align 16, !tbaa !96
  %1313 = load float, ptr %1129, align 8, !tbaa !233
  %1314 = load float, ptr %1156, align 4, !tbaa !96
  %1315 = fmul float %1313, %1314
  %1316 = call float @llvm.fmuladd.f32(float %1311, float %1312, float %1315)
  %1317 = load float, ptr %1132, align 4, !tbaa !234
  %1318 = load float, ptr %1161, align 8, !tbaa !96
  %1319 = call float @llvm.fmuladd.f32(float %1317, float %1318, float %1316)
  %1320 = load float, ptr %1135, align 8, !tbaa !235
  %1321 = load float, ptr %1165, align 4, !tbaa !96
  %1322 = call float @llvm.fmuladd.f32(float %1320, float %1321, float %1319)
  %1323 = call float @llvm.fabs.f32(float %1322)
  %1324 = fmul float %1147, %1323
  %1325 = load ptr, ptr %1260, align 8, !tbaa !134
  %1326 = getelementptr inbounds float, ptr %1325, i64 2
  store float %1324, ptr %1326, align 4, !tbaa !96
  call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %1327

1327:                                             ; preds = %1263, %1259
  %1328 = phi i32 [ 2, %1263 ], [ 0, %1259 ]
  %1329 = load i16, ptr %1170, align 2, !tbaa !238
  %1330 = icmp eq i16 %1329, 0
  br i1 %1330, label %1391, label %1331

1331:                                             ; preds = %1327
  %1332 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %1333 = load float, ptr %1332, align 4, !tbaa !215
  %1334 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %1335 = load float, ptr %1334, align 4, !tbaa !143
  %1336 = fadd float %1335, -5.000000e-01
  %1337 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1338 = load float, ptr %1337, align 4, !tbaa !216
  %1339 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1340 = load float, ptr %1339, align 8, !tbaa !217
  %1341 = call float @llvm.fmuladd.f32(float %1336, float %1338, float %1340)
  %1342 = fadd float %1341, -5.000000e-01
  %1343 = fmul float %1333, %1342
  store float %1343, ptr %1334, align 4, !tbaa !143
  %1344 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %1345 = load float, ptr %1344, align 8, !tbaa !218
  %1346 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %1347 = load float, ptr %1346, align 8, !tbaa !144
  %1348 = fadd float %1347, -5.000000e-01
  %1349 = call float @llvm.fmuladd.f32(float %1348, float %1338, float %1340)
  %1350 = fadd float %1349, -5.000000e-01
  %1351 = fmul float %1345, %1350
  store float %1351, ptr %1346, align 8, !tbaa !144
  %1352 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %1353 = load float, ptr %1352, align 4, !tbaa !219
  %1354 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %1355 = load float, ptr %1354, align 4, !tbaa !145
  %1356 = fadd float %1355, -5.000000e-01
  %1357 = call float @llvm.fmuladd.f32(float %1356, float %1338, float %1340)
  %1358 = fadd float %1357, -5.000000e-01
  %1359 = fmul float %1353, %1358
  store float %1359, ptr %1354, align 4, !tbaa !145
  %1360 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1361 = load i16, ptr %1360, align 2, !tbaa !138
  %1362 = and i16 %1361, 1024
  %1363 = icmp eq i16 %1362, 0
  br i1 %1363, label %1364, label %1373

1364:                                             ; preds = %1331
  %1365 = fcmp olt float %1343, 0.000000e+00
  br i1 %1365, label %1366, label %1367

1366:                                             ; preds = %1364
  store float 0.000000e+00, ptr %1334, align 4, !tbaa !143
  br label %1367

1367:                                             ; preds = %1366, %1364
  %1368 = fcmp olt float %1351, 0.000000e+00
  br i1 %1368, label %1369, label %1370

1369:                                             ; preds = %1367
  store float 0.000000e+00, ptr %1346, align 8, !tbaa !144
  br label %1370

1370:                                             ; preds = %1369, %1367
  %1371 = fcmp olt float %1359, 0.000000e+00
  br i1 %1371, label %1372, label %1373

1372:                                             ; preds = %1370
  store float 0.000000e+00, ptr %1354, align 4, !tbaa !145
  br label %1373

1373:                                             ; preds = %1372, %1370, %1331
  %1374 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %1375 = load float, ptr %1374, align 8, !tbaa !220
  %1376 = fcmp une float %1375, 1.000000e+00
  br i1 %1376, label %1377, label %1388

1377:                                             ; preds = %1373
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %1378 = load float, ptr %1334, align 4, !tbaa !143
  %1379 = load float, ptr %1346, align 8, !tbaa !144
  %1380 = load float, ptr %1354, align 4, !tbaa !145
  %1381 = getelementptr inbounds float, ptr %17, i64 1
  %1382 = getelementptr inbounds float, ptr %17, i64 2
  call void @rgb_to_hsv(float noundef %1378, float noundef %1379, float noundef %1380, ptr noundef nonnull %17, ptr noundef nonnull %1381, ptr noundef nonnull %1382) #10
  %1383 = load float, ptr %1374, align 8, !tbaa !220
  %1384 = load float, ptr %1381, align 4, !tbaa !96
  %1385 = fmul float %1383, %1384
  store float %1385, ptr %1381, align 4, !tbaa !96
  %1386 = load float, ptr %17, align 4, !tbaa !96
  %1387 = load float, ptr %1382, align 4, !tbaa !96
  call void @hsv_to_rgb(float noundef %1386, float noundef %1385, float noundef %1387, ptr noundef nonnull %1334, ptr noundef nonnull %1346, ptr noundef nonnull %1354) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  br label %1388

1388:                                             ; preds = %1377, %1373
  %1389 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %1389, align 8, !tbaa !163
  %1390 = or disjoint i32 %1328, 1
  br label %1410

1391:                                             ; preds = %1327
  %1392 = load float, ptr %5, align 8, !tbaa !146
  %1393 = fadd float %1392, -5.000000e-01
  %1394 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1395 = load float, ptr %1394, align 4, !tbaa !216
  %1396 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1397 = load float, ptr %1396, align 8, !tbaa !217
  %1398 = call float @llvm.fmuladd.f32(float %1393, float %1395, float %1397)
  %1399 = fadd float %1398, -5.000000e-01
  store float %1399, ptr %5, align 8, !tbaa !146
  %1400 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1401 = load i16, ptr %1400, align 2, !tbaa !138
  %1402 = and i16 %1401, 1024
  %1403 = icmp eq i16 %1402, 0
  br i1 %1403, label %1404, label %1410

1404:                                             ; preds = %1391
  %1405 = fcmp olt float %1399, 0.000000e+00
  br i1 %1405, label %1406, label %1407

1406:                                             ; preds = %1404
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1410

1407:                                             ; preds = %1404
  %1408 = fcmp ogt float %1399, 1.000000e+00
  br i1 %1408, label %1409, label %1410

1409:                                             ; preds = %1407
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1410

1410:                                             ; preds = %1388, %1391, %1406, %1407, %1409
  %1411 = phi i32 [ %1390, %1388 ], [ %1328, %1406 ], [ %1328, %1409 ], [ %1328, %1407 ], [ %1328, %1391 ]
  %1412 = sitofp i32 %1411 to float
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #10
  %1413 = fptosi float %1412 to i32
  br label %1495

1414:                                             ; preds = %35
  %1415 = load float, ptr %1, align 4, !tbaa !96
  %1416 = getelementptr inbounds float, ptr %1, i64 1
  %1417 = load float, ptr %1416, align 4, !tbaa !96
  %1418 = getelementptr inbounds float, ptr %1, i64 2
  %1419 = load float, ptr %1418, align 4, !tbaa !96
  %1420 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %1421 = load float, ptr %1420, align 8, !tbaa !209
  %1422 = fdiv float 1.000000e+00, %1421
  %1423 = fmul float %1415, %1422
  %1424 = fmul float %1417, %1422
  %1425 = fmul float %1419, %1422
  %1426 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 17
  %1427 = load float, ptr %1426, align 4, !tbaa !239
  %1428 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %1429 = load i16, ptr %1428, align 8, !tbaa !212
  %1430 = sext i16 %1429 to i32
  %1431 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %1432 = load i16, ptr %1431, align 2, !tbaa !221
  %1433 = sext i16 %1432 to i32
  %1434 = tail call float @mg_VLNoise(float noundef %1423, float noundef %1424, float noundef %1425, float noundef %1427, i32 noundef %1430, i32 noundef %1433) #10
  store float %1434, ptr %5, align 8, !tbaa !146
  %1435 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  %1436 = load ptr, ptr %1435, align 8, !tbaa !134
  %1437 = icmp eq ptr %1436, null
  br i1 %1437, label %1469, label %1438

1438:                                             ; preds = %1414
  %1439 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  %1440 = load float, ptr %1439, align 8, !tbaa !213
  %1441 = load float, ptr %1420, align 8, !tbaa !209
  %1442 = fdiv float %1440, %1441
  %1443 = fadd float %1423, %1442
  %1444 = load float, ptr %1426, align 4, !tbaa !239
  %1445 = load i16, ptr %1428, align 8, !tbaa !212
  %1446 = sext i16 %1445 to i32
  %1447 = load i16, ptr %1431, align 2, !tbaa !221
  %1448 = sext i16 %1447 to i32
  %1449 = tail call float @mg_VLNoise(float noundef %1443, float noundef %1424, float noundef %1425, float noundef %1444, i32 noundef %1446, i32 noundef %1448) #10
  %1450 = load ptr, ptr %1435, align 8, !tbaa !134
  store float %1449, ptr %1450, align 4, !tbaa !96
  %1451 = fadd float %1424, %1442
  %1452 = load float, ptr %1426, align 4, !tbaa !239
  %1453 = load i16, ptr %1428, align 8, !tbaa !212
  %1454 = sext i16 %1453 to i32
  %1455 = load i16, ptr %1431, align 2, !tbaa !221
  %1456 = sext i16 %1455 to i32
  %1457 = tail call float @mg_VLNoise(float noundef %1423, float noundef %1451, float noundef %1425, float noundef %1452, i32 noundef %1454, i32 noundef %1456) #10
  %1458 = load ptr, ptr %1435, align 8, !tbaa !134
  %1459 = getelementptr inbounds float, ptr %1458, i64 1
  store float %1457, ptr %1459, align 4, !tbaa !96
  %1460 = fadd float %1425, %1442
  %1461 = load float, ptr %1426, align 4, !tbaa !239
  %1462 = load i16, ptr %1428, align 8, !tbaa !212
  %1463 = sext i16 %1462 to i32
  %1464 = load i16, ptr %1431, align 2, !tbaa !221
  %1465 = sext i16 %1464 to i32
  %1466 = tail call float @mg_VLNoise(float noundef %1423, float noundef %1424, float noundef %1460, float noundef %1461, i32 noundef %1463, i32 noundef %1465) #10
  %1467 = load ptr, ptr %1435, align 8, !tbaa !134
  %1468 = getelementptr inbounds float, ptr %1467, i64 2
  store float %1466, ptr %1468, align 4, !tbaa !96
  tail call fastcc void @tex_normal_derivate(ptr noundef %0, ptr noundef nonnull %5)
  br label %1469

1469:                                             ; preds = %1438, %1414
  %1470 = phi i32 [ 2, %1438 ], [ 0, %1414 ]
  %1471 = load float, ptr %5, align 8, !tbaa !146
  %1472 = fadd float %1471, -5.000000e-01
  %1473 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1474 = load float, ptr %1473, align 4, !tbaa !216
  %1475 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1476 = load float, ptr %1475, align 8, !tbaa !217
  %1477 = tail call float @llvm.fmuladd.f32(float %1472, float %1474, float %1476)
  %1478 = fadd float %1477, -5.000000e-01
  store float %1478, ptr %5, align 8, !tbaa !146
  %1479 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1480 = load i16, ptr %1479, align 2, !tbaa !138
  %1481 = and i16 %1480, 1024
  %1482 = icmp eq i16 %1481, 0
  br i1 %1482, label %1483, label %1495

1483:                                             ; preds = %1469
  %1484 = fcmp olt float %1478, 0.000000e+00
  br i1 %1484, label %1485, label %1486

1485:                                             ; preds = %1483
  store float 0.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1486:                                             ; preds = %1483
  %1487 = fcmp ogt float %1478, 1.000000e+00
  br i1 %1487, label %1488, label %1495

1488:                                             ; preds = %1486
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %1495

1489:                                             ; preds = %35
  %1490 = tail call i32 @pointdensitytex(ptr noundef %0, ptr noundef %1, ptr noundef %5) #10
  br label %1495

1491:                                             ; preds = %35
  %1492 = tail call i32 @voxeldatatex(ptr noundef %0, ptr noundef %1, ptr noundef %5) #10
  br label %1495

1493:                                             ; preds = %35
  %1494 = tail call i32 @ocean_texture(ptr noundef %0, ptr noundef %1, ptr noundef %5) #10
  br label %1495

1495:                                             ; preds = %1113, %1111, %1110, %1094, %1034, %1032, %1031, %1015, %948, %946, %945, %929, %1488, %1486, %1485, %1469, %842, %840, %839, %821, %797, %794, %710, %708, %707, %693, %461, %459, %458, %442, %271, %269, %268, %252, %216, %214, %213, %199, %196, %633, %857, %1410, %1489, %1491, %1493, %35, %856, %851, %859, %29
  %1496 = phi i32 [ %34, %29 ], [ 0, %35 ], [ %1494, %1493 ], [ %1492, %1491 ], [ %1490, %1489 ], [ %1413, %1410 ], [ 0, %859 ], [ %858, %857 ], [ %852, %856 ], [ %852, %851 ], [ 1, %633 ], [ %198, %196 ], [ %111, %213 ], [ %111, %216 ], [ %111, %214 ], [ %111, %199 ], [ %253, %252 ], [ %253, %268 ], [ %253, %269 ], [ %253, %271 ], [ %443, %442 ], [ %443, %458 ], [ %443, %459 ], [ %443, %461 ], [ 0, %693 ], [ 0, %707 ], [ 0, %708 ], [ 0, %710 ], [ %788, %794 ], [ %788, %797 ], [ 0, %821 ], [ 0, %839 ], [ 0, %840 ], [ 0, %842 ], [ %1470, %1469 ], [ %1470, %1485 ], [ %1470, %1486 ], [ %1470, %1488 ], [ %930, %929 ], [ %930, %945 ], [ %930, %946 ], [ %930, %948 ], [ %1016, %1015 ], [ %1016, %1031 ], [ %1016, %1032 ], [ %1016, %1034 ], [ %1095, %1094 ], [ %1095, %1110 ], [ %1095, %1111 ], [ %1095, %1113 ]
  %1497 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1498 = load i16, ptr %1497, align 2, !tbaa !138
  %1499 = and i16 %1498, 1
  %1500 = icmp eq i16 %1499, 0
  br i1 %1500, label %1522, label %1501

1501:                                             ; preds = %1495
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #10
  %1502 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %1503 = load ptr, ptr %1502, align 8, !tbaa !240
  %1504 = load float, ptr %5, align 8, !tbaa !146
  %1505 = call zeroext i8 @do_colorband(ptr noundef %1503, float noundef %1504, ptr noundef nonnull %20) #10
  %1506 = icmp eq i8 %1505, 0
  br i1 %1506, label %1520, label %1507

1507:                                             ; preds = %1501
  store i32 1, ptr %21, align 4, !tbaa !137
  %1508 = load float, ptr %20, align 16, !tbaa !96
  %1509 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  store float %1508, ptr %1509, align 4, !tbaa !143
  %1510 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 1
  %1511 = load float, ptr %1510, align 4, !tbaa !96
  %1512 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  store float %1511, ptr %1512, align 8, !tbaa !144
  %1513 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 2
  %1514 = load float, ptr %1513, align 8, !tbaa !96
  %1515 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %1514, ptr %1515, align 4, !tbaa !145
  %1516 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3
  %1517 = load float, ptr %1516, align 4, !tbaa !96
  %1518 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float %1517, ptr %1518, align 8, !tbaa !163
  %1519 = or i32 %1496, 1
  br label %1520

1520:                                             ; preds = %1507, %1501
  %1521 = phi i32 [ %1519, %1507 ], [ %1496, %1501 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #10
  br label %1522

1522:                                             ; preds = %1495, %1520, %38
  %1523 = phi i32 [ 0, %38 ], [ %1521, %1520 ], [ %1496, %1495 ]
  ret i32 %1523
}

; Function Attrs: nounwind uwtable
define dso_local void @do_halo_tex(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.TexResult, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %12 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %13 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %334

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 29
  %18 = load ptr, ptr %17, align 8, !tbaa !241
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 73
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %334

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %334, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 6
  store ptr null, ptr %30, align 8, !tbaa !134
  %31 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 5
  %32 = load float, ptr %31, align 8, !tbaa !243
  %33 = fdiv float %1, %32
  store float %33, ptr %6, align 4, !tbaa !96
  %34 = fdiv float %2, %32
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !96
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0.000000e+00, ptr %36, align 4, !tbaa !96
  %37 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 90
  %38 = load i16, ptr %37, align 4, !tbaa !244
  %39 = and i16 %38, 512
  %40 = zext nneg i16 %39 to i32
  %41 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 7
  %42 = load i8, ptr %41, align 8, !tbaa !196
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12
  %45 = load float, ptr %44, align 8, !tbaa !96
  br i1 %43, label %55, label %46

46:                                               ; preds = %29
  %47 = zext i8 %42 to i64
  %48 = add nuw nsw i64 %47, 4294967295
  %49 = and i64 %48, 4294967295
  %50 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !96
  %52 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11
  %53 = load float, ptr %52, align 4, !tbaa !96
  %54 = fadd float %51, %53
  br label %58

55:                                               ; preds = %29
  %56 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11
  %57 = load float, ptr %56, align 4, !tbaa !96
  br label %58

58:                                               ; preds = %55, %46
  %59 = phi float [ %57, %55 ], [ %54, %46 ]
  %60 = fmul float %45, %59
  store float %60, ptr %6, align 4, !tbaa !96
  %61 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 8
  %62 = load i8, ptr %61, align 1, !tbaa !197
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !96
  br i1 %63, label %75, label %66

66:                                               ; preds = %58
  %67 = zext i8 %62 to i64
  %68 = add nuw nsw i64 %67, 4294967295
  %69 = and i64 %68, 4294967295
  %70 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !96
  %72 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !96
  %74 = fadd float %71, %73
  br label %78

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !96
  br label %78

78:                                               ; preds = %75, %66
  %79 = phi float [ %77, %75 ], [ %74, %66 ]
  %80 = fmul float %65, %79
  store float %80, ptr %35, align 4, !tbaa !96
  %81 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 9
  %82 = load i8, ptr %81, align 2, !tbaa !198
  %83 = icmp eq i8 %82, 0
  %84 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12, i64 2
  %85 = load float, ptr %84, align 8, !tbaa !96
  br i1 %83, label %95, label %86

86:                                               ; preds = %78
  %87 = zext i8 %82 to i64
  %88 = add nuw nsw i64 %87, 4294967295
  %89 = and i64 %88, 4294967295
  %90 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !96
  %92 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !96
  %94 = fadd float %91, %93
  br label %98

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 11, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !96
  br label %98

98:                                               ; preds = %95, %86
  %99 = phi float [ %97, %95 ], [ %94, %86 ]
  %100 = fmul float %85, %99
  store float %100, ptr %36, align 4, !tbaa !96
  %101 = icmp eq i16 %39, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = fdiv float 1.000000e+00, %32
  br i1 %43, label %108, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12
  %106 = load float, ptr %105, align 8, !tbaa !96
  %107 = fmul float %103, %106
  store float %107, ptr %7, align 4, !tbaa !96
  store float %107, ptr %10, align 4, !tbaa !96
  br label %109

108:                                              ; preds = %102
  store float 0.000000e+00, ptr %10, align 4, !tbaa !96
  store float 0.000000e+00, ptr %7, align 4, !tbaa !96
  br label %109

109:                                              ; preds = %108, %104
  br i1 %63, label %114, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !96
  %113 = fmul float %103, %112
  br label %114

114:                                              ; preds = %109, %110
  %115 = phi float [ %113, %110 ], [ 0.000000e+00, %109 ]
  %116 = phi ptr [ %9, %110 ], [ %12, %109 ]
  %117 = phi ptr [ %11, %110 ], [ %8, %109 ]
  store float %115, ptr %116, align 4, !tbaa !96
  store float %115, ptr %117, align 4, !tbaa !96
  %118 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %119 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %120 = select i1 %83, ptr %118, ptr %119
  store float 0.000000e+00, ptr %120, align 4, !tbaa !96
  %121 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %122 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %123 = select i1 %83, ptr %121, ptr %122
  store float 0.000000e+00, ptr %123, align 4, !tbaa !96
  br label %124

124:                                              ; preds = %114, %98
  %125 = getelementptr inbounds %struct.Tex, ptr %27, i64 0, i32 32
  %126 = load i16, ptr %125, align 8, !tbaa !63
  %127 = icmp eq i16 %126, 8
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  call fastcc void @do_2d_mapping(ptr noundef %20, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %10)
  br label %129

129:                                              ; preds = %128, %124
  %130 = load ptr, ptr %26, align 8, !tbaa !93
  %131 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 19
  %132 = load i16, ptr %131, align 2, !tbaa !83
  %133 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 30
  %134 = load ptr, ptr %133, align 8, !tbaa !245
  %135 = call fastcc i32 @multitex(ptr noundef %130, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef %40, ptr noundef nonnull %5, i16 noundef signext 0, i16 noundef signext %132, ptr noundef %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 14
  %139 = load i16, ptr %138, align 8, !tbaa !106
  %140 = and i16 %139, 1
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %144 = load float, ptr %143, align 4, !tbaa !96
  %145 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %146 = load float, ptr %145, align 8, !tbaa !96
  %147 = fmul float %146, 0x3FDCCCCCC0000000
  %148 = call float @llvm.fmuladd.f32(float %144, float 0x3FD6666660000000, float %147)
  %149 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %150 = load float, ptr %149, align 4, !tbaa !96
  %151 = call float @llvm.fmuladd.f32(float %150, float 0x3FC99999A0000000, float %148)
  store float %151, ptr %5, align 8, !tbaa !146
  br label %152

152:                                              ; preds = %142, %137, %129
  %153 = phi i1 [ true, %142 ], [ false, %137 ], [ true, %129 ]
  %154 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 14
  %155 = load i16, ptr %154, align 8, !tbaa !106
  %156 = and i16 %155, 4
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %152
  br i1 %153, label %169, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %161 = load float, ptr %160, align 4, !tbaa !143
  %162 = fsub float 1.000000e+00, %161
  store float %162, ptr %160, align 4, !tbaa !143
  %163 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %164 = load float, ptr %163, align 8, !tbaa !144
  %165 = fsub float 1.000000e+00, %164
  store float %165, ptr %163, align 8, !tbaa !144
  %166 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %167 = load float, ptr %166, align 4, !tbaa !145
  %168 = fsub float 1.000000e+00, %167
  store float %168, ptr %166, align 4, !tbaa !145
  br label %172

169:                                              ; preds = %158
  %170 = load float, ptr %5, align 8, !tbaa !146
  %171 = fsub float 1.000000e+00, %170
  store float %171, ptr %5, align 8, !tbaa !146
  br label %172

172:                                              ; preds = %159, %169, %152
  %173 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !87
  %175 = zext i16 %174 to i32
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %307, label %178

178:                                              ; preds = %172
  br i1 %153, label %179, label %189

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 22
  %181 = load float, ptr %180, align 4, !tbaa !246
  %182 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  store float %181, ptr %182, align 4, !tbaa !143
  %183 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 23
  %184 = load float, ptr %183, align 8, !tbaa !247
  %185 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  store float %184, ptr %185, align 8, !tbaa !144
  %186 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 24
  %187 = load float, ptr %186, align 4, !tbaa !248
  %188 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  store float %187, ptr %188, align 4, !tbaa !145
  br label %196

189:                                              ; preds = %178
  %190 = and i32 %175, 128
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  store float 1.000000e+00, ptr %5, align 8, !tbaa !146
  br label %196

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %195 = load float, ptr %194, align 8, !tbaa !163
  store float %195, ptr %5, align 8, !tbaa !146
  br label %196

196:                                              ; preds = %192, %193, %179
  %197 = load ptr, ptr %26, align 8, !tbaa !93
  %198 = getelementptr inbounds %struct.Tex, ptr %197, i64 0, i32 32
  %199 = load i16, ptr %198, align 8, !tbaa !63
  %200 = icmp eq i16 %199, 8
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.Tex, ptr %197, i64 0, i32 54
  %203 = load ptr, ptr %202, align 8, !tbaa !60
  %204 = getelementptr inbounds %struct.Tex, ptr %197, i64 0, i32 51
  %205 = load ptr, ptr %133, align 8, !tbaa !245
  %206 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %203, ptr noundef nonnull %204, ptr noundef %205) #10
  %207 = icmp eq ptr %206, null
  br i1 %207, label %219, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.ImBuf, ptr %206, i64 0, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !88
  %211 = icmp eq ptr %210, null
  %212 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %213 = icmp ne i8 %212, 0
  %214 = select i1 %211, i1 %213, i1 false
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %217 = getelementptr inbounds %struct.ImBuf, ptr %206, i64 0, i32 34
  %218 = load ptr, ptr %217, align 8, !tbaa !91
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %216, ptr noundef %218) #10
  br label %219

219:                                              ; preds = %215, %208, %201
  %220 = load ptr, ptr %133, align 8, !tbaa !245
  call void @BKE_image_pool_release_ibuf(ptr noundef %203, ptr noundef %206, ptr noundef %220) #10
  br label %221

221:                                              ; preds = %219, %196
  %222 = load float, ptr %5, align 8, !tbaa !146
  %223 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 28
  %224 = load float, ptr %223, align 4, !tbaa !165
  %225 = fmul float %222, %224
  %226 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 3
  %227 = load i16, ptr %226, align 2, !tbaa !166
  %228 = icmp eq i16 %227, 1
  %229 = select i1 %228, float %224, float %225
  %230 = fsub float 1.000000e+00, %229
  %231 = icmp eq i16 %227, 3
  %232 = fneg float %225
  %233 = select i1 %231, float %232, float %225
  %234 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %235 = load float, ptr %234, align 4, !tbaa !143
  switch i16 %227, label %274 [
    i16 0, label %236
    i16 1, label %255
  ]

236:                                              ; preds = %221
  %237 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %238 = load float, ptr %237, align 4, !tbaa !249
  %239 = fmul float %230, %238
  %240 = call float @llvm.fmuladd.f32(float %233, float %235, float %239)
  store float %240, ptr %3, align 4, !tbaa !96
  %241 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %242 = load float, ptr %241, align 8, !tbaa !144
  %243 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %244 = load float, ptr %243, align 8, !tbaa !250
  %245 = fmul float %230, %244
  %246 = call float @llvm.fmuladd.f32(float %233, float %242, float %245)
  %247 = getelementptr inbounds float, ptr %3, i64 1
  store float %246, ptr %247, align 4, !tbaa !96
  %248 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %249 = load float, ptr %248, align 4, !tbaa !145
  %250 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %251 = load float, ptr %250, align 4, !tbaa !251
  %252 = fmul float %230, %251
  %253 = call float @llvm.fmuladd.f32(float %233, float %249, float %252)
  %254 = getelementptr inbounds float, ptr %3, i64 2
  store float %253, ptr %254, align 4, !tbaa !96
  br label %307

255:                                              ; preds = %221
  %256 = call float @llvm.fmuladd.f32(float %233, float %235, float %230)
  %257 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %258 = load float, ptr %257, align 4, !tbaa !249
  %259 = fmul float %256, %258
  store float %259, ptr %3, align 4, !tbaa !96
  %260 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %261 = load float, ptr %260, align 8, !tbaa !144
  %262 = call float @llvm.fmuladd.f32(float %233, float %261, float %230)
  %263 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %264 = load float, ptr %263, align 8, !tbaa !250
  %265 = fmul float %262, %264
  %266 = getelementptr inbounds float, ptr %3, i64 1
  store float %265, ptr %266, align 4, !tbaa !96
  %267 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %268 = load float, ptr %267, align 4, !tbaa !145
  %269 = call float @llvm.fmuladd.f32(float %233, float %268, float %230)
  %270 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %271 = load float, ptr %270, align 4, !tbaa !251
  %272 = fmul float %269, %271
  %273 = getelementptr inbounds float, ptr %3, i64 2
  store float %272, ptr %273, align 4, !tbaa !96
  br label %307

274:                                              ; preds = %221
  %275 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 14
  %276 = load float, ptr %275, align 4, !tbaa !249
  %277 = call float @llvm.fmuladd.f32(float %233, float %235, float %276)
  store float %277, ptr %3, align 4, !tbaa !96
  %278 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %279 = load float, ptr %278, align 8, !tbaa !144
  %280 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 13
  %281 = load float, ptr %280, align 8, !tbaa !250
  %282 = call float @llvm.fmuladd.f32(float %233, float %279, float %281)
  %283 = getelementptr inbounds float, ptr %3, i64 1
  store float %282, ptr %283, align 4, !tbaa !96
  %284 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %285 = load float, ptr %284, align 4, !tbaa !145
  %286 = getelementptr inbounds %struct.HaloRen, ptr %0, i64 0, i32 12
  %287 = load float, ptr %286, align 4, !tbaa !251
  %288 = call float @llvm.fmuladd.f32(float %233, float %285, float %287)
  %289 = getelementptr inbounds float, ptr %3, i64 2
  store float %288, ptr %289, align 4, !tbaa !96
  %290 = fcmp olt float %277, 0.000000e+00
  br i1 %290, label %293, label %291

291:                                              ; preds = %274
  %292 = fcmp ogt float %277, 1.000000e+00
  br i1 %292, label %293, label %295

293:                                              ; preds = %291, %274
  %294 = phi float [ 0.000000e+00, %274 ], [ 1.000000e+00, %291 ]
  store float %294, ptr %3, align 4, !tbaa !96
  br label %295

295:                                              ; preds = %293, %291
  %296 = fcmp olt float %282, 0.000000e+00
  br i1 %296, label %299, label %297

297:                                              ; preds = %295
  %298 = fcmp ogt float %282, 1.000000e+00
  br i1 %298, label %299, label %301

299:                                              ; preds = %297, %295
  %300 = phi float [ 0.000000e+00, %295 ], [ 1.000000e+00, %297 ]
  store float %300, ptr %283, align 4, !tbaa !96
  br label %301

301:                                              ; preds = %299, %297
  %302 = fcmp olt float %288, 0.000000e+00
  br i1 %302, label %303, label %304

303:                                              ; preds = %301
  store float 0.000000e+00, ptr %289, align 4, !tbaa !96
  br label %307

304:                                              ; preds = %301
  %305 = fcmp ogt float %288, 1.000000e+00
  br i1 %305, label %306, label %307

306:                                              ; preds = %304
  store float 1.000000e+00, ptr %289, align 4, !tbaa !96
  br label %307

307:                                              ; preds = %236, %303, %306, %304, %255, %172
  %308 = load i16, ptr %173, align 2, !tbaa !87
  %309 = and i16 %308, 128
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %334, label %311

311:                                              ; preds = %307
  br i1 %153, label %329, label %312

312:                                              ; preds = %311
  %313 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %314 = load i32, ptr %313, align 4, !tbaa !137
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %318 = load float, ptr %317, align 8, !tbaa !163
  store float %318, ptr %5, align 8, !tbaa !146
  br label %329

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %321 = load float, ptr %320, align 4, !tbaa !96
  %322 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %323 = load float, ptr %322, align 8, !tbaa !96
  %324 = fmul float %323, 0x3FDCCCCCC0000000
  %325 = call float @llvm.fmuladd.f32(float %321, float 0x3FD6666660000000, float %324)
  %326 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %327 = load float, ptr %326, align 4, !tbaa !96
  %328 = call float @llvm.fmuladd.f32(float %327, float 0x3FC99999A0000000, float %325)
  store float %328, ptr %5, align 8, !tbaa !146
  br label %329

329:                                              ; preds = %316, %319, %311
  %330 = load float, ptr %5, align 8, !tbaa !146
  %331 = getelementptr inbounds float, ptr %3, i64 3
  %332 = load float, ptr %331, align 4, !tbaa !96
  %333 = fmul float %330, %332
  store float %333, ptr %331, align 4, !tbaa !96
  br label %334

334:                                              ; preds = %307, %329, %25, %16, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_2d_mapping(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [8 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #10
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 10
  %15 = load i8, ptr %14, align 1, !tbaa !92
  %16 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = load i16, ptr %0, align 8, !tbaa !95
  %21 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !252
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %231

23:                                               ; preds = %6
  %24 = load float, ptr %1, align 4, !tbaa !96
  switch i8 %15, label %42 [
    i8 0, label %25
    i8 2, label %32
    i8 3, label %37
  ]

25:                                               ; preds = %23
  %26 = fadd float %24, 1.000000e+00
  %27 = fmul float %26, 5.000000e-01
  store float %27, ptr %11, align 4, !tbaa !96
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !96
  %30 = fadd float %29, 1.000000e+00
  %31 = fmul float %30, 5.000000e-01
  store float %31, ptr %12, align 4, !tbaa !96
  br label %133

32:                                               ; preds = %23
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !96
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !96
  call void @map_to_tube(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %24, float noundef %34, float noundef %36) #10
  br label %133

37:                                               ; preds = %23
  %38 = getelementptr inbounds float, ptr %1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !96
  %40 = getelementptr inbounds float, ptr %1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !96
  call void @map_to_sphere(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %24, float noundef %39, float noundef %41) #10
  br label %133

42:                                               ; preds = %23
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !96
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !96
  switch i16 %20, label %131 [
    i16 32, label %47
    i16 8, label %88
  ]

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %48 = icmp eq ptr %3, null
  br i1 %48, label %87, label %49

49:                                               ; preds = %47
  %50 = load float, ptr %3, align 4, !tbaa !96
  store float %50, ptr %10, align 4, !tbaa !96
  %51 = getelementptr inbounds float, ptr %3, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !96
  %53 = getelementptr inbounds float, ptr %10, i64 1
  store float %52, ptr %53, align 4, !tbaa !96
  %54 = getelementptr inbounds float, ptr %3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !96
  %56 = getelementptr inbounds float, ptr %10, i64 2
  store float %55, ptr %56, align 4, !tbaa !96
  %57 = icmp eq ptr %19, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %59, ptr noundef nonnull %10) #10
  br label %60

60:                                               ; preds = %58, %49
  %61 = load float, ptr %10, align 4, !tbaa !96
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = load float, ptr %53, align 4, !tbaa !96
  %64 = call float @llvm.fabs.f32(float %63)
  %65 = load float, ptr %56, align 4, !tbaa !96
  %66 = call float @llvm.fabs.f32(float %65)
  %67 = fcmp ult float %66, %62
  %68 = fcmp ult float %66, %64
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = fadd float %24, 1.000000e+00
  %72 = fmul float %71, 5.000000e-01
  store float %72, ptr %11, align 4, !tbaa !96
  %73 = fadd float %44, 1.000000e+00
  %74 = fmul float %73, 5.000000e-01
  store float %74, ptr %12, align 4, !tbaa !96
  br label %87

75:                                               ; preds = %60
  %76 = fcmp ult float %64, %62
  %77 = fcmp ult float %64, %66
  %78 = or i1 %76, %77
  %79 = fadd float %46, 1.000000e+00
  %80 = fmul float %79, 5.000000e-01
  br i1 %78, label %84, label %81

81:                                               ; preds = %75
  %82 = fadd float %24, 1.000000e+00
  %83 = fmul float %82, 5.000000e-01
  store float %83, ptr %11, align 4, !tbaa !96
  store float %80, ptr %12, align 4, !tbaa !96
  br label %87

84:                                               ; preds = %75
  %85 = fadd float %44, 1.000000e+00
  %86 = fmul float %85, 5.000000e-01
  store float %86, ptr %11, align 4, !tbaa !96
  store float %80, ptr %12, align 4, !tbaa !96
  br label %87

87:                                               ; preds = %47, %70, %81, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %133

88:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %89 = icmp eq ptr %3, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  store float %24, ptr %9, align 4, !tbaa !96
  %91 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %44, ptr %91, align 4, !tbaa !96
  %92 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %46, ptr %92, align 4, !tbaa !96
  br label %101

93:                                               ; preds = %88
  %94 = load float, ptr %3, align 4, !tbaa !96
  store float %94, ptr %9, align 4, !tbaa !96
  %95 = getelementptr inbounds float, ptr %3, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !96
  %97 = getelementptr inbounds float, ptr %9, i64 1
  store float %96, ptr %97, align 4, !tbaa !96
  %98 = getelementptr inbounds float, ptr %3, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !96
  %100 = getelementptr inbounds float, ptr %9, i64 2
  store float %99, ptr %100, align 4, !tbaa !96
  br label %101

101:                                              ; preds = %93, %90
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %9) #10
  %102 = load float, ptr %9, align 4, !tbaa !96
  %103 = call float @llvm.fabs.f32(float %102)
  %104 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !96
  %106 = call float @llvm.fabs.f32(float %105)
  %107 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !96
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = fcmp ult float %109, %103
  %111 = fcmp ult float %109, %106
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %101
  %114 = fadd float %24, 1.000000e+00
  %115 = fmul float %114, 5.000000e-01
  store float %115, ptr %11, align 4, !tbaa !96
  %116 = fadd float %44, 1.000000e+00
  %117 = fmul float %116, 5.000000e-01
  store float %117, ptr %12, align 4, !tbaa !96
  br label %130

118:                                              ; preds = %101
  %119 = fcmp ult float %106, %103
  %120 = fcmp ult float %106, %109
  %121 = or i1 %119, %120
  %122 = fadd float %46, 1.000000e+00
  %123 = fmul float %122, 5.000000e-01
  br i1 %121, label %127, label %124

124:                                              ; preds = %118
  %125 = fadd float %24, 1.000000e+00
  %126 = fmul float %125, 5.000000e-01
  store float %126, ptr %11, align 4, !tbaa !96
  store float %123, ptr %12, align 4, !tbaa !96
  br label %130

127:                                              ; preds = %118
  %128 = fadd float %44, 1.000000e+00
  %129 = fmul float %128, 5.000000e-01
  store float %129, ptr %11, align 4, !tbaa !96
  store float %123, ptr %12, align 4, !tbaa !96
  br label %130

130:                                              ; preds = %113, %124, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %133

131:                                              ; preds = %42
  %132 = call fastcc i32 @cubemap(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, float noundef %24, float noundef %44, float noundef %46, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %133

133:                                              ; preds = %32, %87, %131, %130, %37, %25
  %134 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 42
  %135 = load i16, ptr %134, align 8, !tbaa !65
  %136 = icmp eq i16 %135, 3
  br i1 %136, label %137, label %203

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 40
  %139 = load i16, ptr %138, align 4, !tbaa !253
  %140 = icmp sgt i16 %139, 1
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = sitofp i16 %139 to float
  %143 = load float, ptr %11, align 4, !tbaa !96
  %144 = fmul float %143, %142
  store float %144, ptr %11, align 4, !tbaa !96
  %145 = fcmp ogt float %144, 1.000000e+00
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = fptosi float %144 to i32
  %148 = sitofp i32 %147 to float
  %149 = fsub float %144, %148
  store float %149, ptr %11, align 4, !tbaa !96
  br label %157

150:                                              ; preds = %141
  %151 = fcmp olt float %144, 0.000000e+00
  br i1 %151, label %152, label %157

152:                                              ; preds = %150
  %153 = fptosi float %144 to i32
  %154 = sub nsw i32 1, %153
  %155 = sitofp i32 %154 to float
  %156 = fadd float %144, %155
  store float %156, ptr %11, align 4, !tbaa !96
  br label %157

157:                                              ; preds = %150, %152, %146
  %158 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 31
  %159 = load i16, ptr %158, align 2, !tbaa !138
  %160 = and i16 %159, 128
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = call float @llvm.floor.f32(float %144)
  %164 = fptosi float %163 to i32
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load float, ptr %11, align 4, !tbaa !96
  %169 = fsub float 1.000000e+00, %168
  store float %169, ptr %11, align 4, !tbaa !96
  br label %170

170:                                              ; preds = %157, %167, %162, %137
  %171 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 41
  %172 = load i16, ptr %171, align 2, !tbaa !254
  %173 = icmp sgt i16 %172, 1
  br i1 %173, label %174, label %203

174:                                              ; preds = %170
  %175 = sitofp i16 %172 to float
  %176 = load float, ptr %12, align 4, !tbaa !96
  %177 = fmul float %176, %175
  store float %177, ptr %12, align 4, !tbaa !96
  %178 = fcmp ogt float %177, 1.000000e+00
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = fptosi float %177 to i32
  %181 = sitofp i32 %180 to float
  %182 = fsub float %177, %181
  store float %182, ptr %12, align 4, !tbaa !96
  br label %190

183:                                              ; preds = %174
  %184 = fcmp olt float %177, 0.000000e+00
  br i1 %184, label %185, label %190

185:                                              ; preds = %183
  %186 = fptosi float %177 to i32
  %187 = sub nsw i32 1, %186
  %188 = sitofp i32 %187 to float
  %189 = fadd float %177, %188
  store float %189, ptr %12, align 4, !tbaa !96
  br label %190

190:                                              ; preds = %183, %185, %179
  %191 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 31
  %192 = load i16, ptr %191, align 2, !tbaa !138
  %193 = and i16 %192, 256
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %190
  %196 = call float @llvm.floor.f32(float %177)
  %197 = fptosi float %196 to i32
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = load float, ptr %12, align 4, !tbaa !96
  %202 = fsub float 1.000000e+00, %201
  store float %202, ptr %12, align 4, !tbaa !96
  br label %203

203:                                              ; preds = %190, %200, %195, %170, %133
  %204 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 34
  %205 = load float, ptr %204, align 4, !tbaa !255
  %206 = fcmp une float %205, 0.000000e+00
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 36
  %209 = load float, ptr %208, align 4, !tbaa !256
  %210 = fcmp une float %209, 1.000000e+00
  br i1 %210, label %211, label %217

211:                                              ; preds = %207, %203
  %212 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 36
  %213 = load float, ptr %212, align 4, !tbaa !256
  %214 = fsub float %213, %205
  %215 = load float, ptr %11, align 4, !tbaa !96
  %216 = call float @llvm.fmuladd.f32(float %215, float %214, float %205)
  store float %216, ptr %11, align 4, !tbaa !96
  br label %217

217:                                              ; preds = %211, %207
  %218 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 35
  %219 = load float, ptr %218, align 8, !tbaa !257
  %220 = fcmp une float %219, 0.000000e+00
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 37
  %223 = load float, ptr %222, align 8, !tbaa !258
  %224 = fcmp une float %223, 1.000000e+00
  br i1 %224, label %225, label %641

225:                                              ; preds = %221, %217
  %226 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 37
  %227 = load float, ptr %226, align 8, !tbaa !258
  %228 = fsub float %227, %219
  %229 = load float, ptr %12, align 4, !tbaa !96
  %230 = call float @llvm.fmuladd.f32(float %229, float %228, float %219)
  store float %230, ptr %12, align 4, !tbaa !96
  br label %641

231:                                              ; preds = %6
  %232 = icmp eq i8 %15, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %231
  %234 = load float, ptr %1, align 4, !tbaa !96
  %235 = fadd float %234, 1.000000e+00
  %236 = fmul float %235, 5.000000e-01
  store float %236, ptr %11, align 4, !tbaa !96
  %237 = getelementptr inbounds float, ptr %1, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !96
  %239 = fadd float %238, 1.000000e+00
  %240 = fmul float %239, 5.000000e-01
  store float %240, ptr %12, align 4, !tbaa !96
  %241 = load float, ptr %4, align 4, !tbaa !96
  %242 = fmul float %241, 5.000000e-01
  store float %242, ptr %4, align 4, !tbaa !96
  %243 = getelementptr inbounds float, ptr %4, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !96
  %245 = fmul float %244, 5.000000e-01
  store float %245, ptr %243, align 4, !tbaa !96
  %246 = getelementptr inbounds float, ptr %4, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !96
  %248 = fmul float %247, 5.000000e-01
  store float %248, ptr %246, align 4, !tbaa !96
  %249 = load float, ptr %5, align 4, !tbaa !96
  %250 = fmul float %249, 5.000000e-01
  store float %250, ptr %5, align 4, !tbaa !96
  %251 = getelementptr inbounds float, ptr %5, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !96
  %253 = fmul float %252, 5.000000e-01
  store float %253, ptr %251, align 4, !tbaa !96
  %254 = getelementptr inbounds float, ptr %5, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !96
  %256 = fmul float %255, 5.000000e-01
  store float %256, ptr %254, align 4, !tbaa !96
  br label %500

257:                                              ; preds = %231
  %258 = icmp eq i8 %15, 2
  %259 = and i8 %15, -2
  %260 = icmp eq i8 %259, 2
  br i1 %260, label %261, label %349

261:                                              ; preds = %257
  %262 = getelementptr inbounds float, ptr %1, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !96
  %264 = fcmp ugt float %263, 0.000000e+00
  br i1 %264, label %285, label %265

265:                                              ; preds = %261
  %266 = load float, ptr %1, align 4, !tbaa !96
  %267 = load float, ptr %4, align 4, !tbaa !96
  %268 = fadd float %266, %267
  store float %268, ptr %11, align 4, !tbaa !96
  %269 = load float, ptr %5, align 4, !tbaa !96
  %270 = fadd float %266, %269
  store float %270, ptr %12, align 4, !tbaa !96
  %271 = fcmp ult float %268, 0.000000e+00
  %272 = fcmp ult float %270, 0.000000e+00
  %273 = select i1 %271, i1 true, i1 %272
  %274 = fcmp ult float %266, 0.000000e+00
  %275 = or i1 %274, %273
  br i1 %275, label %276, label %285

276:                                              ; preds = %265
  %277 = fcmp ugt float %268, 0.000000e+00
  %278 = fcmp ugt float %270, 0.000000e+00
  %279 = select i1 %277, i1 true, i1 %278
  %280 = fcmp ugt float %266, 0.000000e+00
  %281 = or i1 %280, %279
  br i1 %281, label %282, label %285

282:                                              ; preds = %276
  %283 = getelementptr inbounds float, ptr %1, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !96
  br i1 %258, label %336, label %337

285:                                              ; preds = %276, %265, %261
  %286 = getelementptr inbounds float, ptr %13, i64 1
  %287 = load float, ptr %1, align 4, !tbaa !96
  %288 = getelementptr inbounds float, ptr %1, i64 2
  %289 = load float, ptr %288, align 4, !tbaa !96
  %290 = getelementptr inbounds float, ptr %13, i64 2
  %291 = getelementptr inbounds float, ptr %13, i64 3
  %292 = getelementptr inbounds float, ptr %4, i64 1
  %293 = getelementptr inbounds float, ptr %4, i64 2
  %294 = getelementptr inbounds float, ptr %13, i64 4
  %295 = getelementptr inbounds float, ptr %13, i64 5
  %296 = getelementptr inbounds float, ptr %5, i64 1
  %297 = getelementptr inbounds float, ptr %5, i64 2
  br i1 %258, label %298, label %317

298:                                              ; preds = %285
  call void @map_to_tube(ptr noundef nonnull %13, ptr noundef nonnull %286, float noundef %287, float noundef %263, float noundef %289) #10
  %299 = load float, ptr %1, align 4, !tbaa !96
  %300 = load float, ptr %4, align 4, !tbaa !96
  %301 = fadd float %299, %300
  %302 = load float, ptr %262, align 4, !tbaa !96
  %303 = load float, ptr %292, align 4, !tbaa !96
  %304 = fadd float %302, %303
  %305 = load float, ptr %288, align 4, !tbaa !96
  %306 = load float, ptr %293, align 4, !tbaa !96
  %307 = fadd float %305, %306
  call void @map_to_tube(ptr noundef nonnull %290, ptr noundef nonnull %291, float noundef %301, float noundef %304, float noundef %307) #10
  %308 = load float, ptr %1, align 4, !tbaa !96
  %309 = load float, ptr %5, align 4, !tbaa !96
  %310 = fadd float %308, %309
  %311 = load float, ptr %262, align 4, !tbaa !96
  %312 = load float, ptr %296, align 4, !tbaa !96
  %313 = fadd float %311, %312
  %314 = load float, ptr %288, align 4, !tbaa !96
  %315 = load float, ptr %297, align 4, !tbaa !96
  %316 = fadd float %314, %315
  call void @map_to_tube(ptr noundef nonnull %294, ptr noundef nonnull %295, float noundef %310, float noundef %313, float noundef %316) #10
  br label %482

317:                                              ; preds = %285
  call void @map_to_sphere(ptr noundef nonnull %13, ptr noundef nonnull %286, float noundef %287, float noundef %263, float noundef %289) #10
  %318 = load float, ptr %1, align 4, !tbaa !96
  %319 = load float, ptr %4, align 4, !tbaa !96
  %320 = fadd float %318, %319
  %321 = load float, ptr %262, align 4, !tbaa !96
  %322 = load float, ptr %292, align 4, !tbaa !96
  %323 = fadd float %321, %322
  %324 = load float, ptr %288, align 4, !tbaa !96
  %325 = load float, ptr %293, align 4, !tbaa !96
  %326 = fadd float %324, %325
  call void @map_to_sphere(ptr noundef nonnull %290, ptr noundef nonnull %291, float noundef %320, float noundef %323, float noundef %326) #10
  %327 = load float, ptr %1, align 4, !tbaa !96
  %328 = load float, ptr %5, align 4, !tbaa !96
  %329 = fadd float %327, %328
  %330 = load float, ptr %262, align 4, !tbaa !96
  %331 = load float, ptr %296, align 4, !tbaa !96
  %332 = fadd float %330, %331
  %333 = load float, ptr %288, align 4, !tbaa !96
  %334 = load float, ptr %297, align 4, !tbaa !96
  %335 = fadd float %333, %334
  call void @map_to_sphere(ptr noundef nonnull %294, ptr noundef nonnull %295, float noundef %329, float noundef %332, float noundef %335) #10
  br label %482

336:                                              ; preds = %282
  call void @map_to_tube(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %266, float noundef %263, float noundef %284) #10
  br label %338

337:                                              ; preds = %282
  call void @map_to_sphere(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef %266, float noundef %263, float noundef %284) #10
  br label %338

338:                                              ; preds = %337, %336
  %339 = load float, ptr %4, align 4, !tbaa !96
  %340 = fmul float %339, 5.000000e-01
  store float %340, ptr %4, align 4, !tbaa !96
  %341 = getelementptr inbounds float, ptr %4, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !96
  %343 = fmul float %342, 5.000000e-01
  store float %343, ptr %341, align 4, !tbaa !96
  %344 = load float, ptr %5, align 4, !tbaa !96
  %345 = fmul float %344, 5.000000e-01
  store float %345, ptr %5, align 4, !tbaa !96
  %346 = getelementptr inbounds float, ptr %5, i64 1
  %347 = load float, ptr %346, align 4, !tbaa !96
  %348 = fmul float %347, 5.000000e-01
  store float %348, ptr %346, align 4, !tbaa !96
  br label %500

349:                                              ; preds = %257
  %350 = load float, ptr %1, align 4, !tbaa !96
  %351 = getelementptr inbounds float, ptr %1, i64 1
  %352 = load float, ptr %351, align 4, !tbaa !96
  %353 = getelementptr inbounds float, ptr %1, i64 2
  %354 = load float, ptr %353, align 4, !tbaa !96
  switch i16 %20, label %441 [
    i16 32, label %355
    i16 8, label %397
  ]

355:                                              ; preds = %349
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %356 = icmp eq ptr %3, null
  br i1 %356, label %395, label %357

357:                                              ; preds = %355
  %358 = load float, ptr %3, align 4, !tbaa !96
  store float %358, ptr %8, align 4, !tbaa !96
  %359 = getelementptr inbounds float, ptr %3, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !96
  %361 = getelementptr inbounds float, ptr %8, i64 1
  store float %360, ptr %361, align 4, !tbaa !96
  %362 = getelementptr inbounds float, ptr %3, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !96
  %364 = getelementptr inbounds float, ptr %8, i64 2
  store float %363, ptr %364, align 4, !tbaa !96
  %365 = icmp eq ptr %19, null
  br i1 %365, label %368, label %366

366:                                              ; preds = %357
  %367 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %367, ptr noundef nonnull %8) #10
  br label %368

368:                                              ; preds = %366, %357
  %369 = load float, ptr %8, align 4, !tbaa !96
  %370 = call float @llvm.fabs.f32(float %369)
  %371 = load float, ptr %361, align 4, !tbaa !96
  %372 = call float @llvm.fabs.f32(float %371)
  %373 = load float, ptr %364, align 4, !tbaa !96
  %374 = call float @llvm.fabs.f32(float %373)
  %375 = fcmp ult float %374, %370
  %376 = fcmp ult float %374, %372
  %377 = select i1 %375, i1 true, i1 %376
  br i1 %377, label %383, label %378

378:                                              ; preds = %368
  %379 = fadd float %350, 1.000000e+00
  %380 = fmul float %379, 5.000000e-01
  store float %380, ptr %11, align 4, !tbaa !96
  %381 = fadd float %352, 1.000000e+00
  %382 = fmul float %381, 5.000000e-01
  store float %382, ptr %12, align 4, !tbaa !96
  br label %395

383:                                              ; preds = %368
  %384 = fcmp ult float %372, %370
  %385 = fcmp ult float %372, %374
  %386 = or i1 %384, %385
  %387 = fadd float %354, 1.000000e+00
  %388 = fmul float %387, 5.000000e-01
  br i1 %386, label %392, label %389

389:                                              ; preds = %383
  %390 = fadd float %350, 1.000000e+00
  %391 = fmul float %390, 5.000000e-01
  store float %391, ptr %11, align 4, !tbaa !96
  store float %388, ptr %12, align 4, !tbaa !96
  br label %395

392:                                              ; preds = %383
  %393 = fadd float %352, 1.000000e+00
  %394 = fmul float %393, 5.000000e-01
  store float %394, ptr %11, align 4, !tbaa !96
  store float %388, ptr %12, align 4, !tbaa !96
  br label %395

395:                                              ; preds = %355, %378, %389, %392
  %396 = phi i32 [ 0, %355 ], [ 0, %378 ], [ 1, %389 ], [ 2, %392 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  br label %443

397:                                              ; preds = %349
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %398 = icmp eq ptr %3, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %397
  store float %350, ptr %7, align 4, !tbaa !96
  %400 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %352, ptr %400, align 4, !tbaa !96
  %401 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %354, ptr %401, align 4, !tbaa !96
  br label %410

402:                                              ; preds = %397
  %403 = load float, ptr %3, align 4, !tbaa !96
  store float %403, ptr %7, align 4, !tbaa !96
  %404 = getelementptr inbounds float, ptr %3, i64 1
  %405 = load float, ptr %404, align 4, !tbaa !96
  %406 = getelementptr inbounds float, ptr %7, i64 1
  store float %405, ptr %406, align 4, !tbaa !96
  %407 = getelementptr inbounds float, ptr %3, i64 2
  %408 = load float, ptr %407, align 4, !tbaa !96
  %409 = getelementptr inbounds float, ptr %7, i64 2
  store float %408, ptr %409, align 4, !tbaa !96
  br label %410

410:                                              ; preds = %402, %399
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %7) #10
  %411 = load float, ptr %7, align 4, !tbaa !96
  %412 = call float @llvm.fabs.f32(float %411)
  %413 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %414 = load float, ptr %413, align 4, !tbaa !96
  %415 = call float @llvm.fabs.f32(float %414)
  %416 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %417 = load float, ptr %416, align 4, !tbaa !96
  %418 = call float @llvm.fabs.f32(float %417)
  %419 = fcmp ult float %418, %412
  %420 = fcmp ult float %418, %415
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %427, label %422

422:                                              ; preds = %410
  %423 = fadd float %350, 1.000000e+00
  %424 = fmul float %423, 5.000000e-01
  store float %424, ptr %11, align 4, !tbaa !96
  %425 = fadd float %352, 1.000000e+00
  %426 = fmul float %425, 5.000000e-01
  store float %426, ptr %12, align 4, !tbaa !96
  br label %439

427:                                              ; preds = %410
  %428 = fcmp ult float %415, %412
  %429 = fcmp ult float %415, %418
  %430 = or i1 %428, %429
  %431 = fadd float %354, 1.000000e+00
  %432 = fmul float %431, 5.000000e-01
  br i1 %430, label %436, label %433

433:                                              ; preds = %427
  %434 = fadd float %350, 1.000000e+00
  %435 = fmul float %434, 5.000000e-01
  store float %435, ptr %11, align 4, !tbaa !96
  store float %432, ptr %12, align 4, !tbaa !96
  br label %439

436:                                              ; preds = %427
  %437 = fadd float %352, 1.000000e+00
  %438 = fmul float %437, 5.000000e-01
  store float %438, ptr %11, align 4, !tbaa !96
  store float %432, ptr %12, align 4, !tbaa !96
  br label %439

439:                                              ; preds = %422, %433, %436
  %440 = phi i32 [ 0, %422 ], [ 1, %433 ], [ 2, %436 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %443

441:                                              ; preds = %349
  %442 = call fastcc i32 @cubemap(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, float noundef %350, float noundef %352, float noundef %354, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %443

443:                                              ; preds = %439, %441, %395
  %444 = phi i32 [ %396, %395 ], [ %440, %439 ], [ %442, %441 ]
  switch i32 %444, label %465 [
    i32 1, label %445
    i32 2, label %454
  ]

445:                                              ; preds = %443
  %446 = getelementptr inbounds float, ptr %4, i64 1
  %447 = load float, ptr %446, align 4, !tbaa !96
  %448 = getelementptr inbounds float, ptr %4, i64 2
  %449 = load float, ptr %448, align 4, !tbaa !96
  store float %449, ptr %446, align 4, !tbaa !96
  store float %447, ptr %448, align 4, !tbaa !96
  %450 = getelementptr inbounds float, ptr %5, i64 1
  %451 = load float, ptr %450, align 4, !tbaa !96
  %452 = getelementptr inbounds float, ptr %5, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !96
  store float %453, ptr %450, align 4, !tbaa !96
  store float %451, ptr %452, align 4, !tbaa !96
  br label %465

454:                                              ; preds = %443
  %455 = load float, ptr %4, align 4, !tbaa !96
  %456 = load float, ptr %5, align 4, !tbaa !96
  %457 = getelementptr inbounds float, ptr %4, i64 1
  %458 = load float, ptr %457, align 4, !tbaa !96
  store float %458, ptr %4, align 4, !tbaa !96
  %459 = getelementptr inbounds float, ptr %5, i64 1
  %460 = load float, ptr %459, align 4, !tbaa !96
  store float %460, ptr %5, align 4, !tbaa !96
  %461 = getelementptr inbounds float, ptr %4, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !96
  store float %462, ptr %457, align 4, !tbaa !96
  %463 = getelementptr inbounds float, ptr %5, i64 2
  %464 = load float, ptr %463, align 4, !tbaa !96
  store float %464, ptr %459, align 4, !tbaa !96
  store float %455, ptr %461, align 4, !tbaa !96
  store float %456, ptr %463, align 4, !tbaa !96
  br label %465

465:                                              ; preds = %443, %454, %445
  %466 = load float, ptr %4, align 4, !tbaa !96
  %467 = fmul float %466, 5.000000e-01
  store float %467, ptr %4, align 4, !tbaa !96
  %468 = getelementptr inbounds float, ptr %4, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !96
  %470 = fmul float %469, 5.000000e-01
  store float %470, ptr %468, align 4, !tbaa !96
  %471 = getelementptr inbounds float, ptr %4, i64 2
  %472 = load float, ptr %471, align 4, !tbaa !96
  %473 = fmul float %472, 5.000000e-01
  store float %473, ptr %471, align 4, !tbaa !96
  %474 = load float, ptr %5, align 4, !tbaa !96
  %475 = fmul float %474, 5.000000e-01
  store float %475, ptr %5, align 4, !tbaa !96
  %476 = getelementptr inbounds float, ptr %5, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !96
  %478 = fmul float %477, 5.000000e-01
  store float %478, ptr %476, align 4, !tbaa !96
  %479 = getelementptr inbounds float, ptr %5, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !96
  %481 = fmul float %480, 5.000000e-01
  store float %481, ptr %479, align 4, !tbaa !96
  br label %500

482:                                              ; preds = %317, %298
  %483 = load float, ptr %13, align 16, !tbaa !96
  store float %483, ptr %11, align 4, !tbaa !96
  %484 = getelementptr inbounds [8 x float], ptr %13, i64 0, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !96
  store float %485, ptr %12, align 4, !tbaa !96
  %486 = getelementptr inbounds [8 x float], ptr %13, i64 0, i64 2
  %487 = load float, ptr %486, align 8, !tbaa !96
  %488 = fsub float %487, %483
  store float %488, ptr %4, align 4, !tbaa !96
  %489 = getelementptr inbounds [8 x float], ptr %13, i64 0, i64 3
  %490 = load float, ptr %489, align 4, !tbaa !96
  %491 = fsub float %490, %485
  %492 = getelementptr inbounds float, ptr %4, i64 1
  store float %491, ptr %492, align 4, !tbaa !96
  %493 = getelementptr inbounds [8 x float], ptr %13, i64 0, i64 4
  %494 = load float, ptr %493, align 16, !tbaa !96
  %495 = fsub float %494, %483
  store float %495, ptr %5, align 4, !tbaa !96
  %496 = getelementptr inbounds [8 x float], ptr %13, i64 0, i64 5
  %497 = load float, ptr %496, align 4, !tbaa !96
  %498 = fsub float %497, %485
  %499 = getelementptr inbounds float, ptr %5, i64 1
  store float %498, ptr %499, align 4, !tbaa !96
  br label %500

500:                                              ; preds = %233, %338, %465, %482
  %501 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 42
  %502 = load i16, ptr %501, align 8, !tbaa !65
  %503 = icmp eq i16 %502, 3
  br i1 %503, label %504, label %603

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 40
  %506 = load i16, ptr %505, align 4, !tbaa !253
  %507 = icmp sgt i16 %506, 1
  br i1 %507, label %508, label %546

508:                                              ; preds = %504
  %509 = sitofp i16 %506 to float
  %510 = load float, ptr %11, align 4, !tbaa !96
  %511 = fmul float %510, %509
  store float %511, ptr %11, align 4, !tbaa !96
  %512 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 38
  %513 = load i32, ptr %512, align 4, !tbaa !199
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %541

515:                                              ; preds = %508
  %516 = fcmp ogt float %511, 1.000000e+00
  br i1 %516, label %517, label %521

517:                                              ; preds = %515
  %518 = fptosi float %511 to i32
  %519 = sitofp i32 %518 to float
  %520 = fsub float %511, %519
  store float %520, ptr %11, align 4, !tbaa !96
  br label %528

521:                                              ; preds = %515
  %522 = fcmp olt float %511, 0.000000e+00
  br i1 %522, label %523, label %528

523:                                              ; preds = %521
  %524 = fptosi float %511 to i32
  %525 = sub nsw i32 1, %524
  %526 = sitofp i32 %525 to float
  %527 = fadd float %511, %526
  store float %527, ptr %11, align 4, !tbaa !96
  br label %528

528:                                              ; preds = %521, %523, %517
  %529 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 31
  %530 = load i16, ptr %529, align 2, !tbaa !138
  %531 = and i16 %530, 128
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %541, label %533

533:                                              ; preds = %528
  %534 = call float @llvm.floor.f32(float %511)
  %535 = fptosi float %534 to i32
  %536 = and i32 %535, 1
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %541, label %538

538:                                              ; preds = %533
  %539 = load float, ptr %11, align 4, !tbaa !96
  %540 = fsub float 1.000000e+00, %539
  store float %540, ptr %11, align 4, !tbaa !96
  br label %541

541:                                              ; preds = %533, %538, %528, %508
  %542 = load float, ptr %4, align 4, !tbaa !96
  %543 = fmul float %542, %509
  store float %543, ptr %4, align 4, !tbaa !96
  %544 = load float, ptr %5, align 4, !tbaa !96
  %545 = fmul float %544, %509
  store float %545, ptr %5, align 4, !tbaa !96
  br label %546

546:                                              ; preds = %541, %504
  %547 = phi float [ %509, %541 ], [ 1.000000e+00, %504 ]
  %548 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 41
  %549 = load i16, ptr %548, align 2, !tbaa !254
  %550 = icmp sgt i16 %549, 1
  br i1 %550, label %551, label %593

551:                                              ; preds = %546
  %552 = sitofp i16 %549 to float
  %553 = load float, ptr %12, align 4, !tbaa !96
  %554 = fmul float %553, %552
  store float %554, ptr %12, align 4, !tbaa !96
  %555 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 38
  %556 = load i32, ptr %555, align 4, !tbaa !199
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %584

558:                                              ; preds = %551
  %559 = fcmp ogt float %554, 1.000000e+00
  br i1 %559, label %560, label %564

560:                                              ; preds = %558
  %561 = fptosi float %554 to i32
  %562 = sitofp i32 %561 to float
  %563 = fsub float %554, %562
  store float %563, ptr %12, align 4, !tbaa !96
  br label %571

564:                                              ; preds = %558
  %565 = fcmp olt float %554, 0.000000e+00
  br i1 %565, label %566, label %571

566:                                              ; preds = %564
  %567 = fptosi float %554 to i32
  %568 = sub nsw i32 1, %567
  %569 = sitofp i32 %568 to float
  %570 = fadd float %554, %569
  store float %570, ptr %12, align 4, !tbaa !96
  br label %571

571:                                              ; preds = %564, %566, %560
  %572 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 31
  %573 = load i16, ptr %572, align 2, !tbaa !138
  %574 = and i16 %573, 256
  %575 = icmp eq i16 %574, 0
  br i1 %575, label %584, label %576

576:                                              ; preds = %571
  %577 = call float @llvm.floor.f32(float %554)
  %578 = fptosi float %577 to i32
  %579 = and i32 %578, 1
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %576
  %582 = load float, ptr %12, align 4, !tbaa !96
  %583 = fsub float 1.000000e+00, %582
  store float %583, ptr %12, align 4, !tbaa !96
  br label %584

584:                                              ; preds = %576, %581, %571, %551
  %585 = fcmp olt float %547, %552
  %586 = select i1 %585, float %552, float %547
  %587 = getelementptr inbounds float, ptr %4, i64 1
  %588 = load float, ptr %587, align 4, !tbaa !96
  %589 = fmul float %588, %552
  store float %589, ptr %587, align 4, !tbaa !96
  %590 = getelementptr inbounds float, ptr %5, i64 1
  %591 = load float, ptr %590, align 4, !tbaa !96
  %592 = fmul float %591, %552
  store float %592, ptr %590, align 4, !tbaa !96
  br label %593

593:                                              ; preds = %584, %546
  %594 = phi float [ %586, %584 ], [ %547, %546 ]
  %595 = fcmp une float %594, 1.000000e+00
  br i1 %595, label %596, label %603

596:                                              ; preds = %593
  %597 = getelementptr inbounds float, ptr %4, i64 2
  %598 = load float, ptr %597, align 4, !tbaa !96
  %599 = fmul float %594, %598
  store float %599, ptr %597, align 4, !tbaa !96
  %600 = getelementptr inbounds float, ptr %5, i64 2
  %601 = load float, ptr %600, align 4, !tbaa !96
  %602 = fmul float %594, %601
  store float %602, ptr %600, align 4, !tbaa !96
  br label %603

603:                                              ; preds = %593, %596, %500
  %604 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 34
  %605 = load float, ptr %604, align 4, !tbaa !255
  %606 = fcmp une float %605, 0.000000e+00
  br i1 %606, label %611, label %607

607:                                              ; preds = %603
  %608 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 36
  %609 = load float, ptr %608, align 4, !tbaa !256
  %610 = fcmp une float %609, 1.000000e+00
  br i1 %610, label %611, label %621

611:                                              ; preds = %607, %603
  %612 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 36
  %613 = load float, ptr %612, align 4, !tbaa !256
  %614 = fsub float %613, %605
  %615 = load float, ptr %11, align 4, !tbaa !96
  %616 = call float @llvm.fmuladd.f32(float %615, float %614, float %605)
  store float %616, ptr %11, align 4, !tbaa !96
  %617 = load float, ptr %4, align 4, !tbaa !96
  %618 = fmul float %614, %617
  store float %618, ptr %4, align 4, !tbaa !96
  %619 = load float, ptr %5, align 4, !tbaa !96
  %620 = fmul float %614, %619
  store float %620, ptr %5, align 4, !tbaa !96
  br label %621

621:                                              ; preds = %611, %607
  %622 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 35
  %623 = load float, ptr %622, align 8, !tbaa !257
  %624 = fcmp une float %623, 0.000000e+00
  br i1 %624, label %629, label %625

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 37
  %627 = load float, ptr %626, align 8, !tbaa !258
  %628 = fcmp une float %627, 1.000000e+00
  br i1 %628, label %629, label %641

629:                                              ; preds = %625, %621
  %630 = getelementptr inbounds %struct.Tex, ptr %17, i64 0, i32 37
  %631 = load float, ptr %630, align 8, !tbaa !258
  %632 = fsub float %631, %623
  %633 = load float, ptr %12, align 4, !tbaa !96
  %634 = call float @llvm.fmuladd.f32(float %633, float %632, float %623)
  store float %634, ptr %12, align 4, !tbaa !96
  %635 = getelementptr inbounds float, ptr %4, i64 1
  %636 = load float, ptr %635, align 4, !tbaa !96
  %637 = fmul float %632, %636
  store float %637, ptr %635, align 4, !tbaa !96
  %638 = getelementptr inbounds float, ptr %5, i64 1
  %639 = load float, ptr %638, align 4, !tbaa !96
  %640 = fmul float %632, %639
  store float %640, ptr %638, align 4, !tbaa !96
  br label %641

641:                                              ; preds = %625, %629, %221, %225
  %642 = load float, ptr %11, align 4, !tbaa !96
  store float %642, ptr %1, align 4, !tbaa !96
  %643 = load float, ptr %12, align 4, !tbaa !96
  %644 = getelementptr inbounds float, ptr %1, i64 1
  store float %643, ptr %644, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @do_sky_tex(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6, i16 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %15 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %16 = and i32 %15, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %423

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  store ptr null, ptr %19, align 8, !tbaa !134
  %20 = icmp eq ptr %2, null
  %21 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %22 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %25 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %26 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %27 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %29 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %30 = icmp eq ptr %0, null
  %31 = getelementptr inbounds float, ptr %0, i64 1
  %32 = getelementptr inbounds float, ptr %10, i64 1
  %33 = getelementptr inbounds float, ptr %0, i64 2
  %34 = getelementptr inbounds float, ptr %10, i64 2
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = getelementptr inbounds float, ptr %10, i64 1
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = getelementptr inbounds float, ptr %10, i64 2
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %43 = and i32 %6, 16
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds float, ptr %10, i64 1
  %46 = getelementptr inbounds float, ptr %1, i64 2
  %47 = getelementptr inbounds float, ptr %1, i64 1
  %48 = getelementptr inbounds float, ptr %10, i64 1
  %49 = getelementptr inbounds float, ptr %1, i64 2
  %50 = getelementptr inbounds float, ptr %1, i64 1
  %51 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %52 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %53 = getelementptr inbounds float, ptr %1, i64 1
  %54 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %55 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %56 = getelementptr inbounds float, ptr %1, i64 2
  %57 = getelementptr inbounds float, ptr %1, i64 1
  %58 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %59 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %60 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %61 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %62 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %63 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %64 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %65 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %66 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %67 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %68 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %69 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %70 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %71 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %72 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %73 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %74 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %75 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %76 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %77 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %78 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %79 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %80 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %81 = and i32 %6, 16
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %84 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %85 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  br label %86

86:                                               ; preds = %18, %419
  %87 = phi i64 [ 0, %18 ], [ %421, %419 ]
  %88 = phi float [ 1.000000e+00, %18 ], [ %420, %419 ]
  %89 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 46, i32 70, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %419, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !93
  %95 = icmp eq ptr %94, null
  br i1 %95, label %419, label %96

96:                                               ; preds = %92
  br i1 %20, label %100, label %97

97:                                               ; preds = %96
  %98 = load float, ptr %2, align 4, !tbaa !96
  store float %98, ptr %21, align 4, !tbaa !96
  store float %98, ptr %22, align 4, !tbaa !96
  store float %98, ptr %12, align 4, !tbaa !96
  %99 = load float, ptr %23, align 4, !tbaa !96
  store float %99, ptr %24, align 4, !tbaa !96
  store float %99, ptr %25, align 4, !tbaa !96
  br label %101

100:                                              ; preds = %96
  store float 0.000000e+00, ptr %26, align 4, !tbaa !96
  store float 0.000000e+00, ptr %27, align 4, !tbaa !96
  store float 0.000000e+00, ptr %12, align 4, !tbaa !96
  store float 0.000000e+00, ptr %28, align 4, !tbaa !96
  store float 0.000000e+00, ptr %29, align 4, !tbaa !96
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi float [ 0.000000e+00, %100 ], [ %99, %97 ]
  store float %102, ptr %13, align 4, !tbaa !96
  %103 = load i16, ptr %90, align 8, !tbaa !95
  switch i16 %103, label %178 [
    i16 64, label %104
    i16 256, label %131
    i16 1024, label %131
    i16 2048, label %148
    i16 32, label %164
    i16 8, label %173
  ]

104:                                              ; preds = %101
  %105 = load float, ptr %1, align 4, !tbaa !96
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load float, ptr %53, align 4, !tbaa !96
  %109 = fcmp une float %108, 0.000000e+00
  br i1 %109, label %110, label %130

110:                                              ; preds = %107, %104
  %111 = load float, ptr %56, align 4, !tbaa !96
  %112 = fcmp ugt float %111, -1.000000e+00
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = fcmp ult float %111, 1.000000e+00
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = call float @acosf(float noundef %111) #10
  br label %117

117:                                              ; preds = %110, %113, %115
  %118 = phi float [ %116, %115 ], [ 0x400921FB60000000, %110 ], [ 0.000000e+00, %113 ]
  %119 = fmul float %118, 0x3FD45F3060000000
  %120 = load float, ptr %1, align 4, !tbaa !96
  %121 = load float, ptr %57, align 4, !tbaa !96
  %122 = fmul float %121, %121
  %123 = call float @llvm.fmuladd.f32(float %120, float %120, float %122)
  %124 = call float @sqrtf(float noundef %123) #10
  %125 = fdiv float %119, %124
  %126 = load float, ptr %1, align 4, !tbaa !96
  %127 = fmul float %126, %125
  store float %127, ptr %10, align 4, !tbaa !96
  %128 = load float, ptr %57, align 4, !tbaa !96
  %129 = fmul float %125, %128
  store float %129, ptr %58, align 4, !tbaa !96
  store float 0.000000e+00, ptr %59, align 4, !tbaa !96
  br label %178

130:                                              ; preds = %107
  store float 1.000000e+00, ptr %10, align 4, !tbaa !96
  store float 0.000000e+00, ptr %54, align 4, !tbaa !96
  store float 0.000000e+00, ptr %55, align 4, !tbaa !96
  br label %178

131:                                              ; preds = %101, %101
  br i1 %44, label %419, label %132

132:                                              ; preds = %131
  %133 = icmp eq i16 %103, 1024
  %134 = load float, ptr %1, align 4, !tbaa !96
  br i1 %133, label %135, label %138

135:                                              ; preds = %132
  %136 = load float, ptr %49, align 4, !tbaa !96
  %137 = load float, ptr %50, align 4, !tbaa !96
  call void @map_to_tube(ptr noundef nonnull %10, ptr noundef nonnull %48, float noundef %134, float noundef %136, float noundef %137) #10
  br label %141

138:                                              ; preds = %132
  %139 = load float, ptr %46, align 4, !tbaa !96
  %140 = load float, ptr %47, align 4, !tbaa !96
  call void @map_to_sphere(ptr noundef nonnull %10, ptr noundef nonnull %45, float noundef %134, float noundef %139, float noundef %140) #10
  br label %141

141:                                              ; preds = %138, %135
  %142 = load float, ptr %10, align 4, !tbaa !96
  %143 = fsub float 1.000000e+00, %142
  store float %143, ptr %10, align 4, !tbaa !96
  %144 = load float, ptr %51, align 4, !tbaa !96
  %145 = call float @llvm.fmuladd.f32(float %144, float 2.000000e+00, float -1.000000e+00)
  store float %145, ptr %51, align 4, !tbaa !96
  store float 0.000000e+00, ptr %52, align 4, !tbaa !96
  %146 = call float @llvm.fmuladd.f32(float %143, float 2.000000e+00, float -1.000000e+00)
  store float %146, ptr %10, align 4, !tbaa !96
  %147 = call float @llvm.fmuladd.f32(float %145, float 2.000000e+00, float -1.000000e+00)
  store float %147, ptr %51, align 4, !tbaa !96
  br label %178

148:                                              ; preds = %101
  %149 = load float, ptr %1, align 4, !tbaa !96
  %150 = load float, ptr %39, align 4, !tbaa !96
  %151 = call float @atan2f(float noundef %149, float noundef %150) #10
  %152 = fdiv float %151, 0x400921FB60000000
  store float %152, ptr %10, align 4, !tbaa !96
  %153 = load float, ptr %40, align 4, !tbaa !96
  %154 = fcmp ugt float %153, -1.000000e+00
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = fcmp ult float %153, 1.000000e+00
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  %158 = call float @acosf(float noundef %153) #10
  br label %159

159:                                              ; preds = %148, %155, %157
  %160 = phi float [ %158, %157 ], [ 0x400921FB60000000, %148 ], [ 0.000000e+00, %155 ]
  %161 = fmul float %160, 2.000000e+00
  %162 = fdiv float %161, 0x400921FB60000000
  %163 = fsub float 1.000000e+00, %162
  store float %163, ptr %41, align 4, !tbaa !96
  store float 0.000000e+00, ptr %42, align 4, !tbaa !96
  br label %178

164:                                              ; preds = %101
  %165 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !94
  %167 = icmp eq ptr %166, null
  br i1 %167, label %178, label %168

168:                                              ; preds = %164
  %169 = load float, ptr %1, align 4, !tbaa !96
  store float %169, ptr %10, align 4, !tbaa !96
  %170 = load float, ptr %35, align 4, !tbaa !96
  store float %170, ptr %36, align 4, !tbaa !96
  %171 = load float, ptr %37, align 4, !tbaa !96
  store float %171, ptr %38, align 4, !tbaa !96
  %172 = getelementptr inbounds %struct.Object, ptr %166, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %172, ptr noundef nonnull %10) #10
  br label %178

173:                                              ; preds = %101
  br i1 %30, label %178, label %174

174:                                              ; preds = %173
  %175 = load float, ptr %0, align 4, !tbaa !96
  store float %175, ptr %10, align 4, !tbaa !96
  %176 = load float, ptr %31, align 4, !tbaa !96
  store float %176, ptr %32, align 4, !tbaa !96
  %177 = load float, ptr %33, align 4, !tbaa !96
  store float %177, ptr %34, align 4, !tbaa !96
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %10) #10
  br label %178

178:                                              ; preds = %173, %117, %130, %174, %164, %168, %101, %159, %141
  %179 = phi ptr [ %1, %101 ], [ %10, %174 ], [ %10, %168 ], [ %1, %164 ], [ %10, %159 ], [ %10, %141 ], [ %10, %130 ], [ %10, %117 ], [ %1, %173 ]
  %180 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 7
  %181 = load i8, ptr %180, align 8, !tbaa !196
  %182 = icmp eq i8 %181, 0
  %183 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 12
  %184 = load float, ptr %183, align 8, !tbaa !96
  br i1 %182, label %194, label %185

185:                                              ; preds = %178
  %186 = zext i8 %181 to i64
  %187 = add nuw nsw i64 %186, 4294967295
  %188 = and i64 %187, 4294967295
  %189 = getelementptr inbounds float, ptr %179, i64 %188
  %190 = load float, ptr %189, align 4, !tbaa !96
  %191 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11
  %192 = load float, ptr %191, align 4, !tbaa !96
  %193 = fadd float %190, %192
  br label %197

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11
  %196 = load float, ptr %195, align 4, !tbaa !96
  br label %197

197:                                              ; preds = %194, %185
  %198 = phi float [ %196, %194 ], [ %193, %185 ]
  %199 = fmul float %184, %198
  store float %199, ptr %11, align 4, !tbaa !96
  %200 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 8
  %201 = load i8, ptr %200, align 1, !tbaa !197
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 12, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !96
  br i1 %202, label %214, label %205

205:                                              ; preds = %197
  %206 = zext i8 %201 to i64
  %207 = add nuw nsw i64 %206, 4294967295
  %208 = and i64 %207, 4294967295
  %209 = getelementptr inbounds float, ptr %179, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !96
  %211 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !96
  %213 = fadd float %210, %212
  br label %217

214:                                              ; preds = %197
  %215 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !96
  br label %217

217:                                              ; preds = %214, %205
  %218 = phi float [ %216, %214 ], [ %213, %205 ]
  %219 = phi ptr [ %61, %214 ], [ %60, %205 ]
  %220 = fmul float %204, %218
  store float %220, ptr %219, align 4, !tbaa !96
  %221 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 9
  %222 = load i8, ptr %221, align 2, !tbaa !198
  %223 = icmp eq i8 %222, 0
  %224 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 12, i64 2
  %225 = load float, ptr %224, align 8, !tbaa !96
  br i1 %223, label %235, label %226

226:                                              ; preds = %217
  %227 = zext i8 %222 to i64
  %228 = add nuw nsw i64 %227, 4294967295
  %229 = and i64 %228, 4294967295
  %230 = getelementptr inbounds float, ptr %179, i64 %229
  %231 = load float, ptr %230, align 4, !tbaa !96
  %232 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11, i64 2
  %233 = load float, ptr %232, align 4, !tbaa !96
  %234 = fadd float %231, %233
  br label %238

235:                                              ; preds = %217
  %236 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 11, i64 2
  %237 = load float, ptr %236, align 4, !tbaa !96
  br label %238

238:                                              ; preds = %235, %226
  %239 = phi float [ %237, %235 ], [ %234, %226 ]
  %240 = phi ptr [ %63, %235 ], [ %62, %226 ]
  %241 = fmul float %225, %239
  store float %241, ptr %240, align 4, !tbaa !96
  %242 = getelementptr inbounds %struct.Tex, ptr %94, i64 0, i32 32
  %243 = load i16, ptr %242, align 8, !tbaa !63
  %244 = icmp eq i16 %243, 8
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  call fastcc void @do_2d_mapping(ptr noundef nonnull %90, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13)
  br label %246

246:                                              ; preds = %245, %238
  %247 = load ptr, ptr %93, align 8, !tbaa !93
  %248 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !252
  %249 = sext i16 %248 to i32
  %250 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 19
  %251 = load i16, ptr %250, align 2, !tbaa !83
  %252 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %253 = call fastcc i32 @multitex(ptr noundef %247, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %249, ptr noundef nonnull %9, i16 noundef signext %7, i16 noundef signext %251, ptr noundef %252)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %246
  %256 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 14
  %257 = load i16, ptr %256, align 8, !tbaa !106
  %258 = and i16 %257, 1
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %255
  %261 = load float, ptr %64, align 4, !tbaa !96
  %262 = load float, ptr %65, align 8, !tbaa !96
  %263 = fmul float %262, 0x3FDCCCCCC0000000
  %264 = call float @llvm.fmuladd.f32(float %261, float 0x3FD6666660000000, float %263)
  %265 = load float, ptr %66, align 4, !tbaa !96
  %266 = call float @llvm.fmuladd.f32(float %265, float 0x3FC99999A0000000, float %264)
  store float %266, ptr %9, align 8, !tbaa !146
  br label %267

267:                                              ; preds = %260, %255, %246
  %268 = phi i1 [ true, %260 ], [ false, %255 ], [ true, %246 ]
  %269 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 14
  %270 = load i16, ptr %269, align 8, !tbaa !106
  %271 = and i16 %270, 4
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %267
  br i1 %268, label %281, label %274

274:                                              ; preds = %273
  %275 = load float, ptr %67, align 4, !tbaa !143
  %276 = fsub float 1.000000e+00, %275
  store float %276, ptr %67, align 4, !tbaa !143
  %277 = load float, ptr %68, align 8, !tbaa !144
  %278 = fsub float 1.000000e+00, %277
  store float %278, ptr %68, align 8, !tbaa !144
  %279 = load float, ptr %69, align 4, !tbaa !145
  %280 = fsub float 1.000000e+00, %279
  store float %280, ptr %69, align 4, !tbaa !145
  br label %284

281:                                              ; preds = %273
  %282 = load float, ptr %9, align 8, !tbaa !146
  %283 = fsub float 1.000000e+00, %282
  store float %283, ptr %9, align 8, !tbaa !146
  br label %284

284:                                              ; preds = %274, %281, %267
  %285 = and i16 %270, 2
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %294, label %287

287:                                              ; preds = %284
  br i1 %268, label %291, label %288

288:                                              ; preds = %287
  %289 = load float, ptr %70, align 8, !tbaa !163
  %290 = fmul float %88, %289
  store float %290, ptr %70, align 8, !tbaa !163
  br label %301

291:                                              ; preds = %287
  %292 = load float, ptr %9, align 8, !tbaa !146
  %293 = fmul float %88, %292
  store float %293, ptr %9, align 8, !tbaa !146
  br label %301

294:                                              ; preds = %284
  br i1 %268, label %298, label %295

295:                                              ; preds = %294
  %296 = load float, ptr %71, align 8, !tbaa !163
  %297 = fmul float %88, %296
  store float %297, ptr %71, align 8, !tbaa !163
  br label %301

298:                                              ; preds = %294
  %299 = load float, ptr %9, align 8, !tbaa !146
  %300 = fmul float %88, %299
  store float %300, ptr %9, align 8, !tbaa !146
  br label %301

301:                                              ; preds = %295, %298, %288, %291
  %302 = phi float [ %290, %288 ], [ %293, %291 ], [ %88, %295 ], [ %88, %298 ]
  %303 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 1
  %304 = load i16, ptr %303, align 2, !tbaa !87
  %305 = and i16 %304, 14
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %396, label %307

307:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  br i1 %268, label %308, label %315

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 22
  %310 = load float, ptr %309, align 4, !tbaa !246
  store float %310, ptr %73, align 4, !tbaa !143
  %311 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 23
  %312 = load float, ptr %311, align 8, !tbaa !247
  store float %312, ptr %74, align 8, !tbaa !144
  %313 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 24
  %314 = load float, ptr %313, align 4, !tbaa !248
  store float %314, ptr %75, align 4, !tbaa !145
  br label %317

315:                                              ; preds = %307
  %316 = load float, ptr %72, align 8, !tbaa !163
  store float %316, ptr %9, align 8, !tbaa !146
  br label %317

317:                                              ; preds = %315, %308
  %318 = load float, ptr %76, align 4, !tbaa !143
  store float %318, ptr %14, align 4, !tbaa !96
  %319 = load float, ptr %77, align 8, !tbaa !144
  store float %319, ptr %78, align 4, !tbaa !96
  %320 = load float, ptr %79, align 4, !tbaa !145
  store float %320, ptr %80, align 4, !tbaa !96
  %321 = load i16, ptr %242, align 8, !tbaa !63
  %322 = icmp eq i16 %321, 8
  br i1 %322, label %323, label %342

323:                                              ; preds = %317
  %324 = getelementptr inbounds %struct.Tex, ptr %94, i64 0, i32 54
  %325 = load ptr, ptr %324, align 8, !tbaa !60
  %326 = getelementptr inbounds %struct.Tex, ptr %94, i64 0, i32 51
  %327 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %328 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %325, ptr noundef nonnull %326, ptr noundef %327) #10
  %329 = icmp eq ptr %328, null
  br i1 %329, label %340, label %330

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.ImBuf, ptr %328, i64 0, i32 9
  %332 = load ptr, ptr %331, align 8, !tbaa !88
  %333 = icmp eq ptr %332, null
  %334 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %335 = icmp ne i8 %334, 0
  %336 = select i1 %333, i1 %335, i1 false
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.ImBuf, ptr %328, i64 0, i32 34
  %339 = load ptr, ptr %338, align 8, !tbaa !91
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %14, ptr noundef %339) #10
  br label %340

340:                                              ; preds = %337, %330, %323
  %341 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  call void @BKE_image_pool_release_ibuf(ptr noundef %325, ptr noundef %328, ptr noundef %341) #10
  br label %342

342:                                              ; preds = %340, %317
  %343 = load i16, ptr %303, align 2, !tbaa !87
  %344 = and i16 %343, 2
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %353, label %346

346:                                              ; preds = %342
  %347 = load float, ptr %9, align 8, !tbaa !146
  %348 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 28
  %349 = load float, ptr %348, align 4, !tbaa !165
  %350 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 3
  %351 = load i16, ptr %350, align 2, !tbaa !166
  %352 = sext i16 %351 to i32
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %14, ptr noundef %3, float noundef %347, float noundef %349, i32 noundef %352)
  br label %353

353:                                              ; preds = %346, %342
  %354 = load i16, ptr %303, align 2, !tbaa !87
  %355 = zext i16 %354 to i32
  %356 = and i32 %355, 12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %395, label %358

358:                                              ; preds = %353
  %359 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 46, i32 22), align 8, !tbaa !259
  %360 = and i16 %359, 2
  %361 = icmp eq i16 %360, 0
  br i1 %361, label %375, label %362

362:                                              ; preds = %358
  br i1 %82, label %369, label %363

363:                                              ; preds = %362
  %364 = and i32 %355, 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %387, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 62
  %368 = load float, ptr %367, align 4, !tbaa !260
  br label %387

369:                                              ; preds = %362
  %370 = and i32 %355, 8
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %387, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 63
  %374 = load float, ptr %373, align 8, !tbaa !261
  br label %387

375:                                              ; preds = %358
  %376 = and i32 %355, 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 62
  %380 = load float, ptr %379, align 4, !tbaa !260
  br label %387

381:                                              ; preds = %375
  %382 = and i32 %355, 8
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 63
  %386 = load float, ptr %385, align 8, !tbaa !261
  br label %387

387:                                              ; preds = %378, %384, %381, %366, %363, %372, %369
  %388 = phi float [ %368, %366 ], [ 0.000000e+00, %363 ], [ %374, %372 ], [ 0.000000e+00, %369 ], [ %380, %378 ], [ %386, %384 ], [ 0.000000e+00, %381 ]
  %389 = fcmp une float %388, 0.000000e+00
  br i1 %389, label %390, label %395

390:                                              ; preds = %387
  %391 = load float, ptr %9, align 8, !tbaa !146
  %392 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 3
  %393 = load i16, ptr %392, align 2, !tbaa !166
  %394 = sext i16 %393 to i32
  call void @texture_rgb_blend(ptr noundef %4, ptr noundef nonnull %14, ptr noundef %4, float noundef %391, float noundef %388, i32 noundef %394)
  br label %395

395:                                              ; preds = %387, %390, %353
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  br label %396

396:                                              ; preds = %395, %301
  %397 = load i16, ptr %303, align 2, !tbaa !87
  %398 = and i16 %397, 1
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %419, label %400

400:                                              ; preds = %396
  br i1 %268, label %408, label %401

401:                                              ; preds = %400
  %402 = load float, ptr %83, align 4, !tbaa !96
  %403 = load float, ptr %84, align 8, !tbaa !96
  %404 = fmul float %403, 0x3FDCCCCCC0000000
  %405 = call float @llvm.fmuladd.f32(float %402, float 0x3FD6666660000000, float %404)
  %406 = load float, ptr %85, align 4, !tbaa !96
  %407 = call float @llvm.fmuladd.f32(float %406, float 0x3FC99999A0000000, float %405)
  store float %407, ptr %9, align 8, !tbaa !146
  br label %408

408:                                              ; preds = %401, %400
  %409 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 26
  %410 = load float, ptr %409, align 4, !tbaa !173
  %411 = load float, ptr %5, align 4, !tbaa !96
  %412 = load float, ptr %9, align 8, !tbaa !146
  %413 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 64
  %414 = load float, ptr %413, align 4, !tbaa !262
  %415 = getelementptr inbounds %struct.MTex, ptr %90, i64 0, i32 3
  %416 = load i16, ptr %415, align 2, !tbaa !166
  %417 = sext i16 %416 to i32
  %418 = call float @texture_value_blend(float noundef %410, float noundef %411, float noundef %412, float noundef %414, i32 noundef %417)
  store float %418, ptr %5, align 4, !tbaa !96
  br label %419

419:                                              ; preds = %86, %408, %396, %131, %92
  %420 = phi float [ %88, %92 ], [ %302, %408 ], [ %302, %396 ], [ %88, %131 ], [ %88, %86 ]
  %421 = add nuw nsw i64 %87, 1
  %422 = icmp eq i64 %421, 18
  br i1 %422, label %423, label %86, !llvm.loop !263

423:                                              ; preds = %419, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare void @map_to_tube(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @do_lamp_tex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.TexResult, align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %12 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %438

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = getelementptr inbounds float, ptr %10, i64 1
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = getelementptr inbounds float, ptr %10, i64 2
  %21 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 59
  %22 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 60
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 15
  %25 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 92
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 92, i64 1
  %27 = getelementptr inbounds float, ptr %8, i64 1
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 92, i64 2
  %29 = getelementptr inbounds float, ptr %8, i64 2
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 93
  %31 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 93, i64 1
  %32 = getelementptr inbounds float, ptr %9, i64 1
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 93, i64 2
  %34 = getelementptr inbounds float, ptr %9, i64 2
  %35 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 60
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57
  %37 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 1
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57, i64 1
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 2
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57, i64 2
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  %45 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 1
  %46 = getelementptr inbounds float, ptr %10, i64 1
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 2
  %48 = getelementptr inbounds float, ptr %10, i64 2
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 15
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78, i64 1
  %52 = getelementptr inbounds float, ptr %8, i64 1
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78, i64 2
  %54 = getelementptr inbounds float, ptr %8, i64 2
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79, i64 1
  %57 = getelementptr inbounds float, ptr %9, i64 1
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79, i64 2
  %59 = getelementptr inbounds float, ptr %9, i64 2
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 78
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 79
  %63 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %64 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %65 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %66 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 15
  %68 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %69 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %70 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %71 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %72 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %73 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %74 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %75 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 114
  %77 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %78 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %79 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %80 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %81 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %82 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %83 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %84 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %85 = and i32 %4, 256
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %4, 65536
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %90 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %91 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %92 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %93 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %94 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %95 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 15
  %96 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %97 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %98 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %99 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %100 = and i32 %4, 65536
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %15, %431
  %103 = phi i64 [ 0, %15 ], [ %436, %431 ]
  %104 = phi ptr [ null, %15 ], [ %435, %431 ]
  %105 = phi ptr [ null, %15 ], [ %434, %431 ]
  %106 = phi float [ 1.000000e+00, %15 ], [ %433, %431 ]
  %107 = phi ptr [ null, %15 ], [ %432, %431 ]
  %108 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 69, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = icmp eq ptr %109, null
  br i1 %110, label %431, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !93
  %114 = icmp eq ptr %113, null
  br i1 %114, label %431, label %115

115:                                              ; preds = %111
  store ptr null, ptr %16, align 8, !tbaa !134
  %116 = load i16, ptr %109, align 8, !tbaa !95
  switch i16 %116, label %178 [
    i16 32, label %117
    i16 8, label %135
    i16 128, label %139
  ]

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = icmp eq ptr %119, null
  br i1 %120, label %178, label %121

121:                                              ; preds = %117
  %122 = load float, ptr %44, align 4, !tbaa !96
  store float %122, ptr %10, align 4, !tbaa !96
  %123 = load float, ptr %45, align 4, !tbaa !96
  store float %123, ptr %46, align 4, !tbaa !96
  %124 = load float, ptr %47, align 4, !tbaa !96
  store float %124, ptr %48, align 4, !tbaa !96
  %125 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %125, ptr noundef nonnull %10) #10
  %126 = load i16, ptr %49, align 8, !tbaa !107
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %178, label %128

128:                                              ; preds = %121
  %129 = load float, ptr %50, align 4, !tbaa !96
  store float %129, ptr %8, align 8, !tbaa !96
  %130 = load float, ptr %51, align 4, !tbaa !96
  store float %130, ptr %52, align 4, !tbaa !96
  %131 = load float, ptr %53, align 4, !tbaa !96
  store float %131, ptr %54, align 8, !tbaa !96
  %132 = load float, ptr %55, align 4, !tbaa !96
  store float %132, ptr %9, align 8, !tbaa !96
  %133 = load float, ptr %56, align 4, !tbaa !96
  store float %133, ptr %57, align 4, !tbaa !96
  %134 = load float, ptr %58, align 4, !tbaa !96
  store float %134, ptr %59, align 8, !tbaa !96
  call void @mul_mat3_m4_v3(ptr noundef nonnull %125, ptr noundef nonnull %8) #10
  call void @mul_mat3_m4_v3(ptr noundef nonnull %125, ptr noundef nonnull %9) #10
  br label %178

135:                                              ; preds = %115
  %136 = load float, ptr %39, align 4, !tbaa !96
  store float %136, ptr %36, align 4, !tbaa !96
  %137 = load float, ptr %40, align 4, !tbaa !96
  store float %137, ptr %41, align 4, !tbaa !96
  %138 = load float, ptr %42, align 4, !tbaa !96
  store float %138, ptr %43, align 4, !tbaa !96
  call void @mul_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %36) #10
  br label %178

139:                                              ; preds = %115
  %140 = load float, ptr %1, align 4, !tbaa !96
  store float %140, ptr %10, align 4, !tbaa !96
  %141 = load float, ptr %17, align 4, !tbaa !96
  store float %141, ptr %18, align 4, !tbaa !96
  %142 = load float, ptr %19, align 4, !tbaa !96
  store float %142, ptr %20, align 4, !tbaa !96
  call void @mul_m3_v3(ptr noundef nonnull %21, ptr noundef nonnull %10) #10
  %143 = load i16, ptr %22, align 8, !tbaa !264
  %144 = icmp eq i16 %143, 2
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load float, ptr %23, align 4, !tbaa !266
  %147 = load float, ptr %10, align 4, !tbaa !96
  %148 = fmul float %146, %147
  store float %148, ptr %10, align 4, !tbaa !96
  %149 = load float, ptr %18, align 4, !tbaa !96
  %150 = fmul float %146, %149
  store float %150, ptr %18, align 4, !tbaa !96
  %151 = load float, ptr %20, align 4, !tbaa !96
  %152 = fneg float %151
  %153 = fdiv float %148, %152
  store float %153, ptr %10, align 4, !tbaa !96
  %154 = fdiv float %150, %152
  store float %154, ptr %18, align 4, !tbaa !96
  br label %155

155:                                              ; preds = %145, %139
  %156 = load i16, ptr %24, align 8, !tbaa !107
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %178, label %158

158:                                              ; preds = %155
  %159 = load float, ptr %25, align 4, !tbaa !96
  store float %159, ptr %8, align 8, !tbaa !96
  %160 = load float, ptr %26, align 4, !tbaa !96
  store float %160, ptr %27, align 4, !tbaa !96
  %161 = load float, ptr %28, align 4, !tbaa !96
  store float %161, ptr %29, align 8, !tbaa !96
  %162 = load float, ptr %30, align 4, !tbaa !96
  store float %162, ptr %9, align 8, !tbaa !96
  %163 = load float, ptr %31, align 4, !tbaa !96
  store float %163, ptr %32, align 4, !tbaa !96
  %164 = load float, ptr %33, align 4, !tbaa !96
  store float %164, ptr %34, align 8, !tbaa !96
  call void @mul_m3_v3(ptr noundef nonnull %21, ptr noundef nonnull %8) #10
  call void @mul_m3_v3(ptr noundef nonnull %21, ptr noundef nonnull %9) #10
  %165 = load float, ptr %35, align 4, !tbaa !266
  %166 = load float, ptr %8, align 8, !tbaa !96
  %167 = fmul float %165, %166
  store float %167, ptr %8, align 8, !tbaa !96
  %168 = load float, ptr %27, align 4, !tbaa !96
  %169 = fmul float %165, %168
  store float %169, ptr %27, align 4, !tbaa !96
  %170 = load float, ptr %29, align 8, !tbaa !96
  %171 = fmul float %165, %170
  store float %171, ptr %29, align 8, !tbaa !96
  %172 = load float, ptr %9, align 8, !tbaa !96
  %173 = fmul float %165, %172
  store float %173, ptr %9, align 8, !tbaa !96
  %174 = load float, ptr %32, align 4, !tbaa !96
  %175 = fmul float %165, %174
  store float %175, ptr %32, align 4, !tbaa !96
  %176 = load float, ptr %34, align 8, !tbaa !96
  %177 = fmul float %165, %176
  store float %177, ptr %34, align 8, !tbaa !96
  br label %178

178:                                              ; preds = %117, %115, %135, %155, %158, %128, %121
  %179 = phi ptr [ %9, %128 ], [ %9, %121 ], [ %38, %135 ], [ %9, %158 ], [ %9, %155 ], [ %107, %115 ], [ %62, %117 ]
  %180 = phi ptr [ %8, %128 ], [ %8, %121 ], [ %37, %135 ], [ %8, %158 ], [ %8, %155 ], [ %105, %115 ], [ %61, %117 ]
  %181 = phi ptr [ %10, %128 ], [ %10, %121 ], [ %36, %135 ], [ %10, %158 ], [ %10, %155 ], [ %104, %115 ], [ %60, %117 ]
  %182 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 7
  %183 = load i8, ptr %182, align 8, !tbaa !196
  %184 = icmp ne i8 %183, 0
  %185 = icmp ne ptr %181, null
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %187, label %199

187:                                              ; preds = %178
  %188 = zext i8 %183 to i64
  %189 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12
  %190 = load float, ptr %189, align 8, !tbaa !96
  %191 = add nuw nsw i64 %188, 4294967295
  %192 = and i64 %191, 4294967295
  %193 = getelementptr inbounds float, ptr %181, i64 %192
  %194 = load float, ptr %193, align 4, !tbaa !96
  %195 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11
  %196 = load float, ptr %195, align 4, !tbaa !96
  %197 = fadd float %194, %196
  %198 = fmul float %190, %197
  br label %205

199:                                              ; preds = %178
  %200 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12
  %201 = load float, ptr %200, align 8, !tbaa !96
  %202 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11
  %203 = load float, ptr %202, align 4, !tbaa !96
  %204 = fmul float %201, %203
  br label %205

205:                                              ; preds = %199, %187
  %206 = phi float [ %204, %199 ], [ %198, %187 ]
  store float %206, ptr %7, align 4, !tbaa !96
  %207 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 8
  %208 = load i8, ptr %207, align 1, !tbaa !197
  %209 = icmp ne i8 %208, 0
  %210 = select i1 %209, i1 %185, i1 false
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = zext i8 %208 to i64
  %213 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !96
  %215 = add nuw nsw i64 %212, 4294967295
  %216 = and i64 %215, 4294967295
  %217 = getelementptr inbounds float, ptr %181, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !96
  %219 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !96
  %221 = fadd float %218, %220
  %222 = fmul float %214, %221
  store float %222, ptr %64, align 4, !tbaa !96
  br label %229

223:                                              ; preds = %205
  %224 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !96
  %226 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !96
  %228 = fmul float %225, %227
  store float %228, ptr %63, align 4, !tbaa !96
  br label %229

229:                                              ; preds = %223, %211
  %230 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 9
  %231 = load i8, ptr %230, align 2, !tbaa !198
  %232 = icmp ne i8 %231, 0
  %233 = select i1 %232, i1 %185, i1 false
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = zext i8 %231 to i64
  %236 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 2
  %237 = load float, ptr %236, align 8, !tbaa !96
  %238 = add nuw nsw i64 %235, 4294967295
  %239 = and i64 %238, 4294967295
  %240 = getelementptr inbounds float, ptr %181, i64 %239
  %241 = load float, ptr %240, align 4, !tbaa !96
  %242 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !96
  %244 = fadd float %241, %243
  %245 = fmul float %237, %244
  store float %245, ptr %66, align 4, !tbaa !96
  br label %252

246:                                              ; preds = %229
  %247 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 2
  %248 = load float, ptr %247, align 8, !tbaa !96
  %249 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 11, i64 2
  %250 = load float, ptr %249, align 4, !tbaa !96
  %251 = fmul float %248, %250
  store float %251, ptr %65, align 4, !tbaa !96
  br label %252

252:                                              ; preds = %246, %234
  %253 = load i16, ptr %67, align 8, !tbaa !107
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %307, label %255

255:                                              ; preds = %252
  %256 = icmp eq ptr %180, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %255
  store i64 0, ptr %9, align 8
  store i64 0, ptr %8, align 8
  br label %307

258:                                              ; preds = %255
  %259 = icmp eq i8 %183, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12
  %262 = load float, ptr %261, align 8, !tbaa !96
  %263 = zext i8 %183 to i64
  %264 = add nuw nsw i64 %263, 4294967295
  %265 = and i64 %264, 4294967295
  %266 = getelementptr inbounds float, ptr %180, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !96
  %268 = fmul float %262, %267
  store float %268, ptr %8, align 8, !tbaa !96
  %269 = add nsw i64 %263, -1
  %270 = getelementptr inbounds float, ptr %179, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !96
  %272 = fmul float %262, %271
  br label %274

273:                                              ; preds = %258
  store float 0.000000e+00, ptr %8, align 8, !tbaa !96
  br label %274

274:                                              ; preds = %273, %260
  %275 = phi float [ 0.000000e+00, %273 ], [ %272, %260 ]
  store float %275, ptr %9, align 8, !tbaa !96
  %276 = icmp eq i8 %208, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !96
  %280 = zext i8 %208 to i64
  %281 = add nuw nsw i64 %280, 4294967295
  %282 = and i64 %281, 4294967295
  %283 = getelementptr inbounds float, ptr %180, i64 %282
  %284 = load float, ptr %283, align 4, !tbaa !96
  %285 = fmul float %279, %284
  store float %285, ptr %68, align 4, !tbaa !96
  %286 = add nsw i64 %280, -1
  %287 = getelementptr inbounds float, ptr %179, i64 %286
  %288 = load float, ptr %287, align 4, !tbaa !96
  %289 = fmul float %279, %288
  store float %289, ptr %69, align 4, !tbaa !96
  br label %291

290:                                              ; preds = %274
  store float 0.000000e+00, ptr %70, align 4, !tbaa !96
  store float 0.000000e+00, ptr %71, align 4, !tbaa !96
  br label %291

291:                                              ; preds = %290, %277
  %292 = icmp eq i8 %231, 0
  br i1 %292, label %306, label %293

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 12, i64 2
  %295 = load float, ptr %294, align 8, !tbaa !96
  %296 = zext i8 %231 to i64
  %297 = add nuw nsw i64 %296, 4294967295
  %298 = and i64 %297, 4294967295
  %299 = getelementptr inbounds float, ptr %180, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !96
  %301 = fmul float %295, %300
  store float %301, ptr %72, align 8, !tbaa !96
  %302 = add nsw i64 %296, -1
  %303 = getelementptr inbounds float, ptr %179, i64 %302
  %304 = load float, ptr %303, align 4, !tbaa !96
  %305 = fmul float %295, %304
  store float %305, ptr %73, align 8, !tbaa !96
  br label %307

306:                                              ; preds = %291
  store float 0.000000e+00, ptr %74, align 8, !tbaa !96
  store float 0.000000e+00, ptr %75, align 8, !tbaa !96
  br label %307

307:                                              ; preds = %257, %306, %293, %252
  %308 = getelementptr inbounds %struct.Tex, ptr %113, i64 0, i32 32
  %309 = load i16, ptr %308, align 8, !tbaa !63
  %310 = icmp eq i16 %309, 8
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  call fastcc void @do_2d_mapping(ptr noundef nonnull %109, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %312

312:                                              ; preds = %311, %307
  %313 = load i16, ptr %67, align 8, !tbaa !107
  %314 = sext i16 %313 to i32
  %315 = load i16, ptr %76, align 2, !tbaa !142
  %316 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 19
  %317 = load i16, ptr %316, align 2, !tbaa !83
  %318 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %319 = call fastcc i32 @multitex(ptr noundef nonnull %113, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %314, ptr noundef nonnull %6, i16 noundef signext %315, i16 noundef signext %317, ptr noundef %318)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %333, label %321

321:                                              ; preds = %312
  %322 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 14
  %323 = load i16, ptr %322, align 8, !tbaa !106
  %324 = and i16 %323, 1
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %321
  %327 = load float, ptr %77, align 4, !tbaa !96
  %328 = load float, ptr %78, align 8, !tbaa !96
  %329 = fmul float %328, 0x3FDCCCCCC0000000
  %330 = call float @llvm.fmuladd.f32(float %327, float 0x3FD6666660000000, float %329)
  %331 = load float, ptr %79, align 4, !tbaa !96
  %332 = call float @llvm.fmuladd.f32(float %331, float 0x3FC99999A0000000, float %330)
  store float %332, ptr %6, align 8, !tbaa !146
  br label %333

333:                                              ; preds = %326, %321, %312
  %334 = phi i1 [ true, %326 ], [ false, %321 ], [ true, %312 ]
  %335 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 14
  %336 = load i16, ptr %335, align 8, !tbaa !106
  %337 = and i16 %336, 4
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %350, label %339

339:                                              ; preds = %333
  br i1 %334, label %347, label %340

340:                                              ; preds = %339
  %341 = load float, ptr %80, align 4, !tbaa !143
  %342 = fsub float 1.000000e+00, %341
  store float %342, ptr %80, align 4, !tbaa !143
  %343 = load float, ptr %81, align 8, !tbaa !144
  %344 = fsub float 1.000000e+00, %343
  store float %344, ptr %81, align 8, !tbaa !144
  %345 = load float, ptr %82, align 4, !tbaa !145
  %346 = fsub float 1.000000e+00, %345
  store float %346, ptr %82, align 4, !tbaa !145
  br label %350

347:                                              ; preds = %339
  %348 = load float, ptr %6, align 8, !tbaa !146
  %349 = fsub float 1.000000e+00, %348
  store float %349, ptr %6, align 8, !tbaa !146
  br label %350

350:                                              ; preds = %340, %347, %333
  %351 = and i16 %336, 2
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %350
  br i1 %334, label %357, label %354

354:                                              ; preds = %353
  %355 = load float, ptr %83, align 8, !tbaa !163
  %356 = fmul float %106, %355
  store float %356, ptr %83, align 8, !tbaa !163
  br label %367

357:                                              ; preds = %353
  %358 = load float, ptr %6, align 8, !tbaa !146
  %359 = fmul float %106, %358
  store float %359, ptr %6, align 8, !tbaa !146
  br label %367

360:                                              ; preds = %350
  br i1 %334, label %364, label %361

361:                                              ; preds = %360
  %362 = load float, ptr %84, align 8, !tbaa !163
  %363 = fmul float %106, %362
  store float %363, ptr %84, align 8, !tbaa !163
  br label %367

364:                                              ; preds = %360
  %365 = load float, ptr %6, align 8, !tbaa !146
  %366 = fmul float %106, %365
  store float %366, ptr %6, align 8, !tbaa !146
  br label %367

367:                                              ; preds = %361, %364, %354, %357
  %368 = phi float [ %356, %354 ], [ %359, %357 ], [ %106, %361 ], [ %106, %364 ]
  %369 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 1
  %370 = load i16, ptr %369, align 2, !tbaa !87
  %371 = and i16 %370, 1
  %372 = icmp eq i16 %371, 0
  %373 = or i1 %86, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = and i16 %370, 2
  %376 = icmp eq i16 %375, 0
  %377 = or i1 %88, %376
  br i1 %377, label %431, label %378

378:                                              ; preds = %374, %367
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  br i1 %334, label %379, label %386

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 22
  %381 = load float, ptr %380, align 4, !tbaa !246
  store float %381, ptr %90, align 4, !tbaa !143
  %382 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 23
  %383 = load float, ptr %382, align 8, !tbaa !247
  store float %383, ptr %91, align 8, !tbaa !144
  %384 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 24
  %385 = load float, ptr %384, align 4, !tbaa !248
  store float %385, ptr %92, align 4, !tbaa !145
  br label %393

386:                                              ; preds = %378
  %387 = load i16, ptr %369, align 2, !tbaa !87
  %388 = and i16 %387, 128
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386
  store float %368, ptr %6, align 8, !tbaa !146
  br label %393

391:                                              ; preds = %386
  %392 = load float, ptr %89, align 8, !tbaa !163
  store float %392, ptr %6, align 8, !tbaa !146
  br label %393

393:                                              ; preds = %390, %391, %379
  %394 = load i16, ptr %308, align 8, !tbaa !63
  %395 = icmp eq i16 %394, 8
  br i1 %395, label %396, label %415

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.Tex, ptr %113, i64 0, i32 54
  %398 = load ptr, ptr %397, align 8, !tbaa !60
  %399 = getelementptr inbounds %struct.Tex, ptr %113, i64 0, i32 51
  %400 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %401 = call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %398, ptr noundef nonnull %399, ptr noundef %400) #10
  %402 = icmp eq ptr %401, null
  br i1 %402, label %413, label %403

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.ImBuf, ptr %401, i64 0, i32 9
  %405 = load ptr, ptr %404, align 8, !tbaa !88
  %406 = icmp eq ptr %405, null
  %407 = load i8, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 8), align 8
  %408 = icmp ne i8 %407, 0
  %409 = select i1 %406, i1 %408, i1 false
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = getelementptr inbounds %struct.ImBuf, ptr %401, i64 0, i32 34
  %412 = load ptr, ptr %411, align 8, !tbaa !91
  call void @IMB_colormanagement_colorspace_to_scene_linear_v3(ptr noundef nonnull %93, ptr noundef %412) #10
  br label %413

413:                                              ; preds = %410, %403, %396
  %414 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  call void @BKE_image_pool_release_ibuf(ptr noundef %398, ptr noundef %401, ptr noundef %414) #10
  br label %415

415:                                              ; preds = %413, %393
  %416 = load float, ptr %94, align 4, !tbaa !143
  %417 = load float, ptr %95, align 4, !tbaa !267
  %418 = fmul float %416, %417
  store float %418, ptr %11, align 4, !tbaa !96
  %419 = load float, ptr %96, align 8, !tbaa !144
  %420 = fmul float %417, %419
  store float %420, ptr %97, align 4, !tbaa !96
  %421 = load float, ptr %98, align 4, !tbaa !145
  %422 = fmul float %417, %421
  store float %422, ptr %99, align 4, !tbaa !96
  %423 = load float, ptr %6, align 8, !tbaa !146
  %424 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 3
  %425 = load i16, ptr %424, align 2, !tbaa !166
  %426 = sext i16 %425 to i32
  %427 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 28
  %428 = getelementptr inbounds %struct.MTex, ptr %109, i64 0, i32 61
  %429 = select i1 %101, ptr %427, ptr %428
  %430 = load float, ptr %429, align 4, !tbaa !96
  call void @texture_rgb_blend(ptr noundef %3, ptr noundef nonnull %11, ptr noundef %3, float noundef %423, float noundef %430, i32 noundef %426)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  br label %431

431:                                              ; preds = %102, %415, %374, %111
  %432 = phi ptr [ %107, %111 ], [ %179, %415 ], [ %179, %374 ], [ %107, %102 ]
  %433 = phi float [ %106, %111 ], [ %368, %415 ], [ %368, %374 ], [ %106, %102 ]
  %434 = phi ptr [ %105, %111 ], [ %180, %415 ], [ %180, %374 ], [ %105, %102 ]
  %435 = phi ptr [ %104, %111 ], [ %181, %415 ], [ %181, %374 ], [ %104, %102 ]
  %436 = add nuw nsw i64 %103, 1
  %437 = icmp eq i64 %436, 18
  br i1 %437, label %438, label %102, !llvm.loop !268

438:                                              ; preds = %431, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void
}

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @externtex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.TexResult, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %122, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 8, !tbaa !196
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !96
  br i1 %21, label %33, label %24

24:                                               ; preds = %17
  %25 = zext i8 %20 to i64
  %26 = add nuw nsw i64 %25, 4294967295
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds float, ptr %1, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !96
  %30 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11
  %31 = load float, ptr %30, align 4, !tbaa !96
  %32 = fadd float %29, %31
  br label %36

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11
  %35 = load float, ptr %34, align 4, !tbaa !96
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi float [ %35, %33 ], [ %32, %24 ]
  %38 = fmul float %23, %37
  store float %38, ptr %13, align 4, !tbaa !96
  %39 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  %40 = load i8, ptr %39, align 1, !tbaa !197
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !96
  br i1 %41, label %53, label %44

44:                                               ; preds = %36
  %45 = zext i8 %40 to i64
  %46 = add nuw nsw i64 %45, 4294967295
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds float, ptr %1, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !96
  %50 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !96
  %52 = fadd float %49, %51
  br label %56

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !96
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi float [ %55, %53 ], [ %52, %44 ]
  %58 = fmul float %43, %57
  %59 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %58, ptr %59, align 4, !tbaa !96
  %60 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  %61 = load i8, ptr %60, align 2, !tbaa !198
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 2
  %64 = load float, ptr %63, align 8, !tbaa !96
  br i1 %62, label %74, label %65

65:                                               ; preds = %56
  %66 = zext i8 %61 to i64
  %67 = add nuw nsw i64 %66, 4294967295
  %68 = and i64 %67, 4294967295
  %69 = getelementptr inbounds float, ptr %1, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !96
  %71 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !96
  %73 = fadd float %70, %72
  br label %77

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 11, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !96
  br label %77

77:                                               ; preds = %74, %65
  %78 = phi float [ %76, %74 ], [ %73, %65 ]
  %79 = fmul float %64, %78
  %80 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %79, ptr %80, align 4, !tbaa !96
  %81 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 32
  %82 = load i16, ptr %81, align 8, !tbaa !63
  %83 = icmp eq i16 %82, 8
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  call fastcc void @do_2d_mapping(ptr noundef %0, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %85

85:                                               ; preds = %84, %77
  %86 = trunc i32 %7 to i16
  %87 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 19
  %88 = load i16, ptr %87, align 2, !tbaa !83
  %89 = call fastcc i32 @multitex(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %10, i16 noundef signext %86, i16 noundef signext %88, ptr noundef %8)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !96
  %94 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 2
  %95 = load float, ptr %94, align 8, !tbaa !96
  %96 = fmul float %95, 0x3FDCCCCCC0000000
  %97 = call float @llvm.fmuladd.f32(float %93, float 0x3FD6666660000000, float %96)
  %98 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 3
  %99 = load float, ptr %98, align 4, !tbaa !96
  %100 = call float @llvm.fmuladd.f32(float %99, float 0x3FC99999A0000000, float %97)
  store float %100, ptr %10, align 8, !tbaa !146
  br label %111

101:                                              ; preds = %85
  %102 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 22
  %103 = load float, ptr %102, align 4, !tbaa !246
  %104 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 1
  store float %103, ptr %104, align 4, !tbaa !143
  %105 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 23
  %106 = load float, ptr %105, align 8, !tbaa !247
  %107 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 2
  store float %106, ptr %107, align 8, !tbaa !144
  %108 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 24
  %109 = load float, ptr %108, align 4, !tbaa !248
  %110 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 3
  store float %109, ptr %110, align 4, !tbaa !145
  br label %111

111:                                              ; preds = %101, %91
  %112 = load float, ptr %10, align 8, !tbaa !146
  store float %112, ptr %2, align 4, !tbaa !96
  %113 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !143
  store float %114, ptr %3, align 4, !tbaa !96
  %115 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 2
  %116 = load float, ptr %115, align 8, !tbaa !144
  store float %116, ptr %4, align 4, !tbaa !96
  %117 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 3
  %118 = load float, ptr %117, align 4, !tbaa !145
  store float %118, ptr %5, align 4, !tbaa !96
  %119 = getelementptr inbounds %struct.TexResult, ptr %10, i64 0, i32 4
  %120 = load float, ptr %119, align 8, !tbaa !163
  store float %120, ptr %6, align 4, !tbaa !96
  %121 = zext i1 %90 to i32
  br label %122

122:                                              ; preds = %9, %111
  %123 = phi i32 [ %121, %111 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define dso_local void @render_realtime_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.TexResult, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 76
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9
  %11 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !100
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %2
  %15 = load i1, ptr @render_realtime_texture.firsttime, align 4
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  tail call void @BLI_lock_thread(i32 noundef 0) #10
  %17 = load i1, ptr @render_realtime_texture.firsttime, align 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) @render_realtime_texture.imatex, i8 0, i64 416, i1 false)
  tail call void @default_tex(ptr noundef nonnull @render_realtime_texture.imatex) #10
  store i16 8, ptr getelementptr inbounds ([1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 0, i32 32), align 8, !tbaa !63
  store i1 true, ptr @render_realtime_texture.firsttime, align 4
  br label %19

19:                                               ; preds = %18, %16
  tail call void @BLI_unlock_thread(i32 noundef 0) #10
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %22 = load i16, ptr %21, align 2, !tbaa !142
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 9
  %26 = load i16, ptr %25, align 4, !tbaa !269
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23, i32 51, i32 7
  store i8 %27, ptr %28, align 2, !tbaa !272
  %29 = getelementptr inbounds [1 x %struct.Tex], ptr @render_realtime_texture.imatex, i64 0, i64 %23, i32 54
  store ptr %1, ptr %29, align 16, !tbaa !60
  %30 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 2
  %31 = load float, ptr %30, align 8, !tbaa !96
  %32 = tail call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float 5.000000e-01)
  store float %32, ptr %4, align 4, !tbaa !96
  %33 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !96
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 5.000000e-01, float 5.000000e-01)
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %35, ptr %36, align 4, !tbaa !96
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !96
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 15
  %39 = load i16, ptr %38, align 8, !tbaa !107
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %20
  %42 = load float, ptr %10, align 8, !tbaa !96
  %43 = fmul float %42, 5.000000e-01
  store float %43, ptr %5, align 4, !tbaa !96
  %44 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !96
  %46 = fmul float %45, 5.000000e-01
  %47 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !96
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !96
  %50 = fmul float %49, 5.000000e-01
  store float %50, ptr %6, align 4, !tbaa !96
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 72, i64 %9, i32 1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !96
  %53 = fmul float %52, 5.000000e-01
  %54 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %53, ptr %54, align 4, !tbaa !96
  %55 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 6
  store ptr null, ptr %55, align 8, !tbaa !134
  %56 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %57 = call i32 @imagewraposa(ptr noundef nonnull %24, ptr noundef %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %56) #10
  br label %62

58:                                               ; preds = %20
  %59 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 6
  store ptr null, ptr %59, align 8, !tbaa !134
  %60 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 100), align 8, !tbaa !136
  %61 = call i32 @imagewrap(ptr noundef nonnull %24, ptr noundef %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %60) #10
  br label %62

62:                                               ; preds = %58, %41
  %63 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %64 = load float, ptr %63, align 4, !tbaa !143
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61
  %66 = load float, ptr %65, align 8, !tbaa !96
  %67 = fmul float %64, %66
  store float %67, ptr %65, align 8, !tbaa !96
  %68 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !144
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !96
  %72 = fmul float %69, %71
  store float %72, ptr %70, align 4, !tbaa !96
  %73 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %74 = load float, ptr %73, align 4, !tbaa !145
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 2
  %76 = load float, ptr %75, align 8, !tbaa !96
  %77 = fmul float %74, %76
  store float %77, ptr %75, align 8, !tbaa !96
  %78 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 4
  %79 = load float, ptr %78, align 8, !tbaa !163
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 61, i64 3
  %81 = load float, ptr %80, align 4, !tbaa !96
  %82 = fmul float %79, %81
  store float %82, ptr %80, align 4, !tbaa !96
  br label %83

83:                                               ; preds = %2, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret void
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #1

declare void @default_tex(ptr noundef) local_unnamed_addr #1

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #1

declare i32 @imagewraposa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @imagewrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_init_sample_material(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.Render, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @localize_material(ptr noundef nonnull %0) #10
  %7 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !273
  %9 = tail call float @BKE_scene_frame_get(ptr noundef %1) #10
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %6, ptr noundef %8, float noundef %9, i16 noundef signext 2) #10
  %10 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 73
  %11 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 2
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %13 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 44
  %14 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 33
  %15 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 32
  %16 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 35
  %17 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 14
  %18 = getelementptr inbounds %struct.Render, ptr %3, i64 0, i32 13
  %19 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %20

20:                                               ; preds = %5, %87
  %21 = phi i64 [ 0, %5 ], [ %88, %87 ]
  %22 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 102, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %87, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  store ptr null, ptr %26, align 8, !tbaa !93
  %28 = load i32, ptr %10, align 8, !tbaa !102
  %29 = trunc i64 %21 to i32
  %30 = shl nuw nsw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = icmp ne ptr %27, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %87

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 14
  %37 = load i16, ptr %36, align 8, !tbaa !106
  %38 = and i16 %37, 15
  store i16 %38, ptr %36, align 8, !tbaa !106
  %39 = load i16, ptr %11, align 8, !tbaa !274
  switch i16 %39, label %51 [
    i16 0, label %40
    i16 2, label %43
  ]

40:                                               ; preds = %35
  %41 = load i16, ptr %23, align 8, !tbaa !95
  switch i16 %41, label %42 [
    i16 1, label %46
    i16 32, label %46
    i16 8, label %46
    i16 16, label %46
  ]

42:                                               ; preds = %40
  store i16 0, ptr %23, align 8, !tbaa !95
  br label %87

43:                                               ; preds = %35
  %44 = load i16, ptr %23, align 8, !tbaa !95
  switch i16 %44, label %45 [
    i16 32, label %46
    i16 1, label %46
    i16 8, label %46
  ]

45:                                               ; preds = %43
  store i16 0, ptr %23, align 8, !tbaa !95
  br label %87

46:                                               ; preds = %43, %43, %43, %40, %40, %40, %40
  %47 = phi i16 [ 129, %40 ], [ 129, %40 ], [ 129, %40 ], [ 129, %40 ], [ 140, %43 ], [ 140, %43 ], [ 140, %43 ]
  %48 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !87
  %50 = and i16 %49, %47
  store i16 %50, ptr %48, align 2, !tbaa !87
  br label %51

51:                                               ; preds = %46, %35
  %52 = load i16, ptr %23, align 8, !tbaa !95
  %53 = icmp eq i16 %52, 32
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 50
  %60 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 47
  %61 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %59, ptr noundef nonnull %60) #10
  %62 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 51
  call void @copy_m4_m4(ptr noundef nonnull %62, ptr noundef nonnull %59) #10
  br label %63

63:                                               ; preds = %54, %58, %51
  %64 = call ptr @localize_texture(ptr noundef nonnull %27) #10
  store ptr %64, ptr %26, align 8, !tbaa !93
  %65 = getelementptr inbounds %struct.Tex, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !275
  %67 = call float @BKE_scene_frame_get(ptr noundef %1) #10
  call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %64, ptr noundef %66, float noundef %67, i16 noundef signext 2) #10
  %68 = getelementptr inbounds %struct.Tex, ptr %64, i64 0, i32 32
  %69 = load i16, ptr %68, align 8, !tbaa !63
  %70 = icmp eq i16 %69, 15
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, ptr %12, align 8, !tbaa !276
  call void @cache_voxeldata(ptr noundef %64, i32 noundef %72) #10
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i16, ptr %68, align 8, !tbaa !63
  %75 = icmp eq i16 %74, 14
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 6240, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) %3, i8 0, i64 6240, i1 false)
  store ptr %1, ptr %13, align 8, !tbaa !285
  call void @unit_m4(ptr noundef nonnull %14) #10
  call void @unit_m4(ptr noundef nonnull %15) #10
  call void @unit_m4(ptr noundef nonnull %16) #10
  store i32 128, ptr %17, align 8, !tbaa !286
  store i32 128, ptr %18, align 4, !tbaa !287
  call void @cache_pointdensity(ptr noundef nonnull %3, ptr noundef %64) #10
  call void @llvm.lifetime.end.p0(i64 6240, ptr nonnull %3) #10
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds %struct.Tex, ptr %64, i64 0, i32 54
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %79) #10
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.Tex, ptr %64, i64 0, i32 51
  %86 = load i32, ptr %19, align 8, !tbaa !276
  call void @BKE_image_user_check_frame_calc(ptr noundef nonnull %85, i32 noundef %86, i32 noundef 0) #10
  br label %87

87:                                               ; preds = %42, %45, %25, %84, %81, %77, %20
  %88 = add nuw nsw i64 %21, 1
  %89 = icmp eq i64 %88, 18
  br i1 %89, label %90, label %20, !llvm.loop !288

90:                                               ; preds = %87, %2
  %91 = phi ptr [ null, %2 ], [ %6, %87 ]
  ret ptr %91
}

declare ptr @localize_material(ptr noundef) local_unnamed_addr #1

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #1

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @localize_texture(ptr noundef) local_unnamed_addr #1

declare void @cache_voxeldata(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare void @cache_pointdensity(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #1

declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_free_sample_material(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  br label %3

3:                                                ; preds = %1, %21
  %4 = phi i64 [ 0, %1 ], [ %22, %21 ]
  %5 = load i32, ptr %2, align 8, !tbaa !102
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
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  tail call void @BKE_texture_free(ptr noundef nonnull %16) #10
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = load ptr, ptr %15, align 8, !tbaa !93
  tail call void %19(ptr noundef %20) #10
  store ptr null, ptr %15, align 8, !tbaa !93
  br label %21

21:                                               ; preds = %14, %18, %10, %3
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 18
  br i1 %23, label %24, label %3, !llvm.loop !289

24:                                               ; preds = %21
  tail call void @BKE_material_free_ex(ptr noundef %0, i8 noundef zeroext 0) #10
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %0) #10
  ret void
}

declare void @BKE_texture_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_material_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RE_sample_material_color(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i16 noundef signext %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.ShadeInput, align 8
  %12 = alloca %struct.Render, align 8
  %13 = alloca %struct.ObjectInstanceRen, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %11, i8 0, i64 1472, i1 false)
  call void @llvm.lifetime.start.p0(i64 6240, ptr nonnull %12) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) %12, i8 0, i64 6240, i1 false)
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 31
  %15 = load ptr, ptr %14, align 8, !tbaa !290
  %16 = tail call ptr %15(ptr noundef %7) #10
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 33
  %18 = load ptr, ptr %17, align 8, !tbaa !291
  %19 = tail call ptr %18(ptr noundef %7) #10
  %20 = icmp ne ptr %16, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp ne ptr %0, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %308

25:                                               ; preds = %9
  %26 = sext i32 %5 to i64
  %27 = getelementptr inbounds %struct.MFace, ptr %19, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !292
  %29 = getelementptr inbounds %struct.MFace, ptr %19, i64 %26, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !294
  %31 = getelementptr inbounds %struct.MFace, ptr %19, i64 %26, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !295
  %33 = icmp eq i16 %6, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.MFace, ptr %19, i64 %26, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !296
  br label %37

37:                                               ; preds = %34, %25
  %38 = phi i32 [ %36, %34 ], [ %32, %25 ]
  %39 = phi i32 [ %32, %34 ], [ %30, %25 ]
  %40 = sext i32 %28 to i64
  %41 = getelementptr inbounds %struct.MVert, ptr %16, i64 %40
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds %struct.MVert, ptr %16, i64 %42
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %16, i64 %44
  %46 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef nonnull %41, ptr noundef nonnull %43, ptr noundef nonnull %45) #10
  store ptr %0, ptr %11, align 8, !tbaa !101
  %47 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !274
  switch i16 %48, label %308 [
    i16 0, label %49
    i16 2, label %294
  ]

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 57
  %51 = load float, ptr %4, align 4, !tbaa !96
  store float %51, ptr %50, align 8, !tbaa !96
  %52 = getelementptr inbounds float, ptr %4, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !96
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 57, i64 1
  store float %53, ptr %54, align 4, !tbaa !96
  %55 = getelementptr inbounds float, ptr %4, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !96
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 57, i64 2
  store float %56, ptr %57, align 8, !tbaa !96
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 29
  store float %51, ptr %58, align 8, !tbaa !96
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 29, i64 1
  store float %53, ptr %59, align 4, !tbaa !96
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 29, i64 2
  store float %56, ptr %60, align 8, !tbaa !96
  %61 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %61, ptr noundef nonnull %58) #10
  %62 = load float, ptr %10, align 4, !tbaa !96
  %63 = call float @llvm.fabs.f32(float %62)
  %64 = getelementptr inbounds float, ptr %10, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !96
  %66 = call float @llvm.fabs.f32(float %65)
  %67 = getelementptr inbounds float, ptr %10, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !96
  %69 = call float @llvm.fabs.f32(float %68)
  %70 = fcmp ult float %69, %63
  %71 = fcmp ult float %69, %66
  %72 = select i1 %70, i1 true, i1 %71
  %73 = fcmp ult float %66, %63
  %74 = fcmp ult float %66, %69
  %75 = or i1 %73, %74
  %76 = select i1 %72, i1 %75, i1 false
  %77 = zext i1 %76 to i64
  %78 = getelementptr inbounds float, ptr %45, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !96
  %80 = getelementptr inbounds float, ptr %41, i64 %77
  %81 = load float, ptr %80, align 4, !tbaa !96
  %82 = fsub float %79, %81
  %83 = select i1 %72, i64 2, i64 1
  %84 = getelementptr inbounds float, ptr %45, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !96
  %86 = getelementptr inbounds float, ptr %41, i64 %83
  %87 = load float, ptr %86, align 4, !tbaa !96
  %88 = fsub float %85, %87
  %89 = getelementptr inbounds float, ptr %43, i64 %77
  %90 = load float, ptr %89, align 4, !tbaa !96
  %91 = fsub float %79, %90
  %92 = getelementptr inbounds float, ptr %43, i64 %83
  %93 = load float, ptr %92, align 4, !tbaa !96
  %94 = fsub float %85, %93
  %95 = fneg float %91
  %96 = fmul float %88, %95
  %97 = call float @llvm.fmuladd.f32(float %82, float %94, float %96)
  %98 = fdiv float 1.000000e+00, %97
  %99 = fmul float %82, %98
  %100 = fmul float %88, %98
  %101 = fmul float %91, %98
  %102 = fmul float %94, %98
  %103 = getelementptr inbounds float, ptr %58, i64 %77
  %104 = load float, ptr %103, align 4, !tbaa !96
  %105 = fsub float %104, %79
  %106 = getelementptr inbounds float, ptr %58, i64 %83
  %107 = load float, ptr %106, align 4, !tbaa !96
  %108 = fsub float %107, %85
  %109 = fneg float %108
  %110 = fmul float %101, %109
  %111 = call float @llvm.fmuladd.f32(float %105, float %102, float %110)
  %112 = fneg float %105
  %113 = fmul float %100, %112
  %114 = call float @llvm.fmuladd.f32(float %108, float %99, float %113)
  %115 = fcmp olt float %111, -2.000000e+00
  br i1 %115, label %119, label %116

116:                                              ; preds = %49
  %117 = fcmp ogt float %111, 1.000000e+00
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %49, %118, %116
  %120 = phi float [ 1.000000e+00, %118 ], [ %111, %116 ], [ -2.000000e+00, %49 ]
  %121 = fcmp olt float %114, -2.000000e+00
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = fcmp ogt float %114, 1.000000e+00
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %119, %122, %124
  %126 = phi float [ 1.000000e+00, %124 ], [ %114, %122 ], [ -2.000000e+00, %119 ]
  %127 = fadd float %120, 1.000000e+00
  %128 = fadd float %127, %126
  %129 = load float, ptr %45, align 4, !tbaa !96
  %130 = load float, ptr %41, align 4, !tbaa !96
  %131 = fneg float %120
  %132 = fmul float %130, %131
  %133 = call float @llvm.fmuladd.f32(float %128, float %129, float %132)
  %134 = load float, ptr %43, align 4, !tbaa !96
  %135 = fneg float %126
  %136 = call float @llvm.fmuladd.f32(float %135, float %134, float %133)
  %137 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 56
  store float %136, ptr %137, align 4, !tbaa !96
  %138 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !96
  %140 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !96
  %142 = fmul float %141, %131
  %143 = call float @llvm.fmuladd.f32(float %128, float %139, float %142)
  %144 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 1
  %145 = load float, ptr %144, align 4, !tbaa !96
  %146 = call float @llvm.fmuladd.f32(float %135, float %145, float %143)
  %147 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 56, i64 1
  store float %146, ptr %147, align 8, !tbaa !96
  %148 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 2
  %149 = load float, ptr %148, align 4, !tbaa !96
  %150 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !96
  %152 = fmul float %151, %131
  %153 = call float @llvm.fmuladd.f32(float %128, float %149, float %152)
  %154 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !96
  %156 = call float @llvm.fmuladd.f32(float %135, float %155, float %153)
  %157 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 56, i64 2
  store float %156, ptr %157, align 4, !tbaa !96
  %158 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 2
  %159 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %158, i32 noundef 5) #10
  %160 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %158, i32 noundef 5) #10
  %161 = icmp sgt i32 %159, 0
  br i1 %161, label %162, label %271

162:                                              ; preds = %125
  %163 = icmp sgt i32 %160, -1
  %164 = load float, ptr %10, align 4
  %165 = call float @llvm.fabs.f32(float %164)
  %166 = load float, ptr %64, align 4
  %167 = call float @llvm.fabs.f32(float %166)
  %168 = load float, ptr %67, align 4
  %169 = call float @llvm.fabs.f32(float %168)
  %170 = fcmp ult float %169, %165
  %171 = fcmp ult float %169, %167
  %172 = select i1 %170, i1 true, i1 %171
  %173 = fcmp ult float %167, %165
  %174 = fcmp ult float %167, %169
  %175 = or i1 %173, %174
  %176 = select i1 %172, i1 %175, i1 false
  %177 = zext i1 %176 to i64
  %178 = getelementptr inbounds float, ptr %45, i64 %177
  %179 = getelementptr inbounds float, ptr %41, i64 %177
  %180 = select i1 %172, i64 2, i64 1
  %181 = getelementptr inbounds float, ptr %45, i64 %180
  %182 = getelementptr inbounds float, ptr %41, i64 %180
  %183 = getelementptr inbounds float, ptr %43, i64 %177
  %184 = getelementptr inbounds float, ptr %43, i64 %180
  %185 = getelementptr inbounds float, ptr %58, i64 %177
  %186 = getelementptr inbounds float, ptr %58, i64 %180
  %187 = zext i32 %160 to i64
  %188 = zext nneg i32 %159 to i64
  br label %189

189:                                              ; preds = %162, %268
  %190 = phi i64 [ 0, %162 ], [ %269, %268 ]
  br i1 %163, label %191, label %268

191:                                              ; preds = %189
  %192 = load ptr, ptr %158, align 8, !tbaa !297
  %193 = add nuw nsw i64 %190, %187
  %194 = getelementptr inbounds %struct.CustomDataLayer, ptr %192, i64 %193, i32 9
  %195 = load ptr, ptr %194, align 8, !tbaa !298
  %196 = getelementptr inbounds %struct.CustomDataLayer, ptr %192, i64 %190, i32 8
  %197 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 72, i64 %190, i32 3
  store ptr %196, ptr %197, align 8, !tbaa !114
  %198 = load float, ptr %178, align 4, !tbaa !96
  %199 = load float, ptr %179, align 4, !tbaa !96
  %200 = fsub float %198, %199
  %201 = load float, ptr %181, align 4, !tbaa !96
  %202 = load float, ptr %182, align 4, !tbaa !96
  %203 = fsub float %201, %202
  %204 = load float, ptr %183, align 4, !tbaa !96
  %205 = fsub float %198, %204
  %206 = load float, ptr %184, align 4, !tbaa !96
  %207 = fsub float %201, %206
  %208 = fneg float %205
  %209 = fmul float %203, %208
  %210 = call float @llvm.fmuladd.f32(float %200, float %207, float %209)
  %211 = fdiv float 1.000000e+00, %210
  %212 = fmul float %200, %211
  %213 = fmul float %203, %211
  %214 = fmul float %205, %211
  %215 = fmul float %207, %211
  %216 = load float, ptr %185, align 4, !tbaa !96
  %217 = fsub float %216, %198
  %218 = load float, ptr %186, align 4, !tbaa !96
  %219 = fsub float %218, %201
  %220 = fneg float %219
  %221 = fmul float %214, %220
  %222 = call float @llvm.fmuladd.f32(float %217, float %215, float %221)
  %223 = fneg float %217
  %224 = fmul float %213, %223
  %225 = call float @llvm.fmuladd.f32(float %219, float %212, float %224)
  %226 = fcmp olt float %222, -2.000000e+00
  br i1 %226, label %230, label %227

227:                                              ; preds = %191
  %228 = fcmp ogt float %222, 1.000000e+00
  br i1 %228, label %229, label %230

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %191, %229, %227
  %231 = phi float [ 1.000000e+00, %229 ], [ %222, %227 ], [ -2.000000e+00, %191 ]
  %232 = fcmp olt float %225, -2.000000e+00
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = fcmp ogt float %225, 1.000000e+00
  br i1 %234, label %235, label %236

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %230, %233, %235
  %237 = phi float [ 1.000000e+00, %235 ], [ %225, %233 ], [ -2.000000e+00, %230 ]
  %238 = fadd float %231, 1.000000e+00
  %239 = fadd float %238, %237
  %240 = getelementptr inbounds %struct.MTFace, ptr %195, i64 %26
  %241 = getelementptr inbounds [4 x [2 x float]], ptr %240, i64 0, i64 2
  %242 = getelementptr inbounds [4 x [2 x float]], ptr %240, i64 0, i64 1
  %243 = select i1 %33, ptr %242, ptr %241
  %244 = getelementptr inbounds [4 x [2 x float]], ptr %240, i64 0, i64 3
  %245 = select i1 %33, ptr %241, ptr %244
  %246 = load float, ptr %245, align 4, !tbaa !96
  %247 = load float, ptr %240, align 4, !tbaa !96
  %248 = fneg float %231
  %249 = fmul float %247, %248
  %250 = call float @llvm.fmuladd.f32(float %239, float %246, float %249)
  %251 = load float, ptr %243, align 4, !tbaa !96
  %252 = fneg float %237
  %253 = call float @llvm.fmuladd.f32(float %252, float %251, float %250)
  %254 = call float @llvm.fmuladd.f32(float %253, float 2.000000e+00, float -1.000000e+00)
  %255 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 72, i64 %190, i32 2
  store float %254, ptr %255, align 8, !tbaa !96
  %256 = getelementptr inbounds float, ptr %245, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !96
  %258 = getelementptr inbounds float, ptr %240, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !96
  %260 = fmul float %259, %248
  %261 = call float @llvm.fmuladd.f32(float %239, float %257, float %260)
  %262 = getelementptr inbounds float, ptr %243, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !96
  %264 = call float @llvm.fmuladd.f32(float %252, float %263, float %261)
  %265 = call float @llvm.fmuladd.f32(float %264, float 2.000000e+00, float -1.000000e+00)
  %266 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 72, i64 %190, i32 2, i64 1
  store float %265, ptr %266, align 4, !tbaa !96
  %267 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 72, i64 %190, i32 2, i64 2
  store float 0.000000e+00, ptr %267, align 8, !tbaa !96
  br label %268

268:                                              ; preds = %189, %236
  %269 = add nuw nsw i64 %190, 1
  %270 = icmp eq i64 %269, %188
  br i1 %270, label %271, label %189, !llvm.loop !300

271:                                              ; preds = %268, %125
  %272 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %158, i32 noundef 5) #10
  %273 = sub nsw i32 %272, %160
  %274 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 76
  store i32 %273, ptr %274, align 8, !tbaa !111
  %275 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 74
  store i32 %159, ptr %275, align 8, !tbaa !113
  %276 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 4
  %277 = load float, ptr %276, align 4, !tbaa !301
  %278 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 32
  store float %277, ptr %278, align 4, !tbaa !302
  %279 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 5
  %280 = load float, ptr %279, align 8, !tbaa !303
  %281 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 33
  store float %280, ptr %281, align 8, !tbaa !304
  %282 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 6
  %283 = load float, ptr %282, align 4, !tbaa !305
  %284 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 34
  store float %283, ptr %284, align 4, !tbaa !306
  %285 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 21
  %286 = load float, ptr %285, align 8, !tbaa !307
  %287 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 49
  store float %286, ptr %287, align 8, !tbaa !180
  call void @do_material_tex(ptr noundef nonnull %11, ptr noundef nonnull %12)
  %288 = load float, ptr %278, align 4, !tbaa !302
  store float %288, ptr %1, align 4, !tbaa !96
  %289 = load float, ptr %281, align 8, !tbaa !304
  %290 = getelementptr inbounds float, ptr %1, i64 1
  store float %289, ptr %290, align 4, !tbaa !96
  %291 = load float, ptr %284, align 4, !tbaa !306
  %292 = getelementptr inbounds float, ptr %1, i64 2
  store float %291, ptr %292, align 4, !tbaa !96
  %293 = load float, ptr %287, align 8, !tbaa !180
  store float %293, ptr %2, align 4, !tbaa !96
  br label %308

294:                                              ; preds = %37
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %13) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %13, i8 0, i64 288, i1 false)
  %295 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %13, i64 0, i32 3
  store ptr %8, ptr %295, align 8, !tbaa !201
  %296 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 3
  store ptr %13, ptr %296, align 8, !tbaa !108
  %297 = getelementptr inbounds %struct.Render, ptr %12, i64 0, i32 33
  call void @unit_m4(ptr noundef nonnull %297) #10
  %298 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27
  %299 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6
  %300 = load float, ptr %299, align 4, !tbaa !96
  store float %300, ptr %1, align 4, !tbaa !96
  %301 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !96
  %303 = getelementptr inbounds float, ptr %1, i64 1
  store float %302, ptr %303, align 4, !tbaa !96
  %304 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 27, i32 6, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !96
  %306 = getelementptr inbounds float, ptr %1, i64 2
  store float %305, ptr %306, align 4, !tbaa !96
  %307 = load float, ptr %298, align 8, !tbaa !308
  store float %307, ptr %2, align 4, !tbaa !96
  call void @do_volume_tex(ptr noundef nonnull %11, ptr noundef %3, i32 noundef 140, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %13) #10
  br label %308

308:                                              ; preds = %271, %294, %37, %9
  call void @llvm.lifetime.end.p0(i64 6240, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  ret void
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_free_envmapdata(ptr noundef) local_unnamed_addr #1

declare ptr @ntreeTexBeginExecTree(ptr noundef) local_unnamed_addr #1

declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #1

declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @vlr_set_uv_indices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_transposed_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare i32 @ntreeTexExecTree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, i16 noundef signext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_image_tag_time(ptr noundef) local_unnamed_addr #1

declare i32 @envmaptex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pointdensitytex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @voxeldatatex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ocean_texture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @tex_normal_derivate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %5 = load i16, ptr %4, align 2, !tbaa !138
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %10 = load ptr, ptr %9, align 8, !tbaa !240
  %11 = load float, ptr %1, align 8, !tbaa !146
  %12 = call zeroext i8 @do_colorband(ptr noundef %10, float noundef %11, ptr noundef nonnull %3) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %8
  %15 = load float, ptr %3, align 16, !tbaa !96
  %16 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !96
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !96
  %21 = fadd float %18, %20
  %22 = load ptr, ptr %9, align 8, !tbaa !240
  %23 = getelementptr inbounds %struct.TexResult, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  %25 = load float, ptr %24, align 4, !tbaa !96
  %26 = call zeroext i8 @do_colorband(ptr noundef %22, float noundef %25, ptr noundef nonnull %3) #10
  %27 = load float, ptr %3, align 16, !tbaa !96
  %28 = load float, ptr %16, align 4, !tbaa !96
  %29 = fadd float %27, %28
  %30 = load float, ptr %19, align 8, !tbaa !96
  %31 = fadd float %29, %30
  %32 = load ptr, ptr %9, align 8, !tbaa !240
  %33 = load ptr, ptr %23, align 8, !tbaa !134
  %34 = getelementptr inbounds float, ptr %33, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !96
  %36 = call zeroext i8 @do_colorband(ptr noundef %32, float noundef %35, ptr noundef nonnull %3) #10
  %37 = load float, ptr %3, align 16, !tbaa !96
  %38 = load float, ptr %16, align 4, !tbaa !96
  %39 = fadd float %37, %38
  %40 = load float, ptr %19, align 8, !tbaa !96
  %41 = fadd float %39, %40
  %42 = load ptr, ptr %9, align 8, !tbaa !240
  %43 = load ptr, ptr %23, align 8, !tbaa !134
  %44 = getelementptr inbounds float, ptr %43, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !96
  %46 = call zeroext i8 @do_colorband(ptr noundef %42, float noundef %45, ptr noundef nonnull %3) #10
  %47 = load float, ptr %3, align 16, !tbaa !96
  %48 = load float, ptr %16, align 4, !tbaa !96
  %49 = fadd float %47, %48
  %50 = load float, ptr %19, align 8, !tbaa !96
  %51 = fadd float %49, %50
  %52 = fsub float %21, %31
  %53 = fdiv float %52, 3.000000e+00
  %54 = load ptr, ptr %23, align 8, !tbaa !134
  store float %53, ptr %54, align 4, !tbaa !96
  %55 = fsub float %21, %41
  %56 = fdiv float %55, 3.000000e+00
  %57 = getelementptr inbounds float, ptr %54, i64 1
  store float %56, ptr %57, align 4, !tbaa !96
  %58 = fsub float %21, %51
  %59 = fdiv float %58, 3.000000e+00
  %60 = getelementptr inbounds float, ptr %54, i64 2
  store float %59, ptr %60, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %76

61:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %62

62:                                               ; preds = %61, %2
  %63 = load float, ptr %1, align 8, !tbaa !146
  %64 = getelementptr inbounds %struct.TexResult, ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !134
  %66 = load float, ptr %65, align 4, !tbaa !96
  %67 = fsub float %63, %66
  store float %67, ptr %65, align 4, !tbaa !96
  %68 = load float, ptr %1, align 8, !tbaa !146
  %69 = getelementptr inbounds float, ptr %65, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !96
  %71 = fsub float %68, %70
  store float %71, ptr %69, align 4, !tbaa !96
  %72 = load float, ptr %1, align 8, !tbaa !146
  %73 = getelementptr inbounds float, ptr %65, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !96
  %75 = fsub float %72, %74
  store float %75, ptr %73, align 4, !tbaa !96
  br label %76

76:                                               ; preds = %14, %62
  ret void
}

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc float @wood_int(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x ptr], align 16
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !221
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  %9 = load i16, ptr %8, align 2, !tbaa !214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
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
  %21 = tail call float %17(float noundef %20) #10
  br label %76

22:                                               ; preds = %4
  %23 = sext i16 %13 to i64
  %24 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = fmul float %2, %2
  %27 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %26)
  %28 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %27)
  %29 = tail call float @sqrtf(float noundef %28) #10
  %30 = fmul float %29, 2.000000e+01
  %31 = tail call float %25(float noundef %30) #10
  br label %76

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !222
  %35 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !209
  %37 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %38 = load i16, ptr %37, align 2, !tbaa !211
  %39 = icmp ne i16 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %42 = load i16, ptr %41, align 8, !tbaa !212
  %43 = sext i16 %42 to i32
  %44 = tail call float @BLI_gNoise(float noundef %36, float noundef %1, float noundef %2, float noundef %3, i32 noundef %40, i32 noundef %43) #10
  %45 = fmul float %34, %44
  %46 = sext i16 %13 to i64
  %47 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = fadd float %1, %2
  %50 = fadd float %49, %3
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 1.000000e+01, float %45)
  %52 = tail call float %48(float noundef %51) #10
  br label %76

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !222
  %56 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !209
  %58 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 27
  %59 = load i16, ptr %58, align 2, !tbaa !211
  %60 = icmp ne i16 %59, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  %63 = load i16, ptr %62, align 8, !tbaa !212
  %64 = sext i16 %63 to i32
  %65 = tail call float @BLI_gNoise(float noundef %57, float noundef %1, float noundef %2, float noundef %3, i32 noundef %61, i32 noundef %64) #10
  %66 = fmul float %55, %65
  %67 = sext i16 %13 to i64
  %68 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = fmul float %2, %2
  %71 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %71)
  %73 = tail call float @sqrtf(float noundef %72) #10
  %74 = tail call float @llvm.fmuladd.f32(float %73, float 2.000000e+01, float %66)
  %75 = tail call float %69(float noundef %74) #10
  br label %76

76:                                               ; preds = %4, %22, %53, %32, %14
  %77 = phi float [ %21, %14 ], [ %31, %22 ], [ %52, %32 ], [ %75, %53 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret float %77
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @tex_sin(float noundef %0) #8 {
  %2 = tail call float @sinf(float noundef %0) #10
  %3 = fpext float %2 to double
  %4 = tail call double @llvm.fmuladd.f64(double %3, double 5.000000e-01, double 5.000000e-01)
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @tex_saw(float noundef %0) #4 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @tex_tri(float noundef %0) #4 {
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FC45F3060000000, float 5.000000e-01)
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fneg float %0
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FC45F3060000000, float %3)
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = tail call float @llvm.fmuladd.f32(float %6, float -2.000000e+00, float 1.000000e+00)
  ret float %7
}

declare float @BLI_gNoise(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @BLI_rng_thread_rand(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @mg_MultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare float @mg_fBm(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare float @mg_RidgedMultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare float @mg_HybridMultiFractal(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare float @mg_HeteroTerrain(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @voronoi(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @cellNoiseV(float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare float @mg_VLNoise(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @cubemap(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) @__const.cubemap.proj, i64 16, i1 false)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %147, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 6
  %16 = load i8, ptr %15, align 8, !tbaa !309
  %17 = and i8 %16, 112
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !311
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.VertRen, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !312
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %27 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !314
  %29 = getelementptr inbounds %struct.VertRen, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !312
  %31 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !315
  %33 = getelementptr inbounds %struct.VertRen, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !312
  %35 = call float @normal_tri_v3(ptr noundef nonnull %12, ptr noundef nonnull %24, ptr noundef %30, ptr noundef %34) #10
  %36 = load float, ptr %12, align 4, !tbaa !96
  %37 = call float @llvm.fabs.f32(float %36)
  %38 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !96
  %40 = call float @llvm.fabs.f32(float %39)
  %41 = fcmp olt float %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %26
  %43 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !96
  %45 = call float @llvm.fabs.f32(float %44)
  %46 = fcmp olt float %45, %40
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8, ptr %15, align 8, !tbaa !309
  %49 = or i8 %48, 16
  br label %62

50:                                               ; preds = %42, %26
  %51 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !96
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = fcmp olt float %37, %53
  %55 = fcmp olt float %40, %53
  %56 = and i1 %54, %55
  %57 = load i8, ptr %15, align 8, !tbaa !309
  br i1 %56, label %58, label %60

58:                                               ; preds = %50
  %59 = or i8 %57, 32
  br label %62

60:                                               ; preds = %50
  %61 = or i8 %57, 64
  br label %62

62:                                               ; preds = %58, %60, %47
  %63 = phi i8 [ %59, %58 ], [ %61, %60 ], [ %49, %47 ]
  store i8 %63, ptr %15, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  br label %107

64:                                               ; preds = %22, %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %65 = icmp eq ptr %2, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  store float %3, ptr %10, align 4, !tbaa !96
  %67 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %4, ptr %67, align 4, !tbaa !96
  %68 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %5, ptr %68, align 4, !tbaa !96
  br label %77

69:                                               ; preds = %64
  %70 = load float, ptr %2, align 4, !tbaa !96
  store float %70, ptr %10, align 4, !tbaa !96
  %71 = getelementptr inbounds float, ptr %2, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !96
  %73 = getelementptr inbounds float, ptr %10, i64 1
  store float %72, ptr %73, align 4, !tbaa !96
  %74 = getelementptr inbounds float, ptr %2, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !96
  %76 = getelementptr inbounds float, ptr %10, i64 2
  store float %75, ptr %76, align 4, !tbaa !96
  br label %77

77:                                               ; preds = %69, %66
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %10) #10
  %78 = load float, ptr %10, align 4, !tbaa !96
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !96
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !96
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp ult float %85, %79
  %87 = fcmp ult float %85, %82
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = fadd float %3, 1.000000e+00
  %91 = fmul float %90, 5.000000e-01
  store float %91, ptr %6, align 4, !tbaa !96
  br label %102

92:                                               ; preds = %77
  %93 = fcmp ult float %82, %79
  %94 = fcmp ult float %82, %85
  %95 = or i1 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = fadd float %3, 1.000000e+00
  %98 = fmul float %97, 5.000000e-01
  store float %98, ptr %6, align 4, !tbaa !96
  br label %102

99:                                               ; preds = %92
  %100 = fadd float %4, 1.000000e+00
  %101 = fmul float %100, 5.000000e-01
  store float %101, ptr %6, align 4, !tbaa !96
  br label %102

102:                                              ; preds = %89, %96, %99
  %103 = phi float [ %4, %89 ], [ %5, %96 ], [ %5, %99 ]
  %104 = phi i32 [ 0, %89 ], [ 1, %96 ], [ 2, %99 ]
  %105 = fadd float %103, 1.000000e+00
  %106 = fmul float %105, 5.000000e-01
  store float %106, ptr %7, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %190

107:                                              ; preds = %62, %14
  %108 = icmp eq ptr %0, null
  br i1 %108, label %122, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  %111 = load i8, ptr %110, align 8, !tbaa !196
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 %112
  store i32 16, ptr %113, align 4, !tbaa !122
  %114 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  %115 = load i8, ptr %114, align 1, !tbaa !197
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 %116
  store i32 32, ptr %117, align 4, !tbaa !122
  %118 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  %119 = load i8, ptr %118, align 2, !tbaa !198
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 %120
  store i32 64, ptr %121, align 4, !tbaa !122
  br label %122

122:                                              ; preds = %109, %107
  %123 = load i8, ptr %15, align 8, !tbaa !309
  %124 = zext i8 %123 to i32
  %125 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  %126 = load i32, ptr %125, align 4, !tbaa !122
  %127 = and i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = fadd float %3, 1.000000e+00
  %131 = fmul float %130, 5.000000e-01
  store float %131, ptr %6, align 4, !tbaa !96
  %132 = fadd float %4, 1.000000e+00
  %133 = fmul float %132, 5.000000e-01
  store float %133, ptr %7, align 4, !tbaa !96
  br label %190

134:                                              ; preds = %122
  %135 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %136 = load i32, ptr %135, align 8, !tbaa !122
  %137 = and i32 %136, %124
  %138 = icmp eq i32 %137, 0
  %139 = fadd float %5, 1.000000e+00
  %140 = fmul float %139, 5.000000e-01
  br i1 %138, label %144, label %141

141:                                              ; preds = %134
  %142 = fadd float %3, 1.000000e+00
  %143 = fmul float %142, 5.000000e-01
  store float %143, ptr %6, align 4, !tbaa !96
  store float %140, ptr %7, align 4, !tbaa !96
  br label %190

144:                                              ; preds = %134
  %145 = fadd float %4, 1.000000e+00
  %146 = fmul float %145, 5.000000e-01
  store float %146, ptr %6, align 4, !tbaa !96
  store float %140, ptr %7, align 4, !tbaa !96
  br label %190

147:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %148 = icmp eq ptr %2, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  store float %3, ptr %9, align 4, !tbaa !96
  %150 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %4, ptr %150, align 4, !tbaa !96
  %151 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %5, ptr %151, align 4, !tbaa !96
  br label %160

152:                                              ; preds = %147
  %153 = load float, ptr %2, align 4, !tbaa !96
  store float %153, ptr %9, align 4, !tbaa !96
  %154 = getelementptr inbounds float, ptr %2, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !96
  %156 = getelementptr inbounds float, ptr %9, i64 1
  store float %155, ptr %156, align 4, !tbaa !96
  %157 = getelementptr inbounds float, ptr %2, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !96
  %159 = getelementptr inbounds float, ptr %9, i64 2
  store float %158, ptr %159, align 4, !tbaa !96
  br label %160

160:                                              ; preds = %152, %149
  call void @mul_mat3_m4_v3(ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 33), ptr noundef nonnull %9) #10
  %161 = load float, ptr %9, align 4, !tbaa !96
  %162 = call float @llvm.fabs.f32(float %161)
  %163 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !96
  %165 = call float @llvm.fabs.f32(float %164)
  %166 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !96
  %168 = call float @llvm.fabs.f32(float %167)
  %169 = fcmp ult float %168, %162
  %170 = fcmp ult float %168, %165
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %160
  %173 = fadd float %3, 1.000000e+00
  %174 = fmul float %173, 5.000000e-01
  store float %174, ptr %6, align 4, !tbaa !96
  br label %185

175:                                              ; preds = %160
  %176 = fcmp ult float %165, %162
  %177 = fcmp ult float %165, %168
  %178 = or i1 %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = fadd float %3, 1.000000e+00
  %181 = fmul float %180, 5.000000e-01
  store float %181, ptr %6, align 4, !tbaa !96
  br label %185

182:                                              ; preds = %175
  %183 = fadd float %4, 1.000000e+00
  %184 = fmul float %183, 5.000000e-01
  store float %184, ptr %6, align 4, !tbaa !96
  br label %185

185:                                              ; preds = %172, %179, %182
  %186 = phi float [ %4, %172 ], [ %5, %179 ], [ %5, %182 ]
  %187 = phi i32 [ 0, %172 ], [ 1, %179 ], [ 2, %182 ]
  %188 = fadd float %186, 1.000000e+00
  %189 = fmul float %188, 5.000000e-01
  store float %189, ptr %7, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %190

190:                                              ; preds = %102, %141, %144, %129, %185
  %191 = phi i32 [ %187, %185 ], [ %104, %102 ], [ 0, %129 ], [ 1, %141 ], [ 2, %144 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  ret i32 %191
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!60 = !{!58, !35, i64 352}
!61 = !{!39, !40, i64 1504}
!62 = !{!39, !41, i64 96}
!63 = !{!58, !41, i64 232}
!64 = !{!58, !41, i64 228}
!65 = !{!58, !41, i64 264}
!66 = !{!58, !35, i64 368}
!67 = !{!68, !41, i64 164}
!68 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !41, i64 164, !41, i64 166, !45, i64 168, !45, i64 172, !45, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!69 = !{!70, !36, i64 2090}
!70 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !42, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!71 = !{!39, !40, i64 1624}
!72 = !{!68, !41, i64 166}
!73 = !{!58, !35, i64 336}
!74 = !{!58, !36, i64 408}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!79, !35, i64 360}
!79 = !{!"bNodeTree", !54, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !42, i64 224, !42, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !41, i64 276, !41, i64 278, !40, i64 280, !40, i64 284, !41, i64 288, !41, i64 290, !40, i64 292, !44, i64 296, !42, i64 312, !42, i64 328, !35, i64 344, !80, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!80 = !{!"bNodeInstanceKey", !40, i64 0}
!81 = distinct !{!81, !76, !77}
!82 = !{!39, !36, i64 104}
!83 = !{!84, !41, i64 130}
!84 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !45, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !36, i64 132, !36, i64 133, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308}
!85 = !{!86, !35, i64 8}
!86 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !41, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !45, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !45, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !45, i64 1256, !45, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !45, i64 1336, !45, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !45, i64 1428, !36, i64 1432, !36, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!87 = !{!84, !41, i64 2}
!88 = !{!89, !35, i64 48}
!89 = !{!"ImBuf", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !45, i64 112, !36, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !35, i64 296, !35, i64 304, !40, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !40, i64 2376, !35, i64 2384, !40, i64 2392, !40, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !40, i64 2432, !43, i64 2436, !90, i64 2456}
!90 = !{!"DDSData", !40, i64 0, !40, i64 4, !35, i64 8, !40, i64 16}
!91 = !{!89, !35, i64 2400}
!92 = !{!84, !36, i64 91}
!93 = !{!84, !35, i64 16}
!94 = !{!84, !35, i64 8}
!95 = !{!84, !41, i64 0}
!96 = !{!45, !45, i64 0}
!97 = !{!98, !45, i64 36}
!98 = !{!"CompatibleBump", !36, i64 0, !36, i64 12, !36, i64 24, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !36, i64 52}
!99 = !{!98, !45, i64 48}
!100 = !{!39, !40, i64 1620}
!101 = !{!86, !35, i64 0}
!102 = !{!103, !40, i64 536}
!103 = !{!"Material", !54, i64 0, !35, i64 120, !41, i64 128, !41, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !104, i64 224, !105, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !36, i64 362, !36, i64 363, !45, i64 364, !45, i64 368, !41, i64 372, !41, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !36, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !40, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !36, i64 550, !36, i64 551, !41, i64 552, !41, i64 554, !45, i64 556, !45, i64 560, !36, i64 564, !45, i64 580, !45, i64 584, !41, i64 588, !41, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !41, i64 612, !41, i64 614, !45, i64 616, !45, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !41, i64 820, !41, i64 822, !36, i64 824, !36, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !36, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !36, i64 914, !35, i64 920, !42, i64 928}
!104 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!105 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!106 = !{!84, !41, i64 120}
!107 = !{!86, !41, i64 96}
!108 = !{!86, !35, i64 24}
!109 = !{!110, !35, i64 240}
!110 = !{!"ObjectInstanceRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !41, i64 216, !36, i64 220, !36, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !40, i64 264, !35, i64 272, !40, i64 280}
!111 = !{!86, !40, i64 1104}
!112 = !{!36, !36, i64 0}
!113 = !{!86, !40, i64 1096}
!114 = !{!115, !35, i64 40}
!115 = !{!"ShadeInputUV", !36, i64 0, !36, i64 12, !36, i64 24, !35, i64 40}
!116 = distinct !{!116, !76, !77}
!117 = !{!86, !35, i64 32}
!118 = !{!119, !35, i64 16}
!119 = !{!"ObjectRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272}
!120 = !{!86, !35, i64 64}
!121 = !{!86, !41, i64 88}
!122 = !{!40, !40, i64 0}
!123 = !{!86, !41, i64 90}
!124 = !{!86, !41, i64 92}
!125 = !{!98, !36, i64 52}
!126 = !{!86, !35, i64 80}
!127 = !{!86, !35, i64 72}
!128 = !{!98, !45, i64 44}
!129 = !{!98, !45, i64 40}
!130 = !{!86, !45, i64 428}
!131 = !{!86, !45, i64 1336}
!132 = !{!86, !45, i64 1340}
!133 = !{!86, !45, i64 472}
!134 = !{!135, !35, i64 24}
!135 = !{!"TexResult", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !40, i64 20, !35, i64 24}
!136 = !{!39, !35, i64 6224}
!137 = !{!135, !40, i64 20}
!138 = !{!58, !41, i64 230}
!139 = !{!84, !45, i64 172}
!140 = !{!89, !40, i64 16}
!141 = !{!89, !40, i64 20}
!142 = !{!86, !41, i64 1434}
!143 = !{!135, !45, i64 4}
!144 = !{!135, !45, i64 8}
!145 = !{!135, !45, i64 12}
!146 = !{!135, !45, i64 0}
!147 = !{!148, !40, i64 0}
!148 = !{!"NTapBump", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 44, !45, i64 56, !45, i64 60}
!149 = !{!148, !45, i64 60}
!150 = !{!148, !40, i64 4}
!151 = !{!152, !35, i64 1296}
!152 = !{!"Object", !54, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !153, i64 312, !35, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !36, i64 1042, !36, i64 1043, !41, i64 1044, !36, i64 1046, !36, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !41, i64 1124, !41, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !41, i64 1162, !36, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !41, i64 1266, !45, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !154, i64 1304, !154, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !42, i64 1400, !35, i64 1416}
!153 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!154 = !{!"long", !36, i64 0}
!155 = !{!156, !45, i64 1052}
!156 = !{!"DerivedMesh", !157, i64 0, !157, i64 200, !157, i64 400, !157, i64 600, !157, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !35, i64 1032, !35, i64 1040, !40, i64 1048, !45, i64 1052, !40, i64 1056, !40, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!157 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!158 = distinct !{!158, !76, !77}
!159 = distinct !{!159, !76, !77}
!160 = !{!148, !45, i64 56}
!161 = distinct !{!161, !76, !77}
!162 = distinct !{!162, !76, !77}
!163 = !{!135, !45, i64 16}
!164 = !{!84, !45, i64 180}
!165 = !{!84, !45, i64 164}
!166 = !{!84, !41, i64 6}
!167 = !{!84, !45, i64 184}
!168 = !{!84, !45, i64 188}
!169 = !{!84, !41, i64 128}
!170 = !{!103, !40, i64 396}
!171 = !{!84, !45, i64 176}
!172 = !{!84, !45, i64 196}
!173 = !{!84, !45, i64 156}
!174 = !{!86, !45, i64 300}
!175 = !{!84, !45, i64 200}
!176 = !{!86, !45, i64 304}
!177 = !{!84, !45, i64 204}
!178 = !{!86, !45, i64 280}
!179 = !{!84, !45, i64 192}
!180 = !{!86, !45, i64 296}
!181 = !{!84, !45, i64 208}
!182 = !{!86, !40, i64 320}
!183 = !{!84, !45, i64 212}
!184 = !{!86, !45, i64 292}
!185 = !{!84, !45, i64 216}
!186 = !{!86, !45, i64 316}
!187 = !{!84, !45, i64 220}
!188 = !{!86, !45, i64 276}
!189 = !{!39, !45, i64 5248}
!190 = !{!86, !45, i64 264}
!191 = !{!39, !45, i64 5252}
!192 = !{!86, !45, i64 272}
!193 = !{!39, !45, i64 5256}
!194 = !{!86, !45, i64 268}
!195 = distinct !{!195, !76, !77}
!196 = !{!84, !36, i64 88}
!197 = !{!84, !36, i64 89}
!198 = !{!84, !36, i64 90}
!199 = !{!58, !40, i64 252}
!200 = !{!152, !35, i64 264}
!201 = !{!110, !35, i64 24}
!202 = !{!84, !45, i64 224}
!203 = !{!84, !45, i64 228}
!204 = !{!84, !45, i64 232}
!205 = !{!84, !45, i64 236}
!206 = !{!84, !45, i64 240}
!207 = !{!84, !45, i64 244}
!208 = distinct !{!208, !76, !77}
!209 = !{!58, !45, i64 128}
!210 = !{!58, !41, i64 220}
!211 = !{!58, !41, i64 222}
!212 = !{!58, !41, i64 224}
!213 = !{!58, !45, i64 288}
!214 = !{!58, !41, i64 234}
!215 = !{!58, !45, i64 148}
!216 = !{!58, !45, i64 140}
!217 = !{!58, !45, i64 136}
!218 = !{!58, !45, i64 152}
!219 = !{!58, !45, i64 156}
!220 = !{!58, !45, i64 144}
!221 = !{!58, !41, i64 226}
!222 = !{!58, !45, i64 132}
!223 = distinct !{!223, !76, !77}
!224 = !{!58, !45, i64 192}
!225 = !{!58, !45, i64 168}
!226 = !{!58, !45, i64 172}
!227 = !{!58, !45, i64 176}
!228 = !{ptr @mg_MultiFractal, ptr @mg_fBm}
!229 = !{!58, !45, i64 180}
!230 = !{!58, !45, i64 184}
!231 = !{ptr @mg_HybridMultiFractal, ptr @mg_RidgedMultiFractal}
!232 = !{!58, !45, i64 196}
!233 = !{!58, !45, i64 200}
!234 = !{!58, !45, i64 204}
!235 = !{!58, !45, i64 208}
!236 = !{!58, !45, i64 212}
!237 = !{!58, !41, i64 216}
!238 = !{!58, !41, i64 218}
!239 = !{!58, !45, i64 188}
!240 = !{!58, !35, i64 360}
!241 = !{!242, !35, i64 112}
!242 = !{!"HaloRen", !41, i64 0, !41, i64 2, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !36, i64 32, !36, i64 44, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !41, i64 92, !45, i64 96, !40, i64 100, !40, i64 104, !35, i64 112, !35, i64 120}
!243 = !{!242, !45, i64 16}
!244 = !{!103, !41, i64 588}
!245 = !{!242, !35, i64 120}
!246 = !{!84, !45, i64 140}
!247 = !{!84, !45, i64 144}
!248 = !{!84, !45, i64 148}
!249 = !{!242, !45, i64 68}
!250 = !{!242, !45, i64 64}
!251 = !{!242, !45, i64 60}
!252 = !{!39, !41, i64 98}
!253 = !{!58, !41, i64 260}
!254 = !{!58, !41, i64 262}
!255 = !{!58, !45, i64 236}
!256 = !{!58, !45, i64 244}
!257 = !{!58, !45, i64 240}
!258 = !{!58, !45, i64 248}
!259 = !{!39, !41, i64 5288}
!260 = !{!84, !45, i64 300}
!261 = !{!84, !45, i64 304}
!262 = !{!84, !45, i64 308}
!263 = distinct !{!263, !76, !77}
!264 = !{!265, !41, i64 40}
!265 = !{!"LampRen", !35, i64 0, !35, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !36, i64 28, !41, i64 40, !40, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !40, i64 84, !45, i64 88, !45, i64 92, !36, i64 96, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !45, i64 128, !41, i64 132, !45, i64 136, !45, i64 140, !35, i64 144, !41, i64 152, !41, i64 154, !45, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !36, i64 202, !36, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !35, i64 224, !35, i64 232, !35, i64 240, !36, i64 248, !45, i64 284, !36, i64 288, !45, i64 300, !36, i64 304, !36, i64 368, !36, i64 404, !45, i64 500, !35, i64 504, !36, i64 512, !36, i64 520, !40, i64 664, !40, i64 668}
!266 = !{!265, !45, i64 284}
!267 = !{!265, !45, i64 76}
!268 = distinct !{!268, !76, !77}
!269 = !{!270, !41, i64 1244}
!270 = !{!"Image", !54, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !41, i64 1240, !41, i64 1242, !41, i64 1244, !41, i64 1246, !41, i64 1248, !41, i64 1250, !40, i64 1252, !41, i64 1256, !41, i64 1258, !41, i64 1260, !41, i64 1262, !41, i64 1264, !41, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !45, i64 1296, !40, i64 1300, !41, i64 1304, !41, i64 1306, !40, i64 1308, !40, i64 1312, !36, i64 1316, !36, i64 1317, !41, i64 1318, !36, i64 1320, !45, i64 1336, !45, i64 1340, !271, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!271 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!272 = !{!58, !36, i64 322}
!273 = !{!103, !35, i64 120}
!274 = !{!103, !41, i64 128}
!275 = !{!58, !35, i64 120}
!276 = !{!277, !40, i64 680}
!277 = !{!"Scene", !54, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !46, i64 280, !278, i64 4264, !42, i64 4296, !42, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !42, i64 4384, !279, i64 4400, !280, i64 4416, !283, i64 4600, !35, i64 4608, !284, i64 4616, !35, i64 4640, !154, i64 4648, !154, i64 4656, !48, i64 4664, !49, i64 4824, !271, i64 4888, !35, i64 4952}
!278 = !{!"AudioData", !40, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !45, i64 24, !45, i64 28}
!279 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!280 = !{!"GameData", !279, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !36, i64 34, !281, i64 40, !41, i64 64, !41, i64 66, !45, i64 68, !282, i64 72, !45, i64 128, !45, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!281 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !45, i64 8, !45, i64 12, !35, i64 16}
!282 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !40, i64 40, !45, i64 44, !45, i64 48, !41, i64 52, !41, i64 54}
!283 = !{!"UnitSettings", !45, i64 0, !36, i64 4, !36, i64 5, !41, i64 6}
!284 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!285 = !{!39, !35, i64 1096}
!286 = !{!39, !40, i64 152}
!287 = !{!39, !40, i64 148}
!288 = distinct !{!288, !76, !77}
!289 = distinct !{!289, !76, !77}
!290 = !{!156, !35, i64 1168}
!291 = !{!156, !35, i64 1184}
!292 = !{!293, !40, i64 0}
!293 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !36, i64 18, !36, i64 19}
!294 = !{!293, !40, i64 4}
!295 = !{!293, !40, i64 8}
!296 = !{!293, !40, i64 12}
!297 = !{!157, !35, i64 0}
!298 = !{!299, !35, i64 96}
!299 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96}
!300 = distinct !{!300, !76, !77}
!301 = !{!103, !45, i64 132}
!302 = !{!86, !45, i64 228}
!303 = !{!103, !45, i64 136}
!304 = !{!86, !45, i64 232}
!305 = !{!103, !45, i64 140}
!306 = !{!86, !45, i64 236}
!307 = !{!103, !45, i64 200}
!308 = !{!103, !45, i64 224}
!309 = !{!310, !36, i64 56}
!310 = !{!"VlakRen", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !35, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !40, i64 60}
!311 = !{!310, !35, i64 0}
!312 = !{!313, !35, i64 24}
!313 = !{!"VertRen", !36, i64 0, !36, i64 12, !35, i64 24, !40, i64 32, !45, i64 36, !40, i64 40}
!314 = !{!310, !35, i64 8}
!315 = !{!310, !35, i64 16}
