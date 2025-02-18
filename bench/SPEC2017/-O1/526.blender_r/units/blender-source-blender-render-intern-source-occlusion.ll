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
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.OcclusionThread = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.OcclusionTree = type { ptr, ptr, ptr, ptr, ptr, ptr, [1 x ptr], i32, i32, float, float, i32, i32, i32, ptr }
%struct.OccFace = type { i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.StrandSurface = type { ptr, ptr, %struct.ObjectRen, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.OcclusionCache = type { ptr, i32, i32, i32, i32, i32 }
%struct.OcclusionCacheSample = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, i32, i32, i32 }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.OcclusionBuildThread = type { ptr, i32, i32, i32, ptr }
%struct.OccNode = type { [3 x float], float, [9 x float], float, float, [3 x float], i32, [8 x %union.anon] }
%union.anon = type { ptr }

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

; Function Attrs: nounwind uwtable
define dso_local void @make_occ_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.ShadeSample, align 8
  %8 = alloca [1 x %struct.OcclusionThread], align 16
  %9 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void %13(ptr noundef %15, ptr noundef nonnull %10) #8
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %24

19:                                               ; preds = %63, %24
  %20 = phi ptr [ %27, %24 ], [ %50, %63 ]
  %21 = phi i32 [ %26, %24 ], [ %64, %63 ]
  %22 = load ptr, ptr %25, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %67, label %24, !llvm.loop !65

24:                                               ; preds = %1, %19
  %25 = phi ptr [ %22, %19 ], [ %17, %1 ]
  %26 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %27 = phi ptr [ %20, %19 ], [ null, %1 ]
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ObjectRen, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !70
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %19

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.ObjectRen, ptr %29, i64 0, i32 19
  br label %35

35:                                               ; preds = %33, %63
  %36 = phi i32 [ %26, %33 ], [ %64, %63 ]
  %37 = phi i32 [ 0, %33 ], [ %65, %63 ]
  %38 = phi ptr [ %27, %33 ], [ %50, %63 ]
  %39 = and i32 %37, 255
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load ptr, ptr %34, align 8, !tbaa !72
  %43 = lshr exact i32 %37, 8
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds %struct.VlakTableNode, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  br label %49

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.VlakRen, ptr %38, i64 1
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %46, %41 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.VlakRen, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.Material, ptr %52, i64 0, i32 50
  %54 = load i16, ptr %53, align 2, !tbaa !77
  %55 = and i16 %54, 4
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.Material, ptr %52, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !81
  %60 = icmp eq i16 %59, 0
  %61 = zext i1 %60 to i32
  %62 = add nsw i32 %36, %61
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i32 [ %36, %49 ], [ %62, %57 ]
  %65 = add nuw nsw i32 %37, 1
  %66 = icmp eq i32 %65, %31
  br i1 %66, label %19, label %35, !llvm.loop !82

67:                                               ; preds = %19, %1
  %68 = phi ptr [ null, %1 ], [ %20, %19 ]
  %69 = phi i32 [ 0, %1 ], [ %21, %19 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %426, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %73 = tail call ptr %72(i64 noundef 96, ptr noundef nonnull @.str.6) #8
  %74 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 8
  store i32 %69, ptr %74, align 4, !tbaa !83
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 56
  %77 = load float, ptr %76, align 8, !tbaa !85
  %78 = tail call float @get_render_aosss_error(ptr noundef nonnull %75, float noundef %77) #8
  %79 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 9
  store float %78, ptr %79, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 50
  %81 = load i16, ptr %80, align 8, !tbaa !87
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 47
  %86 = load float, ptr %85, align 4, !tbaa !88
  br label %87

87:                                               ; preds = %84, %71
  %88 = phi float [ %86, %84 ], [ 0.000000e+00, %71 ]
  %89 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 10
  store float %88, ptr %89, align 4, !tbaa !89
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 58
  %91 = load float, ptr %90, align 8, !tbaa !90
  %92 = fcmp ogt float %91, 0.000000e+00
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 61
  %95 = load i16, ptr %94, align 4, !tbaa !91
  %96 = icmp sgt i16 %95, 0
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i32 [ 0, %87 ], [ %97, %93 ]
  %100 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 13
  store i32 %99, ptr %100, align 8, !tbaa !92
  %101 = tail call ptr @BLI_memarena_new(i64 noundef 4718592, ptr noundef nonnull @.str.7) #8
  store ptr %101, ptr %73, align 8, !tbaa !93
  tail call void @BLI_memarena_use_calloc(ptr noundef %101) #8
  %102 = load i16, ptr %80, align 8, !tbaa !87
  %103 = and i16 %102, 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %107 = tail call ptr %106(i64 noundef 32, ptr noundef nonnull @.str.8) #8
  %108 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 14
  store ptr %107, ptr %108, align 8, !tbaa !94
  br label %109

109:                                              ; preds = %105, %98
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %111 = sext i32 %69 to i64
  %112 = shl nsw i64 %111, 3
  %113 = tail call ptr %110(i64 noundef %112, ptr noundef nonnull @.str.9) #8
  %114 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 2
  store ptr %113, ptr %114, align 8, !tbaa !95
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %116 = mul nsw i64 %111, 12
  %117 = tail call ptr %115(i64 noundef %116, ptr noundef nonnull @.str.10) #8
  %118 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 1
  store ptr %117, ptr %118, align 8, !tbaa !96
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %120 = shl nsw i64 %111, 2
  %121 = tail call ptr %119(i64 noundef %120, ptr noundef nonnull @.str.11) #8
  %122 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 3
  store ptr %121, ptr %122, align 8, !tbaa !97
  %123 = load i32, ptr %100, align 8, !tbaa !92
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %109
  %126 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %127 = tail call ptr %126(i64 noundef %116, ptr noundef nonnull @.str.12) #8
  %128 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 4
  store ptr %127, ptr %128, align 8, !tbaa !98
  br label %129

129:                                              ; preds = %125, %109
  %130 = load ptr, ptr %16, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %191, label %132

132:                                              ; preds = %129, %185
  %133 = phi ptr [ %189, %185 ], [ %130, %129 ]
  %134 = phi i32 [ %188, %185 ], [ 0, %129 ]
  %135 = phi i32 [ %187, %185 ], [ 0, %129 ]
  %136 = phi ptr [ %186, %185 ], [ %68, %129 ]
  %137 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %133, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !68
  %139 = getelementptr inbounds %struct.ObjectRen, ptr %138, i64 0, i32 11
  %140 = load i32, ptr %139, align 4, !tbaa !70
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %185

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.ObjectRen, ptr %138, i64 0, i32 19
  br label %144

144:                                              ; preds = %142, %180
  %145 = phi i32 [ %135, %142 ], [ %181, %180 ]
  %146 = phi i32 [ 0, %142 ], [ %182, %180 ]
  %147 = phi ptr [ %136, %142 ], [ %159, %180 ]
  %148 = and i32 %146, 255
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load ptr, ptr %143, align 8, !tbaa !72
  %152 = lshr exact i32 %146, 8
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds %struct.VlakTableNode, ptr %151, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !73
  br label %158

156:                                              ; preds = %144
  %157 = getelementptr inbounds %struct.VlakRen, ptr %147, i64 1
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi ptr [ %155, %150 ], [ %157, %156 ]
  %160 = getelementptr inbounds %struct.VlakRen, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !75
  %162 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 50
  %163 = load i16, ptr %162, align 2, !tbaa !77
  %164 = and i16 %163, 4
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 2
  %168 = load i16, ptr %167, align 8, !tbaa !81
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load ptr, ptr %114, align 8, !tbaa !95
  %172 = sext i32 %145 to i64
  %173 = getelementptr inbounds %struct.OccFace, ptr %171, i64 %172
  store i32 %134, ptr %173, align 4, !tbaa !99
  %174 = getelementptr inbounds %struct.OccFace, ptr %171, i64 %172, i32 1
  store i32 %146, ptr %174, align 4, !tbaa !101
  %175 = load ptr, ptr %122, align 8, !tbaa !97
  %176 = getelementptr inbounds float, ptr %175, i64 %172
  store float 1.000000e+00, ptr %176, align 4, !tbaa !44
  %177 = load ptr, ptr %118, align 8, !tbaa !96
  %178 = getelementptr inbounds [3 x float], ptr %177, i64 %172
  tail call fastcc void @occ_face(ptr noundef nonnull %173, ptr noundef %178, ptr noundef null, ptr noundef null)
  %179 = add nsw i32 %145, 1
  br label %180

180:                                              ; preds = %170, %166, %158
  %181 = phi i32 [ %179, %170 ], [ %145, %166 ], [ %145, %158 ]
  %182 = add nuw nsw i32 %146, 1
  %183 = load i32, ptr %139, align 4, !tbaa !70
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %144, label %185, !llvm.loop !102

185:                                              ; preds = %180, %132
  %186 = phi ptr [ %136, %132 ], [ %159, %180 ]
  %187 = phi i32 [ %135, %132 ], [ %181, %180 ]
  %188 = add nuw nsw i32 %134, 1
  %189 = load ptr, ptr %133, align 8, !tbaa !35
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %132, !llvm.loop !103

191:                                              ; preds = %185, %129
  %192 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %193 = load i16, ptr %192, align 2, !tbaa !104
  %194 = icmp sgt i16 %193, 1
  %195 = icmp sgt i32 %69, 10000
  %196 = and i1 %194, %195
  %197 = select i1 %196, i32 8, i32 1
  %198 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 12
  store i32 %197, ptr %198, align 4, !tbaa !105
  %199 = zext i1 %196 to i32
  %200 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 11
  store i32 %199, ptr %200, align 8, !tbaa !106
  %201 = load ptr, ptr %73, align 8, !tbaa !93
  %202 = tail call ptr @BLI_memarena_alloc(ptr noundef %201, i64 noundef 144) #8
  %203 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 5
  store ptr %202, ptr %203, align 8, !tbaa !107
  %204 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 7
  store i32 1, ptr %204, align 8, !tbaa !108
  tail call fastcc void @occ_build_recursive(ptr noundef nonnull %73, ptr noundef %202, i32 noundef 0, i32 noundef %69, i32 noundef 1)
  %205 = load i32, ptr %100, align 8, !tbaa !92
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %407, label %207

207:                                              ; preds = %191
  %208 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %209 = load ptr, ptr %208, align 8, !tbaa !109
  %210 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %211 = load ptr, ptr %210, align 8, !tbaa !110
  %212 = tail call i32 %209(ptr noundef %211) #8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %400

214:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %7) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6240) @R, ptr noundef nonnull align 8 dereferenceable(6240) %0, i64 6240, i1 false), !tbaa.struct !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27080) %7, i8 0, i64 27080, i1 false)
  %215 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %216 = load i32, ptr %215, align 8, !tbaa !111
  %217 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 117
  store i32 %216, ptr %217, align 8, !tbaa !112
  %218 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 119
  store i32 12, ptr %218, align 8, !tbaa !114
  %219 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 120
  store i32 -17, ptr %219, align 4, !tbaa !115
  store i32 1, ptr %7, align 8, !tbaa !116
  %220 = load i32, ptr %74, align 4, !tbaa !83
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %399

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 4
  %224 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2
  %225 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 3
  %226 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 23
  %227 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 24
  %228 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 23
  %229 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 24
  %230 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 29
  %231 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 29, i64 1
  %232 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 29, i64 2
  %233 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 30
  %234 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 30, i64 1
  %235 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 30, i64 2
  %236 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 107
  %237 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 103
  %238 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 104
  %239 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 7
  %240 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 6
  %241 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 6, i64 1
  %242 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 6, i64 2
  %243 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 4
  %244 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 16
  %245 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 16, i64 1
  %246 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 16, i64 2
  %247 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 17
  %248 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 17, i64 1
  %249 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 17, i64 2
  %250 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 66
  %251 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 66, i64 1
  %252 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 2, i64 0, i32 66, i64 2
  %253 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 3, i64 0, i32 0, i64 1
  %254 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 3, i64 0, i32 0, i64 2
  br label %260

255:                                              ; preds = %389
  %256 = add nuw nsw i64 %261, 1
  %257 = load i32, ptr %74, align 4, !tbaa !83
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %256, %258
  br i1 %259, label %260, label %399, !llvm.loop !118

260:                                              ; preds = %222, %255
  %261 = phi i64 [ 0, %222 ], [ %256, %255 ]
  %262 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !119
  %263 = load ptr, ptr %114, align 8, !tbaa !95
  %264 = getelementptr inbounds %struct.OccFace, ptr %263, i64 %261
  %265 = load i32, ptr %264, align 4, !tbaa !99
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %262, i64 %266
  %268 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %262, i64 %266, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !68
  %270 = getelementptr inbounds %struct.OccFace, ptr %263, i64 %261, i32 1
  %271 = load i32, ptr %270, align 4, !tbaa !101
  %272 = call ptr @RE_findOrAddVlak(ptr noundef %269, i32 noundef %271) #8
  %273 = load ptr, ptr %223, align 8, !tbaa !98
  %274 = getelementptr inbounds [3 x float], ptr %273, i64 %261
  %275 = getelementptr inbounds %struct.VlakRen, ptr %272, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !120
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %260
  store float 5.000000e-01, ptr %226, align 8, !tbaa !121
  store float 5.000000e-01, ptr %227, align 4, !tbaa !122
  br label %280

279:                                              ; preds = %260
  store float 0x3FD5555560000000, ptr %228, align 8, !tbaa !121
  store float 0x3FD5555560000000, ptr %229, align 4, !tbaa !122
  br label %280

280:                                              ; preds = %279, %278
  %281 = phi float [ 5.000000e-01, %278 ], [ 0x3FD5555560000000, %279 ]
  %282 = load ptr, ptr %272, align 8, !tbaa !123
  %283 = getelementptr inbounds %struct.VlakRen, ptr %272, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !124
  %285 = getelementptr inbounds %struct.VlakRen, ptr %272, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !125
  %287 = fsub float 1.000000e+00, %281
  %288 = fsub float %287, %281
  %289 = load float, ptr %286, align 4, !tbaa !44
  %290 = load float, ptr %282, align 4, !tbaa !44
  %291 = fmul float %281, %290
  %292 = call float @llvm.fmuladd.f32(float %288, float %289, float %291)
  %293 = load float, ptr %284, align 4, !tbaa !44
  %294 = call float @llvm.fmuladd.f32(float %281, float %293, float %292)
  store float %294, ptr %230, align 8, !tbaa !44
  %295 = getelementptr inbounds float, ptr %286, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !44
  %297 = getelementptr inbounds float, ptr %282, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !44
  %299 = fmul float %281, %298
  %300 = call float @llvm.fmuladd.f32(float %288, float %296, float %299)
  %301 = getelementptr inbounds float, ptr %284, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !44
  %303 = call float @llvm.fmuladd.f32(float %281, float %302, float %300)
  store float %303, ptr %231, align 4, !tbaa !44
  %304 = getelementptr inbounds float, ptr %286, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !44
  %306 = getelementptr inbounds float, ptr %282, i64 2
  %307 = load float, ptr %306, align 4, !tbaa !44
  %308 = fmul float %281, %307
  %309 = call float @llvm.fmuladd.f32(float %288, float %305, float %308)
  %310 = getelementptr inbounds float, ptr %284, i64 2
  %311 = load float, ptr %310, align 4, !tbaa !44
  %312 = call float @llvm.fmuladd.f32(float %281, float %311, float %309)
  store float %312, ptr %232, align 8, !tbaa !44
  call void @shade_input_set_triangle_i(ptr noundef nonnull %224, ptr noundef %267, ptr noundef nonnull %272, i16 noundef signext 0, i16 noundef signext 1, i16 noundef signext 2) #8
  %313 = load float, ptr %230, align 8, !tbaa !44
  store float %313, ptr %233, align 4, !tbaa !44
  %314 = load float, ptr %231, align 4, !tbaa !44
  store float %314, ptr %234, align 8, !tbaa !44
  %315 = load float, ptr %232, align 8, !tbaa !44
  store float %315, ptr %235, align 4, !tbaa !44
  %316 = fmul float %314, %314
  %317 = call float @llvm.fmuladd.f32(float %313, float %313, float %316)
  %318 = call float @llvm.fmuladd.f32(float %315, float %315, float %317)
  %319 = fcmp ogt float %318, 0x38AA95A5C0000000
  br i1 %319, label %320, label %329

320:                                              ; preds = %280
  %321 = call float @sqrtf(float noundef %318) #8
  %322 = fdiv float 1.000000e+00, %321
  %323 = load float, ptr %233, align 4, !tbaa !44
  %324 = fmul float %323, %322
  store float %324, ptr %233, align 4, !tbaa !44
  %325 = load float, ptr %234, align 8, !tbaa !44
  %326 = fmul float %322, %325
  store float %326, ptr %234, align 8, !tbaa !44
  %327 = load float, ptr %235, align 4, !tbaa !44
  %328 = fmul float %322, %327
  br label %330

329:                                              ; preds = %280
  store float 0.000000e+00, ptr %233, align 4, !tbaa !44
  store float 0.000000e+00, ptr %234, align 8, !tbaa !44
  br label %330

330:                                              ; preds = %329, %320
  %331 = phi float [ 0.000000e+00, %329 ], [ %328, %320 ]
  store float %331, ptr %235, align 4, !tbaa !44
  %332 = load i32, ptr %236, align 4, !tbaa !126
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %236, align 4, !tbaa !126
  store i32 0, ptr %237, align 4, !tbaa !127
  store i32 0, ptr %238, align 8, !tbaa !128
  call void @shade_input_set_normals(ptr noundef nonnull %224) #8
  %334 = load i16, ptr %239, align 8, !tbaa !129
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %330
  call void @shade_input_flip_normals(ptr noundef nonnull %224) #8
  br label %337

337:                                              ; preds = %336, %330
  %338 = load float, ptr %240, align 4, !tbaa !44
  %339 = load float, ptr %230, align 8, !tbaa !44
  %340 = call float @llvm.fmuladd.f32(float %338, float 0xBF1A36E2E0000000, float %339)
  store float %340, ptr %230, align 8, !tbaa !44
  %341 = load float, ptr %241, align 8, !tbaa !44
  %342 = load float, ptr %231, align 4, !tbaa !44
  %343 = call float @llvm.fmuladd.f32(float %341, float 0xBF1A36E2E0000000, float %342)
  store float %343, ptr %231, align 4, !tbaa !44
  %344 = load float, ptr %242, align 4, !tbaa !44
  %345 = load float, ptr %232, align 8, !tbaa !44
  %346 = call float @llvm.fmuladd.f32(float %344, float 0xBF1A36E2E0000000, float %345)
  store float %346, ptr %232, align 8, !tbaa !44
  %347 = load ptr, ptr %243, align 8, !tbaa !130
  %348 = getelementptr inbounds %struct.ObjectRen, ptr %347, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !131
  %350 = icmp eq ptr %349, null
  br i1 %350, label %375, label %351

351:                                              ; preds = %337
  %352 = getelementptr inbounds %struct.Object, ptr %349, i64 0, i32 55
  %353 = load i16, ptr %352, align 8, !tbaa !132
  %354 = and i16 %353, 4
  %355 = icmp eq i16 %354, 0
  br i1 %355, label %375, label %356

356:                                              ; preds = %351
  %357 = load float, ptr %244, align 4, !tbaa !44
  %358 = fneg float %357
  store float %358, ptr %244, align 4, !tbaa !44
  %359 = load float, ptr %245, align 8, !tbaa !44
  %360 = fneg float %359
  store float %360, ptr %245, align 8, !tbaa !44
  %361 = load float, ptr %246, align 4, !tbaa !44
  %362 = fneg float %361
  store float %362, ptr %246, align 4, !tbaa !44
  %363 = load float, ptr %247, align 8, !tbaa !44
  %364 = fneg float %363
  store float %364, ptr %247, align 8, !tbaa !44
  %365 = load float, ptr %248, align 4, !tbaa !44
  %366 = fneg float %365
  store float %366, ptr %248, align 4, !tbaa !44
  %367 = load float, ptr %249, align 8, !tbaa !44
  %368 = fneg float %367
  store float %368, ptr %249, align 8, !tbaa !44
  %369 = load float, ptr %250, align 4, !tbaa !44
  %370 = fneg float %369
  store float %370, ptr %250, align 4, !tbaa !44
  %371 = load float, ptr %251, align 8, !tbaa !44
  %372 = fneg float %371
  store float %372, ptr %251, align 8, !tbaa !44
  %373 = load float, ptr %252, align 4, !tbaa !44
  %374 = fneg float %373
  store float %374, ptr %252, align 4, !tbaa !44
  br label %375

375:                                              ; preds = %356, %351, %337
  call void @shade_input_init_material(ptr noundef nonnull %224) #8
  call void @shade_input_set_shade_texco(ptr noundef nonnull %224) #8
  %376 = load ptr, ptr %224, align 8, !tbaa !136
  %377 = getelementptr inbounds %struct.Material, ptr %376, i64 0, i32 103
  %378 = load ptr, ptr %377, align 8, !tbaa !137
  %379 = icmp eq ptr %378, null
  br i1 %379, label %388, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.Material, ptr %376, i64 0, i32 77
  %382 = load i8, ptr %381, align 1, !tbaa !138
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = call zeroext i8 @ntreeShaderExecTree(ptr noundef nonnull %378, ptr noundef nonnull %224, ptr noundef nonnull %225) #8
  %386 = getelementptr inbounds %struct.VlakRen, ptr %272, i64 0, i32 5
  %387 = load ptr, ptr %386, align 8, !tbaa !75
  store ptr %387, ptr %224, align 8, !tbaa !136
  br label %389

388:                                              ; preds = %380, %375
  call void @shade_material_loop(ptr noundef nonnull %224, ptr noundef nonnull %225) #8
  br label %389

389:                                              ; preds = %388, %384
  %390 = load float, ptr %225, align 8, !tbaa !44
  store float %390, ptr %274, align 4, !tbaa !44
  %391 = load float, ptr %253, align 4, !tbaa !44
  %392 = getelementptr inbounds float, ptr %274, i64 1
  store float %391, ptr %392, align 4, !tbaa !44
  %393 = load float, ptr %254, align 8, !tbaa !44
  %394 = getelementptr inbounds float, ptr %274, i64 2
  store float %393, ptr %394, align 4, !tbaa !44
  %395 = load ptr, ptr %208, align 8, !tbaa !109
  %396 = load ptr, ptr %210, align 8, !tbaa !110
  %397 = call i32 %395(ptr noundef %396) #8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %255, label %399

399:                                              ; preds = %255, %389, %214
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %7) #8
  br label %400

400:                                              ; preds = %399, %207
  %401 = load ptr, ptr %208, align 8, !tbaa !109
  %402 = load ptr, ptr %210, align 8, !tbaa !110
  %403 = call i32 %401(ptr noundef %402) #8
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %400
  %406 = load ptr, ptr %203, align 8, !tbaa !107
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %73, ptr noundef %406)
  br label %407

407:                                              ; preds = %405, %400, %191
  %408 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %409 = load ptr, ptr %118, align 8, !tbaa !96
  call void %408(ptr noundef %409) #8
  store ptr null, ptr %118, align 8, !tbaa !96
  %410 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %411 = load ptr, ptr %410, align 8, !tbaa !109
  %412 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %413 = load ptr, ptr %412, align 8, !tbaa !110
  %414 = call i32 %411(ptr noundef %413) #8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %407
  %417 = load ptr, ptr %203, align 8, !tbaa !107
  call fastcc void @occ_build_sh_normalize(ptr noundef %417)
  br label %418

