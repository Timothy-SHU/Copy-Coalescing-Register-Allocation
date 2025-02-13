; ModuleID = 'blender/source/blender/render/intern/source/shadbuf.c'
source_filename = "blender/source/blender/render/intern/source/shadbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
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
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.ShadSampleBuf = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ISBData = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ISBShadfacA = type { ptr, i32, i32, float }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.ISBBranch = type { ptr, ptr, [2 x float], %struct.Boxf, i16, i16, i16, i16, ptr }
%struct.Boxf = type { float, float, float, float, float, float }
%struct.APixstr = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i16], ptr }
%struct.ISBSampleA = type { [3 x float], ptr, i32, i32, ptr }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.ISBSample = type { [3 x float], ptr, i32, i32 }
%struct.APixstrand = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x float], [4 x float], ptr }
%struct.DeepSample = type { i32, float }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.BSPFace = type { %struct.Boxf, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, float, float, float, [3 x float], [3 x float], [3 x float] }

@G = external local_unnamed_addr global %struct.Global, align 8
@g_break = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@R = external global %struct.Render, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"isb data\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"autoclipflag\00", align 1
@give_jitter_tab.tab = internal unnamed_addr constant [17 x i32] [i32 1, i32 4, i32 9, i32 16, i32 25, i32 36, i32 49, i32 64, i32 81, i32 100, i32 121, i32 144, i32 169, i32 196, i32 225, i32 256, i32 0], align 16
@give_jitter_tab.jit = internal global [1496 x [2 x float]] zeroinitializer, align 16
@give_jitter_tab.ctab = internal unnamed_addr global [17 x i8] zeroinitializer, align 16
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"weight tab lamp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"APixbuf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"APixbufstrand\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"shad sample buf\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"deeptotbuf\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"deepbuf\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"deepsample\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cdeepsample\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"makeshadbuf\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"initshadbuf2\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"initshadbuf3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"makeshadbuf2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tile1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Tile2\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Tile3\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"isb arena\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"isb alpha samplebuf\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"isb shadfacs\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xcos\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ycos\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"isb samplebuf\00", align 1
@str.25 = private unnamed_addr constant [21 x i8] c"error in filling bsp\00", align 1
@str.26 = private unnamed_addr constant [20 x i8] c"error in bsp branch\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @makeshadowbuf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x float], align 8
  %4 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store i64 0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 37
  %7 = load i16, ptr %6, align 2, !tbaa !42
  %8 = and i16 %7, 3
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call fastcc void @shadowbuf_autoclip(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 36
  %13 = load i16, ptr %12, align 4, !tbaa !43
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 14
  store i32 1024, ptr %16, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 18
  %19 = load float, ptr %18, align 8, !tbaa !47
  %20 = tail call fastcc float @saacos(float noundef %19) #24
  %21 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = sitofp i32 %22 to float
  %24 = fmul float %23, 5.000000e-01
  %25 = tail call float @cosf(float noundef %20) #25
  %26 = fmul float %25, %24
  %27 = tail call float @sinf(float noundef %20) #25
  %28 = fdiv float %26, %27
  %29 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 8
  %30 = load float, ptr %29, align 8, !tbaa !48
  %31 = fdiv float %30, %28
  %32 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 10
  store float %31, ptr %32, align 8, !tbaa !49
  %33 = load i32, ptr %21, align 8, !tbaa !44
  %34 = sitofp i32 %33 to float
  %35 = fmul float %34, 5.000000e-01
  %36 = fmul float %31, %35
  %37 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 5
  %38 = fneg float %36
  %39 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 9
  %40 = load float, ptr %39, align 4, !tbaa !50
  tail call void @perspective_m4(ptr noundef nonnull %37, float noundef %38, float noundef %36, float noundef %38, float noundef %36, float noundef %30, float noundef %40) #25
  %41 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 3
  %42 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 4
  tail call void @mul_m4_m4m4(ptr noundef nonnull %41, ptr noundef nonnull %37, ptr noundef nonnull %42) #25
  %43 = load i16, ptr %12, align 4, !tbaa !43
  switch i16 %43, label %67 [
    i16 0, label %44
    i16 2, label %44
    i16 3, label %44
  ]

44:                                               ; preds = %17, %17, %17
  %45 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 34
  %46 = load i16, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 2
  store i16 %46, ptr %47, align 4, !tbaa !52
  tail call void @BLI_lock_thread(i32 noundef 3) #25
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %49 = load i16, ptr %5, align 8, !tbaa !53
  %50 = sext i16 %49 to i32
  %51 = tail call i32 @get_render_shadow_samples(ptr noundef nonnull %48, i32 noundef %50) #25
  %52 = tail call fastcc ptr @give_jitter_tab(i32 noundef %51) #24
  %53 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 35
  %55 = load i16, ptr %54, align 2, !tbaa !55
  tail call fastcc void @make_jitter_weight_tab(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext %55) #24
  tail call void @BLI_unlock_thread(i32 noundef 3) #25
  %56 = load i16, ptr %47, align 4, !tbaa !52
  switch i16 %56, label %61 [
    i16 4, label %58
    i16 9, label %57
  ]

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %44, %57
  %59 = phi i32 [ 3, %57 ], [ 2, %44 ]
  %60 = tail call fastcc ptr @give_jitter_tab(i32 noundef %59) #24
  br label %61

61:                                               ; preds = %58, %44
  %62 = phi ptr [ %3, %44 ], [ %60, %58 ]
  %63 = load i16, ptr %12, align 4, !tbaa !43
  %64 = icmp eq i16 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call fastcc void @makedeepshadowbuf(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %62) #24
  store i16 1, ptr %47, align 4, !tbaa !52
  br label %67

66:                                               ; preds = %61
  call fastcc void @makeflatshadowbuf(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %62) #24
  br label %67

67:                                               ; preds = %17, %65, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shadowbuf_autoclip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ShadBuf, ptr %7, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %8) #25
  %9 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = and i32 %10, 32772
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !58
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i32 [ %15, %13 ], [ -1, %2 ]
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %27, %21 ], [ %19, %16 ]
  %23 = phi i32 [ %26, %21 ], [ 0, %16 ]
  %24 = getelementptr inbounds %struct.ObjectRen, ptr %22, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = call fastcc i32 @max_ii(i32 noundef %25, i32 noundef %23) #24
  %27 = load ptr, ptr %22, align 8, !tbaa !59
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21, !llvm.loop !62

29:                                               ; preds = %21
  %30 = sext i32 %26 to i64
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i64 [ 0, %16 ], [ %30, %29 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %34 = call ptr %33(i64 noundef %32, ptr noundef nonnull @.str.1) #25
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %39(ptr noundef %34) #25
  br label %230

40:                                               ; preds = %31
  %41 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %42 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 18
  br label %49

43:                                               ; preds = %184, %76
  %44 = phi ptr [ %56, %76 ], [ %165, %184 ]
  %45 = phi float [ %54, %76 ], [ %185, %184 ]
  %46 = phi float [ %53, %76 ], [ %186, %184 ]
  %47 = load ptr, ptr %50, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %191, label %49, !llvm.loop !64

49:                                               ; preds = %40, %43
  %50 = phi ptr [ %36, %40 ], [ %47, %43 ]
  %51 = phi ptr [ null, %40 ], [ %79, %43 ]
  %52 = phi i32 [ 1, %40 ], [ %78, %43 ]
  %53 = phi float [ 0xC6293E5940000000, %40 ], [ %46, %43 ]
  %54 = phi float [ 0x46293E5940000000, %40 ], [ %45, %43 ]
  %55 = phi ptr [ null, %40 ], [ %77, %43 ]
  %56 = phi ptr [ null, %40 ], [ %44, %43 ]
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !65
  %59 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 11
  %60 = load i16, ptr %59, align 8, !tbaa !67
  %61 = and i16 %60, 3
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %64) #25
  br label %66

65:                                               ; preds = %49
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  br label %66

66:                                               ; preds = %65, %63
  %67 = getelementptr inbounds %struct.ObjectRen, ptr %58, i64 0, i32 10
  %68 = load i32, ptr %67, align 8, !tbaa !60
  %69 = sext i32 %68 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %34, i8 0, i64 %69, i1 false)
  %70 = getelementptr inbounds %struct.ObjectRen, ptr %58, i64 0, i32 11
  %71 = load i32, ptr %70, align 4, !tbaa !68
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ObjectRen, ptr %58, i64 0, i32 19
  %75 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 7
  br label %82

76:                                               ; preds = %146, %66
  %77 = phi ptr [ %55, %66 ], [ %148, %146 ]
  %78 = phi i32 [ %52, %66 ], [ %147, %146 ]
  %79 = phi ptr [ %51, %66 ], [ %98, %146 ]
  %80 = load i32, ptr %67, align 8, !tbaa !60
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %152, label %43

82:                                               ; preds = %73, %146
  %83 = phi ptr [ %51, %73 ], [ %98, %146 ]
  %84 = phi i32 [ %52, %73 ], [ %147, %146 ]
  %85 = phi i32 [ 0, %73 ], [ %149, %146 ]
  %86 = phi ptr [ %55, %73 ], [ %148, %146 ]
  %87 = and i32 %85, 255
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load ptr, ptr %74, align 8, !tbaa !69
  %91 = lshr exact i32 %85, 8
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.VlakTableNode, ptr %90, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !70
  br label %97

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.VlakRen, ptr %83, i64 1
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %94, %89 ], [ %96, %95 ]
  %99 = getelementptr inbounds %struct.VlakRen, ptr %98, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !72
  %101 = icmp eq ptr %100, %86
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.Material, ptr %100, i64 0, i32 53
  %104 = load i32, ptr %103, align 4, !tbaa !74
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %146, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.Material, ptr %100, i64 0, i32 51
  %109 = load i32, ptr %108, align 4, !tbaa !79
  %110 = and i32 %109, 33554432
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %146, label %114

112:                                              ; preds = %97
  %113 = icmp eq i32 %84, 0
  br i1 %113, label %146, label %114

114:                                              ; preds = %107, %112
  %115 = phi i32 [ %84, %112 ], [ 1, %107 ]
  %116 = phi ptr [ %86, %112 ], [ %100, %107 ]
  %117 = load i32, ptr %75, align 8, !tbaa !80
  %118 = and i32 %117, %17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %146, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %98, align 8, !tbaa !81
  %122 = getelementptr inbounds %struct.VertRen, ptr %121, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !82
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %34, i64 %124
  store i8 1, ptr %125, align 1, !tbaa !84
  %126 = getelementptr inbounds %struct.VlakRen, ptr %98, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !85
  %128 = getelementptr inbounds %struct.VertRen, ptr %127, i64 0, i32 5
  %129 = load i32, ptr %128, align 8, !tbaa !82
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %34, i64 %130
  store i8 1, ptr %131, align 1, !tbaa !84
  %132 = getelementptr inbounds %struct.VlakRen, ptr %98, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  %134 = getelementptr inbounds %struct.VertRen, ptr %133, i64 0, i32 5
  %135 = load i32, ptr %134, align 8, !tbaa !82
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %34, i64 %136
  store i8 1, ptr %137, align 1, !tbaa !84
  %138 = getelementptr inbounds %struct.VlakRen, ptr %98, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !87
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %120
  %142 = getelementptr inbounds %struct.VertRen, ptr %139, i64 0, i32 5
  %143 = load i32, ptr %142, align 8, !tbaa !82
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %34, i64 %144
  store i8 1, ptr %145, align 1, !tbaa !84
  br label %146

146:                                              ; preds = %107, %102, %112, %114, %141, %120
  %147 = phi i32 [ 0, %112 ], [ %115, %114 ], [ %115, %141 ], [ %115, %120 ], [ 0, %102 ], [ 0, %107 ]
  %148 = phi ptr [ %86, %112 ], [ %116, %114 ], [ %116, %141 ], [ %116, %120 ], [ %100, %102 ], [ %100, %107 ]
  %149 = add nuw nsw i32 %85, 1
  %150 = load i32, ptr %70, align 4, !tbaa !68
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %82, label %76, !llvm.loop !88

152:                                              ; preds = %76, %184
  %153 = phi i64 [ %187, %184 ], [ 0, %76 ]
  %154 = phi float [ %186, %184 ], [ %53, %76 ]
  %155 = phi float [ %185, %184 ], [ %54, %76 ]
  %156 = phi ptr [ %165, %184 ], [ %56, %76 ]
  %157 = trunc i64 %153 to i32
  %158 = and i32 %157, 255
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = call ptr @RE_findOrAddVert(ptr noundef nonnull %58, i32 noundef %157) #25
  br label %164

162:                                              ; preds = %152
  %163 = getelementptr inbounds %struct.VertRen, ptr %156, i64 1
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi ptr [ %161, %160 ], [ %163, %162 ]
  %166 = getelementptr inbounds i8, ptr %34, i64 %153
  %167 = load i8, ptr %166, align 1, !tbaa !84
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %164
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %165) #24
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #25
  %170 = load float, ptr %41, align 4, !tbaa !89
  %171 = fcmp olt float %170, 0.000000e+00
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = fneg float %170
  %174 = fmul float %170, 0x3FF3333340000000
  store float %174, ptr %41, align 4, !tbaa !89
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #24
  %175 = load float, ptr %41, align 4, !tbaa !89
  %176 = fneg float %175
  %177 = load float, ptr %42, align 8, !tbaa !47
  %178 = fcmp ugt float %177, %176
  br i1 %178, label %184, label %179

179:                                              ; preds = %172
  %180 = fcmp ogt float %155, %173
  %181 = select i1 %180, float %173, float %155
  %182 = fcmp olt float %154, %173
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %172, %183, %179, %164, %169
  %185 = phi float [ %155, %169 ], [ %155, %164 ], [ %181, %183 ], [ %181, %179 ], [ %155, %172 ]
  %186 = phi float [ %154, %169 ], [ %154, %164 ], [ %173, %183 ], [ %154, %179 ], [ %154, %172 ]
  %187 = add nuw nsw i64 %153, 1
  %188 = load i32, ptr %67, align 8, !tbaa !60
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %152, label %43, !llvm.loop !90

191:                                              ; preds = %43
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %192(ptr noundef %34) #25
  %193 = fcmp olt float %45, %46
  br i1 %193, label %194, label %230

194:                                              ; preds = %191
  %195 = fsub float %46, %45
  %196 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 37
  %197 = load i16, ptr %196, align 2, !tbaa !42
  %198 = and i16 %197, 1
  %199 = icmp eq i16 %198, 0
  %200 = load ptr, ptr %6, align 8, !tbaa !34
  br i1 %199, label %205, label %201

201:                                              ; preds = %194
  %202 = fneg float %195
  %203 = call float @llvm.fmuladd.f32(float %202, float 0x3F947AE140000000, float %45)
  %204 = getelementptr inbounds %struct.ShadBuf, ptr %200, i64 0, i32 8
  store float %203, ptr %204, align 8, !tbaa !48
  br label %205

205:                                              ; preds = %201, %194
  %206 = and i16 %197, 2
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.ShadBuf, ptr %200, i64 0, i32 9
  %210 = load float, ptr %209, align 4, !tbaa !50
  br label %214

211:                                              ; preds = %205
  %212 = call float @llvm.fmuladd.f32(float %195, float 0x3FB99999A0000000, float %46)
  %213 = getelementptr inbounds %struct.ShadBuf, ptr %200, i64 0, i32 9
  store float %212, ptr %213, align 4, !tbaa !50
  br label %214

214:                                              ; preds = %208, %211
  %215 = phi float [ %210, %208 ], [ %212, %211 ]
  %216 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 40
  %217 = load float, ptr %216, align 8, !tbaa !91
  %218 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 39
  %219 = load float, ptr %218, align 4, !tbaa !92
  %220 = fsub float %217, %219
  %221 = getelementptr inbounds %struct.ShadBuf, ptr %200, i64 0, i32 8
  %222 = load float, ptr %221, align 8, !tbaa !48
  %223 = fsub float %215, %222
  %224 = fdiv float %220, %223
  %225 = getelementptr inbounds %struct.ShadBuf, ptr %200, i64 0, i32 15
  %226 = load i32, ptr %225, align 4, !tbaa !93
  %227 = sitofp i32 %226 to float
  %228 = fmul float %224, %227
  %229 = fptosi float %228 to i32
  store i32 %229, ptr %225, align 4, !tbaa !93
  br label %230

230:                                              ; preds = %38, %214, %191
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #3 !PGOFuncName !94 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #25
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @give_jitter_tab(i32 noundef %0) unnamed_addr #0 !PGOFuncName !95 {
  %2 = tail call i32 @llvm.smin.i32(i32 %0, i32 16)
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %4 = add nsw i32 %3, -1
  %5 = zext nneg i32 %4 to i64
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %12, %6 ]
  %8 = phi i32 [ 0, %1 ], [ %11, %6 ]
  %9 = getelementptr inbounds [17 x i32], ptr @give_jitter_tab.tab, i64 0, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !96
  %11 = add nsw i32 %10, %8
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !97

14:                                               ; preds = %6
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds [17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !84
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = sext i32 %11 to i64
  br label %25

21:                                               ; preds = %14
  store i8 1, ptr %16, align 1, !tbaa !84
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds [1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 %22
  %24 = mul nuw nsw i32 %3, %3
  tail call void @BLI_jitter_init(ptr noundef nonnull %23, i32 noundef %24) #25
  br label %25

25:                                               ; preds = %19, %21
  %26 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %27 = getelementptr inbounds [1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 %26
  ret ptr %27
}

; Function Attrs: optsize
declare i32 @get_render_shadow_samples(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_jitter_weight_tab(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !98 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %5 = load i16, ptr %1, align 8, !tbaa !53
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @get_render_shadow_samples(ptr noundef nonnull %4, i32 noundef %6) #25
  %8 = mul nsw i32 %7, %7
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %10 = zext nneg i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.2) #25
  %13 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !99
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = tail call i32 @llvm.umax.i32(i32 %8, i32 1)
  %19 = zext nneg i32 %18 to i64
  br label %20

20:                                               ; preds = %15, %43
  %21 = phi ptr [ %12, %15 ], [ %44, %43 ]
  %22 = phi i64 [ 0, %15 ], [ %48, %43 ]
  %23 = phi ptr [ %17, %15 ], [ %49, %43 ]
  %24 = phi float [ 0.000000e+00, %15 ], [ %47, %43 ]
  switch i16 %2, label %43 [
    i16 1, label %25
    i16 2, label %33
  ]

25:                                               ; preds = %20
  %26 = load float, ptr %23, align 4, !tbaa !89
  %27 = getelementptr inbounds float, ptr %23, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !89
  %29 = fmul float %28, %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %29)
  %31 = tail call float @llvm.sqrt.f32(float %30)
  %32 = fsub float 0x3FE6B851E0000000, %31
  br label %43

33:                                               ; preds = %20
  %34 = load float, ptr %23, align 4, !tbaa !89
  %35 = getelementptr inbounds float, ptr %23, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !89
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = tail call float @llvm.sqrt.f32(float %38)
  %40 = fmul float %39, 0x3FFCCCCCC0000000
  %41 = tail call float @RE_filter_value(i32 noundef 5, float noundef %40) #25
  %42 = load ptr, ptr %13, align 8, !tbaa !99
  br label %43

43:                                               ; preds = %20, %33, %25
  %44 = phi ptr [ %42, %33 ], [ %21, %25 ], [ %21, %20 ]
  %45 = phi float [ %41, %33 ], [ %32, %25 ], [ 1.000000e+00, %20 ]
  %46 = getelementptr inbounds float, ptr %44, i64 %22
  store float %45, ptr %46, align 4, !tbaa !89
  %47 = fadd float %24, %45
  %48 = add nuw nsw i64 %22, 1
  %49 = getelementptr inbounds float, ptr %23, i64 2
  %50 = icmp eq i64 %48, %19
  br i1 %50, label %51, label %20, !llvm.loop !100

51:                                               ; preds = %43
  %52 = fdiv float 1.000000e+00, %47
  br i1 %14, label %63, label %53

53:                                               ; preds = %51
  %54 = tail call i32 @llvm.umax.i32(i32 %8, i32 1)
  %55 = zext nneg i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %61, %56 ]
  %58 = getelementptr inbounds float, ptr %44, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !89
  %60 = fmul float %52, %59
  store float %60, ptr %58, align 4, !tbaa !89
  %61 = add nuw nsw i64 %57, 1
  %62 = icmp eq i64 %61, %55
  br i1 %62, label %63, label %56, !llvm.loop !101

63:                                               ; preds = %56, %3, %51
  ret void
}

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makedeepshadowbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !102 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 72
  %12 = mul i64 %11, %10
  %13 = tail call ptr %7(i64 noundef %12, ptr noundef nonnull @.str.3) #25
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %15 = load i32, ptr %14, align 4, !tbaa !103
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %19 = load i32, ptr %8, align 8, !tbaa !44
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 112
  %22 = mul i64 %21, %20
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.4) #25
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi ptr [ %23, %17 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 3
  %27 = load i32, ptr %8, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !52
  %30 = sext i16 %29 to i32
  call void @zbuffer_abuf_shadow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef %13, ptr noundef %25, ptr noundef nonnull %4, i32 noundef %27, i32 noundef %30, ptr noundef %2) #25
  call fastcc void @compress_deepshadowbuf(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %13, ptr noundef %25) #24
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %31(ptr noundef %13) #25
  %32 = icmp eq ptr %25, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %34(ptr noundef nonnull %25) #25
  br label %35

