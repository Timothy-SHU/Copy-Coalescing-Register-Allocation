; ModuleID = 'blender/source/blender/render/intern/source/occlusion.c'
source_filename = "blender/source/blender/render/intern/source/occlusion.c"
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
%struct.OcclusionThread = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.OcclusionTree = type { ptr, ptr, ptr, ptr, ptr, ptr, [1 x ptr], i32, i32, float, float, i32, i32, i32, ptr }
%struct.StrandSurface = type { ptr, ptr, %struct.ObjectRen, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.OccFace = type { i32, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.OcclusionCache = type { ptr, i32, i32, i32, i32, i32 }
%struct.OcclusionCacheSample = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, i32, i32, i32 }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.OcclusionBuildThread = type { ptr, i32, i32, i32, ptr }
%struct.OccNode = type { [3 x float], float, [9 x float], float, float, [3 x float], i32, [8 x %union.anon] }
%union.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@R = external local_unnamed_addr global %struct.Render, align 8
@.str = private unnamed_addr constant [24 x i8] c"Occlusion preprocessing\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"OcclusionCount\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"StrandSurfFaceAO\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"StrandSurfFaceEnv\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"StrandSurfFaceIndirect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"OcclusionCacheSample\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"OcclusionTree\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"occ tree arena\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"OcclusionCache\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"OcclusionFace\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"OcclusionCo\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"OcclusionOcclusion\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"OcclusionRad\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"OccStack\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"OcclusionPassOcc\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"OcclusionBounceRad\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_occ_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.OcclusionThread], align 16
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !34
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  tail call void %10(ptr noundef %12, ptr noundef nonnull %7) #17
  %13 = tail call fastcc ptr @occ_tree_build(ptr noundef %0) #18
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  store ptr %13, ptr %14, align 8, !tbaa !65
  %15 = icmp eq ptr %13, null
  br i1 %15, label %246, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = tail call i32 %18(ptr noundef %20) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %246

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 65
  %25 = load i16, ptr %24, align 4, !tbaa !68
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = zext nneg i16 %25 to i32
  tail call fastcc void @occ_compute_passes(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %28) #18
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.OcclusionTree, ptr %13, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !69
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %35 = load i16, ptr %34, align 2, !tbaa !71
  %36 = and i16 %35, 128
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 61
  %40 = load i16, ptr %39, align 4, !tbaa !72
  %41 = sext i16 %40 to i32
  tail call fastcc void @occ_compute_bounces(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %41) #18
  br label %42

42:                                               ; preds = %38, %33, %29
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %246, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %48 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 2
  %49 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 3
  %50 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 4
  %51 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 7
  %52 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 1
  %53 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 5
  %54 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 0, i32 6
  br label %55

55:                                               ; preds = %46, %243
  %56 = phi ptr [ %44, %46 ], [ %244, %243 ]
  %57 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  %59 = icmp eq ptr %58, null
  br i1 %59, label %243, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = icmp eq ptr %62, null
  br i1 %63, label %243, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !77
  %67 = icmp eq ptr %66, null
  br i1 %67, label %243, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !78
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = call ptr %69(i64 noundef %73, ptr noundef nonnull @.str.1) #17
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 11
  %77 = load i32, ptr %76, align 4, !tbaa !79
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, 12
  %80 = call ptr %75(i64 noundef %79, ptr noundef nonnull @.str.2) #17
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %82 = load i32, ptr %76, align 4, !tbaa !79
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, 12
  %85 = call ptr %81(i64 noundef %84, ptr noundef nonnull @.str.3) #17
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %87 = load i32, ptr %76, align 4, !tbaa !79
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, 12
  %90 = call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.4) #17
  %91 = load i32, ptr %76, align 4, !tbaa !79
  %92 = icmp sgt i32 %91, 10000
  br i1 %92, label %93, label %97

93:                                               ; preds = %68
  %94 = load i16, ptr %47, align 2, !tbaa !80
  %95 = sext i16 %94 to i32
  %96 = icmp sgt i16 %94, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %68, %93
  %98 = phi i32 [ %95, %93 ], [ 1, %68 ]
  %99 = sdiv i32 %91, %98
  store ptr %0, ptr %2, align 16, !tbaa !81
  store ptr %80, ptr %48, align 16, !tbaa !83
  store ptr %85, ptr %49, align 8, !tbaa !84
  store ptr %90, ptr %50, align 16, !tbaa !85
  store ptr %56, ptr %52, align 8, !tbaa !86
  %100 = add nsw i32 %98, -1
  %101 = mul nsw i32 %100, %99
  store i32 %100, ptr %51, align 16, !tbaa !87
  store i32 %101, ptr %53, align 8, !tbaa !88
  store i32 %91, ptr %54, align 4, !tbaa !89
  %102 = icmp eq i32 %98, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = call ptr @exec_strandsurface_sample(ptr noundef nonnull %2) #18
  br label %114

105:                                              ; preds = %93
  call void @BLI_init_threads(ptr noundef nonnull %3, ptr noundef nonnull @exec_strandsurface_sample, i32 noundef %95) #17
  br label %113

106:                                              ; preds = %97
  call void @BLI_init_threads(ptr noundef nonnull %3, ptr noundef nonnull @exec_strandsurface_sample, i32 noundef %98) #17
  %107 = zext nneg i32 %98 to i64
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ 0, %106 ], [ %111, %108 ]
  %110 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %2, i64 0, i64 %109
  call void @BLI_insert_thread(ptr noundef nonnull %3, ptr noundef nonnull %110) #17
  %111 = add nuw nsw i64 %109, 1
  %112 = icmp eq i64 %111, %107
  br i1 %112, label %113, label %108, !llvm.loop !90

113:                                              ; preds = %108, %105
  call void @BLI_end_threads(ptr noundef nonnull %3) #17
  br label %114

114:                                              ; preds = %113, %103
  %115 = load i32, ptr %76, align 4, !tbaa !79
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 6
  %119 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 7
  br label %126

120:                                              ; preds = %206, %114
  %121 = load i32, ptr %70, align 8, !tbaa !78
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %238

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 6
  %125 = getelementptr inbounds %struct.StrandSurface, ptr %56, i64 0, i32 7
  br label %211

126:                                              ; preds = %117, %206
  %127 = phi i64 [ 0, %117 ], [ %207, %206 ]
  %128 = load ptr, ptr %57, align 8, !tbaa !73
  %129 = getelementptr inbounds [4 x i32], ptr %128, i64 %127
  %130 = getelementptr inbounds [3 x float], ptr %80, i64 %127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %130) #18
  %131 = getelementptr inbounds [3 x float], ptr %85, i64 %127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %131) #18
  %132 = getelementptr inbounds [3 x float], ptr %90, i64 %127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %132) #18
  %133 = load ptr, ptr %65, align 8, !tbaa !77
  %134 = load i32, ptr %129, align 4, !tbaa !40
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [3 x float], ptr %133, i64 %135
  call fastcc void @add_v3_v3(ptr noundef %136, ptr noundef nonnull %4) #18
  %137 = load ptr, ptr %118, align 8, !tbaa !92
  %138 = load i32, ptr %129, align 4, !tbaa !40
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x float], ptr %137, i64 %139
  call fastcc void @add_v3_v3(ptr noundef %140, ptr noundef nonnull %5) #18
  %141 = load ptr, ptr %119, align 8, !tbaa !93
  %142 = load i32, ptr %129, align 4, !tbaa !40
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x float], ptr %141, i64 %143
  call fastcc void @add_v3_v3(ptr noundef %144, ptr noundef nonnull %6) #18
  %145 = load i32, ptr %129, align 4, !tbaa !40
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %74, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !40
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %147, align 4, !tbaa !40
  %150 = load ptr, ptr %65, align 8, !tbaa !77
  %151 = getelementptr inbounds i32, ptr %129, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !40
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x float], ptr %150, i64 %153
  call fastcc void @add_v3_v3(ptr noundef %154, ptr noundef nonnull %4) #18
  %155 = load ptr, ptr %118, align 8, !tbaa !92
  %156 = load i32, ptr %151, align 4, !tbaa !40
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [3 x float], ptr %155, i64 %157
  call fastcc void @add_v3_v3(ptr noundef %158, ptr noundef nonnull %5) #18
  %159 = load ptr, ptr %119, align 8, !tbaa !93
  %160 = load i32, ptr %151, align 4, !tbaa !40
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x float], ptr %159, i64 %161
  call fastcc void @add_v3_v3(ptr noundef %162, ptr noundef nonnull %6) #18
  %163 = load i32, ptr %151, align 4, !tbaa !40
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %74, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !40
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %165, align 4, !tbaa !40
  %168 = load ptr, ptr %65, align 8, !tbaa !77
  %169 = getelementptr inbounds i32, ptr %129, i64 2
  %170 = load i32, ptr %169, align 4, !tbaa !40
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x float], ptr %168, i64 %171
  call fastcc void @add_v3_v3(ptr noundef %172, ptr noundef nonnull %4) #18
  %173 = load ptr, ptr %118, align 8, !tbaa !92
  %174 = load i32, ptr %169, align 4, !tbaa !40
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x float], ptr %173, i64 %175
  call fastcc void @add_v3_v3(ptr noundef %176, ptr noundef nonnull %5) #18
  %177 = load ptr, ptr %119, align 8, !tbaa !93
  %178 = load i32, ptr %169, align 4, !tbaa !40
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x float], ptr %177, i64 %179
  call fastcc void @add_v3_v3(ptr noundef %180, ptr noundef nonnull %6) #18
  %181 = load i32, ptr %169, align 4, !tbaa !40
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, ptr %74, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !40
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %183, align 4, !tbaa !40
  %186 = getelementptr inbounds i32, ptr %129, i64 3
  %187 = load i32, ptr %186, align 4, !tbaa !40
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %206, label %189

189:                                              ; preds = %126
  %190 = load ptr, ptr %65, align 8, !tbaa !77
  %191 = sext i32 %187 to i64
  %192 = getelementptr inbounds [3 x float], ptr %190, i64 %191
  call fastcc void @add_v3_v3(ptr noundef nonnull %192, ptr noundef nonnull %4) #18
  %193 = load ptr, ptr %118, align 8, !tbaa !92
  %194 = load i32, ptr %186, align 4, !tbaa !40
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x float], ptr %193, i64 %195
  call fastcc void @add_v3_v3(ptr noundef %196, ptr noundef nonnull %5) #18
  %197 = load ptr, ptr %119, align 8, !tbaa !93
  %198 = load i32, ptr %186, align 4, !tbaa !40
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x float], ptr %197, i64 %199
  call fastcc void @add_v3_v3(ptr noundef %200, ptr noundef nonnull %6) #18
  %201 = load i32, ptr %186, align 4, !tbaa !40
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %74, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !40
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %203, align 4, !tbaa !40
  br label %206

206:                                              ; preds = %126, %189
  %207 = add nuw nsw i64 %127, 1
  %208 = load i32, ptr %76, align 4, !tbaa !79
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %126, label %120, !llvm.loop !94

211:                                              ; preds = %123, %233
  %212 = phi i32 [ %121, %123 ], [ %234, %233 ]
  %213 = phi i64 [ 0, %123 ], [ %235, %233 ]
  %214 = getelementptr inbounds i32, ptr %74, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !40
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %211
  %218 = load ptr, ptr %65, align 8, !tbaa !77
  %219 = getelementptr inbounds [3 x float], ptr %218, i64 %213
  %220 = sitofp i32 %215 to float
  %221 = fdiv float 1.000000e+00, %220
  call fastcc void @mul_v3_fl(ptr noundef %219, float noundef %221) #18
  %222 = load ptr, ptr %124, align 8, !tbaa !92
  %223 = getelementptr inbounds [3 x float], ptr %222, i64 %213
  %224 = load i32, ptr %214, align 4, !tbaa !40
  %225 = sitofp i32 %224 to float
  %226 = fdiv float 1.000000e+00, %225
  call fastcc void @mul_v3_fl(ptr noundef %223, float noundef %226) #18
  %227 = load ptr, ptr %125, align 8, !tbaa !93
  %228 = getelementptr inbounds [3 x float], ptr %227, i64 %213
  %229 = load i32, ptr %214, align 4, !tbaa !40
  %230 = sitofp i32 %229 to float
  %231 = fdiv float 1.000000e+00, %230
  call fastcc void @mul_v3_fl(ptr noundef %228, float noundef %231) #18
  %232 = load i32, ptr %70, align 8, !tbaa !78
  br label %233

233:                                              ; preds = %211, %217
  %234 = phi i32 [ %212, %211 ], [ %232, %217 ]
  %235 = add nuw nsw i64 %213, 1
  %236 = sext i32 %234 to i64
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %211, label %238, !llvm.loop !95

238:                                              ; preds = %233, %120
  %239 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %239(ptr noundef %74) #17
  %240 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %240(ptr noundef %80) #17
  %241 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %241(ptr noundef %85) #17
  %242 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %242(ptr noundef %90) #17
  br label %243

243:                                              ; preds = %55, %60, %64, %238
  %244 = load ptr, ptr %56, align 8, !tbaa !35
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %55, !llvm.loop !96

246:                                              ; preds = %243, %42, %16, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @occ_tree_build(ptr noundef %0) unnamed_addr #0 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %227, label %10