418:                                              ; preds = %416, %407
  %419 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %420 = load i32, ptr %204, align 8, !tbaa !108
  %421 = add nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %422, 1152
  %424 = call ptr %419(i64 noundef %423, ptr noundef nonnull @.str.13) #8
  %425 = getelementptr inbounds %struct.OcclusionTree, ptr %73, i64 0, i32 6
  store ptr %424, ptr %425, align 8, !tbaa !35
  br label %426

426:                                              ; preds = %67, %418
  %427 = phi ptr [ %73, %418 ], [ null, %67 ]
  %428 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  store ptr %427, ptr %428, align 8, !tbaa !139
  %429 = icmp eq ptr %427, null
  br i1 %429, label %924, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %432 = load ptr, ptr %431, align 8, !tbaa !109
  %433 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %434 = load ptr, ptr %433, align 8, !tbaa !110
  %435 = call i32 %432(ptr noundef %434) #8
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %924

437:                                              ; preds = %430
  %438 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 65
  %439 = load i16, ptr %438, align 4, !tbaa !140
  %440 = icmp sgt i16 %439, 0
  br i1 %440, label %441, label %516

441:                                              ; preds = %437
  %442 = zext nneg i16 %439 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %443 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %444 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 8
  %445 = load i32, ptr %444, align 4, !tbaa !83
  %446 = sext i32 %445 to i64
  %447 = shl nsw i64 %446, 2
  %448 = call ptr %443(i64 noundef %447, ptr noundef nonnull @.str.14) #8
  %449 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 2
  %450 = getelementptr inbounds float, ptr %6, i64 1
  %451 = getelementptr inbounds float, ptr %6, i64 2
  %452 = getelementptr inbounds float, ptr %5, i64 1
  %453 = getelementptr inbounds float, ptr %5, i64 2
  %454 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 3
  %455 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 5
  br label %456

456:                                              ; preds = %441, %510
  %457 = phi i32 [ 0, %441 ], [ %512, %510 ]
  %458 = load i32, ptr %444, align 4, !tbaa !83
  %459 = icmp sgt i32 %458, 0
  br i1 %459, label %465, label %488

460:                                              ; preds = %465
  %461 = add nuw nsw i64 %466, 1
  %462 = load i32, ptr %444, align 4, !tbaa !83
  %463 = sext i32 %462 to i64
  %464 = icmp slt i64 %461, %463
  br i1 %464, label %465, label %488, !llvm.loop !141

465:                                              ; preds = %456, %460
  %466 = phi i64 [ %461, %460 ], [ 0, %456 ]
  %467 = load ptr, ptr %449, align 8, !tbaa !95
  %468 = getelementptr inbounds %struct.OccFace, ptr %467, i64 %466
  call fastcc void @occ_face(ptr noundef %468, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null)
  %469 = load float, ptr %6, align 4, !tbaa !44
  %470 = fneg float %469
  store float %470, ptr %6, align 4, !tbaa !44
  %471 = load float, ptr %450, align 4, !tbaa !44
  %472 = fneg float %471
  store float %472, ptr %450, align 4, !tbaa !44
  %473 = load float, ptr %451, align 4, !tbaa !44
  %474 = fneg float %473
  store float %474, ptr %451, align 4, !tbaa !44
  %475 = load float, ptr %5, align 4, !tbaa !44
  %476 = call float @llvm.fmuladd.f32(float %470, float 0x3E45798EE0000000, float %475)
  store float %476, ptr %5, align 4, !tbaa !44
  %477 = load float, ptr %452, align 4, !tbaa !44
  %478 = call float @llvm.fmuladd.f32(float %472, float 0x3E45798EE0000000, float %477)
  store float %478, ptr %452, align 4, !tbaa !44
  %479 = load float, ptr %453, align 4, !tbaa !44
  %480 = call float @llvm.fmuladd.f32(float %474, float 0x3E45798EE0000000, float %479)
  store float %480, ptr %453, align 4, !tbaa !44
  %481 = load ptr, ptr %449, align 8, !tbaa !95
  %482 = getelementptr inbounds %struct.OccFace, ptr %481, i64 %466
  %483 = getelementptr inbounds float, ptr %448, i64 %466
  call fastcc void @occ_lookup(ptr noundef nonnull %427, i32 noundef 0, ptr noundef %482, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %483, ptr noundef null, ptr noundef null)
  %484 = load ptr, ptr %431, align 8, !tbaa !109
  %485 = load ptr, ptr %433, align 8, !tbaa !110
  %486 = call i32 %484(ptr noundef %485) #8
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %460, label %488

488:                                              ; preds = %460, %465, %456
  %489 = load ptr, ptr %431, align 8, !tbaa !109
  %490 = load ptr, ptr %433, align 8, !tbaa !110
  %491 = call i32 %489(ptr noundef %490) #8
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %514

493:                                              ; preds = %488
  %494 = load i32, ptr %444, align 4, !tbaa !83
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %510

496:                                              ; preds = %493
  %497 = load ptr, ptr %454, align 8, !tbaa !97
  %498 = zext nneg i32 %494 to i64
  br label %499

499:                                              ; preds = %496, %499
  %500 = phi i64 [ 0, %496 ], [ %508, %499 ]
  %501 = getelementptr inbounds float, ptr %448, i64 %500
  %502 = load float, ptr %501, align 4, !tbaa !44
  %503 = getelementptr inbounds float, ptr %497, i64 %500
  %504 = load float, ptr %503, align 4, !tbaa !44
  %505 = fsub float %504, %502
  %506 = fcmp olt float %505, 0.000000e+00
  %507 = select i1 %506, float 0.000000e+00, float %505
  store float %507, ptr %503, align 4, !tbaa !44
  %508 = add nuw nsw i64 %500, 1
  %509 = icmp eq i64 %508, %498
  br i1 %509, label %510, label %499, !llvm.loop !142

510:                                              ; preds = %499, %493
  %511 = load ptr, ptr %455, align 8, !tbaa !107
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %427, ptr noundef %511)
  %512 = add nuw nsw i32 %457, 1
  %513 = icmp eq i32 %512, %442
  br i1 %513, label %514, label %456, !llvm.loop !143

514:                                              ; preds = %510, %488
  %515 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %515(ptr noundef %448) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  br label %516

516:                                              ; preds = %514, %437
  %517 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 13
  %518 = load i32, ptr %517, align 8, !tbaa !92
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %624, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %522 = load i16, ptr %521, align 2, !tbaa !144
  %523 = and i16 %522, 128
  %524 = icmp eq i16 %523, 0
  br i1 %524, label %624, label %525

525:                                              ; preds = %520
  %526 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 61
  %527 = load i16, ptr %526, align 4, !tbaa !91
  %528 = sext i16 %527 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %529 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %530 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 8
  %531 = load i32, ptr %530, align 4, !tbaa !83
  %532 = sext i32 %531 to i64
  %533 = mul nsw i64 %532, 12
  %534 = call ptr %529(i64 noundef %533, ptr noundef nonnull @.str.15) #8
  %535 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %536 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 4
  %537 = load ptr, ptr %536, align 8, !tbaa !98
  %538 = call ptr %535(ptr noundef %537) #8
  %539 = icmp sgt i16 %527, 1
  br i1 %539, label %540, label %611

540:                                              ; preds = %525
  %541 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 2
  %542 = getelementptr inbounds float, ptr %3, i64 1
  %543 = getelementptr inbounds float, ptr %2, i64 1
  %544 = getelementptr inbounds float, ptr %3, i64 2
  %545 = getelementptr inbounds float, ptr %2, i64 2
  %546 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 5
  br label %547

547:                                              ; preds = %540, %606
  %548 = phi i32 [ 1, %540 ], [ %609, %606 ]
  %549 = phi ptr [ %534, %540 ], [ %607, %606 ]
  %550 = load i32, ptr %530, align 4, !tbaa !83
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %557, label %601

552:                                              ; preds = %557
  %553 = add nuw nsw i64 %558, 1
  %554 = load i32, ptr %530, align 4, !tbaa !83
  %555 = sext i32 %554 to i64
  %556 = icmp slt i64 %553, %555
  br i1 %556, label %557, label %601, !llvm.loop !145

557:                                              ; preds = %547, %552
  %558 = phi i64 [ %553, %552 ], [ 0, %547 ]
  %559 = load ptr, ptr %541, align 8, !tbaa !95
  %560 = getelementptr inbounds %struct.OccFace, ptr %559, i64 %558
  call fastcc void @occ_face(ptr noundef %560, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null)
  %561 = load float, ptr %3, align 4, !tbaa !44
  %562 = load float, ptr %2, align 4, !tbaa !44
  %563 = call float @llvm.fmuladd.f32(float %561, float 0x3E45798EE0000000, float %562)
  store float %563, ptr %2, align 4, !tbaa !44
  %564 = load float, ptr %542, align 4, !tbaa !44
  %565 = load float, ptr %543, align 4, !tbaa !44
  %566 = call float @llvm.fmuladd.f32(float %564, float 0x3E45798EE0000000, float %565)
  store float %566, ptr %543, align 4, !tbaa !44
  %567 = load float, ptr %544, align 4, !tbaa !44
  %568 = load float, ptr %545, align 4, !tbaa !44
  %569 = call float @llvm.fmuladd.f32(float %567, float 0x3E45798EE0000000, float %568)
  store float %569, ptr %545, align 4, !tbaa !44
  %570 = load ptr, ptr %541, align 8, !tbaa !95
  %571 = getelementptr inbounds %struct.OccFace, ptr %570, i64 %558
  %572 = getelementptr inbounds [3 x float], ptr %549, i64 %558
  call fastcc void @occ_lookup(ptr noundef nonnull %427, i32 noundef 0, ptr noundef %571, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %572, ptr noundef null)
  %573 = load float, ptr %572, align 4, !tbaa !44
  %574 = fcmp ogt float %573, 0.000000e+00
  %575 = select i1 %574, float %573, float 0.000000e+00
  store float %575, ptr %572, align 4, !tbaa !44
  %576 = getelementptr inbounds [3 x float], ptr %549, i64 %558, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !44
  %578 = fcmp ogt float %577, 0.000000e+00
  %579 = select i1 %578, float %577, float 0.000000e+00
  store float %579, ptr %576, align 4, !tbaa !44
  %580 = getelementptr inbounds [3 x float], ptr %549, i64 %558, i64 2
  %581 = load float, ptr %580, align 4, !tbaa !44
  %582 = fcmp ogt float %581, 0.000000e+00
  %583 = select i1 %582, float %581, float 0.000000e+00
  store float %583, ptr %580, align 4, !tbaa !44
  %584 = getelementptr inbounds [3 x float], ptr %538, i64 %558
  %585 = load float, ptr %584, align 4, !tbaa !44
  %586 = fadd float %575, %585
  store float %586, ptr %584, align 4, !tbaa !44
  %587 = getelementptr inbounds float, ptr %572, i64 1
  %588 = load float, ptr %587, align 4, !tbaa !44
  %589 = getelementptr inbounds float, ptr %584, i64 1
  %590 = load float, ptr %589, align 4, !tbaa !44
  %591 = fadd float %588, %590
  store float %591, ptr %589, align 4, !tbaa !44
  %592 = getelementptr inbounds float, ptr %572, i64 2
  %593 = load float, ptr %592, align 4, !tbaa !44
  %594 = getelementptr inbounds float, ptr %584, i64 2
  %595 = load float, ptr %594, align 4, !tbaa !44
  %596 = fadd float %593, %595
  store float %596, ptr %594, align 4, !tbaa !44
  %597 = load ptr, ptr %431, align 8, !tbaa !109
  %598 = load ptr, ptr %433, align 8, !tbaa !110
  %599 = call i32 %597(ptr noundef %598) #8
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %552, label %601

601:                                              ; preds = %552, %557, %547
  %602 = load ptr, ptr %431, align 8, !tbaa !109
  %603 = load ptr, ptr %433, align 8, !tbaa !110
  %604 = call i32 %602(ptr noundef %603) #8
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %601
  %607 = load ptr, ptr %536, align 8, !tbaa !98
  store ptr %549, ptr %536, align 8, !tbaa !98
  %608 = load ptr, ptr %546, align 8, !tbaa !107
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %427, ptr noundef %608)
  %609 = add nuw nsw i32 %548, 1
  %610 = icmp eq i32 %609, %528
  br i1 %610, label %611, label %547, !llvm.loop !146

611:                                              ; preds = %606, %601, %525
  %612 = phi ptr [ %534, %525 ], [ %607, %606 ], [ %549, %601 ]
  %613 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %613(ptr noundef %612) #8
  %614 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  %615 = load ptr, ptr %536, align 8, !tbaa !98
  call void %614(ptr noundef %615) #8
  store ptr %538, ptr %536, align 8, !tbaa !98
  %616 = load ptr, ptr %431, align 8, !tbaa !109
  %617 = load ptr, ptr %433, align 8, !tbaa !110
  %618 = call i32 %616(ptr noundef %617) #8
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %623

620:                                              ; preds = %611
  %621 = getelementptr inbounds %struct.OcclusionTree, ptr %427, i64 0, i32 5
  %622 = load ptr, ptr %621, align 8, !tbaa !107
  call fastcc void @occ_sum_occlusion(ptr noundef nonnull %427, ptr noundef %622)
  br label %623

623:                                              ; preds = %611, %620
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %624

624:                                              ; preds = %623, %520, %516
  %625 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %626 = load ptr, ptr %625, align 8, !tbaa !35
  %627 = icmp eq ptr %626, null
  br i1 %627, label %924, label %628

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %630 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 2
  %631 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 3
  %632 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 4
  %633 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 7
  %634 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 1
  %635 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 5
  %636 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 0, i32 6
  br label %637

637:                                              ; preds = %628, %921
  %638 = phi ptr [ %626, %628 ], [ %922, %921 ]
  %639 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 3
  %640 = load ptr, ptr %639, align 8, !tbaa !147
  %641 = icmp eq ptr %640, null
  br i1 %641, label %921, label %642

642:                                              ; preds = %637
  %643 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 4
  %644 = load ptr, ptr %643, align 8, !tbaa !149
  %645 = icmp eq ptr %644, null
  br i1 %645, label %921, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 5
  %648 = load ptr, ptr %647, align 8, !tbaa !150
  %649 = icmp eq ptr %648, null
  br i1 %649, label %921, label %650

650:                                              ; preds = %646
  %651 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %652 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 10
  %653 = load i32, ptr %652, align 8, !tbaa !151
  %654 = sext i32 %653 to i64
  %655 = shl nsw i64 %654, 2
  %656 = call ptr %651(i64 noundef %655, ptr noundef nonnull @.str.1) #8
  %657 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %658 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 11
  %659 = load i32, ptr %658, align 4, !tbaa !152
  %660 = sext i32 %659 to i64
  %661 = mul nsw i64 %660, 12
  %662 = call ptr %657(i64 noundef %661, ptr noundef nonnull @.str.2) #8
  %663 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %664 = load i32, ptr %658, align 4, !tbaa !152
  %665 = sext i32 %664 to i64
  %666 = mul nsw i64 %665, 12
  %667 = call ptr %663(i64 noundef %666, ptr noundef nonnull @.str.3) #8
  %668 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %669 = load i32, ptr %658, align 4, !tbaa !152
  %670 = sext i32 %669 to i64
  %671 = mul nsw i64 %670, 12
  %672 = call ptr %668(i64 noundef %671, ptr noundef nonnull @.str.4) #8
  %673 = load i32, ptr %658, align 4, !tbaa !152
  %674 = icmp sgt i32 %673, 10000
  br i1 %674, label %675, label %678

675:                                              ; preds = %650
  %676 = load i16, ptr %629, align 2, !tbaa !104
  %677 = sext i16 %676 to i32
  br label %678

678:                                              ; preds = %650, %675
  %679 = phi i32 [ %677, %675 ], [ 1, %650 ]
  %680 = icmp sgt i32 %679, 0
  br i1 %680, label %681, label %685

681:                                              ; preds = %678
  %682 = sdiv i32 %673, %679
  store ptr %0, ptr %8, align 16, !tbaa !153
  store ptr %662, ptr %630, align 16, !tbaa !155
  store ptr %667, ptr %631, align 8, !tbaa !156
  store ptr %672, ptr %632, align 16, !tbaa !157
  store ptr %638, ptr %634, align 8, !tbaa !158
  %683 = add nsw i32 %679, -1
  %684 = mul nsw i32 %683, %682
  store i32 %683, ptr %633, align 16, !tbaa !159
  store i32 %684, ptr %635, align 8, !tbaa !160
  store i32 %673, ptr %636, align 4, !tbaa !161
  br label %685

685:                                              ; preds = %681, %678
  %686 = icmp eq i32 %679, 1
  br i1 %686, label %687, label %689

687:                                              ; preds = %685
  %688 = call ptr @exec_strandsurface_sample(ptr noundef nonnull %8)
  br label %699

689:                                              ; preds = %685
  call void @BLI_init_threads(ptr noundef nonnull %9, ptr noundef nonnull @exec_strandsurface_sample, i32 noundef %679) #8
  %690 = icmp sgt i32 %679, 0
  br i1 %690, label %691, label %698

691:                                              ; preds = %689
  %692 = zext nneg i32 %679 to i64
  br label %693

693:                                              ; preds = %691, %693
  %694 = phi i64 [ 0, %691 ], [ %696, %693 ]
  %695 = getelementptr inbounds [1 x %struct.OcclusionThread], ptr %8, i64 0, i64 %694
  call void @BLI_insert_thread(ptr noundef nonnull %9, ptr noundef nonnull %695) #8
  %696 = add nuw nsw i64 %694, 1
  %697 = icmp eq i64 %696, %692
  br i1 %697, label %698, label %693, !llvm.loop !162

698:                                              ; preds = %693, %689
  call void @BLI_end_threads(ptr noundef nonnull %9) #8
  br label %699

699:                                              ; preds = %698, %687
  %700 = load i32, ptr %658, align 4, !tbaa !152
  %701 = icmp sgt i32 %700, 0
  br i1 %701, label %702, label %709

702:                                              ; preds = %699
  %703 = load ptr, ptr %639, align 8, !tbaa !147
  %704 = load ptr, ptr %647, align 8, !tbaa !150
  %705 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 6
  %706 = load ptr, ptr %705, align 8, !tbaa !163
  %707 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 7
  %708 = load ptr, ptr %707, align 8, !tbaa !164
  br label %716

709:                                              ; preds = %870, %699
  %710 = load i32, ptr %652, align 8, !tbaa !151
  %711 = icmp sgt i32 %710, 0
  br i1 %711, label %712, label %916

712:                                              ; preds = %709
  %713 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 6
  %714 = getelementptr inbounds %struct.StrandSurface, ptr %638, i64 0, i32 7
  %715 = zext nneg i32 %710 to i64
  br label %875

716:                                              ; preds = %702, %870
  %717 = phi i64 [ 0, %702 ], [ %871, %870 ]
  %718 = getelementptr inbounds [4 x i32], ptr %703, i64 %717
  %719 = getelementptr inbounds [3 x float], ptr %662, i64 %717
  %720 = load float, ptr %719, align 4, !tbaa !44
  %721 = getelementptr inbounds float, ptr %719, i64 1
  %722 = load float, ptr %721, align 4, !tbaa !44
  %723 = getelementptr inbounds float, ptr %719, i64 2
  %724 = load float, ptr %723, align 4, !tbaa !44
  %725 = getelementptr inbounds [3 x float], ptr %667, i64 %717
  %726 = load float, ptr %725, align 4, !tbaa !44
  %727 = getelementptr inbounds float, ptr %725, i64 1
  %728 = load float, ptr %727, align 4, !tbaa !44
  %729 = getelementptr inbounds float, ptr %725, i64 2
  %730 = load float, ptr %729, align 4, !tbaa !44
  %731 = getelementptr inbounds [3 x float], ptr %672, i64 %717
  %732 = load float, ptr %731, align 4, !tbaa !44
  %733 = getelementptr inbounds float, ptr %731, i64 1
  %734 = load float, ptr %733, align 4, !tbaa !44
  %735 = getelementptr inbounds float, ptr %731, i64 2
  %736 = load float, ptr %735, align 4, !tbaa !44
  %737 = load i32, ptr %718, align 4, !tbaa !40
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [3 x float], ptr %704, i64 %738
  %740 = load float, ptr %739, align 4, !tbaa !44
  %741 = fadd float %720, %740
  store float %741, ptr %739, align 4, !tbaa !44
  %742 = getelementptr inbounds float, ptr %739, i64 1
  %743 = load float, ptr %742, align 4, !tbaa !44
  %744 = fadd float %722, %743
  store float %744, ptr %742, align 4, !tbaa !44
  %745 = getelementptr inbounds float, ptr %739, i64 2
  %746 = load float, ptr %745, align 4, !tbaa !44
  %747 = fadd float %724, %746
  store float %747, ptr %745, align 4, !tbaa !44
  %748 = getelementptr inbounds [3 x float], ptr %706, i64 %738
  %749 = load float, ptr %748, align 4, !tbaa !44
  %750 = fadd float %726, %749
  store float %750, ptr %748, align 4, !tbaa !44
  %751 = getelementptr inbounds float, ptr %748, i64 1
  %752 = load float, ptr %751, align 4, !tbaa !44
  %753 = fadd float %728, %752
  store float %753, ptr %751, align 4, !tbaa !44
  %754 = getelementptr inbounds float, ptr %748, i64 2
  %755 = load float, ptr %754, align 4, !tbaa !44
  %756 = fadd float %730, %755
  store float %756, ptr %754, align 4, !tbaa !44
  %757 = getelementptr inbounds [3 x float], ptr %708, i64 %738
  %758 = load float, ptr %757, align 4, !tbaa !44
  %759 = fadd float %732, %758
  store float %759, ptr %757, align 4, !tbaa !44
  %760 = getelementptr inbounds float, ptr %757, i64 1
  %761 = load float, ptr %760, align 4, !tbaa !44
  %762 = fadd float %734, %761
  store float %762, ptr %760, align 4, !tbaa !44
  %763 = getelementptr inbounds float, ptr %757, i64 2
  %764 = load float, ptr %763, align 4, !tbaa !44
  %765 = fadd float %736, %764
  store float %765, ptr %763, align 4, !tbaa !44
  %766 = getelementptr inbounds i32, ptr %656, i64 %738
  %767 = load i32, ptr %766, align 4, !tbaa !40
  %768 = add nsw i32 %767, 1
  store i32 %768, ptr %766, align 4, !tbaa !40
  %769 = getelementptr inbounds i32, ptr %718, i64 1
  %770 = load i32, ptr %769, align 4, !tbaa !40
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [3 x float], ptr %704, i64 %771
  %773 = load float, ptr %772, align 4, !tbaa !44
  %774 = fadd float %720, %773
  store float %774, ptr %772, align 4, !tbaa !44
  %775 = getelementptr inbounds float, ptr %772, i64 1
  %776 = load float, ptr %775, align 4, !tbaa !44
  %777 = fadd float %722, %776
  store float %777, ptr %775, align 4, !tbaa !44
  %778 = getelementptr inbounds float, ptr %772, i64 2
  %779 = load float, ptr %778, align 4, !tbaa !44
  %780 = fadd float %724, %779
  store float %780, ptr %778, align 4, !tbaa !44
  %781 = getelementptr inbounds [3 x float], ptr %706, i64 %771
  %782 = load float, ptr %781, align 4, !tbaa !44
  %783 = fadd float %726, %782
  store float %783, ptr %781, align 4, !tbaa !44
  %784 = getelementptr inbounds float, ptr %781, i64 1
  %785 = load float, ptr %784, align 4, !tbaa !44
  %786 = fadd float %728, %785
  store float %786, ptr %784, align 4, !tbaa !44
  %787 = getelementptr inbounds float, ptr %781, i64 2
  %788 = load float, ptr %787, align 4, !tbaa !44
  %789 = fadd float %730, %788
  store float %789, ptr %787, align 4, !tbaa !44
  %790 = getelementptr inbounds [3 x float], ptr %708, i64 %771
  %791 = load float, ptr %790, align 4, !tbaa !44
  %792 = fadd float %732, %791
  store float %792, ptr %790, align 4, !tbaa !44
  %793 = getelementptr inbounds float, ptr %790, i64 1
  %794 = load float, ptr %793, align 4, !tbaa !44
  %795 = fadd float %734, %794
  store float %795, ptr %793, align 4, !tbaa !44
  %796 = getelementptr inbounds float, ptr %790, i64 2
  %797 = load float, ptr %796, align 4, !tbaa !44
  %798 = fadd float %736, %797
  store float %798, ptr %796, align 4, !tbaa !44
  %799 = getelementptr inbounds i32, ptr %656, i64 %771
  %800 = load i32, ptr %799, align 4, !tbaa !40
  %801 = add nsw i32 %800, 1
  store i32 %801, ptr %799, align 4, !tbaa !40
  %802 = getelementptr inbounds i32, ptr %718, i64 2
  %803 = load i32, ptr %802, align 4, !tbaa !40
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [3 x float], ptr %704, i64 %804
  %806 = load float, ptr %805, align 4, !tbaa !44
  %807 = fadd float %720, %806
  store float %807, ptr %805, align 4, !tbaa !44
  %808 = getelementptr inbounds float, ptr %805, i64 1
  %809 = load float, ptr %808, align 4, !tbaa !44
  %810 = fadd float %722, %809
  store float %810, ptr %808, align 4, !tbaa !44
  %811 = getelementptr inbounds float, ptr %805, i64 2
  %812 = load float, ptr %811, align 4, !tbaa !44
  %813 = fadd float %724, %812
  store float %813, ptr %811, align 4, !tbaa !44
  %814 = getelementptr inbounds [3 x float], ptr %706, i64 %804
  %815 = load float, ptr %814, align 4, !tbaa !44
  %816 = fadd float %726, %815
  store float %816, ptr %814, align 4, !tbaa !44
  %817 = getelementptr inbounds float, ptr %814, i64 1
  %818 = load float, ptr %817, align 4, !tbaa !44
  %819 = fadd float %728, %818
  store float %819, ptr %817, align 4, !tbaa !44
  %820 = getelementptr inbounds float, ptr %814, i64 2
  %821 = load float, ptr %820, align 4, !tbaa !44
  %822 = fadd float %730, %821
  store float %822, ptr %820, align 4, !tbaa !44
  %823 = getelementptr inbounds [3 x float], ptr %708, i64 %804
  %824 = load float, ptr %823, align 4, !tbaa !44
  %825 = fadd float %732, %824
  store float %825, ptr %823, align 4, !tbaa !44
  %826 = getelementptr inbounds float, ptr %823, i64 1
  %827 = load float, ptr %826, align 4, !tbaa !44
  %828 = fadd float %734, %827
  store float %828, ptr %826, align 4, !tbaa !44
  %829 = getelementptr inbounds float, ptr %823, i64 2
  %830 = load float, ptr %829, align 4, !tbaa !44
  %831 = fadd float %736, %830
  store float %831, ptr %829, align 4, !tbaa !44
  %832 = getelementptr inbounds i32, ptr %656, i64 %804
  %833 = load i32, ptr %832, align 4, !tbaa !40
  %834 = add nsw i32 %833, 1
  store i32 %834, ptr %832, align 4, !tbaa !40
  %835 = getelementptr inbounds i32, ptr %718, i64 3
  %836 = load i32, ptr %835, align 4, !tbaa !40
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %870, label %838