35:                                               ; preds = %33, %24
  call void @freepsA(ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @makeflatshadowbuf(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = mul i64 %10, %9
  %12 = tail call ptr %6(i64 noundef %11, ptr noundef nonnull @.str.10) #25
  %13 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 3
  %14 = getelementptr inbounds %struct.ShadBuf, ptr %5, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !52
  %16 = icmp sgt i16 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %26

21:                                               ; preds = %26
  %22 = add nuw nsw i64 %27, 1
  %23 = load i16, ptr %14, align 4, !tbaa !52
  %24 = sext i16 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %41, !llvm.loop !118

26:                                               ; preds = %17, %21
  %27 = phi i64 [ 0, %17 ], [ %22, %21 ]
  %28 = load i32, ptr %7, align 8, !tbaa !44
  %29 = shl nuw nsw i64 %27, 1
  %30 = getelementptr inbounds float, ptr %2, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !89
  %32 = or disjoint i64 %29, 1
  %33 = getelementptr inbounds float, ptr %2, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !89
  tail call void @zbuffer_shadow(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %1, ptr noundef %12, i32 noundef %28, float noundef %31, float noundef %34) #25
  %35 = load i32, ptr %18, align 4, !tbaa !57
  %36 = and i32 %35, 128
  tail call fastcc void @compress_shadowbuf(ptr noundef nonnull %5, ptr noundef %12, i32 noundef %36) #24
  %37 = load ptr, ptr %19, align 8, !tbaa !119
  %38 = load ptr, ptr %20, align 8, !tbaa !120
  %39 = tail call i32 %37(ptr noundef %38) #25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %21, label %41

41:                                               ; preds = %21, %26, %3
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %42(ptr noundef %12) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @threaded_makeshadowbufs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !121
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  br i1 %4, label %26, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %6, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %17, %9 ], [ %6, %7 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %7 ]
  %12 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !123

19:                                               ; preds = %9, %7
  %20 = phi i32 [ 0, %7 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %22 = load i16, ptr %21, align 2, !tbaa !124
  %23 = sext i16 %22 to i32
  %24 = tail call fastcc i32 @min_ii(i32 noundef %20, i32 noundef %23) #24
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %45

26:                                               ; preds = %1, %19
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %28 = icmp eq ptr %6, null
  br i1 %28, label %86, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %31

31:                                               ; preds = %29, %42
  %32 = phi ptr [ %6, %29 ], [ %43, %42 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !119
  %34 = load ptr, ptr %30, align 8, !tbaa !120
  %35 = tail call i32 %33(ptr noundef %34) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.LampRen, ptr %32, i64 0, i32 57
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @makeshadowbuf(ptr noundef nonnull %0, ptr noundef nonnull %32) #24
  br label %42

42:                                               ; preds = %37, %41
  %43 = load ptr, ptr %32, align 8, !tbaa !59
  %44 = icmp eq ptr %43, null
  br i1 %44, label %86, label %31, !llvm.loop !125

45:                                               ; preds = %19
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  store ptr @thread_break, ptr %46, align 8, !tbaa !119
  br i1 %8, label %54, label %48

48:                                               ; preds = %45, %48
  %49 = phi ptr [ %52, %48 ], [ %6, %45 ]
  %50 = getelementptr inbounds %struct.LampRen, ptr %49, i64 0, i32 70
  store i32 0, ptr %50, align 8, !tbaa !126
  %51 = getelementptr inbounds %struct.LampRen, ptr %49, i64 0, i32 71
  store i32 0, ptr %51, align 4, !tbaa !127
  %52 = load ptr, ptr %49, align 8, !tbaa !59
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %48, !llvm.loop !128

54:                                               ; preds = %48, %45
  call void @BLI_init_threads(ptr noundef nonnull %2, ptr noundef nonnull @do_shadow_thread, i32 noundef %24) #25
  %55 = call i32 @llvm.smax.i32(i32 %24, i32 1)
  br label %61

56:                                               ; preds = %61
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %58 = load ptr, ptr %57, align 8, !tbaa !120
  %59 = call i32 %47(ptr noundef %58) #25
  store volatile i32 %59, ptr @g_break, align 4, !tbaa !96
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %85

61:                                               ; preds = %54, %61
  %62 = phi i32 [ %63, %61 ], [ 0, %54 ]
  call void @BLI_insert_thread(ptr noundef nonnull %2, ptr noundef %0) #25
  %63 = add nuw nsw i32 %62, 1
  %64 = icmp eq i32 %63, %55
  br i1 %64, label %56, label %61, !llvm.loop !129

65:                                               ; preds = %56, %80
  call void @PIL_sleep_ms(i32 noundef 50) #25
  call void @BLI_lock_thread(i32 noundef 3) #25
  %66 = load ptr, ptr %5, align 8, !tbaa !59
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %65, %77
  %69 = phi ptr [ %78, %77 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.LampRen, ptr %69, i64 0, i32 57
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.LampRen, ptr %69, i64 0, i32 71
  %75 = load i32, ptr %74, align 4, !tbaa !127
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68, %73
  %78 = load ptr, ptr %69, align 8, !tbaa !59
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %68, !llvm.loop !130

80:                                               ; preds = %73
  call void @BLI_unlock_thread(i32 noundef 3) #25
  %81 = load ptr, ptr %57, align 8, !tbaa !120
  %82 = call i32 %47(ptr noundef %81) #25
  store volatile i32 %82, ptr @g_break, align 4, !tbaa !96
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %65, label %85, !llvm.loop !131

84:                                               ; preds = %65, %77
  call void @BLI_unlock_thread(i32 noundef 3) #25
  br label %85

85:                                               ; preds = %80, %56, %84
  call void @BLI_end_threads(ptr noundef nonnull %2) #25
  store ptr %47, ptr %46, align 8, !tbaa !119
  store volatile i32 0, ptr @g_break, align 4, !tbaa !96
  br label %86

86:                                               ; preds = %31, %42, %26, %85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !132 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #7 !PGOFuncName !133 {
  %2 = load volatile i32, ptr @g_break, align 4, !tbaa !96
  ret i32 %2
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @do_shadow_thread(ptr noundef %0) #0 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %5

5:                                                ; preds = %21, %1
  tail call void @BLI_lock_thread(i32 noundef 3) #25
  %6 = load ptr, ptr %2, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %17
  %9 = phi ptr [ %18, %17 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 57
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 70
  %15 = load i32, ptr %14, align 8, !tbaa !126
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8, %13
  %18 = load ptr, ptr %9, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !135

20:                                               ; preds = %5, %17
  tail call void @BLI_unlock_thread(i32 noundef 3) #25
  br label %28

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 70
  store i32 1, ptr %22, align 8, !tbaa !126
  tail call void @BLI_unlock_thread(i32 noundef 3) #25
  tail call void @makeshadowbuf(ptr noundef %0, ptr noundef nonnull %9) #24
  tail call void @BLI_lock_thread(i32 noundef 3) #25
  %23 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 71
  store i32 1, ptr %23, align 4, !tbaa !127
  tail call void @BLI_unlock_thread(i32 noundef 3) #25
  %24 = load ptr, ptr %3, align 8, !tbaa !119
  %25 = load ptr, ptr %4, align 8, !tbaa !120
  %26 = tail call i32 %24(ptr noundef %25) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %5, label %28, !llvm.loop !136

28:                                               ; preds = %21, %20
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeshadowbuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %70
  %12 = phi ptr [ %7, %9 ], [ %74, %70 ]
  %13 = getelementptr inbounds %struct.ShadSampleBuf, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %10, align 8, !tbaa !44
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = mul i32 %17, %17
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 1)
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %19, %31
  %24 = phi i64 [ 0, %19 ], [ %32, %31 ]
  %25 = load ptr, ptr %13, align 8, !tbaa !137
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %30(ptr noundef nonnull %27) #25
  br label %31

31:                                               ; preds = %23, %29
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %22
  br i1 %33, label %34, label %23, !llvm.loop !139

34:                                               ; preds = %31
  %35 = load ptr, ptr %13, align 8, !tbaa !137
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi ptr [ %35, %34 ], [ %14, %16 ]
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %38(ptr noundef %37) #25
  %39 = getelementptr inbounds %struct.ShadSampleBuf, ptr %12, i64 0, i32 5
  br label %70

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.ShadSampleBuf, ptr %12, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !140
  %43 = getelementptr inbounds %struct.ShadSampleBuf, ptr %12, i64 0, i32 3
  %44 = load i32, ptr %10, align 8, !tbaa !44
  %45 = mul nsw i32 %44, %44
  %46 = icmp ult i32 %45, 256
  br i1 %46, label %67, label %47

47:                                               ; preds = %40
  %48 = lshr i32 %45, 8
  %49 = load ptr, ptr %43, align 8, !tbaa !141
  br label %50

50:                                               ; preds = %47, %60
  %51 = phi ptr [ %63, %60 ], [ %49, %47 ]
  %52 = phi ptr [ %62, %60 ], [ %42, %47 ]
  %53 = phi i32 [ %61, %60 ], [ 0, %47 ]
  %54 = load i8, ptr %51, align 1, !tbaa !84
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %58 = load i64, ptr %52, align 8, !tbaa !142
  %59 = inttoptr i64 %58 to ptr
  tail call void %57(ptr noundef %59) #25
  br label %60

60:                                               ; preds = %50, %56
  %61 = add nuw nsw i32 %53, 1
  %62 = getelementptr inbounds i64, ptr %52, i64 1
  %63 = getelementptr inbounds i8, ptr %51, i64 1
  %64 = icmp eq i32 %61, %48
  br i1 %64, label %65, label %50, !llvm.loop !144

65:                                               ; preds = %60
  %66 = load ptr, ptr %41, align 8, !tbaa !140
  br label %67

67:                                               ; preds = %65, %40
  %68 = phi ptr [ %66, %65 ], [ %42, %40 ]
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %69(ptr noundef %68) #25
  br label %70

70:                                               ; preds = %36, %67
  %71 = phi ptr [ %39, %36 ], [ %43, %67 ]
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %73 = load ptr, ptr %71, align 8, !tbaa !59
  tail call void %72(ptr noundef %73) #25
  %74 = load ptr, ptr %12, align 8, !tbaa !59
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %11, !llvm.loop !145

76:                                               ; preds = %70, %5
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #25
  %77 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %81(ptr noundef nonnull %78) #25
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %84 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %83(ptr noundef %84) #25
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %85

85:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @testshadowbuf(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #23
  %15 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = icmp eq ptr %16, null
  br i1 %17, label %173, label %18

18:                                               ; preds = %7
  %19 = fcmp ugt float %5, 0.000000e+00
  br i1 %19, label %20, label %173

20:                                               ; preds = %18
  call fastcc void @shadowbuf_project_co(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %1, ptr noundef %2) #24
  %21 = load float, ptr %13, align 4, !tbaa !89
  %22 = fcmp ult float %21, 1.000000e+00
  br i1 %22, label %23, label %173

23:                                               ; preds = %20
  %24 = fcmp ugt float %21, -1.000000e+00
  br i1 %24, label %25, label %173

25:                                               ; preds = %23
  %26 = fmul float %21, 0x41E0000000000000
  %27 = fptosi float %26 to i32
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %29 = load i16, ptr %1, align 8, !tbaa !53
  %30 = sext i16 %29 to i32
  %31 = call i32 @get_render_shadow_samples(ptr noundef nonnull %28, i32 noundef %30) #25
  %32 = mul i32 %31, %31
  %33 = trunc i32 %32 to i16
  %34 = fcmp une float %6, 0.000000e+00
  %35 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 15
  %36 = load i32, ptr %35, align 4, !tbaa !93
  %37 = sitofp i32 %36 to float
  %38 = select i1 %34, float %6, float 1.000000e+00
  %39 = fmul float %38, %37
  %40 = fneg float %5
  %41 = call float @llvm.fmuladd.f32(float %40, float %5, float 1.500000e+00)
  %42 = fmul float %41, %39
  %43 = fptosi float %42 to i32
  %44 = and i32 %32, 65535
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %67

46:                                               ; preds = %25
  %47 = load ptr, ptr %15, align 8, !tbaa !59
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load float, ptr %11, align 4, !tbaa !89
  %51 = fptosi float %50 to i32
  %52 = load float, ptr %12, align 4, !tbaa !89
  %53 = fptosi float %52 to i32
  br label %54

54:                                               ; preds = %49, %54
  %55 = phi ptr [ %47, %49 ], [ %59, %54 ]
  %56 = phi float [ 0.000000e+00, %49 ], [ %58, %54 ]
  %57 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef nonnull %55, i32 noundef %43, i32 noundef %51, i32 noundef %53, i32 noundef %27) #24
  %58 = fadd float %56, %57
  %59 = load ptr, ptr %55, align 8, !tbaa !59
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !147

61:                                               ; preds = %54, %46
  %62 = phi float [ 0.000000e+00, %46 ], [ %58, %54 ]
  %63 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 2
  %64 = load i16, ptr %63, align 4, !tbaa !52
  %65 = sitofp i16 %64 to float
  %66 = fdiv float %62, %65
  br label %173

67:                                               ; preds = %25
  %68 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 11
  %69 = load float, ptr %68, align 4, !tbaa !148
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #24
  %70 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  call fastcc void @shadowbuf_project_co(ptr noundef nonnull %9, ptr noundef nonnull %70, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %8) #24
  %71 = load float, ptr %11, align 4, !tbaa !89
  %72 = load float, ptr %9, align 4, !tbaa !89
  %73 = load float, ptr %12, align 4, !tbaa !89
  %74 = load float, ptr %70, align 4, !tbaa !89
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %4) #24
  %75 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  call fastcc void @shadowbuf_project_co(ptr noundef nonnull %10, ptr noundef nonnull %75, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %8) #24
  %76 = load float, ptr %10, align 4, !tbaa !89
  %77 = load float, ptr %75, align 4, !tbaa !89
  %78 = insertelement <2 x float> poison, float %71, i64 0
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> zeroinitializer
  %80 = insertelement <2 x float> poison, float %72, i64 0
  %81 = insertelement <2 x float> %80, float %76, i64 1
  %82 = fsub <2 x float> %79, %81
  %83 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %82)
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %85 = fadd <2 x float> %83, %84
  %86 = extractelement <2 x float> %85, i64 0
  %87 = fmul float %69, %86
  %88 = insertelement <2 x float> poison, float %73, i64 0
  %89 = shufflevector <2 x float> %88, <2 x float> poison, <2 x i32> zeroinitializer
  %90 = insertelement <2 x float> poison, float %74, i64 0
  %91 = insertelement <2 x float> %90, float %77, i64 1
  %92 = fsub <2 x float> %89, %91
  %93 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %92)
  %94 = shufflevector <2 x float> %93, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %95 = fadd <2 x float> %93, %94
  %96 = extractelement <2 x float> %95, i64 0
  %97 = fmul float %69, %96
  %98 = fcmp olt float %87, 1.000000e+00
  %99 = select i1 %98, float 1.000000e+00, float %87
  %100 = fcmp olt float %97, 1.000000e+00
  %101 = select i1 %100, float 1.000000e+00, float %97
  %102 = fneg float %99
  %103 = call float @llvm.fmuladd.f32(float %102, float 5.000000e-01, float %71)
  %104 = fneg float %101
  %105 = call float @llvm.fmuladd.f32(float %104, float 5.000000e-01, float %73)
  %106 = fcmp olt float %99, 1.600000e+01
  %107 = fcmp olt float %101, 1.600000e+01
  %108 = select i1 %106, i1 %107, i1 false
  %109 = load ptr, ptr %15, align 8, !tbaa !59
  br i1 %108, label %110, label %130

110:                                              ; preds = %67
  %111 = fptosi float %103 to i32
  %112 = fptosi float %105 to i32
  %113 = call fastcc i32 @firstreadshadbuf(ptr noundef nonnull %1, ptr noundef %109, ptr noundef nonnull %14, i32 noundef %111, i32 noundef %112, i32 noundef 0) #24, !range !149
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %110
  %116 = fadd float %99, %103
  %117 = fptosi float %116 to i32
  %118 = call fastcc i32 @firstreadshadbuf(ptr noundef nonnull %1, ptr noundef %109, ptr noundef nonnull %14, i32 noundef %117, i32 noundef %112, i32 noundef 1) #24, !range !149
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = fadd float %101, %105
  %122 = fptosi float %121 to i32
  %123 = call fastcc i32 @firstreadshadbuf(ptr noundef nonnull %1, ptr noundef %109, ptr noundef nonnull %14, i32 noundef %111, i32 noundef %122, i32 noundef 1) #24, !range !149
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = call fastcc i32 @firstreadshadbuf(ptr noundef nonnull %1, ptr noundef %109, ptr noundef nonnull %14, i32 noundef %117, i32 noundef %122, i32 noundef 1) #24, !range !149
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef %109, i32 noundef %43, i32 noundef %111, i32 noundef %112, i32 noundef %27) #24
  br label %173

130:                                              ; preds = %110, %120, %125, %115, %67
  %131 = icmp eq ptr %109, null
  br i1 %131, label %167, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 6
  %134 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 7
  %135 = icmp sgt i16 %33, 0
  br label %140

136:                                              ; preds = %146, %140
  %137 = phi float [ %142, %140 ], [ %162, %146 ]
  %138 = load ptr, ptr %141, align 8, !tbaa !59
  %139 = icmp eq ptr %138, null
  br i1 %139, label %167, label %140, !llvm.loop !150

140:                                              ; preds = %132, %136
  %141 = phi ptr [ %109, %132 ], [ %138, %136 ]
  %142 = phi float [ 0.000000e+00, %132 ], [ %137, %136 ]
  br i1 %135, label %143, label %136

143:                                              ; preds = %140
  %144 = load ptr, ptr %134, align 8, !tbaa !99
  %145 = load ptr, ptr %133, align 8, !tbaa !54
  br label %146

146:                                              ; preds = %143, %146
  %147 = phi i16 [ %163, %146 ], [ %33, %143 ]
  %148 = phi float [ %162, %146 ], [ %142, %143 ]
  %149 = phi ptr [ %164, %146 ], [ %145, %143 ]
  %150 = phi ptr [ %165, %146 ], [ %144, %143 ]
  %151 = load float, ptr %149, align 4, !tbaa !89
  %152 = fadd float %151, 5.000000e-01
  %153 = call float @llvm.fmuladd.f32(float %99, float %152, float %103)
  %154 = fptosi float %153 to i32
  %155 = getelementptr inbounds float, ptr %149, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !89
  %157 = fadd float %156, 5.000000e-01
  %158 = call float @llvm.fmuladd.f32(float %101, float %157, float %105)
  %159 = fptosi float %158 to i32
  %160 = load float, ptr %150, align 4, !tbaa !89
  %161 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef nonnull %141, i32 noundef %43, i32 noundef %154, i32 noundef %159, i32 noundef %27) #24
  %162 = call float @llvm.fmuladd.f32(float %160, float %161, float %148)
  %163 = add nsw i16 %147, -1
  %164 = getelementptr inbounds float, ptr %149, i64 2
  %165 = getelementptr inbounds float, ptr %150, i64 1
  %166 = icmp ugt i16 %147, 1
  br i1 %166, label %146, label %136, !llvm.loop !151

167:                                              ; preds = %136, %130
  %168 = phi float [ 0.000000e+00, %130 ], [ %137, %136 ]
  %169 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 2
  %170 = load i16, ptr %169, align 4, !tbaa !52
  %171 = sitofp i16 %170 to float
  %172 = fdiv float %168, %171
  br label %173

173:                                              ; preds = %23, %20, %18, %7, %167, %128, %61
  %174 = phi float [ %66, %61 ], [ %129, %128 ], [ %172, %167 ], [ 1.000000e+00, %7 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %20 ], [ 1.000000e+00, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  ret float %174
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shadowbuf_project_co(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !152 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %4) #24
  %11 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !89
  %12 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 3
  call void @mul_m4_v4(ptr noundef nonnull %12, ptr noundef nonnull %6) #25
  %13 = load float, ptr %6, align 16, !tbaa !89
  %14 = load float, ptr %11, align 4, !tbaa !89
  %15 = fdiv float %13, %14
  %16 = fadd float %15, 1.000000e+00
  %17 = fmul float %10, %16
  store float %17, ptr %0, align 4, !tbaa !89
  %18 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !89
  %20 = fdiv float %19, %14
  %21 = fadd float %20, 1.000000e+00
  %22 = fmul float %10, %21
  store float %22, ptr %1, align 4, !tbaa !89
  %23 = icmp eq ptr %2, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !89
  %27 = fdiv float %26, %14
  store float %27, ptr %2, align 4, !tbaa !89
  br label %28

28:                                               ; preds = %24, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @readshadowbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #9 !PGOFuncName !153 {
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp sgt i32 %10, %3
  %12 = add nsw i32 %10, -1
  %13 = select i1 %11, i32 %3, i32 %12
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %16 = icmp slt i32 %4, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = icmp sgt i32 %19, %4
  %21 = add nsw i32 %19, -1
  %22 = select i1 %20, i32 %4, i32 %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %17 ]
  %25 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call fastcc float @readdeepshadowbuf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %15, i32 noundef %24, i32 noundef %5) #24
  br label %128

30:                                               ; preds = %23
  %31 = ashr i32 %24, 4
  %32 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !44
  %34 = ashr i32 %33, 4
  %35 = mul nsw i32 %34, %31
  %36 = ashr i32 %15, 4
  %37 = add nsw i32 %35, %36
  %38 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !141
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !140
  %44 = getelementptr inbounds i64, ptr %43, i64 %40
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = load i8, ptr %41, align 1, !tbaa !84
  switch i8 %46, label %90 [
    i8 3, label %47
    i8 2, label %61
    i8 1, label %76
  ]

47:                                               ; preds = %30
  %48 = and i32 %24, 15
  %49 = mul nuw nsw i32 %48, 48
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %45, i64 %50
  %52 = and i32 %15, 15
  %53 = mul nuw nsw i32 %52, 3
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !84
  %57 = getelementptr inbounds i8, ptr %55, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !84
  %59 = getelementptr inbounds i8, ptr %55, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !84
  br label %99

61:                                               ; preds = %30
  %62 = shl i32 %24, 5
  %63 = and i32 %62, 480
  %64 = shl i32 %15, 1
  %65 = and i32 %64, 30
  %66 = add nuw nsw i32 %65, 4
  %67 = add nuw nsw i32 %66, %63
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %45, i64 %68
  %70 = load i32, ptr %45, align 4, !tbaa !96
  %71 = lshr i32 %70, 24
  %72 = trunc i32 %71 to i8
  %73 = load i8, ptr %69, align 1, !tbaa !84
  %74 = getelementptr inbounds i8, ptr %69, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !84
  br label %99

76:                                               ; preds = %30
  %77 = shl i32 %24, 4
  %78 = and i32 %77, 240
  %79 = and i32 %15, 15
  %80 = add nuw nsw i32 %79, 4
  %81 = add nuw nsw i32 %80, %78
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %45, i64 %82
  %84 = load i32, ptr %45, align 4, !tbaa !96
  %85 = lshr i32 %84, 16
  %86 = trunc i32 %85 to i8
  %87 = lshr i32 %84, 24
  %88 = trunc i32 %87 to i8
  %89 = load i8, ptr %83, align 1, !tbaa !84
  br label %99

90:                                               ; preds = %30
  %91 = ptrtoint ptr %45 to i64
  %92 = trunc i64 %91 to i32
  %93 = lshr i64 %91, 8
  %94 = trunc i64 %93 to i8
  %95 = lshr i64 %91, 16
  %96 = trunc i64 %95 to i8
  %97 = lshr i64 %91, 24
  %98 = trunc i64 %97 to i8
  br label %99

99:                                               ; preds = %61, %90, %76, %47
  %100 = phi i8 [ %56, %47 ], [ %72, %61 ], [ %88, %76 ], [ %98, %90 ]
  %101 = phi i8 [ %58, %47 ], [ %73, %61 ], [ %86, %76 ], [ %96, %90 ]
  %102 = phi i8 [ %60, %47 ], [ %75, %61 ], [ %89, %76 ], [ %94, %90 ]
  %103 = phi i32 [ 0, %47 ], [ %70, %61 ], [ %84, %76 ], [ %92, %90 ]
  %104 = zext i8 %100 to i32
  %105 = shl nuw i32 %104, 24
  %106 = zext i8 %101 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = or disjoint i32 %107, %105
  %109 = zext i8 %102 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or disjoint i32 %108, %110
  %112 = and i32 %103, 255
  %113 = or disjoint i32 %111, %112
  %114 = icmp sgt i32 %113, %5
  %115 = add nsw i32 %2, -2147483136
  %116 = icmp sgt i32 %115, %5
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %99
  %119 = sub nsw i32 %5, %2
  %120 = icmp slt i32 %113, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = sub nsw i32 %5, %113
  %123 = sitofp i32 %122 to float
  %124 = sitofp i32 %2 to float
  %125 = fdiv float %123, %124
  %126 = fneg float %125
  %127 = tail call float @llvm.fmuladd.f32(float %126, float %125, float 1.000000e+00)
  br label %128