5:                                                ; preds = %49, %10
  %6 = phi ptr [ %13, %10 ], [ %36, %49 ]
  %7 = phi i32 [ %12, %10 ], [ %50, %49 ]
  %8 = load ptr, ptr %11, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10, !llvm.loop !98

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %12 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %13 = phi ptr [ %6, %5 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !101
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %5

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.ObjectRen, ptr %15, i64 0, i32 19
  br label %21

21:                                               ; preds = %19, %49
  %22 = phi i32 [ %12, %19 ], [ %50, %49 ]
  %23 = phi i32 [ 0, %19 ], [ %51, %49 ]
  %24 = phi ptr [ %13, %19 ], [ %36, %49 ]
  %25 = and i32 %23, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load ptr, ptr %20, align 8, !tbaa !102
  %29 = lshr exact i32 %23, 8
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.VlakTableNode, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  br label %35

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.VlakRen, ptr %24, i64 1
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.VlakRen, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !105
  %39 = getelementptr inbounds %struct.Material, ptr %38, i64 0, i32 50
  %40 = load i16, ptr %39, align 2, !tbaa !107
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.Material, ptr %38, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !111
  %46 = icmp eq i16 %45, 0
  %47 = zext i1 %46 to i32
  %48 = add nsw i32 %22, %47
  br label %49

49:                                               ; preds = %43, %35
  %50 = phi i32 [ %22, %35 ], [ %48, %43 ]
  %51 = add nuw nsw i32 %23, 1
  %52 = icmp eq i32 %51, %17
  br i1 %52, label %5, label %21, !llvm.loop !112

53:                                               ; preds = %5
  %54 = icmp eq i32 %7, 0
  br i1 %54, label %227, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %57 = tail call ptr %56(i64 noundef 96, ptr noundef nonnull @.str.6) #17
  %58 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 8
  store i32 %7, ptr %58, align 4, !tbaa !113
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 56
  %61 = load float, ptr %60, align 8, !tbaa !114
  %62 = tail call float @get_render_aosss_error(ptr noundef nonnull %59, float noundef %61) #17
  %63 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 9
  store float %62, ptr %63, align 8, !tbaa !115
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 50
  %65 = load i16, ptr %64, align 8, !tbaa !116
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 47
  %70 = load float, ptr %69, align 4, !tbaa !117
  br label %71

71:                                               ; preds = %55, %68
  %72 = phi float [ %70, %68 ], [ 0.000000e+00, %55 ]
  %73 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 10
  store float %72, ptr %73, align 4, !tbaa !118
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 58
  %75 = load float, ptr %74, align 8, !tbaa !119
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 61
  %79 = load i16, ptr %78, align 4, !tbaa !72
  %80 = icmp sgt i16 %79, 0
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %77, %71
  %83 = phi i32 [ 0, %71 ], [ %81, %77 ]
  %84 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 13
  store i32 %83, ptr %84, align 8, !tbaa !69
  %85 = tail call ptr @BLI_memarena_new(i64 noundef 4718592, ptr noundef nonnull @.str.7) #17
  store ptr %85, ptr %57, align 8, !tbaa !120
  tail call void @BLI_memarena_use_calloc(ptr noundef %85) #17
  %86 = load i16, ptr %64, align 8, !tbaa !116
  %87 = and i16 %86, 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %91 = tail call ptr %90(i64 noundef 32, ptr noundef nonnull @.str.8) #17
  %92 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 14
  store ptr %91, ptr %92, align 8, !tbaa !121
  br label %93

93:                                               ; preds = %89, %82
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %95 = sext i32 %7 to i64
  %96 = shl nsw i64 %95, 3
  %97 = tail call ptr %94(i64 noundef %96, ptr noundef nonnull @.str.9) #17
  %98 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !122
  %99 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %100 = mul nsw i64 %95, 12
  %101 = tail call ptr %99(i64 noundef %100, ptr noundef nonnull @.str.10) #17
  %102 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !123
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %104 = shl nsw i64 %95, 2
  %105 = tail call ptr %103(i64 noundef %104, ptr noundef nonnull @.str.11) #17
  %106 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !124
  %107 = load i32, ptr %84, align 8, !tbaa !69
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %93
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %111 = tail call ptr %110(i64 noundef %100, ptr noundef nonnull @.str.12) #17
  %112 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 4
  store ptr %111, ptr %112, align 8, !tbaa !125
  br label %113

113:                                              ; preds = %109, %93
  %114 = load ptr, ptr %2, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %177, label %116

116:                                              ; preds = %113, %171
  %117 = phi ptr [ %175, %171 ], [ %114, %113 ]
  %118 = phi i32 [ %174, %171 ], [ 0, %113 ]
  %119 = phi i32 [ %173, %171 ], [ 0, %113 ]
  %120 = phi ptr [ %172, %171 ], [ %6, %113 ]
  %121 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %117, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !99
  %123 = getelementptr inbounds %struct.ObjectRen, ptr %122, i64 0, i32 11
  %124 = load i32, ptr %123, align 4, !tbaa !101
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %171

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.ObjectRen, ptr %122, i64 0, i32 19
  br label %128

128:                                              ; preds = %126, %166
  %129 = phi i32 [ %124, %126 ], [ %167, %166 ]
  %130 = phi i32 [ %119, %126 ], [ %168, %166 ]
  %131 = phi i32 [ 0, %126 ], [ %169, %166 ]
  %132 = phi ptr [ %120, %126 ], [ %144, %166 ]
  %133 = and i32 %131, 255
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load ptr, ptr %127, align 8, !tbaa !102
  %137 = lshr exact i32 %131, 8
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds %struct.VlakTableNode, ptr %136, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !103
  br label %143

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.VlakRen, ptr %132, i64 1
  br label %143

143:                                              ; preds = %141, %135
  %144 = phi ptr [ %140, %135 ], [ %142, %141 ]
  %145 = getelementptr inbounds %struct.VlakRen, ptr %144, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !105
  %147 = getelementptr inbounds %struct.Material, ptr %146, i64 0, i32 50
  %148 = load i16, ptr %147, align 2, !tbaa !107
  %149 = and i16 %148, 4
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.Material, ptr %146, i64 0, i32 2
  %153 = load i16, ptr %152, align 8, !tbaa !111
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load ptr, ptr %98, align 8, !tbaa !122
  %157 = sext i32 %130 to i64
  %158 = getelementptr inbounds %struct.OccFace, ptr %156, i64 %157
  store i32 %118, ptr %158, align 4, !tbaa !126
  %159 = getelementptr inbounds %struct.OccFace, ptr %156, i64 %157, i32 1
  store i32 %131, ptr %159, align 4, !tbaa !128
  %160 = load ptr, ptr %106, align 8, !tbaa !124
  %161 = getelementptr inbounds float, ptr %160, i64 %157
  store float 1.000000e+00, ptr %161, align 4, !tbaa !44
  %162 = load ptr, ptr %102, align 8, !tbaa !123
  %163 = getelementptr inbounds [3 x float], ptr %162, i64 %157
  tail call fastcc void @occ_face(ptr noundef nonnull %158, ptr noundef %163, ptr noundef null, ptr noundef null) #18
  %164 = add nsw i32 %130, 1
  %165 = load i32, ptr %123, align 4, !tbaa !101
  br label %166

166:                                              ; preds = %143, %151, %155
  %167 = phi i32 [ %165, %155 ], [ %129, %151 ], [ %129, %143 ]
  %168 = phi i32 [ %164, %155 ], [ %130, %151 ], [ %130, %143 ]
  %169 = add nuw nsw i32 %131, 1
  %170 = icmp slt i32 %169, %167
  br i1 %170, label %128, label %171, !llvm.loop !129

171:                                              ; preds = %166, %116
  %172 = phi ptr [ %120, %116 ], [ %144, %166 ]
  %173 = phi i32 [ %119, %116 ], [ %168, %166 ]
  %174 = add nuw nsw i32 %118, 1
  %175 = load ptr, ptr %117, align 8, !tbaa !35
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %116, !llvm.loop !130

177:                                              ; preds = %171, %113
  %178 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %179 = load i16, ptr %178, align 2, !tbaa !80
  %180 = icmp sgt i16 %179, 1
  %181 = icmp sgt i32 %7, 10000
  %182 = and i1 %180, %181
  %183 = select i1 %182, i32 8, i32 1
  %184 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 12
  store i32 %183, ptr %184, align 4, !tbaa !131
  %185 = zext i1 %182 to i32
  %186 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 11
  store i32 %185, ptr %186, align 8, !tbaa !132
  %187 = load ptr, ptr %57, align 8, !tbaa !120
  %188 = tail call ptr @BLI_memarena_alloc(ptr noundef %187, i64 noundef 144) #17
  %189 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 5
  store ptr %188, ptr %189, align 8, !tbaa !133
  %190 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 7
  store i32 1, ptr %190, align 8, !tbaa !134
  tail call fastcc void @occ_build_recursive(ptr noundef nonnull %57, ptr noundef %188, i32 noundef 0, i32 noundef %7, i32 noundef 1) #18
  %191 = load i32, ptr %84, align 8, !tbaa !69
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %208, label %193

193:                                              ; preds = %177
  %194 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %195 = load ptr, ptr %194, align 8, !tbaa !66
  %196 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %197 = load ptr, ptr %196, align 8, !tbaa !67
  %198 = tail call i32 %195(ptr noundef %197) #17
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  tail call fastcc void @occ_build_shade(ptr noundef nonnull %0, ptr noundef nonnull %57) #18
  br label %201

201:                                              ; preds = %200, %193
  %202 = load ptr, ptr %194, align 8, !tbaa !66
  %203 = load ptr, ptr %196, align 8, !tbaa !67
  %204 = tail call i32 %202(ptr noundef %203) #17
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load ptr, ptr %189, align 8, !tbaa !133
  tail call fastcc void @occ_sum_occlusion(ptr noundef nonnull %57, ptr noundef %207) #18
  br label %208

208:                                              ; preds = %201, %206, %177
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %210 = load ptr, ptr %102, align 8, !tbaa !123
  tail call void %209(ptr noundef %210) #17
  store ptr null, ptr %102, align 8, !tbaa !123
  %211 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %212 = load ptr, ptr %211, align 8, !tbaa !66
  %213 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %214 = load ptr, ptr %213, align 8, !tbaa !67
  %215 = tail call i32 %212(ptr noundef %214) #17
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %208
  %218 = load ptr, ptr %189, align 8, !tbaa !133
  tail call fastcc void @occ_build_sh_normalize(ptr noundef %218) #18
  br label %219

219:                                              ; preds = %217, %208
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %221 = load i32, ptr %190, align 8, !tbaa !134
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = mul nsw i64 %223, 1152
  %225 = tail call ptr %220(i64 noundef %224, ptr noundef nonnull @.str.13) #17
  %226 = getelementptr inbounds %struct.OcclusionTree, ptr %57, i64 0, i32 6
  store ptr %225, ptr %226, align 8, !tbaa !35
  br label %227

227:                                              ; preds = %1, %53, %219
  %228 = phi ptr [ %57, %219 ], [ null, %53 ], [ null, %1 ]
  ret ptr %228
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_compute_passes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !135 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !113
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %6(i64 noundef %10, ptr noundef nonnull @.str.14) #17
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %17 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 5
  br label %19

19:                                               ; preds = %13, %61
  %20 = phi i32 [ 0, %13 ], [ %63, %61 ]
  %21 = load i32, ptr %7, align 4, !tbaa !113
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %28, label %39

23:                                               ; preds = %28
  %24 = add nuw nsw i64 %29, 1
  %25 = load i32, ptr %7, align 4, !tbaa !113
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %28, label %39, !llvm.loop !136

28:                                               ; preds = %19, %23
  %29 = phi i64 [ %24, %23 ], [ 0, %19 ]
  %30 = load ptr, ptr %14, align 8, !tbaa !122
  %31 = getelementptr inbounds %struct.OccFace, ptr %30, i64 %29
  call fastcc void @occ_face(ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #18
  call fastcc void @negate_v3(ptr noundef nonnull %5) #18
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 0x3E45798EE0000000) #18
  %32 = load ptr, ptr %14, align 8, !tbaa !122
  %33 = getelementptr inbounds %struct.OccFace, ptr %32, i64 %29
  %34 = getelementptr inbounds float, ptr %11, i64 %29
  call fastcc void @occ_lookup(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %33, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %34, ptr noundef null, ptr noundef null) #18
  %35 = load ptr, ptr %15, align 8, !tbaa !66
  %36 = load ptr, ptr %16, align 8, !tbaa !67
  %37 = call i32 %35(ptr noundef %36) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %23, %28, %19
  %40 = load ptr, ptr %15, align 8, !tbaa !66
  %41 = load ptr, ptr %16, align 8, !tbaa !67
  %42 = call i32 %40(ptr noundef %41) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32, ptr %7, align 4, !tbaa !113
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load ptr, ptr %17, align 8, !tbaa !124
  %49 = zext nneg i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ 0, %47 ], [ %59, %50 ]
  %52 = getelementptr inbounds float, ptr %11, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !44
  %54 = getelementptr inbounds float, ptr %48, i64 %51
  %55 = load float, ptr %54, align 4, !tbaa !44
  %56 = fsub float %55, %53
  %57 = fcmp olt float %56, 0.000000e+00
  %58 = select i1 %57, float 0.000000e+00, float %56
  store float %58, ptr %54, align 4, !tbaa !44
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %61, label %50, !llvm.loop !137

61:                                               ; preds = %50, %44
  %62 = load ptr, ptr %18, align 8, !tbaa !133
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %1, ptr noundef %62) #18
  %63 = add nuw nsw i32 %20, 1
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %65, label %19, !llvm.loop !138

65:                                               ; preds = %61, %39, %3
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %66(ptr noundef %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_compute_bounces(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !139 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !113
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 12
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.15) #17
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = tail call ptr %13(ptr noundef %15) #17
  %17 = icmp sgt i32 %2, 1
  br i1 %17, label %18, label %62

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 2
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %22 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 5
  br label %23

23:                                               ; preds = %18, %57
  %24 = phi i32 [ 1, %18 ], [ %60, %57 ]
  %25 = phi ptr [ %12, %18 ], [ %58, %57 ]
  %26 = load i32, ptr %8, align 4, !tbaa !113
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %33, label %52

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = load i32, ptr %8, align 4, !tbaa !113
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %52, !llvm.loop !140

33:                                               ; preds = %23, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %23 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !122
  %36 = getelementptr inbounds %struct.OccFace, ptr %35, i64 %34
  call fastcc void @occ_face(ptr noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #18
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef 0x3E45798EE0000000) #18
  %37 = load ptr, ptr %19, align 8, !tbaa !122
  %38 = getelementptr inbounds %struct.OccFace, ptr %37, i64 %34
  %39 = getelementptr inbounds [3 x float], ptr %25, i64 %34
  call fastcc void @occ_lookup(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %38, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %39, ptr noundef null) #18
  %40 = load <2 x float>, ptr %39, align 4, !tbaa !44
  %41 = fcmp ogt <2 x float> %40, zeroinitializer
  %42 = select <2 x i1> %41, <2 x float> %40, <2 x float> zeroinitializer
  store <2 x float> %42, ptr %39, align 4, !tbaa !44
  %43 = getelementptr inbounds [3 x float], ptr %25, i64 %34, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !44
  %45 = fcmp ogt float %44, 0.000000e+00
  %46 = select i1 %45, float %44, float 0.000000e+00
  store float %46, ptr %43, align 4, !tbaa !44
  %47 = getelementptr inbounds [3 x float], ptr %16, i64 %34
  call fastcc void @add_v3_v3(ptr noundef %47, ptr noundef nonnull %39) #18
  %48 = load ptr, ptr %20, align 8, !tbaa !66
  %49 = load ptr, ptr %21, align 8, !tbaa !67
  %50 = call i32 %48(ptr noundef %49) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %28, label %52

52:                                               ; preds = %28, %33, %23
  %53 = load ptr, ptr %20, align 8, !tbaa !66
  %54 = load ptr, ptr %21, align 8, !tbaa !67
  %55 = call i32 %53(ptr noundef %54) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load ptr, ptr %14, align 8, !tbaa !125
  store ptr %25, ptr %14, align 8, !tbaa !125
  %59 = load ptr, ptr %22, align 8, !tbaa !133
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %1, ptr noundef %59) #18
  %60 = add nuw nsw i32 %24, 1
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %62, label %23, !llvm.loop !141

62:                                               ; preds = %57, %52, %3
  %63 = phi ptr [ %12, %3 ], [ %25, %52 ], [ %58, %57 ]
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %64(ptr noundef %63) #17
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %66 = load ptr, ptr %14, align 8, !tbaa !125
  call void %65(ptr noundef %66) #17
  store ptr %16, ptr %14, align 8, !tbaa !125
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %68 = load ptr, ptr %67, align 8, !tbaa !66
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %70 = load ptr, ptr %69, align 8, !tbaa !67
  %71 = call i32 %68(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !133
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %1, ptr noundef %75) #18
  br label %76

76:                                               ; preds = %73, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @exec_strandsurface_sample(ptr nocapture noundef readonly %0) #0 !PGOFuncName !142 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %10 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.StrandSurface, ptr %9, i64 0, i32 3
  %17 = getelementptr inbounds %struct.StrandSurface, ptr %9, i64 0, i32 4
  %18 = getelementptr inbounds %struct.Render, ptr %7, i64 0, i32 56
  %19 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 4
  %23 = sext i32 %11 to i64
  br label %24

24:                                               ; preds = %15, %49
  %25 = phi i64 [ %23, %15 ], [ %58, %49 ]
  %26 = load ptr, ptr %16, align 8, !tbaa !73
  %27 = getelementptr inbounds [4 x i32], ptr %26, i64 %25
  %28 = load ptr, ptr %17, align 8, !tbaa !76
  %29 = load i32, ptr %27, align 4, !tbaa !40
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %28, i64 %30
  %32 = getelementptr inbounds i32, ptr %27, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %28, i64 %34
  %36 = getelementptr inbounds i32, ptr %27, i64 2
  %37 = load i32, ptr %36, align 4, !tbaa !40
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x float], ptr %28, i64 %38
  %40 = getelementptr inbounds i32, ptr %27, i64 3
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %24
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds [3 x float], ptr %28, i64 %44
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef %31, ptr noundef %39) #17
  %46 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35, ptr noundef %39, ptr noundef nonnull %45) #17
  br label %49

47:                                               ; preds = %24
  call void @cent_tri_v3(ptr noundef nonnull %5, ptr noundef %31, ptr noundef %35, ptr noundef %39) #17
  %48 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %31, ptr noundef %35, ptr noundef %39) #17
  br label %49