838:                                              ; preds = %716
  %839 = sext i32 %836 to i64
  %840 = getelementptr inbounds [3 x float], ptr %704, i64 %839
  %841 = load float, ptr %840, align 4, !tbaa !44
  %842 = fadd float %720, %841
  store float %842, ptr %840, align 4, !tbaa !44
  %843 = getelementptr inbounds float, ptr %840, i64 1
  %844 = load float, ptr %843, align 4, !tbaa !44
  %845 = fadd float %722, %844
  store float %845, ptr %843, align 4, !tbaa !44
  %846 = getelementptr inbounds float, ptr %840, i64 2
  %847 = load float, ptr %846, align 4, !tbaa !44
  %848 = fadd float %724, %847
  store float %848, ptr %846, align 4, !tbaa !44
  %849 = getelementptr inbounds [3 x float], ptr %706, i64 %839
  %850 = load float, ptr %849, align 4, !tbaa !44
  %851 = fadd float %726, %850
  store float %851, ptr %849, align 4, !tbaa !44
  %852 = getelementptr inbounds float, ptr %849, i64 1
  %853 = load float, ptr %852, align 4, !tbaa !44
  %854 = fadd float %728, %853
  store float %854, ptr %852, align 4, !tbaa !44
  %855 = getelementptr inbounds float, ptr %849, i64 2
  %856 = load float, ptr %855, align 4, !tbaa !44
  %857 = fadd float %730, %856
  store float %857, ptr %855, align 4, !tbaa !44
  %858 = getelementptr inbounds [3 x float], ptr %708, i64 %839
  %859 = load float, ptr %858, align 4, !tbaa !44
  %860 = fadd float %732, %859
  store float %860, ptr %858, align 4, !tbaa !44
  %861 = getelementptr inbounds float, ptr %858, i64 1
  %862 = load float, ptr %861, align 4, !tbaa !44
  %863 = fadd float %734, %862
  store float %863, ptr %861, align 4, !tbaa !44
  %864 = getelementptr inbounds float, ptr %858, i64 2
  %865 = load float, ptr %864, align 4, !tbaa !44
  %866 = fadd float %736, %865
  store float %866, ptr %864, align 4, !tbaa !44
  %867 = getelementptr inbounds i32, ptr %656, i64 %839
  %868 = load i32, ptr %867, align 4, !tbaa !40
  %869 = add nsw i32 %868, 1
  store i32 %869, ptr %867, align 4, !tbaa !40
  br label %870

870:                                              ; preds = %716, %838
  %871 = add nuw nsw i64 %717, 1
  %872 = load i32, ptr %658, align 4, !tbaa !152
  %873 = sext i32 %872 to i64
  %874 = icmp slt i64 %871, %873
  br i1 %874, label %716, label %709, !llvm.loop !165

875:                                              ; preds = %712, %913
  %876 = phi i64 [ 0, %712 ], [ %914, %913 ]
  %877 = getelementptr inbounds i32, ptr %656, i64 %876
  %878 = load i32, ptr %877, align 4, !tbaa !40
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %913, label %880

880:                                              ; preds = %875
  %881 = load ptr, ptr %647, align 8, !tbaa !150
  %882 = getelementptr inbounds [3 x float], ptr %881, i64 %876
  %883 = sitofp i32 %878 to float
  %884 = fdiv float 1.000000e+00, %883
  %885 = load float, ptr %882, align 4, !tbaa !44
  %886 = fmul float %884, %885
  store float %886, ptr %882, align 4, !tbaa !44
  %887 = getelementptr inbounds float, ptr %882, i64 1
  %888 = load float, ptr %887, align 4, !tbaa !44
  %889 = fmul float %884, %888
  store float %889, ptr %887, align 4, !tbaa !44
  %890 = getelementptr inbounds float, ptr %882, i64 2
  %891 = load float, ptr %890, align 4, !tbaa !44
  %892 = fmul float %884, %891
  store float %892, ptr %890, align 4, !tbaa !44
  %893 = load ptr, ptr %713, align 8, !tbaa !163
  %894 = getelementptr inbounds [3 x float], ptr %893, i64 %876
  %895 = load float, ptr %894, align 4, !tbaa !44
  %896 = fmul float %884, %895
  store float %896, ptr %894, align 4, !tbaa !44
  %897 = getelementptr inbounds float, ptr %894, i64 1
  %898 = load float, ptr %897, align 4, !tbaa !44
  %899 = fmul float %884, %898
  store float %899, ptr %897, align 4, !tbaa !44
  %900 = getelementptr inbounds float, ptr %894, i64 2
  %901 = load float, ptr %900, align 4, !tbaa !44
  %902 = fmul float %884, %901
  store float %902, ptr %900, align 4, !tbaa !44
  %903 = load ptr, ptr %714, align 8, !tbaa !164
  %904 = getelementptr inbounds [3 x float], ptr %903, i64 %876
  %905 = load float, ptr %904, align 4, !tbaa !44
  %906 = fmul float %884, %905
  store float %906, ptr %904, align 4, !tbaa !44
  %907 = getelementptr inbounds float, ptr %904, i64 1
  %908 = load float, ptr %907, align 4, !tbaa !44
  %909 = fmul float %884, %908
  store float %909, ptr %907, align 4, !tbaa !44
  %910 = getelementptr inbounds float, ptr %904, i64 2
  %911 = load float, ptr %910, align 4, !tbaa !44
  %912 = fmul float %884, %911
  store float %912, ptr %910, align 4, !tbaa !44
  br label %913

913:                                              ; preds = %875, %880
  %914 = add nuw nsw i64 %876, 1
  %915 = icmp eq i64 %914, %715
  br i1 %915, label %916, label %875, !llvm.loop !166

916:                                              ; preds = %913, %709
  %917 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %917(ptr noundef %656) #8
  %918 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %918(ptr noundef %662) #8
  %919 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %919(ptr noundef %667) #8
  %920 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %920(ptr noundef %672) #8
  br label %921

921:                                              ; preds = %637, %642, %646, %916
  %922 = load ptr, ptr %638, align 8, !tbaa !35
  %923 = icmp eq ptr %922, null
  br i1 %923, label %924, label %637, !llvm.loop !167

924:                                              ; preds = %921, %624, %430, %426
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exec_strandsurface_sample(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %10 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !161
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.StrandSurface, ptr %9, i64 0, i32 3
  %17 = getelementptr inbounds %struct.StrandSurface, ptr %9, i64 0, i32 4
  %18 = getelementptr inbounds float, ptr %6, i64 1
  %19 = getelementptr inbounds float, ptr %6, i64 2
  %20 = getelementptr inbounds %struct.Render, ptr %7, i64 0, i32 56
  %21 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = getelementptr inbounds float, ptr %2, i64 2
  %25 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = getelementptr inbounds float, ptr %3, i64 2
  %28 = getelementptr inbounds %struct.OcclusionThread, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds float, ptr %4, i64 1
  %30 = getelementptr inbounds float, ptr %4, i64 2
  %31 = sext i32 %11 to i64
  br label %32

32:                                               ; preds = %15, %57
  %33 = phi i64 [ %31, %15 ], [ %87, %57 ]
  %34 = load ptr, ptr %16, align 8, !tbaa !147
  %35 = getelementptr inbounds [4 x i32], ptr %34, i64 %33
  %36 = load ptr, ptr %17, align 8, !tbaa !149
  %37 = load i32, ptr %35, align 4, !tbaa !40
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x float], ptr %36, i64 %38
  %40 = getelementptr inbounds i32, ptr %35, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float], ptr %36, i64 %42
  %44 = getelementptr inbounds i32, ptr %35, i64 2
  %45 = load i32, ptr %44, align 4, !tbaa !40
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], ptr %36, i64 %46
  %48 = getelementptr inbounds i32, ptr %35, i64 3
  %49 = load i32, ptr %48, align 4, !tbaa !40
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %32
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds [3 x float], ptr %36, i64 %52
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %47) #8
  %54 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %39, ptr noundef %43, ptr noundef %47, ptr noundef nonnull %53) #8
  br label %57

55:                                               ; preds = %32
  call void @cent_tri_v3(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %43, ptr noundef %47) #8
  %56 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %39, ptr noundef %43, ptr noundef %47) #8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load float, ptr %6, align 4, !tbaa !44
  %59 = fneg float %58
  store float %59, ptr %6, align 4, !tbaa !44
  %60 = load float, ptr %18, align 4, !tbaa !44
  %61 = fneg float %60
  store float %61, ptr %18, align 4, !tbaa !44
  %62 = load float, ptr %19, align 4, !tbaa !44
  %63 = fneg float %62
  store float %63, ptr %19, align 4, !tbaa !44
  %64 = load ptr, ptr %20, align 8, !tbaa !139
  %65 = load i32, ptr %21, align 8, !tbaa !159
  call fastcc void @sample_occ_tree(ptr noundef %7, ptr noundef %64, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %65, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %66 = load ptr, ptr %22, align 8, !tbaa !155
  %67 = getelementptr inbounds [3 x float], ptr %66, i64 %33
  %68 = load float, ptr %2, align 4, !tbaa !44
  store float %68, ptr %67, align 4, !tbaa !44
  %69 = load float, ptr %23, align 4, !tbaa !44
  %70 = getelementptr inbounds float, ptr %67, i64 1
  store float %69, ptr %70, align 4, !tbaa !44
  %71 = load float, ptr %24, align 4, !tbaa !44
  %72 = getelementptr inbounds float, ptr %67, i64 2
  store float %71, ptr %72, align 4, !tbaa !44
  %73 = load ptr, ptr %25, align 8, !tbaa !156
  %74 = getelementptr inbounds [3 x float], ptr %73, i64 %33
  %75 = load float, ptr %3, align 4, !tbaa !44
  store float %75, ptr %74, align 4, !tbaa !44
  %76 = load float, ptr %26, align 4, !tbaa !44
  %77 = getelementptr inbounds float, ptr %74, i64 1
  store float %76, ptr %77, align 4, !tbaa !44
  %78 = load float, ptr %27, align 4, !tbaa !44
  %79 = getelementptr inbounds float, ptr %74, i64 2
  store float %78, ptr %79, align 4, !tbaa !44
  %80 = load ptr, ptr %28, align 8, !tbaa !157
  %81 = getelementptr inbounds [3 x float], ptr %80, i64 %33
  %82 = load float, ptr %4, align 4, !tbaa !44
  store float %82, ptr %81, align 4, !tbaa !44
  %83 = load float, ptr %29, align 4, !tbaa !44
  %84 = getelementptr inbounds float, ptr %81, i64 1
  store float %83, ptr %84, align 4, !tbaa !44
  %85 = load float, ptr %30, align 4, !tbaa !44
  %86 = getelementptr inbounds float, ptr %81, i64 2
  store float %85, ptr %86, align 4, !tbaa !44
  %87 = add nsw i64 %33, 1
  %88 = load i32, ptr %12, align 4, !tbaa !161
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %32, label %91, !llvm.loop !168

91:                                               ; preds = %57, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  ret ptr null
}

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @free_occ(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @BLI_memarena_free(ptr noundef nonnull %6) #8
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.OcclusionTree, ptr %3, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %14(ptr noundef nonnull %11) #8
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.OcclusionTree, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %20(ptr noundef nonnull %17) #8
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.OcclusionTree, ptr %3, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %26(ptr noundef nonnull %23) #8
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.OcclusionTree, ptr %3, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %32(ptr noundef nonnull %29) #8
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.OcclusionTree, ptr %3, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %38(ptr noundef nonnull %35) #8
  br label %39

39:                                               ; preds = %33, %37
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %40(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !139
  br label %41

41:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sample_occ(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.OccFace, align 4
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %708, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = icmp eq ptr %12, null
  br i1 %13, label %204, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.StrandRen, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.StrandBuffer, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call ptr @RE_strandren_get_face(ptr noundef %20, ptr noundef nonnull %12, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %22 = icmp eq ptr %18, null
  br i1 %22, label %198, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.StrandSurface, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = icmp eq ptr %25, null
  br i1 %26, label %198, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.StrandSurface, ptr %18, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !149
  %30 = icmp eq ptr %29, null
  br i1 %30, label %198, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.StrandSurface, ptr %18, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !150
  %34 = icmp ne ptr %33, null
  %35 = icmp ne ptr %21, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %198

37:                                               ; preds = %31
  %38 = load i32, ptr %21, align 4, !tbaa !40
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], ptr %25, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x float], ptr %29, i64 %42
  %44 = getelementptr inbounds i32, ptr %40, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !40
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], ptr %29, i64 %46
  %48 = getelementptr inbounds i32, ptr %40, i64 2
  %49 = load i32, ptr %48, align 4, !tbaa !40
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %29, i64 %50
  %52 = getelementptr inbounds i32, ptr %40, i64 3
  %53 = load i32, ptr %52, align 4, !tbaa !40
  %54 = icmp eq i32 %53, 0
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [3 x float], ptr %29, i64 %55
  %57 = select i1 %54, ptr null, ptr %56
  %58 = load ptr, ptr %12, align 8, !tbaa !174
  call void @interp_weights_face_v3(ptr noundef nonnull %5, ptr noundef nonnull %43, ptr noundef nonnull %47, ptr noundef nonnull %51, ptr noundef %57, ptr noundef %58) #8
  %59 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  %61 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 1
  %64 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 2
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  %66 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 1
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %59, i8 0, i64 36, i1 false)
  %68 = load ptr, ptr %32, align 8, !tbaa !150
  %69 = load i32, ptr %40, align 4, !tbaa !40
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x float], ptr %68, i64 %70
  %72 = load float, ptr %5, align 16, !tbaa !44
  %73 = load float, ptr %71, align 4, !tbaa !44
  %74 = call float @llvm.fmuladd.f32(float %73, float %72, float 0.000000e+00)
  store float %74, ptr %59, align 4, !tbaa !44
  %75 = getelementptr inbounds float, ptr %71, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !44
  %77 = call float @llvm.fmuladd.f32(float %76, float %72, float 0.000000e+00)
  store float %77, ptr %60, align 4, !tbaa !44
  %78 = getelementptr inbounds float, ptr %71, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !44
  %80 = call float @llvm.fmuladd.f32(float %79, float %72, float 0.000000e+00)
  store float %80, ptr %61, align 4, !tbaa !44
  %81 = getelementptr inbounds %struct.StrandSurface, ptr %18, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !163
  %83 = getelementptr inbounds [3 x float], ptr %82, i64 %70
  %84 = load float, ptr %83, align 4, !tbaa !44
  %85 = call float @llvm.fmuladd.f32(float %84, float %72, float 0.000000e+00)
  store float %85, ptr %62, align 4, !tbaa !44
  %86 = getelementptr inbounds float, ptr %83, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !44
  %88 = call float @llvm.fmuladd.f32(float %87, float %72, float 0.000000e+00)
  store float %88, ptr %63, align 4, !tbaa !44
  %89 = getelementptr inbounds float, ptr %83, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !44
  %91 = call float @llvm.fmuladd.f32(float %90, float %72, float 0.000000e+00)
  store float %91, ptr %64, align 4, !tbaa !44
  %92 = getelementptr inbounds %struct.StrandSurface, ptr %18, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !164
  %94 = getelementptr inbounds [3 x float], ptr %93, i64 %70
  %95 = load float, ptr %94, align 4, !tbaa !44
  %96 = call float @llvm.fmuladd.f32(float %95, float %72, float 0.000000e+00)
  store float %96, ptr %65, align 4, !tbaa !44
  %97 = getelementptr inbounds float, ptr %94, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !44
  %99 = call float @llvm.fmuladd.f32(float %98, float %72, float 0.000000e+00)
  store float %99, ptr %66, align 4, !tbaa !44
  %100 = getelementptr inbounds float, ptr %94, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !44
  %102 = call float @llvm.fmuladd.f32(float %101, float %72, float 0.000000e+00)
  store float %102, ptr %67, align 4, !tbaa !44
  %103 = load i32, ptr %44, align 4, !tbaa !40
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x float], ptr %68, i64 %104
  %106 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !44
  %108 = load float, ptr %105, align 4, !tbaa !44
  %109 = call float @llvm.fmuladd.f32(float %108, float %107, float %74)
  store float %109, ptr %59, align 4, !tbaa !44
  %110 = getelementptr inbounds float, ptr %105, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !44
  %112 = call float @llvm.fmuladd.f32(float %111, float %107, float %77)
  store float %112, ptr %60, align 4, !tbaa !44
  %113 = getelementptr inbounds float, ptr %105, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !44
  %115 = call float @llvm.fmuladd.f32(float %114, float %107, float %80)
  store float %115, ptr %61, align 4, !tbaa !44
  %116 = getelementptr inbounds [3 x float], ptr %82, i64 %104
  %117 = load float, ptr %116, align 4, !tbaa !44
  %118 = call float @llvm.fmuladd.f32(float %117, float %107, float %85)
  store float %118, ptr %62, align 4, !tbaa !44
  %119 = getelementptr inbounds float, ptr %116, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !44
  %121 = call float @llvm.fmuladd.f32(float %120, float %107, float %88)
  store float %121, ptr %63, align 4, !tbaa !44
  %122 = getelementptr inbounds float, ptr %116, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !44
  %124 = call float @llvm.fmuladd.f32(float %123, float %107, float %91)
  store float %124, ptr %64, align 4, !tbaa !44
  %125 = getelementptr inbounds [3 x float], ptr %93, i64 %104
  %126 = load float, ptr %125, align 4, !tbaa !44
  %127 = call float @llvm.fmuladd.f32(float %126, float %107, float %96)
  store float %127, ptr %65, align 4, !tbaa !44
  %128 = getelementptr inbounds float, ptr %125, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !44
  %130 = call float @llvm.fmuladd.f32(float %129, float %107, float %99)
  store float %130, ptr %66, align 4, !tbaa !44
  %131 = getelementptr inbounds float, ptr %125, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !44
  %133 = call float @llvm.fmuladd.f32(float %132, float %107, float %102)
  store float %133, ptr %67, align 4, !tbaa !44
  %134 = load i32, ptr %48, align 4, !tbaa !40
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [3 x float], ptr %68, i64 %135
  %137 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %138 = load float, ptr %137, align 8, !tbaa !44
  %139 = load float, ptr %136, align 4, !tbaa !44
  %140 = call float @llvm.fmuladd.f32(float %139, float %138, float %109)
  store float %140, ptr %59, align 4, !tbaa !44
  %141 = getelementptr inbounds float, ptr %136, i64 1
  %142 = load float, ptr %141, align 4, !tbaa !44
  %143 = call float @llvm.fmuladd.f32(float %142, float %138, float %112)
  store float %143, ptr %60, align 4, !tbaa !44
  %144 = getelementptr inbounds float, ptr %136, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !44
  %146 = call float @llvm.fmuladd.f32(float %145, float %138, float %115)
  store float %146, ptr %61, align 4, !tbaa !44
  %147 = getelementptr inbounds [3 x float], ptr %82, i64 %135
  %148 = load float, ptr %147, align 4, !tbaa !44
  %149 = call float @llvm.fmuladd.f32(float %148, float %138, float %118)
  store float %149, ptr %62, align 4, !tbaa !44
  %150 = getelementptr inbounds float, ptr %147, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !44
  %152 = call float @llvm.fmuladd.f32(float %151, float %138, float %121)
  store float %152, ptr %63, align 4, !tbaa !44
  %153 = getelementptr inbounds float, ptr %147, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !44
  %155 = call float @llvm.fmuladd.f32(float %154, float %138, float %124)
  store float %155, ptr %64, align 4, !tbaa !44
  %156 = getelementptr inbounds [3 x float], ptr %93, i64 %135
  %157 = load float, ptr %156, align 4, !tbaa !44
  %158 = call float @llvm.fmuladd.f32(float %157, float %138, float %127)
  store float %158, ptr %65, align 4, !tbaa !44
  %159 = getelementptr inbounds float, ptr %156, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !44
  %161 = call float @llvm.fmuladd.f32(float %160, float %138, float %130)
  store float %161, ptr %66, align 4, !tbaa !44
  %162 = getelementptr inbounds float, ptr %156, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !44
  %164 = call float @llvm.fmuladd.f32(float %163, float %138, float %133)
  store float %164, ptr %67, align 4, !tbaa !44
  %165 = load i32, ptr %52, align 4, !tbaa !40
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %203, label %167