128:                                              ; preds = %118, %99, %121, %28
  %129 = phi float [ %29, %28 ], [ %127, %121 ], [ 1.000000e+00, %99 ], [ 0.000000e+00, %118 ]
  ret float %129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !154 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @firstreadshadbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 !PGOFuncName !155 {
  %7 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = icmp sgt i32 %14, %3
  %16 = add nsw i32 %14, -1
  %17 = select i1 %15, i32 %3, i32 %16
  %18 = ashr i32 %17, 4
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi i32 [ 0, %10 ], [ %18, %12 ]
  %21 = icmp slt i32 %4, 0
  %22 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %23 = load i32, ptr %22, align 8, !tbaa !44
  %24 = icmp sgt i32 %23, %4
  %25 = add nsw i32 %23, -1
  %26 = select i1 %24, i32 %4, i32 %25
  %27 = ashr i32 %26, 4
  %28 = select i1 %21, i32 0, i32 %27
  %29 = ashr i32 %23, 4
  %30 = mul nsw i32 %29, %28
  %31 = add nsw i32 %30, %20
  %32 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !84
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %19
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !140
  %43 = getelementptr inbounds i64, ptr %42, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  store ptr %44, ptr %2, align 8, !tbaa !59
  br label %53

45:                                               ; preds = %38
  %46 = load ptr, ptr %2, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !140
  %49 = getelementptr inbounds i64, ptr %48, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = icmp eq ptr %46, %50
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %19, %45, %6, %40
  %54 = phi i32 [ 1, %40 ], [ 0, %6 ], [ %52, %45 ], [ 0, %19 ]
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @shadow_halo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  %7 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  %11 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %12 = load <2 x float>, ptr %1, align 4, !tbaa !89
  store <2 x float> %12, ptr %4, align 16, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 62
  %16 = load float, ptr %15, align 4, !tbaa !156
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %17, ptr %18, align 8, !tbaa !89
  %19 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %19, align 4, !tbaa !89
  %20 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 5
  call void @mul_m4_v4(ptr noundef nonnull %20, ptr noundef nonnull %4) #25
  %21 = load <4 x float>, ptr %4, align 16
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %23 = load float, ptr %19, align 4, !tbaa !89
  %24 = load float, ptr %11, align 4, !tbaa !89
  %25 = fdiv float %24, %23
  %26 = fadd float %25, 1.000000e+00
  %27 = fmul float %10, %26
  %28 = load float, ptr %18, align 8, !tbaa !89
  %29 = fdiv float %28, %23
  %30 = load <2 x float>, ptr %2, align 4, !tbaa !89
  store <2 x float> %30, ptr %4, align 16, !tbaa !89
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !89
  %33 = load float, ptr %15, align 4, !tbaa !156
  %34 = fdiv float %32, %33
  store float %34, ptr %18, align 8, !tbaa !89
  store float 1.000000e+00, ptr %19, align 4, !tbaa !89
  call void @mul_m4_v4(ptr noundef nonnull %20, ptr noundef nonnull %4) #25
  %35 = load float, ptr %4, align 16, !tbaa !89
  %36 = load float, ptr %19, align 4, !tbaa !89
  %37 = insertelement <2 x float> %22, float %35, i64 1
  %38 = insertelement <2 x float> poison, float %23, i64 0
  %39 = insertelement <2 x float> %38, float %36, i64 1
  %40 = fdiv <2 x float> %37, %39
  %41 = fadd <2 x float> %40, <float 1.000000e+00, float 1.000000e+00>
  %42 = insertelement <2 x float> poison, float %10, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x float> %43, %41
  %45 = load float, ptr %11, align 4, !tbaa !89
  %46 = fdiv float %45, %36
  %47 = fadd float %46, 1.000000e+00
  %48 = fmul float %10, %47
  %49 = load float, ptr %18, align 8, !tbaa !89
  %50 = fdiv float %49, %36
  %51 = extractelement <2 x float> %44, i64 0
  %52 = fptosi float %51 to i32
  %53 = fptosi float %27 to i32
  %54 = extractelement <2 x float> %44, i64 1
  %55 = fcmp une float %51, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %3
  %57 = fsub float %54, %51
  %58 = fcmp ogt float %57, 0.000000e+00
  %59 = sitofp i32 %52 to float
  %60 = fsub float %51, %59
  br i1 %58, label %61, label %74

61:                                               ; preds = %56
  %62 = fadd float %60, -1.000000e+00
  %63 = fsub float %51, %54
  %64 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !157
  %66 = sext i16 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = sitofp i32 %67 to float
  %69 = insertelement <2 x float> poison, float %68, i64 0
  %70 = insertelement <2 x float> %69, float %62, i64 1
  %71 = insertelement <2 x float> poison, float %63, i64 0
  %72 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> zeroinitializer
  %73 = fdiv <2 x float> %70, %72
  br label %86

74:                                               ; preds = %56
  %75 = fsub float %51, %54
  %76 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !157
  %78 = sext i16 %77 to i32
  %79 = sitofp i16 %77 to float
  %80 = insertelement <2 x float> poison, float %79, i64 0
  %81 = insertelement <2 x float> %80, float %60, i64 1
  %82 = insertelement <2 x float> poison, float %75, i64 0
  %83 = shufflevector <2 x float> %82, <2 x float> poison, <2 x i32> zeroinitializer
  %84 = fdiv <2 x float> %81, %83
  %85 = sub nsw i32 0, %78
  br label %86

86:                                               ; preds = %3, %61, %74
  %87 = phi i32 [ %66, %61 ], [ %85, %74 ], [ 0, %3 ]
  %88 = phi <2 x float> [ %73, %61 ], [ %84, %74 ], [ <float 0.000000e+00, float 1.000000e+00>, %3 ]
  %89 = fcmp une float %27, %48
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  %91 = fsub float %48, %27
  %92 = fcmp ogt float %91, 0.000000e+00
  %93 = sitofp i32 %53 to float
  %94 = fsub float %27, %93
  br i1 %92, label %95, label %108

95:                                               ; preds = %90
  %96 = fadd float %94, -1.000000e+00
  %97 = fsub float %27, %48
  %98 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %99 = load i16, ptr %98, align 2, !tbaa !157
  %100 = sext i16 %99 to i32
  %101 = sub nsw i32 0, %100
  %102 = sitofp i32 %101 to float
  %103 = insertelement <2 x float> poison, float %102, i64 0
  %104 = insertelement <2 x float> %103, float %96, i64 1
  %105 = insertelement <2 x float> poison, float %97, i64 0
  %106 = shufflevector <2 x float> %105, <2 x float> poison, <2 x i32> zeroinitializer
  %107 = fdiv <2 x float> %104, %106
  br label %120

108:                                              ; preds = %90
  %109 = fsub float %27, %48
  %110 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !157
  %112 = sext i16 %111 to i32
  %113 = sitofp i16 %111 to float
  %114 = insertelement <2 x float> poison, float %113, i64 0
  %115 = insertelement <2 x float> %114, float %94, i64 1
  %116 = insertelement <2 x float> poison, float %109, i64 0
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <2 x i32> zeroinitializer
  %118 = fdiv <2 x float> %115, %117
  %119 = sub nsw i32 0, %112
  br label %120

120:                                              ; preds = %86, %95, %108
  %121 = phi i32 [ %100, %95 ], [ %119, %108 ], [ 0, %86 ]
  %122 = phi <2 x float> [ %107, %95 ], [ %118, %108 ], [ <float 0.000000e+00, float 1.000000e+00>, %86 ]
  %123 = fsub float %50, %29
  %124 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 2
  %125 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 16
  %126 = extractelement <2 x float> %122, i64 1
  %127 = extractelement <2 x float> %88, i64 1
  %128 = extractelement <2 x float> %122, i64 0
  %129 = extractelement <2 x float> %88, i64 0
  br label %130

130:                                              ; preds = %182, %120
  %131 = phi float [ %126, %120 ], [ %153, %182 ]
  %132 = phi float [ %127, %120 ], [ %154, %182 ]
  %133 = phi float [ 0.000000e+00, %120 ], [ %160, %182 ]
  %134 = phi float [ 0.000000e+00, %120 ], [ %164, %182 ]
  %135 = phi float [ 0.000000e+00, %120 ], [ %183, %182 ]
  %136 = phi i32 [ %52, %120 ], [ %155, %182 ]
  %137 = phi i32 [ %53, %120 ], [ %156, %182 ]
  %138 = fcmp oeq float %132, %131
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = fadd float %129, %132
  %141 = add nsw i32 %136, %87
  %142 = fadd float %128, %131
  %143 = add nsw i32 %137, %121
  br label %152

144:                                              ; preds = %130
  %145 = fcmp olt float %132, %131
  br i1 %145, label %146, label %149

146:                                              ; preds = %144
  %147 = fadd float %129, %132
  %148 = add nsw i32 %136, %87
  br label %152

149:                                              ; preds = %144
  %150 = fadd float %128, %131
  %151 = add nsw i32 %137, %121
  br label %152

152:                                              ; preds = %146, %149, %139
  %153 = phi float [ %142, %139 ], [ %131, %146 ], [ %150, %149 ]
  %154 = phi float [ %140, %139 ], [ %147, %146 ], [ %132, %149 ]
  %155 = phi i32 [ %141, %139 ], [ %148, %146 ], [ %136, %149 ]
  %156 = phi i32 [ %143, %139 ], [ %137, %146 ], [ %151, %149 ]
  %157 = call fastcc float @min_ff(float noundef %154, float noundef %153) #24
  %158 = fcmp oeq float %157, %133
  br i1 %158, label %185, label %159

159:                                              ; preds = %152
  %160 = call fastcc float @min_ff(float noundef %157, float noundef 1.000000e+00) #24
  %161 = call float @llvm.fmuladd.f32(float %160, float %123, float %29)
  %162 = load i16, ptr %124, align 4, !tbaa !52
  %163 = sitofp i16 %162 to float
  %164 = fadd float %134, %163
  %165 = fcmp ugt float %161, -1.000000e+00
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  %167 = fadd float %135, 1.000000e+00
  br label %182

168:                                              ; preds = %159
  %169 = fcmp ult float %161, 1.000000e+00
  %170 = fmul float %161, 0x41DFFFFC00000000
  %171 = fptosi float %170 to i32
  %172 = select i1 %169, i32 %171, i32 2147479552
  %173 = load ptr, ptr %125, align 8, !tbaa !59
  %174 = icmp eq ptr %173, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %168, %175
  %176 = phi ptr [ %180, %175 ], [ %173, %168 ]
  %177 = phi float [ %179, %175 ], [ %135, %168 ]
  %178 = call fastcc float @readshadowbuf_halo(ptr noundef %6, ptr noundef nonnull %176, i32 noundef %155, i32 noundef %156, i32 noundef %172) #24
  %179 = fadd float %177, %178
  %180 = load ptr, ptr %176, align 8, !tbaa !59
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %175, !llvm.loop !158

182:                                              ; preds = %175, %168, %166
  %183 = phi float [ %167, %166 ], [ %135, %168 ], [ %179, %175 ]
  %184 = fcmp olt float %160, 1.000000e+00
  br i1 %184, label %130, label %185, !llvm.loop !159

185:                                              ; preds = %152, %182
  %186 = phi float [ %134, %152 ], [ %164, %182 ]
  %187 = phi float [ %135, %152 ], [ %183, %182 ]
  %188 = fcmp une float %186, 0.000000e+00
  %189 = fdiv float %187, %186
  %190 = select i1 %188, float %189, float 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  ret float %190
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !160 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @readshadowbuf_halo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #12 !PGOFuncName !161 {
  %6 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = sub nsw i32 0, %7
  %9 = or i32 %3, %2
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %115

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp sgt i32 %13, %2
  %15 = icmp sgt i32 %13, %3
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %11
  %18 = lshr i32 %3, 4
  %19 = lshr i32 %13, 4
  %20 = mul nsw i32 %19, %18
  %21 = lshr i32 %2, 4
  %22 = add nuw nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !140
  %29 = getelementptr inbounds i64, ptr %28, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = load i8, ptr %26, align 1, !tbaa !84
  switch i8 %31, label %75 [
    i8 3, label %32
    i8 2, label %46
    i8 1, label %61
  ]

32:                                               ; preds = %17
  %33 = and i32 %3, 15
  %34 = mul nuw nsw i32 %33, 48
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  %37 = and i32 %2, 15
  %38 = mul nuw nsw i32 %37, 3
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !84
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !84
  %44 = getelementptr inbounds i8, ptr %40, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !84
  br label %84

46:                                               ; preds = %17
  %47 = shl i32 %3, 5
  %48 = and i32 %47, 480
  %49 = shl i32 %2, 1
  %50 = and i32 %49, 30
  %51 = add nuw nsw i32 %50, 4
  %52 = add nuw nsw i32 %51, %48
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %30, i64 %53
  %55 = load i32, ptr %30, align 4, !tbaa !96
  %56 = lshr i32 %55, 24
  %57 = trunc i32 %56 to i8
  %58 = load i8, ptr %54, align 1, !tbaa !84
  %59 = getelementptr inbounds i8, ptr %54, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !84
  br label %84

61:                                               ; preds = %17
  %62 = shl i32 %3, 4
  %63 = and i32 %62, 240
  %64 = and i32 %2, 15
  %65 = add nuw nsw i32 %64, 4
  %66 = add nuw nsw i32 %65, %63
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %30, i64 %67
  %69 = load i32, ptr %30, align 4, !tbaa !96
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i8
  %72 = lshr i32 %69, 24
  %73 = trunc i32 %72 to i8
  %74 = load i8, ptr %68, align 1, !tbaa !84
  br label %84

75:                                               ; preds = %17
  %76 = ptrtoint ptr %30 to i64
  %77 = trunc i64 %76 to i32
  %78 = lshr i64 %76, 8
  %79 = trunc i64 %78 to i8
  %80 = lshr i64 %76, 16
  %81 = trunc i64 %80 to i8
  %82 = lshr i64 %76, 24
  %83 = trunc i64 %82 to i8
  br label %84

84:                                               ; preds = %46, %75, %61, %32
  %85 = phi i8 [ %41, %32 ], [ %57, %46 ], [ %73, %61 ], [ %83, %75 ]
  %86 = phi i8 [ %43, %32 ], [ %58, %46 ], [ %71, %61 ], [ %81, %75 ]
  %87 = phi i8 [ %45, %32 ], [ %60, %46 ], [ %74, %61 ], [ %79, %75 ]
  %88 = phi i32 [ 0, %32 ], [ %55, %46 ], [ %69, %61 ], [ %77, %75 ]
  %89 = zext i8 %85 to i32
  %90 = shl nuw i32 %89, 24
  %91 = zext i8 %86 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or disjoint i32 %92, %90
  %94 = zext i8 %87 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or disjoint i32 %93, %95
  %97 = and i32 %88, 255
  %98 = or disjoint i32 %96, %97
  %99 = icmp sgt i32 %98, 2147483135
  %100 = icmp sgt i32 %98, %4
  %101 = or i1 %99, %100
  br i1 %101, label %115, label %102

102:                                              ; preds = %84
  %103 = sub nsw i32 2147483647, %4
  %104 = icmp sle i32 %103, %7
  %105 = add nsw i32 %7, %4
  %106 = icmp slt i32 %98, %105
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = sub nsw i32 %4, %98
  %110 = sitofp i32 %109 to float
  %111 = sitofp i32 %8 to float
  %112 = fdiv float %110, %111
  %113 = fneg float %112
  %114 = tail call float @llvm.fmuladd.f32(float %113, float %112, float 1.000000e+00)
  br label %115

115:                                              ; preds = %102, %84, %11, %5, %108
  %116 = phi float [ %114, %108 ], [ 0.000000e+00, %5 ], [ 0.000000e+00, %11 ], [ 1.000000e+00, %84 ], [ 0.000000e+00, %102 ]
  ret float %116
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @ISB_getshadow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %4 = load i32, ptr %3, align 8, !tbaa !162
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %8 = load i16, ptr %7, align 2, !tbaa !164
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 17, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %93, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !167
  %19 = icmp eq ptr %18, null
  br i1 %19, label %93, label %20

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %22 = load i32, ptr %21, align 4, !tbaa !168
  %23 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !169
  %25 = sub nsw i32 %22, %24
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %93

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !170
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %33 = load i32, ptr %32, align 8, !tbaa !171
  %34 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !172
  %36 = sub nsw i32 %33, %35
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %93

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !173
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %38
  %43 = mul nsw i32 %36, %29
  br i1 %15, label %55, label %44

44:                                               ; preds = %42
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i16, ptr %14, i64 %45
  %47 = zext nneg i32 %25 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !174
  %50 = icmp sgt i16 %49, 4095
  %51 = sitofp i16 %49 to float
  %52 = fmul float %51, 0x3F30000000000000
  %53 = fsub float 1.000000e+00, %52
  %54 = select i1 %50, float 0.000000e+00, float %53
  br label %93

55:                                               ; preds = %42
  %56 = add nsw i32 %43, %25
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !175
  %59 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !176
  %60 = ptrtoint ptr %58 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 288
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !167
  %67 = sext i32 %56 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  %70 = icmp eq ptr %69, null
  br i1 %70, label %93, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !177
  %74 = add nsw i32 %73, 1
  br label %75

75:                                               ; preds = %71, %90
  %76 = phi ptr [ %69, %71 ], [ %91, %90 ]
  %77 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !178
  %79 = icmp eq i32 %78, %74
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !180
  %83 = icmp eq i32 %82, %64
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 3
  %86 = load float, ptr %85, align 8, !tbaa !181
  %87 = fcmp ult float %86, 1.000000e+00
  %88 = fsub float 1.000000e+00, %86
  %89 = select i1 %87, float %88, float 0.000000e+00
  br label %93

90:                                               ; preds = %80, %75
  %91 = load ptr, ptr %76, align 8, !tbaa !59
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %75, !llvm.loop !182

93:                                               ; preds = %90, %55, %31, %38, %20, %27, %6, %16, %2, %84, %44
  %94 = phi float [ %54, %44 ], [ %89, %84 ], [ 1.000000e+00, %2 ], [ 1.000000e+00, %16 ], [ 1.000000e+00, %6 ], [ 1.000000e+00, %27 ], [ 1.000000e+00, %20 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %31 ], [ 1.000000e+00, %55 ], [ 1.000000e+00, %90 ]
  ret float %94
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ISB_create(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %7 = icmp eq ptr %1, null
  br label %8

8:                                                ; preds = %5, %32
  %9 = phi ptr [ %3, %5 ], [ %33, %32 ]
  %10 = getelementptr inbounds %struct.GroupObject, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = getelementptr inbounds %struct.LampRen, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !185
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.LampRen, ptr %11, i64 0, i32 57
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.LampRen, ptr %11, i64 0, i32 36
  %21 = load i16, ptr %20, align 4, !tbaa !43
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %25 = tail call ptr %24(i64 noundef 40, ptr noundef nonnull @.str) #25
  %26 = load ptr, ptr %16, align 8, !tbaa !34
  %27 = load i16, ptr %6, align 2, !tbaa !186
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds %struct.ShadBuf, ptr %26, i64 0, i32 17, i64 %28
  store ptr %25, ptr %29, align 8, !tbaa !59
  br i1 %7, label %31, label %30

30:                                               ; preds = %23
  tail call fastcc void @isb_make_buffer_transp(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11) #24
  br label %32

31:                                               ; preds = %23
  tail call fastcc void @isb_make_buffer(ptr noundef nonnull %0, ptr noundef nonnull %11) #24
  br label %32

32:                                               ; preds = %30, %31, %19, %15, %8
  %33 = load ptr, ptr %9, align 8, !tbaa !59
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !llvm.loop !188

35:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_make_buffer_transp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !189 {
  %4 = alloca [16 x ptr], align 16
  %5 = alloca %struct.ISBBranch, align 8
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #23
  %9 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %10 = load i16, ptr %9, align 2, !tbaa !186
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.ShadBuf, ptr %8, i64 0, i32 17, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !190
  %16 = getelementptr inbounds %struct.ISBData, ptr %13, i64 0, i32 3
  store i32 %15, ptr %16, align 8, !tbaa !169
  %17 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !191
  %19 = getelementptr inbounds %struct.ISBData, ptr %13, i64 0, i32 4
  store i32 %18, ptr %19, align 4, !tbaa !172
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %21 = getelementptr inbounds %struct.ISBData, ptr %13, i64 0, i32 5
  %22 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %23 = load <2 x i32>, ptr %20, align 8, !tbaa !96
  store <2 x i32> %23, ptr %21, align 8, !tbaa !96
  %24 = tail call ptr @BLI_memarena_new(i64 noundef 2097152, ptr noundef nonnull @.str.17) #25
  tail call void @BLI_memarena_use_calloc(ptr noundef %24) #25
  %25 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %26 = tail call i16 @llvm.umax.i16(i16 %25, i16 1)
  %27 = icmp sgt i16 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3, %28
  %29 = phi i64 [ %39, %28 ], [ 0, %3 ]
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %31 = load i32, ptr %20, align 8, !tbaa !192
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 3
  %34 = load i32, ptr %22, align 4, !tbaa !193
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = tail call ptr %30(i64 noundef %36, ptr noundef nonnull @.str.18) #25
  %38 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %29
  store ptr %37, ptr %38, align 8, !tbaa !59
  %39 = add nuw nsw i64 %29, 1
  %40 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %41 = tail call i16 @llvm.umax.i16(i16 %40, i16 1)
  %42 = sext i16 %41 to i64
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %28, label %44, !llvm.loop !194

44:                                               ; preds = %28, %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %45 = getelementptr inbounds %struct.ShadBuf, ptr %8, i64 0, i32 14
  %46 = load i32, ptr %45, align 8, !tbaa !44
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3
  store float %47, ptr %48, align 8, !tbaa !195
  %49 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3, i32 2
  store float %47, ptr %49, align 8, !tbaa !198
  %50 = load i32, ptr %22, align 4, !tbaa !193
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %181

52:                                               ; preds = %44
  %53 = load i32, ptr %20, align 8, !tbaa !192
  br label %54

54:                                               ; preds = %52, %169
  %55 = phi i32 [ %170, %169 ], [ %50, %52 ]
  %56 = phi i32 [ %171, %169 ], [ %53, %52 ]
  %57 = phi i32 [ %172, %169 ], [ %53, %52 ]
  %58 = phi ptr [ %174, %169 ], [ %1, %52 ]
  %59 = phi i32 [ %175, %169 ], [ 0, %52 ]
  %60 = phi i32 [ %173, %169 ], [ 0, %52 ]
  %61 = icmp sgt i32 %57, 0
  br i1 %61, label %62, label %169

62:                                               ; preds = %54
  %63 = sext i32 %60 to i64
  br label %64

64:                                               ; preds = %62, %160
  %65 = phi i32 [ %56, %62 ], [ %161, %160 ]
  %66 = phi i64 [ %63, %62 ], [ %163, %160 ]
  %67 = phi ptr [ %58, %62 ], [ %164, %160 ]
  %68 = phi i32 [ 0, %62 ], [ %162, %160 ]
  %69 = getelementptr inbounds %struct.APixstr, ptr %67, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !96
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %160, label %72

72:                                               ; preds = %64
  %73 = load i32, ptr %14, align 8, !tbaa !190
  %74 = add nsw i32 %73, %68
  %75 = sitofp i32 %74 to float
  %76 = load i32, ptr %17, align 8, !tbaa !191
  %77 = add nsw i32 %76, %59
  %78 = sitofp i32 %77 to float
  br label %79

79:                                               ; preds = %72, %154
  %80 = phi ptr [ %67, %72 ], [ %156, %154 ]
  %81 = load ptr, ptr %4, align 16
  %82 = getelementptr inbounds ptr, ptr %81, i64 %66
  br label %83

83:                                               ; preds = %79, %151
  %84 = phi i64 [ 0, %79 ], [ %152, %151 ]
  %85 = getelementptr inbounds %struct.APixstr, ptr %80, i64 0, i32 2, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !96
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !176
  %90 = getelementptr inbounds %struct.APixstr, ptr %80, i64 0, i32 3, i64 %84
  %91 = load i32, ptr %90, align 4, !tbaa !96
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %89, i64 %92
  %94 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %89, i64 %92, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !65
  %96 = add i32 %86, 134217727
  %97 = and i32 %96, 134217727
  %98 = tail call ptr @RE_findOrAddVlak(ptr noundef %95, i32 noundef %97) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #23
  %99 = getelementptr inbounds %struct.APixstr, ptr %80, i64 0, i32 4, i64 %84
  store i16 0, ptr %99, align 2, !tbaa !174
  %100 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %139, label %102

102:                                              ; preds = %88
  %103 = icmp sgt i16 %100, 0
  br i1 %103, label %104, label %150

104:                                              ; preds = %102
  %105 = getelementptr inbounds [4 x i16], ptr %80, i64 0, i64 %84
  br label %106

106:                                              ; preds = %104, %134
  %107 = phi i64 [ 0, %104 ], [ %135, %134 ]
  %108 = trunc i64 %107 to i32
  %109 = shl nuw i32 1, %108
  %110 = load i16, ptr %105, align 2, !tbaa !174
  %111 = zext i16 %110 to i32
  %112 = and i32 %109, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %107
  %116 = load float, ptr %115, align 8, !tbaa !89
  %117 = fadd float %116, %75
  %118 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %107, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !89
  %120 = fadd float %119, %78
  %121 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %8, ptr noundef %93, ptr noundef %98, float noundef %117, float noundef %120, ptr noundef nonnull %6) #24, !range !149
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %114
  %124 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %107
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = getelementptr inbounds ptr, ptr %125, i64 %66
  %127 = tail call fastcc ptr @isb_alloc_sample_transp(ptr noundef %126, ptr noundef %24) #24
  %128 = load i32, ptr %90, align 4, !tbaa !96
  %129 = getelementptr inbounds %struct.ISBSampleA, ptr %127, i64 0, i32 2
  store i32 %128, ptr %129, align 8, !tbaa !200
  %130 = load i32, ptr %85, align 4, !tbaa !96
  %131 = and i32 %130, -134217729
  %132 = getelementptr inbounds %struct.ISBSampleA, ptr %127, i64 0, i32 3
  store i32 %131, ptr %132, align 4, !tbaa !202
  %133 = getelementptr inbounds %struct.ISBSampleA, ptr %127, i64 0, i32 1
  store ptr %99, ptr %133, align 8, !tbaa !203
  call fastcc void @copy_v3_v3(ptr noundef %127, ptr noundef nonnull %6) #24
  call fastcc void @bound_rectf(ptr noundef nonnull %48, ptr noundef %127) #24
  br label %134

134:                                              ; preds = %114, %123, %106
  %135 = add nuw nsw i64 %107, 1
  %136 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %137 = sext i16 %136 to i64
  %138 = icmp slt i64 %135, %137
  br i1 %138, label %106, label %150, !llvm.loop !204

139:                                              ; preds = %88
  %140 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %8, ptr noundef nonnull %93, ptr noundef %98, float noundef %75, float noundef %78, ptr noundef nonnull %6) #24, !range !149
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %139
  %143 = tail call fastcc ptr @isb_alloc_sample_transp(ptr noundef %82, ptr noundef %24) #24
  %144 = load i32, ptr %90, align 4, !tbaa !96
  %145 = getelementptr inbounds %struct.ISBSampleA, ptr %143, i64 0, i32 2
  store i32 %144, ptr %145, align 8, !tbaa !200
  %146 = load i32, ptr %85, align 4, !tbaa !96
  %147 = and i32 %146, -134217729
  %148 = getelementptr inbounds %struct.ISBSampleA, ptr %143, i64 0, i32 3
  store i32 %147, ptr %148, align 4, !tbaa !202
  %149 = getelementptr inbounds %struct.ISBSampleA, ptr %143, i64 0, i32 1
  store ptr %99, ptr %149, align 8, !tbaa !203
  call fastcc void @copy_v3_v3(ptr noundef %143, ptr noundef nonnull %6) #24
  call fastcc void @bound_rectf(ptr noundef nonnull %48, ptr noundef %143) #24
  br label %150

150:                                              ; preds = %134, %102, %139, %142
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #23
  br label %151

151:                                              ; preds = %83, %150
  %152 = add nuw nsw i64 %84, 1
  %153 = icmp eq i64 %152, 4
  br i1 %153, label %154, label %83, !llvm.loop !205

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.APixstr, ptr %80, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !206
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %79, !llvm.loop !208

158:                                              ; preds = %154
  %159 = load i32, ptr %20, align 8, !tbaa !192
  br label %160

160:                                              ; preds = %158, %64
  %161 = phi i32 [ %159, %158 ], [ %65, %64 ]
  %162 = add nuw nsw i32 %68, 1
  %163 = add nsw i64 %66, 1
  %164 = getelementptr inbounds %struct.APixstr, ptr %67, i64 1
  %165 = icmp slt i32 %162, %161
  br i1 %165, label %64, label %166, !llvm.loop !209

166:                                              ; preds = %160
  %167 = trunc i64 %163 to i32
  %168 = load i32, ptr %22, align 4, !tbaa !193
  br label %169

169:                                              ; preds = %166, %54
  %170 = phi i32 [ %55, %54 ], [ %168, %166 ]
  %171 = phi i32 [ %56, %54 ], [ %161, %166 ]
  %172 = phi i32 [ %57, %54 ], [ %161, %166 ]
  %173 = phi i32 [ %60, %54 ], [ %167, %166 ]
  %174 = phi ptr [ %58, %54 ], [ %164, %166 ]
  %175 = add nuw nsw i32 %59, 1
  %176 = icmp slt i32 %175, %170
  br i1 %176, label %54, label %177, !llvm.loop !210

177:                                              ; preds = %169
  %178 = load float, ptr %48, align 8, !tbaa !195
  %179 = load i32, ptr %45, align 8, !tbaa !44
  %180 = sitofp i32 %179 to float
  br label %181

181:                                              ; preds = %177, %44
  %182 = phi float [ %180, %177 ], [ %47, %44 ]
  %183 = phi float [ %178, %177 ], [ %47, %44 ]
  %184 = fcmp une float %183, %182
  br i1 %184, label %185, label %248

185:                                              ; preds = %181
  call fastcc void @isb_bsp_split_init(ptr noundef nonnull %5, ptr noundef %24, i32 noundef 8) #24
  %186 = call fastcc i32 @isb_add_samples_transp(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %24, ptr noundef nonnull %4) #24, !range !149
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %248

188:                                              ; preds = %185
  call fastcc void @isb_bsp_fillfaces(ptr noundef %2, ptr noundef nonnull %5) #24
  %189 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %190 = load i32, ptr %20, align 8, !tbaa !192
  %191 = load i32, ptr %22, align 4, !tbaa !193
  %192 = mul nsw i32 %191, %190
  %193 = sext i32 %192 to i64
  %194 = shl nsw i64 %193, 3
  %195 = call ptr %189(i64 noundef %194, ptr noundef nonnull @.str.19) #25
  %196 = getelementptr inbounds %struct.ISBData, ptr %13, i64 0, i32 1
  store ptr %195, ptr %196, align 8, !tbaa !167
  %197 = call ptr @BLI_memarena_new(i64 noundef 1310720, ptr noundef nonnull @.str.17) #25
  %198 = getelementptr inbounds %struct.ISBData, ptr %13, i64 0, i32 2
  store ptr %197, ptr %198, align 8, !tbaa !211
  %199 = load i32, ptr %20, align 8, !tbaa !192
  %200 = load i32, ptr %22, align 4, !tbaa !193
  %201 = mul nsw i32 %200, %199
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %248

203:                                              ; preds = %188, %243
  %204 = phi ptr [ %246, %243 ], [ %195, %188 ]
  %205 = phi ptr [ %245, %243 ], [ %1, %188 ]
  %206 = phi i32 [ %244, %243 ], [ %201, %188 ]
  %207 = getelementptr inbounds %struct.APixstr, ptr %205, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !96
  %209 = icmp eq i32 %208, 0
  %210 = icmp eq ptr %205, null
  %211 = or i1 %209, %210
  br i1 %211, label %243, label %212

212:                                              ; preds = %203, %239
  %213 = phi ptr [ %241, %239 ], [ %205, %203 ]
  br label %214

214:                                              ; preds = %212, %236
  %215 = phi i64 [ 0, %212 ], [ %237, %236 ]
  %216 = getelementptr inbounds %struct.APixstr, ptr %213, i64 0, i32 2, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !96
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %236, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.APixstr, ptr %213, i64 0, i32 4, i64 %215
  %221 = load i16, ptr %220, align 2, !tbaa !174
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %219
  %224 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %225 = icmp eq i16 %224, 0
  %226 = load ptr, ptr %198, align 8, !tbaa !211
  %227 = getelementptr inbounds %struct.APixstr, ptr %213, i64 0, i32 3, i64 %215
  %228 = load i32, ptr %227, align 4, !tbaa !96
  br i1 %225, label %234, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds [4 x i16], ptr %213, i64 0, i64 %215
  %231 = load i16, ptr %230, align 2, !tbaa !174
  %232 = call i32 @count_mask(i16 noundef zeroext %231) #25
  %233 = trunc i32 %232 to i16
  br label %234

234:                                              ; preds = %223, %229
  %235 = phi i16 [ %233, %229 ], [ 0, %223 ]
  call fastcc void @isb_add_shadfac(ptr noundef %204, ptr noundef %226, i32 noundef %228, i32 noundef %217, i16 noundef signext %221, i16 noundef signext %235) #24
  br label %236

236:                                              ; preds = %234, %214, %219
  %237 = add nuw nsw i64 %215, 1
  %238 = icmp eq i64 %237, 4
  br i1 %238, label %239, label %214, !llvm.loop !212

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.APixstr, ptr %213, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !206
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %212, !llvm.loop !213

243:                                              ; preds = %239, %203
  %244 = add nsw i32 %206, -1
  %245 = getelementptr inbounds %struct.APixstr, ptr %205, i64 1
  %246 = getelementptr inbounds ptr, ptr %204, i64 1
  %247 = icmp sgt i32 %206, 1
  br i1 %247, label %203, label %248, !llvm.loop !214

248:                                              ; preds = %243, %188, %185, %181
  %249 = phi i1 [ false, %185 ], [ true, %181 ], [ true, %188 ], [ true, %243 ]
  call void @BLI_memarena_free(ptr noundef %24) #25
  %250 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %251 = call i16 @llvm.umax.i16(i16 %250, i16 1)
  %252 = icmp sgt i16 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %248, %253
  %254 = phi i64 [ %258, %253 ], [ 0, %248 ]
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %256 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %254
  %257 = load ptr, ptr %256, align 8, !tbaa !59
  call void %255(ptr noundef %257) #25
  %258 = add nuw nsw i64 %254, 1
  %259 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %260 = call i16 @llvm.umax.i16(i16 %259, i16 1)
  %261 = sext i16 %260 to i64
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %253, label %263, !llvm.loop !215

263:                                              ; preds = %253, %248
  br i1 %249, label %266, label %264

264:                                              ; preds = %263
  %265 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %266

266:                                              ; preds = %264, %263
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_make_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !216 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca %struct.ISBBranch, align 8
  %5 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  %7 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %8 = load i16, ptr %7, align 2, !tbaa !186
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 17, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !190
  %14 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 3
  store i32 %13, ptr %14, align 8, !tbaa !169
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !191
  %17 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 4
  store i32 %16, ptr %17, align 4, !tbaa !172
  %18 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %19 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 5
  %20 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %21 = load <2 x i32>, ptr %18, align 8, !tbaa !96
  store <2 x i32> %21, ptr %19, align 8, !tbaa !96
  %22 = tail call ptr @BLI_memarena_new(i64 noundef 2097152, ptr noundef nonnull @.str.17) #25
  tail call void @BLI_memarena_use_calloc(ptr noundef %22) #25
  %23 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %24 = tail call i16 @llvm.umax.i16(i16 %23, i16 1)
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2, %26
  %27 = phi i64 [ %37, %26 ], [ 0, %2 ]
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %29 = load i32, ptr %18, align 8, !tbaa !192
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 5
  %32 = load i32, ptr %20, align 4, !tbaa !193
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = tail call ptr %28(i64 noundef %34, ptr noundef nonnull @.str.24) #25
  %36 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %27
  store ptr %35, ptr %36, align 8, !tbaa !59
  %37 = add nuw nsw i64 %27, 1
  %38 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %39 = tail call i16 @llvm.umax.i16(i16 %38, i16 1)
  %40 = sext i16 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %26, label %42, !llvm.loop !217

42:                                               ; preds = %26, %2
  %43 = phi i16 [ %23, %2 ], [ %38, %26 ]
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %47 = load i32, ptr %18, align 8, !tbaa !192
  %48 = load i32, ptr %20, align 4, !tbaa !193
  %49 = mul nsw i32 %48, %47
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 1
  %52 = tail call ptr %46(i64 noundef %51, ptr noundef nonnull @.str.19) #25
  store ptr %52, ptr %11, align 8, !tbaa !165
  br label %53

53:                                               ; preds = %45, %42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %54 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 14
  %55 = load i32, ptr %54, align 8, !tbaa !44
  %56 = sitofp i32 %55 to float
  %57 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3
  store float %56, ptr %57, align 8, !tbaa !195
  %58 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 2
  store float %56, ptr %58, align 8, !tbaa !198
  %59 = load i32, ptr %20, align 4, !tbaa !193
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %208

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %63 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %64 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %65 = load ptr, ptr %3, align 16
  %66 = load i32, ptr %18, align 8, !tbaa !192
  br label %67

67:                                               ; preds = %61, %198
  %68 = phi i32 [ %59, %61 ], [ %199, %198 ]
  %69 = phi i32 [ %66, %61 ], [ %200, %198 ]
  %70 = phi i32 [ 0, %61 ], [ %202, %198 ]
  %71 = phi i32 [ 0, %61 ], [ %201, %198 ]
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %73, label %198

73:                                               ; preds = %67
  %74 = sext i32 %71 to i64
  %75 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  br label %76

76:                                               ; preds = %73, %188
  %77 = phi i16 [ %75, %73 ], [ %189, %188 ]
  %78 = phi i16 [ %75, %73 ], [ %190, %188 ]
  %79 = phi i64 [ %74, %73 ], [ %192, %188 ]
  %80 = phi i32 [ 0, %73 ], [ %191, %188 ]
  %81 = icmp eq i16 %78, 0
  br i1 %81, label %152, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %62, align 8, !tbaa !218
  %84 = getelementptr inbounds i64, ptr %83, i64 %79
  %85 = load i64, ptr %84, align 8, !tbaa !142
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %188, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %12, align 8, !tbaa !190
  %89 = add nsw i32 %88, %80
  %90 = sitofp i32 %89 to float
  %91 = load i32, ptr %15, align 8, !tbaa !191
  %92 = add nsw i32 %91, %70
  %93 = sitofp i32 %92 to float
  %94 = icmp sgt i16 %77, 0
  br i1 %94, label %95, label %188

95:                                               ; preds = %87, %147
  %96 = phi i64 [ %148, %147 ], [ 0, %87 ]
  %97 = load i64, ptr %84, align 8, !tbaa !142
  %98 = trunc i64 %96 to i32
  %99 = shl nuw i32 1, %98
  %100 = icmp eq i64 %97, 0
  br i1 %100, label %147, label %101

101:                                              ; preds = %95
  %102 = inttoptr i64 %97 to ptr
  br label %103

103:                                              ; preds = %101, %110
  %104 = phi ptr [ %111, %110 ], [ %102, %101 ]
  %105 = getelementptr inbounds %struct.PixStr, ptr %104, i64 0, i32 5
  %106 = load i16, ptr %105, align 8, !tbaa !219
  %107 = zext i16 %106 to i32
  %108 = and i32 %99, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load ptr, ptr %104, align 8, !tbaa !221
  %112 = icmp eq ptr %111, null
  br i1 %112, label %147, label %103, !llvm.loop !222

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.PixStr, ptr %104, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !223
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %113
  %118 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !176
  %119 = getelementptr inbounds %struct.PixStr, ptr %104, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !224
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 %121
  %123 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 %121, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  %125 = add nuw i32 %115, 134217727
  %126 = and i32 %125, 134217727
  %127 = tail call ptr @RE_findOrAddVlak(ptr noundef %124, i32 noundef %126) #25
  %128 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %96
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.ISBSample, ptr %129, i64 %79
  %131 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %96
  %132 = load float, ptr %131, align 8, !tbaa !89
  %133 = fadd float %132, %90
  %134 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %96, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !89
  %136 = fadd float %135, %93
  %137 = tail call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %6, ptr noundef %122, ptr noundef %127, float noundef %133, float noundef %136, ptr noundef %130) #24, !range !149
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %117
  %140 = load i32, ptr %119, align 8, !tbaa !224
  %141 = getelementptr inbounds %struct.ISBSample, ptr %129, i64 %79, i32 2
  store i32 %140, ptr %141, align 8, !tbaa !225
  %142 = load i32, ptr %114, align 4, !tbaa !223
  %143 = and i32 %142, -134217729
  %144 = getelementptr inbounds %struct.ISBSample, ptr %129, i64 %79, i32 3
  store i32 %143, ptr %144, align 4, !tbaa !227
  %145 = getelementptr inbounds %struct.PixStr, ptr %104, i64 0, i32 6
  store i16 0, ptr %145, align 2, !tbaa !228
  %146 = getelementptr inbounds %struct.ISBSample, ptr %129, i64 %79, i32 1
  store ptr %145, ptr %146, align 8, !tbaa !229
  call fastcc void @bound_rectf(ptr noundef nonnull %57, ptr noundef %130) #24
  br label %147