49:                                               ; preds = %47, %43
  call fastcc void @negate_v3(ptr noundef nonnull %6) #18
  %50 = load ptr, ptr %18, align 8, !tbaa !65
  %51 = load i32, ptr %19, align 8, !tbaa !87
  call fastcc void @sample_occ_tree(ptr noundef %7, ptr noundef %50, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %51, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %52 = load ptr, ptr %20, align 8, !tbaa !83
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 %25
  call fastcc void @copy_v3_v3(ptr noundef %53, ptr noundef nonnull %2) #18
  %54 = load ptr, ptr %21, align 8, !tbaa !84
  %55 = getelementptr inbounds [3 x float], ptr %54, i64 %25
  call fastcc void @copy_v3_v3(ptr noundef %55, ptr noundef nonnull %3) #18
  %56 = load ptr, ptr %22, align 8, !tbaa !85
  %57 = getelementptr inbounds [3 x float], ptr %56, i64 %25
  call fastcc void @copy_v3_v3(ptr noundef %57, ptr noundef nonnull %4) #18
  %58 = add nsw i64 %25, 1
  %59 = load i32, ptr %12, align 4, !tbaa !89
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %24, label %62, !llvm.loop !143

62:                                               ; preds = %49, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !144 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !145 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !146 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_occ(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @occ_free_tree(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !65
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_free_tree(ptr noundef %0) unnamed_addr #0 !PGOFuncName !147 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BLI_memarena_free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %10(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %16(ptr noundef nonnull %13) #17
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %22(ptr noundef nonnull %19) #17
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %28(ptr noundef nonnull %25) #17
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %34(ptr noundef nonnull %31) #17
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %36(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sample_occ(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.OccFace, align 4
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %120, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @sample_occ_surface(ptr noundef nonnull %1) #18
  br label %124

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %14 = load i32, ptr %13, align 8, !tbaa !150
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %20 = load i32, ptr %19, align 4, !tbaa !151
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 104
  %22 = load i32, ptr %21, align 8, !tbaa !152
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %24 = load i16, ptr %23, align 2, !tbaa !153
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  %29 = tail call fastcc i32 @sample_occ_cache(ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef nonnull %18, i32 noundef %20, i32 noundef %22, i32 noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #18, !range !154
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %124

31:                                               ; preds = %16, %12
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %35 = load ptr, ptr %34, align 8, !tbaa !156
  %36 = ptrtoint ptr %33 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 288
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %3, align 4, !tbaa !126
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !157
  %43 = getelementptr inbounds %struct.VlakRen, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !158
  %45 = getelementptr inbounds %struct.OccFace, ptr %3, i64 0, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !128
  %46 = load ptr, ptr %1, align 8, !tbaa !159
  %47 = getelementptr inbounds %struct.Material, ptr %46, i64 0, i32 51
  %48 = load i32, ptr %47, align 4, !tbaa !160
  %49 = and i32 %48, 1024
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %53 = load i16, ptr %52, align 2, !tbaa !153
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  %56 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  call fastcc void @sample_occ_tree(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %50, ptr noundef nonnull %51, i32 noundef %54, i32 noundef %49, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull %57) #18
  %58 = getelementptr inbounds %struct.OcclusionTree, ptr %5, i64 0, i32 14
  %59 = load ptr, ptr %58, align 8, !tbaa !121
  %60 = icmp eq ptr %59, null
  br i1 %60, label %124, label %61

61:                                               ; preds = %31
  %62 = load i16, ptr %52, align 2, !tbaa !153
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds %struct.OcclusionCache, ptr %59, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !161
  %66 = icmp eq ptr %65, null
  br i1 %66, label %124, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.OcclusionCache, ptr %59, i64 %63, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !163
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %124, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 104
  %73 = load i32, ptr %72, align 8, !tbaa !152
  %74 = getelementptr inbounds %struct.OcclusionCache, ptr %59, i64 %63, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !164
  %76 = sub nsw i32 %73, %75
  %77 = getelementptr inbounds %struct.OcclusionCache, ptr %59, i64 %63, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !165
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %81 = load i32, ptr %80, align 4, !tbaa !151
  %82 = getelementptr inbounds %struct.OcclusionCache, ptr %59, i64 %63, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !166
  %84 = add i32 %79, %81
  %85 = sub i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86
  call fastcc void @copy_v3_v3(ptr noundef nonnull %87, ptr noundef nonnull %50) #18
  %88 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %51) #18
  %89 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %89, ptr noundef nonnull %55) #18
  %90 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %56) #18
  %91 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %57) #18
  %92 = load float, ptr %89, align 4, !tbaa !44
  %93 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !44
  %95 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 2, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !44
  %97 = call fastcc float @max_fff(float noundef %92, float noundef %94, float noundef %96) #18
  %98 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 5
  %99 = load float, ptr %90, align 4, !tbaa !44
  %100 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 3, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !44
  %102 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 3, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !44
  %104 = call fastcc float @max_fff(float noundef %99, float noundef %101, float noundef %103) #18
  %105 = call fastcc float @max_ff(float noundef %97, float noundef %104) #18
  %106 = load float, ptr %91, align 4, !tbaa !44
  %107 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 4, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !44
  %109 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 4, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !44
  %111 = call fastcc float @max_fff(float noundef %106, float noundef %108, float noundef %110) #18
  %112 = call fastcc float @max_ff(float noundef %105, float noundef %111) #18
  store float %112, ptr %98, align 4, !tbaa !167
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  %114 = call fastcc float @dot_v3v3(ptr noundef nonnull %113, ptr noundef nonnull %113) #18
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  %116 = call fastcc float @dot_v3v3(ptr noundef nonnull %115, ptr noundef nonnull %115) #18
  %117 = fadd float %114, %116
  %118 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 6
  store float %117, ptr %118, align 4, !tbaa !169
  %119 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %65, i64 %86, i32 9
  store i32 1, ptr %119, align 4, !tbaa !170
  br label %124

120:                                              ; preds = %2
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %121, align 8, !tbaa !44
  %122 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %122, align 8, !tbaa !44
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  br label %124

124:                                              ; preds = %11, %31, %71, %67, %61, %16, %120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_occ_surface(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !171 {
  %2 = alloca [4 x float], align 16
  %3 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.StrandRen, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  %9 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = tail call ptr @RE_strandren_get_face(ptr noundef %10, ptr noundef %4, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %12 = icmp eq ptr %8, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.StrandSurface, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %111, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.StrandSurface, ptr %8, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %111, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.StrandSurface, ptr %8, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %11, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %111

27:                                               ; preds = %21
  %28 = load i32, ptr %11, align 4, !tbaa !40
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr %15, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x float], ptr %19, i64 %32
  %34 = getelementptr inbounds i32, ptr %30, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !40
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x float], ptr %19, i64 %36
  %38 = getelementptr inbounds i32, ptr %30, i64 2
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], ptr %19, i64 %40
  %42 = getelementptr inbounds i32, ptr %30, i64 3
  %43 = load i32, ptr %42, align 4, !tbaa !40
  %44 = icmp eq i32 %43, 0
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [3 x float], ptr %19, i64 %45
  %47 = select i1 %44, ptr null, ptr %46
  %48 = load ptr, ptr %4, align 8, !tbaa !177
  call void @interp_weights_face_v3(ptr noundef nonnull %2, ptr noundef nonnull %33, ptr noundef nonnull %37, ptr noundef nonnull %41, ptr noundef %47, ptr noundef %48) #17
  %49 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  call fastcc void @zero_v3(ptr noundef nonnull %49) #18
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  call fastcc void @zero_v3(ptr noundef nonnull %50) #18
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  call fastcc void @zero_v3(ptr noundef nonnull %51) #18
  %52 = load ptr, ptr %22, align 8, !tbaa !77
  %53 = load i32, ptr %30, align 4, !tbaa !40
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %52, i64 %54
  %56 = load float, ptr %2, align 16, !tbaa !44
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef %55, float noundef %56) #18
  %57 = getelementptr inbounds %struct.StrandSurface, ptr %8, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !92
  %59 = load i32, ptr %30, align 4, !tbaa !40
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x float], ptr %58, i64 %60
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %50, ptr noundef %61, float noundef %56) #18
  %62 = getelementptr inbounds %struct.StrandSurface, ptr %8, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !93
  %64 = load i32, ptr %30, align 4, !tbaa !40
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x float], ptr %63, i64 %65
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %51, ptr noundef %66, float noundef %56) #18
  %67 = load ptr, ptr %22, align 8, !tbaa !77
  %68 = load i32, ptr %34, align 4, !tbaa !40
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x float], ptr %67, i64 %69
  %71 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !44
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef %70, float noundef %72) #18
  %73 = load ptr, ptr %57, align 8, !tbaa !92
  %74 = load i32, ptr %34, align 4, !tbaa !40
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x float], ptr %73, i64 %75
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %50, ptr noundef %76, float noundef %72) #18
  %77 = load ptr, ptr %62, align 8, !tbaa !93
  %78 = load i32, ptr %34, align 4, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x float], ptr %77, i64 %79
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %51, ptr noundef %80, float noundef %72) #18
  %81 = load ptr, ptr %22, align 8, !tbaa !77
  %82 = load i32, ptr %38, align 4, !tbaa !40
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x float], ptr %81, i64 %83
  %85 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %86 = load float, ptr %85, align 8, !tbaa !44
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef %84, float noundef %86) #18
  %87 = load ptr, ptr %57, align 8, !tbaa !92
  %88 = load i32, ptr %38, align 4, !tbaa !40
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x float], ptr %87, i64 %89
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %50, ptr noundef %90, float noundef %86) #18
  %91 = load ptr, ptr %62, align 8, !tbaa !93
  %92 = load i32, ptr %38, align 4, !tbaa !40
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x float], ptr %91, i64 %93
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %51, ptr noundef %94, float noundef %86) #18
  %95 = load i32, ptr %42, align 4, !tbaa !40
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %27
  %98 = load ptr, ptr %22, align 8, !tbaa !77
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds [3 x float], ptr %98, i64 %99
  %101 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %102 = load float, ptr %101, align 4, !tbaa !44
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef nonnull %100, float noundef %102) #18
  %103 = load ptr, ptr %57, align 8, !tbaa !92
  %104 = load i32, ptr %42, align 4, !tbaa !40
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x float], ptr %103, i64 %105
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %50, ptr noundef %106, float noundef %102) #18
  %107 = load ptr, ptr %62, align 8, !tbaa !93
  %108 = load i32, ptr %42, align 4, !tbaa !40
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x float], ptr %107, i64 %109
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %51, ptr noundef %110, float noundef %102) #18
  br label %116

111:                                              ; preds = %21, %17, %13, %1
  %112 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %112, align 8, !tbaa !44
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %113, align 8, !tbaa !44
  %114 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 102
  tail call fastcc void @zero_v3(ptr noundef nonnull %114) #18
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 101
  tail call fastcc void @zero_v3(ptr noundef nonnull %115) #18
  br label %116

116:                                              ; preds = %27, %97, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef i32 @sample_occ_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8) unnamed_addr #5 !PGOFuncName !178 {
  %10 = alloca [4 x ptr], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  %13 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, null
  br i1 %15, label %136, label %16

16:                                               ; preds = %9
  %17 = sext i32 %5 to i64
  %18 = getelementptr inbounds %struct.OcclusionCache, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  %20 = icmp eq ptr %19, null
  br i1 %20, label %136, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.OcclusionCache, ptr %14, i64 %17, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !163
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %136, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.OcclusionCache, ptr %14, i64 %17, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !164
  %28 = sub nsw i32 %4, %27
  %29 = getelementptr inbounds %struct.OcclusionCache, ptr %14, i64 %17, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !165
  %31 = mul nsw i32 %28, %30
  %32 = getelementptr inbounds %struct.OcclusionCache, ptr %14, i64 %17, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !166
  %34 = sub i32 %3, %33
  %35 = add nsw i32 %34, %31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !170
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %41, ptr noundef %1) #18
  %42 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %12) #18
  %43 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 6
  %44 = load float, ptr %43, align 4, !tbaa !169
  %45 = fmul float %44, 5.000000e-01
  %46 = fcmp olt float %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 1
  %49 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %48, ptr noundef %2) #18
  %50 = fcmp ogt float %49, 0x3FEF5C2900000000
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef nonnull %52) #18
  %53 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %53) #18
  %54 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %19, i64 %36, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %54) #18
  br label %136

55:                                               ; preds = %25, %47, %40
  %56 = tail call fastcc ptr @find_occ_sample(ptr noundef nonnull %18, i32 noundef %3, i32 noundef %4) #18
  store ptr %56, ptr %10, align 16, !tbaa !35
  %57 = add nsw i32 %23, %3
  %58 = tail call fastcc ptr @find_occ_sample(ptr noundef nonnull %18, i32 noundef %57, i32 noundef %4) #18
  %59 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 1
  store ptr %58, ptr %59, align 8, !tbaa !35
  %60 = add nsw i32 %23, %4
  %61 = tail call fastcc ptr @find_occ_sample(ptr noundef nonnull %18, i32 noundef %3, i32 noundef %60) #18
  %62 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  store ptr %61, ptr %62, align 16, !tbaa !35
  %63 = tail call fastcc ptr @find_occ_sample(ptr noundef nonnull %18, i32 noundef %57, i32 noundef %60) #18
  %64 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 3
  store ptr %63, ptr %64, align 8, !tbaa !35
  br label %68

65:                                               ; preds = %73
  %66 = add nuw nsw i64 %69, 1
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %77, label %68, !llvm.loop !179

68:                                               ; preds = %55, %65
  %69 = phi i64 [ 0, %55 ], [ %66, %65 ]
  %70 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %136, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %71, i64 0, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !170
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %136, label %65

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %56, i64 0, i32 5
  %79 = load float, ptr %78, align 4, !tbaa !167
  %80 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %58, i64 0, i32 5
  %81 = load float, ptr %80, align 4, !tbaa !167
  %82 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %61, i64 0, i32 5
  %83 = load float, ptr %82, align 4, !tbaa !167
  %84 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %63, i64 0, i32 5
  %85 = load float, ptr %84, align 4, !tbaa !167
  %86 = tail call fastcc float @min_ffff(float noundef %79, float noundef %81, float noundef %83, float noundef %85) #18
  %87 = tail call fastcc float @max_ffff(float noundef %79, float noundef %81, float noundef %83, float noundef %85) #18
  %88 = fsub float %87, %86
  %89 = fcmp ogt float %88, 0x3FA99999A0000000
  br i1 %89, label %136, label %90

90:                                               ; preds = %77
  tail call fastcc void @zero_v3(ptr noundef %6) #18
  tail call fastcc void @zero_v3(ptr noundef %7) #18
  tail call fastcc void @zero_v3(ptr noundef %8) #18
  %91 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %56, i64 0, i32 7
  %92 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %63, i64 0, i32 7
  %93 = load <2 x i32>, ptr %91, align 4, !tbaa !40
  %94 = load <2 x i32>, ptr %92, align 4, !tbaa !40
  %95 = insertelement <2 x i32> poison, i32 %3, i64 0
  %96 = insertelement <2 x i32> %95, i32 %4, i64 1
  %97 = sub nsw <2 x i32> %94, %96
  %98 = sitofp <2 x i32> %97 to <2 x float>
  %99 = sub nsw <2 x i32> %94, %93
  %100 = sitofp <2 x i32> %99 to <2 x float>
  %101 = fdiv <2 x float> %98, %100
  %102 = extractelement <2 x float> %101, i64 0
  %103 = fsub float 1.000000e+00, %102
  %104 = extractelement <2 x float> %101, i64 1
  %105 = fsub float 1.000000e+00, %104
  %106 = shufflevector <2 x float> %101, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %107 = insertelement <4 x float> %106, float %103, i64 3
  %108 = shufflevector <4 x float> %107, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %109 = shufflevector <4 x float> %107, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %110 = insertelement <4 x float> %109, float %105, i64 2
  %111 = shufflevector <4 x float> %110, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %112 = fmul <4 x float> %108, %111
  store <4 x float> %112, ptr %11, align 16, !tbaa !44
  br label %113

113:                                              ; preds = %90, %113
  %114 = phi i64 [ 0, %90 ], [ %130, %113 ]
  %115 = phi float [ 0.000000e+00, %90 ], [ %126, %113 ]
  %116 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %114
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %117, i64 0, i32 1
  %119 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %118, ptr noundef %2) #18
  %120 = fpext float %119 to double
  %121 = tail call double @pow(double noundef %120, double noundef 3.200000e+01) #17
  %122 = fptrunc double %121 to float
  %123 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 %114
  %124 = load float, ptr %123, align 4, !tbaa !44
  %125 = fmul float %124, %122
  %126 = fadd float %115, %125
  %127 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %117, i64 0, i32 2
  tail call fastcc void @madd_v3_v3fl(ptr noundef %6, ptr noundef nonnull %127, float noundef %125) #18
  %128 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %117, i64 0, i32 3
  tail call fastcc void @madd_v3_v3fl(ptr noundef %7, ptr noundef nonnull %128, float noundef %125) #18
  %129 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %117, i64 0, i32 4
  tail call fastcc void @madd_v3_v3fl(ptr noundef %8, ptr noundef nonnull %129, float noundef %125) #18
  %130 = add nuw nsw i64 %114, 1
  %131 = icmp eq i64 %130, 4
  br i1 %131, label %132, label %113, !llvm.loop !180

132:                                              ; preds = %113
  %133 = fcmp ult float %126, 0x3FECCCCCC0000000
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = fdiv float 1.000000e+00, %126
  tail call fastcc void @mul_v3_fl(ptr noundef %6, float noundef %135) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %7, float noundef %135) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %8, float noundef %135) #18
  br label %136

136:                                              ; preds = %68, %73, %132, %77, %16, %21, %9, %134, %51
  %137 = phi i32 [ 1, %51 ], [ 1, %134 ], [ 0, %9 ], [ 0, %21 ], [ 0, %16 ], [ 0, %77 ], [ 0, %132 ], [ 0, %73 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  ret i32 %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sample_occ_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly %7, ptr noundef %8, ptr nocapture noundef writeonly %9) unnamed_addr #0 !PGOFuncName !181 {
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 53
  %16 = load i16, ptr %15, align 2, !tbaa !182
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %6, 0
  %19 = select i1 %18, i32 %17, i32 0
  call fastcc void @negate_v3_v3(ptr noundef nonnull %11, ptr noundef %4) #18
  %20 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr null, ptr %14
  %24 = icmp ne ptr %8, null
  %25 = icmp ne i32 %19, 0
  %26 = select i1 %24, i1 %25, i1 false
  %27 = select i1 %26, ptr %12, ptr null
  call fastcc void @occ_lookup(ptr noundef %1, i32 noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef %23, ptr noundef %27) #18
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 57
  %29 = load float, ptr %28, align 4, !tbaa !183
  %30 = fsub float 1.000000e+00, %29
  %31 = load float, ptr %13, align 4, !tbaa !44
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %30, %32
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %38, label %35

35:                                               ; preds = %10
  %36 = fcmp ogt float %33, 1.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %10, %35, %37
  %39 = phi float [ 1.000000e+00, %37 ], [ %33, %35 ], [ 0.000000e+00, %10 ]
  %40 = fcmp une float %29, 0.000000e+00
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = fneg float %31
  %43 = call float @expf(float noundef %42) #17
  %44 = call float @llvm.fmuladd.f32(float %29, float %43, float %39)
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi float [ %44, %41 ], [ %39, %38 ]
  br i1 %24, label %47, label %79

47:                                               ; preds = %45
  %48 = add nsw i32 %19, -1
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30
  %52 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %51) #18
  %53 = fadd float %52, 1.000000e+00
  %54 = fmul float %53, 5.000000e-01
  %55 = fsub float 1.000000e+00, %54
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 6
  %57 = load float, ptr %56, align 8, !tbaa !184
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 9
  %59 = load float, ptr %58, align 4, !tbaa !185
  %60 = fmul float %54, %59
  %61 = call float @llvm.fmuladd.f32(float %55, float %57, float %60)
  store float %61, ptr %8, align 4, !tbaa !44
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 7
  %63 = load float, ptr %62, align 4, !tbaa !186
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 10
  %65 = load float, ptr %64, align 8, !tbaa !187
  %66 = fmul float %54, %65
  %67 = call float @llvm.fmuladd.f32(float %55, float %63, float %66)
  %68 = getelementptr inbounds float, ptr %8, i64 1
  store float %67, ptr %68, align 4, !tbaa !44
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 8
  %70 = load float, ptr %69, align 8, !tbaa !188
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 11
  %72 = load float, ptr %71, align 4, !tbaa !189
  %73 = fmul float %54, %72
  %74 = call float @llvm.fmuladd.f32(float %55, float %70, float %73)
  %75 = getelementptr inbounds float, ptr %8, i64 2
  store float %74, ptr %75, align 4, !tbaa !44
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %46) #18
  br label %79