167:                                              ; preds = %37
  %168 = sext i32 %165 to i64
  %169 = getelementptr inbounds [3 x float], ptr %68, i64 %168
  %170 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %171 = load float, ptr %170, align 4, !tbaa !44
  %172 = load float, ptr %169, align 4, !tbaa !44
  %173 = call float @llvm.fmuladd.f32(float %172, float %171, float %140)
  store float %173, ptr %59, align 4, !tbaa !44
  %174 = getelementptr inbounds float, ptr %169, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !44
  %176 = call float @llvm.fmuladd.f32(float %175, float %171, float %143)
  store float %176, ptr %60, align 4, !tbaa !44
  %177 = getelementptr inbounds float, ptr %169, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !44
  %179 = call float @llvm.fmuladd.f32(float %178, float %171, float %146)
  store float %179, ptr %61, align 4, !tbaa !44
  %180 = getelementptr inbounds [3 x float], ptr %82, i64 %168
  %181 = load float, ptr %180, align 4, !tbaa !44
  %182 = call float @llvm.fmuladd.f32(float %181, float %171, float %149)
  store float %182, ptr %62, align 4, !tbaa !44
  %183 = getelementptr inbounds float, ptr %180, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !44
  %185 = call float @llvm.fmuladd.f32(float %184, float %171, float %152)
  store float %185, ptr %63, align 4, !tbaa !44
  %186 = getelementptr inbounds float, ptr %180, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !44
  %188 = call float @llvm.fmuladd.f32(float %187, float %171, float %155)
  store float %188, ptr %64, align 4, !tbaa !44
  %189 = getelementptr inbounds [3 x float], ptr %93, i64 %168
  %190 = load float, ptr %189, align 4, !tbaa !44
  %191 = call float @llvm.fmuladd.f32(float %190, float %171, float %158)
  store float %191, ptr %65, align 4, !tbaa !44
  %192 = getelementptr inbounds float, ptr %189, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !44
  %194 = call float @llvm.fmuladd.f32(float %193, float %171, float %161)
  store float %194, ptr %66, align 4, !tbaa !44
  %195 = getelementptr inbounds float, ptr %189, i64 2
  %196 = load float, ptr %195, align 4, !tbaa !44
  %197 = call float @llvm.fmuladd.f32(float %196, float %171, float %164)
  store float %197, ptr %67, align 4, !tbaa !44
  br label %203

198:                                              ; preds = %31, %27, %23, %14
  %199 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  store float 1.000000e+00, ptr %199, align 8, !tbaa !44
  %200 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  store float 1.000000e+00, ptr %200, align 4, !tbaa !44
  %201 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %201, align 8, !tbaa !44
  %202 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %202, i8 0, i64 24, i1 false)
  br label %203

203:                                              ; preds = %37, %167, %198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %714

204:                                              ; preds = %10
  %205 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 108
  %206 = load i32, ptr %205, align 8, !tbaa !175
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %562

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %210 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17
  %211 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %212 = load i32, ptr %211, align 4, !tbaa !127
  %213 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 104
  %214 = load i32, ptr %213, align 8, !tbaa !128
  %215 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %216 = load i16, ptr %215, align 2, !tbaa !176
  %217 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  %218 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102
  %219 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %220 = getelementptr inbounds %struct.OcclusionTree, ptr %8, i64 0, i32 14
  %221 = load ptr, ptr %220, align 8, !tbaa !94
  %222 = icmp eq ptr %221, null
  br i1 %222, label %561, label %223

223:                                              ; preds = %208
  %224 = sext i16 %216 to i64
  %225 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !177
  %227 = icmp eq ptr %226, null
  br i1 %227, label %561, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 5
  %230 = load i32, ptr %229, align 8, !tbaa !179
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %561, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !180
  %235 = sub nsw i32 %214, %234
  %236 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 3
  %237 = load i32, ptr %236, align 8, !tbaa !181
  %238 = mul nsw i32 %235, %237
  %239 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 1
  %240 = load i32, ptr %239, align 8, !tbaa !182
  %241 = sub i32 %212, %240
  %242 = add nsw i32 %241, %238
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 9
  %245 = load i32, ptr %244, align 4, !tbaa !183
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %310, label %247

247:                                              ; preds = %232
  %248 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243
  %249 = load float, ptr %248, align 4, !tbaa !44
  %250 = load float, ptr %209, align 4, !tbaa !44
  %251 = fsub float %249, %250
  %252 = getelementptr inbounds float, ptr %248, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !44
  %254 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !44
  %256 = fsub float %253, %255
  %257 = getelementptr inbounds float, ptr %248, i64 2
  %258 = load float, ptr %257, align 4, !tbaa !44
  %259 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !44
  %261 = fsub float %258, %260
  %262 = fmul float %256, %256
  %263 = tail call float @llvm.fmuladd.f32(float %251, float %251, float %262)
  %264 = tail call float @llvm.fmuladd.f32(float %261, float %261, float %263)
  %265 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 6
  %266 = load float, ptr %265, align 4, !tbaa !185
  %267 = fmul float %266, 5.000000e-01
  %268 = fcmp olt float %264, %267
  br i1 %268, label %269, label %310

269:                                              ; preds = %247
  %270 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 1
  %271 = load float, ptr %270, align 4, !tbaa !44
  %272 = load float, ptr %210, align 4, !tbaa !44
  %273 = getelementptr inbounds float, ptr %270, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !44
  %275 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !44
  %277 = fmul float %274, %276
  %278 = tail call float @llvm.fmuladd.f32(float %271, float %272, float %277)
  %279 = getelementptr inbounds float, ptr %270, i64 2
  %280 = load float, ptr %279, align 4, !tbaa !44
  %281 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 2
  %282 = load float, ptr %281, align 4, !tbaa !44
  %283 = tail call float @llvm.fmuladd.f32(float %280, float %282, float %278)
  %284 = fcmp ogt float %283, 0x3FEF5C2900000000
  br i1 %284, label %285, label %310

285:                                              ; preds = %269
  %286 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 2
  %287 = load float, ptr %286, align 4, !tbaa !44
  store float %287, ptr %217, align 4, !tbaa !44
  %288 = getelementptr inbounds float, ptr %286, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !44
  %290 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  store float %289, ptr %290, align 4, !tbaa !44
  %291 = getelementptr inbounds float, ptr %286, i64 2
  %292 = load float, ptr %291, align 4, !tbaa !44
  %293 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  store float %292, ptr %293, align 4, !tbaa !44
  %294 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 3
  %295 = load float, ptr %294, align 4, !tbaa !44
  store float %295, ptr %218, align 4, !tbaa !44
  %296 = getelementptr inbounds float, ptr %294, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !44
  %298 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 1
  store float %297, ptr %298, align 4, !tbaa !44
  %299 = getelementptr inbounds float, ptr %294, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !44
  %301 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 2
  store float %300, ptr %301, align 4, !tbaa !44
  %302 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %243, i32 4
  %303 = load float, ptr %302, align 4, !tbaa !44
  store float %303, ptr %219, align 4, !tbaa !44
  %304 = getelementptr inbounds float, ptr %302, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !44
  %306 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 1
  store float %305, ptr %306, align 4, !tbaa !44
  %307 = getelementptr inbounds float, ptr %302, i64 2
  %308 = load float, ptr %307, align 4, !tbaa !44
  %309 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 2
  store float %308, ptr %309, align 4, !tbaa !44
  br label %713

310:                                              ; preds = %269, %247, %232
  %311 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 1
  %312 = load i32, ptr %311, align 8, !tbaa !182
  %313 = freeze i32 %312
  %314 = sub i32 %212, %313
  %315 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 2
  %316 = load i32, ptr %315, align 4, !tbaa !180
  %317 = freeze i32 %316
  %318 = sub i32 %214, %317
  %319 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 5
  %320 = load i32, ptr %319, align 8, !tbaa !179
  %321 = srem i32 %314, %320
  %322 = sub nsw i32 %314, %321
  %323 = srem i32 %318, %320
  %324 = sub nsw i32 %318, %323
  %325 = icmp slt i32 %322, 0
  br i1 %325, label %341, label %326

326:                                              ; preds = %310
  %327 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 3
  %328 = load i32, ptr %327, align 8, !tbaa !181
  %329 = icmp sge i32 %322, %328
  %330 = icmp slt i32 %324, 0
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %341, label %332

332:                                              ; preds = %326
  %333 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 4
  %334 = load i32, ptr %333, align 4, !tbaa !186
  %335 = icmp slt i32 %324, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = mul nsw i32 %328, %324
  %338 = add nsw i32 %337, %322
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %339
  br label %341

341:                                              ; preds = %310, %326, %332, %336
  %342 = phi ptr [ %340, %336 ], [ null, %332 ], [ null, %326 ], [ null, %310 ]
  store ptr %342, ptr %3, align 16, !tbaa !35
  %343 = add nsw i32 %230, %212
  %344 = sub i32 %343, %313
  %345 = srem i32 %344, %320
  %346 = sub nsw i32 %344, %345
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %363, label %348

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 3
  %350 = load i32, ptr %349, align 8, !tbaa !181
  %351 = icmp sge i32 %346, %350
  %352 = icmp slt i32 %324, 0
  %353 = select i1 %351, i1 true, i1 %352
  br i1 %353, label %363, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 4
  %356 = load i32, ptr %355, align 4, !tbaa !186
  %357 = icmp slt i32 %324, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = mul nsw i32 %350, %324
  %360 = add nsw i32 %359, %346
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %361
  br label %363

363:                                              ; preds = %341, %348, %354, %358
  %364 = phi ptr [ %362, %358 ], [ null, %354 ], [ null, %348 ], [ null, %341 ]
  %365 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  store ptr %364, ptr %365, align 8, !tbaa !35
  %366 = add nsw i32 %230, %214
  %367 = sub i32 %366, %317
  %368 = srem i32 %367, %320
  %369 = sub nsw i32 %367, %368
  br i1 %325, label %385, label %370

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 3
  %372 = load i32, ptr %371, align 8, !tbaa !181
  %373 = icmp sge i32 %322, %372
  %374 = icmp slt i32 %369, 0
  %375 = select i1 %373, i1 true, i1 %374
  br i1 %375, label %385, label %376

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 4
  %378 = load i32, ptr %377, align 4, !tbaa !186
  %379 = icmp slt i32 %369, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = mul nsw i32 %372, %369
  %382 = add nsw i32 %381, %322
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %383
  br label %385

385:                                              ; preds = %363, %370, %376, %380
  %386 = phi ptr [ %384, %380 ], [ null, %376 ], [ null, %370 ], [ null, %363 ]
  %387 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 2
  store ptr %386, ptr %387, align 16, !tbaa !35
  br i1 %347, label %403, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 3
  %390 = load i32, ptr %389, align 8, !tbaa !181
  %391 = icmp sge i32 %346, %390
  %392 = icmp slt i32 %369, 0
  %393 = select i1 %391, i1 true, i1 %392
  br i1 %393, label %403, label %394

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.OcclusionCache, ptr %221, i64 %224, i32 4
  %396 = load i32, ptr %395, align 4, !tbaa !186
  %397 = icmp slt i32 %369, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %394
  %399 = mul nsw i32 %390, %369
  %400 = add nsw i32 %399, %346
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %226, i64 %401
  br label %403

403:                                              ; preds = %385, %388, %394, %398
  %404 = phi ptr [ %402, %398 ], [ null, %394 ], [ null, %388 ], [ null, %385 ]
  %405 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 3
  store ptr %404, ptr %405, align 8, !tbaa !35
  br label %409

406:                                              ; preds = %414
  %407 = add nuw nsw i64 %410, 1
  %408 = icmp eq i64 %407, 4
  br i1 %408, label %418, label %409, !llvm.loop !187

409:                                              ; preds = %403, %406
  %410 = phi i64 [ 0, %403 ], [ %407, %406 ]
  %411 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !35
  %413 = icmp eq ptr %412, null
  br i1 %413, label %561, label %414

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %412, i64 0, i32 9
  %416 = load i32, ptr %415, align 4, !tbaa !183
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %561, label %406

418:                                              ; preds = %406
  %419 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %342, i64 0, i32 5
  %420 = load float, ptr %419, align 4, !tbaa !188
  %421 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %364, i64 0, i32 5
  %422 = load float, ptr %421, align 4, !tbaa !188
  %423 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %386, i64 0, i32 5
  %424 = load float, ptr %423, align 4, !tbaa !188
  %425 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %404, i64 0, i32 5
  %426 = load float, ptr %425, align 4, !tbaa !188
  %427 = fcmp olt float %420, %422
  %428 = select i1 %427, float %420, float %422
  %429 = fcmp olt float %428, %424
  %430 = select i1 %429, float %428, float %424
  %431 = fcmp olt float %430, %426
  %432 = select i1 %431, float %430, float %426
  %433 = fcmp ogt float %420, %422
  %434 = select i1 %433, float %420, float %422
  %435 = fcmp ogt float %434, %424
  %436 = select i1 %435, float %434, float %424
  %437 = fcmp ogt float %436, %426
  %438 = select i1 %437, float %436, float %426
  %439 = fsub float %438, %432
  %440 = fcmp ogt float %439, 0x3FA99999A0000000
  br i1 %440, label %561, label %441

441:                                              ; preds = %418
  %442 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  %443 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  %444 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 1
  %445 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 2
  %446 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 1
  %447 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 2
  %448 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %342, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %217, i8 0, i64 36, i1 false)
  %449 = load i32, ptr %448, align 4, !tbaa !189
  %450 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %342, i64 0, i32 8
  %451 = load i32, ptr %450, align 4, !tbaa !190
  %452 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %404, i64 0, i32 7
  %453 = load i32, ptr %452, align 4, !tbaa !189
  %454 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %404, i64 0, i32 8
  %455 = load i32, ptr %454, align 4, !tbaa !190
  %456 = sub nsw i32 %453, %212
  %457 = sitofp i32 %456 to float
  %458 = sub nsw i32 %453, %449
  %459 = sitofp i32 %458 to float
  %460 = fdiv float %457, %459
  %461 = sub nsw i32 %455, %214
  %462 = sitofp i32 %461 to float
  %463 = sub nsw i32 %455, %451
  %464 = sitofp i32 %463 to float
  %465 = fdiv float %462, %464
  %466 = fsub float 1.000000e+00, %460
  %467 = fsub float 1.000000e+00, %465
  %468 = fmul float %466, %467
  %469 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %468, ptr %469, align 4, !tbaa !44
  %470 = fmul float %460, %467
  %471 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %470, ptr %471, align 8, !tbaa !44
  %472 = fmul float %466, %465
  %473 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %472, ptr %473, align 4, !tbaa !44
  %474 = fmul float %460, %465
  store float %474, ptr %4, align 16, !tbaa !44
  %475 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 1
  %476 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 2
  br label %477

477:                                              ; preds = %441, %477
  %478 = phi i64 [ 0, %441 ], [ %537, %477 ]
  %479 = phi float [ 0.000000e+00, %441 ], [ %500, %477 ]
  %480 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %478
  %481 = load ptr, ptr %480, align 8, !tbaa !35
  %482 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 1
  %483 = load float, ptr %482, align 4, !tbaa !44
  %484 = load float, ptr %210, align 4, !tbaa !44
  %485 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 1, i64 1
  %486 = load float, ptr %485, align 4, !tbaa !44
  %487 = load float, ptr %475, align 4, !tbaa !44
  %488 = fmul float %486, %487
  %489 = tail call float @llvm.fmuladd.f32(float %483, float %484, float %488)
  %490 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 1, i64 2
  %491 = load float, ptr %490, align 4, !tbaa !44
  %492 = load float, ptr %476, align 4, !tbaa !44
  %493 = tail call float @llvm.fmuladd.f32(float %491, float %492, float %489)
  %494 = fpext float %493 to double
  %495 = tail call double @pow(double noundef %494, double noundef 3.200000e+01) #8
  %496 = fptrunc double %495 to float
  %497 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %478
  %498 = load float, ptr %497, align 4, !tbaa !44
  %499 = fmul float %498, %496
  %500 = fadd float %479, %499
  %501 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 2
  %502 = load float, ptr %501, align 4, !tbaa !44
  %503 = load float, ptr %217, align 4, !tbaa !44
  %504 = tail call float @llvm.fmuladd.f32(float %502, float %499, float %503)
  store float %504, ptr %217, align 4, !tbaa !44
  %505 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 2, i64 1
  %506 = load float, ptr %505, align 4, !tbaa !44
  %507 = load float, ptr %442, align 4, !tbaa !44
  %508 = tail call float @llvm.fmuladd.f32(float %506, float %499, float %507)
  store float %508, ptr %442, align 4, !tbaa !44
  %509 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 2, i64 2
  %510 = load float, ptr %509, align 4, !tbaa !44
  %511 = load float, ptr %443, align 4, !tbaa !44
  %512 = tail call float @llvm.fmuladd.f32(float %510, float %499, float %511)
  store float %512, ptr %443, align 4, !tbaa !44
  %513 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 3
  %514 = load float, ptr %513, align 4, !tbaa !44
  %515 = load float, ptr %218, align 4, !tbaa !44
  %516 = tail call float @llvm.fmuladd.f32(float %514, float %499, float %515)
  store float %516, ptr %218, align 4, !tbaa !44
  %517 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 3, i64 1
  %518 = load float, ptr %517, align 4, !tbaa !44
  %519 = load float, ptr %444, align 4, !tbaa !44
  %520 = tail call float @llvm.fmuladd.f32(float %518, float %499, float %519)
  store float %520, ptr %444, align 4, !tbaa !44
  %521 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 3, i64 2
  %522 = load float, ptr %521, align 4, !tbaa !44
  %523 = load float, ptr %445, align 4, !tbaa !44
  %524 = tail call float @llvm.fmuladd.f32(float %522, float %499, float %523)
  store float %524, ptr %445, align 4, !tbaa !44
  %525 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 4
  %526 = load float, ptr %525, align 4, !tbaa !44
  %527 = load float, ptr %219, align 4, !tbaa !44
  %528 = tail call float @llvm.fmuladd.f32(float %526, float %499, float %527)
  store float %528, ptr %219, align 4, !tbaa !44
  %529 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 4, i64 1
  %530 = load float, ptr %529, align 4, !tbaa !44
  %531 = load float, ptr %446, align 4, !tbaa !44
  %532 = tail call float @llvm.fmuladd.f32(float %530, float %499, float %531)
  store float %532, ptr %446, align 4, !tbaa !44
  %533 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %481, i64 0, i32 4, i64 2
  %534 = load float, ptr %533, align 4, !tbaa !44
  %535 = load float, ptr %447, align 4, !tbaa !44
  %536 = tail call float @llvm.fmuladd.f32(float %534, float %499, float %535)
  store float %536, ptr %447, align 4, !tbaa !44
  %537 = add nuw nsw i64 %478, 1
  %538 = icmp eq i64 %537, 4
  br i1 %538, label %539, label %477, !llvm.loop !191

539:                                              ; preds = %477
  %540 = fcmp ult float %500, 0x3FECCCCCC0000000
  br i1 %540, label %561, label %541

541:                                              ; preds = %539
  %542 = fdiv float 1.000000e+00, %500
  %543 = load float, ptr %217, align 4, !tbaa !44
  %544 = fmul float %542, %543
  store float %544, ptr %217, align 4, !tbaa !44
  %545 = load float, ptr %442, align 4, !tbaa !44
  %546 = fmul float %542, %545
  store float %546, ptr %442, align 4, !tbaa !44
  %547 = load float, ptr %443, align 4, !tbaa !44
  %548 = fmul float %542, %547
  store float %548, ptr %443, align 4, !tbaa !44
  %549 = load float, ptr %218, align 4, !tbaa !44
  %550 = fmul float %542, %549
  store float %550, ptr %218, align 4, !tbaa !44
  %551 = load float, ptr %444, align 4, !tbaa !44
  %552 = fmul float %542, %551
  store float %552, ptr %444, align 4, !tbaa !44
  %553 = load float, ptr %445, align 4, !tbaa !44
  %554 = fmul float %542, %553
  store float %554, ptr %445, align 4, !tbaa !44
  %555 = load float, ptr %219, align 4, !tbaa !44
  %556 = fmul float %542, %555
  store float %556, ptr %219, align 4, !tbaa !44
  %557 = load float, ptr %446, align 4, !tbaa !44
  %558 = fmul float %542, %557
  store float %558, ptr %446, align 4, !tbaa !44
  %559 = load float, ptr %447, align 4, !tbaa !44
  %560 = fmul float %542, %559
  store float %560, ptr %447, align 4, !tbaa !44
  br label %713

561:                                              ; preds = %409, %414, %208, %223, %228, %418, %539
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  br label %562

562:                                              ; preds = %561, %204
  %563 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 3
  %564 = load ptr, ptr %563, align 8, !tbaa !192
  %565 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %566 = load ptr, ptr %565, align 8, !tbaa !119
  %567 = ptrtoint ptr %564 to i64
  %568 = ptrtoint ptr %566 to i64
  %569 = sub i64 %567, %568
  %570 = sdiv exact i64 %569, 288
  %571 = trunc i64 %570 to i32
  store i32 %571, ptr %6, align 4, !tbaa !99
  %572 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !193
  %574 = getelementptr inbounds %struct.VlakRen, ptr %573, i64 0, i32 9
  %575 = load i32, ptr %574, align 4, !tbaa !194
  %576 = getelementptr inbounds %struct.OccFace, ptr %6, i64 0, i32 1
  store i32 %575, ptr %576, align 4, !tbaa !101
  %577 = load ptr, ptr %1, align 8, !tbaa !136
  %578 = getelementptr inbounds %struct.Material, ptr %577, i64 0, i32 51
  %579 = load i32, ptr %578, align 4, !tbaa !195
  %580 = and i32 %579, 1024
  %581 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29
  %582 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17
  %583 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %584 = load i16, ptr %583, align 2, !tbaa !176
  %585 = sext i16 %584 to i32
  %586 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  %587 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102
  %588 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  call fastcc void @sample_occ_tree(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %581, ptr noundef nonnull %582, i32 noundef %585, i32 noundef %580, ptr noundef nonnull %586, ptr noundef nonnull %587, ptr noundef nonnull %588)
  %589 = getelementptr inbounds %struct.OcclusionTree, ptr %8, i64 0, i32 14
  %590 = load ptr, ptr %589, align 8, !tbaa !94
  %591 = icmp eq ptr %590, null
  br i1 %591, label %714, label %592

592:                                              ; preds = %562
  %593 = load i16, ptr %583, align 2, !tbaa !176
  %594 = sext i16 %593 to i64
  %595 = getelementptr inbounds %struct.OcclusionCache, ptr %590, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !177
  %597 = icmp eq ptr %596, null
  br i1 %597, label %714, label %598

598:                                              ; preds = %592
  %599 = getelementptr inbounds %struct.OcclusionCache, ptr %590, i64 %594, i32 5
  %600 = load i32, ptr %599, align 8, !tbaa !179
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %714, label %602