147:                                              ; preds = %110, %95, %117, %139, %113
  %148 = add nuw nsw i64 %96, 1
  %149 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %150 = sext i16 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %95, label %188, !llvm.loop !230

152:                                              ; preds = %76
  %153 = load ptr, ptr %63, align 8, !tbaa !231
  %154 = getelementptr inbounds i32, ptr %153, i64 %79
  %155 = load ptr, ptr %64, align 8, !tbaa !232
  %156 = getelementptr inbounds i32, ptr %155, i64 %79
  %157 = load i32, ptr %154, align 4, !tbaa !96
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %188

159:                                              ; preds = %152
  %160 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !176
  %161 = load i32, ptr %156, align 4, !tbaa !96
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %160, i64 %162
  %164 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %160, i64 %162, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !65
  %166 = add nuw i32 %157, 134217727
  %167 = and i32 %166, 134217727
  %168 = tail call ptr @RE_findOrAddVlak(ptr noundef %165, i32 noundef %167) #25
  %169 = load i32, ptr %12, align 8, !tbaa !190
  %170 = add nsw i32 %169, %80
  %171 = sitofp i32 %170 to float
  %172 = load i32, ptr %15, align 8, !tbaa !191
  %173 = add nsw i32 %172, %70
  %174 = sitofp i32 %173 to float
  %175 = getelementptr inbounds %struct.ISBSample, ptr %65, i64 %79
  %176 = tail call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %6, ptr noundef %163, ptr noundef %168, float noundef %171, float noundef %174, ptr noundef %175) #24, !range !149
  %177 = icmp eq i32 %176, 0
  %178 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  br i1 %177, label %188, label %179

179:                                              ; preds = %159
  %180 = load i32, ptr %156, align 4, !tbaa !96
  %181 = getelementptr inbounds %struct.ISBSample, ptr %65, i64 %79, i32 2
  store i32 %180, ptr %181, align 8, !tbaa !225
  %182 = load i32, ptr %154, align 4, !tbaa !96
  %183 = and i32 %182, -134217729
  %184 = getelementptr inbounds %struct.ISBSample, ptr %65, i64 %79, i32 3
  store i32 %183, ptr %184, align 4, !tbaa !227
  %185 = load ptr, ptr %11, align 8, !tbaa !165
  %186 = getelementptr inbounds i16, ptr %185, i64 %79
  %187 = getelementptr inbounds %struct.ISBSample, ptr %65, i64 %79, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !229
  call fastcc void @bound_rectf(ptr noundef nonnull %57, ptr noundef %175) #24
  br label %188

188:                                              ; preds = %147, %87, %159, %179, %82, %152
  %189 = phi i16 [ %77, %87 ], [ %178, %159 ], [ %178, %179 ], [ %77, %82 ], [ %77, %152 ], [ %149, %147 ]
  %190 = phi i16 [ %77, %87 ], [ %178, %159 ], [ %178, %179 ], [ %78, %82 ], [ 0, %152 ], [ %149, %147 ]
  %191 = add nuw nsw i32 %80, 1
  %192 = add nsw i64 %79, 1
  %193 = load i32, ptr %18, align 8, !tbaa !192
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %76, label %195, !llvm.loop !233

195:                                              ; preds = %188
  %196 = trunc i64 %192 to i32
  %197 = load i32, ptr %20, align 4, !tbaa !193
  br label %198

198:                                              ; preds = %195, %67
  %199 = phi i32 [ %68, %67 ], [ %197, %195 ]
  %200 = phi i32 [ %69, %67 ], [ %193, %195 ]
  %201 = phi i32 [ %71, %67 ], [ %196, %195 ]
  %202 = add nuw nsw i32 %70, 1
  %203 = icmp slt i32 %202, %199
  br i1 %203, label %67, label %204, !llvm.loop !234

204:                                              ; preds = %198
  %205 = load float, ptr %57, align 8, !tbaa !195
  %206 = load i32, ptr %54, align 8, !tbaa !44
  %207 = sitofp i32 %206 to float
  br label %208

208:                                              ; preds = %204, %53
  %209 = phi float [ %207, %204 ], [ %56, %53 ]
  %210 = phi float [ %205, %204 ], [ %56, %53 ]
  %211 = fcmp une float %210, %209
  br i1 %211, label %212, label %267

212:                                              ; preds = %208
  call fastcc void @isb_bsp_split_init(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 8) #24
  %213 = call fastcc i32 @isb_add_samples(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %22, ptr noundef nonnull %3) #24, !range !149
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %272

215:                                              ; preds = %212
  call fastcc void @isb_bsp_fillfaces(ptr noundef %1, ptr noundef nonnull %4) #24
  %216 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %272, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %220 = load i32, ptr %18, align 8, !tbaa !192
  %221 = load i32, ptr %20, align 4, !tbaa !193
  %222 = mul nsw i32 %221, %220
  %223 = sext i32 %222 to i64
  %224 = shl nsw i64 %223, 3
  %225 = call ptr %219(i64 noundef %224, ptr noundef nonnull @.str.19) #25
  %226 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 1
  store ptr %225, ptr %226, align 8, !tbaa !167
  %227 = call ptr @BLI_memarena_new(i64 noundef 1310720, ptr noundef nonnull @.str.17) #25
  %228 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 2
  store ptr %227, ptr %228, align 8, !tbaa !211
  call void @BLI_memarena_use_calloc(ptr noundef %227) #25
  %229 = load i32, ptr %18, align 8, !tbaa !192
  %230 = load i32, ptr %20, align 4, !tbaa !193
  %231 = mul nsw i32 %230, %229
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %272

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %235 = load ptr, ptr %234, align 8, !tbaa !218
  br label %236

236:                                              ; preds = %233, %262
  %237 = phi ptr [ %265, %262 ], [ %225, %233 ]
  %238 = phi ptr [ %264, %262 ], [ %235, %233 ]
  %239 = phi i32 [ %263, %262 ], [ %231, %233 ]
  %240 = load i64, ptr %238, align 8, !tbaa !142
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %262, label %242

242:                                              ; preds = %236
  %243 = inttoptr i64 %240 to ptr
  br label %244

244:                                              ; preds = %242, %259
  %245 = phi ptr [ %243, %242 ], [ %260, %259 ]
  %246 = getelementptr inbounds %struct.PixStr, ptr %245, i64 0, i32 6
  %247 = load i16, ptr %246, align 2, !tbaa !228
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %244
  %250 = load ptr, ptr %228, align 8, !tbaa !211
  %251 = getelementptr inbounds %struct.PixStr, ptr %245, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !224
  %253 = getelementptr inbounds %struct.PixStr, ptr %245, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !223
  %255 = getelementptr inbounds %struct.PixStr, ptr %245, i64 0, i32 5
  %256 = load i16, ptr %255, align 8, !tbaa !219
  %257 = call i32 @count_mask(i16 noundef zeroext %256) #25
  %258 = trunc i32 %257 to i16
  call fastcc void @isb_add_shadfac(ptr noundef %237, ptr noundef %250, i32 noundef %252, i32 noundef %254, i16 noundef signext %247, i16 noundef signext %258) #24
  br label %259

259:                                              ; preds = %249, %244
  %260 = load ptr, ptr %245, align 8, !tbaa !221
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %244, !llvm.loop !235

262:                                              ; preds = %259, %236
  %263 = add nsw i32 %239, -1
  %264 = getelementptr inbounds i64, ptr %238, i64 1
  %265 = getelementptr inbounds ptr, ptr %237, i64 1
  %266 = icmp sgt i32 %239, 1
  br i1 %266, label %236, label %272, !llvm.loop !236

267:                                              ; preds = %208
  %268 = load ptr, ptr %11, align 8, !tbaa !165
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %271(ptr noundef nonnull %268) #25
  store ptr null, ptr %11, align 8, !tbaa !165
  br label %272

272:                                              ; preds = %262, %218, %267, %270, %212, %215
  %273 = phi i1 [ true, %215 ], [ false, %212 ], [ true, %270 ], [ true, %267 ], [ true, %218 ], [ true, %262 ]
  call void @BLI_memarena_free(ptr noundef %22) #25
  %274 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %275 = call i16 @llvm.umax.i16(i16 %274, i16 1)
  %276 = icmp sgt i16 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %272, %277
  %278 = phi i64 [ %282, %277 ], [ 0, %272 ]
  %279 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %280 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %278
  %281 = load ptr, ptr %280, align 8, !tbaa !59
  call void %279(ptr noundef %281) #25
  %282 = add nuw nsw i64 %278, 1
  %283 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %284 = call i16 @llvm.umax.i16(i16 %283, i16 1)
  %285 = sext i16 %284 to i64
  %286 = icmp slt i64 %282, %285
  br i1 %286, label %277, label %287, !llvm.loop !237

287:                                              ; preds = %277, %272
  br i1 %273, label %290, label %288

288:                                              ; preds = %287
  %289 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %290

290:                                              ; preds = %288, %287
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ISB_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  br label %6

6:                                                ; preds = %4, %49
  %7 = phi ptr [ %2, %4 ], [ %50, %49 ]
  %8 = getelementptr inbounds %struct.GroupObject, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !183
  %10 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 6
  %11 = load i16, ptr %10, align 8, !tbaa !185
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %49

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 36
  %19 = load i16, ptr %18, align 4, !tbaa !43
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i16, ptr %5, align 2, !tbaa !186
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds %struct.ShadBuf, ptr %15, i64 0, i32 17, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %25, align 8, !tbaa !165
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %31(ptr noundef nonnull %28) #25
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.ISBData, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !167
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %37(ptr noundef nonnull %34) #25
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.ISBData, ptr %25, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !211
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @BLI_memarena_free(ptr noundef nonnull %40) #25
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %44(ptr noundef nonnull %25) #25
  %45 = load ptr, ptr %14, align 8, !tbaa !34
  %46 = load i16, ptr %5, align 2, !tbaa !186
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds %struct.ShadBuf, ptr %45, i64 0, i32 17, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %21, %43, %17, %13, %6
  %50 = load ptr, ptr %7, align 8, !tbaa !59
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %6, !llvm.loop !238

52:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !239 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVert(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !240 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !241 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !242 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #24
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #25
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #24
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !243 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #10 !PGOFuncName !244 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !245 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !89
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @RE_filter_value(i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @zbuffer_abuf_shadow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compress_deepshadowbuf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 !PGOFuncName !246 {
  %5 = alloca [16 x ptr], align 16
  %6 = alloca [16 x ptr], align 16
  %7 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #23
  %8 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 4, !tbaa !52
  %10 = sitofp i16 %9 to float
  %11 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #23
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %14 = tail call ptr %13(i64 noundef 48, ptr noundef nonnull @.str.5) #25
  %15 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 16
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %14) #25
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %17 = sext i32 %12 to i64
  %18 = shl nsw i64 %17, 2
  %19 = mul i64 %18, %17
  %20 = tail call ptr %16(i64 noundef %19, ptr noundef nonnull @.str.6) #25
  %21 = getelementptr inbounds %struct.ShadSampleBuf, ptr %14, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !247
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %23 = shl nsw i64 %17, 3
  %24 = mul i64 %23, %17
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.7) #25
  %26 = getelementptr inbounds %struct.ShadSampleBuf, ptr %14, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !137
  %27 = icmp eq i32 %12, 0
  br i1 %27, label %384, label %28

28:                                               ; preds = %4
  %29 = mul i32 %12, %12
  %30 = sext i16 %9 to i64
  %31 = icmp sgt i16 %9, 0
  %32 = icmp slt i16 %9, 1
  %33 = icmp eq ptr %3, null
  %34 = icmp sgt i16 %9, 1
  %35 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 12
  %36 = and i64 %30, 4294967295
  %37 = shl nuw nsw i64 %36, 2
  %38 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %28, %379
  %41 = phi i64 [ 0, %28 ], [ %380, %379 ]
  %42 = phi ptr [ %2, %28 ], [ %381, %379 ]
  %43 = phi ptr [ %3, %28 ], [ %382, %379 ]
  br i1 %31, label %44, label %45

44:                                               ; preds = %40
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 0, i64 %37, i1 false), !tbaa !96
  br label %45

45:                                               ; preds = %44, %40
  %46 = icmp eq ptr %42, null
  br i1 %46, label %79, label %47

47:                                               ; preds = %45, %75
  %48 = phi ptr [ %77, %75 ], [ %42, %45 ]
  br label %49

49:                                               ; preds = %47, %72
  %50 = phi i64 [ 0, %47 ], [ %73, %72 ]
  %51 = getelementptr inbounds %struct.APixstr, ptr %48, i64 0, i32 2, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !96
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i1 true, i1 %32
  br i1 %54, label %72, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [4 x i16], ptr %48, i64 0, i64 %50
  %57 = load i16, ptr %56, align 2, !tbaa !174
  %58 = zext i16 %57 to i32
  br label %59

59:                                               ; preds = %55, %69
  %60 = phi i64 [ 0, %55 ], [ %70, %69 ]
  %61 = trunc i64 %60 to i32
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %58
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %60
  %67 = load i32, ptr %66, align 4, !tbaa !96
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !96
  br label %69

69:                                               ; preds = %59, %65
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, %36
  br i1 %71, label %72, label %59, !llvm.loop !248

72:                                               ; preds = %69, %49
  %73 = add nuw nsw i64 %50, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %49, !llvm.loop !249

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.APixstr, ptr %48, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %47, !llvm.loop !250

79:                                               ; preds = %75, %45
  %80 = icmp eq ptr %43, null
  %81 = select i1 %33, i1 true, i1 %80
  br i1 %81, label %114, label %82

82:                                               ; preds = %79, %110
  %83 = phi ptr [ %112, %110 ], [ %43, %79 ]
  br label %84

84:                                               ; preds = %82, %107
  %85 = phi i64 [ 0, %82 ], [ %108, %107 ]
  %86 = getelementptr inbounds %struct.APixstrand, ptr %83, i64 0, i32 2, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !96
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i1 true, i1 %32
  br i1 %89, label %107, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds [4 x i16], ptr %83, i64 0, i64 %85
  %92 = load i16, ptr %91, align 2, !tbaa !174
  %93 = zext i16 %92 to i32
  br label %94

94:                                               ; preds = %90, %104
  %95 = phi i64 [ 0, %90 ], [ %105, %104 ]
  %96 = trunc i64 %95 to i32
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %93
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %95
  %102 = load i32, ptr %101, align 4, !tbaa !96
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !96
  br label %104

104:                                              ; preds = %94, %100
  %105 = add nuw nsw i64 %95, 1
  %106 = icmp eq i64 %105, %36
  br i1 %106, label %107, label %94, !llvm.loop !251

107:                                              ; preds = %104, %84
  %108 = add nuw nsw i64 %85, 1
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %84, !llvm.loop !252

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.APixstrand, ptr %83, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !253
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %82, !llvm.loop !255

114:                                              ; preds = %110, %79
  br i1 %31, label %115, label %125

115:                                              ; preds = %114, %115
  %116 = phi i64 [ %121, %115 ], [ 0, %114 ]
  %117 = phi i32 [ %120, %115 ], [ 0, %114 ]
  %118 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %116
  %119 = load i32, ptr %118, align 4, !tbaa !96
  %120 = add nsw i32 %119, %117
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %36
  br i1 %122, label %123, label %115, !llvm.loop !256

123:                                              ; preds = %115
  %124 = icmp eq i32 %120, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114, %123
  %126 = load ptr, ptr %26, align 8, !tbaa !137
  %127 = getelementptr inbounds ptr, ptr %126, i64 %41
  store ptr null, ptr %127, align 8, !tbaa !59
  %128 = load ptr, ptr %21, align 8, !tbaa !247
  %129 = getelementptr inbounds i32, ptr %128, i64 %41
  store i32 0, ptr %129, align 4, !tbaa !96
  br label %379

130:                                              ; preds = %123
  %131 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %132 = sext i32 %120 to i64
  %133 = shl nsw i64 %132, 4
  %134 = tail call ptr %131(i64 noundef %133, ptr noundef nonnull @.str.8) #25
  store ptr %134, ptr %6, align 16, !tbaa !59
  store ptr %134, ptr %5, align 16, !tbaa !59
  br i1 %34, label %136, label %135

135:                                              ; preds = %136, %130
  br i1 %46, label %190, label %149

136:                                              ; preds = %130, %136
  %137 = phi ptr [ %144, %136 ], [ %134, %130 ]
  %138 = phi i64 [ %147, %136 ], [ 1, %130 ]
  %139 = add nsw i64 %138, -1
  %140 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !96
  %142 = shl nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.DeepSample, ptr %137, i64 %143
  %145 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %138
  store ptr %144, ptr %145, align 8, !tbaa !59
  %146 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %138
  store ptr %144, ptr %146, align 8, !tbaa !59
  %147 = add nuw nsw i64 %138, 1
  %148 = icmp eq i64 %147, %36
  br i1 %148, label %135, label %136, !llvm.loop !257

149:                                              ; preds = %135, %186
  %150 = phi ptr [ %188, %186 ], [ %42, %135 ]
  br label %151

151:                                              ; preds = %149, %183
  %152 = phi i64 [ 0, %149 ], [ %184, %183 ]
  %153 = getelementptr inbounds %struct.APixstr, ptr %150, i64 0, i32 2, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !96
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, i1 true, i1 %32
  br i1 %156, label %183, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds [4 x i16], ptr %150, i64 0, i64 %152
  %159 = getelementptr inbounds %struct.APixstr, ptr %150, i64 0, i32 1, i64 %152
  %160 = getelementptr inbounds %struct.APixstr, ptr %150, i64 0, i32 3, i64 %152
  br label %161

161:                                              ; preds = %157, %180
  %162 = phi i64 [ 0, %157 ], [ %181, %180 ]
  %163 = load i16, ptr %158, align 2, !tbaa !174
  %164 = zext i16 %163 to i32
  %165 = trunc i64 %162 to i32
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %161
  %170 = load i32, ptr %159, align 4, !tbaa !96
  %171 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %162
  %172 = load ptr, ptr %171, align 8, !tbaa !59
  store i32 %170, ptr %172, align 4, !tbaa !258
  %173 = getelementptr inbounds %struct.DeepSample, ptr %172, i64 0, i32 1
  store float 1.000000e+00, ptr %173, align 4, !tbaa !260
  %174 = getelementptr inbounds %struct.DeepSample, ptr %172, i64 1
  store i32 %170, ptr %174, align 4, !tbaa !258
  %175 = load i32, ptr %160, align 4, !tbaa !96
  %176 = load i32, ptr %153, align 4, !tbaa !96
  %177 = tail call fastcc float @deep_alpha(ptr noundef %0, i32 noundef %175, i32 noundef %176, i32 noundef 0) #24
  %178 = getelementptr inbounds %struct.DeepSample, ptr %172, i64 1, i32 1
  store float %177, ptr %178, align 4, !tbaa !260
  %179 = getelementptr inbounds %struct.DeepSample, ptr %172, i64 2
  store ptr %179, ptr %171, align 8, !tbaa !59
  br label %180

180:                                              ; preds = %161, %169
  %181 = add nuw nsw i64 %162, 1
  %182 = icmp eq i64 %181, %36
  br i1 %182, label %183, label %161, !llvm.loop !261

183:                                              ; preds = %180, %151
  %184 = add nuw nsw i64 %152, 1
  %185 = icmp eq i64 %184, 4
  br i1 %185, label %186, label %151, !llvm.loop !262

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.APixstr, ptr %150, i64 0, i32 5
  %188 = load ptr, ptr %187, align 8, !tbaa !206
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %149, !llvm.loop !263

190:                                              ; preds = %186, %135
  br i1 %81, label %232, label %191

191:                                              ; preds = %190, %228
  %192 = phi ptr [ %230, %228 ], [ %43, %190 ]
  br label %193

193:                                              ; preds = %191, %225
  %194 = phi i64 [ 0, %191 ], [ %226, %225 ]
  %195 = getelementptr inbounds %struct.APixstrand, ptr %192, i64 0, i32 2, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !96
  %197 = icmp eq i32 %196, 0
  %198 = select i1 %197, i1 true, i1 %32
  br i1 %198, label %225, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds [4 x i16], ptr %192, i64 0, i64 %194
  %201 = getelementptr inbounds %struct.APixstrand, ptr %192, i64 0, i32 1, i64 %194
  %202 = getelementptr inbounds %struct.APixstrand, ptr %192, i64 0, i32 3, i64 %194
  br label %203