76:                                               ; preds = %47
  store float %46, ptr %8, align 4, !tbaa !44
  %77 = getelementptr inbounds float, ptr %8, i64 1
  store float %46, ptr %77, align 4, !tbaa !44
  %78 = getelementptr inbounds float, ptr %8, i64 2
  store float %46, ptr %78, align 4, !tbaa !44
  br label %79

79:                                               ; preds = %50, %76, %45
  %80 = icmp eq ptr %7, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  store float %46, ptr %7, align 4, !tbaa !44
  %82 = getelementptr inbounds float, ptr %7, i64 1
  store float %46, ptr %82, align 4, !tbaa !44
  %83 = getelementptr inbounds float, ptr %7, i64 2
  store float %46, ptr %83, align 4, !tbaa !44
  br label %84

84:                                               ; preds = %81, %79
  %85 = load i32, ptr %20, align 8, !tbaa !69
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call fastcc void @copy_v3_v3(ptr noundef %9, ptr noundef nonnull %14) #18
  br label %89

88:                                               ; preds = %84
  call fastcc void @zero_v3(ptr noundef %9) #18
  br label %89

89:                                               ; preds = %88, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !190 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #18
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #18
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !191 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !192 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cache_occ_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PixStr, align 8
  %5 = alloca %struct.OccFace, align 4
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %8 = getelementptr inbounds %struct.OcclusionTree, ptr %7, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %216, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %13 = load i16, ptr %12, align 2, !tbaa !193
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14
  %16 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !195
  %18 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !165
  %19 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !196
  %21 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !197
  %22 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !198
  %24 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !166
  %25 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !199
  %27 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !164
  %28 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 5
  store i32 3, ptr %28, align 8, !tbaa !163
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %30 = sext i32 %17 to i64
  %31 = mul nsw i64 %30, 80
  %32 = sext i32 %20 to i64
  %33 = mul i64 %31, %32
  %34 = tail call ptr %29(i64 noundef %33, ptr noundef nonnull @.str.5) #17
  store ptr %34, ptr %15, align 8, !tbaa !161
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !200
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !201
  br label %49

41:                                               ; preds = %11
  store ptr null, ptr %4, align 8, !tbaa !202
  %42 = getelementptr inbounds %struct.PixStr, ptr %4, i64 0, i32 5
  store i16 -1, ptr %42, align 8, !tbaa !204
  %43 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !206
  %47 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !207
  br label %49

49:                                               ; preds = %41, %38
  %50 = phi ptr [ null, %38 ], [ %44, %41 ]
  %51 = phi ptr [ null, %38 ], [ %46, %41 ]
  %52 = phi ptr [ null, %38 ], [ %48, %41 ]
  %53 = phi ptr [ %40, %38 ], [ null, %41 ]
  %54 = load i32, ptr %25, align 8, !tbaa !199
  %55 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !208
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %216

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 1
  %60 = getelementptr inbounds %struct.PixStr, ptr %4, i64 0, i32 1
  %61 = getelementptr inbounds %struct.PixStr, ptr %4, i64 0, i32 2
  %62 = getelementptr inbounds %struct.PixStr, ptr %4, i64 0, i32 3
  %63 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 1
  %64 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2
  %65 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 3
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %67 = getelementptr inbounds %struct.OccFace, ptr %5, i64 0, i32 1
  %68 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 29
  %69 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 17
  %70 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 114
  %71 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 100
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 102
  %73 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 101
  %74 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 78
  %75 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 79
  %76 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 103
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %79

79:                                               ; preds = %58, %207
  %80 = phi i32 [ %56, %58 ], [ %208, %207 ]
  %81 = phi ptr [ %34, %58 ], [ %213, %207 ]
  %82 = phi i32 [ %54, %58 ], [ %214, %207 ]
  %83 = phi ptr [ %53, %58 ], [ %212, %207 ]
  %84 = phi ptr [ %52, %58 ], [ %211, %207 ]
  %85 = phi ptr [ %51, %58 ], [ %210, %207 ]
  %86 = phi ptr [ %50, %58 ], [ %209, %207 ]
  %87 = load i32, ptr %22, align 8, !tbaa !198
  %88 = load i32, ptr %59, align 4, !tbaa !209
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %207

90:                                               ; preds = %79
  %91 = add i32 %82, 3
  br label %92

92:                                               ; preds = %90, %191
  %93 = phi i32 [ %88, %90 ], [ %192, %191 ]
  %94 = phi ptr [ %81, %90 ], [ %194, %191 ]
  %95 = phi i32 [ %87, %90 ], [ %193, %191 ]
  %96 = phi ptr [ %83, %90 ], [ %195, %191 ]
  %97 = phi ptr [ %84, %90 ], [ %198, %191 ]
  %98 = phi ptr [ %85, %90 ], [ %197, %191 ]
  %99 = phi ptr [ %86, %90 ], [ %196, %191 ]
  %100 = load i32, ptr %22, align 8, !tbaa !198
  %101 = add i32 %95, 3
  %102 = sub i32 %101, %100
  %103 = srem i32 %102, 3
  %104 = icmp eq i32 %103, 0
  %105 = add nsw i32 %93, -1
  %106 = icmp eq i32 %95, %105
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %108, label %191

108:                                              ; preds = %92
  %109 = load i32, ptr %25, align 8, !tbaa !199
  %110 = sub i32 %91, %109
  %111 = srem i32 %110, 3
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %55, align 4, !tbaa !208
  %115 = add nsw i32 %114, -1
  %116 = icmp eq i32 %82, %115
  br i1 %116, label %117, label %191

117:                                              ; preds = %113, %108
  %118 = load i16, ptr %35, align 2, !tbaa !200
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load i64, ptr %96, align 8, !tbaa !210
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %191, label %123

123:                                              ; preds = %120
  %124 = inttoptr i64 %121 to ptr
  br label %132

125:                                              ; preds = %117
  %126 = load i32, ptr %98, align 4, !tbaa !40
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %191, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %99, align 4, !tbaa !40
  store i32 %129, ptr %60, align 8, !tbaa !212
  %130 = load i32, ptr %98, align 4, !tbaa !40
  store i32 %130, ptr %61, align 4, !tbaa !213
  %131 = load i32, ptr %97, align 4, !tbaa !40
  store i32 %131, ptr %62, align 8, !tbaa !214
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi ptr [ %4, %128 ], [ %124, %123 ]
  call void @shade_samples_fill_with_ps(ptr noundef %2, ptr noundef nonnull %133, i32 noundef %95, i32 noundef %82) #17
  %134 = load ptr, ptr %63, align 8, !tbaa !157
  %135 = icmp eq ptr %134, null
  br i1 %135, label %184, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %64, align 8, !tbaa !159
  %138 = getelementptr inbounds %struct.Material, ptr %137, i64 0, i32 51
  %139 = load i32, ptr %138, align 4, !tbaa !160
  %140 = and i32 %139, 1024
  %141 = load ptr, ptr %65, align 8, !tbaa !155
  %142 = load ptr, ptr %66, align 8, !tbaa !156
  %143 = ptrtoint ptr %141 to i64
  %144 = ptrtoint ptr %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 288
  %147 = trunc i64 %146 to i32
  store i32 %147, ptr %5, align 4, !tbaa !126
  %148 = getelementptr inbounds %struct.VlakRen, ptr %134, i64 0, i32 9
  %149 = load i32, ptr %148, align 4, !tbaa !158
  store i32 %149, ptr %67, align 4, !tbaa !128
  %150 = load i16, ptr %70, align 2, !tbaa !153
  %151 = sext i16 %150 to i32
  call fastcc void @sample_occ_tree(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %68, ptr noundef nonnull %69, i32 noundef %151, i32 noundef %140, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73) #18
  call fastcc void @copy_v3_v3(ptr noundef %94, ptr noundef nonnull %68) #18
  %152 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %152, ptr noundef nonnull %69) #18
  %153 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %153, ptr noundef nonnull %71) #18
  %154 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %154, ptr noundef nonnull %72) #18
  %155 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %155, ptr noundef nonnull %73) #18
  %156 = load float, ptr %153, align 4, !tbaa !44
  %157 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 2, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !44
  %159 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 2, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !44
  %161 = call fastcc float @max_fff(float noundef %156, float noundef %158, float noundef %160) #18
  %162 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 5
  %163 = load float, ptr %154, align 4, !tbaa !44
  %164 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 3, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !44
  %166 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 3, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !44
  %168 = call fastcc float @max_fff(float noundef %163, float noundef %165, float noundef %167) #18
  %169 = call fastcc float @max_ff(float noundef %161, float noundef %168) #18
  %170 = load float, ptr %155, align 4, !tbaa !44
  %171 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 4, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !44
  %173 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 4, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !44
  %175 = call fastcc float @max_fff(float noundef %170, float noundef %172, float noundef %174) #18
  %176 = call fastcc float @max_ff(float noundef %169, float noundef %175) #18
  store float %176, ptr %162, align 4, !tbaa !167
  %177 = call fastcc float @dot_v3v3(ptr noundef nonnull %74, ptr noundef nonnull %74) #18
  %178 = call fastcc float @dot_v3v3(ptr noundef nonnull %75, ptr noundef nonnull %75) #18
  %179 = fadd float %177, %178
  %180 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 6
  store float %179, ptr %180, align 4, !tbaa !169
  %181 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 7
  %182 = load <2 x i32>, ptr %76, align 4, !tbaa !40
  store <2 x i32> %182, ptr %181, align 4, !tbaa !40
  %183 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 0, i32 9
  store i32 1, ptr %183, align 4, !tbaa !170
  br label %184

184:                                              ; preds = %136, %132
  %185 = load ptr, ptr %77, align 8, !tbaa !66
  %186 = load ptr, ptr %78, align 8, !tbaa !67
  %187 = call i32 %185(ptr noundef %186) #17
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load i32, ptr %59, align 4, !tbaa !209
  br label %191

191:                                              ; preds = %189, %92, %125, %120, %113
  %192 = phi i32 [ %190, %189 ], [ %93, %92 ], [ %93, %125 ], [ %93, %120 ], [ %93, %113 ]
  %193 = add nsw i32 %95, 1
  %194 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %94, i64 1
  %195 = getelementptr inbounds i64, ptr %96, i64 1
  %196 = getelementptr inbounds i32, ptr %99, i64 1
  %197 = getelementptr inbounds i32, ptr %98, i64 1
  %198 = getelementptr inbounds i32, ptr %97, i64 1
  %199 = icmp slt i32 %193, %192
  br i1 %199, label %92, label %200, !llvm.loop !215

200:                                              ; preds = %191, %184
  %201 = phi ptr [ %99, %184 ], [ %196, %191 ]
  %202 = phi ptr [ %98, %184 ], [ %197, %191 ]
  %203 = phi ptr [ %97, %184 ], [ %198, %191 ]
  %204 = phi ptr [ %96, %184 ], [ %195, %191 ]
  %205 = phi ptr [ %94, %184 ], [ %194, %191 ]
  %206 = load i32, ptr %55, align 4, !tbaa !208
  br label %207

207:                                              ; preds = %200, %79
  %208 = phi i32 [ %80, %79 ], [ %206, %200 ]
  %209 = phi ptr [ %86, %79 ], [ %201, %200 ]
  %210 = phi ptr [ %85, %79 ], [ %202, %200 ]
  %211 = phi ptr [ %84, %79 ], [ %203, %200 ]
  %212 = phi ptr [ %83, %79 ], [ %204, %200 ]
  %213 = phi ptr [ %81, %79 ], [ %205, %200 ]
  %214 = add nsw i32 %82, 1
  %215 = icmp slt i32 %214, %208
  br i1 %215, label %79, label %216, !llvm.loop !216

216:                                              ; preds = %207, %49, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @shade_samples_fill_with_ps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_occ_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.OcclusionTree, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %10 = load i16, ptr %9, align 2, !tbaa !193
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %16(ptr noundef nonnull %13) #17
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 3
  store i32 0, ptr %18, align 8, !tbaa !165
  %19 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 4
  store i32 0, ptr %19, align 4, !tbaa !197
  %20 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 5
  store i32 0, ptr %20, align 8, !tbaa !163
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: optsize
declare float @get_render_aosss_error(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_face(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 !PGOFuncName !217 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %9 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !156
  %10 = load i32, ptr %0, align 4, !tbaa !126
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.OccFace, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !128
  %16 = tail call ptr @RE_findOrAddVlak(ptr noundef %13, i32 noundef %15) #17
  %17 = icmp eq ptr %1, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !218
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %16, align 8, !tbaa !219
  br i1 %21, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  tail call void @mid_v3_v3v3(ptr noundef nonnull %1, ptr noundef %22, ptr noundef %25) #17
  br label %31

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !220
  tail call void @cent_tri_v3(ptr noundef nonnull %1, ptr noundef %22, ptr noundef %28, ptr noundef %30) #17
  br label %31

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 11
  %33 = load i16, ptr %32, align 8, !tbaa !222
  %34 = and i16 %33, 3
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 8
  tail call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef nonnull %1) #17
  br label %38

38:                                               ; preds = %31, %36, %4
  %39 = icmp eq ptr %2, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 4
  %42 = load float, ptr %41, align 8, !tbaa !44
  %43 = fneg float %42
  store float %43, ptr %2, align 4, !tbaa !44
  %44 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 4, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !44
  %46 = fneg float %45
  %47 = getelementptr inbounds float, ptr %2, i64 1
  store float %46, ptr %47, align 4, !tbaa !44
  %48 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 4, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !44
  %50 = fneg float %49
  %51 = getelementptr inbounds float, ptr %2, i64 2
  store float %50, ptr %51, align 4, !tbaa !44
  %52 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 11
  %53 = load i16, ptr %52, align 8, !tbaa !222
  %54 = and i16 %53, 3
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %57, ptr noundef nonnull %2) #17
  br label %58

58:                                               ; preds = %40, %56, %38
  %59 = icmp eq ptr %3, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %16, align 8, !tbaa !219
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %61) #18
  %62 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !221
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %63) #18
  %64 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !220
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %65) #18
  %66 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !218
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %67) #18
  br label %70