602:                                              ; preds = %598
  %603 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 104
  %604 = load i32, ptr %603, align 8, !tbaa !128
  %605 = getelementptr inbounds %struct.OcclusionCache, ptr %590, i64 %594, i32 2
  %606 = load i32, ptr %605, align 4, !tbaa !180
  %607 = sub nsw i32 %604, %606
  %608 = getelementptr inbounds %struct.OcclusionCache, ptr %590, i64 %594, i32 3
  %609 = load i32, ptr %608, align 8, !tbaa !181
  %610 = mul nsw i32 %607, %609
  %611 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 103
  %612 = load i32, ptr %611, align 4, !tbaa !127
  %613 = getelementptr inbounds %struct.OcclusionCache, ptr %590, i64 %594, i32 1
  %614 = load i32, ptr %613, align 8, !tbaa !182
  %615 = add i32 %610, %612
  %616 = sub i32 %615, %614
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617
  %619 = load float, ptr %581, align 4, !tbaa !44
  store float %619, ptr %618, align 4, !tbaa !44
  %620 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !44
  %622 = getelementptr inbounds float, ptr %618, i64 1
  store float %621, ptr %622, align 4, !tbaa !44
  %623 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 29, i64 2
  %624 = load float, ptr %623, align 4, !tbaa !44
  %625 = getelementptr inbounds float, ptr %618, i64 2
  store float %624, ptr %625, align 4, !tbaa !44
  %626 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 1
  %627 = load float, ptr %582, align 4, !tbaa !44
  store float %627, ptr %626, align 4, !tbaa !44
  %628 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 1
  %629 = load float, ptr %628, align 4, !tbaa !44
  %630 = getelementptr inbounds float, ptr %626, i64 1
  store float %629, ptr %630, align 4, !tbaa !44
  %631 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 17, i64 2
  %632 = load float, ptr %631, align 4, !tbaa !44
  %633 = getelementptr inbounds float, ptr %626, i64 2
  store float %632, ptr %633, align 4, !tbaa !44
  %634 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 2
  %635 = load float, ptr %586, align 4, !tbaa !44
  store float %635, ptr %634, align 4, !tbaa !44
  %636 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  %637 = load float, ptr %636, align 4, !tbaa !44
  %638 = getelementptr inbounds float, ptr %634, i64 1
  store float %637, ptr %638, align 4, !tbaa !44
  %639 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  %640 = load float, ptr %639, align 4, !tbaa !44
  %641 = getelementptr inbounds float, ptr %634, i64 2
  store float %640, ptr %641, align 4, !tbaa !44
  %642 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 3
  %643 = load float, ptr %587, align 4, !tbaa !44
  store float %643, ptr %642, align 4, !tbaa !44
  %644 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 1
  %645 = load float, ptr %644, align 4, !tbaa !44
  %646 = getelementptr inbounds float, ptr %642, i64 1
  store float %645, ptr %646, align 4, !tbaa !44
  %647 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 102, i64 2
  %648 = load float, ptr %647, align 4, !tbaa !44
  %649 = getelementptr inbounds float, ptr %642, i64 2
  store float %648, ptr %649, align 4, !tbaa !44
  %650 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 4
  %651 = load float, ptr %588, align 4, !tbaa !44
  store float %651, ptr %650, align 4, !tbaa !44
  %652 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !44
  %654 = getelementptr inbounds float, ptr %650, i64 1
  store float %653, ptr %654, align 4, !tbaa !44
  %655 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101, i64 2
  %656 = load float, ptr %655, align 4, !tbaa !44
  %657 = getelementptr inbounds float, ptr %650, i64 2
  store float %656, ptr %657, align 4, !tbaa !44
  %658 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 2, i64 1
  %659 = load float, ptr %658, align 4, !tbaa !44
  %660 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 2, i64 2
  %661 = load float, ptr %660, align 4, !tbaa !44
  %662 = fcmp ogt float %635, %659
  %663 = select i1 %662, float %635, float %659
  %664 = fcmp ogt float %663, %661
  %665 = select i1 %664, float %663, float %661
  %666 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 5
  store float %665, ptr %666, align 4, !tbaa !188
  %667 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 3, i64 1
  %668 = load float, ptr %667, align 4, !tbaa !44
  %669 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 3, i64 2
  %670 = load float, ptr %669, align 4, !tbaa !44
  %671 = fcmp ogt float %643, %668
  %672 = select i1 %671, float %643, float %668
  %673 = fcmp ogt float %672, %670
  %674 = select i1 %673, float %672, float %670
  %675 = fcmp ogt float %665, %674
  %676 = select i1 %675, float %665, float %674
  store float %676, ptr %666, align 4, !tbaa !188
  %677 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 4, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !44
  %679 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 4, i64 2
  %680 = load float, ptr %679, align 4, !tbaa !44
  %681 = fcmp ogt float %651, %678
  %682 = select i1 %681, float %651, float %678
  %683 = fcmp ogt float %682, %680
  %684 = select i1 %683, float %682, float %680
  %685 = fcmp ogt float %676, %684
  %686 = select i1 %685, float %676, float %684
  store float %686, ptr %666, align 4, !tbaa !188
  %687 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78
  %688 = load float, ptr %687, align 4, !tbaa !44
  %689 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 1
  %690 = load float, ptr %689, align 4, !tbaa !44
  %691 = fmul float %690, %690
  %692 = call float @llvm.fmuladd.f32(float %688, float %688, float %691)
  %693 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 78, i64 2
  %694 = load float, ptr %693, align 4, !tbaa !44
  %695 = call float @llvm.fmuladd.f32(float %694, float %694, float %692)
  %696 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79
  %697 = load float, ptr %696, align 4, !tbaa !44
  %698 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 1
  %699 = load float, ptr %698, align 4, !tbaa !44
  %700 = fmul float %699, %699
  %701 = call float @llvm.fmuladd.f32(float %697, float %697, float %700)
  %702 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 79, i64 2
  %703 = load float, ptr %702, align 4, !tbaa !44
  %704 = call float @llvm.fmuladd.f32(float %703, float %703, float %701)
  %705 = fadd float %695, %704
  %706 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 6
  store float %705, ptr %706, align 4, !tbaa !185
  %707 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %596, i64 %617, i32 9
  store i32 1, ptr %707, align 4, !tbaa !183
  br label %714

708:                                              ; preds = %2
  %709 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100
  store float 1.000000e+00, ptr %709, align 8, !tbaa !44
  %710 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 1
  store float 1.000000e+00, ptr %710, align 4, !tbaa !44
  %711 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 100, i64 2
  store float 1.000000e+00, ptr %711, align 8, !tbaa !44
  %712 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %712, i8 0, i64 24, i1 false)
  br label %714

713:                                              ; preds = %541, %285
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  br label %714

714:                                              ; preds = %713, %203, %562, %602, %598, %592, %708
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sample_occ_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr nocapture noundef writeonly %9) unnamed_addr #0 {
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 53
  %16 = load i16, ptr %15, align 2, !tbaa !196
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %6, 0
  %19 = select i1 %18, i32 %17, i32 0
  %20 = load float, ptr %4, align 4, !tbaa !44
  %21 = fneg float %20
  store float %21, ptr %11, align 4, !tbaa !44
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !44
  %24 = fneg float %23
  %25 = getelementptr inbounds float, ptr %11, i64 1
  store float %24, ptr %25, align 4, !tbaa !44
  %26 = getelementptr inbounds float, ptr %4, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !44
  %28 = fneg float %27
  %29 = getelementptr inbounds float, ptr %11, i64 2
  store float %28, ptr %29, align 4, !tbaa !44
  %30 = getelementptr inbounds %struct.OcclusionTree, ptr %1, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !92
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr null, ptr %14
  %34 = icmp ne ptr %8, null
  %35 = icmp ne i32 %19, 0
  %36 = select i1 %34, i1 %35, i1 false
  %37 = select i1 %36, ptr %12, ptr null
  call fastcc void @occ_lookup(ptr noundef %1, i32 noundef %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef %33, ptr noundef %37)
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 57
  %39 = load float, ptr %38, align 4, !tbaa !197
  %40 = fsub float 1.000000e+00, %39
  %41 = load float, ptr %13, align 4, !tbaa !44
  %42 = fsub float 1.000000e+00, %41
  %43 = fmul float %40, %42
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %48, label %45

45:                                               ; preds = %10
  %46 = fcmp ogt float %43, 1.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %10, %45, %47
  %49 = phi float [ 1.000000e+00, %47 ], [ %43, %45 ], [ 0.000000e+00, %10 ]
  %50 = fcmp une float %39, 0.000000e+00
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = fneg float %41
  %53 = call float @expf(float noundef %52) #8
  %54 = call float @llvm.fmuladd.f32(float %39, float %53, float %49)
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi float [ %54, %51 ], [ %49, %48 ]
  br i1 %34, label %57, label %104

57:                                               ; preds = %55
  %58 = add nsw i32 %19, -1
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %101

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30
  %62 = load float, ptr %12, align 4, !tbaa !44
  %63 = load float, ptr %61, align 4, !tbaa !44
  %64 = getelementptr inbounds float, ptr %12, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !44
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = fmul float %65, %67
  %69 = call float @llvm.fmuladd.f32(float %62, float %63, float %68)
  %70 = getelementptr inbounds float, ptr %12, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !44
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !44
  %74 = call float @llvm.fmuladd.f32(float %71, float %73, float %69)
  %75 = fadd float %74, 1.000000e+00
  %76 = fmul float %75, 5.000000e-01
  %77 = fsub float 1.000000e+00, %76
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 6
  %79 = load float, ptr %78, align 8, !tbaa !198
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 9
  %81 = load float, ptr %80, align 4, !tbaa !199
  %82 = fmul float %81, %76
  %83 = call float @llvm.fmuladd.f32(float %77, float %79, float %82)
  store float %83, ptr %8, align 4, !tbaa !44
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 7
  %85 = load float, ptr %84, align 4, !tbaa !200
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 10
  %87 = load float, ptr %86, align 8, !tbaa !201
  %88 = fmul float %76, %87
  %89 = call float @llvm.fmuladd.f32(float %77, float %85, float %88)
  %90 = getelementptr inbounds float, ptr %8, i64 1
  store float %89, ptr %90, align 4, !tbaa !44
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 8
  %92 = load float, ptr %91, align 8, !tbaa !202
  %93 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 11
  %94 = load float, ptr %93, align 4, !tbaa !203
  %95 = fmul float %76, %94
  %96 = call float @llvm.fmuladd.f32(float %77, float %92, float %95)
  %97 = getelementptr inbounds float, ptr %8, i64 2
  store float %96, ptr %97, align 4, !tbaa !44
  %98 = fmul float %56, %83
  store float %98, ptr %8, align 4, !tbaa !44
  %99 = fmul float %56, %89
  store float %99, ptr %90, align 4, !tbaa !44
  %100 = fmul float %56, %96
  store float %100, ptr %97, align 4, !tbaa !44
  br label %104

101:                                              ; preds = %57
  store float %56, ptr %8, align 4, !tbaa !44
  %102 = getelementptr inbounds float, ptr %8, i64 1
  store float %56, ptr %102, align 4, !tbaa !44
  %103 = getelementptr inbounds float, ptr %8, i64 2
  store float %56, ptr %103, align 4, !tbaa !44
  br label %104

104:                                              ; preds = %60, %101, %55
  %105 = icmp eq ptr %7, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %104
  store float %56, ptr %7, align 4, !tbaa !44
  %107 = getelementptr inbounds float, ptr %7, i64 1
  store float %56, ptr %107, align 4, !tbaa !44
  %108 = getelementptr inbounds float, ptr %7, i64 2
  store float %56, ptr %108, align 4, !tbaa !44
  br label %109

109:                                              ; preds = %106, %104
  %110 = load i32, ptr %30, align 8, !tbaa !92
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load float, ptr %14, align 4, !tbaa !44
  store float %113, ptr %9, align 4, !tbaa !44
  %114 = getelementptr inbounds float, ptr %14, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !44
  %116 = getelementptr inbounds float, ptr %9, i64 1
  store float %115, ptr %116, align 4, !tbaa !44
  %117 = getelementptr inbounds float, ptr %14, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !44
  br label %121

119:                                              ; preds = %109
  store float 0.000000e+00, ptr %9, align 4, !tbaa !44
  %120 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %120, align 4, !tbaa !44
  br label %121

121:                                              ; preds = %119, %112
  %122 = phi float [ 0.000000e+00, %119 ], [ %118, %112 ]
  %123 = getelementptr inbounds float, ptr %9, i64 2
  store float %122, ptr %123, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cache_occ_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PixStr, align 8
  %5 = alloca %struct.OccFace, align 4
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.OcclusionTree, ptr %7, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %254, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %13 = load i16, ptr %12, align 2, !tbaa !204
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14
  %16 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !206
  %18 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !207
  %21 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !186
  %22 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !208
  %24 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !209
  %27 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !180
  %28 = getelementptr inbounds %struct.OcclusionCache, ptr %9, i64 %14, i32 5
  store i32 3, ptr %28, align 8, !tbaa !179
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %30 = sext i32 %17 to i64
  %31 = mul nsw i64 %30, 80
  %32 = sext i32 %20 to i64
  %33 = mul i64 %31, %32
  %34 = tail call ptr %29(i64 noundef %33, ptr noundef nonnull @.str.5) #8
  store ptr %34, ptr %15, align 8, !tbaa !177
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !210
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !211
  br label %49

41:                                               ; preds = %11
  store ptr null, ptr %4, align 8, !tbaa !212
  %42 = getelementptr inbounds %struct.PixStr, ptr %4, i64 0, i32 5
  store i16 -1, ptr %42, align 8, !tbaa !214
  %43 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !215
  %45 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !216
  %47 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !217
  br label %49

49:                                               ; preds = %41, %38
  %50 = phi ptr [ null, %38 ], [ %44, %41 ]
  %51 = phi ptr [ null, %38 ], [ %46, %41 ]
  %52 = phi ptr [ null, %38 ], [ %48, %41 ]
  %53 = phi ptr [ %40, %38 ], [ null, %41 ]
  %54 = load i32, ptr %25, align 8, !tbaa !209
  %55 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !218
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %254

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
  %74 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 29, i64 1
  %75 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 29, i64 2
  %76 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 17, i64 1
  %77 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 17, i64 2
  %78 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 100, i64 1
  %79 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 100, i64 2
  %80 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 102, i64 1
  %81 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 102, i64 2
  %82 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 101, i64 1
  %83 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 101, i64 2
  %84 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 78
  %85 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 78, i64 1
  %86 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 78, i64 2
  %87 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 79
  %88 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 79, i64 1
  %89 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 79, i64 2
  %90 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 103
  %91 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 104
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %93 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %94

94:                                               ; preds = %58, %245
  %95 = phi ptr [ %34, %58 ], [ %250, %245 ]
  %96 = phi i32 [ %54, %58 ], [ %251, %245 ]
  %97 = phi ptr [ %53, %58 ], [ %249, %245 ]
  %98 = phi ptr [ %52, %58 ], [ %248, %245 ]
  %99 = phi ptr [ %51, %58 ], [ %247, %245 ]
  %100 = phi ptr [ %50, %58 ], [ %246, %245 ]
  %101 = load i32, ptr %22, align 8, !tbaa !208
  %102 = load i32, ptr %59, align 4, !tbaa !219
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %245

104:                                              ; preds = %94
  %105 = add i32 %96, 3
  br label %106

106:                                              ; preds = %104, %236
  %107 = phi i32 [ %102, %104 ], [ %243, %236 ]
  %108 = phi ptr [ %95, %104 ], [ %238, %236 ]
  %109 = phi i32 [ %101, %104 ], [ %237, %236 ]
  %110 = phi ptr [ %97, %104 ], [ %239, %236 ]
  %111 = phi ptr [ %98, %104 ], [ %242, %236 ]
  %112 = phi ptr [ %99, %104 ], [ %241, %236 ]
  %113 = phi ptr [ %100, %104 ], [ %240, %236 ]
  %114 = load i32, ptr %22, align 8, !tbaa !208
  %115 = add i32 %109, 3
  %116 = sub i32 %115, %114
  %117 = srem i32 %116, 3
  %118 = icmp eq i32 %117, 0
  %119 = add nsw i32 %107, -1
  %120 = icmp eq i32 %109, %119
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %122, label %236

122:                                              ; preds = %106
  %123 = load i32, ptr %25, align 8, !tbaa !209
  %124 = sub i32 %105, %123
  %125 = srem i32 %124, 3
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %55, align 4, !tbaa !218
  %129 = add nsw i32 %128, -1
  %130 = icmp eq i32 %96, %129
  br i1 %130, label %131, label %236

131:                                              ; preds = %127, %122
  %132 = load i16, ptr %35, align 2, !tbaa !210
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i64, ptr %110, align 8, !tbaa !220
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %236, label %137

137:                                              ; preds = %134
  %138 = inttoptr i64 %135 to ptr
  br label %146

139:                                              ; preds = %131
  %140 = load i32, ptr %112, align 4, !tbaa !40
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %236, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr %113, align 4, !tbaa !40
  store i32 %143, ptr %60, align 8, !tbaa !221
  %144 = load i32, ptr %112, align 4, !tbaa !40
  store i32 %144, ptr %61, align 4, !tbaa !222
  %145 = load i32, ptr %111, align 4, !tbaa !40
  store i32 %145, ptr %62, align 8, !tbaa !223
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi ptr [ %4, %142 ], [ %138, %137 ]
  call void @shade_samples_fill_with_ps(ptr noundef %2, ptr noundef nonnull %147, i32 noundef %109, i32 noundef %96) #8
  %148 = load ptr, ptr %63, align 8, !tbaa !193
  %149 = icmp eq ptr %148, null
  br i1 %149, label %231, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %64, align 8, !tbaa !136
  %152 = getelementptr inbounds %struct.Material, ptr %151, i64 0, i32 51
  %153 = load i32, ptr %152, align 4, !tbaa !195
  %154 = and i32 %153, 1024
  %155 = load ptr, ptr %65, align 8, !tbaa !192
  %156 = load ptr, ptr %66, align 8, !tbaa !119
  %157 = ptrtoint ptr %155 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 288
  %161 = trunc i64 %160 to i32
  store i32 %161, ptr %5, align 4, !tbaa !99
  %162 = getelementptr inbounds %struct.VlakRen, ptr %148, i64 0, i32 9
  %163 = load i32, ptr %162, align 4, !tbaa !194
  store i32 %163, ptr %67, align 4, !tbaa !101
  %164 = load i16, ptr %70, align 2, !tbaa !176
  %165 = sext i16 %164 to i32
  call fastcc void @sample_occ_tree(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %68, ptr noundef nonnull %69, i32 noundef %165, i32 noundef %154, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %73)
  %166 = load float, ptr %68, align 4, !tbaa !44
  store float %166, ptr %108, align 4, !tbaa !44
  %167 = load float, ptr %74, align 4, !tbaa !44
  %168 = getelementptr inbounds float, ptr %108, i64 1
  store float %167, ptr %168, align 4, !tbaa !44
  %169 = load float, ptr %75, align 4, !tbaa !44
  %170 = getelementptr inbounds float, ptr %108, i64 2
  store float %169, ptr %170, align 4, !tbaa !44
  %171 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 1
  %172 = load float, ptr %69, align 4, !tbaa !44
  store float %172, ptr %171, align 4, !tbaa !44
  %173 = load float, ptr %76, align 4, !tbaa !44
  %174 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 1, i64 1
  store float %173, ptr %174, align 4, !tbaa !44
  %175 = load float, ptr %77, align 4, !tbaa !44
  %176 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 1, i64 2
  store float %175, ptr %176, align 4, !tbaa !44
  %177 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 2
  %178 = load float, ptr %71, align 4, !tbaa !44
  store float %178, ptr %177, align 4, !tbaa !44
  %179 = load float, ptr %78, align 4, !tbaa !44
  %180 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 2, i64 1
  store float %179, ptr %180, align 4, !tbaa !44
  %181 = load float, ptr %79, align 4, !tbaa !44
  %182 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 2, i64 2
  store float %181, ptr %182, align 4, !tbaa !44
  %183 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 3
  %184 = load float, ptr %72, align 4, !tbaa !44
  store float %184, ptr %183, align 4, !tbaa !44
  %185 = load float, ptr %80, align 4, !tbaa !44
  %186 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 3, i64 1
  store float %185, ptr %186, align 4, !tbaa !44
  %187 = load float, ptr %81, align 4, !tbaa !44
  %188 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 3, i64 2
  store float %187, ptr %188, align 4, !tbaa !44
  %189 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 4
  %190 = load float, ptr %73, align 4, !tbaa !44
  store float %190, ptr %189, align 4, !tbaa !44
  %191 = load float, ptr %82, align 4, !tbaa !44
  %192 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 4, i64 1
  store float %191, ptr %192, align 4, !tbaa !44
  %193 = load float, ptr %83, align 4, !tbaa !44
  %194 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 4, i64 2
  store float %193, ptr %194, align 4, !tbaa !44
  %195 = fcmp ogt float %178, %179
  %196 = select i1 %195, float %178, float %179
  %197 = fcmp ogt float %196, %181
  %198 = select i1 %197, float %196, float %181
  %199 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 5
  %200 = fcmp ogt float %184, %185
  %201 = select i1 %200, float %184, float %185
  %202 = fcmp ogt float %201, %187
  %203 = select i1 %202, float %201, float %187
  %204 = fcmp ogt float %198, %203
  %205 = select i1 %204, float %198, float %203
  %206 = fcmp ogt float %190, %191
  %207 = select i1 %206, float %190, float %191
  %208 = fcmp ogt float %207, %193
  %209 = select i1 %208, float %207, float %193
  %210 = fcmp ogt float %205, %209
  %211 = select i1 %210, float %205, float %209
  store float %211, ptr %199, align 4, !tbaa !188
  %212 = load float, ptr %84, align 4, !tbaa !44
  %213 = load float, ptr %85, align 4, !tbaa !44
  %214 = fmul float %213, %213
  %215 = call float @llvm.fmuladd.f32(float %212, float %212, float %214)
  %216 = load float, ptr %86, align 4, !tbaa !44
  %217 = call float @llvm.fmuladd.f32(float %216, float %216, float %215)
  %218 = load float, ptr %87, align 4, !tbaa !44
  %219 = load float, ptr %88, align 4, !tbaa !44
  %220 = fmul float %219, %219
  %221 = call float @llvm.fmuladd.f32(float %218, float %218, float %220)
  %222 = load float, ptr %89, align 4, !tbaa !44
  %223 = call float @llvm.fmuladd.f32(float %222, float %222, float %221)
  %224 = fadd float %217, %223
  %225 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 6
  store float %224, ptr %225, align 4, !tbaa !185
  %226 = load i32, ptr %90, align 4, !tbaa !127
  %227 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 7
  store i32 %226, ptr %227, align 4, !tbaa !189
  %228 = load i32, ptr %91, align 8, !tbaa !128
  %229 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 8
  store i32 %228, ptr %229, align 4, !tbaa !190
  %230 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 0, i32 9
  store i32 1, ptr %230, align 4, !tbaa !183
  br label %231

231:                                              ; preds = %150, %146
  %232 = load ptr, ptr %92, align 8, !tbaa !109
  %233 = load ptr, ptr %93, align 8, !tbaa !110
  %234 = call i32 %232(ptr noundef %233) #8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %106, %231, %139, %134, %127
  %237 = add nsw i32 %109, 1
  %238 = getelementptr inbounds %struct.OcclusionCacheSample, ptr %108, i64 1
  %239 = getelementptr inbounds i64, ptr %110, i64 1
  %240 = getelementptr inbounds i32, ptr %113, i64 1
  %241 = getelementptr inbounds i32, ptr %112, i64 1
  %242 = getelementptr inbounds i32, ptr %111, i64 1
  %243 = load i32, ptr %59, align 4, !tbaa !219
  %244 = icmp slt i32 %237, %243
  br i1 %244, label %106, label %245, !llvm.loop !224