203:                                              ; preds = %199, %222
  %204 = phi i64 [ 0, %199 ], [ %223, %222 ]
  %205 = load i16, ptr %200, align 2, !tbaa !174
  %206 = zext i16 %205 to i32
  %207 = trunc i64 %204 to i32
  %208 = shl nuw i32 1, %207
  %209 = and i32 %208, %206
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %203
  %212 = load i32, ptr %201, align 4, !tbaa !96
  %213 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %204
  %214 = load ptr, ptr %213, align 8, !tbaa !59
  store i32 %212, ptr %214, align 4, !tbaa !258
  %215 = getelementptr inbounds %struct.DeepSample, ptr %214, i64 0, i32 1
  store float 1.000000e+00, ptr %215, align 4, !tbaa !260
  %216 = getelementptr inbounds %struct.DeepSample, ptr %214, i64 1
  store i32 %212, ptr %216, align 4, !tbaa !258
  %217 = load i32, ptr %202, align 4, !tbaa !96
  %218 = load i32, ptr %195, align 4, !tbaa !96
  %219 = tail call fastcc float @deep_alpha(ptr noundef %0, i32 noundef %217, i32 noundef %218, i32 noundef 1) #24
  %220 = getelementptr inbounds %struct.DeepSample, ptr %214, i64 1, i32 1
  store float %219, ptr %220, align 4, !tbaa !260
  %221 = getelementptr inbounds %struct.DeepSample, ptr %214, i64 2
  store ptr %221, ptr %213, align 8, !tbaa !59
  br label %222

222:                                              ; preds = %203, %211
  %223 = add nuw nsw i64 %204, 1
  %224 = icmp eq i64 %223, %36
  br i1 %224, label %225, label %203, !llvm.loop !264

225:                                              ; preds = %222, %193
  %226 = add nuw nsw i64 %194, 1
  %227 = icmp eq i64 %226, 4
  br i1 %227, label %228, label %193, !llvm.loop !265

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.APixstrand, ptr %192, i64 0, i32 7
  %230 = load ptr, ptr %229, align 8, !tbaa !253
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %191, !llvm.loop !266

232:                                              ; preds = %228, %190
  br i1 %31, label %233, label %287

233:                                              ; preds = %232, %283
  %234 = phi i64 [ %285, %283 ], [ 0, %232 ]
  %235 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !59
  %237 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %234
  %238 = load i32, ptr %237, align 4, !tbaa !96
  %239 = sext i32 %238 to i64
  tail call void @qsort(ptr noundef %236, i64 noundef %239, i64 noundef 16, ptr noundef nonnull @verg_deepsample) #25
  %240 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %234
  %241 = icmp sgt i32 %238, 0
  br i1 %241, label %243, label %283

242:                                              ; preds = %243
  br i1 %241, label %255, label %283

243:                                              ; preds = %233, %243
  %244 = phi ptr [ %252, %243 ], [ %236, %233 ]
  %245 = phi i32 [ %253, %243 ], [ 0, %233 ]
  %246 = phi float [ %251, %243 ], [ 1.000000e+00, %233 ]
  %247 = getelementptr inbounds %struct.DeepSample, ptr %244, i64 0, i32 1
  store float %246, ptr %247, align 4, !tbaa !260
  %248 = getelementptr inbounds %struct.DeepSample, ptr %244, i64 1, i32 1
  %249 = load float, ptr %248, align 4, !tbaa !260
  %250 = fsub float 1.000000e+00, %249
  %251 = fmul float %246, %250
  store float %251, ptr %248, align 4, !tbaa !260
  %252 = getelementptr inbounds %struct.DeepSample, ptr %244, i64 2
  %253 = add nuw nsw i32 %245, 1
  %254 = icmp eq i32 %253, %238
  br i1 %254, label %242, label %243, !llvm.loop !267

255:                                              ; preds = %242, %274
  %256 = phi i32 [ %258, %274 ], [ 0, %242 ]
  %257 = phi ptr [ %281, %274 ], [ %236, %242 ]
  %258 = add nuw nsw i32 %256, 1
  %259 = icmp slt i32 %258, %238
  %260 = load i32, ptr %257, align 4, !tbaa !258
  %261 = ashr i32 %260, 1
  br i1 %259, label %262, label %271

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.DeepSample, ptr %257, i64 2
  %264 = load i32, ptr %263, align 4, !tbaa !258
  %265 = ashr i32 %264, 1
  %266 = add nsw i32 %265, %261
  store i32 %266, ptr %257, align 4, !tbaa !258
  %267 = getelementptr inbounds %struct.DeepSample, ptr %257, i64 1
  %268 = load i32, ptr %267, align 4, !tbaa !258
  %269 = ashr i32 %268, 1
  %270 = getelementptr inbounds %struct.DeepSample, ptr %257, i64 3
  br label %274

271:                                              ; preds = %255
  %272 = add nsw i32 %261, 1073741823
  store i32 %272, ptr %257, align 4, !tbaa !258
  %273 = getelementptr inbounds %struct.DeepSample, ptr %257, i64 1
  br label %274

274:                                              ; preds = %262, %271
  %275 = phi ptr [ %270, %262 ], [ %273, %271 ]
  %276 = phi i32 [ %269, %262 ], [ 1073741823, %271 ]
  %277 = phi ptr [ %267, %262 ], [ %273, %271 ]
  %278 = load i32, ptr %275, align 4, !tbaa !258
  %279 = ashr i32 %278, 1
  %280 = add nsw i32 %279, %276
  store i32 %280, ptr %277, align 4, !tbaa !258
  %281 = getelementptr inbounds %struct.DeepSample, ptr %257, i64 2
  %282 = icmp eq i32 %258, %238
  br i1 %282, label %283, label %255, !llvm.loop !268

283:                                              ; preds = %274, %233, %242
  store ptr %236, ptr %240, align 8, !tbaa !59
  %284 = shl nsw i32 %238, 1
  store i32 %284, ptr %237, align 4, !tbaa !96
  %285 = add nuw nsw i64 %234, 1
  %286 = icmp eq i64 %285, %36
  br i1 %286, label %287, label %233, !llvm.loop !269

287:                                              ; preds = %283, %232
  %288 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %289 = tail call ptr %288(i64 noundef %133, ptr noundef nonnull @.str.8) #25
  %290 = load ptr, ptr %26, align 8, !tbaa !137
  %291 = getelementptr inbounds ptr, ptr %290, i64 %41
  store ptr %289, ptr %291, align 8, !tbaa !59
  %292 = load ptr, ptr %21, align 8, !tbaa !247
  %293 = getelementptr inbounds i32, ptr %292, i64 %41
  store i32 0, ptr %293, align 4, !tbaa !96
  %294 = load ptr, ptr %26, align 8, !tbaa !137
  %295 = getelementptr inbounds ptr, ptr %294, i64 %41
  %296 = load ptr, ptr %295, align 8, !tbaa !59
  br i1 %31, label %297, label %356

297:                                              ; preds = %287, %351
  %298 = phi ptr [ %353, %351 ], [ %296, %287 ]
  %299 = phi i32 [ %355, %351 ], [ 0, %287 ]
  br label %300

300:                                              ; preds = %297, %314
  %301 = phi i64 [ %317, %314 ], [ 0, %297 ]
  %302 = phi i32 [ %316, %314 ], [ 0, %297 ]
  %303 = phi i32 [ %315, %314 ], [ 0, %297 ]
  %304 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %301
  %305 = load i32, ptr %304, align 4, !tbaa !96
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %300
  %308 = icmp eq i32 %302, 0
  %309 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %301
  %310 = load ptr, ptr %309, align 8, !tbaa !59
  %311 = load i32, ptr %310, align 4, !tbaa !258
  br i1 %308, label %314, label %312

312:                                              ; preds = %307
  %313 = tail call i32 @llvm.smin.i32(i32 %311, i32 %303)
  br label %314

314:                                              ; preds = %312, %307, %300
  %315 = phi i32 [ %303, %300 ], [ %311, %307 ], [ %313, %312 ]
  %316 = phi i32 [ %302, %300 ], [ 1, %307 ], [ 1, %312 ]
  %317 = add nuw nsw i64 %301, 1
  %318 = icmp eq i64 %317, %36
  br i1 %318, label %319, label %300, !llvm.loop !270

319:                                              ; preds = %314
  %320 = icmp eq i32 %316, 0
  br i1 %320, label %356, label %321

321:                                              ; preds = %319
  store i32 %315, ptr %298, align 4, !tbaa !258
  %322 = getelementptr inbounds %struct.DeepSample, ptr %298, i64 0, i32 1
  store float 0.000000e+00, ptr %322, align 4, !tbaa !260
  br i1 %31, label %323, label %351

323:                                              ; preds = %321, %345
  %324 = phi i64 [ %349, %345 ], [ 0, %321 ]
  %325 = phi float [ %348, %345 ], [ 0.000000e+00, %321 ]
  %326 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 %324
  %327 = load i32, ptr %326, align 4, !tbaa !96
  %328 = icmp eq i32 %327, 0
  %329 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %324
  %330 = load ptr, ptr %329, align 8, !tbaa !59
  br i1 %328, label %337, label %331

331:                                              ; preds = %323
  %332 = load i32, ptr %330, align 4, !tbaa !258
  %333 = icmp eq i32 %332, %315
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.DeepSample, ptr %330, i64 1
  store ptr %335, ptr %329, align 8, !tbaa !59
  %336 = add nsw i32 %327, -1
  store i32 %336, ptr %326, align 4, !tbaa !96
  br label %337

337:                                              ; preds = %323, %334, %331
  %338 = phi ptr [ %335, %334 ], [ %330, %331 ], [ %330, %323 ]
  %339 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %324
  %340 = load ptr, ptr %339, align 8, !tbaa !59
  %341 = icmp eq ptr %340, %338
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  %343 = getelementptr %struct.DeepSample, ptr %338, i64 -1, i32 1
  %344 = load float, ptr %343, align 4, !tbaa !260
  br label %345

345:                                              ; preds = %337, %342
  %346 = phi float [ %344, %342 ], [ 1.000000e+00, %337 ]
  %347 = fdiv float %346, %10
  %348 = fadd float %325, %347
  %349 = add nuw nsw i64 %324, 1
  %350 = icmp eq i64 %349, %36
  br i1 %350, label %351, label %323, !llvm.loop !271

351:                                              ; preds = %345, %321
  %352 = phi float [ 0.000000e+00, %321 ], [ %348, %345 ]
  store float %352, ptr %322, align 4, !tbaa !260
  %353 = getelementptr inbounds %struct.DeepSample, ptr %298, i64 1
  %354 = load i32, ptr %293, align 4, !tbaa !96
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %293, align 4, !tbaa !96
  br i1 %31, label %297, label %356

356:                                              ; preds = %319, %351, %287
  %357 = phi i32 [ 0, %287 ], [ %299, %319 ], [ %355, %351 ]
  %358 = load float, ptr %35, align 8, !tbaa !272
  %359 = tail call fastcc i32 @compress_deepsamples(ptr noundef %296, i32 noundef %357, float noundef %358) #24
  %360 = load ptr, ptr %21, align 8, !tbaa !247
  %361 = getelementptr inbounds i32, ptr %360, i64 %41
  store i32 %359, ptr %361, align 4, !tbaa !96
  %362 = icmp slt i32 %359, %357
  br i1 %362, label %363, label %377

363:                                              ; preds = %356
  %364 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %365 = sext i32 %359 to i64
  %366 = shl nsw i64 %365, 3
  %367 = tail call ptr %364(i64 noundef %366, ptr noundef nonnull @.str.9) #25
  %368 = load ptr, ptr %26, align 8, !tbaa !137
  %369 = getelementptr inbounds ptr, ptr %368, i64 %41
  %370 = load ptr, ptr %369, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %367, ptr align 4 %370, i64 %366, i1 false)
  %371 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %372 = load ptr, ptr %26, align 8, !tbaa !137
  %373 = getelementptr inbounds ptr, ptr %372, i64 %41
  %374 = load ptr, ptr %373, align 8, !tbaa !59
  tail call void %371(ptr noundef %374) #25
  %375 = load ptr, ptr %26, align 8, !tbaa !137
  %376 = getelementptr inbounds ptr, ptr %375, i64 %41
  store ptr %367, ptr %376, align 8, !tbaa !59
  br label %377

377:                                              ; preds = %363, %356
  %378 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %378(ptr noundef %134) #25
  br label %379

379:                                              ; preds = %377, %125
  %380 = add nuw nsw i64 %41, 1
  %381 = getelementptr inbounds %struct.APixstr, ptr %42, i64 1
  %382 = getelementptr inbounds %struct.APixstrand, ptr %43, i64 1
  %383 = icmp eq i64 %380, %39
  br i1 %383, label %384, label %40, !llvm.loop !273

384:                                              ; preds = %379, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #23
  ret void
}