70:                                               ; preds = %69, %60
  %71 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 11
  %72 = load i16, ptr %71, align 8, !tbaa !222
  %73 = and i16 %72, 3
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %76, ptr noundef nonnull %5) #17
  call void @mul_m4_v3(ptr noundef nonnull %76, ptr noundef nonnull %6) #17
  call void @mul_m4_v3(ptr noundef nonnull %76, ptr noundef nonnull %7) #17
  %77 = load ptr, ptr %66, align 8, !tbaa !218
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  call void @mul_m4_v3(ptr noundef nonnull %76, ptr noundef nonnull %8) #17
  %80 = load ptr, ptr %66, align 8, !tbaa !218
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi ptr [ %80, %79 ], [ %67, %70 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call float @area_quad_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  br label %88

86:                                               ; preds = %75, %81
  %87 = call float @area_tri_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi float [ %85, %84 ], [ %87, %86 ]
  store float %89, ptr %3, align 4, !tbaa !44
  br label %90

90:                                               ; preds = %88, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_build_recursive(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !223 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca [1 x %struct.OcclusionBuildThread], align 16
  %8 = alloca %struct.OccNode, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  %11 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float 1.000000e+00, ptr %11, align 8, !tbaa !224
  %12 = sub nsw i32 %3, %2
  %13 = icmp slt i32 %12, 9
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = icmp slt i32 %2, %3
  br i1 %15, label %16, label %107

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !226
  %19 = zext i32 %12 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %29, %20 ]
  %22 = phi i32 [ %18, %16 ], [ %27, %20 ]
  %23 = phi i32 [ %2, %16 ], [ %28, %20 ]
  %24 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %21
  store i32 %23, ptr %24, align 8, !tbaa !39
  %25 = trunc i64 %21 to i32
  %26 = shl nuw i32 1, %25
  %27 = or i32 %22, %26
  %28 = add nsw i32 %23, 1
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %106, label %20, !llvm.loop !227

31:                                               ; preds = %5
  call fastcc void @occ_build_8_split(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %32 = icmp eq i32 %4, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !132
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 4, !tbaa !131
  call void @BLI_init_threads(ptr noundef nonnull %6, ptr noundef nonnull @exec_occ_build, i32 noundef %39) #17
  br label %40

40:                                               ; preds = %37, %33, %31
  %41 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %42 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 11
  %43 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 7
  %44 = add nsw i32 %4, 1
  %45 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %7, i64 0, i64 0, i32 4
  %46 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %7, i64 0, i64 0, i32 1
  %47 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %7, i64 0, i64 0, i32 2
  %48 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %7, i64 0, i64 0, i32 3
  br label %49

49:                                               ; preds = %92, %40
  %50 = phi i64 [ %99, %92 ], [ 0, %40 ]
  %51 = phi i32 [ %98, %92 ], [ 0, %40 ]
  br label %52

52:                                               ; preds = %49, %89
  %53 = phi i64 [ %90, %89 ], [ %50, %49 ]
  %54 = getelementptr inbounds [8 x i32], ptr %10, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !40
  switch i32 %55, label %66 [
    i32 0, label %56
    i32 1, label %58
  ]

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %53
  store ptr null, ptr %57, align 8, !tbaa !39
  br label %89

58:                                               ; preds = %52
  %59 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 %53
  %60 = load i32, ptr %59, align 4, !tbaa !40
  %61 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %53
  store i32 %60, ptr %61, align 8, !tbaa !39
  %62 = trunc i64 %53 to i32
  %63 = shl nuw nsw i32 1, %62
  %64 = load i32, ptr %41, align 8, !tbaa !226
  %65 = or i32 %64, %63
  store i32 %65, ptr %41, align 8, !tbaa !226
  br label %89

66:                                               ; preds = %52
  %67 = load i32, ptr %42, align 8, !tbaa !132
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @BLI_lock_thread(i32 noundef 3) #17
  br label %70

70:                                               ; preds = %69, %66
  %71 = load ptr, ptr %0, align 8, !tbaa !120
  %72 = call ptr @BLI_memarena_alloc(ptr noundef %71, i64 noundef 144) #17
  %73 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %53
  store ptr %72, ptr %73, align 8, !tbaa !39
  %74 = load i32, ptr %43, align 8, !tbaa !134
  %75 = icmp sgt i32 %74, %4
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 %44, ptr %43, align 8, !tbaa !134
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, ptr %42, align 8, !tbaa !132
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @BLI_unlock_thread(i32 noundef 3) #17
  br label %81

81:                                               ; preds = %80, %77
  br i1 %32, label %82, label %85

82:                                               ; preds = %81
  %83 = load i32, ptr %42, align 8, !tbaa !132
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82, %81
  %86 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 %53
  %87 = load i32, ptr %86, align 4, !tbaa !40
  %88 = add nsw i32 %87, %55
  call fastcc void @occ_build_recursive(ptr noundef nonnull %0, ptr noundef %72, i32 noundef %87, i32 noundef %88, i32 noundef %44) #18
  br label %89

89:                                               ; preds = %56, %85, %58
  %90 = add nuw nsw i64 %53, 1
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %101, label %52, !llvm.loop !228

92:                                               ; preds = %82
  %93 = zext nneg i32 %51 to i64
  %94 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %7, i64 0, i64 %93
  store ptr %0, ptr %7, align 16, !tbaa !229
  store ptr %72, ptr %45, align 8, !tbaa !231
  %95 = getelementptr inbounds [8 x i32], ptr %9, i64 0, i64 %53
  %96 = load i32, ptr %95, align 4, !tbaa !40
  store i32 %96, ptr %46, align 8, !tbaa !232
  %97 = add nsw i32 %96, %55
  store i32 %97, ptr %47, align 4, !tbaa !233
  store i32 2, ptr %48, align 16, !tbaa !234
  call void @BLI_insert_thread(ptr noundef nonnull %6, ptr noundef nonnull %94) #17
  %98 = add nuw nsw i32 %51, 1
  %99 = add nuw nsw i64 %53, 1
  %100 = icmp eq i64 %99, 8
  br i1 %100, label %102, label %49, !llvm.loop !228

101:                                              ; preds = %89
  br i1 %32, label %102, label %107

102:                                              ; preds = %92, %101
  %103 = load i32, ptr %42, align 8, !tbaa !132
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  call void @BLI_end_threads(ptr noundef nonnull %6) #17
  br label %107

106:                                              ; preds = %20
  store i32 %27, ptr %17, align 8, !tbaa !226
  br label %107

107:                                              ; preds = %14, %106, %101, %102, %105
  %108 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %109 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %110 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 1
  %111 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 2
  br label %112

112:                                              ; preds = %107, %137
  %113 = phi i64 [ 0, %107 ], [ %138, %137 ]
  %114 = load i32, ptr %108, align 8, !tbaa !226
  %115 = trunc i64 %113 to i32
  %116 = shl nuw nsw i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %112
  %120 = load ptr, ptr %109, align 8, !tbaa !122
  %121 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %113
  %122 = load i32, ptr %121, align 8, !tbaa !39
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.OccFace, ptr %120, i64 %123
  call fastcc void @occ_node_from_face(ptr noundef %124, ptr noundef nonnull %8) #18
  br label %129

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %113
  %127 = load ptr, ptr %126, align 8, !tbaa !39
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %119, %125
  %130 = phi ptr [ %8, %119 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.OccNode, ptr %130, i64 0, i32 1
  %132 = getelementptr inbounds %struct.OccNode, ptr %130, i64 0, i32 2
  %133 = load float, ptr %131, align 4, !tbaa !235
  %134 = load float, ptr %110, align 4, !tbaa !235
  %135 = fadd float %133, %134
  store float %135, ptr %110, align 4, !tbaa !235
  call fastcc void @sh_add(ptr noundef nonnull %111, ptr noundef nonnull %111, ptr noundef nonnull %132) #18
  %136 = load float, ptr %131, align 4, !tbaa !235
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %1, ptr noundef nonnull %130, float noundef %136) #18
  br label %137

137:                                              ; preds = %125, %129
  %138 = add nuw nsw i64 %113, 1
  %139 = icmp eq i64 %138, 8
  br i1 %139, label %140, label %112, !llvm.loop !236

140:                                              ; preds = %137
  %141 = load float, ptr %110, align 4, !tbaa !235
  %142 = fcmp une float %141, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = fdiv float 1.000000e+00, %141
  call fastcc void @mul_v3_fl(ptr noundef nonnull %1, float noundef %144) #18
  %145 = load float, ptr %110, align 4, !tbaa !235
  br label %146

146:                                              ; preds = %143, %140
  %147 = phi float [ %145, %143 ], [ %141, %140 ]
  %148 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 3
  store float 0.000000e+00, ptr %148, align 4, !tbaa !237
  %149 = fcmp ogt float %147, 0.000000e+00
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  call fastcc void @occ_build_dco(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %148) #18
  br label %151

151:                                              ; preds = %150, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_build_shade(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !238 {
  %3 = alloca %struct.ShadeSample, align 8
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %3) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27080) %3, i8 0, i64 27080, i1 false)
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %5 = load i32, ptr %4, align 8, !tbaa !239
  %6 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 0, i32 117
  store i32 %5, ptr %6, align 8, !tbaa !240
  %7 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 0, i32 119
  store i32 12, ptr %7, align 8, !tbaa !241
  %8 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 2, i64 0, i32 120
  store i32 -17, ptr %8, align 4, !tbaa !242
  store i32 1, ptr %3, align 8, !tbaa !243
  %9 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !113
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %22

17:                                               ; preds = %22
  %18 = add nuw nsw i64 %23, 1
  %19 = load i32, ptr %9, align 4, !tbaa !113
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %41, !llvm.loop !245

22:                                               ; preds = %12, %17
  %23 = phi i64 [ 0, %12 ], [ %18, %17 ]
  %24 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !156
  %25 = load ptr, ptr %13, align 8, !tbaa !122
  %26 = getelementptr inbounds %struct.OccFace, ptr %25, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !126
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 %28, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  %32 = getelementptr inbounds %struct.OccFace, ptr %25, i64 %23, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !128
  %34 = call ptr @RE_findOrAddVlak(ptr noundef %31, i32 noundef %33) #17
  %35 = load ptr, ptr %14, align 8, !tbaa !125
  %36 = getelementptr inbounds [3 x float], ptr %35, i64 %23
  call fastcc void @occ_shade(ptr noundef nonnull %3, ptr noundef %29, ptr noundef %34, ptr noundef %36) #18
  %37 = load ptr, ptr %15, align 8, !tbaa !66
  %38 = load ptr, ptr %16, align 8, !tbaa !67
  %39 = call i32 %37(ptr noundef %38) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %17, label %41

41:                                               ; preds = %17, %22, %2
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_sum_occlusion(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !246 {
  %3 = alloca float, align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call fastcc void @zero_v3(ptr noundef nonnull %4) #18
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %11 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %9, %52
  %15 = phi i64 [ 0, %9 ], [ %55, %52 ]
  %16 = phi float [ 0.000000e+00, %9 ], [ %54, %52 ]
  %17 = phi float [ 0.000000e+00, %9 ], [ %53, %52 ]
  %18 = load i32, ptr %10, align 8, !tbaa !226
  %19 = trunc i64 %15 to i32
  %20 = shl nuw nsw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %15
  br i1 %22, label %39, label %24

24:                                               ; preds = %14
  %25 = load i32, ptr %23, align 8, !tbaa !39
  %26 = load ptr, ptr %11, align 8, !tbaa !122
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.OccFace, ptr %26, i64 %27
  call fastcc void @occ_face(ptr noundef %28, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #18
  %29 = load float, ptr %3, align 4, !tbaa !44
  %30 = load ptr, ptr %12, align 8, !tbaa !124
  %31 = getelementptr inbounds float, ptr %30, i64 %27
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = call float @llvm.fmuladd.f32(float %29, float %32, float %16)
  br i1 %7, label %37, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr %13, align 8, !tbaa !125
  %36 = getelementptr inbounds [3 x float], ptr %35, i64 %27
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef %36, float noundef %29) #18
  br label %37

37:                                               ; preds = %34, %24
  %38 = fadd float %17, %29
  br label %52

39:                                               ; preds = %14
  %40 = load ptr, ptr %23, align 8, !tbaa !39
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  call fastcc void @occ_sum_occlusion(ptr noundef %0, ptr noundef nonnull %40) #18
  %43 = getelementptr inbounds %struct.OccNode, ptr %40, i64 0, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !235
  %45 = getelementptr inbounds %struct.OccNode, ptr %40, i64 0, i32 4
  %46 = load float, ptr %45, align 8, !tbaa !224
  %47 = call float @llvm.fmuladd.f32(float %44, float %46, float %16)
  br i1 %7, label %50, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.OccNode, ptr %40, i64 0, i32 5
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %49, float noundef %44) #18
  br label %50

50:                                               ; preds = %48, %42
  %51 = fadd float %17, %44
  br label %52

52:                                               ; preds = %37, %50, %39
  %53 = phi float [ %38, %37 ], [ %51, %50 ], [ %17, %39 ]
  %54 = phi float [ %33, %37 ], [ %47, %50 ], [ %16, %39 ]
  %55 = add nuw nsw i64 %15, 1
  %56 = icmp eq i64 %55, 8
  br i1 %56, label %57, label %14, !llvm.loop !247

57:                                               ; preds = %52
  %58 = fcmp une float %53, 0.000000e+00
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = fdiv float %54, %53
  br i1 %7, label %68, label %61

61:                                               ; preds = %59
  %62 = fdiv float 1.000000e+00, %53
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %62) #18
  %63 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float %60, ptr %63, align 8, !tbaa !224
  br label %66

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float %54, ptr %65, align 8, !tbaa !224
  br i1 %7, label %70, label %66

66:                                               ; preds = %61, %64
  %67 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %67, ptr noundef nonnull %4) #18
  br label %70

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float %60, ptr %69, align 8, !tbaa !224
  br label %70

70:                                               ; preds = %68, %66, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @occ_build_sh_normalize(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !248 {
  %2 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !235
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 2
  %7 = fdiv float 1.000000e+00, %3
  tail call fastcc void @sh_mul(ptr noundef nonnull %6, float noundef %7) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %22
  %11 = phi i64 [ 0, %8 ], [ %23, %22 ]
  %12 = load i32, ptr %9, align 8, !tbaa !226
  %13 = trunc i64 %11 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 7, i64 %11
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @occ_build_sh_normalize(ptr noundef nonnull %19) #18
  br label %22

22:                                               ; preds = %10, %21, %17
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, 8
  br i1 %24, label %25, label %10, !llvm.loop !249

25:                                               ; preds = %22
  ret void
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cent_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_build_8_split(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !250 {
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #18
  %9 = load i32, ptr %6, align 4, !tbaa !40
  %10 = icmp eq i32 %9, %1
  %11 = icmp eq i32 %9, %2
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = add nsw i32 %2, %1
  %15 = sdiv i32 %14, 2
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i32 [ %9, %5 ], [ %15, %13 ]
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %1, i32 noundef %17, ptr noundef nonnull %7) #18
  %18 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %17, i32 noundef %2, ptr noundef nonnull %18) #18
  %19 = load i32, ptr %7, align 4, !tbaa !40
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %1, i32 noundef %19, ptr noundef nonnull %8) #18
  %20 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 1
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %19, i32 noundef %17, ptr noundef nonnull %20) #18
  %21 = load i32, ptr %18, align 4, !tbaa !40
  %22 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 2
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %17, i32 noundef %21, ptr noundef nonnull %22) #18
  %23 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 3
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %21, i32 noundef %2, ptr noundef nonnull %23) #18
  store i32 %1, ptr %3, align 4, !tbaa !40
  %24 = load i32, ptr %8, align 16, !tbaa !40
  %25 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %24, ptr %25, align 4, !tbaa !40
  %26 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %19, ptr %26, align 4, !tbaa !40
  %27 = load i32, ptr %20, align 4, !tbaa !40
  %28 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 %27, ptr %28, align 4, !tbaa !40
  %29 = getelementptr inbounds i32, ptr %3, i64 4
  store i32 %17, ptr %29, align 4, !tbaa !40
  %30 = load i32, ptr %22, align 8, !tbaa !40
  %31 = getelementptr inbounds i32, ptr %3, i64 5
  store i32 %30, ptr %31, align 4, !tbaa !40
  %32 = getelementptr inbounds i32, ptr %3, i64 6
  store i32 %21, ptr %32, align 4, !tbaa !40
  %33 = load i32, ptr %23, align 4, !tbaa !40
  %34 = getelementptr inbounds i32, ptr %3, i64 7
  store i32 %33, ptr %34, align 4, !tbaa !40
  br label %35

35:                                               ; preds = %16, %35
  %36 = phi i64 [ 0, %16 ], [ %37, %35 ]
  %37 = add nuw nsw i64 %36, 1
  %38 = getelementptr inbounds i32, ptr %3, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !40
  %40 = getelementptr inbounds i32, ptr %3, i64 %36
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds i32, ptr %4, i64 %36
  store i32 %42, ptr %43, align 4, !tbaa !40
  %44 = icmp eq i64 %37, 7
  br i1 %44, label %45, label %35, !llvm.loop !251