245:                                              ; preds = %231, %236, %94
  %246 = phi ptr [ %100, %94 ], [ %113, %231 ], [ %240, %236 ]
  %247 = phi ptr [ %99, %94 ], [ %112, %231 ], [ %241, %236 ]
  %248 = phi ptr [ %98, %94 ], [ %111, %231 ], [ %242, %236 ]
  %249 = phi ptr [ %97, %94 ], [ %110, %231 ], [ %239, %236 ]
  %250 = phi ptr [ %95, %94 ], [ %108, %231 ], [ %238, %236 ]
  %251 = add nsw i32 %96, 1
  %252 = load i32, ptr %55, align 4, !tbaa !218
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %94, label %254, !llvm.loop !225

254:                                              ; preds = %245, %49, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret void
}

declare void @shade_samples_fill_with_ps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_occ_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.OcclusionTree, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 20
  %10 = load i16, ptr %9, align 2, !tbaa !204
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %16(ptr noundef nonnull %13) #8
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 3
  store i32 0, ptr %18, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 4
  store i32 0, ptr %19, align 4, !tbaa !186
  %20 = getelementptr inbounds %struct.OcclusionCache, ptr %6, i64 %11, i32 5
  store i32 0, ptr %20, align 8, !tbaa !179
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

declare float @get_render_aosss_error(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_face(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %9 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !119
  %10 = load i32, ptr %0, align 4, !tbaa !99
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.OccFace, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = tail call ptr @RE_findOrAddVlak(ptr noundef %13, i32 noundef %15) #8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %16, align 8, !tbaa !123
  br i1 %21, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !125
  tail call void @mid_v3_v3v3(ptr noundef nonnull %1, ptr noundef %22, ptr noundef %25) #8
  br label %31

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  tail call void @cent_tri_v3(ptr noundef nonnull %1, ptr noundef %22, ptr noundef %28, ptr noundef %30) #8
  br label %31

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 11
  %33 = load i16, ptr %32, align 8, !tbaa !226
  %34 = and i16 %33, 3
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 8
  tail call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef nonnull %1) #8
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
  %53 = load i16, ptr %52, align 8, !tbaa !226
  %54 = and i16 %53, 3
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 10
  tail call void @mul_m3_v3(ptr noundef nonnull %57, ptr noundef nonnull %2) #8
  br label %58

58:                                               ; preds = %40, %56, %38
  %59 = icmp eq ptr %3, null
  br i1 %59, label %117, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %16, align 8, !tbaa !123
  %62 = load float, ptr %61, align 4, !tbaa !44
  store float %62, ptr %5, align 4, !tbaa !44
  %63 = getelementptr inbounds float, ptr %61, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !44
  %65 = getelementptr inbounds float, ptr %5, i64 1
  store float %64, ptr %65, align 4, !tbaa !44
  %66 = getelementptr inbounds float, ptr %61, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = getelementptr inbounds float, ptr %5, i64 2
  store float %67, ptr %68, align 4, !tbaa !44
  %69 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !124
  %71 = load float, ptr %70, align 4, !tbaa !44
  store float %71, ptr %6, align 4, !tbaa !44
  %72 = getelementptr inbounds float, ptr %70, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !44
  %74 = getelementptr inbounds float, ptr %6, i64 1
  store float %73, ptr %74, align 4, !tbaa !44
  %75 = getelementptr inbounds float, ptr %70, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !44
  %77 = getelementptr inbounds float, ptr %6, i64 2
  store float %76, ptr %77, align 4, !tbaa !44
  %78 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !125
  %80 = load float, ptr %79, align 4, !tbaa !44
  store float %80, ptr %7, align 4, !tbaa !44
  %81 = getelementptr inbounds float, ptr %79, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !44
  %83 = getelementptr inbounds float, ptr %7, i64 1
  store float %82, ptr %83, align 4, !tbaa !44
  %84 = getelementptr inbounds float, ptr %79, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !44
  %86 = getelementptr inbounds float, ptr %7, i64 2
  store float %85, ptr %86, align 4, !tbaa !44
  %87 = getelementptr inbounds %struct.VlakRen, ptr %16, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !120
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %60
  %91 = load float, ptr %88, align 4, !tbaa !44
  store float %91, ptr %8, align 4, !tbaa !44
  %92 = getelementptr inbounds float, ptr %88, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !44
  %94 = getelementptr inbounds float, ptr %8, i64 1
  store float %93, ptr %94, align 4, !tbaa !44
  %95 = getelementptr inbounds float, ptr %88, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !44
  %97 = getelementptr inbounds float, ptr %8, i64 2
  store float %96, ptr %97, align 4, !tbaa !44
  br label %98

98:                                               ; preds = %90, %60
  %99 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 11
  %100 = load i16, ptr %99, align 8, !tbaa !226
  %101 = and i16 %100, 3
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %9, i64 %11, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %5) #8
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %6) #8
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %7) #8
  %105 = load ptr, ptr %87, align 8, !tbaa !120
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %8) #8
  br label %108

108:                                              ; preds = %103, %107, %98
  %109 = load ptr, ptr %87, align 8, !tbaa !120
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call float @area_quad_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  br label %115

113:                                              ; preds = %108
  %114 = call float @area_tri_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi float [ %112, %111 ], [ %114, %113 ]
  store float %116, ptr %3, align 4, !tbaa !44
  br label %117

117:                                              ; preds = %115, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_build_recursive(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [9 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca [1 x %struct.OcclusionBuildThread], align 16
  %13 = alloca %struct.OccNode, align 8
  %14 = alloca [8 x i32], align 16
  %15 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #8
  %16 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float 1.000000e+00, ptr %16, align 8, !tbaa !227
  %17 = sub nsw i32 %3, %2
  %18 = icmp slt i32 %17, 9
  br i1 %18, label %19, label %36

19:                                               ; preds = %5
  %20 = icmp slt i32 %2, %3
  br i1 %20, label %21, label %150

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !229
  %24 = zext i32 %17 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %34, %25 ]
  %27 = phi i32 [ %23, %21 ], [ %32, %25 ]
  %28 = phi i32 [ %2, %21 ], [ %33, %25 ]
  %29 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %26
  store i32 %28, ptr %29, align 8, !tbaa !39
  %30 = trunc i64 %26 to i32
  %31 = shl nuw i32 1, %30
  %32 = or i32 %27, %31
  %33 = add nsw i32 %28, 1
  %34 = add nuw nsw i64 %26, 1
  %35 = icmp eq i64 %34, %24
  br i1 %35, label %149, label %25, !llvm.loop !230

36:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8)
  %37 = load i32, ptr %8, align 4, !tbaa !40
  %38 = icmp eq i32 %37, %2
  %39 = icmp eq i32 %37, %3
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = add nsw i32 %3, %2
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %8, align 4, !tbaa !40
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, ptr %8, align 4, !tbaa !40
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %2, i32 noundef %45, ptr noundef nonnull %9)
  %46 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 1
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %45, i32 noundef %3, ptr noundef nonnull %46)
  %47 = load i32, ptr %9, align 4, !tbaa !40
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %2, i32 noundef %47, ptr noundef nonnull %10)
  %48 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 1
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %47, i32 noundef %45, ptr noundef nonnull %48)
  %49 = load i32, ptr %46, align 4, !tbaa !40
  %50 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 2
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %45, i32 noundef %49, ptr noundef nonnull %50)
  %51 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 3
  call fastcc void @occ_build_split(ptr noundef %0, i32 noundef %49, i32 noundef %3, ptr noundef nonnull %51)
  store i32 %2, ptr %14, align 16, !tbaa !40
  %52 = load i32, ptr %10, align 16, !tbaa !40
  %53 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %52, ptr %53, align 4, !tbaa !40
  %54 = getelementptr inbounds i32, ptr %14, i64 2
  store i32 %47, ptr %54, align 8, !tbaa !40
  %55 = load i32, ptr %48, align 4, !tbaa !40
  %56 = getelementptr inbounds i32, ptr %14, i64 3
  store i32 %55, ptr %56, align 4, !tbaa !40
  %57 = getelementptr inbounds i32, ptr %14, i64 4
  store i32 %45, ptr %57, align 16, !tbaa !40
  %58 = load i32, ptr %50, align 8, !tbaa !40
  %59 = getelementptr inbounds i32, ptr %14, i64 5
  store i32 %58, ptr %59, align 4, !tbaa !40
  %60 = getelementptr inbounds i32, ptr %14, i64 6
  store i32 %49, ptr %60, align 8, !tbaa !40
  %61 = load i32, ptr %51, align 4, !tbaa !40
  %62 = getelementptr inbounds i32, ptr %14, i64 7
  store i32 %61, ptr %62, align 4, !tbaa !40
  br label %63

63:                                               ; preds = %44, %63
  %64 = phi i64 [ 0, %44 ], [ %65, %63 ]
  %65 = add nuw nsw i64 %64, 1
  %66 = getelementptr inbounds i32, ptr %14, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !40
  %68 = getelementptr inbounds i32, ptr %14, i64 %64
  %69 = load i32, ptr %68, align 4, !tbaa !40
  %70 = sub nsw i32 %67, %69
  %71 = getelementptr inbounds i32, ptr %15, i64 %64
  store i32 %70, ptr %71, align 4, !tbaa !40
  %72 = icmp eq i64 %65, 7
  br i1 %72, label %73, label %63, !llvm.loop !231

73:                                               ; preds = %63
  %74 = sub nsw i32 %3, %61
  %75 = getelementptr inbounds i32, ptr %15, i64 7
  store i32 %74, ptr %75, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %76 = icmp eq i32 %4, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 11
  %79 = load i32, ptr %78, align 8, !tbaa !106
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 12
  %83 = load i32, ptr %82, align 4, !tbaa !105
  call void @BLI_init_threads(ptr noundef nonnull %11, ptr noundef nonnull @exec_occ_build, i32 noundef %83) #8
  br label %84

84:                                               ; preds = %81, %77, %73
  %85 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %86 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 11
  %87 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 7
  %88 = add nsw i32 %4, 1
  %89 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %12, i64 0, i64 0, i32 4
  %90 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %12, i64 0, i64 0, i32 1
  %91 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %12, i64 0, i64 0, i32 2
  %92 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %12, i64 0, i64 0, i32 3
  %93 = add nsw i32 %4, 1
  br label %94

94:                                               ; preds = %84, %139
  %95 = phi i64 [ 0, %84 ], [ %141, %139 ]
  %96 = phi i32 [ 0, %84 ], [ %140, %139 ]
  %97 = getelementptr inbounds [8 x i32], ptr %15, i64 0, i64 %95
  %98 = load i32, ptr %97, align 4, !tbaa !40
  switch i32 %98, label %109 [
    i32 0, label %99
    i32 1, label %101
  ]

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %95
  store ptr null, ptr %100, align 8, !tbaa !39
  br label %139

101:                                              ; preds = %94
  %102 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %95
  %103 = load i32, ptr %102, align 4, !tbaa !40
  %104 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %95
  store i32 %103, ptr %104, align 8, !tbaa !39
  %105 = trunc i64 %95 to i32
  %106 = shl nuw nsw i32 1, %105
  %107 = load i32, ptr %85, align 8, !tbaa !229
  %108 = or i32 %107, %106
  store i32 %108, ptr %85, align 8, !tbaa !229
  br label %139

109:                                              ; preds = %94
  %110 = load i32, ptr %86, align 8, !tbaa !106
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void @BLI_lock_thread(i32 noundef 3) #8
  br label %113

113:                                              ; preds = %112, %109
  %114 = load ptr, ptr %0, align 8, !tbaa !93
  %115 = call ptr @BLI_memarena_alloc(ptr noundef %114, i64 noundef 144) #8
  %116 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %95
  store ptr %115, ptr %116, align 8, !tbaa !39
  %117 = load i32, ptr %87, align 8, !tbaa !108
  %118 = icmp sgt i32 %117, %4
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 %88, ptr %87, align 8, !tbaa !108
  br label %120

120:                                              ; preds = %119, %113
  %121 = load i32, ptr %86, align 8, !tbaa !106
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void @BLI_unlock_thread(i32 noundef 3) #8
  br label %124

124:                                              ; preds = %123, %120
  br i1 %76, label %125, label %135

125:                                              ; preds = %124
  %126 = load i32, ptr %86, align 8, !tbaa !106
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = sext i32 %96 to i64
  %130 = getelementptr inbounds [1 x %struct.OcclusionBuildThread], ptr %12, i64 0, i64 %129
  store ptr %0, ptr %12, align 16, !tbaa !232
  store ptr %115, ptr %89, align 8, !tbaa !234
  %131 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %95
  %132 = load i32, ptr %131, align 4, !tbaa !40
  store i32 %132, ptr %90, align 8, !tbaa !235
  %133 = add nsw i32 %132, %98
  store i32 %133, ptr %91, align 4, !tbaa !236
  store i32 2, ptr %92, align 16, !tbaa !237
  call void @BLI_insert_thread(ptr noundef nonnull %11, ptr noundef nonnull %130) #8
  %134 = add nsw i32 %96, 1
  br label %139

135:                                              ; preds = %125, %124
  %136 = getelementptr inbounds [8 x i32], ptr %14, i64 0, i64 %95
  %137 = load i32, ptr %136, align 4, !tbaa !40
  %138 = add nsw i32 %137, %98
  call fastcc void @occ_build_recursive(ptr noundef nonnull %0, ptr noundef %115, i32 noundef %137, i32 noundef %138, i32 noundef %93)
  br label %139

139:                                              ; preds = %99, %128, %135, %101
  %140 = phi i32 [ %96, %99 ], [ %96, %101 ], [ %134, %128 ], [ %96, %135 ]
  %141 = add nuw nsw i64 %95, 1
  %142 = icmp eq i64 %141, 8
  br i1 %142, label %143, label %94, !llvm.loop !238

143:                                              ; preds = %139
  br i1 %76, label %144, label %150

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 11
  %146 = load i32, ptr %145, align 8, !tbaa !106
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  call void @BLI_end_threads(ptr noundef nonnull %11) #8
  br label %150

149:                                              ; preds = %25
  store i32 %32, ptr %22, align 8, !tbaa !229
  br label %150

150:                                              ; preds = %19, %149, %143, %144, %148
  %151 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %152 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %153 = getelementptr inbounds %struct.OccNode, ptr %13, i64 0, i32 1
  %154 = getelementptr inbounds %struct.OccNode, ptr %13, i64 0, i32 3
  %155 = getelementptr inbounds float, ptr %7, i64 1
  %156 = getelementptr inbounds float, ptr %7, i64 2
  %157 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 1
  %158 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 2
  %159 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 3
  %160 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 4
  %161 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 5
  %162 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 6
  %163 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 7
  %164 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 8
  %165 = getelementptr inbounds %struct.OccNode, ptr %13, i64 0, i32 2
  %166 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 1
  %167 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 2
  %168 = getelementptr inbounds float, ptr %1, i64 1
  %169 = getelementptr inbounds float, ptr %1, i64 2
  br label %170

170:                                              ; preds = %150, %244
  %171 = phi i64 [ 0, %150 ], [ %245, %244 ]
  %172 = load i32, ptr %151, align 8, !tbaa !229
  %173 = trunc i64 %171 to i32
  %174 = shl nuw nsw i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %210, label %177

177:                                              ; preds = %170
  %178 = load ptr, ptr %152, align 8, !tbaa !95
  %179 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %171
  %180 = load i32, ptr %179, align 8, !tbaa !39
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.OccFace, ptr %178, i64 %181
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call fastcc void @occ_face(ptr noundef %182, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %153)
  store float 0.000000e+00, ptr %154, align 4, !tbaa !239
  %183 = load float, ptr %153, align 4, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #8
  %184 = load float, ptr %7, align 4, !tbaa !44
  %185 = load float, ptr %155, align 4, !tbaa !44
  %186 = load float, ptr %156, align 4, !tbaa !44
  store float 0x3FD20DD820000000, ptr %6, align 16, !tbaa !44
  %187 = fmul float %185, 0x3FDF454580000000
  store float %187, ptr %157, align 4, !tbaa !44
  %188 = fmul float %186, 0x3FDF454580000000
  store float %188, ptr %158, align 8, !tbaa !44
  %189 = fmul float %184, 0x3FDF454580000000
  store float %189, ptr %159, align 4, !tbaa !44
  %190 = fmul float %184, 0x3FF17B13A0000000
  %191 = fmul float %190, %185
  store float %191, ptr %160, align 16, !tbaa !44
  %192 = fmul float %185, 0x3FF17B13A0000000
  %193 = fmul float %192, %186
  store float %193, ptr %161, align 4, !tbaa !44
  %194 = fmul float %186, 3.000000e+00
  %195 = call float @llvm.fmuladd.f32(float %194, float %186, float -1.000000e+00)
  %196 = fmul float %195, 0x3FD42F61E0000000
  store float %196, ptr %162, align 8, !tbaa !44
  %197 = fmul float %190, %186
  store float %197, ptr %163, align 4, !tbaa !44
  %198 = fneg float %185
  %199 = fmul float %185, %198
  %200 = call float @llvm.fmuladd.f32(float %184, float %184, float %199)
  %201 = fmul float %200, 0x3FE17B13A0000000
  store float %201, ptr %164, align 16, !tbaa !44
  br label %202

202:                                              ; preds = %177, %202
  %203 = phi i64 [ 0, %177 ], [ %207, %202 ]
  %204 = getelementptr inbounds float, ptr %6, i64 %203
  %205 = load float, ptr %204, align 4, !tbaa !44
  %206 = fmul float %183, %205
  store float %206, ptr %204, align 4, !tbaa !44
  %207 = add nuw nsw i64 %203, 1
  %208 = icmp eq i64 %207, 9
  br i1 %208, label %209, label %202, !llvm.loop !241

209:                                              ; preds = %202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %165, ptr noundef nonnull align 16 dereferenceable(36) %6, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  br label %213

210:                                              ; preds = %170
  %211 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %171
  %212 = load ptr, ptr %211, align 8, !tbaa !39
  br label %213

213:                                              ; preds = %210, %209
  %214 = phi ptr [ %13, %209 ], [ %212, %210 ]
  %215 = icmp eq ptr %214, null
  br i1 %215, label %244, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.OccNode, ptr %214, i64 0, i32 1
  %218 = load float, ptr %217, align 4, !tbaa !240
  %219 = load float, ptr %166, align 4, !tbaa !240
  %220 = fadd float %218, %219
  store float %220, ptr %166, align 4, !tbaa !240
  %221 = getelementptr inbounds %struct.OccNode, ptr %214, i64 0, i32 2
  br label %222

222:                                              ; preds = %216, %222
  %223 = phi i64 [ 0, %216 ], [ %229, %222 ]
  %224 = getelementptr inbounds float, ptr %167, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !44
  %226 = getelementptr inbounds float, ptr %221, i64 %223
  %227 = load float, ptr %226, align 4, !tbaa !44
  %228 = fadd float %225, %227
  store float %228, ptr %224, align 4, !tbaa !44
  %229 = add nuw nsw i64 %223, 1
  %230 = icmp eq i64 %229, 9
  br i1 %230, label %231, label %222, !llvm.loop !242

231:                                              ; preds = %222
  %232 = load float, ptr %217, align 4, !tbaa !240
  %233 = load float, ptr %214, align 4, !tbaa !44
  %234 = load float, ptr %1, align 4, !tbaa !44
  %235 = call float @llvm.fmuladd.f32(float %233, float %232, float %234)
  store float %235, ptr %1, align 4, !tbaa !44
  %236 = getelementptr inbounds float, ptr %214, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !44
  %238 = load float, ptr %168, align 4, !tbaa !44
  %239 = call float @llvm.fmuladd.f32(float %237, float %232, float %238)
  store float %239, ptr %168, align 4, !tbaa !44
  %240 = getelementptr inbounds float, ptr %214, i64 2
  %241 = load float, ptr %240, align 4, !tbaa !44
  %242 = load float, ptr %169, align 4, !tbaa !44
  %243 = call float @llvm.fmuladd.f32(float %241, float %232, float %242)
  store float %243, ptr %169, align 4, !tbaa !44
  br label %244

244:                                              ; preds = %213, %231
  %245 = add nuw nsw i64 %171, 1
  %246 = icmp eq i64 %245, 8
  br i1 %246, label %247, label %170, !llvm.loop !243

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 1
  %249 = load float, ptr %248, align 4, !tbaa !240
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = fdiv float 1.000000e+00, %249
  %253 = load float, ptr %1, align 4, !tbaa !44
  %254 = fmul float %252, %253
  store float %254, ptr %1, align 4, !tbaa !44
  %255 = getelementptr inbounds float, ptr %1, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !44
  %257 = fmul float %252, %256
  store float %257, ptr %255, align 4, !tbaa !44
  %258 = getelementptr inbounds float, ptr %1, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !44
  %260 = fmul float %252, %259
  store float %260, ptr %258, align 4, !tbaa !44
  br label %261

261:                                              ; preds = %251, %247
  %262 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 3
  store float 0.000000e+00, ptr %262, align 4, !tbaa !239
  %263 = fcmp ogt float %249, 0.000000e+00
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  call fastcc void @occ_build_dco(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %262)
  br label %265