; Function Attrs: optsize
declare void @freepsA(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @deep_alpha(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !274 {
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = sext i32 %1 to i64
  %8 = icmp eq i32 %3, 0
  %9 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 %7, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  br i1 %8, label %17, label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %2, -1
  %13 = tail call ptr @RE_findOrAddStrand(ptr noundef %10, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct.StrandRen, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !275
  %16 = getelementptr inbounds %struct.StrandBuffer, ptr %15, i64 0, i32 7
  br label %22

17:                                               ; preds = %4
  %18 = add i32 %2, 134217727
  %19 = and i32 %18, 134217727
  %20 = tail call ptr @RE_findOrAddVlak(ptr noundef %10, i32 noundef %19) #25
  %21 = getelementptr inbounds %struct.VlakRen, ptr %20, i64 0, i32 5
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi ptr [ %16, %11 ], [ %21, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.Material, ptr %24, i64 0, i32 72
  %26 = load float, ptr %25, align 4, !tbaa !277
  ret float %26
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @verg_deepsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 !PGOFuncName !278 {
  %3 = load i32, ptr %0, align 4, !tbaa !258
  %4 = load i32, ptr %1, align 4, !tbaa !258
  %5 = icmp slt i32 %3, %4
  %6 = icmp ne i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @compress_deepsamples(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #9 !PGOFuncName !279 {
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %108

5:                                                ; preds = %3
  %6 = add nsw i32 %1, -1
  %7 = load i32, ptr %0, align 4, !tbaa !258
  br label %8

8:                                                ; preds = %5, %95
  %9 = phi i32 [ %7, %5 ], [ %79, %95 ]
  %10 = phi i32 [ 0, %5 ], [ %98, %95 ]
  %11 = phi ptr [ %0, %5 ], [ %78, %95 ]
  %12 = phi i32 [ 1, %5 ], [ %100, %95 ]
  %13 = phi ptr [ %0, %5 ], [ %97, %95 ]
  %14 = getelementptr inbounds %struct.DeepSample, ptr %11, i64 1
  %15 = sitofp i32 %9 to double
  %16 = getelementptr inbounds %struct.DeepSample, ptr %13, i64 0, i32 1
  %17 = add nsw i32 %12, 1
  %18 = tail call i32 @llvm.smax.i32(i32 %1, i32 %17)
  br label %19

19:                                               ; preds = %8, %59
  %20 = phi ptr [ %14, %8 ], [ %65, %59 ]
  %21 = phi ptr [ %11, %8 ], [ %20, %59 ]
  %22 = phi i32 [ 1, %8 ], [ %63, %59 ]
  %23 = phi i32 [ %12, %8 ], [ %64, %59 ]
  %24 = phi double [ 0.000000e+00, %8 ], [ %62, %59 ]
  %25 = phi double [ 0.000000e+00, %8 ], [ %61, %59 ]
  %26 = load i32, ptr %20, align 4, !tbaa !258
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load float, ptr %16, align 4, !tbaa !260
  %30 = getelementptr inbounds %struct.DeepSample, ptr %21, i64 1, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !260
  %32 = fsub float %29, %31
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fcmp ugt float %33, %2
  br i1 %34, label %67, label %59

35:                                               ; preds = %19
  %36 = sitofp i32 %26 to double
  %37 = fsub double %36, %15
  %38 = fdiv double 0x41DFFFFFFFC00000, %37
  %39 = getelementptr inbounds %struct.DeepSample, ptr %21, i64 1, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !260
  %41 = fsub float %40, %2
  %42 = load float, ptr %16, align 4, !tbaa !260
  %43 = fsub float %41, %42
  %44 = fpext float %43 to double
  %45 = fmul double %38, %44
  %46 = fadd float %40, %2
  %47 = fsub float %46, %42
  %48 = fpext float %47 to double
  %49 = fmul double %38, %48
  %50 = icmp eq i32 %22, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %35
  %52 = fcmp ogt double %24, %45
  %53 = select i1 %52, double %24, double %45
  %54 = fcmp olt double %25, %49
  %55 = select i1 %54, double %25, double %49
  %56 = fcmp ogt double %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = add nsw i32 %23, -1
  br label %67

59:                                               ; preds = %51, %35, %28
  %60 = phi float [ %29, %28 ], [ %42, %51 ], [ %42, %35 ]
  %61 = phi double [ %25, %28 ], [ %55, %51 ], [ %49, %35 ]
  %62 = phi double [ %24, %28 ], [ %53, %51 ], [ %45, %35 ]
  %63 = phi i32 [ %22, %28 ], [ 0, %51 ], [ 0, %35 ]
  %64 = add nsw i32 %23, 1
  %65 = getelementptr inbounds %struct.DeepSample, ptr %20, i64 1
  %66 = icmp slt i32 %64, %1
  br i1 %66, label %19, label %67, !llvm.loop !280

67:                                               ; preds = %28, %59, %57
  %68 = phi float [ %42, %57 ], [ %60, %59 ], [ %29, %28 ]
  %69 = phi double [ %25, %57 ], [ %61, %59 ], [ %25, %28 ]
  %70 = phi double [ %24, %57 ], [ %62, %59 ], [ %24, %28 ]
  %71 = phi i32 [ 0, %57 ], [ %63, %59 ], [ %22, %28 ]
  %72 = phi i32 [ %58, %57 ], [ %18, %59 ], [ %23, %28 ]
  %73 = phi ptr [ %21, %57 ], [ %65, %59 ], [ %20, %28 ]
  %74 = icmp eq i32 %72, %1
  %75 = sext i1 %74 to i32
  %76 = add nsw i32 %72, %75
  %77 = sext i1 %74 to i64
  %78 = getelementptr inbounds %struct.DeepSample, ptr %73, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !258
  %80 = icmp ne i32 %71, 0
  %81 = icmp eq i32 %76, %6
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.DeepSample, ptr %73, i64 %77, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !260
  br label %95

86:                                               ; preds = %67
  %87 = fadd double %69, %70
  %88 = fmul double %87, 5.000000e-01
  %89 = fpext float %68 to double
  %90 = sub nsw i32 %79, %9
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %91, 0x41DFFFFFFFC00000
  %93 = tail call double @llvm.fmuladd.f64(double %88, double %92, double %89)
  %94 = fptrunc double %93 to float
  br label %95

95:                                               ; preds = %86, %83
  %96 = phi float [ %85, %83 ], [ %94, %86 ]
  %97 = getelementptr inbounds %struct.DeepSample, ptr %13, i64 1
  %98 = add nuw nsw i32 %10, 1
  store i32 %79, ptr %97, align 4, !tbaa !258
  %99 = getelementptr inbounds %struct.DeepSample, ptr %13, i64 1, i32 1
  store float %96, ptr %99, align 4, !tbaa !260
  %100 = add nsw i32 %76, 1
  %101 = icmp slt i32 %100, %1
  br i1 %101, label %8, label %102, !llvm.loop !281

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.DeepSample, ptr %13, i64 1, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !260
  %105 = getelementptr %struct.DeepSample, ptr %13, i64 0, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !260
  %107 = fcmp une float %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %3, %102
  %109 = phi i32 [ %98, %102 ], [ 0, %3 ]
  %110 = add nuw nsw i32 %109, 1
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i32 [ %110, %108 ], [ %98, %102 ]
  ret i32 %112
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: optsize
declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: optsize
declare void @zbuffer_shadow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compress_shadowbuf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !282 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %8 = tail call ptr %7(i64 noundef 48, ptr noundef nonnull @.str.5) #25
  %9 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 16
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #25
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %11 = mul nsw i32 %6, %6
  %12 = lshr i32 %11, 5
  %13 = zext nneg i32 %12 to i64
  %14 = tail call ptr %10(i64 noundef %13, ptr noundef nonnull @.str.11) #25
  %15 = getelementptr inbounds %struct.ShadSampleBuf, ptr %8, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !140
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %17 = lshr i32 %11, 8
  %18 = zext nneg i32 %17 to i64
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.12) #25
  %20 = getelementptr inbounds %struct.ShadSampleBuf, ptr %8, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !141
  %21 = load ptr, ptr %15, align 8, !tbaa !140
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %23 = tail call ptr %22(i64 noundef 1028, ptr noundef nonnull @.str.13) #25
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %157

25:                                               ; preds = %3
  %26 = lshr i32 %6, 1
  %27 = icmp eq i32 %2, 0
  %28 = add nuw nsw i32 %26, 12
  %29 = sitofp i32 %28 to float
  %30 = getelementptr i8, ptr %23, i64 1020
  br label %31

31:                                               ; preds = %154, %25
  %32 = phi ptr [ %19, %25 ], [ %151, %154 ]
  %33 = phi ptr [ %21, %25 ], [ %150, %154 ]
  %34 = phi i32 [ 0, %25 ], [ %155, %154 ]
  %35 = icmp ult i32 %34, %26
  %36 = or disjoint i32 %34, 15
  %37 = select i1 %35, i32 %36, i32 %34
  %38 = sub nsw i32 %37, %26
  %39 = mul nsw i32 %38, %38
  br label %40

40:                                               ; preds = %31, %149
  %41 = phi ptr [ %32, %31 ], [ %151, %149 ]
  %42 = phi ptr [ %33, %31 ], [ %150, %149 ]
  %43 = phi i32 [ 0, %31 ], [ %152, %149 ]
  %44 = icmp ult i32 %43, %26
  %45 = or disjoint i32 %43, 15
  %46 = select i1 %44, i32 %45, i32 %43
  %47 = sub nsw i32 %46, %26
  %48 = mul nsw i32 %47, %47
  %49 = add nuw nsw i32 %48, %39
  %50 = sitofp i32 %49 to float
  %51 = tail call float @sqrtf(float noundef %50) #25
  %52 = fcmp ogt float %51, %29
  %53 = select i1 %27, i1 %52, i1 false
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, ptr %4, align 4, !tbaa !96
  br label %72

55:                                               ; preds = %40
  tail call fastcc void @copy_to_ztile(ptr noundef %1, i32 noundef %6, i32 noundef %43, i32 noundef %34, ptr noundef %23) #24
  %56 = load i32, ptr %23, align 4
  %57 = and i32 %56, -256
  store i32 %57, ptr %4, align 4, !tbaa !96
  %58 = lshr i32 %56, 24
  %59 = trunc i32 %58 to i8
  %60 = lshr i32 %56, 16
  %61 = trunc i32 %60 to i8
  br label %62

62:                                               ; preds = %55, %68
  %63 = phi i32 [ 0, %55 ], [ %69, %68 ]
  %64 = phi ptr [ %23, %55 ], [ %70, %68 ]
  %65 = load i32, ptr %64, align 4, !tbaa !96
  %66 = and i32 %65, -256
  %67 = icmp eq i32 %66, %57
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = add nuw nsw i32 %63, 1
  %70 = getelementptr inbounds i32, ptr %64, i64 1
  %71 = icmp eq i32 %69, 256
  br i1 %71, label %72, label %62, !llvm.loop !283

72:                                               ; preds = %68, %54
  %73 = phi ptr [ %4, %54 ], [ %30, %68 ]
  store i8 0, ptr %41, align 1, !tbaa !84
  %74 = load i32, ptr %73, align 4, !tbaa !96
  %75 = sext i32 %74 to i64
  store i64 %75, ptr %42, align 8, !tbaa !142
  br label %149

76:                                               ; preds = %62
  store i32 %58, ptr %4, align 4, !tbaa !96
  br label %77

77:                                               ; preds = %76, %84
  %78 = phi ptr [ %23, %76 ], [ %85, %84 ]
  %79 = phi i32 [ 1, %76 ], [ %89, %84 ]
  %80 = phi i32 [ 1, %76 ], [ %90, %84 ]
  %81 = getelementptr inbounds i8, ptr %78, i64 7
  %82 = load i8, ptr %81, align 1, !tbaa !84
  %83 = icmp eq i8 %82, %59
  br i1 %83, label %84, label %129

84:                                               ; preds = %77
  %85 = getelementptr inbounds i8, ptr %78, i64 4
  %86 = getelementptr inbounds i8, ptr %78, i64 6
  %87 = load i8, ptr %86, align 1, !tbaa !84
  %88 = icmp eq i8 %87, %61
  %89 = select i1 %88, i32 %79, i32 0
  %90 = add nuw nsw i32 %80, 1
  %91 = icmp eq i32 %90, 256
  br i1 %91, label %92, label %77, !llvm.loop !284

92:                                               ; preds = %84
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %92
  store i8 1, ptr %41, align 1, !tbaa !84
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %96 = tail call ptr %95(i64 noundef 260, ptr noundef nonnull @.str.14) #25
  %97 = ptrtoint ptr %96 to i64
  store i64 %97, ptr %42, align 8, !tbaa !142
  %98 = load i32, ptr %23, align 4, !tbaa !96
  store i32 %98, ptr %96, align 4, !tbaa !96
  %99 = getelementptr inbounds i32, ptr %96, i64 1
  br label %100

100:                                              ; preds = %94, %100
  %101 = phi ptr [ %99, %94 ], [ %107, %100 ]
  %102 = phi ptr [ %23, %94 ], [ %108, %100 ]
  %103 = phi i32 [ 0, %94 ], [ %106, %100 ]
  %104 = getelementptr inbounds i8, ptr %102, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !84
  store i8 %105, ptr %101, align 1, !tbaa !84
  %106 = add nuw nsw i32 %103, 1
  %107 = getelementptr inbounds i8, ptr %101, i64 1
  %108 = getelementptr inbounds i8, ptr %102, i64 4
  %109 = icmp eq i32 %106, 256
  br i1 %109, label %149, label %100, !llvm.loop !285

110:                                              ; preds = %92
  store i8 2, ptr %41, align 1, !tbaa !84
  %111 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %112 = tail call ptr %111(i64 noundef 516, ptr noundef nonnull @.str.15) #25
  %113 = ptrtoint ptr %112 to i64
  store i64 %113, ptr %42, align 8, !tbaa !142
  %114 = load i32, ptr %23, align 4, !tbaa !96
  store i32 %114, ptr %112, align 4, !tbaa !96
  %115 = getelementptr inbounds i32, ptr %112, i64 1
  br label %116

116:                                              ; preds = %110, %116
  %117 = phi ptr [ %115, %110 ], [ %126, %116 ]
  %118 = phi ptr [ %23, %110 ], [ %127, %116 ]
  %119 = phi i32 [ 0, %110 ], [ %125, %116 ]
  %120 = getelementptr inbounds i8, ptr %118, i64 2
  %121 = load i8, ptr %120, align 1, !tbaa !84
  store i8 %121, ptr %117, align 1, !tbaa !84
  %122 = getelementptr inbounds i8, ptr %118, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !84
  %124 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %123, ptr %124, align 1, !tbaa !84
  %125 = add nuw nsw i32 %119, 1
  %126 = getelementptr inbounds i8, ptr %117, i64 2
  %127 = getelementptr inbounds i8, ptr %118, i64 4
  %128 = icmp eq i32 %125, 256
  br i1 %128, label %149, label %116, !llvm.loop !286

129:                                              ; preds = %77
  store i8 3, ptr %41, align 1, !tbaa !84
  %130 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %131 = tail call ptr %130(i64 noundef 768, ptr noundef nonnull @.str.16) #25
  %132 = ptrtoint ptr %131 to i64
  store i64 %132, ptr %42, align 8, !tbaa !142
  br label %133

133:                                              ; preds = %129, %133
  %134 = phi ptr [ %131, %129 ], [ %146, %133 ]
  %135 = phi ptr [ %23, %129 ], [ %147, %133 ]
  %136 = phi i32 [ 0, %129 ], [ %145, %133 ]
  %137 = getelementptr inbounds i8, ptr %135, i64 3
  %138 = load i8, ptr %137, align 1, !tbaa !84
  store i8 %138, ptr %134, align 1, !tbaa !84
  %139 = getelementptr inbounds i8, ptr %135, i64 2
  %140 = load i8, ptr %139, align 1, !tbaa !84
  %141 = getelementptr inbounds i8, ptr %134, i64 1
  store i8 %140, ptr %141, align 1, !tbaa !84
  %142 = getelementptr inbounds i8, ptr %135, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !84
  %144 = getelementptr inbounds i8, ptr %134, i64 2
  store i8 %143, ptr %144, align 1, !tbaa !84
  %145 = add nuw nsw i32 %136, 1
  %146 = getelementptr inbounds i8, ptr %134, i64 3
  %147 = getelementptr inbounds i8, ptr %135, i64 4
  %148 = icmp eq i32 %145, 256
  br i1 %148, label %149, label %133, !llvm.loop !287

149:                                              ; preds = %133, %100, %116, %72
  %150 = getelementptr inbounds i64, ptr %42, i64 1
  %151 = getelementptr inbounds i8, ptr %41, i64 1
  %152 = add nuw nsw i32 %43, 16
  %153 = icmp slt i32 %152, %6
  br i1 %153, label %40, label %154, !llvm.loop !288

154:                                              ; preds = %149
  %155 = add nuw nsw i32 %34, 16
  %156 = icmp slt i32 %155, %6
  br i1 %156, label %31, label %157, !llvm.loop !289

157:                                              ; preds = %154, %3
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %158(ptr noundef %23) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_to_ztile(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #9 !PGOFuncName !290 {
  %6 = add nsw i32 %2, 16
  %7 = add nsw i32 %3, 16
  %8 = icmp slt i32 %6, %1
  %9 = add nsw i32 %1, -1
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = icmp slt i32 %7, %1
  %12 = select i1 %11, i32 %7, i32 %9
  %13 = icmp sgt i32 %10, %2
  %14 = icmp sgt i32 %12, %3
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  %17 = sub nsw i32 %10, %2
  %18 = shl nsw i32 %17, 2
  %19 = mul nsw i32 %3, %1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = sext i32 %18 to i64
  %25 = sext i32 %1 to i64
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %23, %16 ], [ %30, %26 ]
  %28 = phi i32 [ %3, %16 ], [ %32, %26 ]
  %29 = phi ptr [ %4, %16 ], [ %31, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 4 %27, i64 %24, i1 false)
  %30 = getelementptr inbounds i32, ptr %27, i64 %25
  %31 = getelementptr inbounds i8, ptr %29, i64 %24
  %32 = add nsw i32 %28, 1
  %33 = icmp eq i32 %32, %12
  br i1 %33, label %34, label %26, !llvm.loop !291

34:                                               ; preds = %26, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @readdeepshadowbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #9 !PGOFuncName !292 {
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  %8 = add nsw i32 %2, -2147483136
  %9 = icmp sgt i32 %8, %5
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = mul nsw i32 %12, %4
  %14 = add nsw i32 %13, %3
  %15 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = getelementptr inbounds ptr, ptr %23, i64 %17
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = call fastcc float @readdeepvisibility(ptr noundef %25, i32 noundef %19, i32 noundef %5, i32 noundef %2, ptr noundef nonnull %7) #24
  %27 = load float, ptr %7, align 4, !tbaa !89
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = call fastcc float @readdeepvisibility(ptr noundef %25, i32 noundef %19, i32 noundef %5, i32 noundef 0, ptr noundef null) #24
  %31 = fmul float %27, %27
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %31, %30
  %34 = call float @llvm.fmuladd.f32(float %32, float %26, float %33)
  br label %35

35:                                               ; preds = %21, %10, %6, %29
  %36 = phi float [ %34, %29 ], [ 1.000000e+00, %6 ], [ 1.000000e+00, %10 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  ret float %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc float @readdeepvisibility(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #19 !PGOFuncName !293 {
  %6 = sub nsw i32 %2, %3
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5, %13
  %9 = phi i32 [ %14, %13 ], [ 0, %5 ]
  %10 = phi ptr [ %15, %13 ], [ %0, %5 ]
  %11 = load i32, ptr %10, align 4, !tbaa !258
  %12 = icmp sgt i32 %6, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %9, 1
  %15 = getelementptr inbounds %struct.DeepSample, ptr %10, i64 1
  %16 = icmp eq i32 %14, %1
  br i1 %16, label %21, label %8, !llvm.loop !294

17:                                               ; preds = %8, %5
  %18 = phi ptr [ %0, %5 ], [ %10, %8 ]
  %19 = phi i32 [ 0, %5 ], [ %9, %8 ]
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %28

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %23 = icmp eq ptr %4, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store float 0.000000e+00, ptr %4, align 4, !tbaa !89
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr %struct.DeepSample, ptr %22, i64 -1, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !260
  br label %57

28:                                               ; preds = %17
  %29 = icmp eq ptr %4, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %18, align 4, !tbaa !258
  %32 = icmp slt i32 %31, %2
  %33 = sub nsw i32 %2, %31
  %34 = sitofp i32 %33 to float
  %35 = sitofp i32 %3 to float
  %36 = fdiv float %34, %35
  %37 = select i1 %32, float %36, float 0.000000e+00
  store float %37, ptr %4, align 4, !tbaa !89
  br label %38

38:                                               ; preds = %30, %28
  %39 = icmp eq i32 %19, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.DeepSample, ptr %18, i64 -1
  %42 = sitofp i32 %6 to float
  %43 = load i32, ptr %41, align 4, !tbaa !258
  %44 = sitofp i32 %43 to float
  %45 = fsub float %42, %44
  %46 = load i32, ptr %18, align 4, !tbaa !258
  %47 = sitofp i32 %46 to float
  %48 = fsub float %47, %44
  %49 = fdiv float %45, %48
  %50 = getelementptr inbounds %struct.DeepSample, ptr %18, i64 0, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !260
  %52 = fsub float 1.000000e+00, %49
  %53 = getelementptr %struct.DeepSample, ptr %18, i64 -1, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !260
  %55 = fmul float %54, %52
  %56 = tail call float @llvm.fmuladd.f32(float %49, float %51, float %55)
  br label %57

57:                                               ; preds = %38, %40, %25
  %58 = phi float [ %27, %25 ], [ %56, %40 ], [ 1.000000e+00, %38 ]
  ret float %58
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @viewpixel_to_lampbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !PGOFuncName !295 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #23
  call void @RE_vlakren_get_normal(ptr noundef nonnull @R, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9) #25
  %11 = load ptr, ptr %2, align 8, !tbaa !81
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %13 = load i16, ptr %12, align 8, !tbaa !67
  %14 = and i16 %13, 3
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %8) #25
  br label %18

18:                                               ; preds = %16, %6
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #24
  %20 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %20, align 4, !tbaa !89
  %21 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !296
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %18
  %25 = load <4 x float>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %27 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !89
  %28 = load <2 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !96
  %29 = sitofp <2 x i32> %28 to <2 x float>
  %30 = insertelement <2 x float> %26, float %27, i64 1
  %31 = fmul <2 x float> %30, %29
  %32 = fdiv <2 x float> <float 2.000000e+00, float 2.000000e+00>, %31
  %33 = insertelement <2 x float> poison, float %3, i64 0
  %34 = insertelement <2 x float> %33, float %4, i64 1
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> <float -5.000000e-01, float -5.000000e-01>, <2 x float> %34)
  %36 = load <2 x float>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !89
  %37 = fneg <2 x float> %36
  %38 = fdiv <2 x float> %37, %30
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %32, <2 x float> %38)
  store <2 x float> %39, ptr %7, align 16, !tbaa !89
  %40 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !89
  %42 = fcmp une float %41, 0.000000e+00
  br i1 %42, label %43, label %55

43:                                               ; preds = %24
  %44 = load float, ptr %9, align 4, !tbaa !89
  %45 = fneg float %44
  %46 = extractelement <2 x float> %39, i64 0
  %47 = call float @llvm.fmuladd.f32(float %45, float %46, float %19)
  %48 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !89
  %50 = fneg float %49
  %51 = extractelement <2 x float> %39, i64 1
  %52 = call float @llvm.fmuladd.f32(float %50, float %51, float %47)
  %53 = fdiv float %52, %41
  %54 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %53, ptr %54, align 8, !tbaa !89
  br label %70

55:                                               ; preds = %24
  %56 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %56, align 8, !tbaa !89
  br label %70

57:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #23
  call void @calc_view_vector(ptr noundef nonnull %10, float noundef %3, float noundef %4) #25
  %58 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %60, label %112

60:                                               ; preds = %57
  %61 = fdiv float %19, %58
  %62 = load <2 x float>, ptr %10, align 8, !tbaa !89
  %63 = insertelement <2 x float> poison, float %61, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %64, %62
  store <2 x float> %65, ptr %7, align 16, !tbaa !89
  %66 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !89
  %68 = fmul float %61, %67
  %69 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %68, ptr %69, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  br label %70

70:                                               ; preds = %60, %43, %55
  %71 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 3
  call void @mul_m4_v4(ptr noundef nonnull %71, ptr noundef nonnull %7) #25
  %72 = load float, ptr %20, align 4, !tbaa !89
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = load float, ptr %7, align 16, !tbaa !89
  %75 = fneg float %73
  %76 = fcmp olt float %74, %75
  %77 = fcmp ogt float %74, %73
  %78 = or i1 %76, %77
  br i1 %78, label %113, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !89
  %82 = fcmp olt float %81, %75
  %83 = fcmp ogt float %81, %73
  %84 = or i1 %82, %83
  br i1 %84, label %113, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %87 = load float, ptr %86, align 8, !tbaa !89
  %88 = fcmp olt float %87, %75
  %89 = fcmp ogt float %87, %73
  %90 = or i1 %88, %89
  br i1 %90, label %113, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %93 = load i32, ptr %92, align 8, !tbaa !44
  %94 = sitofp i32 %93 to float
  %95 = fmul float %94, 5.000000e-01
  %96 = insertelement <2 x float> poison, float %74, i64 0
  %97 = insertelement <2 x float> %96, float %81, i64 1
  %98 = insertelement <2 x float> poison, float %72, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  %100 = fdiv <2 x float> %97, %99
  %101 = fadd <2 x float> %100, <float 1.000000e+00, float 1.000000e+00>
  %102 = insertelement <2 x float> poison, float %95, i64 0
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <2 x i32> zeroinitializer
  %104 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %103, <2 x float> %101, <2 x float> <float -5.000000e-01, float -5.000000e-01>)
  store <2 x float> %104, ptr %5, align 4, !tbaa !89
  %105 = fdiv float %87, %72
  %106 = fmul float %105, 0x41E0000000000000
  %107 = getelementptr inbounds float, ptr %5, i64 2
  %108 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 15
  %109 = load i32, ptr %108, align 4, !tbaa !93
  %110 = sitofp i32 %109 to float
  %111 = call float @llvm.fmuladd.f32(float %110, float 0xBFA99999A0000000, float %106)
  store float %111, ptr %107, align 4, !tbaa !89
  br label %113

112:                                              ; preds = %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #23
  br label %113

113:                                              ; preds = %85, %79, %70, %112, %91
  %114 = phi i32 [ 1, %91 ], [ 0, %112 ], [ 0, %70 ], [ 0, %79 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #23
  ret i32 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @isb_alloc_sample_transp(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !297 {
  %3 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 40) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.ISBSampleA, ptr %3, i64 0, i32 4
  store ptr %4, ptr %5, align 8
  store ptr %3, ptr %0, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bound_rectf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !298 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !299
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store float %3, ptr %0, align 4, !tbaa !299
  %7 = load float, ptr %1, align 4, !tbaa !89
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi float [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !300
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float %9, ptr %10, align 4, !tbaa !300
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !301
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  store float %16, ptr %17, align 4, !tbaa !301
  %21 = load float, ptr %15, align 4, !tbaa !89
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi float [ %21, %20 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !302
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store float %23, ptr %24, align 4, !tbaa !302
  br label %28

28:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_bsp_split_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !303 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %3, %39
  %6 = phi i32 [ %40, %39 ], [ %2, %3 ]
  %7 = phi ptr [ %27, %39 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !195
  %10 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 3, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !304
  %14 = load <2 x float>, ptr %10, align 4, !tbaa !89
  %15 = insertelement <2 x float> poison, float %9, i64 0
  %16 = insertelement <2 x float> %15, float %13, i64 1
  %17 = fadd <2 x float> %14, %16
  %18 = fmul <2 x float> %17, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %18, ptr %11, align 8, !tbaa !89
  %19 = extractelement <2 x float> %14, i64 0
  %20 = fsub float %19, %9
  %21 = extractelement <2 x float> %14, i64 1
  %22 = fsub float %13, %21
  %23 = fcmp ule float %20, %22
  %24 = zext i1 %23 to i16
  %25 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 5
  store i16 %24, ptr %25, align 2
  %26 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #25
  store ptr %26, ptr %7, align 8, !tbaa !305
  %27 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #25
  %28 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !306
  %29 = getelementptr inbounds %struct.ISBBranch, ptr %26, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !307
  %30 = getelementptr inbounds %struct.ISBBranch, ptr %27, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !307
  br i1 %23, label %34, label %31

31:                                               ; preds = %5
  %32 = load float, ptr %11, align 8, !tbaa !89
  %33 = getelementptr inbounds %struct.ISBBranch, ptr %26, i64 0, i32 3, i32 1
  store float %32, ptr %33, align 4, !tbaa !308
  store float %32, ptr %30, align 8, !tbaa !195
  br label %39

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.ISBBranch, ptr %7, i64 0, i32 2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !89
  %37 = getelementptr inbounds %struct.ISBBranch, ptr %26, i64 0, i32 3, i32 3
  store float %36, ptr %37, align 4, !tbaa !304
  %38 = getelementptr inbounds %struct.ISBBranch, ptr %27, i64 0, i32 3, i32 2
  store float %36, ptr %38, align 8, !tbaa !198
  br label %39

39:                                               ; preds = %34, %31
  %40 = add nsw i32 %6, -1
  tail call fastcc void @isb_bsp_split_init(ptr noundef nonnull %26, ptr noundef %1, i32 noundef %40) #24
  %41 = icmp sgt i32 %6, 1
  br i1 %41, label %5, label %42

42:                                               ; preds = %39, %3
  %43 = phi ptr [ %0, %3 ], [ %27, %39 ]
  %44 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 1024) #25
  %45 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 8
  store ptr %44, ptr %45, align 8, !tbaa !309
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @isb_add_samples_transp(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !310 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !192
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @.str.21) #25
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 4, !tbaa !193
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %11(i64 noundef %15, ptr noundef nonnull @.str.22) #25
  %17 = load i32, ptr %6, align 8, !tbaa !192
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %4
  %20 = phi i32 [ %17, %4 ], [ %28, %23 ]
  %21 = load i32, ptr %12, align 4, !tbaa !193
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %31, label %41

23:                                               ; preds = %4, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %4 ]
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  %26 = trunc i64 %24 to i32
  store i32 %26, ptr %25, align 4, !tbaa !96
  %27 = add nuw nsw i64 %24, 1
  %28 = load i32, ptr %6, align 8, !tbaa !192
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %23, label %19, !llvm.loop !311

31:                                               ; preds = %19, %31
  %32 = phi i64 [ %35, %31 ], [ 0, %19 ]
  %33 = getelementptr inbounds i32, ptr %16, i64 %32
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 4, !tbaa !96
  %35 = add nuw nsw i64 %32, 1
  %36 = load i32, ptr %12, align 4, !tbaa !193
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !312

39:                                               ; preds = %31
  %40 = load i32, ptr %6, align 8, !tbaa !192
  br label %41

41:                                               ; preds = %39, %19
  %42 = phi i32 [ %40, %39 ], [ %20, %19 ]
  tail call void @BLI_array_randomize(ptr noundef %10, i32 noundef 4, i32 noundef %42, i32 noundef 12345) #25
  %43 = load i32, ptr %12, align 4, !tbaa !193
  tail call void @BLI_array_randomize(ptr noundef %16, i32 noundef 4, i32 noundef %43, i32 noundef 54321) #25
  %44 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %45 = tail call i16 @llvm.umax.i16(i16 %44, i16 1)
  %46 = icmp sgt i16 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %41, %107
  %48 = phi i16 [ %108, %107 ], [ %44, %41 ]
  %49 = phi i64 [ %110, %107 ], [ 0, %41 ]
  %50 = phi i32 [ %109, %107 ], [ 0, %41 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = load i32, ptr %12, align 4, !tbaa !193
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 8, !tbaa !192
  br label %62

57:                                               ; preds = %100
  %58 = add nuw nsw i64 %65, 1
  %59 = load i32, ptr %12, align 4, !tbaa !193
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %105, !llvm.loop !313

62:                                               ; preds = %55, %57
  %63 = phi i32 [ %56, %55 ], [ %101, %57 ]
  %64 = phi i32 [ %56, %55 ], [ %102, %57 ]
  %65 = phi i64 [ 0, %55 ], [ %58, %57 ]
  %66 = phi i32 [ %50, %55 ], [ 0, %57 ]
  %67 = getelementptr inbounds i32, ptr %16, i64 %65
  %68 = load i32, ptr %67, align 4, !tbaa !96
  %69 = icmp sgt i32 %64, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %62, %94
  %71 = phi i32 [ %95, %94 ], [ %63, %62 ]
  %72 = phi i64 [ %97, %94 ], [ 0, %62 ]
  %73 = phi i32 [ %95, %94 ], [ %64, %62 ]
  %74 = phi i32 [ %96, %94 ], [ %66, %62 ]
  %75 = getelementptr inbounds i32, ptr %10, i64 %72
  %76 = load i32, ptr %75, align 4, !tbaa !96
  %77 = mul nsw i32 %73, %68
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %52, i64 %78
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %70, %84
  %85 = phi ptr [ %90, %84 ], [ %82, %70 ]
  %86 = phi i32 [ %88, %84 ], [ %74, %70 ]
  %87 = tail call fastcc i32 @isb_bsp_insert(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %85) #24, !range !149
  %88 = or i32 %87, %86
  %89 = getelementptr inbounds %struct.ISBSampleA, ptr %85, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %84, !llvm.loop !314

92:                                               ; preds = %84
  %93 = load i32, ptr %6, align 8, !tbaa !192
  br label %94

94:                                               ; preds = %92, %70
  %95 = phi i32 [ %71, %70 ], [ %93, %92 ]
  %96 = phi i32 [ %74, %70 ], [ %88, %92 ]
  %97 = add nuw nsw i64 %72, 1
  %98 = sext i32 %95 to i64
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %70, label %100, !llvm.loop !315

100:                                              ; preds = %94, %62
  %101 = phi i32 [ %63, %62 ], [ %95, %94 ]
  %102 = phi i32 [ %64, %62 ], [ %95, %94 ]
  %103 = phi i32 [ %66, %62 ], [ %96, %94 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %57, label %105

105:                                              ; preds = %100, %57
  %106 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  br label %107

107:                                              ; preds = %105, %47
  %108 = phi i16 [ %48, %47 ], [ %106, %105 ]
  %109 = phi i32 [ %50, %47 ], [ %103, %105 ]
  %110 = add nuw nsw i64 %49, 1
  %111 = tail call i16 @llvm.umax.i16(i16 %108, i16 1)
  %112 = sext i16 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %47, label %114, !llvm.loop !316

114:                                              ; preds = %107, %41
  %115 = phi i32 [ 0, %41 ], [ %109, %107 ]
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %116(ptr noundef %10) #25
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %117(ptr noundef %16) #25
  ret i32 %115
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_bsp_fillfaces(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !317 {
  %3 = alloca %struct.ZSpan, align 8
  %4 = alloca %struct.ZSpan, align 8
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #23
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %9, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !44
  tail call fastcc void @isb_bsp_recalc_box(ptr noundef %1) #24
  %12 = getelementptr inbounds %struct.ISBBranch, ptr %1, i64 0, i32 3
  %13 = sitofp i32 %11 to float
  %14 = fneg float %13
  %15 = load <4 x float>, ptr %12, align 8, !tbaa !89
  %16 = insertelement <4 x float> poison, float %14, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float> %17)
  %19 = fadd <4 x float> %18, <float -2.000000e+00, float 2.000000e+00, float -2.000000e+00, float 2.000000e+00>
  %20 = insertelement <4 x float> poison, float %13, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = fdiv <4 x float> %19, %21
  store <4 x float> %22, ptr %5, align 16, !tbaa !89
  %23 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !57
  %25 = and i32 %24, 32772
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !58
  br label %30

30:                                               ; preds = %27, %2
  %31 = phi i32 [ %29, %27 ], [ -1, %2 ]
  %32 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !318
  call void @zbuf_alloc_span(ptr noundef nonnull %3, i32 noundef %11, i32 noundef %11, float noundef %32) #25
  %33 = fmul float %13, 5.000000e-01
  %34 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 12
  store float %33, ptr %34, align 8, !tbaa !319
  %35 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 13
  store float %33, ptr %35, align 4, !tbaa !321
  %36 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 14
  store <2 x float> <float -5.000000e-01, float -5.000000e-01>, ptr %36, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 16
  store ptr %1, ptr %37, align 8, !tbaa !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %3, i64 224, i1 false), !tbaa.struct !323
  %38 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 34
  store ptr @isb_bsp_test_face, ptr %38, align 8, !tbaa !324
  %39 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 0, i32 34
  store ptr @isb_bsp_test_strand, ptr %39, align 8, !tbaa !324
  %40 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !59
  %41 = icmp eq ptr %40, null
  br i1 %41, label %190, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.ShadBuf, ptr %9, i64 0, i32 3
  %44 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 27
  %45 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 0, i32 27
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  br label %49

49:                                               ; preds = %42, %183
  %50 = phi ptr [ %40, %42 ], [ %188, %183 ]
  %51 = phi ptr [ null, %42 ], [ %186, %183 ]
  %52 = phi ptr [ null, %42 ], [ %185, %183 ]
  %53 = phi i32 [ 0, %42 ], [ %187, %183 ]
  %54 = phi i32 [ 1, %42 ], [ %184, %183 ]
  %55 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 11
  %58 = load i16, ptr %57, align 8, !tbaa !67
  %59 = and i16 %58, 3
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %43, ptr noundef nonnull %62) #25
  br label %64

63:                                               ; preds = %49
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %43) #25
  br label %64

64:                                               ; preds = %63, %61
  %65 = getelementptr inbounds %struct.ObjectRen, ptr %56, i64 0, i32 11
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %183

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ObjectRen, ptr %56, i64 0, i32 19
  %70 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %50, i64 0, i32 7
  br label %71

71:                                               ; preds = %68, %177
  %72 = phi i32 [ %66, %68 ], [ %178, %177 ]
  %73 = phi ptr [ %51, %68 ], [ %88, %177 ]
  %74 = phi ptr [ %52, %68 ], [ %179, %177 ]
  %75 = phi i32 [ 0, %68 ], [ %181, %177 ]
  %76 = phi i32 [ %54, %68 ], [ %180, %177 ]
  %77 = and i32 %75, 255
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load ptr, ptr %69, align 8, !tbaa !69
  %81 = lshr exact i32 %75, 8
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.VlakTableNode, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  br label %87

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.VlakRen, ptr %73, i64 1
  br label %87

87:                                               ; preds = %85, %79
  %88 = phi ptr [ %84, %79 ], [ %86, %85 ]
  %89 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !72
  %91 = icmp eq ptr %90, %74
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 53
  %94 = load i32, ptr %93, align 4, !tbaa !74
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 51
  %99 = load i32, ptr %98, align 4, !tbaa !79
  %100 = and i32 %99, 33554432
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %97
  %104 = phi i32 [ 0, %102 ], [ 1, %97 ]
  %105 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 2
  %106 = load i16, ptr %105, align 8, !tbaa !325
  %107 = icmp eq i16 %106, 3
  %108 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 72
  %109 = load float, ptr %108, align 4, !tbaa !277
  store float %109, ptr %44, align 4, !tbaa !326
  store float %109, ptr %45, align 4, !tbaa !326
  br i1 %107, label %177, label %110

110:                                              ; preds = %103, %87
  %111 = phi i32 [ %104, %103 ], [ %76, %87 ]
  %112 = phi ptr [ %90, %103 ], [ %74, %87 ]
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %177, label %114

114:                                              ; preds = %110
  %115 = load i32, ptr %70, align 8, !tbaa !80
  %116 = and i32 %115, %31
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %177, label %118

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #23
  %119 = load ptr, ptr %88, align 8, !tbaa !81
  call void @projectvert(ptr noundef %119, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %120 = call fastcc i32 @testclip_minmax(ptr noundef nonnull %7, ptr noundef nonnull %5) #24, !range !327
  %121 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !85
  call void @projectvert(ptr noundef %122, ptr noundef nonnull %6, ptr noundef nonnull %46) #25
  %123 = call fastcc i32 @testclip_minmax(ptr noundef nonnull %46, ptr noundef nonnull %5) #24, !range !327
  %124 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !86
  call void @projectvert(ptr noundef %125, ptr noundef nonnull %6, ptr noundef nonnull %47) #25
  %126 = call fastcc i32 @testclip_minmax(ptr noundef nonnull %47, ptr noundef nonnull %5) #24, !range !327
  %127 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !87
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  call void @projectvert(ptr noundef nonnull %128, ptr noundef nonnull %6, ptr noundef nonnull %48) #25
  %131 = call fastcc i32 @testclip_minmax(ptr noundef nonnull %48, ptr noundef nonnull %5) #24, !range !327
  %132 = load ptr, ptr %127, align 8, !tbaa !87
  br label %133

133:                                              ; preds = %130, %118
  %134 = phi ptr [ %132, %130 ], [ null, %118 ]
  %135 = phi i32 [ %131, %130 ], [ 0, %118 ]
  %136 = icmp eq ptr %134, null
  %137 = select i1 %136, i32 15, i32 %135
  %138 = and i32 %123, %120
  %139 = and i32 %138, %126
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %175

142:                                              ; preds = %133
  %143 = call i32 @testclip(ptr noundef nonnull %7) #25
  %144 = call i32 @testclip(ptr noundef nonnull %46) #25
  %145 = call i32 @testclip(ptr noundef nonnull %47) #25
  %146 = load ptr, ptr %127, align 8, !tbaa !87
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = call i32 @testclip(ptr noundef nonnull %48) #25
  br label %150

150:                                              ; preds = %148, %142
  %151 = phi i32 [ %149, %148 ], [ 0, %142 ]
  %152 = getelementptr inbounds %struct.Material, ptr %112, i64 0, i32 2
  %153 = load i16, ptr %152, align 8, !tbaa !325
  %154 = icmp eq i16 %153, 3
  %155 = load ptr, ptr %127, align 8, !tbaa !87
  %156 = icmp eq ptr %155, null
  br i1 %154, label %157, label %164

157:                                              ; preds = %150
  %158 = add nuw nsw i32 %75, 1
  %159 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 8
  %160 = load i8, ptr %159, align 2, !tbaa !328
  %161 = zext i8 %160 to i32
  br i1 %156, label %163, label %162

162:                                              ; preds = %157
  call void @zbufclipwire(ptr noundef nonnull %3, i32 noundef %53, i32 noundef %158, i32 noundef %161, ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %151) #25
  br label %175

163:                                              ; preds = %157
  call void @zbufclipwire(ptr noundef nonnull %3, i32 noundef %53, i32 noundef %158, i32 noundef %161, ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef null, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef 0) #25
  br label %175

164:                                              ; preds = %150
  br i1 %156, label %173, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.VlakRen, ptr %88, i64 0, i32 7
  %167 = load i8, ptr %166, align 1, !tbaa !329
  %168 = and i8 %167, 4
  %169 = icmp eq i8 %168, 0
  %170 = add nuw nsw i32 %75, 1
  br i1 %169, label %172, label %171

171:                                              ; preds = %165
  call void @zbufclip4(ptr noundef nonnull %4, i32 noundef %53, i32 noundef %170, ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %151) #25
  br label %175

172:                                              ; preds = %165
  call void @zbufclip4(ptr noundef nonnull %3, i32 noundef %53, i32 noundef %170, ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32 noundef %151) #25
  br label %175

173:                                              ; preds = %164
  %174 = add nuw nsw i32 %75, 1
  call void @zbufclip(ptr noundef nonnull %3, i32 noundef %53, i32 noundef %174, ptr noundef nonnull %7, ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef %143, i32 noundef %144, i32 noundef %145) #25
  br label %175

175:                                              ; preds = %163, %162, %171, %172, %173, %133
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #23
  %176 = load i32, ptr %65, align 4, !tbaa !68
  br label %177

177:                                              ; preds = %103, %110, %114, %175
  %178 = phi i32 [ %72, %110 ], [ %72, %114 ], [ %176, %175 ], [ %72, %103 ]
  %179 = phi ptr [ %112, %110 ], [ %112, %114 ], [ %112, %175 ], [ %90, %103 ]
  %180 = phi i32 [ 0, %110 ], [ %111, %114 ], [ %111, %175 ], [ 0, %103 ]
  %181 = add nuw nsw i32 %75, 1
  %182 = icmp slt i32 %181, %178
  br i1 %182, label %71, label %183, !llvm.loop !330

183:                                              ; preds = %177, %64
  %184 = phi i32 [ %54, %64 ], [ %180, %177 ]
  %185 = phi ptr [ %52, %64 ], [ %179, %177 ]
  %186 = phi ptr [ %51, %64 ], [ %88, %177 ]
  %187 = add nuw nsw i32 %53, 1
  %188 = load ptr, ptr %50, align 8, !tbaa !59
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %49, !llvm.loop !331

190:                                              ; preds = %183, %30
  call void @zbuf_free_span(ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_add_shadfac(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 !PGOFuncName !332 {
  %7 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %8 = icmp eq i16 %7, 0
  %9 = sitofp i16 %4 to float
  br i1 %8, label %19, label %10

10:                                               ; preds = %6
  %11 = insertelement <2 x i16> poison, i16 %7, i64 0
  %12 = insertelement <2 x i16> %11, i16 %5, i64 1
  %13 = sitofp <2 x i16> %12 to <2 x float>
  %14 = insertelement <2 x float> <float poison, float 4.096000e+03>, float %9, i64 0
  %15 = fmul <2 x float> %14, %13
  %16 = extractelement <2 x float> %15, i64 0
  %17 = extractelement <2 x float> %15, i64 1
  %18 = fdiv float %16, %17
  br label %21

19:                                               ; preds = %6
  %20 = fmul float %9, 0x3F30000000000000
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi float [ %18, %10 ], [ %20, %19 ]
  %23 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 24) #25
  %24 = getelementptr inbounds %struct.ISBShadfacA, ptr %23, i64 0, i32 1
  store i32 %2, ptr %24, align 8, !tbaa !180
  %25 = and i32 %3, -134217729
  %26 = getelementptr inbounds %struct.ISBShadfacA, ptr %23, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !178
  %27 = getelementptr inbounds %struct.ISBShadfacA, ptr %23, i64 0, i32 3
  store float %22, ptr %27, align 8, !tbaa !181
  %28 = load ptr, ptr %0, align 8, !tbaa !59
  store ptr %28, ptr %23, align 8, !tbaa !333
  store ptr %23, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare i32 @count_mask(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RE_vlakren_get_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @isb_bsp_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !334 {
  %4 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !335
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 8, !tbaa !335
  %7 = load ptr, ptr %0, align 8, !tbaa !305
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3, %24
  %10 = phi ptr [ %27, %24 ], [ %7, %3 ]
  %11 = phi i32 [ %26, %24 ], [ 0, %3 ]
  %12 = phi ptr [ %25, %24 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !336
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds float, ptr %2, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !89
  %18 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 2, i64 %15
  %19 = load float, ptr %18, align 4, !tbaa !89
  %20 = fcmp ugt float %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !306
  br label %24

24:                                               ; preds = %9, %21
  %25 = phi ptr [ %23, %21 ], [ %10, %9 ]
  %26 = add nuw nsw i32 %11, 1
  %27 = load ptr, ptr %25, align 8, !tbaa !305
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !337

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ISBBranch, ptr %25, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !335
  %32 = icmp eq i32 %26, 32
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i16 [ %6, %3 ], [ %31, %29 ]
  %35 = phi ptr [ %0, %3 ], [ %25, %29 ]
  %36 = phi i1 [ false, %3 ], [ %32, %29 ]
  %37 = getelementptr inbounds %struct.ISBBranch, ptr %35, i64 0, i32 4
  %38 = icmp eq i16 %34, 128
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %51

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ISBBranch, ptr %35, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !309
  %44 = sext i16 %34 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr %2, ptr %45, align 8, !tbaa !59
  %46 = add i16 %34, 1
  store i16 %46, ptr %37, align 8, !tbaa !335
  %47 = icmp eq i16 %46, 128
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  br i1 %36, label %49, label %50

49:                                               ; preds = %48
  store i16 %34, ptr %37, align 8, !tbaa !335
  br label %51

50:                                               ; preds = %48
  tail call fastcc void @isb_bsp_split(ptr noundef nonnull %35, ptr noundef %1) #24
  br label %51

51:                                               ; preds = %41, %50, %49, %39
  %52 = phi i32 [ 1, %39 ], [ 1, %49 ], [ 0, %50 ], [ 0, %41 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_bsp_split(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !338 {
  %3 = alloca [128 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 2, i64 1
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !309
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 127, %2 ], [ %19, %8 ]
  %10 = phi float [ 0.000000e+00, %2 ], [ %16, %8 ]
  %11 = phi float [ 0.000000e+00, %2 ], [ %18, %8 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = load float, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %16 = fadd float %14, %10
  store float %16, ptr %4, align 8, !tbaa !89
  %17 = load float, ptr %15, align 4, !tbaa !89
  %18 = fadd float %17, %11
  store float %18, ptr %5, align 4, !tbaa !89
  %19 = add nsw i64 %9, -1
  %20 = icmp eq i64 %9, 0
  br i1 %20, label %21, label %8, !llvm.loop !339

21:                                               ; preds = %8
  %22 = insertelement <2 x float> poison, float %16, i64 0
  %23 = insertelement <2 x float> %22, float %18, i64 1
  %24 = fmul <2 x float> %23, <float 7.812500e-03, float 7.812500e-03>
  store <2 x float> %24, ptr %4, align 8, !tbaa !89
  %25 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 3, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !308
  %28 = load float, ptr %25, align 8, !tbaa !195
  %29 = fsub float %27, %28
  %30 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 3, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !304
  %32 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 3, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !198
  %34 = fsub float %31, %33
  %35 = fcmp ule float %29, %34
  %36 = zext i1 %35 to i16
  %37 = zext i1 %35 to i64
  %38 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 5
  store i16 %36, ptr %38, align 2
  %39 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #25
  store ptr %39, ptr %0, align 8, !tbaa !305
  %40 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #25
  %41 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !306
  %42 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 1024) #25
  %43 = getelementptr inbounds %struct.ISBBranch, ptr %39, i64 0, i32 8
  store ptr %42, ptr %43, align 8, !tbaa !309
  %44 = getelementptr inbounds %struct.ISBBranch, ptr %40, i64 0, i32 8
  store ptr %3, ptr %44, align 8, !tbaa !309
  %45 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 2, i64 %37
  %46 = load float, ptr %45, align 4, !tbaa !89
  %47 = getelementptr inbounds %struct.ISBBranch, ptr %39, i64 0, i32 4
  %48 = getelementptr inbounds %struct.ISBBranch, ptr %40, i64 0, i32 4
  br label %49

49:                                               ; preds = %21, %63
  %50 = phi i64 [ 127, %21 ], [ %71, %63 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !309
  %52 = getelementptr inbounds ptr, ptr %51, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds [3 x float], ptr %53, i64 0, i64 %37
  %55 = load float, ptr %54, align 4, !tbaa !89
  %56 = fcmp oeq float %55, %46
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = fcmp olt float %55, %46
  br i1 %58, label %63, label %62

59:                                               ; preds = %49
  %60 = and i64 %50, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %59
  br label %63

63:                                               ; preds = %59, %57, %62
  %64 = phi ptr [ %44, %62 ], [ %43, %57 ], [ %43, %59 ]
  %65 = phi ptr [ %48, %62 ], [ %47, %57 ], [ %47, %59 ]
  %66 = load ptr, ptr %64, align 8, !tbaa !309
  %67 = load i16, ptr %65, align 8, !tbaa !335
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  store ptr %53, ptr %69, align 8, !tbaa !59
  %70 = add i16 %67, 1
  store i16 %70, ptr %65, align 8, !tbaa !335
  %71 = add nsw i64 %50, -1
  %72 = icmp eq i64 %50, 0
  br i1 %72, label %73, label %49, !llvm.loop !340

73:                                               ; preds = %63
  %74 = load ptr, ptr %6, align 8, !tbaa !309
  %75 = load i16, ptr %48, align 8, !tbaa !335
  %76 = sext i16 %75 to i64
  %77 = shl nsw i64 %76, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %74, ptr nonnull align 16 %3, i64 %77, i1 false)
  %78 = load ptr, ptr %6, align 8, !tbaa !309
  store ptr %78, ptr %44, align 8, !tbaa !309
  store ptr null, ptr %6, align 8, !tbaa !309
  %79 = getelementptr inbounds %struct.ISBBranch, ptr %39, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !307
  %80 = getelementptr inbounds %struct.ISBBranch, ptr %40, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !307
  br i1 %35, label %84, label %81

81:                                               ; preds = %73
  %82 = load float, ptr %4, align 8, !tbaa !89
  %83 = getelementptr inbounds %struct.ISBBranch, ptr %39, i64 0, i32 3, i32 1
  store float %82, ptr %83, align 4, !tbaa !308
  store float %82, ptr %80, align 8, !tbaa !195
  br label %88

84:                                               ; preds = %73
  %85 = load float, ptr %5, align 4, !tbaa !89
  %86 = getelementptr inbounds %struct.ISBBranch, ptr %39, i64 0, i32 3, i32 3
  store float %85, ptr %86, align 4, !tbaa !304
  %87 = getelementptr inbounds %struct.ISBBranch, ptr %40, i64 0, i32 3, i32 2
  store float %85, ptr %87, align 8, !tbaa !198
  br label %88

88:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @isb_bsp_recalc_box(ptr nocapture noundef %0) unnamed_addr #20 !PGOFuncName !341 {
  %2 = load ptr, ptr %0, align 8, !tbaa !305
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %1 ]
  tail call fastcc void @isb_bsp_recalc_box(ptr noundef nonnull %5) #24
  %7 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !306
  %9 = load ptr, ptr %8, align 8, !tbaa !305
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  %12 = phi ptr [ %0, %1 ], [ %8, %4 ]
  %13 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !335
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 3
  tail call fastcc void @init_box(ptr noundef nonnull %17) #24
  %18 = load i16, ptr %13, align 8, !tbaa !335
  %19 = icmp sgt i16 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ISBBranch, ptr %12, i64 0, i32 8
  %22 = zext nneg i16 %18 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %22, %20 ], [ %25, %23 ]
  %25 = add nsw i64 %24, -1
  %26 = load ptr, ptr %21, align 8, !tbaa !309
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  tail call fastcc void @bound_boxf(ptr noundef nonnull %17, ptr noundef %28) #24
  %29 = icmp ugt i64 %24, 1
  br i1 %29, label %23, label %30, !llvm.loop !342

30:                                               ; preds = %23, %16, %11
  ret void
}

; Function Attrs: optsize
declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @isb_bsp_test_face(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !PGOFuncName !343 {
  %8 = alloca %struct.BSPFace, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !344
  %10 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !346
  %11 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 3
  store ptr %5, ptr %11, align 8, !tbaa !347
  %12 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 4
  store ptr %6, ptr %12, align 8, !tbaa !348
  %13 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 5
  store i32 %1, ptr %13, align 8, !tbaa !349
  %14 = and i32 %2, -134217729
  %15 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !350
  %16 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 7
  store i32 0, ptr %16, align 8, !tbaa !351
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %20 = load float, ptr %19, align 4, !tbaa !326
  %21 = fmul float %20, 4.096000e+03
  %22 = sitofp i16 %17 to float
  %23 = select i1 %18, float 1.000000e+00, float %22
  %24 = fdiv float %21, %23
  %25 = tail call float @llvm.ceil.f32(float %24)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 8
  store i16 %26, ptr %27, align 4
  %28 = fcmp oeq float %20, 1.000000e+00
  %29 = zext i1 %28 to i16
  %30 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 9
  store i16 %29, ptr %30, align 2, !tbaa !352
  call fastcc void @init_box(ptr noundef nonnull %8) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %3) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %4) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %5) #24
  %31 = icmp eq ptr %6, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  br label %33

33:                                               ; preds = %32, %7
  %34 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !322
  call fastcc void @isb_bsp_face_inside(ptr noundef %35, ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @isb_bsp_test_strand(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !PGOFuncName !353 {
  %8 = alloca %struct.BSPFace, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #23
  %9 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !344
  %10 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !346
  %11 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 3
  store ptr %5, ptr %11, align 8, !tbaa !347
  %12 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 4
  store ptr %6, ptr %12, align 8, !tbaa !348
  %13 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 5
  store i32 %1, ptr %13, align 8, !tbaa !349
  %14 = and i32 %2, -134217729
  %15 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !350
  %16 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 7
  store i32 4, ptr %16, align 8, !tbaa !351
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !199
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %20 = load float, ptr %19, align 4, !tbaa !326
  %21 = fmul float %20, 4.096000e+03
  %22 = sitofp i16 %17 to float
  %23 = select i1 %18, float 1.000000e+00, float %22
  %24 = fdiv float %21, %23
  %25 = tail call float @llvm.ceil.f32(float %24)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 8
  store i16 %26, ptr %27, align 4
  %28 = fcmp oeq float %20, 1.000000e+00
  %29 = zext i1 %28 to i16
  %30 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 9
  store i16 %29, ptr %30, align 2, !tbaa !352
  call fastcc void @init_box(ptr noundef nonnull %8) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %3) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %4) #24
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef %5) #24
  %31 = icmp eq ptr %6, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  call fastcc void @bound_boxf(ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  br label %33

33:                                               ; preds = %32, %7
  call fastcc void @bspface_init_strand(ptr noundef nonnull %8) #24
  %34 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !322
  call fastcc void @isb_bsp_face_inside(ptr noundef %35, ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #23
  ret void
}

; Function Attrs: optsize
declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @testclip_minmax(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !354 {
  %3 = getelementptr inbounds float, ptr %0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = load float, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fmul float %4, %7
  %9 = fcmp ogt float %5, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load float, ptr %1, align 4, !tbaa !89
  %12 = fmul float %4, %11
  %13 = fcmp olt float %5, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %2, %10, %14
  %16 = phi i32 [ 2, %14 ], [ 0, %10 ], [ 1, %2 ]
  %17 = getelementptr inbounds float, ptr %0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !89
  %19 = getelementptr inbounds float, ptr %1, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !89
  %21 = fmul float %4, %20
  %22 = fcmp ogt float %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = or disjoint i32 %16, 4
  br label %32

25:                                               ; preds = %15
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !89
  %28 = fmul float %4, %27
  %29 = fcmp olt float %18, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = or disjoint i32 %16, 8
  br label %32

32:                                               ; preds = %25, %30, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %30 ], [ %16, %25 ]
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @testclip(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @zbufclipwire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @zbufclip4(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @zbufclip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @init_box(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !355 {
  store <4 x float> <float 1.000000e+06, float 0.000000e+00, float 1.000000e+06, float 0.000000e+00>, ptr %0, align 4, !tbaa !89
  %2 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 4
  store <2 x float> <float 0x41E0000000000000, float 0xC1E0000000000000>, ptr %2, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bound_boxf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !356 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !357
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store float %3, ptr %0, align 4, !tbaa !357
  %7 = load float, ptr %1, align 4, !tbaa !89
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi float [ %7, %6 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !358
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float %9, ptr %10, align 4, !tbaa !358
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !359
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  store float %16, ptr %17, align 4, !tbaa !359
  %21 = load float, ptr %15, align 4, !tbaa !89
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi float [ %21, %20 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !360
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store float %23, ptr %24, align 4, !tbaa !360
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !89
  %31 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 4
  %32 = load float, ptr %31, align 4, !tbaa !361
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  store float %30, ptr %31, align 4, !tbaa !361
  %35 = load float, ptr %29, align 4, !tbaa !89
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi float [ %35, %34 ], [ %30, %28 ]
  %38 = getelementptr inbounds %struct.Boxf, ptr %0, i64 0, i32 5
  %39 = load float, ptr %38, align 4, !tbaa !362
  %40 = fcmp ogt float %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store float %37, ptr %38, align 4, !tbaa !362
  br label %42

42:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @isb_bsp_face_inside(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !363 {
  %3 = load ptr, ptr %0, align 8, !tbaa !305
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %5, %26
  %10 = phi ptr [ %3, %5 ], [ %29, %26 ]
  %11 = phi ptr [ %0, %5 ], [ %28, %26 ]
  %12 = getelementptr inbounds %struct.ISBBranch, ptr %11, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !336
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load float, ptr %1, align 8, !tbaa !364
  %17 = getelementptr inbounds %struct.ISBBranch, ptr %11, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !89
  %19 = fcmp ugt float %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  tail call fastcc void @isb_bsp_face_inside(ptr noundef nonnull %10, ptr noundef nonnull %1) #24
  %21 = load float, ptr %17, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi float [ %21, %20 ], [ %18, %15 ]
  %24 = load float, ptr %8, align 4, !tbaa !365
  %25 = fcmp ogt float %24, %23
  br i1 %25, label %26, label %135

26:                                               ; preds = %38, %22
  %27 = getelementptr inbounds %struct.ISBBranch, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !306
  %29 = load ptr, ptr %28, align 8, !tbaa !305
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %9

31:                                               ; preds = %9
  %32 = load float, ptr %6, align 8, !tbaa !366
  %33 = getelementptr inbounds %struct.ISBBranch, ptr %11, i64 0, i32 2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !89
  %35 = fcmp ugt float %32, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call fastcc void @isb_bsp_face_inside(ptr noundef nonnull %10, ptr noundef nonnull %1) #24
  %37 = load float, ptr %33, align 4, !tbaa !89
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi float [ %37, %36 ], [ %34, %31 ]
  %40 = load float, ptr %7, align 4, !tbaa !367
  %41 = fcmp ogt float %40, %39
  br i1 %41, label %26, label %135

42:                                               ; preds = %26, %2
  %43 = phi ptr [ %0, %2 ], [ %28, %26 ]
  %44 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !335
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %135, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 6
  %49 = load i16, ptr %48, align 4, !tbaa !368
  %50 = icmp eq i16 %45, %49
  br i1 %50, label %135, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 3, i32 5
  %53 = load float, ptr %52, align 4, !tbaa !369
  %54 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 4
  %55 = load float, ptr %54, align 8, !tbaa !370
  %56 = fcmp olt float %53, %55
  br i1 %56, label %135, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 3
  %59 = tail call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %1, ptr noundef nonnull %58, ptr noundef null) #25
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %135, label %61

61:                                               ; preds = %57
  %62 = load i16, ptr %44, align 8, !tbaa !335
  %63 = icmp sgt i16 %62, 0
  br i1 %63, label %64, label %135

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ISBBranch, ptr %43, i64 0, i32 8
  %66 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 6
  %67 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 5
  %68 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 7
  %69 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 1
  %70 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 2
  %71 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 3
  %72 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 4
  %73 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 8
  %74 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 9
  %75 = zext nneg i16 %62 to i64
  br label %76

76:                                               ; preds = %64, %133
  %77 = phi i64 [ %75, %64 ], [ %78, %133 ]
  %78 = add nsw i64 %77, -1
  %79 = load ptr, ptr %65, align 8, !tbaa !309
  %80 = getelementptr inbounds ptr, ptr %79, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct.ISBSample, ptr %81, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !227
  %84 = load i32, ptr %66, align 4, !tbaa !350
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.ISBSample, ptr %81, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !225
  %89 = load i32, ptr %67, align 8, !tbaa !349
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %133, label %91

91:                                               ; preds = %86, %76
  %92 = getelementptr inbounds %struct.ISBSample, ptr %81, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !229
  %94 = icmp eq ptr %93, null
  br i1 %94, label %133, label %95

95:                                               ; preds = %91
  %96 = load float, ptr %54, align 8, !tbaa !370
  %97 = getelementptr inbounds [3 x float], ptr %81, i64 0, i64 2
  %98 = load float, ptr %97, align 8, !tbaa !89
  %99 = fcmp olt float %96, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %95
  %101 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %1, ptr noundef nonnull %81) #25
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %68, align 8, !tbaa !351
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = tail call fastcc i32 @point_behind_strand(ptr noundef nonnull %81, ptr noundef nonnull %1) #24, !range !149
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %133, label %121

109:                                              ; preds = %103
  %110 = load ptr, ptr %69, align 8, !tbaa !344
  %111 = load ptr, ptr %70, align 8, !tbaa !346
  %112 = load ptr, ptr %71, align 8, !tbaa !347
  %113 = tail call fastcc i32 @point_behind_tria2d(ptr noundef nonnull %81, ptr noundef %110, ptr noundef %111, ptr noundef %112) #24, !range !149
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load ptr, ptr %72, align 8, !tbaa !348
  %117 = icmp eq ptr %116, null
  br i1 %117, label %133, label %118

118:                                              ; preds = %115
  %119 = tail call fastcc i32 @point_behind_tria2d(ptr noundef nonnull %81, ptr noundef %110, ptr noundef %112, ptr noundef nonnull %116) #24, !range !149
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %106, %109, %118
  %122 = load i16, ptr %73, align 4, !tbaa !371
  %123 = load ptr, ptr %92, align 8, !tbaa !229
  %124 = load i16, ptr %123, align 2, !tbaa !174
  %125 = add i16 %124, %122
  store i16 %125, ptr %123, align 2, !tbaa !174
  %126 = icmp sgt i16 %125, 4095
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = load i16, ptr %74, align 2, !tbaa !352
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127, %121
  %131 = load i16, ptr %48, align 4, !tbaa !368
  %132 = add i16 %131, 1
  store i16 %132, ptr %48, align 4, !tbaa !368
  store ptr null, ptr %92, align 8, !tbaa !229
  br label %133

133:                                              ; preds = %106, %118, %130, %127, %115, %95, %100, %91, %86
  %134 = icmp ugt i64 %77, 1
  br i1 %134, label %76, label %135, !llvm.loop !372

135:                                              ; preds = %22, %38, %133, %61, %42, %47, %51, %57
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @point_behind_strand(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !373 {
  %3 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !374
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13
  %9 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %10 = load <2 x float>, ptr %8, align 4, !tbaa !89
  %11 = fsub <2 x float> %9, %10
  store <2 x float> %11, ptr %3, align 8, !tbaa !89
  %12 = call fastcc float @len_v2(ptr noundef nonnull %3) #24
  %13 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !375
  %15 = fcmp olt float %12, %14
  br i1 %15, label %56, label %55

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 15
  %18 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13
  %19 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %20 = load <2 x float>, ptr %18, align 4, !tbaa !89
  %21 = fsub <2 x float> %19, %20
  %22 = extractelement <2 x float> %21, i64 0
  %23 = load <2 x float>, ptr %17, align 4, !tbaa !89
  %24 = fsub <2 x float> %19, %20
  %25 = fmul <2 x float> %23, %24
  %26 = extractelement <2 x float> %25, i64 1
  %27 = extractelement <2 x float> %23, i64 0
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %22, float %26)
  %29 = fmul float %5, %28
  %30 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 11
  %31 = load float, ptr %30, align 4, !tbaa !376
  %32 = fneg float %31
  %33 = fcmp ogt float %29, %32
  %34 = fadd float %31, 1.000000e+00
  %35 = fcmp olt float %29, %34
  %36 = and i1 %33, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %16
  %38 = insertelement <2 x float> poison, float %29, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %23, <2 x float> %20)
  %41 = fsub <2 x float> %40, %19
  store <2 x float> %41, ptr %3, align 8, !tbaa !89
  %42 = call fastcc float @len_v2(ptr noundef nonnull %3) #24
  %43 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 10
  %44 = load float, ptr %43, align 8, !tbaa !375
  %45 = fcmp olt float %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !89
  %49 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 15, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !89
  %51 = tail call float @llvm.fmuladd.f32(float %29, float %50, float %48)
  %52 = getelementptr inbounds float, ptr %0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !89
  %54 = fcmp ule float %53, %51
  br i1 %54, label %55, label %56

55:                                               ; preds = %16, %46, %37, %7
  br label %56

56:                                               ; preds = %46, %7, %55
  %57 = phi i32 [ 0, %55 ], [ 1, %7 ], [ 1, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret i32 %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @point_behind_tria2d(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #15 !PGOFuncName !377 {
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = load float, ptr %1, align 4, !tbaa !89
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fsub float %9, %11
  %13 = load float, ptr %3, align 4, !tbaa !89
  %14 = fsub float %13, %6
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fsub float %16, %11
  %18 = fneg float %12
  %19 = fmul float %14, %18
  %20 = tail call float @llvm.fmuladd.f32(float %7, float %17, float %19)
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %58, label %22

22:                                               ; preds = %4
  %23 = load float, ptr %0, align 4, !tbaa !89
  %24 = fsub float %23, %6
  %25 = getelementptr inbounds float, ptr %0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !89
  %27 = fsub float %26, %11
  %28 = fdiv float 1.000000e+00, %20
  %29 = fneg float %27
  %30 = fmul float %14, %29
  %31 = tail call float @llvm.fmuladd.f32(float %24, float %17, float %30)
  %32 = fmul float %28, %31
  %33 = fcmp ult float %32, 0.000000e+00
  br i1 %33, label %57, label %34

34:                                               ; preds = %22
  %35 = fmul float %24, %18
  %36 = tail call float @llvm.fmuladd.f32(float %7, float %27, float %35)
  %37 = fmul float %28, %36
  %38 = fcmp ult float %37, 0.000000e+00
  %39 = fadd float %37, %32
  %40 = fcmp ugt float %39, 1.000000e+00
  %41 = or i1 %38, %40
  br i1 %41, label %57, label %42

42:                                               ; preds = %34
  %43 = fsub float 1.000000e+00, %32
  %44 = fsub float %43, %37
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !89
  %47 = getelementptr inbounds float, ptr %2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !89
  %49 = fmul float %32, %48
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %46, float %49)
  %51 = getelementptr inbounds float, ptr %3, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !89
  %53 = tail call float @llvm.fmuladd.f32(float %37, float %52, float %50)
  %54 = getelementptr inbounds float, ptr %0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !89
  %56 = fcmp ugt float %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %34, %42, %22
  br label %58

58:                                               ; preds = %4, %42, %57
  %59 = phi i32 [ 0, %57 ], [ 1, %42 ], [ 0, %4 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !378 {
  %2 = load float, ptr %0, align 4, !tbaa !89
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bspface_init_strand(ptr noundef %0) unnamed_addr #0 !PGOFuncName !379 {
  %2 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !344
  %4 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !346
  %6 = tail call fastcc float @len_v2v2(ptr noundef %3, ptr noundef %5) #24
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 10
  store float %7, ptr %8, align 8, !tbaa !375
  %9 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 13
  tail call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %5) #25
  %10 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 14
  %14 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !347
  br i1 %12, label %17, label %16

16:                                               ; preds = %1
  tail call void @mid_v3_v3v3(ptr noundef nonnull %13, ptr noundef %15, ptr noundef nonnull %11) #25
  br label %18

17:                                               ; preds = %1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %15) #24
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 14
  %20 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 15
  %21 = load <2 x float>, ptr %19, align 8, !tbaa !89
  %22 = load <2 x float>, ptr %9, align 4, !tbaa !89
  %23 = fsub <2 x float> %21, %22
  store <2 x float> %23, ptr %20, align 4, !tbaa !89
  %24 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 14, i64 2
  %25 = load float, ptr %24, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 13, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !89
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 15, i64 2
  store float %28, ptr %29, align 4, !tbaa !89
  %30 = fmul <2 x float> %23, %23
  %31 = extractelement <2 x float> %30, i64 1
  %32 = extractelement <2 x float> %23, i64 0
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %31)
  %34 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 12
  store float %33, ptr %34, align 8, !tbaa !374
  %35 = fcmp une float %33, 0.000000e+00
  br i1 %35, label %36, label %44

36:                                               ; preds = %18
  %37 = load float, ptr %8, align 8, !tbaa !375
  %38 = tail call float @llvm.sqrt.f32(float %33)
  %39 = getelementptr inbounds %struct.BSPFace, ptr %0, i64 0, i32 11
  %40 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %37, i64 0
  %41 = insertelement <2 x float> poison, float %38, i64 0
  %42 = insertelement <2 x float> %41, float %33, i64 1
  %43 = fdiv <2 x float> %40, %42
  store <2 x float> %43, ptr %39, align 4, !tbaa !89
  br label %44

44:                                               ; preds = %36, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !380 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @isb_add_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !381 {
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !192
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @.str.21) #25
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 4, !tbaa !193
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %11(i64 noundef %15, ptr noundef nonnull @.str.22) #25
  %17 = load i32, ptr %6, align 8, !tbaa !192
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %23, %4
  %20 = phi i32 [ %17, %4 ], [ %28, %23 ]
  %21 = load i32, ptr %12, align 4, !tbaa !193
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %31, label %41

23:                                               ; preds = %4, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %4 ]
  %25 = getelementptr inbounds i32, ptr %10, i64 %24
  %26 = trunc i64 %24 to i32
  store i32 %26, ptr %25, align 4, !tbaa !96
  %27 = add nuw nsw i64 %24, 1
  %28 = load i32, ptr %6, align 8, !tbaa !192
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %23, label %19, !llvm.loop !382

31:                                               ; preds = %19, %31
  %32 = phi i64 [ %35, %31 ], [ 0, %19 ]
  %33 = getelementptr inbounds i32, ptr %16, i64 %32
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 4, !tbaa !96
  %35 = add nuw nsw i64 %32, 1
  %36 = load i32, ptr %12, align 4, !tbaa !193
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !383

39:                                               ; preds = %31
  %40 = load i32, ptr %6, align 8, !tbaa !192
  br label %41

41:                                               ; preds = %39, %19
  %42 = phi i32 [ %40, %39 ], [ %20, %19 ]
  tail call void @BLI_array_randomize(ptr noundef %10, i32 noundef 4, i32 noundef %42, i32 noundef 12345) #25
  %43 = load i32, ptr %12, align 4, !tbaa !193
  tail call void @BLI_array_randomize(ptr noundef %16, i32 noundef 4, i32 noundef %43, i32 noundef 54321) #25
  %44 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %45 = tail call i16 @llvm.umax.i16(i16 %44, i16 1)
  %46 = icmp sgt i16 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %41, %102
  %48 = phi i16 [ %103, %102 ], [ %44, %41 ]
  %49 = phi i64 [ %105, %102 ], [ 0, %41 ]
  %50 = phi i32 [ %104, %102 ], [ 0, %41 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = load i32, ptr %12, align 4, !tbaa !193
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 8, !tbaa !192
  br label %62

57:                                               ; preds = %95
  %58 = add nuw nsw i64 %65, 1
  %59 = load i32, ptr %12, align 4, !tbaa !193
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %62, label %100, !llvm.loop !384

62:                                               ; preds = %55, %57
  %63 = phi i32 [ %56, %55 ], [ %96, %57 ]
  %64 = phi i32 [ %56, %55 ], [ %97, %57 ]
  %65 = phi i64 [ 0, %55 ], [ %58, %57 ]
  %66 = phi i32 [ %50, %55 ], [ 0, %57 ]
  %67 = getelementptr inbounds i32, ptr %16, i64 %65
  %68 = load i32, ptr %67, align 4, !tbaa !96
  %69 = icmp sgt i32 %64, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %62, %89
  %71 = phi i32 [ %90, %89 ], [ %63, %62 ]
  %72 = phi i64 [ %92, %89 ], [ 0, %62 ]
  %73 = phi i32 [ %90, %89 ], [ %64, %62 ]
  %74 = phi i32 [ %91, %89 ], [ %66, %62 ]
  %75 = getelementptr inbounds i32, ptr %10, i64 %72
  %76 = load i32, ptr %75, align 4, !tbaa !96
  %77 = mul nsw i32 %73, %68
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ISBSample, ptr %52, i64 %78
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds %struct.ISBSample, ptr %79, i64 %80, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !227
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.ISBSample, ptr %79, i64 %80
  %86 = tail call fastcc i32 @isb_bsp_insert(ptr noundef %1, ptr noundef %2, ptr noundef %85) #24, !range !149
  %87 = or i32 %86, %74
  %88 = load i32, ptr %6, align 8, !tbaa !192
  br label %89

89:                                               ; preds = %84, %70
  %90 = phi i32 [ %88, %84 ], [ %71, %70 ]
  %91 = phi i32 [ %87, %84 ], [ %74, %70 ]
  %92 = add nuw nsw i64 %72, 1
  %93 = sext i32 %90 to i64
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %70, label %95, !llvm.loop !385

95:                                               ; preds = %89, %62
  %96 = phi i32 [ %63, %62 ], [ %90, %89 ]
  %97 = phi i32 [ %64, %62 ], [ %90, %89 ]
  %98 = phi i32 [ %66, %62 ], [ %91, %89 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %57, label %100

100:                                              ; preds = %95, %57
  %101 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  br label %102

102:                                              ; preds = %100, %47
  %103 = phi i16 [ %48, %47 ], [ %101, %100 ]
  %104 = phi i32 [ %50, %47 ], [ %98, %100 ]
  %105 = add nuw nsw i64 %49, 1
  %106 = tail call i16 @llvm.umax.i16(i16 %103, i16 1)
  %107 = sext i16 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %47, label %109, !llvm.loop !386

109:                                              ; preds = %102, %41
  %110 = phi i32 [ 0, %41 ], [ %104, %102 ]
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %111(ptr noundef %10) #25
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %112(ptr noundef %16) #25
  ret i32 %110
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize }

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
!34 = !{!35, !36, i64 232}
!35 = !{!"LampRen", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !40, i64 40, !41, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !41, i64 84, !39, i64 88, !39, i64 92, !37, i64 96, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !40, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !39, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !39, i64 284, !37, i64 288, !39, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !39, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !41, i64 664, !41, i64 668}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !40, i64 166}
!43 = !{!35, !40, i64 164}
!44 = !{!45, !41, i64 248}
!45 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !37, i64 236, !41, i64 248, !41, i64 252, !46, i64 256, !37, i64 272}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!35, !39, i64 88}
!48 = !{!45, !39, i64 216}
!49 = !{!45, !39, i64 224}
!50 = !{!45, !39, i64 220}
!51 = !{!35, !40, i64 160}
!52 = !{!45, !40, i64 4}
!53 = !{!45, !40, i64 0}
!54 = !{!45, !36, i64 200}
!55 = !{!35, !40, i64 162}
!56 = !{!"shadbuf.c:shadowbuf_autoclip"}
!57 = !{!35, !41, i64 44}
!58 = !{!35, !41, i64 84}
!59 = !{!36, !36, i64 0}
!60 = !{!61, !41, i64 80}
!61 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{!64, !63}
!65 = !{!66, !36, i64 16}
!66 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!67 = !{!66, !40, i64 216}
!68 = !{!61, !41, i64 84}
!69 = !{!61, !36, i64 120}
!70 = !{!71, !36, i64 0}
!71 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!72 = !{!73, !36, i64 48}
!73 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!74 = !{!75, !41, i64 404}
!75 = !{!"Material", !76, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !77, i64 224, !78, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !39, i64 364, !39, i64 368, !40, i64 372, !40, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !37, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !39, i64 556, !39, i64 560, !37, i64 564, !39, i64 580, !39, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !39, i64 616, !39, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !46, i64 928}
!76 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!77 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!78 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!79 = !{!75, !41, i64 396}
!80 = !{!66, !41, i64 48}
!81 = !{!73, !36, i64 0}
!82 = !{!83, !41, i64 40}
!83 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !41, i64 32, !39, i64 36, !41, i64 40}
!84 = !{!37, !37, i64 0}
!85 = !{!73, !36, i64 8}
!86 = !{!73, !36, i64 16}
!87 = !{!73, !36, i64 24}
!88 = distinct !{!88, !63}
!89 = !{!39, !39, i64 0}
!90 = distinct !{!90, !63}
!91 = !{!35, !39, i64 176}
!92 = !{!35, !39, i64 172}
!93 = !{!45, !41, i64 252}
!94 = !{!"shadbuf.c:saacos"}
!95 = !{!"shadbuf.c:give_jitter_tab"}
!96 = !{!41, !41, i64 0}
!97 = distinct !{!97, !63}
!98 = !{!"shadbuf.c:make_jitter_weight_tab"}
!99 = !{!45, !36, i64 208}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !63}
!102 = !{!"shadbuf.c:makedeepshadowbuf"}
!103 = !{!104, !41, i64 5732}
!104 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !46, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !105, i64 156, !106, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !107, i64 1104, !114, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !46, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !39, i64 5680, !36, i64 5688, !46, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !46, i64 5752, !46, i64 5768, !46, i64 5784, !36, i64 5800, !46, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !46, i64 5872, !36, i64 5888, !46, i64 5896, !46, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !115, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!105 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!106 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!107 = !{!"RenderData", !108, i64 0, !36, i64 248, !36, i64 256, !111, i64 264, !112, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !106, i64 544, !106, i64 560, !105, i64 576, !46, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !36, i64 2568, !41, i64 2576, !39, i64 2580, !37, i64 2584, !113, i64 2616, !41, i64 3976, !41, i64 3980}
!108 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !109, i64 24, !110, i64 184}
!109 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!110 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!111 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!112 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!113 = !{!"BakeData", !108, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!114 = !{!"World", !76, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!115 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !116, i64 48, !116, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!116 = !{!"double", !37, i64 0}
!117 = !{!"shadbuf.c:makeflatshadowbuf"}
!118 = distinct !{!118, !63}
!119 = !{!104, !36, i64 6048}
!120 = !{!104, !36, i64 6056}
!121 = !{!122, !37, i64 2090}
!122 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !46, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!123 = distinct !{!123, !63}
!124 = !{!104, !40, i64 1538}
!125 = distinct !{!125, !63}
!126 = !{!35, !41, i64 664}
!127 = !{!35, !41, i64 668}
!128 = distinct !{!128, !63}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !63}
!131 = distinct !{!131, !63}
!132 = !{!"shadbuf.c:min_ii"}
!133 = !{!"shadbuf.c:thread_break"}
!134 = !{!"shadbuf.c:do_shadow_thread"}
!135 = distinct !{!135, !63}
!136 = distinct !{!136, !63}
!137 = !{!138, !36, i64 32}
!138 = !{!"ShadSampleBuf", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!139 = distinct !{!139, !63}
!140 = !{!138, !36, i64 16}
!141 = !{!138, !36, i64 24}
!142 = !{!143, !143, i64 0}
!143 = !{!"long", !37, i64 0}
!144 = distinct !{!144, !63}
!145 = distinct !{!145, !63}
!146 = !{!45, !36, i64 256}
!147 = distinct !{!147, !63}
!148 = !{!45, !39, i64 228}
!149 = !{i32 0, i32 2}
!150 = distinct !{!150, !63}
!151 = distinct !{!151, !63}
!152 = !{!"shadbuf.c:shadowbuf_project_co"}
!153 = !{!"shadbuf.c:readshadowbuf"}
!154 = !{!"shadbuf.c:add_v3_v3v3"}
!155 = !{!"shadbuf.c:firstreadshadbuf"}
!156 = !{!35, !39, i64 300}
!157 = !{!45, !40, i64 2}
!158 = distinct !{!158, !63}
!159 = distinct !{!159, !63}
!160 = !{!"shadbuf.c:min_ff"}
!161 = !{!"shadbuf.c:readshadowbuf_halo"}
!162 = !{!163, !41, i64 1408}
!163 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !39, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !39, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !39, i64 1256, !39, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !39, i64 1336, !39, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !39, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!164 = !{!163, !40, i64 1434}
!165 = !{!166, !36, i64 0}
!166 = !{!"ISBData", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!167 = !{!166, !36, i64 8}
!168 = !{!163, !41, i64 1380}
!169 = !{!166, !41, i64 24}
!170 = !{!166, !41, i64 32}
!171 = !{!163, !41, i64 1384}
!172 = !{!166, !41, i64 28}
!173 = !{!166, !41, i64 36}
!174 = !{!40, !40, i64 0}
!175 = !{!163, !36, i64 24}
!176 = !{!104, !36, i64 5800}
!177 = !{!163, !41, i64 40}
!178 = !{!179, !41, i64 12}
!179 = !{!"ISBShadfacA", !36, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!180 = !{!179, !41, i64 8}
!181 = !{!179, !39, i64 16}
!182 = distinct !{!182, !63}
!183 = !{!184, !36, i64 24}
!184 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!185 = !{!35, !40, i64 40}
!186 = !{!187, !40, i64 146}
!187 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !46, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !105, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!188 = distinct !{!188, !63}
!189 = !{!"shadbuf.c:isb_make_buffer_transp"}
!190 = !{!187, !41, i64 112}
!191 = !{!187, !41, i64 120}
!192 = !{!187, !41, i64 128}
!193 = !{!187, !41, i64 132}
!194 = distinct !{!194, !63}
!195 = !{!196, !39, i64 24}
!196 = !{!"ISBBranch", !36, i64 0, !36, i64 8, !37, i64 16, !197, i64 24, !40, i64 48, !40, i64 50, !40, i64 52, !40, i64 54, !36, i64 56}
!197 = !{!"Boxf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!198 = !{!196, !39, i64 32}
!199 = !{!104, !40, i64 98}
!200 = !{!201, !41, i64 24}
!201 = !{!"ISBSampleA", !37, i64 0, !36, i64 16, !41, i64 24, !41, i64 28, !36, i64 32}
!202 = !{!201, !41, i64 28}
!203 = !{!201, !36, i64 16}
!204 = distinct !{!204, !63}
!205 = distinct !{!205, !63}
!206 = !{!207, !36, i64 64}
!207 = !{!"APixstr", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !36, i64 64}
!208 = distinct !{!208, !63}
!209 = distinct !{!209, !63}
!210 = distinct !{!210, !63}
!211 = !{!166, !36, i64 16}
!212 = distinct !{!212, !63}
!213 = distinct !{!213, !63}
!214 = distinct !{!214, !63}
!215 = distinct !{!215, !63}
!216 = !{!"shadbuf.c:isb_make_buffer"}
!217 = distinct !{!217, !63}
!218 = !{!187, !36, i64 72}
!219 = !{!220, !40, i64 24}
!220 = !{!"PixStr", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26}
!221 = !{!220, !36, i64 0}
!222 = distinct !{!222, !63}
!223 = !{!220, !41, i64 12}
!224 = !{!220, !41, i64 8}
!225 = !{!226, !41, i64 24}
!226 = !{!"ISBSample", !37, i64 0, !36, i64 16, !41, i64 24, !41, i64 28}
!227 = !{!226, !41, i64 28}
!228 = !{!220, !40, i64 26}
!229 = !{!226, !36, i64 16}
!230 = distinct !{!230, !63}
!231 = !{!187, !36, i64 48}
!232 = !{!187, !36, i64 40}
!233 = distinct !{!233, !63}
!234 = distinct !{!234, !63}
!235 = distinct !{!235, !63}
!236 = distinct !{!236, !63}
!237 = distinct !{!237, !63}
!238 = distinct !{!238, !63}
!239 = !{!"shadbuf.c:max_ii"}
!240 = !{!"shadbuf.c:copy_v3_v3"}
!241 = !{!"shadbuf.c:normalize_v3"}
!242 = !{!"shadbuf.c:normalize_v3_v3"}
!243 = !{!"shadbuf.c:dot_v3v3"}
!244 = !{!"shadbuf.c:mul_v3_v3fl"}
!245 = !{!"shadbuf.c:zero_v3"}
!246 = !{!"shadbuf.c:compress_deepshadowbuf"}
!247 = !{!138, !36, i64 40}
!248 = distinct !{!248, !63}
!249 = distinct !{!249, !63}
!250 = distinct !{!250, !63}
!251 = distinct !{!251, !63}
!252 = distinct !{!252, !63}
!253 = !{!254, !36, i64 104}
!254 = !{!"APixstrand", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !37, i64 72, !37, i64 88, !36, i64 104}
!255 = distinct !{!255, !63}
!256 = distinct !{!256, !63}
!257 = distinct !{!257, !63}
!258 = !{!259, !41, i64 0}
!259 = !{!"DeepSample", !41, i64 0, !39, i64 4}
!260 = !{!259, !39, i64 4}
!261 = distinct !{!261, !63}
!262 = distinct !{!262, !63}
!263 = distinct !{!263, !63}
!264 = distinct !{!264, !63}
!265 = distinct !{!265, !63}
!266 = distinct !{!266, !63}
!267 = distinct !{!267, !63}
!268 = distinct !{!268, !63}
!269 = distinct !{!269, !63}
!270 = distinct !{!270, !63}
!271 = distinct !{!271, !63}
!272 = !{!45, !39, i64 232}
!273 = distinct !{!273, !63}
!274 = !{!"shadbuf.c:deep_alpha"}
!275 = !{!276, !36, i64 8}
!276 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!277 = !{!75, !39, i64 532}
!278 = !{!"shadbuf.c:verg_deepsample"}
!279 = !{!"shadbuf.c:compress_deepsamples"}
!280 = distinct !{!280, !63}
!281 = distinct !{!281, !63}
!282 = !{!"shadbuf.c:compress_shadowbuf"}
!283 = distinct !{!283, !63}
!284 = distinct !{!284, !63}
!285 = distinct !{!285, !63}
!286 = distinct !{!286, !63}
!287 = distinct !{!287, !63}
!288 = distinct !{!288, !63}
!289 = distinct !{!289, !63}
!290 = !{!"shadbuf.c:copy_to_ztile"}
!291 = distinct !{!291, !63}
!292 = !{!"shadbuf.c:readdeepshadowbuf"}
!293 = !{!"shadbuf.c:readdeepvisibility"}
!294 = distinct !{!294, !63}
!295 = !{!"shadbuf.c:viewpixel_to_lampbuf"}
!296 = !{!104, !41, i64 1624}
!297 = !{!"shadbuf.c:isb_alloc_sample_transp"}
!298 = !{!"shadbuf.c:bound_rectf"}
!299 = !{!106, !39, i64 0}
!300 = !{!106, !39, i64 4}
!301 = !{!106, !39, i64 8}
!302 = !{!106, !39, i64 12}
!303 = !{!"shadbuf.c:isb_bsp_split_init"}
!304 = !{!196, !39, i64 36}
!305 = !{!196, !36, i64 0}
!306 = !{!196, !36, i64 8}
!307 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 4, !89, i64 20, i64 4, !89}
!308 = !{!196, !39, i64 28}
!309 = !{!196, !36, i64 56}
!310 = !{!"shadbuf.c:isb_add_samples_transp"}
!311 = distinct !{!311, !63}
!312 = distinct !{!312, !63}
!313 = distinct !{!313, !63}
!314 = distinct !{!314, !63}
!315 = distinct !{!315, !63}
!316 = distinct !{!316, !63}
!317 = !{!"shadbuf.c:isb_bsp_fillfaces"}
!318 = !{!104, !39, i64 196}
!319 = !{!320, !39, i64 72}
!320 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !39, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !39, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216}
!321 = !{!320, !39, i64 76}
!322 = !{!320, !36, i64 88}
!323 = !{i64 0, i64 4, !96, i64 4, i64 4, !96, i64 8, i64 4, !96, i64 12, i64 4, !96, i64 16, i64 4, !96, i64 20, i64 4, !96, i64 24, i64 8, !59, i64 32, i64 8, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 8, !59, i64 64, i64 8, !59, i64 72, i64 4, !89, i64 76, i64 4, !89, i64 80, i64 4, !89, i64 84, i64 4, !89, i64 88, i64 8, !59, i64 96, i64 8, !59, i64 104, i64 8, !59, i64 112, i64 8, !59, i64 120, i64 8, !59, i64 128, i64 8, !59, i64 136, i64 8, !59, i64 144, i64 8, !59, i64 152, i64 8, !59, i64 160, i64 8, !59, i64 168, i64 4, !96, i64 172, i64 4, !89, i64 176, i64 4, !96, i64 180, i64 4, !96, i64 184, i64 4, !96, i64 188, i64 4, !89, i64 192, i64 8, !59, i64 200, i64 8, !59, i64 208, i64 8, !59, i64 216, i64 8, !59}
!324 = !{!320, !36, i64 208}
!325 = !{!75, !40, i64 128}
!326 = !{!320, !39, i64 172}
!327 = !{i32 0, i32 12}
!328 = !{!73, !37, i64 58}
!329 = !{!73, !37, i64 57}
!330 = distinct !{!330, !63}
!331 = distinct !{!331, !63}
!332 = !{!"shadbuf.c:isb_add_shadfac"}
!333 = !{!179, !36, i64 0}
!334 = !{!"shadbuf.c:isb_bsp_insert"}
!335 = !{!196, !40, i64 48}
!336 = !{!196, !40, i64 50}
!337 = distinct !{!337, !63}
!338 = !{!"shadbuf.c:isb_bsp_split"}
!339 = distinct !{!339, !63}
!340 = distinct !{!340, !63}
!341 = !{!"shadbuf.c:isb_bsp_recalc_box"}
!342 = distinct !{!342, !63}
!343 = !{!"shadbuf.c:isb_bsp_test_face"}
!344 = !{!345, !36, i64 24}
!345 = !{!"BSPFace", !197, i64 0, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !37, i64 84, !37, i64 96, !37, i64 108}
!346 = !{!345, !36, i64 32}
!347 = !{!345, !36, i64 40}
!348 = !{!345, !36, i64 48}
!349 = !{!345, !41, i64 56}
!350 = !{!345, !41, i64 60}
!351 = !{!345, !41, i64 64}
!352 = !{!345, !40, i64 70}
!353 = !{!"shadbuf.c:isb_bsp_test_strand"}
!354 = !{!"shadbuf.c:testclip_minmax"}
!355 = !{!"shadbuf.c:init_box"}
!356 = !{!"shadbuf.c:bound_boxf"}
!357 = !{!197, !39, i64 0}
!358 = !{!197, !39, i64 4}
!359 = !{!197, !39, i64 8}
!360 = !{!197, !39, i64 12}
!361 = !{!197, !39, i64 16}
!362 = !{!197, !39, i64 20}
!363 = !{!"shadbuf.c:isb_bsp_face_inside"}
!364 = !{!345, !39, i64 0}
!365 = !{!345, !39, i64 4}
!366 = !{!345, !39, i64 8}
!367 = !{!345, !39, i64 12}
!368 = !{!196, !40, i64 52}
!369 = !{!196, !39, i64 44}
!370 = !{!345, !39, i64 16}
!371 = !{!345, !40, i64 68}
!372 = distinct !{!372, !63}
!373 = !{!"shadbuf.c:point_behind_strand"}
!374 = !{!345, !39, i64 80}
!375 = !{!345, !39, i64 72}
!376 = !{!345, !39, i64 76}
!377 = !{!"shadbuf.c:point_behind_tria2d"}
!378 = !{!"shadbuf.c:len_v2"}
!379 = !{!"shadbuf.c:bspface_init_strand"}
!380 = !{!"shadbuf.c:len_v2v2"}
!381 = !{!"shadbuf.c:isb_add_samples"}
!382 = distinct !{!382, !63}
!383 = distinct !{!383, !63}
!384 = distinct !{!384, !63}
!385 = distinct !{!385, !63}
!386 = distinct !{!386, !63}