45:                                               ; preds = %35
  %46 = load i32, ptr %34, align 4, !tbaa !40
  %47 = sub nsw i32 %2, %46
  %48 = getelementptr inbounds i32, ptr %4, i64 7
  store i32 %47, ptr %48, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @exec_occ_build(ptr nocapture noundef readonly %0) #0 !PGOFuncName !252 {
  %2 = load ptr, ptr %0, align 8, !tbaa !229
  %3 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !232
  %7 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !233
  %9 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !234
  tail call fastcc void @occ_build_recursive(ptr noundef %2, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #18
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_node_from_face(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !253 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 1
  call fastcc void @occ_face(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 3
  store float 0.000000e+00, ptr %5, align 4, !tbaa !237
  %6 = load float, ptr %4, align 4, !tbaa !235
  %7 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 2
  call fastcc void @sh_from_disc(ptr noundef nonnull %3, float noundef %6, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @sh_add(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !254 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %2, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fadd float %7, %9
  %11 = getelementptr inbounds float, ptr %0, i64 %5
  store float %10, ptr %11, align 4, !tbaa !44
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %4, !llvm.loop !255

14:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !256 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %0, align 4, !tbaa !44
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_build_dco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !257 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %4, %32
  %10 = phi i64 [ 0, %4 ], [ %33, %32 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %11 = load i32, ptr %7, align 8, !tbaa !226
  %12 = trunc i64 %10 to i32
  %13 = shl nuw nsw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %8, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %10
  %19 = load i32, ptr %18, align 8, !tbaa !39
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.OccFace, ptr %17, i64 %20
  call fastcc void @occ_face(ptr noundef %21, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #18
  br label %27

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %10
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  call fastcc void @occ_build_dco(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %2, ptr noundef %3) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %24) #18
  br label %27

27:                                               ; preds = %26, %16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2) #18
  %28 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #18
  %29 = load float, ptr %3, align 4, !tbaa !44
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store float %28, ptr %3, align 4, !tbaa !44
  br label %32

32:                                               ; preds = %27, %31, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, 8
  br i1 %34, label %35, label %9, !llvm.loop !258

35:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_build_split(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !259 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %7 = call fastcc i32 @occ_find_bbox_axis(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = fadd float %10, %12
  %14 = fmul float %13, 5.000000e-01
  %15 = icmp slt i32 %1, %2
  br i1 %15, label %16, label %58

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %17, align 8, !tbaa !123
  br label %20

20:                                               ; preds = %16, %53
  %21 = phi ptr [ %19, %16 ], [ %54, %53 ]
  %22 = phi i32 [ %1, %16 ], [ %56, %53 ]
  %23 = phi i32 [ %2, %16 ], [ %55, %53 ]
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [3 x float], ptr %21, i64 %24, i64 %8
  %26 = load float, ptr %25, align 4, !tbaa !44
  %27 = fcmp ogt float %26, %14
  br i1 %27, label %28, label %51

28:                                               ; preds = %20
  %29 = add nsw i32 %23, -1
  %30 = load ptr, ptr %18, align 8, !tbaa !122
  %31 = getelementptr inbounds %struct.OccFace, ptr %30, i64 %24
  %32 = load i64, ptr %31, align 4
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds %struct.OccFace, ptr %30, i64 %33
  %35 = load i64, ptr %34, align 4
  store i64 %35, ptr %31, align 4
  %36 = load ptr, ptr %18, align 8, !tbaa !122
  %37 = getelementptr inbounds %struct.OccFace, ptr %36, i64 %33
  store i64 %32, ptr %37, align 4
  %38 = load ptr, ptr %17, align 8, !tbaa !123
  %39 = getelementptr inbounds [3 x float], ptr %38, i64 %24
  %40 = load float, ptr %39, align 4, !tbaa !44
  %41 = getelementptr inbounds [3 x float], ptr %38, i64 %33
  %42 = load float, ptr %41, align 4, !tbaa !44
  store float %42, ptr %39, align 4, !tbaa !44
  store float %40, ptr %41, align 4, !tbaa !44
  %43 = getelementptr inbounds [3 x float], ptr %38, i64 %24, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !44
  %45 = getelementptr inbounds [3 x float], ptr %38, i64 %33, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !44
  store float %46, ptr %43, align 4, !tbaa !44
  store float %44, ptr %45, align 4, !tbaa !44
  %47 = getelementptr inbounds [3 x float], ptr %38, i64 %24, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !44
  %49 = getelementptr inbounds [3 x float], ptr %38, i64 %33, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !44
  store float %50, ptr %47, align 4, !tbaa !44
  store float %48, ptr %49, align 4, !tbaa !44
  br label %53

51:                                               ; preds = %20
  %52 = add nsw i32 %22, 1
  br label %53

53:                                               ; preds = %51, %28
  %54 = phi ptr [ %38, %28 ], [ %21, %51 ]
  %55 = phi i32 [ %29, %28 ], [ %23, %51 ]
  %56 = phi i32 [ %22, %28 ], [ %52, %51 ]
  %57 = icmp slt i32 %56, %55
  br i1 %57, label %20, label %58, !llvm.loop !260

58:                                               ; preds = %53, %4
  %59 = phi i32 [ %2, %4 ], [ %55, %53 ]
  store i32 %59, ptr %3, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @occ_find_bbox_axis(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !261 {
  %6 = getelementptr inbounds float, ptr %3, i64 2
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !44
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %4, i64 2
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !44
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 4, !tbaa !44
  %8 = icmp slt i32 %1, %2
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 1
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !123
  %15 = getelementptr inbounds [3 x float], ptr %14, i64 %13
  tail call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %15) #17
  %16 = add nsw i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %12, !llvm.loop !262

19:                                               ; preds = %12, %5
  br label %20

20:                                               ; preds = %19, %20
  %21 = phi i64 [ %33, %20 ], [ 0, %19 ]
  %22 = phi i32 [ %32, %20 ], [ 0, %19 ]
  %23 = phi float [ %30, %20 ], [ -1.000000e+00, %19 ]
  %24 = getelementptr inbounds float, ptr %4, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !44
  %26 = getelementptr inbounds float, ptr %3, i64 %21
  %27 = load float, ptr %26, align 4, !tbaa !44
  %28 = fsub float %25, %27
  %29 = fcmp ogt float %28, %23
  %30 = select i1 %29, float %28, float %23
  %31 = trunc i64 %21 to i32
  %32 = select i1 %29, i32 %31, i32 %22
  %33 = add nuw nsw i64 %21, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %20, !llvm.loop !263

35:                                               ; preds = %20
  ret i32 %32
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @sh_from_disc(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !PGOFuncName !264 {
  %4 = alloca [9 x float], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %5 = load float, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !44
  store float 0x3FD20DD820000000, ptr %4, align 16, !tbaa !44
  %8 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 1
  %9 = fmul float %5, 0x3FF17B13A0000000
  %10 = insertelement <4 x float> <float 0x3FDF454580000000, float 0x3FDF454580000000, float 0x3FDF454580000000, float poison>, float %9, i64 3
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = insertelement <4 x float> %11, float %5, i64 2
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %14 = fmul <4 x float> %10, %13
  store <4 x float> %14, ptr %8, align 4, !tbaa !44
  %15 = extractelement <2 x float> %7, i64 0
  %16 = fmul float %15, 0x3FF17B13A0000000
  %17 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 5
  %18 = extractelement <2 x float> %7, i64 1
  %19 = fmul float %18, 3.000000e+00
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %18, float -1.000000e+00)
  %21 = fneg float %15
  %22 = fmul float %15, %21
  %23 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %22)
  %24 = insertelement <4 x float> poison, float %16, i64 0
  %25 = insertelement <4 x float> %24, float %20, i64 1
  %26 = insertelement <4 x float> %25, float %9, i64 2
  %27 = insertelement <4 x float> %26, float %23, i64 3
  %28 = shufflevector <4 x float> <float poison, float 0x3FD42F61E0000000, float poison, float 0x3FE17B13A0000000>, <4 x float> %11, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %30 = fmul <4 x float> %27, %29
  store <4 x float> %30, ptr %17, align 4, !tbaa !44
  call fastcc void @sh_mul(ptr noundef nonnull %4, float noundef %1) #18
  call fastcc void @sh_copy(ptr noundef %2, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @sh_mul(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !265 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds float, ptr %0, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = fmul float %6, %1
  store float %7, ptr %5, align 4, !tbaa !44
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 9
  br i1 %9, label %10, label %3, !llvm.loop !266

10:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sh_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !267 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !268 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_shade(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !269 {
  %5 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !218
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, float 0x3FD5555560000000, float 5.000000e-01
  %11 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 23
  store float %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 24
  store float %10, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !219
  %14 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !220
  %18 = fsub float 1.000000e+00, %10
  %19 = fsub float %18, %10
  %20 = load float, ptr %17, align 4, !tbaa !44
  %21 = load float, ptr %13, align 4, !tbaa !44
  %22 = fmul float %10, %21
  %23 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %22)
  %24 = load float, ptr %15, align 4, !tbaa !44
  %25 = tail call float @llvm.fmuladd.f32(float %10, float %24, float %23)
  %26 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29
  store float %25, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds float, ptr %17, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = getelementptr inbounds float, ptr %13, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = fmul float %10, %30
  %32 = tail call float @llvm.fmuladd.f32(float %19, float %28, float %31)
  %33 = getelementptr inbounds float, ptr %15, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !44
  %35 = tail call float @llvm.fmuladd.f32(float %10, float %34, float %32)
  %36 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 1
  store float %35, ptr %36, align 4, !tbaa !44
  %37 = getelementptr inbounds float, ptr %17, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !44
  %39 = getelementptr inbounds float, ptr %13, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !44
  %41 = fmul float %10, %40
  %42 = tail call float @llvm.fmuladd.f32(float %19, float %38, float %41)
  %43 = getelementptr inbounds float, ptr %15, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !44
  %45 = tail call float @llvm.fmuladd.f32(float %10, float %44, float %42)
  %46 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 29, i64 2
  store float %45, ptr %46, align 8, !tbaa !44
  tail call void @shade_input_set_triangle_i(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #17
  %47 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef nonnull %26) #18
  tail call fastcc void @normalize_v3(ptr noundef nonnull %47) #18
  %48 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 107
  %49 = load i32, ptr %48, align 4, !tbaa !270
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !270
  %51 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 103
  store i32 0, ptr %51, align 4, !tbaa !151
  %52 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 104
  store i32 0, ptr %52, align 8, !tbaa !152
  tail call void @shade_input_set_normals(ptr noundef nonnull %5) #17
  %53 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 7
  %54 = load i16, ptr %53, align 8, !tbaa !271
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %4
  tail call void @shade_input_flip_normals(ptr noundef nonnull %5) #17
  br label %57

57:                                               ; preds = %56, %4
  %58 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 6
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %26, ptr noundef nonnull %58, float noundef 0xBF1A36E2E0000000) #18
  %59 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !176
  %61 = getelementptr inbounds %struct.ObjectRen, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !272
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 55
  %66 = load i16, ptr %65, align 8, !tbaa !273
  %67 = and i16 %66, 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 16
  tail call fastcc void @negate_v3(ptr noundef nonnull %70) #18
  %71 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 17
  tail call fastcc void @negate_v3(ptr noundef nonnull %71) #18
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 66
  tail call fastcc void @negate_v3(ptr noundef nonnull %72) #18
  br label %73

73:                                               ; preds = %69, %64, %57
  tail call void @shade_input_init_material(ptr noundef nonnull %5) #17
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %5) #17
  %74 = load ptr, ptr %5, align 8, !tbaa !159
  %75 = getelementptr inbounds %struct.Material, ptr %74, i64 0, i32 103
  %76 = load ptr, ptr %75, align 8, !tbaa !276
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Material, ptr %74, i64 0, i32 77
  %80 = load i8, ptr %79, align 1, !tbaa !277
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = tail call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %76, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %84 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !105
  store ptr %85, ptr %5, align 8, !tbaa !159
  br label %87

86:                                               ; preds = %78, %73
  tail call void @shade_material_loop(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  br label %87

87:                                               ; preds = %86, %82
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !278 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !279 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !280 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #17
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !281 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #14 !PGOFuncName !282 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @occ_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !283 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %3) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %4) #18
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef 0x3F1A36E2E0000000) #18
  %14 = icmp ne ptr %7, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %12) #18
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 9
  %18 = load float, ptr %17, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 10
  %20 = load float, ptr %19, align 4, !tbaa !118
  call fastcc void @zero_v3(ptr noundef nonnull %9) #18
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  store ptr %25, ptr %23, align 8, !tbaa !35
  %26 = fcmp une float %20, 0.000000e+00
  %27 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %28 = icmp eq ptr %2, null
  %29 = getelementptr inbounds %struct.OccFace, ptr %2, i64 0, i32 1
  %30 = select i1 %14, i1 true, i1 %26
  %31 = fcmp oeq float %20, 0.000000e+00
  %32 = icmp eq ptr %6, null
  %33 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 4
  %34 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %36 = getelementptr inbounds float, ptr %7, i64 2
  br label %37

37:                                               ; preds = %166, %16
  %38 = phi float [ %167, %166 ], [ 0.000000e+00, %16 ]
  %39 = phi i32 [ %168, %166 ], [ 1, %16 ]
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %37, %62
  %42 = phi i64 [ %40, %37 ], [ %45, %62 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %169, label %44

44:                                               ; preds = %41
  %45 = add nsw i64 %42, -1
  %46 = getelementptr inbounds ptr, ptr %23, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %47, ptr noundef nonnull %11) #18
  %48 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #18
  %49 = fadd float %48, 0x3C9CD2B2A0000000
  %50 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !235
  %52 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !237
  %54 = fcmp ogt float %51, %53
  %55 = select i1 %54, float %51, float %53
  %56 = fmul float %18, %49
  %57 = fcmp ogt float %56, %55
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = trunc i64 %45 to i32
  %60 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 6
  br label %92

61:                                               ; preds = %44
  br i1 %26, label %62, label %66

62:                                               ; preds = %61
  %63 = call float @llvm.fmuladd.f32(float %20, float %49, float 1.000000e+00)
  %64 = fdiv float 1.000000e+00, %63
  %65 = fcmp olt float %64, 0x3F847AE140000000
  br i1 %65, label %41, label %66, !llvm.loop !284

66:                                               ; preds = %61, %62
  %67 = phi float [ %64, %62 ], [ 1.000000e+00, %61 ]
  %68 = trunc i64 %45 to i32
  %69 = call float @sqrtf(float noundef %49) #17
  %70 = fdiv float 1.000000e+00, %69
  %71 = call fastcc float @occ_solid_angle(ptr noundef nonnull %47, ptr noundef nonnull %10, float noundef %49, float noundef %70, ptr noundef nonnull %12) #18
  br i1 %32, label %75, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 5
  %74 = fmul float %67, %71
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %73, float noundef %74) #18
  br label %75

75:                                               ; preds = %72, %66
  %76 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 4
  %77 = load float, ptr %76, align 8, !tbaa !224
  %78 = fmul float %71, %77
  br i1 %14, label %79, label %90

79:                                               ; preds = %75
  %80 = fneg float %78
  %81 = fmul float %70, %80
  %82 = load <2 x float>, ptr %10, align 8, !tbaa !44
  %83 = load <2 x float>, ptr %7, align 4, !tbaa !44
  %84 = insertelement <2 x float> poison, float %81, i64 0
  %85 = shufflevector <2 x float> %84, <2 x float> poison, <2 x i32> zeroinitializer
  %86 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %85, <2 x float> %82, <2 x float> %83)
  store <2 x float> %86, ptr %7, align 4, !tbaa !44
  %87 = load float, ptr %35, align 8, !tbaa !44
  %88 = load float, ptr %36, align 4, !tbaa !44
  %89 = call float @llvm.fmuladd.f32(float %81, float %87, float %88)
  store float %89, ptr %36, align 4, !tbaa !44
  br label %90

90:                                               ; preds = %79, %75
  %91 = call float @llvm.fmuladd.f32(float %78, float %67, float %38)
  br label %166

92:                                               ; preds = %58, %160
  %93 = phi i64 [ 0, %58 ], [ %164, %160 ]
  %94 = phi i32 [ %59, %58 ], [ %163, %160 ]
  %95 = phi float [ %38, %58 ], [ %162, %160 ]
  %96 = phi float [ %49, %58 ], [ %161, %160 ]
  %97 = load i32, ptr %60, align 8, !tbaa !226
  %98 = trunc i64 %93 to i32
  %99 = shl nuw nsw i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.OccNode, ptr %47, i64 0, i32 7, i64 %93
  br i1 %101, label %153, label %103

103:                                              ; preds = %92
  %104 = load i32, ptr %102, align 8, !tbaa !39
  %105 = load ptr, ptr %27, align 8, !tbaa !122
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.OccFace, ptr %105, i64 %106
  br i1 %28, label %117, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %107, align 4, !tbaa !126
  %110 = load i32, ptr %2, align 4, !tbaa !126
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.OccFace, ptr %105, i64 %106, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !128
  %115 = load i32, ptr %29, align 4, !tbaa !128
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %160, label %117

117:                                              ; preds = %112, %108, %103
  br i1 %30, label %118, label %125

118:                                              ; preds = %117
  call fastcc void @occ_face(ptr noundef %107, ptr noundef nonnull %13, ptr noundef null, ptr noundef null) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %11) #18
  %119 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #18
  %120 = fadd float %119, 0x3C9CD2B2A0000000
  %121 = call float @llvm.fmuladd.f32(float %20, float %120, float 1.000000e+00)
  %122 = fdiv float 1.000000e+00, %121
  %123 = select i1 %31, float 1.000000e+00, float %122
  %124 = fcmp olt float %123, 0x3F847AE140000000
  br i1 %124, label %160, label %125

125:                                              ; preds = %117, %118
  %126 = phi float [ %123, %118 ], [ 1.000000e+00, %117 ]
  %127 = phi float [ %120, %118 ], [ %96, %117 ]
  %128 = call fastcc float @occ_form_factor(ptr noundef %107, ptr noundef nonnull %11, ptr noundef nonnull %12) #18
  br i1 %32, label %133, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %33, align 8, !tbaa !125
  %131 = getelementptr inbounds [3 x float], ptr %130, i64 %106
  %132 = fmul float %126, %128
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %9, ptr noundef %131, float noundef %132) #18
  br label %133

133:                                              ; preds = %129, %125
  %134 = load ptr, ptr %34, align 8, !tbaa !124
  %135 = getelementptr inbounds float, ptr %134, i64 %106
  %136 = load float, ptr %135, align 4, !tbaa !44
  %137 = fmul float %128, %136
  br i1 %14, label %138, label %151

138:                                              ; preds = %133
  %139 = call float @sqrtf(float noundef %127) #17
  %140 = fdiv float 1.000000e+00, %139
  %141 = fneg float %137
  %142 = fmul float %140, %141
  %143 = load <2 x float>, ptr %10, align 8, !tbaa !44
  %144 = load <2 x float>, ptr %7, align 4, !tbaa !44
  %145 = insertelement <2 x float> poison, float %142, i64 0
  %146 = shufflevector <2 x float> %145, <2 x float> poison, <2 x i32> zeroinitializer
  %147 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %146, <2 x float> %143, <2 x float> %144)
  store <2 x float> %147, ptr %7, align 4, !tbaa !44
  %148 = load float, ptr %35, align 8, !tbaa !44
  %149 = load float, ptr %36, align 4, !tbaa !44
  %150 = call float @llvm.fmuladd.f32(float %142, float %148, float %149)
  store float %150, ptr %36, align 4, !tbaa !44
  br label %151

151:                                              ; preds = %138, %133
  %152 = call float @llvm.fmuladd.f32(float %137, float %126, float %95)
  br label %160

153:                                              ; preds = %92
  %154 = load ptr, ptr %102, align 8, !tbaa !39
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = add nsw i32 %94, 1
  %158 = sext i32 %94 to i64
  %159 = getelementptr inbounds ptr, ptr %23, i64 %158
  store ptr %154, ptr %159, align 8, !tbaa !35
  br label %160

160:                                              ; preds = %151, %112, %156, %153, %118
  %161 = phi float [ %96, %112 ], [ %120, %118 ], [ %127, %151 ], [ %96, %156 ], [ %96, %153 ]
  %162 = phi float [ %95, %112 ], [ %95, %118 ], [ %152, %151 ], [ %95, %156 ], [ %95, %153 ]
  %163 = phi i32 [ %94, %112 ], [ %94, %118 ], [ %94, %151 ], [ %157, %156 ], [ %94, %153 ]
  %164 = add nuw nsw i64 %93, 1
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %166, label %92, !llvm.loop !285

166:                                              ; preds = %160, %90
  %167 = phi float [ %91, %90 ], [ %162, %160 ]
  %168 = phi i32 [ %68, %90 ], [ %163, %160 ]
  br label %37, !llvm.loop !284

169:                                              ; preds = %41
  %170 = icmp eq ptr %5, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %169
  store float %38, ptr %5, align 4, !tbaa !44
  br label %172

172:                                              ; preds = %171, %169
  br i1 %32, label %174, label %173

173:                                              ; preds = %172
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #18
  br label %174

174:                                              ; preds = %173, %172
  br i1 %14, label %175, label %176

175:                                              ; preds = %174
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #18
  br label %176

176:                                              ; preds = %175, %174
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @occ_solid_angle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #7 !PGOFuncName !286 {
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %7 = load <2 x float>, ptr %1, align 4, !tbaa !44
  %8 = fneg <2 x float> %7
  %9 = insertelement <2 x float> poison, float %3, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, %8
  store <2 x float> %11, ptr %6, align 8, !tbaa !44
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = fneg float %13
  %15 = fmul float %14, %3
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %15, ptr %16, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 2
  %18 = call fastcc float @sh_eval(ptr noundef nonnull %17, ptr noundef nonnull %6) #18
  %19 = tail call fastcc float @dot_v3v3(ptr noundef %4, ptr noundef nonnull %1) #18
  %20 = fmul float %19, %3
  %21 = fcmp olt float %18, 0.000000e+00
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = fcmp ogt float %18, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %5, %22, %24
  %26 = phi float [ 1.000000e+00, %24 ], [ %18, %22 ], [ 0.000000e+00, %5 ]
  %27 = fcmp olt float %20, 0.000000e+00
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = fcmp ogt float %20, 1.000000e+00
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %25, %28, %30
  %32 = phi float [ 1.000000e+00, %30 ], [ %20, %28 ], [ 0.000000e+00, %25 ]
  %33 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !235
  %35 = fmul float %26, %34
  %36 = fmul float %32, %35
  %37 = tail call float @llvm.fmuladd.f32(float %34, float 0x3FD45F3060000000, float %2)
  %38 = fdiv float %36, %37
  %39 = fmul float %38, 0x3FD45F3060000000
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret float %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @occ_form_factor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !287 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %12 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !156
  %13 = load i32, ptr %0, align 4, !tbaa !126
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.OccFace, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !128
  %19 = tail call ptr @RE_findOrAddVlak(ptr noundef %16, i32 noundef %18) #17
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.VlakRen, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.VlakRen, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !220
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %24) #18
  %25 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14, i32 11
  %26 = load i16, ptr %25, align 8, !tbaa !222
  %27 = and i16 %26, 3
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %30, ptr noundef nonnull %4) #17
  call void @mul_m4_v3(ptr noundef nonnull %30, ptr noundef nonnull %5) #17
  call void @mul_m4_v3(ptr noundef nonnull %30, ptr noundef nonnull %6) #17
  br label %31

31:                                               ; preds = %29, %3
  %32 = call zeroext i8 @form_factor_visible_quad(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call float @form_factor_quad(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %36 = fadd float %35, 0.000000e+00
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi float [ %36, %34 ], [ 0.000000e+00, %31 ]
  %39 = getelementptr inbounds %struct.VlakRen, ptr %19, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !218
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %40) #18
  %43 = load i16, ptr %25, align 8, !tbaa !222
  %44 = and i16 %43, 3
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %7) #17
  br label %48

48:                                               ; preds = %46, %42
  %49 = call zeroext i8 @form_factor_visible_quad(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call float @form_factor_quad(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %53 = fadd float %38, %52
  br label %54

54:                                               ; preds = %48, %51, %37
  %55 = phi float [ %53, %51 ], [ %38, %48 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret float %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @sh_eval(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !288 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 8
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fmul float %9, 0x3FDB7570C0000000
  %11 = fneg float %5
  %12 = fmul float %5, %11
  %13 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %12)
  %14 = fmul float %13, %10
  %15 = getelementptr inbounds float, ptr %0, i64 6
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fmul float %16, 0x3FE7C7AE20000000
  %18 = fmul float %7, %17
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %7, float %14)
  %20 = load float, ptr %0, align 4, !tbaa !44
  %21 = tail call float @llvm.fmuladd.f32(float %20, float 0x3FEC5BF8C0000000, float %19)
  %22 = tail call float @llvm.fmuladd.f32(float %16, float 0xBFCFB4E540000000, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 4
  %24 = load float, ptr %23, align 4, !tbaa !44
  %25 = fmul float %3, %24
  %26 = getelementptr inbounds float, ptr %0, i64 7
  %27 = load float, ptr %26, align 4, !tbaa !44
  %28 = fmul float %3, %27
  %29 = fmul float %7, %28
  %30 = tail call float @llvm.fmuladd.f32(float %25, float %5, float %29)
  %31 = getelementptr inbounds float, ptr %0, i64 5
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = fmul float %5, %32
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %7, float %30)
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 0x3FEB7570C0000000, float %22)
  %36 = getelementptr inbounds float, ptr %0, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !44
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !44
  %40 = fmul float %5, %39
  %41 = tail call float @llvm.fmuladd.f32(float %37, float %3, float %40)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !44
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %7, float %41)
  %45 = tail call float @llvm.fmuladd.f32(float %44, float 0x3FF05F8D20000000, float %35)
  ret float %45
}