265:                                              ; preds = %264, %261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_sum_occlusion(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %2, %74
  %12 = phi i64 [ 0, %2 ], [ %80, %74 ]
  %13 = phi float [ 0.000000e+00, %2 ], [ %79, %74 ]
  %14 = phi float [ 0.000000e+00, %2 ], [ %78, %74 ]
  %15 = phi float [ 0.000000e+00, %2 ], [ %77, %74 ]
  %16 = phi float [ 0.000000e+00, %2 ], [ %76, %74 ]
  %17 = phi float [ 0.000000e+00, %2 ], [ %75, %74 ]
  %18 = load i32, ptr %7, align 8, !tbaa !229
  %19 = trunc i64 %12 to i32
  %20 = shl nuw nsw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %12
  br i1 %22, label %50, label %24

24:                                               ; preds = %11
  %25 = load i32, ptr %23, align 8, !tbaa !39
  %26 = load ptr, ptr %8, align 8, !tbaa !95
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.OccFace, ptr %26, i64 %27
  call fastcc void @occ_face(ptr noundef %28, ptr noundef null, ptr noundef null, ptr noundef nonnull %3)
  %29 = load float, ptr %3, align 4, !tbaa !44
  %30 = load ptr, ptr %9, align 8, !tbaa !97
  %31 = getelementptr inbounds float, ptr %30, i64 %27
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = call float @llvm.fmuladd.f32(float %29, float %32, float %13)
  br i1 %6, label %45, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr %10, align 8, !tbaa !98
  %36 = getelementptr inbounds [3 x float], ptr %35, i64 %27
  %37 = load float, ptr %36, align 4, !tbaa !44
  %38 = call float @llvm.fmuladd.f32(float %37, float %29, float %15)
  %39 = getelementptr inbounds float, ptr %36, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !44
  %41 = call float @llvm.fmuladd.f32(float %40, float %29, float %16)
  %42 = getelementptr inbounds float, ptr %36, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !44
  %44 = call float @llvm.fmuladd.f32(float %43, float %29, float %17)
  br label %45

45:                                               ; preds = %34, %24
  %46 = phi float [ %17, %24 ], [ %44, %34 ]
  %47 = phi float [ %16, %24 ], [ %41, %34 ]
  %48 = phi float [ %15, %24 ], [ %38, %34 ]
  %49 = fadd float %14, %29
  br label %74

50:                                               ; preds = %11
  %51 = load ptr, ptr %23, align 8, !tbaa !39
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  call fastcc void @occ_sum_occlusion(ptr noundef %0, ptr noundef nonnull %51)
  %54 = getelementptr inbounds %struct.OccNode, ptr %51, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !240
  %56 = getelementptr inbounds %struct.OccNode, ptr %51, i64 0, i32 4
  %57 = load float, ptr %56, align 8, !tbaa !227
  %58 = call float @llvm.fmuladd.f32(float %55, float %57, float %13)
  br i1 %6, label %69, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.OccNode, ptr %51, i64 0, i32 5
  %61 = load float, ptr %60, align 4, !tbaa !44
  %62 = call float @llvm.fmuladd.f32(float %61, float %55, float %15)
  %63 = getelementptr inbounds %struct.OccNode, ptr %51, i64 0, i32 5, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !44
  %65 = call float @llvm.fmuladd.f32(float %64, float %55, float %16)
  %66 = getelementptr inbounds %struct.OccNode, ptr %51, i64 0, i32 5, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = call float @llvm.fmuladd.f32(float %67, float %55, float %17)
  br label %69

69:                                               ; preds = %59, %53
  %70 = phi float [ %17, %53 ], [ %68, %59 ]
  %71 = phi float [ %16, %53 ], [ %65, %59 ]
  %72 = phi float [ %15, %53 ], [ %62, %59 ]
  %73 = fadd float %14, %55
  br label %74

74:                                               ; preds = %45, %69, %50
  %75 = phi float [ %17, %50 ], [ %70, %69 ], [ %46, %45 ]
  %76 = phi float [ %16, %50 ], [ %71, %69 ], [ %47, %45 ]
  %77 = phi float [ %15, %50 ], [ %72, %69 ], [ %48, %45 ]
  %78 = phi float [ %14, %50 ], [ %73, %69 ], [ %49, %45 ]
  %79 = phi float [ %13, %50 ], [ %58, %69 ], [ %33, %45 ]
  %80 = add nuw nsw i64 %12, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %82, label %11, !llvm.loop !244

82:                                               ; preds = %74
  %83 = fcmp une float %78, 0.000000e+00
  br i1 %83, label %84, label %91

84:                                               ; preds = %82
  %85 = fdiv float %79, %78
  br i1 %6, label %101, label %86

86:                                               ; preds = %84
  %87 = fdiv float 1.000000e+00, %78
  %88 = fmul float %77, %87
  %89 = fmul float %76, %87
  %90 = fmul float %75, %87
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi float [ %90, %86 ], [ %75, %82 ]
  %93 = phi float [ %89, %86 ], [ %76, %82 ]
  %94 = phi float [ %88, %86 ], [ %77, %82 ]
  %95 = phi float [ %85, %86 ], [ %79, %82 ]
  %96 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float %95, ptr %96, align 8, !tbaa !227
  br i1 %6, label %103, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 5
  store float %94, ptr %98, align 4, !tbaa !44
  %99 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 5, i64 1
  store float %93, ptr %99, align 4, !tbaa !44
  %100 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 5, i64 2
  store float %92, ptr %100, align 4, !tbaa !44
  br label %103

101:                                              ; preds = %84
  %102 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 4
  store float %85, ptr %102, align 8, !tbaa !227
  br label %103

103:                                              ; preds = %101, %97, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @occ_build_sh_normalize(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !240
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 2
  %7 = fdiv float 1.000000e+00, %3
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %6, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %7, %11
  store float %12, ptr %10, align 4, !tbaa !44
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 9
  br i1 %14, label %15, label %8, !llvm.loop !241

15:                                               ; preds = %8, %1
  %16 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 6
  br label %17

17:                                               ; preds = %15, %29
  %18 = phi i64 [ 0, %15 ], [ %30, %29 ]
  %19 = load i32, ptr %16, align 8, !tbaa !229
  %20 = trunc i64 %18 to i32
  %21 = shl nuw nsw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.OccNode, ptr %0, i64 0, i32 7, i64 %18
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @occ_build_sh_normalize(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %17, %28, %24
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %17, !llvm.loop !245

32:                                               ; preds = %29
  ret void
}

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cent_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @area_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exec_occ_build(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !232
  %3 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !234
  %5 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !235
  %7 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !236
  %9 = getelementptr inbounds %struct.OcclusionBuildThread, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !237
  tail call fastcc void @occ_build_recursive(ptr noundef %2, ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  ret ptr null
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #3

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_build_dco(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 6
  %7 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds float, ptr %5, i64 1
  %9 = getelementptr inbounds float, ptr %5, i64 2
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = getelementptr inbounds float, ptr %5, i64 2
  %13 = getelementptr inbounds float, ptr %2, i64 2
  br label %14

14:                                               ; preds = %4, %53
  %15 = phi i64 [ 0, %4 ], [ %54, %53 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %16 = load i32, ptr %6, align 8, !tbaa !229
  %17 = trunc i64 %15 to i32
  %18 = shl nuw nsw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %15
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.OccFace, ptr %22, i64 %25
  call fastcc void @occ_face(ptr noundef %26, ptr noundef nonnull %5, ptr noundef null, ptr noundef null)
  br label %37

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.OccNode, ptr %1, i64 0, i32 7, i64 %15
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  call fastcc void @occ_build_dco(ptr noundef %0, ptr noundef nonnull %29, ptr noundef %2, ptr noundef %3)
  %32 = load float, ptr %29, align 4, !tbaa !44
  store float %32, ptr %5, align 4, !tbaa !44
  %33 = getelementptr inbounds float, ptr %29, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !44
  store float %34, ptr %8, align 4, !tbaa !44
  %35 = getelementptr inbounds float, ptr %29, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !44
  store float %36, ptr %9, align 4, !tbaa !44
  br label %37

37:                                               ; preds = %31, %21
  %38 = load float, ptr %5, align 4, !tbaa !44
  %39 = load float, ptr %2, align 4, !tbaa !44
  %40 = fsub float %38, %39
  %41 = load float, ptr %10, align 4, !tbaa !44
  %42 = load float, ptr %11, align 4, !tbaa !44
  %43 = fsub float %41, %42
  %44 = load float, ptr %12, align 4, !tbaa !44
  %45 = load float, ptr %13, align 4, !tbaa !44
  %46 = fsub float %44, %45
  %47 = fmul float %43, %43
  %48 = call float @llvm.fmuladd.f32(float %40, float %40, float %47)
  %49 = call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = load float, ptr %3, align 4, !tbaa !44
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store float %49, ptr %3, align 4, !tbaa !44
  br label %53

53:                                               ; preds = %37, %52, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %54 = add nuw nsw i64 %15, 1
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %56, label %14, !llvm.loop !246

56:                                               ; preds = %53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_build_split(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %7 = getelementptr inbounds float, ptr %5, i64 2
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %5, i64 1
  store float 0x46293E5940000000, ptr %8, align 4, !tbaa !44
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %6, i64 2
  store float 0xC6293E5940000000, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %6, i64 1
  store float 0xC6293E5940000000, ptr %10, align 4, !tbaa !44
  store float 0xC6293E5940000000, ptr %6, align 4, !tbaa !44
  %11 = icmp slt i32 %1, %2
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 1
  %14 = sext i32 %1 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ %14, %12 ], [ %19, %15 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !96
  %18 = getelementptr inbounds [3 x float], ptr %17, i64 %16
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %18) #8
  %19 = add nsw i64 %16, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %15, !llvm.loop !247

22:                                               ; preds = %15, %4
  br label %23

23:                                               ; preds = %22, %23
  %24 = phi i64 [ %36, %23 ], [ 0, %22 ]
  %25 = phi i32 [ %35, %23 ], [ 0, %22 ]
  %26 = phi float [ %33, %23 ], [ -1.000000e+00, %22 ]
  %27 = getelementptr inbounds float, ptr %6, i64 %24
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = getelementptr inbounds float, ptr %5, i64 %24
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = fsub float %28, %30
  %32 = fcmp ogt float %31, %26
  %33 = select i1 %32, float %31, float %26
  %34 = trunc i64 %24 to i32
  %35 = select i1 %32, i32 %34, i32 %25
  %36 = add nuw nsw i64 %24, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %23, !llvm.loop !248

38:                                               ; preds = %23
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !44
  %42 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %39
  %43 = load float, ptr %42, align 4, !tbaa !44
  %44 = fadd float %41, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = icmp slt i32 %1, %2
  br i1 %46, label %47, label %87

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  br label %50

50:                                               ; preds = %47, %83
  %51 = phi i32 [ %1, %47 ], [ %85, %83 ]
  %52 = phi i32 [ %2, %47 ], [ %84, %83 ]
  %53 = load ptr, ptr %48, align 8, !tbaa !96
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds [3 x float], ptr %53, i64 %54, i64 %39
  %56 = load float, ptr %55, align 4, !tbaa !44
  %57 = fcmp ogt float %56, %45
  br i1 %57, label %58, label %81

58:                                               ; preds = %50
  %59 = add nsw i32 %52, -1
  %60 = load ptr, ptr %49, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct.OccFace, ptr %60, i64 %54
  %62 = load i64, ptr %61, align 4
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds %struct.OccFace, ptr %60, i64 %63
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %61, align 4
  %66 = load ptr, ptr %49, align 8, !tbaa !95
  %67 = getelementptr inbounds %struct.OccFace, ptr %66, i64 %63
  store i64 %62, ptr %67, align 4
  %68 = load ptr, ptr %48, align 8, !tbaa !96
  %69 = getelementptr inbounds [3 x float], ptr %68, i64 %54
  %70 = load float, ptr %69, align 4, !tbaa !44
  %71 = getelementptr inbounds [3 x float], ptr %68, i64 %63
  %72 = load float, ptr %71, align 4, !tbaa !44
  store float %72, ptr %69, align 4, !tbaa !44
  store float %70, ptr %71, align 4, !tbaa !44
  %73 = getelementptr inbounds [3 x float], ptr %68, i64 %54, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !44
  %75 = getelementptr inbounds [3 x float], ptr %68, i64 %63, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !44
  store float %76, ptr %73, align 4, !tbaa !44
  store float %74, ptr %75, align 4, !tbaa !44
  %77 = getelementptr inbounds [3 x float], ptr %68, i64 %54, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !44
  %79 = getelementptr inbounds [3 x float], ptr %68, i64 %63, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !44
  store float %80, ptr %77, align 4, !tbaa !44
  store float %78, ptr %79, align 4, !tbaa !44
  br label %83

81:                                               ; preds = %50
  %82 = add nsw i32 %51, 1
  br label %83

83:                                               ; preds = %81, %58
  %84 = phi i32 [ %59, %58 ], [ %52, %81 ]
  %85 = phi i32 [ %51, %58 ], [ %82, %81 ]
  %86 = icmp slt i32 %85, %84
  br i1 %86, label %50, label %87, !llvm.loop !249

87:                                               ; preds = %83, %38
  %88 = phi i32 [ %2, %38 ], [ %84, %83 ]
  store i32 %88, ptr %3, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @shade_input_set_triangle_i(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #3

declare void @shade_input_flip_normals(ptr noundef) local_unnamed_addr #3

declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #3

declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ntreeShaderExecTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @shade_material_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @occ_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %20 = load float, ptr %3, align 4, !tbaa !44
  store float %20, ptr %17, align 4, !tbaa !44
  %21 = getelementptr inbounds float, ptr %3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = getelementptr inbounds float, ptr %17, i64 1
  store float %22, ptr %23, align 4, !tbaa !44
  %24 = getelementptr inbounds float, ptr %3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !44
  %26 = getelementptr inbounds float, ptr %17, i64 2
  store float %25, ptr %26, align 4, !tbaa !44
  %27 = load float, ptr %4, align 4, !tbaa !44
  store float %27, ptr %18, align 4, !tbaa !44
  %28 = getelementptr inbounds float, ptr %4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !44
  %30 = getelementptr inbounds float, ptr %18, i64 1
  store float %29, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds float, ptr %4, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = getelementptr inbounds float, ptr %18, i64 2
  store float %32, ptr %33, align 4, !tbaa !44
  %34 = tail call float @llvm.fmuladd.f32(float %27, float 0x3F1A36E2E0000000, float %20)
  store float %34, ptr %17, align 4, !tbaa !44
  %35 = tail call float @llvm.fmuladd.f32(float %29, float 0x3F1A36E2E0000000, float %22)
  store float %35, ptr %23, align 4, !tbaa !44
  %36 = tail call float @llvm.fmuladd.f32(float %32, float 0x3F1A36E2E0000000, float %25)
  store float %36, ptr %26, align 4, !tbaa !44
  %37 = icmp ne ptr %7, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %8
  store float %27, ptr %7, align 4, !tbaa !44
  %39 = getelementptr inbounds float, ptr %7, i64 1
  store float %29, ptr %39, align 4, !tbaa !44
  %40 = getelementptr inbounds float, ptr %7, i64 2
  store float %32, ptr %40, align 4, !tbaa !44
  br label %41

41:                                               ; preds = %38, %8
  %42 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 9
  %43 = load float, ptr %42, align 8, !tbaa !86
  %44 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 10
  %45 = load float, ptr %44, align 4, !tbaa !89
  %46 = sext i32 %1 to i64
  %47 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 6, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !107
  store ptr %50, ptr %48, align 8, !tbaa !35
  %51 = fcmp une float %45, 0.000000e+00
  %52 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 2
  %53 = icmp eq ptr %2, null
  %54 = getelementptr inbounds %struct.OccFace, ptr %2, i64 0, i32 1
  %55 = fcmp une float %45, 0.000000e+00
  %56 = select i1 %37, i1 true, i1 %55
  %57 = getelementptr inbounds float, ptr %19, i64 1
  %58 = getelementptr inbounds float, ptr %19, i64 2
  %59 = fcmp oeq float %45, 0.000000e+00
  %60 = getelementptr inbounds float, ptr %9, i64 1
  %61 = getelementptr inbounds float, ptr %9, i64 2
  %62 = getelementptr inbounds float, ptr %10, i64 1
  %63 = getelementptr inbounds float, ptr %10, i64 2
  %64 = getelementptr inbounds float, ptr %11, i64 1
  %65 = getelementptr inbounds float, ptr %11, i64 2
  %66 = getelementptr inbounds float, ptr %12, i64 1
  %67 = getelementptr inbounds float, ptr %12, i64 2
  %68 = icmp eq ptr %6, null
  %69 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 4
  %70 = getelementptr inbounds %struct.OcclusionTree, ptr %0, i64 0, i32 3
  %71 = getelementptr inbounds float, ptr %7, i64 1
  %72 = getelementptr inbounds float, ptr %7, i64 2
  %73 = icmp eq ptr %6, null
  %74 = getelementptr inbounds float, ptr %7, i64 1
  %75 = getelementptr inbounds float, ptr %7, i64 2
  br label %76

76:                                               ; preds = %398, %41
  %77 = phi float [ %399, %398 ], [ 0.000000e+00, %41 ]
  %78 = phi float [ %400, %398 ], [ 0.000000e+00, %41 ]
  %79 = phi float [ %401, %398 ], [ 0.000000e+00, %41 ]
  %80 = phi float [ %402, %398 ], [ 0.000000e+00, %41 ]
  %81 = phi i32 [ %403, %398 ], [ 1, %41 ]
  %82 = load float, ptr %17, align 4
  %83 = load float, ptr %23, align 4
  %84 = load float, ptr %26, align 4
  %85 = sext i32 %81 to i64
  br label %86

86:                                               ; preds = %76, %117
  %87 = phi i64 [ %85, %76 ], [ %90, %117 ]
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %404, label %89

89:                                               ; preds = %86
  %90 = add nsw i64 %87, -1
  %91 = getelementptr inbounds ptr, ptr %48, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !35
  %93 = load float, ptr %92, align 4, !tbaa !44
  %94 = fsub float %93, %82
  %95 = getelementptr inbounds float, ptr %92, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !44
  %97 = fsub float %96, %83
  %98 = getelementptr inbounds float, ptr %92, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !44
  %100 = fsub float %99, %84
  %101 = fmul float %97, %97
  %102 = call float @llvm.fmuladd.f32(float %94, float %94, float %101)
  %103 = call float @llvm.fmuladd.f32(float %100, float %100, float %102)
  %104 = fadd float %103, 0x3C9CD2B2A0000000
  %105 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !240
  %107 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !239
  %109 = fcmp ogt float %106, %108
  %110 = select i1 %109, float %106, float %108
  %111 = fmul float %43, %104
  %112 = fcmp ogt float %111, %110
  br i1 %112, label %116, label %113

113:                                              ; preds = %89
  %114 = trunc i64 %90 to i32
  %115 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 6
  br label %226

116:                                              ; preds = %89
  br i1 %51, label %117, label %121

117:                                              ; preds = %116
  %118 = call float @llvm.fmuladd.f32(float %45, float %104, float 1.000000e+00)
  %119 = fdiv float 1.000000e+00, %118
  %120 = fcmp olt float %119, 0x3F847AE140000000
  br i1 %120, label %86, label %121, !llvm.loop !250

121:                                              ; preds = %116, %117
  %122 = phi float [ %119, %117 ], [ 1.000000e+00, %116 ]
  %123 = trunc i64 %90 to i32
  %124 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 1
  %125 = call float @sqrtf(float noundef %104) #8
  %126 = fdiv float 1.000000e+00, %125
  %127 = fneg float %94
  %128 = fmul float %126, %127
  %129 = fneg float %97
  %130 = fmul float %126, %129
  %131 = fneg float %100
  %132 = fmul float %126, %131
  %133 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2
  %134 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 8
  %135 = load float, ptr %134, align 4, !tbaa !44
  %136 = fmul float %135, 0x3FDB7570C0000000
  %137 = fneg float %130
  %138 = fmul float %130, %137
  %139 = call float @llvm.fmuladd.f32(float %128, float %128, float %138)
  %140 = fmul float %136, %139
  %141 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 6
  %142 = load float, ptr %141, align 4, !tbaa !44
  %143 = fmul float %142, 0x3FE7C7AE20000000
  %144 = fmul float %132, %143
  %145 = call float @llvm.fmuladd.f32(float %144, float %132, float %140)
  %146 = load float, ptr %133, align 4, !tbaa !44
  %147 = call float @llvm.fmuladd.f32(float %146, float 0x3FEC5BF8C0000000, float %145)
  %148 = call float @llvm.fmuladd.f32(float %142, float 0xBFCFB4E540000000, float %147)
  %149 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 4
  %150 = load float, ptr %149, align 4, !tbaa !44
  %151 = fmul float %128, %150
  %152 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 7
  %153 = load float, ptr %152, align 4, !tbaa !44
  %154 = fmul float %128, %153
  %155 = fmul float %132, %154
  %156 = call float @llvm.fmuladd.f32(float %151, float %130, float %155)
  %157 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 5
  %158 = load float, ptr %157, align 4, !tbaa !44
  %159 = fmul float %130, %158
  %160 = call float @llvm.fmuladd.f32(float %159, float %132, float %156)
  %161 = call float @llvm.fmuladd.f32(float %160, float 0x3FEB7570C0000000, float %148)
  %162 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 3
  %163 = load float, ptr %162, align 4, !tbaa !44
  %164 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !44
  %166 = fmul float %130, %165
  %167 = call float @llvm.fmuladd.f32(float %163, float %128, float %166)
  %168 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 2, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !44
  %170 = call float @llvm.fmuladd.f32(float %169, float %132, float %167)
  %171 = call float @llvm.fmuladd.f32(float %170, float 0x3FF05F8D20000000, float %161)
  %172 = load float, ptr %18, align 4, !tbaa !44
  %173 = load float, ptr %30, align 4, !tbaa !44
  %174 = fmul float %97, %173
  %175 = call float @llvm.fmuladd.f32(float %172, float %94, float %174)
  %176 = load float, ptr %33, align 4, !tbaa !44
  %177 = call float @llvm.fmuladd.f32(float %176, float %100, float %175)
  %178 = fmul float %126, %177
  %179 = fcmp olt float %171, 0.000000e+00
  br i1 %179, label %183, label %180

180:                                              ; preds = %121
  %181 = fcmp ogt float %171, 1.000000e+00
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %182, %180, %121
  %184 = phi float [ 1.000000e+00, %182 ], [ %171, %180 ], [ 0.000000e+00, %121 ]
  %185 = fcmp olt float %178, 0.000000e+00
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = fcmp ogt float %178, 1.000000e+00
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %183, %186, %188
  %190 = phi float [ 1.000000e+00, %188 ], [ %178, %186 ], [ 0.000000e+00, %183 ]
  %191 = load float, ptr %124, align 4, !tbaa !240
  %192 = fmul float %184, %191
  %193 = fmul float %190, %192
  %194 = call float @llvm.fmuladd.f32(float %191, float 0x3FD45F3060000000, float %104)
  %195 = fdiv float %193, %194
  %196 = fmul float %195, 0x3FD45F3060000000
  br i1 %73, label %208, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 5
  %199 = fmul float %122, %196
  %200 = load float, ptr %198, align 4, !tbaa !44
  %201 = call float @llvm.fmuladd.f32(float %200, float %199, float %79)
  %202 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 5, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !44
  %204 = call float @llvm.fmuladd.f32(float %203, float %199, float %78)
  %205 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 5, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !44
  %207 = call float @llvm.fmuladd.f32(float %206, float %199, float %77)
  br label %208

208:                                              ; preds = %197, %189
  %209 = phi float [ %77, %189 ], [ %207, %197 ]
  %210 = phi float [ %78, %189 ], [ %204, %197 ]
  %211 = phi float [ %79, %189 ], [ %201, %197 ]
  %212 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 4
  %213 = load float, ptr %212, align 8, !tbaa !227
  %214 = fmul float %196, %213
  br i1 %37, label %215, label %224

215:                                              ; preds = %208
  %216 = load float, ptr %7, align 4, !tbaa !44
  %217 = fneg float %214
  %218 = fmul float %126, %217
  %219 = call float @llvm.fmuladd.f32(float %218, float %94, float %216)
  store float %219, ptr %7, align 4, !tbaa !44
  %220 = load float, ptr %74, align 4, !tbaa !44
  %221 = call float @llvm.fmuladd.f32(float %218, float %97, float %220)
  store float %221, ptr %74, align 4, !tbaa !44
  %222 = load float, ptr %75, align 4, !tbaa !44
  %223 = call float @llvm.fmuladd.f32(float %218, float %100, float %222)
  store float %223, ptr %75, align 4, !tbaa !44
  br label %224

224:                                              ; preds = %215, %208
  %225 = call float @llvm.fmuladd.f32(float %214, float %122, float %80)
  br label %398

226:                                              ; preds = %113, %386
  %227 = phi i64 [ 0, %113 ], [ %396, %386 ]
  %228 = phi i32 [ %114, %113 ], [ %395, %386 ]
  %229 = phi float [ %80, %113 ], [ %394, %386 ]
  %230 = phi float [ %104, %113 ], [ %393, %386 ]
  %231 = phi float [ %94, %113 ], [ %392, %386 ]
  %232 = phi float [ %97, %113 ], [ %391, %386 ]
  %233 = phi float [ %100, %113 ], [ %390, %386 ]
  %234 = phi float [ %79, %113 ], [ %389, %386 ]
  %235 = phi float [ %78, %113 ], [ %388, %386 ]
  %236 = phi float [ %77, %113 ], [ %387, %386 ]
  %237 = load i32, ptr %115, align 8, !tbaa !229
  %238 = trunc i64 %227 to i32
  %239 = shl nuw nsw i32 1, %238
  %240 = and i32 %237, %239
  %241 = icmp eq i32 %240, 0
  %242 = getelementptr inbounds %struct.OccNode, ptr %92, i64 0, i32 7, i64 %227
  br i1 %241, label %379, label %243

243:                                              ; preds = %226
  %244 = load i32, ptr %242, align 8, !tbaa !39
  %245 = load ptr, ptr %52, align 8, !tbaa !95
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds %struct.OccFace, ptr %245, i64 %246
  br i1 %53, label %257, label %248

248:                                              ; preds = %243
  %249 = load i32, ptr %247, align 4, !tbaa !99
  %250 = load i32, ptr %2, align 4, !tbaa !99
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.OccFace, ptr %245, i64 %246, i32 1
  %254 = load i32, ptr %253, align 4, !tbaa !101
  %255 = load i32, ptr %54, align 4, !tbaa !101
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %386, label %257

257:                                              ; preds = %252, %248, %243
  br i1 %56, label %258, label %276

258:                                              ; preds = %257
  call fastcc void @occ_face(ptr noundef %247, ptr noundef nonnull %19, ptr noundef null, ptr noundef null)
  %259 = load float, ptr %19, align 4, !tbaa !44
  %260 = load float, ptr %17, align 4, !tbaa !44
  %261 = fsub float %259, %260
  %262 = load float, ptr %57, align 4, !tbaa !44
  %263 = load float, ptr %23, align 4, !tbaa !44
  %264 = fsub float %262, %263
  %265 = load float, ptr %58, align 4, !tbaa !44
  %266 = load float, ptr %26, align 4, !tbaa !44
  %267 = fsub float %265, %266
  %268 = fmul float %264, %264
  %269 = call float @llvm.fmuladd.f32(float %261, float %261, float %268)
  %270 = call float @llvm.fmuladd.f32(float %267, float %267, float %269)
  %271 = fadd float %270, 0x3C9CD2B2A0000000
  %272 = call float @llvm.fmuladd.f32(float %45, float %271, float 1.000000e+00)
  %273 = fdiv float 1.000000e+00, %272
  %274 = select i1 %59, float 1.000000e+00, float %273
  %275 = fcmp olt float %274, 0x3F847AE140000000
  br i1 %275, label %386, label %276

276:                                              ; preds = %257, %258
  %277 = phi float [ %267, %258 ], [ %233, %257 ]
  %278 = phi float [ %264, %258 ], [ %232, %257 ]
  %279 = phi float [ %261, %258 ], [ %231, %257 ]
  %280 = phi float [ %274, %258 ], [ 1.000000e+00, %257 ]
  %281 = phi float [ %271, %258 ], [ %230, %257 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %282 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !119
  %283 = load i32, ptr %247, align 4, !tbaa !99
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %282, i64 %284, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !68
  %287 = getelementptr inbounds %struct.OccFace, ptr %245, i64 %246, i32 1
  %288 = load i32, ptr %287, align 4, !tbaa !101
  %289 = call ptr @RE_findOrAddVlak(ptr noundef %286, i32 noundef %288) #8
  %290 = load ptr, ptr %289, align 8, !tbaa !123
  %291 = load float, ptr %290, align 4, !tbaa !44
  store float %291, ptr %9, align 4, !tbaa !44
  %292 = getelementptr inbounds float, ptr %290, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !44
  store float %293, ptr %60, align 4, !tbaa !44
  %294 = getelementptr inbounds float, ptr %290, i64 2
  %295 = load float, ptr %294, align 4, !tbaa !44
  store float %295, ptr %61, align 4, !tbaa !44
  %296 = getelementptr inbounds %struct.VlakRen, ptr %289, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !124
  %298 = load float, ptr %297, align 4, !tbaa !44
  store float %298, ptr %10, align 4, !tbaa !44
  %299 = getelementptr inbounds float, ptr %297, i64 1
  %300 = load float, ptr %299, align 4, !tbaa !44
  store float %300, ptr %62, align 4, !tbaa !44
  %301 = getelementptr inbounds float, ptr %297, i64 2
  %302 = load float, ptr %301, align 4, !tbaa !44
  store float %302, ptr %63, align 4, !tbaa !44
  %303 = getelementptr inbounds %struct.VlakRen, ptr %289, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !125
  %305 = load float, ptr %304, align 4, !tbaa !44
  store float %305, ptr %11, align 4, !tbaa !44
  %306 = getelementptr inbounds float, ptr %304, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !44
  store float %307, ptr %64, align 4, !tbaa !44
  %308 = getelementptr inbounds float, ptr %304, i64 2
  %309 = load float, ptr %308, align 4, !tbaa !44
  store float %309, ptr %65, align 4, !tbaa !44
  %310 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %282, i64 %284, i32 11
  %311 = load i16, ptr %310, align 8, !tbaa !226
  %312 = and i16 %311, 3
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %276
  %315 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %282, i64 %284, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %315, ptr noundef nonnull %9) #8
  call void @mul_m4_v3(ptr noundef nonnull %315, ptr noundef nonnull %10) #8
  call void @mul_m4_v3(ptr noundef nonnull %315, ptr noundef nonnull %11) #8
  br label %316

316:                                              ; preds = %314, %276
  %317 = call zeroext i8 @form_factor_visible_quad(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = call float @form_factor_quad(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %321 = fadd float %320, 0.000000e+00
  br label %322

322:                                              ; preds = %319, %316
  %323 = phi float [ %321, %319 ], [ 0.000000e+00, %316 ]
  %324 = getelementptr inbounds %struct.VlakRen, ptr %289, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !120
  %326 = icmp eq ptr %325, null
  br i1 %326, label %344, label %327

327:                                              ; preds = %322
  %328 = load float, ptr %325, align 4, !tbaa !44
  store float %328, ptr %12, align 4, !tbaa !44
  %329 = getelementptr inbounds float, ptr %325, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !44
  store float %330, ptr %66, align 4, !tbaa !44
  %331 = getelementptr inbounds float, ptr %325, i64 2
  %332 = load float, ptr %331, align 4, !tbaa !44
  store float %332, ptr %67, align 4, !tbaa !44
  %333 = load i16, ptr %310, align 8, !tbaa !226
  %334 = and i16 %333, 3
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %282, i64 %284, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %337, ptr noundef nonnull %12) #8
  br label %338

338:                                              ; preds = %336, %327
  %339 = call zeroext i8 @form_factor_visible_quad(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = call float @form_factor_quad(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %343 = fadd float %323, %342
  br label %344

344:                                              ; preds = %322, %338, %341
  %345 = phi float [ %343, %341 ], [ %323, %338 ], [ %323, %322 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  br i1 %68, label %358, label %346

346:                                              ; preds = %344
  %347 = load ptr, ptr %69, align 8, !tbaa !98
  %348 = getelementptr inbounds [3 x float], ptr %347, i64 %246
  %349 = fmul float %280, %345
  %350 = load float, ptr %348, align 4, !tbaa !44
  %351 = call float @llvm.fmuladd.f32(float %350, float %349, float %234)
  %352 = getelementptr inbounds float, ptr %348, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !44
  %354 = call float @llvm.fmuladd.f32(float %353, float %349, float %235)
  %355 = getelementptr inbounds float, ptr %348, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !44
  %357 = call float @llvm.fmuladd.f32(float %356, float %349, float %236)
  br label %358

358:                                              ; preds = %346, %344
  %359 = phi float [ %236, %344 ], [ %357, %346 ]
  %360 = phi float [ %235, %344 ], [ %354, %346 ]
  %361 = phi float [ %234, %344 ], [ %351, %346 ]
  %362 = load ptr, ptr %70, align 8, !tbaa !97
  %363 = getelementptr inbounds float, ptr %362, i64 %246
  %364 = load float, ptr %363, align 4, !tbaa !44
  %365 = fmul float %345, %364
  br i1 %37, label %366, label %377

366:                                              ; preds = %358
  %367 = call float @sqrtf(float noundef %281) #8
  %368 = fdiv float 1.000000e+00, %367
  %369 = load float, ptr %7, align 4, !tbaa !44
  %370 = fneg float %365
  %371 = fmul float %368, %370
  %372 = call float @llvm.fmuladd.f32(float %371, float %279, float %369)
  store float %372, ptr %7, align 4, !tbaa !44
  %373 = load float, ptr %71, align 4, !tbaa !44
  %374 = call float @llvm.fmuladd.f32(float %371, float %278, float %373)
  store float %374, ptr %71, align 4, !tbaa !44
  %375 = load float, ptr %72, align 4, !tbaa !44
  %376 = call float @llvm.fmuladd.f32(float %371, float %277, float %375)
  store float %376, ptr %72, align 4, !tbaa !44
  br label %377

377:                                              ; preds = %366, %358
  %378 = call float @llvm.fmuladd.f32(float %365, float %280, float %229)
  br label %386

379:                                              ; preds = %226
  %380 = load ptr, ptr %242, align 8, !tbaa !39
  %381 = icmp eq ptr %380, null
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = add nsw i32 %228, 1
  %384 = sext i32 %228 to i64
  %385 = getelementptr inbounds ptr, ptr %48, i64 %384
  store ptr %380, ptr %385, align 8, !tbaa !35
  br label %386

386:                                              ; preds = %377, %252, %382, %379, %258
  %387 = phi float [ %236, %379 ], [ %236, %382 ], [ %236, %258 ], [ %359, %377 ], [ %236, %252 ]
  %388 = phi float [ %235, %379 ], [ %235, %382 ], [ %235, %258 ], [ %360, %377 ], [ %235, %252 ]
  %389 = phi float [ %234, %379 ], [ %234, %382 ], [ %234, %258 ], [ %361, %377 ], [ %234, %252 ]
  %390 = phi float [ %233, %379 ], [ %233, %382 ], [ %267, %258 ], [ %277, %377 ], [ %233, %252 ]
  %391 = phi float [ %232, %379 ], [ %232, %382 ], [ %264, %258 ], [ %278, %377 ], [ %232, %252 ]
  %392 = phi float [ %231, %379 ], [ %231, %382 ], [ %261, %258 ], [ %279, %377 ], [ %231, %252 ]
  %393 = phi float [ %230, %379 ], [ %230, %382 ], [ %271, %258 ], [ %281, %377 ], [ %230, %252 ]
  %394 = phi float [ %229, %379 ], [ %229, %382 ], [ %229, %258 ], [ %378, %377 ], [ %229, %252 ]
  %395 = phi i32 [ %228, %379 ], [ %383, %382 ], [ %228, %258 ], [ %228, %377 ], [ %228, %252 ]
  %396 = add nuw nsw i64 %227, 1
  %397 = icmp eq i64 %396, 8
  br i1 %397, label %398, label %226, !llvm.loop !251

398:                                              ; preds = %386, %224
  %399 = phi float [ %209, %224 ], [ %387, %386 ]
  %400 = phi float [ %210, %224 ], [ %388, %386 ]
  %401 = phi float [ %211, %224 ], [ %389, %386 ]
  %402 = phi float [ %225, %224 ], [ %394, %386 ]
  %403 = phi i32 [ %123, %224 ], [ %395, %386 ]
  br label %76, !llvm.loop !250

404:                                              ; preds = %86
  %405 = icmp eq ptr %5, null
  br i1 %405, label %407, label %406

406:                                              ; preds = %404
  store float %80, ptr %5, align 4, !tbaa !44
  br label %407

407:                                              ; preds = %406, %404
  %408 = icmp eq ptr %6, null
  br i1 %408, label %412, label %409

409:                                              ; preds = %407
  store float %79, ptr %6, align 4, !tbaa !44
  %410 = getelementptr inbounds float, ptr %6, i64 1
  store float %78, ptr %410, align 4, !tbaa !44
  %411 = getelementptr inbounds float, ptr %6, i64 2
  store float %77, ptr %411, align 4, !tbaa !44
  br label %412

412:                                              ; preds = %409, %407
  br i1 %37, label %413, label %435

413:                                              ; preds = %412
  %414 = load float, ptr %7, align 4, !tbaa !44
  %415 = getelementptr inbounds float, ptr %7, i64 1
  %416 = load float, ptr %415, align 4, !tbaa !44
  %417 = fmul float %416, %416
  %418 = call float @llvm.fmuladd.f32(float %414, float %414, float %417)
  %419 = getelementptr inbounds float, ptr %7, i64 2
  %420 = load float, ptr %419, align 4, !tbaa !44
  %421 = call float @llvm.fmuladd.f32(float %420, float %420, float %418)
  %422 = fcmp ogt float %421, 0x38AA95A5C0000000
  br i1 %422, label %423, label %432

423:                                              ; preds = %413
  %424 = call float @sqrtf(float noundef %421) #8
  %425 = fdiv float 1.000000e+00, %424
  %426 = load float, ptr %7, align 4, !tbaa !44
  %427 = fmul float %426, %425
  store float %427, ptr %7, align 4, !tbaa !44
  %428 = load float, ptr %415, align 4, !tbaa !44
  %429 = fmul float %425, %428
  store float %429, ptr %415, align 4, !tbaa !44
  %430 = load float, ptr %419, align 4, !tbaa !44
  %431 = fmul float %425, %430
  br label %433

432:                                              ; preds = %413
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  store float 0.000000e+00, ptr %415, align 4, !tbaa !44
  br label %433

433:                                              ; preds = %423, %432
  %434 = phi float [ 0.000000e+00, %432 ], [ %431, %423 ]
  store float %434, ptr %419, align 4, !tbaa !44
  br label %435

435:                                              ; preds = %433, %412
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  ret void
}

declare zeroext i8 @form_factor_visible_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @form_factor_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

declare ptr @RE_strandren_get_face(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !36, i64 16}
!69 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !43, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!70 = !{!71, !41, i64 84}
!71 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!72 = !{!71, !36, i64 120}
!73 = !{!74, !36, i64 0}
!74 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!75 = !{!76, !36, i64 48}
!76 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!77 = !{!78, !43, i64 394}
!78 = !{!"Material", !61, i64 0, !36, i64 120, !43, i64 128, !43, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !79, i64 224, !80, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !43, i64 356, !43, i64 358, !43, i64 360, !37, i64 362, !37, i64 363, !45, i64 364, !45, i64 368, !43, i64 372, !43, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !43, i64 392, !43, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !43, i64 414, !43, i64 416, !43, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !37, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !43, i64 544, !43, i64 546, !43, i64 548, !37, i64 550, !37, i64 551, !43, i64 552, !43, i64 554, !45, i64 556, !45, i64 560, !37, i64 564, !45, i64 580, !45, i64 584, !43, i64 588, !43, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !43, i64 612, !43, i64 614, !45, i64 616, !45, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !43, i64 820, !43, i64 822, !37, i64 824, !37, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !43, i64 876, !43, i64 878, !41, i64 880, !43, i64 884, !43, i64 886, !37, i64 888, !43, i64 904, !43, i64 906, !43, i64 908, !43, i64 910, !43, i64 912, !37, i64 914, !36, i64 920, !50, i64 928}
!79 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!80 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!81 = !{!78, !43, i64 128}
!82 = distinct !{!82, !66, !67}
!83 = !{!84, !41, i64 60}
!84 = !{!"OcclusionTree", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !41, i64 56, !41, i64 60, !45, i64 64, !45, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 88}
!85 = !{!49, !45, i64 5392}
!86 = !{!84, !45, i64 64}
!87 = !{!49, !43, i64 5376}
!88 = !{!49, !45, i64 5364}
!89 = !{!84, !45, i64 68}
!90 = !{!49, !45, i64 5400}
!91 = !{!49, !43, i64 5412}
!92 = !{!84, !41, i64 80}
!93 = !{!84, !36, i64 0}
!94 = !{!84, !36, i64 88}
!95 = !{!84, !36, i64 16}
!96 = !{!84, !36, i64 8}
!97 = !{!84, !36, i64 24}
!98 = !{!84, !36, i64 32}
!99 = !{!100, !41, i64 0}
!100 = !{!"OccFace", !41, i64 0, !41, i64 4}
!101 = !{!100, !41, i64 4}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
!104 = !{!49, !43, i64 1538}
!105 = !{!84, !41, i64 76}
!106 = !{!84, !41, i64 72}
!107 = !{!84, !36, i64 40}
!108 = !{!84, !41, i64 56}
!109 = !{!49, !36, i64 6048}
!110 = !{!49, !36, i64 6056}
!111 = !{!49, !41, i64 5624}
!112 = !{!113, !41, i64 1440}
!113 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !43, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !43, i64 88, !43, i64 90, !43, i64 92, !43, i64 94, !43, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !45, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !45, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !45, i64 1256, !45, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !45, i64 1336, !45, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !45, i64 1428, !37, i64 1432, !37, i64 1433, !43, i64 1434, !43, i64 1436, !43, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!114 = !{!113, !41, i64 1448}
!115 = !{!113, !41, i64 1452}
!116 = !{!117, !41, i64 0}
!117 = !{!"ShadeSample", !41, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!118 = distinct !{!118, !66, !67}
!119 = !{!49, !36, i64 5800}
!120 = !{!76, !36, i64 24}
!121 = !{!113, !45, i64 168}
!122 = !{!113, !45, i64 172}
!123 = !{!76, !36, i64 0}
!124 = !{!76, !36, i64 8}
!125 = !{!76, !36, i64 16}
!126 = !{!113, !41, i64 1404}
!127 = !{!113, !41, i64 1380}
!128 = !{!113, !41, i64 1384}
!129 = !{!113, !43, i64 56}
!130 = !{!113, !36, i64 32}
!131 = !{!71, !36, i64 16}
!132 = !{!133, !43, i64 952}
!133 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !134, i64 312, !36, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !45, i64 616, !45, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !45, i64 1048, !45, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !45, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !45, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !135, i64 1304, !135, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !50, i64 1400, !36, i64 1416}
!134 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!135 = !{!"long", !37, i64 0}
!136 = !{!113, !36, i64 0}
!137 = !{!78, !36, i64 768}
!138 = !{!78, !37, i64 543}
!139 = !{!49, !36, i64 5688}
!140 = !{!49, !43, i64 5420}
!141 = distinct !{!141, !66, !67}
!142 = distinct !{!142, !66, !67}
!143 = distinct !{!143, !66, !67}
!144 = !{!49, !43, i64 5290}
!145 = distinct !{!145, !66, !67}
!146 = distinct !{!146, !66, !67}
!147 = !{!148, !36, i64 296}
!148 = !{!"StrandSurface", !36, i64 0, !36, i64 8, !71, i64 16, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !41, i64 352, !41, i64 356}
!149 = !{!148, !36, i64 304}
!150 = !{!148, !36, i64 312}
!151 = !{!148, !41, i64 352}
!152 = !{!148, !41, i64 356}
!153 = !{!154, !36, i64 0}
!154 = !{!"OcclusionThread", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48}
!155 = !{!154, !36, i64 16}
!156 = !{!154, !36, i64 24}
!157 = !{!154, !36, i64 32}
!158 = !{!154, !36, i64 8}
!159 = !{!154, !41, i64 48}
!160 = !{!154, !41, i64 40}
!161 = !{!154, !41, i64 44}
!162 = distinct !{!162, !66, !67}
!163 = !{!148, !36, i64 320}
!164 = !{!148, !36, i64 328}
!165 = distinct !{!165, !66, !67}
!166 = distinct !{!166, !66, !67}
!167 = distinct !{!167, !66, !67}
!168 = distinct !{!168, !66, !67}
!169 = !{!113, !36, i64 16}
!170 = !{!171, !36, i64 8}
!171 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!172 = !{!173, !36, i64 56}
!173 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !37, i64 96, !41, i64 160, !41, i64 164}
!174 = !{!171, !36, i64 0}
!175 = !{!113, !41, i64 1408}
!176 = !{!113, !43, i64 1434}
!177 = !{!178, !36, i64 0}
!178 = !{!"OcclusionCache", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24}
!179 = !{!178, !41, i64 24}
!180 = !{!178, !41, i64 12}
!181 = !{!178, !41, i64 16}
!182 = !{!178, !41, i64 8}
!183 = !{!184, !41, i64 76}
!184 = !{!"OcclusionCacheSample", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 36, !37, i64 48, !45, i64 60, !45, i64 64, !41, i64 68, !41, i64 72, !41, i64 76}
!185 = !{!184, !45, i64 64}
!186 = !{!178, !41, i64 20}
!187 = distinct !{!187, !66, !67}
!188 = !{!184, !45, i64 60}
!189 = !{!184, !41, i64 68}
!190 = !{!184, !41, i64 72}
!191 = distinct !{!191, !66, !67}
!192 = !{!113, !36, i64 24}
!193 = !{!113, !36, i64 8}
!194 = !{!76, !41, i64 60}
!195 = !{!78, !41, i64 396}
!196 = !{!49, !43, i64 5382}
!197 = !{!49, !45, i64 5396}
!198 = !{!49, !45, i64 5224}
!199 = !{!49, !45, i64 5236}
!200 = !{!49, !45, i64 5228}
!201 = !{!49, !45, i64 5240}
!202 = !{!49, !45, i64 5232}
!203 = !{!49, !45, i64 5244}
!204 = !{!205, !43, i64 146}
!205 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !51, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !36, i64 152}
!206 = !{!205, !41, i64 128}
!207 = !{!205, !41, i64 132}
!208 = !{!205, !41, i64 112}
!209 = !{!205, !41, i64 120}
!210 = !{!49, !43, i64 98}
!211 = !{!205, !36, i64 72}
!212 = !{!213, !36, i64 0}
!213 = !{!"PixStr", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !43, i64 24, !43, i64 26}
!214 = !{!213, !43, i64 24}
!215 = !{!205, !36, i64 40}
!216 = !{!205, !36, i64 48}
!217 = !{!205, !36, i64 56}
!218 = !{!205, !41, i64 124}
!219 = !{!205, !41, i64 116}
!220 = !{!135, !135, i64 0}
!221 = !{!213, !41, i64 8}
!222 = !{!213, !41, i64 12}
!223 = !{!213, !41, i64 16}
!224 = distinct !{!224, !66, !67}
!225 = distinct !{!225, !66, !67}
!226 = !{!69, !43, i64 216}
!227 = !{!228, !45, i64 56}
!228 = !{!"OccNode", !37, i64 0, !45, i64 12, !37, i64 16, !45, i64 52, !45, i64 56, !37, i64 60, !41, i64 72, !37, i64 80}
!229 = !{!228, !41, i64 72}
!230 = distinct !{!230, !66, !67}
!231 = distinct !{!231, !66, !67}
!232 = !{!233, !36, i64 0}
!233 = !{!"OcclusionBuildThread", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 24}
!234 = !{!233, !36, i64 24}
!235 = !{!233, !41, i64 8}
!236 = !{!233, !41, i64 12}
!237 = !{!233, !41, i64 16}
!238 = distinct !{!238, !66, !67}
!239 = !{!228, !45, i64 52}
!240 = !{!228, !45, i64 12}
!241 = distinct !{!241, !66, !67}
!242 = distinct !{!242, !66, !67}
!243 = distinct !{!243, !66, !67}
!244 = distinct !{!244, !66, !67}
!245 = distinct !{!245, !66, !67}
!246 = distinct !{!246, !66, !67}
!247 = distinct !{!247, !66, !67}
!248 = distinct !{!248, !66, !67}
!249 = distinct !{!249, !66, !67}
!250 = distinct !{!250, !66, !67}
!251 = distinct !{!251, !66, !67}