; Function Attrs: optsize
declare zeroext i8 @form_factor_visible_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @form_factor_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_strandren_get_face(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @find_occ_sample(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !289 {
  %4 = getelementptr inbounds %struct.OcclusionCache, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !166
  %6 = freeze i32 %5
  %7 = sub i32 %1, %6
  %8 = getelementptr inbounds %struct.OcclusionCache, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !164
  %10 = freeze i32 %9
  %11 = sub i32 %2, %10
  %12 = getelementptr inbounds %struct.OcclusionCache, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !163
  %14 = srem i32 %7, %13
  %15 = sub nsw i32 %7, %14
  %16 = srem i32 %11, %13
  %17 = sub nsw i32 %11, %16
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.OcclusionCache, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !165
  %22 = icmp sge i32 %15, %21
  %23 = icmp slt i32 %17, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.OcclusionCache, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !197
  %28 = icmp slt i32 %17, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !161
  %31 = mul nsw i32 %21, %17
  %32 = add nsw i32 %31, %15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %30, i64 %33
  br label %35

35:                                               ; preds = %3, %19, %25, %29
  %36 = phi ptr [ %34, %29 ], [ null, %25 ], [ null, %19 ], [ null, %3 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 !PGOFuncName !290 {
  %5 = tail call fastcc float @min_fff(float noundef %0, float noundef %1, float noundef %2) #18
  %6 = tail call fastcc float @min_ff(float noundef %5, float noundef %3) #18
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 !PGOFuncName !291 {
  %5 = tail call fastcc float @max_fff(float noundef %0, float noundef %1, float noundef %2) #18
  %6 = tail call fastcc float @max_ff(float noundef %5, float noundef %3) #18
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !292 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !293 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #18
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #18
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !294 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 74, !39, i64 92, i64 4, !40, i64 96, i64 2, !42, i64 98, i64 2, !42, i64 100, i64 2, !42, i64 102, i64 2, !42, i64 104, i64 1, !39, i64 112, i64 8, !35, i64 120, i64 8, !35, i64 128, i64 8, !35, i64 136, i64 8, !35, i64 144, i64 4, !40, i64 148, i64 4, !40, i64 152, i64 4, !40, i64 156, i64 4, !40, i64 160, i64 4, !40, i64 164, i64 4, !40, i64 168, i64 4, !40, i64 172, i64 4, !44, i64 176, i64 4, !44, i64 180, i64 4, !44, i64 184, i64 4, !44, i64 188, i64 4, !44, i64 192, i64 4, !44, i64 196, i64 4, !44, i64 200, i64 4, !40, i64 204, i64 4, !40, i64 208, i64 4, !40, i64 212, i64 4, !40, i64 216, i64 4, !44, i64 220, i64 4, !44, i64 224, i64 4, !44, i64 228, i64 4, !44, i64 232, i64 4, !44, i64 236, i64 4, !44, i64 240, i64 12, !39, i64 252, i64 36, !39, i64 288, i64 64, !39, i64 352, i64 64, !39, i64 416, i64 64, !39, i64 480, i64 64, !39, i64 544, i64 4, !44, i64 548, i64 4, !44, i64 552, i64 8, !35, i64 560, i64 256, !39, i64 816, i64 256, !39, i64 1072, i64 8, !35, i64 1080, i64 4, !39, i64 1088, i64 8, !35, i64 1096, i64 8, !35, i64 1104, i64 1, !39, i64 1105, i64 1, !39, i64 1106, i64 1, !39, i64 1107, i64 1, !39, i64 1108, i64 1, !39, i64 1109, i64 1, !39, i64 1110, i64 1, !39, i64 1111, i64 1, !39, i64 1112, i64 2, !42, i64 1114, i64 2, !42, i64 1116, i64 4, !44, i64 1120, i64 1, !39, i64 1121, i64 1, !39, i64 1122, i64 6, !39, i64 1128, i64 4, !40, i64 1132, i64 4, !40, i64 1136, i64 64, !39, i64 1200, i64 64, !39, i64 1264, i64 4, !44, i64 1268, i64 4, !44, i64 1272, i64 8, !35, i64 1280, i64 8, !35, i64 1288, i64 64, !39, i64 1352, i64 8, !35, i64 1360, i64 8, !35, i64 1368, i64 4, !40, i64 1372, i64 4, !40, i64 1376, i64 4, !40, i64 1380, i64 4, !40, i64 1384, i64 4, !40, i64 1388, i64 4, !40, i64 1392, i64 4, !40, i64 1396, i64 4, !40, i64 1400, i64 4, !40, i64 1404, i64 4, !40, i64 1408, i64 4, !40, i64 1412, i64 4, !40, i64 1416, i64 2, !42, i64 1418, i64 2, !42, i64 1420, i64 4, !40, i64 1424, i64 4, !40, i64 1428, i64 4, !40, i64 1432, i64 4, !40, i64 1436, i64 4, !40, i64 1440, i64 4, !40, i64 1444, i64 4, !40, i64 1448, i64 4, !40, i64 1452, i64 4, !40, i64 1456, i64 4, !40, i64 1460, i64 4, !40, i64 1464, i64 4, !44, i64 1468, i64 4, !40, i64 1472, i64 4, !40, i64 1476, i64 4, !40, i64 1480, i64 4, !40, i64 1484, i64 4, !40, i64 1488, i64 4, !40, i64 1492, i64 4, !40, i64 1496, i64 8, !35, i64 1504, i64 4, !40, i64 1508, i64 4, !40, i64 1512, i64 4, !40, i64 1516, i64 4, !44, i64 1520, i64 4, !40, i64 1524, i64 4, !40, i64 1528, i64 4, !40, i64 1532, i64 4, !40, i64 1536, i64 2, !42, i64 1538, i64 2, !42, i64 1540, i64 4, !44, i64 1544, i64 4, !44, i64 1548, i64 4, !44, i64 1552, i64 4, !44, i64 1556, i64 4, !44, i64 1560, i64 2, !42, i64 1562, i64 2, !42, i64 1564, i64 2, !42, i64 1566, i64 2, !42, i64 1568, i64 2, !42, i64 1570, i64 2, !42, i64 1572, i64 4, !40, i64 1576, i64 2, !42, i64 1578, i64 2, !42, i64 1580, i64 2, !42, i64 1582, i64 2, !42, i64 1584, i64 2, !42, i64 1586, i64 2, !42, i64 1588, i64 4, !40, i64 1592, i64 4, !40, i64 1596, i64 2, !42, i64 1598, i64 2, !42, i64 1600, i64 4, !40, i64 1604, i64 4, !40, i64 1608, i64 2, !42, i64 1610, i64 2, !42, i64 1612, i64 2, !42, i64 1614, i64 2, !42, i64 1616, i64 2, !42, i64 1618, i64 1, !39, i64 1619, i64 1, !39, i64 1620, i64 4, !40, i64 1624, i64 4, !40, i64 1628, i64 4, !40, i64 1632, i64 2, !42, i64 1634, i64 2, !42, i64 1636, i64 2, !42, i64 1638, i64 2, !42, i64 1640, i64 2, !42, i64 1642, i64 2, !42, i64 1644, i64 2, !42, i64 1646, i64 2, !42, i64 1648, i64 4, !44, i64 1652, i64 4, !44, i64 1656, i64 4, !44, i64 1660, i64 4, !44, i64 1664, i64 4, !44, i64 1668, i64 4, !44, i64 1672, i64 4, !44, i64 1676, i64 4, !44, i64 1680, i64 4, !40, i64 1684, i64 4, !40, i64 1688, i64 4, !40, i64 1692, i64 4, !40, i64 1696, i64 8, !35, i64 1704, i64 8, !35, i64 1712, i64 2, !42, i64 1714, i64 2, !42, i64 1716, i64 4, !44, i64 1720, i64 4, !44, i64 1724, i64 4, !44, i64 1728, i64 4, !44, i64 1732, i64 4, !40, i64 1736, i64 4, !44, i64 1740, i64 4, !44, i64 1744, i64 4, !44, i64 1748, i64 4, !44, i64 1752, i64 2, !42, i64 1754, i64 2, !42, i64 1756, i64 2, !42, i64 1758, i64 2, !42, i64 1760, i64 2, !42, i64 1762, i64 2, !42, i64 1764, i64 4, !44, i64 1768, i64 4, !44, i64 1772, i64 2, !42, i64 1774, i64 2, !42, i64 1776, i64 4, !44, i64 1780, i64 4, !44, i64 1784, i64 1024, !39, i64 2808, i64 4, !40, i64 2812, i64 2, !42, i64 2814, i64 2, !42, i64 2816, i64 768, !39, i64 3584, i64 16, !39, i64 3600, i64 16, !39, i64 3616, i64 1, !39, i64 3617, i64 1, !39, i64 3618, i64 1, !39, i64 3619, i64 5, !39, i64 3624, i64 4, !40, i64 3628, i64 2, !42, i64 3630, i64 2, !42, i64 3632, i64 4, !44, i64 3636, i64 4, !44, i64 3640, i64 2, !42, i64 3642, i64 2, !42, i64 3644, i64 4, !44, i64 3648, i64 2, !42, i64 3650, i64 2, !42, i64 3652, i64 4, !40, i64 3656, i64 2, !42, i64 3658, i64 2, !42, i64 3660, i64 2, !42, i64 3662, i64 2, !42, i64 3664, i64 4, !44, i64 3668, i64 4, !44, i64 3672, i64 8, !35, i64 3680, i64 4, !40, i64 3684, i64 4, !44, i64 3688, i64 32, !39, i64 3720, i64 1, !39, i64 3721, i64 1, !39, i64 3722, i64 1, !39, i64 3723, i64 1, !39, i64 3724, i64 1, !39, i64 3725, i64 1, !39, i64 3726, i64 1, !39, i64 3727, i64 1, !39, i64 3728, i64 2, !42, i64 3730, i64 2, !42, i64 3732, i64 4, !44, i64 3736, i64 1, !39, i64 3737, i64 1, !39, i64 3738, i64 6, !39, i64 3744, i64 4, !40, i64 3748, i64 4, !40, i64 3752, i64 64, !39, i64 3816, i64 64, !39, i64 3880, i64 4, !44, i64 3884, i64 4, !44, i64 3888, i64 8, !35, i64 3896, i64 8, !35, i64 3904, i64 64, !39, i64 3968, i64 1024, !39, i64 4992, i64 2, !42, i64 4994, i64 2, !42, i64 4996, i64 2, !42, i64 4998, i64 2, !42, i64 5000, i64 4, !44, i64 5004, i64 4, !44, i64 5008, i64 3, !39, i64 5011, i64 1, !39, i64 5012, i64 1, !39, i64 5013, i64 3, !39, i64 5016, i64 64, !39, i64 5080, i64 4, !40, i64 5084, i64 4, !40, i64 5088, i64 8, !35, i64 5096, i64 8, !35, i64 5104, i64 8, !35, i64 5112, i64 8, !35, i64 5120, i64 66, !39, i64 5186, i64 2, !42, i64 5188, i64 4, !40, i64 5192, i64 4, !40, i64 5196, i64 4, !40, i64 5200, i64 8, !35, i64 5208, i64 8, !35, i64 5216, i64 2, !42, i64 5218, i64 2, !42, i64 5220, i64 2, !42, i64 5222, i64 2, !42, i64 5224, i64 4, !44, i64 5228, i64 4, !44, i64 5232, i64 4, !44, i64 5236, i64 4, !44, i64 5240, i64 4, !44, i64 5244, i64 4, !44, i64 5248, i64 4, !44, i64 5252, i64 4, !44, i64 5256, i64 4, !44, i64 5260, i64 4, !44, i64 5264, i64 4, !44, i64 5268, i64 4, !44, i64 5272, i64 4, !44, i64 5276, i64 4, !44, i64 5280, i64 4, !44, i64 5284, i64 4, !44, i64 5288, i64 2, !42, i64 5290, i64 2, !42, i64 5292, i64 2, !42, i64 5294, i64 2, !42, i64 5296, i64 2, !42, i64 5298, i64 2, !42, i64 5300, i64 2, !42, i64 5302, i64 2, !42, i64 5304, i64 4, !44, i64 5308, i64 4, !44, i64 5312, i64 4, !44, i64 5316, i64 4, !44, i64 5320, i64 4, !44, i64 5324, i64 4, !44, i64 5328, i64 4, !44, i64 5332, i64 4, !44, i64 5336, i64 4, !44, i64 5340, i64 4, !44, i64 5344, i64 4, !44, i64 5348, i64 4, !44, i64 5352, i64 2, !42, i64 5354, i64 2, !42, i64 5356, i64 2, !42, i64 5358, i64 2, !42, i64 5360, i64 4, !44, i64 5364, i64 4, !44, i64 5368, i64 4, !44, i64 5372, i64 4, !44, i64 5376, i64 2, !42, i64 5378, i64 2, !42, i64 5380, i64 2, !42, i64 5382, i64 2, !42, i64 5384, i64 4, !44, i64 5388, i64 4, !44, i64 5392, i64 4, !44, i64 5396, i64 4, !44, i64 5400, i64 4, !44, i64 5404, i64 4, !44, i64 5408, i64 4, !44, i64 5412, i64 2, !42, i64 5414, i64 2, !42, i64 5416, i64 2, !42, i64 5418, i64 2, !42, i64 5420, i64 2, !42, i64 5422, i64 2, !42, i64 5424, i64 8, !35, i64 5432, i64 8, !35, i64 5440, i64 8, !35, i64 5448, i64 144, !39, i64 5592, i64 2, !42, i64 5594, i64 2, !42, i64 5596, i64 4, !39, i64 5600, i64 8, !35, i64 5608, i64 8, !35, i64 5616, i64 8, !35, i64 5624, i64 4, !40, i64 5628, i64 4, !40, i64 5632, i64 8, !35, i64 5640, i64 8, !35, i64 5648, i64 8, !35, i64 5656, i64 8, !35, i64 5664, i64 8, !35, i64 5672, i64 8, !35, i64 5680, i64 4, !44, i64 5688, i64 8, !35, i64 5696, i64 8, !35, i64 5704, i64 8, !35, i64 5712, i64 4, !44, i64 5716, i64 4, !44, i64 5720, i64 4, !40, i64 5724, i64 4, !40, i64 5728, i64 4, !40, i64 5732, i64 4, !40, i64 5736, i64 4, !40, i64 5744, i64 8, !35, i64 5752, i64 8, !35, i64 5760, i64 8, !35, i64 5768, i64 8, !35, i64 5776, i64 8, !35, i64 5784, i64 8, !35, i64 5792, i64 8, !35, i64 5800, i64 8, !35, i64 5808, i64 8, !35, i64 5816, i64 8, !35, i64 5824, i64 4, !40, i64 5832, i64 8, !35, i64 5840, i64 8, !35, i64 5848, i64 8, !35, i64 5856, i64 8, !35, i64 5864, i64 8, !35, i64 5872, i64 8, !35, i64 5880, i64 8, !35, i64 5888, i64 8, !35, i64 5896, i64 8, !35, i64 5904, i64 8, !35, i64 5912, i64 8, !35, i64 5920, i64 8, !35, i64 5928, i64 8, !35, i64 5936, i64 8, !35, i64 5944, i64 8, !35, i64 5952, i64 8, !35, i64 5960, i64 8, !35, i64 5968, i64 8, !35, i64 5976, i64 8, !35, i64 5984, i64 8, !35, i64 5992, i64 8, !35, i64 6000, i64 8, !35, i64 6008, i64 8, !35, i64 6016, i64 8, !35, i64 6024, i64 8, !35, i64 6032, i64 8, !35, i64 6040, i64 8, !35, i64 6048, i64 8, !35, i64 6056, i64 8, !35, i64 6064, i64 4, !40, i64 6068, i64 4, !40, i64 6072, i64 4, !40, i64 6076, i64 4, !40, i64 6080, i64 4, !40, i64 6084, i64 4, !40, i64 6088, i64 4, !40, i64 6092, i64 2, !42, i64 6094, i64 2, !42, i64 6096, i64 2, !42, i64 6098, i64 2, !42, i64 6100, i64 2, !42, i64 6102, i64 2, !42, i64 6104, i64 1, !39, i64 6112, i64 8, !46, i64 6120, i64 8, !46, i64 6128, i64 8, !35, i64 6136, i64 8, !35, i64 6144, i64 64, !39, i64 6208, i64 4, !44, i64 6212, i64 4, !44, i64 6216, i64 8, !35, i64 6224, i64 8, !35, i64 6232, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!37, !37, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !37, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !37, i64 0}
!48 = !{!49, !36, i64 6128}
!49 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !43, i64 96, !43, i64 98, !43, i64 100, !43, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !51, i64 156, !52, i64 172, !45, i64 188, !45, i64 192, !45, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !45, i64 544, !45, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !53, i64 1104, !60, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !50, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !45, i64 5680, !36, i64 5688, !50, i64 5696, !45, i64 5712, !45, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !50, i64 5752, !50, i64 5768, !50, i64 5784, !36, i64 5800, !50, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !50, i64 5872, !36, i64 5888, !50, i64 5896, !50, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !62, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!53 = !{!"RenderData", !54, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !43, i64 432, !43, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !41, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !41, i64 484, !41, i64 488, !43, i64 492, !43, i64 494, !41, i64 496, !41, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !52, i64 544, !52, i64 560, !51, i64 576, !50, i64 592, !43, i64 608, !43, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !45, i64 660, !45, i64 664, !43, i64 668, !43, i64 670, !45, i64 672, !45, i64 676, !37, i64 680, !41, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !43, i64 2524, !43, i64 2526, !45, i64 2528, !45, i64 2532, !43, i64 2536, !43, i64 2538, !45, i64 2540, !43, i64 2544, !43, i64 2546, !41, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !45, i64 2560, !45, i64 2564, !36, i64 2568, !41, i64 2576, !45, i64 2580, !37, i64 2584, !59, i64 2616, !41, i64 3976, !41, i64 3980}
!54 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !45, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!55 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !45, i64 136, !45, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !43, i64 48, !43, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!58 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!59 = !{!"BakeData", !54, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !45, i64 1280, !45, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!60 = !{!"World", !61, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !43, i64 200, !43, i64 202, !43, i64 204, !43, i64 206, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !43, i64 264, !43, i64 266, !43, i64 268, !43, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !43, i64 288, !43, i64 290, !43, i64 292, !43, i64 294, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !43, i64 324, !43, i64 326, !43, i64 328, !43, i64 330, !43, i64 332, !43, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !43, i64 504, !43, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!62 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !43, i64 28, !43, i64 30, !43, i64 32, !43, i64 34, !43, i64 36, !43, i64 38, !37, i64 40, !47, i64 48, !47, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !45, i64 144, !45, i64 148}
!63 = !{!49, !36, i64 6000}
!64 = !{!49, !36, i64 6008}
!65 = !{!49, !36, i64 5688}
!66 = !{!49, !36, i64 6048}
!67 = !{!49, !36, i64 6056}
!68 = !{!49, !43, i64 5420}
!69 = !{!70, !41, i64 80}
!70 = !{!"OcclusionTree", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !45, i64 64, !45, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 88}
!71 = !{!49, !43, i64 5290}
!72 = !{!49, !43, i64 5412}
!73 = !{!74, !36, i64 296}
!74 = !{!"StrandSurface", !36, i64 0, !36, i64 8, !75, i64 16, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !41, i64 352, !41, i64 356}
!75 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!76 = !{!74, !36, i64 304}
!77 = !{!74, !36, i64 312}
!78 = !{!74, !41, i64 352}
!79 = !{!74, !41, i64 356}
!80 = !{!49, !43, i64 1538}
!81 = !{!82, !36, i64 0}
!82 = !{!"OcclusionThread", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48}
!83 = !{!82, !36, i64 16}
!84 = !{!82, !36, i64 24}
!85 = !{!82, !36, i64 32}
!86 = !{!82, !36, i64 8}
!87 = !{!82, !41, i64 48}
!88 = !{!82, !41, i64 40}
!89 = !{!82, !41, i64 44}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!74, !36, i64 320}
!93 = !{!74, !36, i64 328}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = !{!"occlusion.c:occ_tree_build"}
!98 = distinct !{!98, !91}
!99 = !{!100, !36, i64 16}
!100 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !43, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!101 = !{!75, !41, i64 84}
!102 = !{!75, !36, i64 120}
!103 = !{!104, !36, i64 0}
!104 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!105 = !{!106, !36, i64 48}
!106 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!107 = !{!108, !43, i64 394}
!108 = !{!"Material", !61, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !109, i64 224, !110, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !43, i64 356, !43, i64 358, !43, i64 360, !37, i64 362, !37, i64 363, !45, i64 364, !45, i64 368, !43, i64 372, !43, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !43, i64 392, !43, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !43, i64 414, !43, i64 416, !43, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !37, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !43, i64 544, !43, i64 546, !43, i64 548, !37, i64 550, !37, i64 551, !43, i64 552, !43, i64 554, !45, i64 556, !45, i64 560, !37, i64 564, !45, i64 580, !45, i64 584, !43, i64 588, !43, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !43, i64 612, !43, i64 614, !45, i64 616, !45, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !43, i64 820, !43, i64 822, !37, i64 824, !37, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !43, i64 876, !43, i64 878, !41, i64 880, !43, i64 884, !43, i64 886, !37, i64 888, !43, i64 904, !43, i64 906, !43, i64 908, !43, i64 910, !43, i64 912, !37, i64 914, !36, i64 920, !50, i64 928}
!109 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!110 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!111 = !{!108, !43, i64 128}
!112 = distinct !{!112, !91}
!113 = !{!70, !41, i64 60}
!114 = !{!49, !45, i64 5392}
!115 = !{!70, !45, i64 64}
!116 = !{!49, !43, i64 5376}
!117 = !{!49, !45, i64 5364}
!118 = !{!70, !45, i64 68}
!119 = !{!49, !45, i64 5400}
!120 = !{!70, !36, i64 0}
!121 = !{!70, !36, i64 88}
!122 = !{!70, !36, i64 16}
!123 = !{!70, !36, i64 8}
!124 = !{!70, !36, i64 24}
!125 = !{!70, !36, i64 32}
!126 = !{!127, !41, i64 0}
!127 = !{!"OccFace", !41, i64 0, !41, i64 4}
!128 = !{!127, !41, i64 4}
!129 = distinct !{!129, !91}
!130 = distinct !{!130, !91}
!131 = !{!70, !41, i64 76}
!132 = !{!70, !41, i64 72}
!133 = !{!70, !36, i64 40}
!134 = !{!70, !41, i64 56}
!135 = !{!"occlusion.c:occ_compute_passes"}
!136 = distinct !{!136, !91}
!137 = distinct !{!137, !91}
!138 = distinct !{!138, !91}
!139 = !{!"occlusion.c:occ_compute_bounces"}
!140 = distinct !{!140, !91}
!141 = distinct !{!141, !91}
!142 = !{!"occlusion.c:exec_strandsurface_sample"}
!143 = distinct !{!143, !91}
!144 = !{!"occlusion.c:copy_v3_v3"}
!145 = !{!"occlusion.c:add_v3_v3"}
!146 = !{!"occlusion.c:mul_v3_fl"}
!147 = !{!"occlusion.c:occ_free_tree"}
!148 = !{!149, !36, i64 16}
!149 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !43, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !43, i64 88, !43, i64 90, !43, i64 92, !43, i64 94, !43, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !45, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !45, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !45, i64 1256, !45, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !45, i64 1336, !45, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !45, i64 1428, !37, i64 1432, !37, i64 1433, !43, i64 1434, !43, i64 1436, !43, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!150 = !{!149, !41, i64 1408}
!151 = !{!149, !41, i64 1380}
!152 = !{!149, !41, i64 1384}
!153 = !{!149, !43, i64 1434}
!154 = !{i32 0, i32 2}
!155 = !{!149, !36, i64 24}
!156 = !{!49, !36, i64 5800}
!157 = !{!149, !36, i64 8}
!158 = !{!106, !41, i64 60}
!159 = !{!149, !36, i64 0}
!160 = !{!108, !41, i64 396}
!161 = !{!162, !36, i64 0}
!162 = !{!"OcclusionCache", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24}
!163 = !{!162, !41, i64 24}
!164 = !{!162, !41, i64 12}
!165 = !{!162, !41, i64 16}
!166 = !{!162, !41, i64 8}
!167 = !{!168, !45, i64 60}
!168 = !{!"OcclusionCacheSample", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 36, !37, i64 48, !45, i64 60, !45, i64 64, !41, i64 68, !41, i64 72, !41, i64 76}
!169 = !{!168, !45, i64 64}
!170 = !{!168, !41, i64 76}
!171 = !{!"occlusion.c:sample_occ_surface"}
!172 = !{!173, !36, i64 8}
!173 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!174 = !{!175, !36, i64 56}
!175 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !37, i64 96, !41, i64 160, !41, i64 164}
!176 = !{!149, !36, i64 32}
!177 = !{!173, !36, i64 0}
!178 = !{!"occlusion.c:sample_occ_cache"}
!179 = distinct !{!179, !91}
!180 = distinct !{!180, !91}
!181 = !{!"occlusion.c:sample_occ_tree"}
!182 = !{!49, !43, i64 5382}
!183 = !{!49, !45, i64 5396}
!184 = !{!49, !45, i64 5224}
!185 = !{!49, !45, i64 5236}
!186 = !{!49, !45, i64 5228}
!187 = !{!49, !45, i64 5240}
!188 = !{!49, !45, i64 5232}
!189 = !{!49, !45, i64 5244}
!190 = !{!"occlusion.c:max_fff"}
!191 = !{!"occlusion.c:max_ff"}
!192 = !{!"occlusion.c:dot_v3v3"}
!193 = !{!194, !43, i64 146}
!194 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !51, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !36, i64 152}
!195 = !{!194, !41, i64 128}
!196 = !{!194, !41, i64 132}
!197 = !{!162, !41, i64 20}
!198 = !{!194, !41, i64 112}
!199 = !{!194, !41, i64 120}
!200 = !{!49, !43, i64 98}
!201 = !{!194, !36, i64 72}
!202 = !{!203, !36, i64 0}
!203 = !{!"PixStr", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !43, i64 26}
!204 = !{!203, !43, i64 24}
!205 = !{!194, !36, i64 40}
!206 = !{!194, !36, i64 48}
!207 = !{!194, !36, i64 56}
!208 = !{!194, !41, i64 124}
!209 = !{!194, !41, i64 116}
!210 = !{!211, !211, i64 0}
!211 = !{!"long", !37, i64 0}
!212 = !{!203, !41, i64 8}
!213 = !{!203, !41, i64 12}
!214 = !{!203, !41, i64 16}
!215 = distinct !{!215, !91}
!216 = distinct !{!216, !91}
!217 = !{!"occlusion.c:occ_face"}
!218 = !{!106, !36, i64 24}
!219 = !{!106, !36, i64 0}
!220 = !{!106, !36, i64 16}
!221 = !{!106, !36, i64 8}
!222 = !{!100, !43, i64 216}
!223 = !{!"occlusion.c:occ_build_recursive"}
!224 = !{!225, !45, i64 56}
!225 = !{!"OccNode", !37, i64 0, !45, i64 12, !37, i64 16, !45, i64 52, !45, i64 56, !37, i64 60, !41, i64 72, !37, i64 80}
!226 = !{!225, !41, i64 72}
!227 = distinct !{!227, !91}
!228 = distinct !{!228, !91}
!229 = !{!230, !36, i64 0}
!230 = !{!"OcclusionBuildThread", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 24}
!231 = !{!230, !36, i64 24}
!232 = !{!230, !41, i64 8}
!233 = !{!230, !41, i64 12}
!234 = !{!230, !41, i64 16}
!235 = !{!225, !45, i64 12}
!236 = distinct !{!236, !91}
!237 = !{!225, !45, i64 52}
!238 = !{!"occlusion.c:occ_build_shade"}
!239 = !{!49, !41, i64 5624}
!240 = !{!149, !41, i64 1440}
!241 = !{!149, !41, i64 1448}
!242 = !{!149, !41, i64 1452}
!243 = !{!244, !41, i64 0}
!244 = !{!"ShadeSample", !41, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!245 = distinct !{!245, !91}
!246 = !{!"occlusion.c:occ_sum_occlusion"}
!247 = distinct !{!247, !91}
!248 = !{!"occlusion.c:occ_build_sh_normalize"}
!249 = distinct !{!249, !91}
!250 = !{!"occlusion.c:occ_build_8_split"}
!251 = distinct !{!251, !91}
!252 = !{!"occlusion.c:exec_occ_build"}
!253 = !{!"occlusion.c:occ_node_from_face"}
!254 = !{!"occlusion.c:sh_add"}
!255 = distinct !{!255, !91}
!256 = !{!"occlusion.c:madd_v3_v3fl"}
!257 = !{!"occlusion.c:occ_build_dco"}
!258 = distinct !{!258, !91}
!259 = !{!"occlusion.c:occ_build_split"}
!260 = distinct !{!260, !91}
!261 = !{!"occlusion.c:occ_find_bbox_axis"}
!262 = distinct !{!262, !91}
!263 = distinct !{!263, !91}
!264 = !{!"occlusion.c:sh_from_disc"}
!265 = !{!"occlusion.c:sh_mul"}
!266 = distinct !{!266, !91}
!267 = !{!"occlusion.c:sh_copy"}
!268 = !{!"occlusion.c:sub_v3_v3v3"}
!269 = !{!"occlusion.c:occ_shade"}
!270 = !{!149, !41, i64 1404}
!271 = !{!149, !43, i64 56}
!272 = !{!75, !36, i64 16}
!273 = !{!274, !43, i64 952}
!274 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !275, i64 312, !36, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !45, i64 616, !45, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !45, i64 1048, !45, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !45, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !45, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !211, i64 1304, !211, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !50, i64 1400, !36, i64 1416}
!275 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!276 = !{!108, !36, i64 768}
!277 = !{!108, !37, i64 543}
!278 = !{!"occlusion.c:normalize_v3"}
!279 = !{!"occlusion.c:negate_v3"}
!280 = !{!"occlusion.c:normalize_v3_v3"}
!281 = !{!"occlusion.c:mul_v3_v3fl"}
!282 = !{!"occlusion.c:zero_v3"}
!283 = !{!"occlusion.c:occ_lookup"}
!284 = distinct !{!284, !91}
!285 = distinct !{!285, !91}
!286 = !{!"occlusion.c:occ_solid_angle"}
!287 = !{!"occlusion.c:occ_form_factor"}
!288 = !{!"occlusion.c:sh_eval"}
!289 = !{!"occlusion.c:find_occ_sample"}
!290 = !{!"occlusion.c:min_ffff"}
!291 = !{!"occlusion.c:max_ffff"}
!292 = !{!"occlusion.c:min_ff"}
!293 = !{!"occlusion.c:min_fff"}
!294 = !{!"occlusion.c:negate_v3_v3"}
