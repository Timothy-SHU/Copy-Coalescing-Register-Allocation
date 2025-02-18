; ModuleID = 'blender/source/blender/render/intern/source/strand.c'
source_filename = "blender/source/blender/render/intern/source/strand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StrandSegment = type { [4 x ptr], ptr, ptr, ptr, float, %struct.StrandPoint, %struct.StrandPoint, i32 }
%struct.StrandPoint = type { float, [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], i32, i32, [4 x float], float, float, float }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.StrandVert = type { [3 x float], float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.StrandShadeCache = type { ptr, ptr, ptr }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.GHashPair = type { ptr, ptr }
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
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandCacheEntry = type { %struct.GHashPair, %struct.ShadeResult }
%struct.StrandPart = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, [3 x float], [3 x float], ptr }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.StrandBound = type { i32, i32, [2 x [3 x float]] }
%struct.StrandSortSegment = type { ptr, i32, i32, i32, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.StrandSurface = type { ptr, ptr, %struct.ObjectRen, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.APixstrand = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x float], [4 x float], ptr }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.APixstrMain = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"StrandShadeCache\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"strand_shade_cache_create1 gh\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"strand_shade_cache_create2 gh\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"strand shade cache arena\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"strand sort arena\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"StrandSortSegment\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"totapixbuf\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"StrandSurface\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"StrandSurfFaces\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"StrandSurfAO\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"StrandSurfEnv\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"StrandSurfIndirect\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"StrandSurfCo\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"StrandCacheEntry\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"addpsmainA\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"pixstr\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @strand_eval_point(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [3 x float]], align 16
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load float, ptr %1, align 4, !tbaa !44
  %10 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = load float, ptr %15, align 4, !tbaa !47
  store float %16, ptr %3, align 16, !tbaa !47
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds float, ptr %3, i64 1
  store float %18, ptr %19, align 4, !tbaa !47
  %20 = getelementptr inbounds float, ptr %15, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = getelementptr inbounds float, ptr %3, i64 2
  store float %21, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1
  %24 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load float, ptr %25, align 4, !tbaa !47
  store float %26, ptr %23, align 4, !tbaa !47
  %27 = getelementptr inbounds float, ptr %25, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !47
  %29 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1, i64 1
  store float %28, ptr %29, align 16, !tbaa !47
  %30 = getelementptr inbounds float, ptr %25, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  store float %31, ptr %32, align 4, !tbaa !47
  %33 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2
  %34 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = load float, ptr %35, align 4, !tbaa !47
  store float %36, ptr %33, align 8, !tbaa !47
  %37 = getelementptr inbounds float, ptr %35, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !47
  %39 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  store float %38, ptr %39, align 4, !tbaa !47
  %40 = getelementptr inbounds float, ptr %35, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !47
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %41, ptr %42, align 16, !tbaa !47
  %43 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3
  %44 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 3
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load float, ptr %45, align 4, !tbaa !47
  store float %46, ptr %43, align 4, !tbaa !47
  %47 = getelementptr inbounds float, ptr %45, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !47
  %49 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3, i64 1
  store float %48, ptr %49, align 8, !tbaa !47
  %50 = getelementptr inbounds float, ptr %45, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !47
  %52 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3, i64 2
  store float %51, ptr %52, align 4, !tbaa !47
  %53 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %54, i64 0, i32 11
  %56 = load i16, ptr %55, align 8, !tbaa !49
  %57 = and i16 %56, 3
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %54, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %60, ptr noundef nonnull %3) #9
  %61 = load ptr, ptr %53, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %61, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %62, ptr noundef nonnull %23) #9
  %63 = load ptr, ptr %53, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %63, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %33) #9
  %65 = load ptr, ptr %53, align 8, !tbaa !48
  %66 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %65, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %66, ptr noundef nonnull %43) #9
  br label %67

67:                                               ; preds = %59, %2
  %68 = fcmp oeq float %9, 0.000000e+00
  br i1 %68, label %69, label %91

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  %71 = load float, ptr %23, align 4, !tbaa !47
  store float %71, ptr %70, align 4, !tbaa !47
  %72 = load float, ptr %29, align 16, !tbaa !47
  %73 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 1
  store float %72, ptr %73, align 4, !tbaa !47
  %74 = load float, ptr %32, align 4, !tbaa !47
  %75 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  store float %74, ptr %75, align 4, !tbaa !47
  %76 = load ptr, ptr %24, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.StrandVert, ptr %76, i64 0, i32 1
  %78 = load float, ptr %77, align 4, !tbaa !52
  %79 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %78, ptr %79, align 4, !tbaa !54
  %80 = load ptr, ptr %34, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.StrandVert, ptr %80, i64 0, i32 1
  %82 = load float, ptr %81, align 4, !tbaa !52
  %83 = load ptr, ptr %0, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.StrandVert, ptr %83, i64 0, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !52
  %86 = fsub float %82, %85
  %87 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 8
  store float %86, ptr %87, align 4, !tbaa !55
  %88 = icmp eq ptr %83, %76
  br i1 %88, label %160, label %89

89:                                               ; preds = %69
  %90 = fmul float %86, 5.000000e-01
  store float %90, ptr %87, align 4, !tbaa !55
  br label %160

91:                                               ; preds = %67
  %92 = fcmp oeq float %9, 1.000000e+00
  br i1 %92, label %93, label %115

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  %95 = load float, ptr %33, align 8, !tbaa !47
  store float %95, ptr %94, align 4, !tbaa !47
  %96 = load float, ptr %39, align 4, !tbaa !47
  %97 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 1
  store float %96, ptr %97, align 4, !tbaa !47
  %98 = load float, ptr %42, align 16, !tbaa !47
  %99 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  store float %98, ptr %99, align 4, !tbaa !47
  %100 = load ptr, ptr %34, align 8, !tbaa !46
  %101 = getelementptr inbounds %struct.StrandVert, ptr %100, i64 0, i32 1
  %102 = load float, ptr %101, align 4, !tbaa !52
  %103 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %102, ptr %103, align 4, !tbaa !54
  %104 = load ptr, ptr %44, align 8, !tbaa !46
  %105 = getelementptr inbounds %struct.StrandVert, ptr %104, i64 0, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !52
  %107 = load ptr, ptr %24, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.StrandVert, ptr %107, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !52
  %110 = fsub float %106, %109
  %111 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 8
  store float %110, ptr %111, align 4, !tbaa !55
  %112 = icmp eq ptr %104, %100
  br i1 %112, label %160, label %113

113:                                              ; preds = %93
  %114 = fmul float %110, 5.000000e-01
  store float %114, ptr %111, align 4, !tbaa !55
  br label %160

115:                                              ; preds = %91
  call void @key_curve_position_weights(float noundef %9, ptr noundef nonnull %4, i32 noundef %14) #9
  %116 = load float, ptr %4, align 16, !tbaa !47
  %117 = load float, ptr %3, align 16, !tbaa !47
  %118 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !47
  %120 = load float, ptr %23, align 4, !tbaa !47
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %116, float %117, float %121)
  %123 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %124 = load float, ptr %123, align 8, !tbaa !47
  %125 = load float, ptr %33, align 8, !tbaa !47
  %126 = call float @llvm.fmuladd.f32(float %124, float %125, float %122)
  %127 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %128 = load float, ptr %127, align 4, !tbaa !47
  %129 = load float, ptr %43, align 4, !tbaa !47
  %130 = call float @llvm.fmuladd.f32(float %128, float %129, float %126)
  %131 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  store float %130, ptr %131, align 4, !tbaa !47
  %132 = load float, ptr %19, align 4, !tbaa !47
  %133 = load float, ptr %29, align 16, !tbaa !47
  %134 = fmul float %119, %133
  %135 = call float @llvm.fmuladd.f32(float %116, float %132, float %134)
  %136 = load float, ptr %39, align 4, !tbaa !47
  %137 = call float @llvm.fmuladd.f32(float %124, float %136, float %135)
  %138 = load float, ptr %49, align 8, !tbaa !47
  %139 = call float @llvm.fmuladd.f32(float %128, float %138, float %137)
  %140 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 1
  store float %139, ptr %140, align 4, !tbaa !47
  %141 = load float, ptr %22, align 8, !tbaa !47
  %142 = load float, ptr %32, align 4, !tbaa !47
  %143 = fmul float %119, %142
  %144 = call float @llvm.fmuladd.f32(float %116, float %141, float %143)
  %145 = load float, ptr %42, align 16, !tbaa !47
  %146 = call float @llvm.fmuladd.f32(float %124, float %145, float %144)
  %147 = load float, ptr %52, align 4, !tbaa !47
  %148 = call float @llvm.fmuladd.f32(float %128, float %147, float %146)
  %149 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  store float %148, ptr %149, align 4, !tbaa !47
  %150 = fsub float 1.000000e+00, %9
  %151 = load ptr, ptr %24, align 8, !tbaa !46
  %152 = getelementptr inbounds %struct.StrandVert, ptr %151, i64 0, i32 1
  %153 = load float, ptr %152, align 4, !tbaa !52
  %154 = load ptr, ptr %34, align 8, !tbaa !46
  %155 = getelementptr inbounds %struct.StrandVert, ptr %154, i64 0, i32 1
  %156 = load float, ptr %155, align 4, !tbaa !52
  %157 = fmul float %9, %156
  %158 = call float @llvm.fmuladd.f32(float %150, float %153, float %157)
  %159 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %158, ptr %159, align 4, !tbaa !54
  br label %160

160:                                              ; preds = %115, %113, %93, %69, %89
  call void @key_curve_tangent_weights(float noundef %9, ptr noundef nonnull %4, i32 noundef %14) #9
  %161 = load float, ptr %4, align 16, !tbaa !47
  %162 = load float, ptr %3, align 16, !tbaa !47
  %163 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !47
  %165 = load float, ptr %23, align 4, !tbaa !47
  %166 = fmul float %164, %165
  %167 = call float @llvm.fmuladd.f32(float %161, float %162, float %166)
  %168 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %169 = load float, ptr %168, align 8, !tbaa !47
  %170 = load float, ptr %33, align 8, !tbaa !47
  %171 = call float @llvm.fmuladd.f32(float %169, float %170, float %167)
  %172 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %173 = load float, ptr %172, align 4, !tbaa !47
  %174 = load float, ptr %43, align 4, !tbaa !47
  %175 = call float @llvm.fmuladd.f32(float %173, float %174, float %171)
  %176 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 6
  store float %175, ptr %176, align 4, !tbaa !47
  %177 = load float, ptr %19, align 4, !tbaa !47
  %178 = load float, ptr %29, align 16, !tbaa !47
  %179 = fmul float %164, %178
  %180 = call float @llvm.fmuladd.f32(float %161, float %177, float %179)
  %181 = load float, ptr %39, align 4, !tbaa !47
  %182 = call float @llvm.fmuladd.f32(float %169, float %181, float %180)
  %183 = load float, ptr %49, align 8, !tbaa !47
  %184 = call float @llvm.fmuladd.f32(float %173, float %183, float %182)
  %185 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 6, i64 1
  store float %184, ptr %185, align 4, !tbaa !47
  %186 = load float, ptr %22, align 8, !tbaa !47
  %187 = load float, ptr %32, align 4, !tbaa !47
  %188 = fmul float %164, %187
  %189 = call float @llvm.fmuladd.f32(float %161, float %186, float %188)
  %190 = load float, ptr %42, align 16, !tbaa !47
  %191 = call float @llvm.fmuladd.f32(float %169, float %190, float %189)
  %192 = load float, ptr %52, align 4, !tbaa !47
  %193 = call float @llvm.fmuladd.f32(float %173, float %192, float %191)
  %194 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 6, i64 2
  store float %193, ptr %194, align 4, !tbaa !47
  %195 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3
  %196 = fmul float %184, %184
  %197 = call float @llvm.fmuladd.f32(float %175, float %175, float %196)
  %198 = call float @llvm.fmuladd.f32(float %193, float %193, float %197)
  %199 = fcmp ogt float %198, 0x38AA95A5C0000000
  br i1 %199, label %200, label %210

200:                                              ; preds = %160
  %201 = call float @sqrtf(float noundef %198) #9
  %202 = fdiv float 1.000000e+00, %201
  %203 = load float, ptr %176, align 4, !tbaa !47
  %204 = fmul float %203, %202
  store float %204, ptr %195, align 4, !tbaa !47
  %205 = load float, ptr %185, align 4, !tbaa !47
  %206 = fmul float %202, %205
  %207 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3, i64 1
  store float %206, ptr %207, align 4, !tbaa !47
  %208 = load float, ptr %194, align 4, !tbaa !47
  %209 = fmul float %202, %208
  br label %212

210:                                              ; preds = %160
  store float 0.000000e+00, ptr %195, align 4, !tbaa !47
  %211 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %211, align 4, !tbaa !47
  br label %212

212:                                              ; preds = %200, %210
  %213 = phi float [ %209, %200 ], [ 0.000000e+00, %210 ]
  %214 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3, i64 2
  store float %213, ptr %214, align 4, !tbaa !47
  %215 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2
  %216 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  %217 = load float, ptr %216, align 4, !tbaa !47
  %218 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !47
  %220 = fmul float %219, %219
  %221 = call float @llvm.fmuladd.f32(float %217, float %217, float %220)
  %222 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !47
  %224 = call float @llvm.fmuladd.f32(float %223, float %223, float %221)
  %225 = fcmp ogt float %224, 0x38AA95A5C0000000
  br i1 %225, label %226, label %236

226:                                              ; preds = %212
  %227 = call float @sqrtf(float noundef %224) #9
  %228 = fdiv float 1.000000e+00, %227
  %229 = load float, ptr %216, align 4, !tbaa !47
  %230 = fmul float %229, %228
  store float %230, ptr %215, align 4, !tbaa !47
  %231 = load float, ptr %218, align 4, !tbaa !47
  %232 = fmul float %228, %231
  %233 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2, i64 1
  store float %232, ptr %233, align 4, !tbaa !47
  %234 = load float, ptr %222, align 4, !tbaa !47
  %235 = fmul float %228, %234
  br label %238

236:                                              ; preds = %212
  store float 0.000000e+00, ptr %215, align 4, !tbaa !47
  %237 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %237, align 4, !tbaa !47
  br label %238

238:                                              ; preds = %226, %236
  %239 = phi float [ %235, %226 ], [ 0.000000e+00, %236 ]
  %240 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2, i64 2
  store float %239, ptr %240, align 4, !tbaa !47
  %241 = load float, ptr %215, align 4, !tbaa !47
  %242 = fneg float %241
  store float %242, ptr %215, align 4, !tbaa !47
  %243 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !47
  %245 = fneg float %244
  store float %245, ptr %243, align 4, !tbaa !47
  %246 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !47
  %248 = fneg float %247
  store float %248, ptr %246, align 4, !tbaa !47
  %249 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  %250 = load float, ptr %249, align 4, !tbaa !54
  %251 = fadd float %250, 1.000000e+00
  %252 = fmul float %251, 5.000000e-01
  %253 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 65
  %254 = load float, ptr %253, align 4, !tbaa !56
  %255 = fcmp une float %254, 0.000000e+00
  br i1 %255, label %256, label %266

256:                                              ; preds = %238
  %257 = fcmp olt float %254, 0.000000e+00
  %258 = fpext float %252 to double
  %259 = fadd float %254, 1.000000e+00
  %260 = fsub float 1.000000e+00, %254
  %261 = fdiv float 1.000000e+00, %260
  %262 = select i1 %257, float %259, float %261
  %263 = fpext float %262 to double
  %264 = call double @pow(double noundef %258, double noundef %263) #9
  %265 = fptrunc double %264 to float
  br label %266

266:                                              ; preds = %256, %238
  %267 = phi float [ %252, %238 ], [ %265, %256 ]
  %268 = fsub float 1.000000e+00, %267
  %269 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 63
  %270 = load float, ptr %269, align 4, !tbaa !62
  %271 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 64
  %272 = load float, ptr %271, align 8, !tbaa !63
  %273 = fmul float %267, %272
  %274 = call float @llvm.fmuladd.f32(float %268, float %270, float %273)
  %275 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 5
  store float %274, ptr %275, align 4, !tbaa !64
  %276 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 6
  %277 = load ptr, ptr %276, align 8, !tbaa !65
  %278 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !66
  %280 = call ptr @RE_strandren_get_simplify(ptr noundef %277, ptr noundef %279, i32 noundef 0) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %266
  %283 = getelementptr inbounds float, ptr %280, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !47
  br label %285

285:                                              ; preds = %266, %282
  %286 = phi float [ %284, %282 ], [ 1.000000e+00, %266 ]
  %287 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 20
  store float %286, ptr %287, align 4, !tbaa !67
  %288 = load float, ptr %218, align 4, !tbaa !47
  %289 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !47
  %291 = load float, ptr %222, align 4, !tbaa !47
  %292 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !47
  %294 = fneg float %291
  %295 = fmul float %293, %294
  %296 = call float @llvm.fmuladd.f32(float %288, float %290, float %295)
  %297 = load float, ptr %195, align 4, !tbaa !47
  %298 = load float, ptr %216, align 4, !tbaa !47
  %299 = fneg float %298
  %300 = fmul float %290, %299
  %301 = call float @llvm.fmuladd.f32(float %291, float %297, float %300)
  %302 = fneg float %288
  %303 = fmul float %297, %302
  %304 = call float @llvm.fmuladd.f32(float %298, float %293, float %303)
  %305 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 17
  %306 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 17, i64 2, i64 3
  %307 = load float, ptr %306, align 4, !tbaa !47
  %308 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 17, i64 3, i64 3
  %309 = load float, ptr %308, align 4, !tbaa !47
  %310 = call float @llvm.fmuladd.f32(float %291, float %307, float %309)
  %311 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 18
  %312 = load i32, ptr %311, align 8, !tbaa !68
  %313 = sitofp i32 %312 to float
  %314 = fmul float %296, %313
  %315 = load float, ptr %305, align 8, !tbaa !47
  %316 = fmul float %315, %314
  %317 = fdiv float %316, %310
  %318 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 19
  %319 = load i32, ptr %318, align 4, !tbaa !69
  %320 = sitofp i32 %319 to float
  %321 = fmul float %301, %320
  %322 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 17, i64 1, i64 1
  %323 = load float, ptr %322, align 4, !tbaa !47
  %324 = fmul float %323, %321
  %325 = fdiv float %324, %310
  %326 = fmul float %325, %325
  %327 = call float @llvm.fmuladd.f32(float %317, float %317, float %326)
  %328 = call float @sqrtf(float noundef %327) #9
  %329 = fcmp ogt float %328, 0.000000e+00
  br i1 %329, label %330, label %367

330:                                              ; preds = %285
  %331 = load i32, ptr %10, align 8, !tbaa !45
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %361, label %334

334:                                              ; preds = %330
  %335 = fmul float %301, %301
  %336 = call float @llvm.fmuladd.f32(float %296, float %296, float %335)
  %337 = call float @llvm.fmuladd.f32(float %304, float %304, float %336)
  %338 = call float @sqrtf(float noundef %337) #9
  %339 = fmul float %338, 2.000000e+00
  %340 = getelementptr inbounds %struct.StrandBuffer, ptr %6, i64 0, i32 14
  %341 = load float, ptr %340, align 4, !tbaa !70
  %342 = fmul float %339, %341
  %343 = fdiv float %342, %328
  %344 = load float, ptr %275, align 4, !tbaa !64
  %345 = fcmp olt float %344, %343
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = fdiv float %344, %343
  store float %347, ptr %287, align 4, !tbaa !67
  store float %343, ptr %275, align 4, !tbaa !64
  br label %348

348:                                              ; preds = %346, %334
  br i1 %281, label %354, label %349

349:                                              ; preds = %348
  %350 = load float, ptr %280, align 4, !tbaa !47
  %351 = fmul float %350, %350
  %352 = load float, ptr %275, align 4, !tbaa !64
  %353 = fmul float %352, %351
  store float %353, ptr %275, align 4, !tbaa !64
  br label %354

354:                                              ; preds = %349, %348
  %355 = load float, ptr %275, align 4, !tbaa !64
  %356 = fmul float %355, 5.000000e-01
  %357 = fdiv float %356, %338
  %358 = fmul float %296, %357
  %359 = fmul float %301, %357
  %360 = fmul float %304, %357
  br label %367

361:                                              ; preds = %330
  %362 = load float, ptr %275, align 4, !tbaa !64
  %363 = fdiv float %362, %328
  %364 = fmul float %296, %363
  %365 = fmul float %301, %363
  %366 = fmul float %304, %363
  br label %367

367:                                              ; preds = %354, %361, %285
  %368 = phi float [ %366, %361 ], [ %360, %354 ], [ %304, %285 ]
  %369 = phi float [ %365, %361 ], [ %359, %354 ], [ %301, %285 ]
  %370 = phi float [ %364, %361 ], [ %358, %354 ], [ %296, %285 ]
  %371 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 9
  %372 = load float, ptr %216, align 4, !tbaa !47
  %373 = fsub float %372, %370
  store float %373, ptr %371, align 4, !tbaa !47
  %374 = load float, ptr %218, align 4, !tbaa !47
  %375 = fsub float %374, %369
  %376 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 9, i64 1
  store float %375, ptr %376, align 4, !tbaa !47
  %377 = load float, ptr %222, align 4, !tbaa !47
  %378 = fsub float %377, %368
  %379 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 9, i64 2
  store float %378, ptr %379, align 4, !tbaa !47
  %380 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 10
  %381 = fadd float %370, %372
  store float %381, ptr %380, align 4, !tbaa !47
  %382 = fadd float %369, %374
  %383 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 10, i64 1
  store float %382, ptr %383, align 4, !tbaa !47
  %384 = fadd float %368, %377
  %385 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 10, i64 2
  store float %384, ptr %385, align 4, !tbaa !47
  %386 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 7
  store float %370, ptr %386, align 4, !tbaa !47
  %387 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 7, i64 1
  store float %369, ptr %387, align 4, !tbaa !47
  %388 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 7, i64 2
  store float %368, ptr %388, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @key_curve_tangent_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RE_strandren_get_simplify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @strand_shade_cache_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str) #9
  %3 = tail call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.1) #9
  store ptr %3, ptr %2, align 8, !tbaa !71
  %4 = tail call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.2) #9
  %5 = getelementptr inbounds %struct.StrandShadeCache, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !73
  %6 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.3) #9
  %7 = getelementptr inbounds %struct.StrandShadeCache, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !74
  ret ptr %2
}

declare ptr @BLI_ghash_pair_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @strand_shade_cache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #9
  %4 = load ptr, ptr %0, align 8, !tbaa !71
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef %4, ptr noundef %5, ptr noundef null) #9
  %6 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  tail call void @BLI_memarena_free(ptr noundef %7) #9
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %0) #9
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @strand_shade_segment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call fastcc void @strand_shade_get(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %9)
  %10 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa.struct !75
  %12 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa.struct !77
  %14 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 2
  %15 = load float, ptr %14, align 8, !tbaa.struct !78
  %16 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa.struct !79
  %18 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa.struct !80
  %20 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 1
  %21 = load float, ptr %20, align 4, !tbaa.struct !81
  %22 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 2
  %23 = load float, ptr %22, align 8, !tbaa.struct !82
  %24 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa.struct !83
  %26 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa.struct !84
  %28 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 4
  %29 = load float, ptr %28, align 8, !tbaa.struct !85
  %30 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 5
  %31 = load float, ptr %30, align 4, !tbaa.struct !86
  %32 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 5, i64 1
  %33 = load float, ptr %32, align 8, !tbaa.struct !87
  %34 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 5, i64 2
  %35 = load float, ptr %34, align 4, !tbaa.struct !88
  %36 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 6
  %37 = load float, ptr %36, align 8, !tbaa.struct !89
  %38 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 6, i64 1
  %39 = load float, ptr %38, align 4, !tbaa.struct !90
  %40 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 6, i64 2
  %41 = load float, ptr %40, align 8, !tbaa.struct !91
  %42 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 7
  %43 = load float, ptr %42, align 4, !tbaa.struct !92
  %44 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 7, i64 1
  %45 = load float, ptr %44, align 8, !tbaa.struct !93
  %46 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 7, i64 2
  %47 = load float, ptr %46, align 4, !tbaa.struct !94
  %48 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 8
  %49 = load float, ptr %48, align 8, !tbaa.struct !95
  %50 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 8, i64 1
  %51 = load float, ptr %50, align 4, !tbaa.struct !96
  %52 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 8, i64 2
  %53 = load float, ptr %52, align 8, !tbaa.struct !97
  %54 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 9
  %55 = load float, ptr %54, align 4, !tbaa.struct !98
  %56 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 9, i64 1
  %57 = load float, ptr %56, align 8, !tbaa.struct !99
  %58 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 9, i64 2
  %59 = load float, ptr %58, align 4, !tbaa.struct !100
  %60 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 10
  %61 = load float, ptr %60, align 4, !tbaa.struct !101
  %62 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 10, i64 1
  %63 = load float, ptr %62, align 8, !tbaa.struct !102
  %64 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 10, i64 2
  %65 = load float, ptr %64, align 4, !tbaa.struct !103
  %66 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 11
  %67 = load float, ptr %66, align 8, !tbaa.struct !104
  %68 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 11, i64 1
  %69 = load float, ptr %68, align 4, !tbaa.struct !105
  %70 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 11, i64 2
  %71 = load float, ptr %70, align 8, !tbaa.struct !106
  %72 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 12
  %73 = load float, ptr %72, align 4, !tbaa.struct !107
  %74 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 12, i64 1
  %75 = load float, ptr %74, align 8, !tbaa.struct !108
  %76 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 12, i64 2
  %77 = load float, ptr %76, align 4, !tbaa.struct !109
  %78 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 13
  %79 = load float, ptr %78, align 8, !tbaa.struct !110
  %80 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 13, i64 1
  %81 = load float, ptr %80, align 4, !tbaa.struct !111
  %82 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 13, i64 2
  %83 = load float, ptr %82, align 8, !tbaa.struct !112
  %84 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 14
  %85 = load float, ptr %84, align 4, !tbaa.struct !113
  %86 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 14, i64 1
  %87 = load float, ptr %86, align 8, !tbaa.struct !114
  %88 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 14, i64 2
  %89 = load float, ptr %88, align 4, !tbaa.struct !115
  %90 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 15
  %91 = load float, ptr %90, align 8, !tbaa.struct !116
  %92 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 15, i64 1
  %93 = load float, ptr %92, align 4, !tbaa.struct !117
  %94 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 15, i64 2
  %95 = load float, ptr %94, align 8, !tbaa.struct !118
  %96 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 16
  %97 = load float, ptr %96, align 4, !tbaa.struct !119
  %98 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 16, i64 1
  %99 = load float, ptr %98, align 8, !tbaa.struct !120
  %100 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 16, i64 2
  %101 = load float, ptr %100, align 4, !tbaa.struct !121
  %102 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 16, i64 3
  %103 = load float, ptr %102, align 8, !tbaa.struct !122
  %104 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  tail call fastcc void @strand_shade_get(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %105)
  %106 = load float, ptr %10, align 8, !tbaa.struct !75
  %107 = load float, ptr %12, align 4, !tbaa.struct !77
  %108 = load float, ptr %14, align 8, !tbaa.struct !78
  %109 = load float, ptr %16, align 4, !tbaa.struct !79
  %110 = load float, ptr %18, align 8, !tbaa.struct !80
  %111 = load float, ptr %20, align 4, !tbaa.struct !81
  %112 = load float, ptr %22, align 8, !tbaa.struct !82
  %113 = load float, ptr %24, align 4, !tbaa.struct !83
  %114 = load float, ptr %26, align 4, !tbaa.struct !84
  %115 = load float, ptr %28, align 8, !tbaa.struct !85
  %116 = load float, ptr %30, align 4, !tbaa.struct !86
  %117 = load float, ptr %32, align 8, !tbaa.struct !87
  %118 = load float, ptr %34, align 4, !tbaa.struct !88
  %119 = load float, ptr %36, align 8, !tbaa.struct !89
  %120 = load float, ptr %38, align 4, !tbaa.struct !90
  %121 = load float, ptr %40, align 8, !tbaa.struct !91
  %122 = load float, ptr %42, align 4, !tbaa.struct !92
  %123 = load float, ptr %44, align 8, !tbaa.struct !93
  %124 = load float, ptr %46, align 4, !tbaa.struct !94
  %125 = load float, ptr %48, align 8, !tbaa.struct !95
  %126 = load float, ptr %50, align 4, !tbaa.struct !96
  %127 = load float, ptr %52, align 8, !tbaa.struct !97
  %128 = load float, ptr %54, align 4, !tbaa.struct !98
  %129 = load float, ptr %56, align 8, !tbaa.struct !99
  %130 = load float, ptr %58, align 4, !tbaa.struct !100
  %131 = load float, ptr %60, align 4, !tbaa.struct !101
  %132 = load float, ptr %62, align 8, !tbaa.struct !102
  %133 = load float, ptr %64, align 4, !tbaa.struct !103
  %134 = load float, ptr %66, align 8, !tbaa.struct !104
  %135 = load float, ptr %68, align 4, !tbaa.struct !105
  %136 = load float, ptr %70, align 8, !tbaa.struct !106
  %137 = load float, ptr %72, align 4, !tbaa.struct !107
  %138 = load float, ptr %74, align 8, !tbaa.struct !108
  %139 = load float, ptr %76, align 4, !tbaa.struct !109
  %140 = load float, ptr %78, align 8, !tbaa.struct !110
  %141 = load float, ptr %80, align 4, !tbaa.struct !111
  %142 = load float, ptr %82, align 8, !tbaa.struct !112
  %143 = load float, ptr %84, align 4, !tbaa.struct !113
  %144 = load float, ptr %86, align 8, !tbaa.struct !114
  %145 = load float, ptr %88, align 4, !tbaa.struct !115
  %146 = load float, ptr %90, align 8, !tbaa.struct !116
  %147 = load float, ptr %92, align 4, !tbaa.struct !117
  %148 = load float, ptr %94, align 8, !tbaa.struct !118
  %149 = load float, ptr %96, align 4, !tbaa.struct !119
  %150 = load float, ptr %98, align 8, !tbaa.struct !120
  %151 = load float, ptr %100, align 4, !tbaa.struct !121
  %152 = load float, ptr %102, align 8, !tbaa.struct !122
  %153 = fsub float 1.000000e+00, %4
  %154 = fmul float %106, %4
  %155 = tail call float @llvm.fmuladd.f32(float %153, float %11, float %154)
  store float %155, ptr %10, align 4, !tbaa !47
  %156 = fmul float %107, %4
  %157 = tail call float @llvm.fmuladd.f32(float %153, float %13, float %156)
  store float %157, ptr %12, align 4, !tbaa !47
  %158 = fmul float %108, %4
  %159 = tail call float @llvm.fmuladd.f32(float %153, float %15, float %158)
  store float %159, ptr %14, align 4, !tbaa !47
  %160 = fmul float %109, %4
  %161 = tail call float @llvm.fmuladd.f32(float %153, float %17, float %160)
  store float %161, ptr %16, align 4, !tbaa !47
  %162 = and i32 %6, 512
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %7
  %165 = fmul float %149, %4
  %166 = tail call float @llvm.fmuladd.f32(float %153, float %97, float %165)
  store float %166, ptr %96, align 4, !tbaa !47
  %167 = fmul float %150, %4
  %168 = tail call float @llvm.fmuladd.f32(float %153, float %99, float %167)
  store float %168, ptr %98, align 4, !tbaa !47
  %169 = fmul float %151, %4
  %170 = tail call float @llvm.fmuladd.f32(float %153, float %101, float %169)
  store float %170, ptr %100, align 4, !tbaa !47
  %171 = fmul float %152, %4
  %172 = tail call float @llvm.fmuladd.f32(float %153, float %103, float %171)
  store float %172, ptr %102, align 4, !tbaa !47
  br label %173

173:                                              ; preds = %164, %7
  %174 = and i32 %6, -513
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %322, label %176

176:                                              ; preds = %173
  %177 = and i32 %6, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = fmul float %115, %4
  %181 = tail call float @llvm.fmuladd.f32(float %153, float %29, float %180)
  store float %181, ptr %28, align 4, !tbaa !47
  br label %182

182:                                              ; preds = %179, %176
  %183 = and i32 %6, 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %182
  %186 = fmul float %110, %4
  %187 = tail call float @llvm.fmuladd.f32(float %153, float %19, float %186)
  store float %187, ptr %18, align 4, !tbaa !47
  %188 = fmul float %111, %4
  %189 = tail call float @llvm.fmuladd.f32(float %153, float %21, float %188)
  store float %189, ptr %20, align 4, !tbaa !47
  %190 = fmul float %112, %4
  %191 = tail call float @llvm.fmuladd.f32(float %153, float %23, float %190)
  store float %191, ptr %22, align 4, !tbaa !47
  %192 = fmul float %113, %4
  %193 = tail call float @llvm.fmuladd.f32(float %153, float %25, float %192)
  store float %193, ptr %24, align 4, !tbaa !47
  br label %194

194:                                              ; preds = %185, %182
  %195 = and i32 %6, 256
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %220, label %197

197:                                              ; preds = %194
  %198 = fmul float %146, %4
  %199 = tail call float @llvm.fmuladd.f32(float %153, float %91, float %198)
  store float %199, ptr %90, align 4, !tbaa !47
  %200 = fmul float %147, %4
  %201 = tail call float @llvm.fmuladd.f32(float %153, float %93, float %200)
  store float %201, ptr %92, align 4, !tbaa !47
  %202 = fmul float %148, %4
  %203 = tail call float @llvm.fmuladd.f32(float %153, float %95, float %202)
  store float %203, ptr %94, align 4, !tbaa !47
  %204 = fmul float %201, %201
  %205 = tail call float @llvm.fmuladd.f32(float %199, float %199, float %204)
  %206 = tail call float @llvm.fmuladd.f32(float %203, float %203, float %205)
  %207 = fcmp ogt float %206, 0x38AA95A5C0000000
  br i1 %207, label %208, label %217

208:                                              ; preds = %197
  %209 = tail call float @sqrtf(float noundef %206) #9
  %210 = fdiv float 1.000000e+00, %209
  %211 = load float, ptr %90, align 4, !tbaa !47
  %212 = fmul float %211, %210
  store float %212, ptr %90, align 4, !tbaa !47
  %213 = load float, ptr %92, align 4, !tbaa !47
  %214 = fmul float %210, %213
  store float %214, ptr %92, align 4, !tbaa !47
  %215 = load float, ptr %94, align 4, !tbaa !47
  %216 = fmul float %210, %215
  br label %218

217:                                              ; preds = %197
  store float 0.000000e+00, ptr %90, align 4, !tbaa !47
  store float 0.000000e+00, ptr %92, align 4, !tbaa !47
  br label %218

218:                                              ; preds = %217, %208
  %219 = phi float [ 0.000000e+00, %217 ], [ %216, %208 ]
  store float %219, ptr %94, align 4, !tbaa !47
  br label %220

220:                                              ; preds = %218, %194
  %221 = and i32 %6, 65536
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = fmul float %116, %4
  %225 = tail call float @llvm.fmuladd.f32(float %153, float %31, float %224)
  store float %225, ptr %30, align 4, !tbaa !47
  %226 = fmul float %117, %4
  %227 = tail call float @llvm.fmuladd.f32(float %153, float %33, float %226)
  store float %227, ptr %32, align 4, !tbaa !47
  %228 = fmul float %118, %4
  %229 = tail call float @llvm.fmuladd.f32(float %153, float %35, float %228)
  store float %229, ptr %34, align 4, !tbaa !47
  br label %230

230:                                              ; preds = %223, %220
  %231 = and i32 %6, 8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = fmul float %119, %4
  %235 = tail call float @llvm.fmuladd.f32(float %153, float %37, float %234)
  store float %235, ptr %36, align 4, !tbaa !47
  %236 = fmul float %120, %4
  %237 = tail call float @llvm.fmuladd.f32(float %153, float %39, float %236)
  store float %237, ptr %38, align 4, !tbaa !47
  %238 = fmul float %121, %4
  %239 = tail call float @llvm.fmuladd.f32(float %153, float %41, float %238)
  store float %239, ptr %40, align 4, !tbaa !47
  %240 = fmul float %122, %4
  %241 = tail call float @llvm.fmuladd.f32(float %153, float %43, float %240)
  store float %241, ptr %42, align 4, !tbaa !47
  %242 = fmul float %123, %4
  %243 = tail call float @llvm.fmuladd.f32(float %153, float %45, float %242)
  store float %243, ptr %44, align 4, !tbaa !47
  %244 = fmul float %124, %4
  %245 = tail call float @llvm.fmuladd.f32(float %153, float %47, float %244)
  store float %245, ptr %46, align 4, !tbaa !47
  br label %246

246:                                              ; preds = %233, %230
  %247 = and i32 %6, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = fmul float %125, %4
  %251 = tail call float @llvm.fmuladd.f32(float %153, float %49, float %250)
  store float %251, ptr %48, align 4, !tbaa !47
  %252 = fmul float %126, %4
  %253 = tail call float @llvm.fmuladd.f32(float %153, float %51, float %252)
  store float %253, ptr %50, align 4, !tbaa !47
  %254 = fmul float %127, %4
  %255 = tail call float @llvm.fmuladd.f32(float %153, float %53, float %254)
  store float %255, ptr %52, align 4, !tbaa !47
  br label %256

256:                                              ; preds = %249, %246
  %257 = and i32 %6, 32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %256
  %260 = fmul float %128, %4
  %261 = tail call float @llvm.fmuladd.f32(float %153, float %55, float %260)
  store float %261, ptr %54, align 4, !tbaa !47
  %262 = fmul float %129, %4
  %263 = tail call float @llvm.fmuladd.f32(float %153, float %57, float %262)
  store float %263, ptr %56, align 4, !tbaa !47
  %264 = fmul float %130, %4
  %265 = tail call float @llvm.fmuladd.f32(float %153, float %59, float %264)
  store float %265, ptr %58, align 4, !tbaa !47
  br label %266

266:                                              ; preds = %259, %256
  %267 = and i32 %6, 64
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %266
  %270 = fmul float %131, %4
  %271 = tail call float @llvm.fmuladd.f32(float %153, float %61, float %270)
  store float %271, ptr %60, align 4, !tbaa !47
  %272 = fmul float %132, %4
  %273 = tail call float @llvm.fmuladd.f32(float %153, float %63, float %272)
  store float %273, ptr %62, align 4, !tbaa !47
  %274 = fmul float %133, %4
  %275 = tail call float @llvm.fmuladd.f32(float %153, float %65, float %274)
  store float %275, ptr %64, align 4, !tbaa !47
  br label %276

276:                                              ; preds = %269, %266
  %277 = and i32 %6, 131072
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %276
  %280 = fmul float %134, %4
  %281 = tail call float @llvm.fmuladd.f32(float %153, float %67, float %280)
  store float %281, ptr %66, align 4, !tbaa !47
  %282 = fmul float %135, %4
  %283 = tail call float @llvm.fmuladd.f32(float %153, float %69, float %282)
  store float %283, ptr %68, align 4, !tbaa !47
  %284 = fmul float %136, %4
  %285 = tail call float @llvm.fmuladd.f32(float %153, float %71, float %284)
  store float %285, ptr %70, align 4, !tbaa !47
  br label %286

286:                                              ; preds = %279, %276
  %287 = and i32 %6, 8192
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %286
  %290 = fmul float %137, %4
  %291 = tail call float @llvm.fmuladd.f32(float %153, float %73, float %290)
  store float %291, ptr %72, align 4, !tbaa !47
  %292 = fmul float %138, %4
  %293 = tail call float @llvm.fmuladd.f32(float %153, float %75, float %292)
  store float %293, ptr %74, align 4, !tbaa !47
  %294 = fmul float %139, %4
  %295 = tail call float @llvm.fmuladd.f32(float %153, float %77, float %294)
  store float %295, ptr %76, align 4, !tbaa !47
  br label %296

296:                                              ; preds = %289, %286
  %297 = and i32 %6, 128
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %296
  %300 = fmul float %140, %4
  %301 = tail call float @llvm.fmuladd.f32(float %153, float %79, float %300)
  store float %301, ptr %78, align 4, !tbaa !47
  %302 = fmul float %141, %4
  %303 = tail call float @llvm.fmuladd.f32(float %153, float %81, float %302)
  store float %303, ptr %80, align 4, !tbaa !47
  %304 = fmul float %142, %4
  %305 = tail call float @llvm.fmuladd.f32(float %153, float %83, float %304)
  store float %305, ptr %82, align 4, !tbaa !47
  br label %306

306:                                              ; preds = %299, %296
  %307 = and i32 %6, 1024
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %306
  %310 = fmul float %143, %4
  %311 = tail call float @llvm.fmuladd.f32(float %153, float %85, float %310)
  store float %311, ptr %84, align 4, !tbaa !47
  %312 = fmul float %144, %4
  %313 = tail call float @llvm.fmuladd.f32(float %153, float %87, float %312)
  store float %313, ptr %86, align 4, !tbaa !47
  %314 = fmul float %145, %4
  %315 = tail call float @llvm.fmuladd.f32(float %153, float %89, float %314)
  store float %315, ptr %88, align 4, !tbaa !47
  br label %316

316:                                              ; preds = %309, %306
  %317 = and i32 %6, 16384
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = fmul float %114, %4
  %321 = tail call float @llvm.fmuladd.f32(float %153, float %27, float %320)
  store float %321, ptr %26, align 4, !tbaa !47
  br label %322

322:                                              ; preds = %173, %316, %319
  %323 = getelementptr inbounds %struct.StrandSegment, ptr %2, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !34
  %325 = getelementptr inbounds %struct.StrandBuffer, ptr %324, i64 0, i32 15
  %326 = load float, ptr %325, align 8, !tbaa !123
  %327 = fcmp une float %326, -1.000000e+00
  br i1 %327, label %328, label %360

328:                                              ; preds = %322
  %329 = tail call float @llvm.fabs.f32(float %5)
  %330 = tail call float @powf(float noundef %329, float noundef %326) #9
  %331 = fsub float 1.000000e+00, %330
  %332 = fcmp olt float %331, 1.000000e+00
  br i1 %332, label %333, label %360

333:                                              ; preds = %328
  %334 = load float, ptr %10, align 4, !tbaa !47
  %335 = fmul float %331, %334
  store float %335, ptr %10, align 4, !tbaa !47
  %336 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !47
  %338 = fmul float %331, %337
  store float %338, ptr %336, align 4, !tbaa !47
  %339 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !47
  %341 = fmul float %331, %340
  store float %341, ptr %339, align 4, !tbaa !47
  %342 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 0, i64 3
  %343 = load float, ptr %342, align 4, !tbaa !47
  %344 = fmul float %331, %343
  store float %344, ptr %342, align 4, !tbaa !47
  %345 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1
  %346 = load float, ptr %345, align 4, !tbaa !47
  %347 = fmul float %331, %346
  store float %347, ptr %345, align 4, !tbaa !47
  %348 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 1
  %349 = load float, ptr %348, align 4, !tbaa !47
  %350 = fmul float %331, %349
  store float %350, ptr %348, align 4, !tbaa !47
  %351 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 2
  %352 = load float, ptr %351, align 4, !tbaa !47
  %353 = fmul float %331, %352
  store float %353, ptr %351, align 4, !tbaa !47
  %354 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 1, i64 3
  %355 = load float, ptr %354, align 4, !tbaa !47
  %356 = fmul float %331, %355
  store float %356, ptr %354, align 4, !tbaa !47
  %357 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3, i64 0, i32 2
  %358 = load float, ptr %357, align 4, !tbaa !124
  %359 = fmul float %331, %358
  store float %359, ptr %357, align 4, !tbaa !124
  br label %360

360:                                              ; preds = %333, %328, %322
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @strand_shade_get(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.VlakRen, align 8
  %7 = alloca %struct.StrandPoint, align 4
  %8 = alloca %struct.GHashPair, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %9 = getelementptr inbounds %struct.StrandSegment, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %8, i64 0, i32 1
  store ptr %4, ptr %11, align 8
  %12 = load ptr, ptr %1, align 8, !tbaa !71
  %13 = call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef nonnull %8) #9
  %14 = getelementptr inbounds %struct.StrandShadeCache, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = call ptr @BLI_ghash_lookup(ptr noundef %15, ptr noundef nonnull %8) #9
  %17 = icmp eq ptr %13, null
  br i1 %17, label %18, label %115

18:                                               ; preds = %5
  %19 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, %4
  %22 = select i1 %21, float 0.000000e+00, float 1.000000e+00
  store float %22, ptr %7, align 4, !tbaa !44
  call void @strand_eval_point(ptr noundef %3, ptr noundef nonnull %7)
  %23 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %25 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 7
  store i8 1, ptr %25, align 1, !tbaa !126
  %26 = getelementptr inbounds %struct.StrandSegment, ptr %3, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.StrandBuffer, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 51
  %31 = load i32, ptr %30, align 4, !tbaa !128
  %32 = and i32 %31, 16777216
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  store i8 65, ptr %25, align 1, !tbaa !126
  br label %35

35:                                               ; preds = %34, %18
  %36 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 1
  store ptr %6, ptr %36, align 8, !tbaa !129
  %37 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 8
  %38 = getelementptr inbounds %struct.StrandSegment, ptr %3, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !131
  %41 = load ptr, ptr %9, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 3
  store ptr %41, ptr %42, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !133
  %45 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 114
  %47 = load i16, ptr %46, align 2, !tbaa !135
  %48 = sext i16 %47 to i64
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 42, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !136
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !136
  %52 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 107
  store i32 %50, ptr %52, align 4, !tbaa !137
  %53 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 105
  store i32 65535, ptr %53, align 4, !tbaa !138
  %54 = getelementptr inbounds %struct.StrandRen, ptr %39, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !139
  %56 = load ptr, ptr %39, align 8, !tbaa !141
  %57 = ptrtoint ptr %4 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = lshr exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = add i32 %55, %61
  %63 = sext i16 %47 to i32
  call void @BLI_thread_srandom(i32 noundef %63, i32 noundef %62) #9
  %64 = load ptr, ptr %38, align 8, !tbaa !66
  call void @shade_input_set_strand(ptr noundef nonnull %23, ptr noundef %64, ptr noundef nonnull %7) #9
  %65 = load ptr, ptr %38, align 8, !tbaa !66
  %66 = load ptr, ptr %19, align 8, !tbaa !46
  call void @shade_input_set_strand_texco(ptr noundef nonnull %23, ptr noundef %65, ptr noundef %66, ptr noundef nonnull %7) #9
  call void @shade_input_init_material(ptr noundef nonnull %23) #9
  call void @shade_samples_do_AO(ptr noundef %2) #9
  call void @shade_input_do_shade(ptr noundef nonnull %23, ptr noundef nonnull %24) #9
  %67 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 20
  %68 = load float, ptr %67, align 4, !tbaa !67
  %69 = fcmp olt float %68, 1.000000e+00
  br i1 %69, label %70, label %97

70:                                               ; preds = %35
  %71 = load float, ptr %24, align 4, !tbaa !47
  %72 = fmul float %68, %71
  store float %72, ptr %24, align 4, !tbaa !47
  %73 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !47
  %75 = fmul float %68, %74
  store float %75, ptr %73, align 4, !tbaa !47
  %76 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 0, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !47
  %78 = fmul float %68, %77
  store float %78, ptr %76, align 4, !tbaa !47
  %79 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 0, i64 3
  %80 = load float, ptr %79, align 4, !tbaa !47
  %81 = fmul float %68, %80
  store float %81, ptr %79, align 4, !tbaa !47
  %82 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 1
  %83 = load float, ptr %82, align 4, !tbaa !47
  %84 = fmul float %68, %83
  store float %84, ptr %82, align 4, !tbaa !47
  %85 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 1, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !47
  %87 = fmul float %68, %86
  store float %87, ptr %85, align 4, !tbaa !47
  %88 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 1, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !47
  %90 = fmul float %68, %89
  store float %90, ptr %88, align 4, !tbaa !47
  %91 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 1, i64 3
  %92 = load float, ptr %91, align 4, !tbaa !47
  %93 = fmul float %68, %92
  store float %93, ptr %91, align 4, !tbaa !47
  %94 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 2
  %95 = load float, ptr %94, align 4, !tbaa !124
  %96 = fmul float %68, %95
  store float %96, ptr %94, align 4, !tbaa !124
  br label %97

97:                                               ; preds = %35, %70
  %98 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %99 = load i16, ptr %98, align 8, !tbaa !142
  %100 = and i16 %99, 8
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 2, i64 0, i32 118
  %104 = load i32, ptr %103, align 4, !tbaa !156
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3, i64 0, i32 0, i64 3
  %109 = load float, ptr %108, align 4, !tbaa !47
  call void @renderspothalo(ptr noundef nonnull %23, ptr noundef nonnull %24, float noundef %109) #9
  br label %110

110:                                              ; preds = %97, %102, %107
  store ptr null, ptr %40, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %112 = call ptr %111(i64 noundef 232, ptr noundef nonnull @.str.13) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !157
  %113 = getelementptr inbounds %struct.StrandCacheEntry, ptr %112, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %113, ptr noundef nonnull align 8 dereferenceable(212) %24, i64 212, i1 false), !tbaa.struct !75
  %114 = load ptr, ptr %1, align 8, !tbaa !71
  call void @BLI_ghash_insert(ptr noundef %114, ptr noundef %112, ptr noundef %112) #9
  br label %118

115:                                              ; preds = %5
  %116 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3
  %117 = getelementptr inbounds %struct.StrandCacheEntry, ptr %13, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %116, ptr noundef nonnull align 8 dereferenceable(212) %117, i64 212, i1 false), !tbaa.struct !75
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, ptr %16, align 4, !tbaa !136
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %16, align 4, !tbaa !136
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load ptr, ptr %1, align 8, !tbaa !71
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %125 = call zeroext i8 @BLI_ghash_remove(ptr noundef %123, ptr noundef nonnull %8, ptr noundef %124, ptr noundef null) #9
  %126 = load ptr, ptr %14, align 8, !tbaa !73
  %127 = call zeroext i8 @BLI_ghash_remove(ptr noundef %126, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #9
  br label %128

128:                                              ; preds = %122, %118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local void @strand_shade_unref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.GHashPair, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef nonnull %4) #9
  %9 = load i32, ptr %8, align 4, !tbaa !136
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !136
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8, !tbaa !71
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %15 = call zeroext i8 @BLI_ghash_remove(ptr noundef %13, ptr noundef nonnull %4, ptr noundef %14, ptr noundef null) #9
  %16 = load ptr, ptr %6, align 8, !tbaa !73
  %17 = call zeroext i8 @BLI_ghash_remove(ptr noundef %16, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #9
  br label %18

18:                                               ; preds = %12, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @render_strand_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6
  store float 0.000000e+00, ptr %9, align 4, !tbaa !44
  store float 1.000000e+00, ptr %10, align 4, !tbaa !44
  tail call void @strand_eval_point(ptr noundef %5, ptr noundef nonnull %9)
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 17
  %12 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 19
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 1
  %19 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 17
  tail call void @projectvert(ptr noundef nonnull %18, ptr noundef nonnull %11, ptr noundef nonnull %19) #9
  %20 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 17, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = fdiv float 1.000000e+00, %21
  %23 = load float, ptr %19, align 4, !tbaa !47
  %24 = fmul float %23, %22
  %25 = fmul float %24, %14
  %26 = fmul float %25, 5.000000e-01
  %27 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 18
  store float %26, ptr %27, align 4, !tbaa !158
  %28 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 17, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !47
  %30 = fmul float %22, %29
  %31 = fmul float %30, %17
  %32 = fmul float %31, 5.000000e-01
  %33 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 19
  store float %32, ptr %33, align 4, !tbaa !159
  tail call void @strand_eval_point(ptr noundef %5, ptr noundef nonnull %10)
  %34 = load i32, ptr %12, align 8, !tbaa !68
  %35 = sitofp i32 %34 to float
  %36 = load i32, ptr %15, align 4, !tbaa !69
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 1
  %39 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 17
  tail call void @projectvert(ptr noundef nonnull %38, ptr noundef nonnull %11, ptr noundef nonnull %39) #9
  %40 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 17, i64 3
  %41 = load float, ptr %40, align 4, !tbaa !47
  %42 = fdiv float 1.000000e+00, %41
  %43 = load float, ptr %39, align 4, !tbaa !47
  %44 = fmul float %43, %42
  %45 = fmul float %44, %35
  %46 = fmul float %45, 5.000000e-01
  %47 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 18
  store float %46, ptr %47, align 4, !tbaa !158
  %48 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 17, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !47
  %50 = fmul float %42, %49
  %51 = fmul float %50, %37
  %52 = fmul float %51, 5.000000e-01
  %53 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 19
  store float %52, ptr %53, align 4, !tbaa !159
  %54 = icmp eq ptr %2, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %6
  %56 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 9
  %57 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 11
  %58 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 13
  tail call void @projectvert(ptr noundef nonnull %56, ptr noundef %1, ptr noundef nonnull %57) #9
  tail call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %58, ptr noundef nonnull %57) #9
  %59 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 10
  %60 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 12
  %61 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 14
  tail call void @projectvert(ptr noundef nonnull %59, ptr noundef %1, ptr noundef nonnull %60) #9
  tail call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %61, ptr noundef nonnull %60) #9
  %62 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 9
  %63 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 11
  %64 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 13
  tail call void @projectvert(ptr noundef nonnull %62, ptr noundef %1, ptr noundef nonnull %63) #9
  tail call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %64, ptr noundef nonnull %63) #9
  %65 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 10
  %66 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 12
  %67 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 14
  tail call void @projectvert(ptr noundef nonnull %65, ptr noundef %1, ptr noundef nonnull %66) #9
  tail call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %67, ptr noundef nonnull %66) #9
  br label %68

68:                                               ; preds = %6, %55
  %69 = tail call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 0), !range !160
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call fastcc void @strand_render(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10)
  br label %72

72:                                               ; preds = %71, %68
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.StrandPoint, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %10) #9
  %11 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %13, align 4, !tbaa !161
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %90, label %16

16:                                               ; preds = %9
  %17 = load float, ptr %6, align 4, !tbaa !44
  %18 = load float, ptr %7, align 4, !tbaa !44
  %19 = fadd float %17, %18
  %20 = fmul float %19, 5.000000e-01
  store float %20, ptr %10, align 4, !tbaa !44
  call void @strand_eval_point(ptr noundef %5, ptr noundef nonnull %10)
  %21 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 17
  %22 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 18
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 19
  %26 = load i32, ptr %25, align 4, !tbaa !69
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 1
  %29 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 17
  call void @projectvert(ptr noundef nonnull %28, ptr noundef nonnull %21, ptr noundef nonnull %29) #9
  %30 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 17, i64 3
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = fdiv float 1.000000e+00, %31
  %33 = load float, ptr %29, align 4, !tbaa !47
  %34 = fmul float %33, %32
  %35 = fmul float %34, %24
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 18
  store float %36, ptr %37, align 4, !tbaa !158
  %38 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 17, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !47
  %40 = fmul float %32, %39
  %41 = fmul float %40, %27
  %42 = fmul float %41, 5.000000e-01
  %43 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 19
  store float %42, ptr %43, align 4, !tbaa !159
  %44 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 18
  %45 = load float, ptr %44, align 4, !tbaa !158
  %46 = fsub float %36, %45
  %47 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 19
  %48 = load float, ptr %47, align 4, !tbaa !159
  %49 = fsub float %42, %48
  %50 = fmul float %49, %49
  %51 = call float @llvm.fmuladd.f32(float %46, float %46, float %50)
  %52 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 18
  %53 = load float, ptr %52, align 4, !tbaa !158
  %54 = fsub float %53, %36
  %55 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 19
  %56 = load float, ptr %55, align 4, !tbaa !159
  %57 = fsub float %56, %42
  %58 = fmul float %57, %57
  %59 = call float @llvm.fmuladd.f32(float %54, float %54, float %58)
  %60 = fcmp oeq float %51, 0.000000e+00
  %61 = fcmp oeq float %59, 0.000000e+00
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %90, label %63

63:                                               ; preds = %16
  %64 = fmul float %49, %57
  %65 = call float @llvm.fmuladd.f32(float %46, float %54, float %64)
  %66 = fmul float %65, %65
  %67 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 4
  %68 = load float, ptr %67, align 8, !tbaa !162
  %69 = fmul float %51, %68
  %70 = fmul float %59, %69
  %71 = fcmp ogt float %66, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = icmp eq ptr %2, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 9
  %76 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 11
  %77 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 13
  call void @projectvert(ptr noundef nonnull %75, ptr noundef %1, ptr noundef nonnull %76) #9
  call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %77, ptr noundef nonnull %76) #9
  %78 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 10
  %79 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 12
  %80 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 14
  call void @projectvert(ptr noundef nonnull %78, ptr noundef %1, ptr noundef nonnull %79) #9
  call void @hoco_to_zco(ptr noundef %3, ptr noundef nonnull %80, ptr noundef nonnull %79) #9
  br label %81

81:                                               ; preds = %72, %74
  %82 = add nsw i32 %8, 1
  %83 = call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %10, i32 noundef %82), !range !160
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  call fastcc void @strand_render(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %10)
  br label %86

86:                                               ; preds = %85, %81
  %87 = call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %7, i32 noundef %82), !range !160
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call fastcc void @strand_render(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %7)
  br label %90

90:                                               ; preds = %86, %89, %63, %16, %9
  %91 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 0, %63 ], [ 1, %89 ], [ 1, %86 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %10) #9
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal fastcc void @strand_render(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = icmp eq ptr %3, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %8
  %17 = load float, ptr %7, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !163
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %113

21:                                               ; preds = %16
  %22 = load float, ptr %6, align 4, !tbaa !44
  %23 = fsub float %17, %22
  %24 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 14
  %25 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 13
  %26 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 13
  %27 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 14
  %28 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 14, i64 1
  %29 = getelementptr inbounds float, ptr %9, i64 1
  %30 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 14, i64 2
  %31 = getelementptr inbounds float, ptr %9, i64 2
  %32 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 13, i64 1
  %33 = getelementptr inbounds float, ptr %10, i64 1
  %34 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 13, i64 2
  %35 = getelementptr inbounds float, ptr %10, i64 2
  %36 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 13, i64 1
  %37 = getelementptr inbounds float, ptr %11, i64 1
  %38 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 13, i64 2
  %39 = getelementptr inbounds float, ptr %11, i64 2
  %40 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 14, i64 1
  %41 = getelementptr inbounds float, ptr %12, i64 1
  %42 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 14, i64 2
  %43 = getelementptr inbounds float, ptr %12, i64 2
  %44 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 11
  %45 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 9
  %46 = fsub float %17, %23
  %47 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 14
  %48 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 15
  %49 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 14, i64 1
  %50 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 15, i64 1
  %51 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 14, i64 2
  %52 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 15, i64 2
  br label %53

53:                                               ; preds = %21, %82
  %54 = phi i64 [ 0, %21 ], [ %84, %82 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %55 = load float, ptr %24, align 4, !tbaa !47
  store float %55, ptr %9, align 4, !tbaa !47
  %56 = load float, ptr %28, align 4, !tbaa !47
  store float %56, ptr %29, align 4, !tbaa !47
  %57 = load float, ptr %30, align 4, !tbaa !47
  store float %57, ptr %31, align 4, !tbaa !47
  %58 = load float, ptr %25, align 4, !tbaa !47
  store float %58, ptr %10, align 4, !tbaa !47
  %59 = load float, ptr %32, align 4, !tbaa !47
  store float %59, ptr %33, align 4, !tbaa !47
  %60 = load float, ptr %34, align 4, !tbaa !47
  store float %60, ptr %35, align 4, !tbaa !47
  %61 = load float, ptr %26, align 4, !tbaa !47
  store float %61, ptr %11, align 4, !tbaa !47
  %62 = load float, ptr %36, align 4, !tbaa !47
  store float %62, ptr %37, align 4, !tbaa !47
  %63 = load float, ptr %38, align 4, !tbaa !47
  store float %63, ptr %39, align 4, !tbaa !47
  %64 = load float, ptr %27, align 4, !tbaa !47
  store float %64, ptr %12, align 4, !tbaa !47
  %65 = load float, ptr %40, align 4, !tbaa !47
  store float %65, ptr %41, align 4, !tbaa !47
  %66 = load float, ptr %42, align 4, !tbaa !47
  store float %66, ptr %43, align 4, !tbaa !47
  %67 = load ptr, ptr %44, align 8, !tbaa !165
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %53
  %70 = getelementptr inbounds [2 x float], ptr %67, i64 %54
  %71 = load float, ptr %70, align 4, !tbaa !47
  %72 = getelementptr inbounds [2 x float], ptr %67, i64 %54, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !47
  %74 = fsub float %55, %71
  store float %74, ptr %9, align 4, !tbaa !47
  %75 = fsub float %56, %73
  store float %75, ptr %29, align 4, !tbaa !47
  %76 = fsub float %58, %71
  store float %76, ptr %10, align 4, !tbaa !47
  %77 = fsub float %59, %73
  store float %77, ptr %33, align 4, !tbaa !47
  %78 = fsub float %61, %71
  store float %78, ptr %11, align 4, !tbaa !47
  %79 = fsub float %62, %73
  store float %79, ptr %37, align 4, !tbaa !47
  %80 = fsub float %64, %71
  store float %80, ptr %12, align 4, !tbaa !47
  %81 = fsub float %65, %73
  store float %81, ptr %41, align 4, !tbaa !47
  br label %82

82:                                               ; preds = %53, %69
  %83 = trunc i64 %54 to i32
  store i32 %83, ptr %45, align 8, !tbaa !166
  store float %46, ptr %47, align 8, !tbaa !47
  store float -1.000000e+00, ptr %48, align 4, !tbaa !47
  store float %46, ptr %49, align 4, !tbaa !47
  store float 1.000000e+00, ptr %50, align 4, !tbaa !47
  store float %17, ptr %51, align 8, !tbaa !47
  store float 1.000000e+00, ptr %52, align 4, !tbaa !47
  call void @zspan_scanconvert_strand(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull @do_strand_fillac) #9
  store float %46, ptr %47, align 8, !tbaa !47
  store float -1.000000e+00, ptr %48, align 4, !tbaa !47
  store float %17, ptr %49, align 4, !tbaa !47
  store float 1.000000e+00, ptr %50, align 4, !tbaa !47
  store float %17, ptr %51, align 8, !tbaa !47
  store float -1.000000e+00, ptr %52, align 4, !tbaa !47
  call void @zspan_scanconvert_strand(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull @do_strand_fillac) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  %84 = add nuw nsw i64 %54, 1
  %85 = load i32, ptr %18, align 8, !tbaa !163
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %53, label %113, !llvm.loop !167

88:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9
  %89 = getelementptr inbounds %struct.StrandSegment, ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %92 = load ptr, ptr %91, align 8, !tbaa !170
  %93 = ptrtoint ptr %90 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 288
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.StrandSegment, ptr %1, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !66
  %100 = getelementptr inbounds %struct.StrandRen, ptr %99, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !139
  %102 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 1
  call void @projectvert(ptr noundef nonnull %102, ptr noundef %2, ptr noundef nonnull %13) #9
  %103 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 1
  call void @projectvert(ptr noundef nonnull %103, ptr noundef %2, ptr noundef nonnull %14) #9
  %104 = icmp sgt i32 %5, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %88
  %106 = zext nneg i32 %5 to i64
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %110, %107 ]
  %109 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 %108
  call void @zbufsinglewire(ptr noundef %109, i32 noundef %97, i32 noundef %101, ptr noundef nonnull %13, ptr noundef nonnull %14) #9
  %110 = add nuw nsw i64 %108, 1
  %111 = icmp eq i64 %110, %106
  br i1 %111, label %112, label %107, !llvm.loop !171

112:                                              ; preds = %107, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  br label %113

113:                                              ; preds = %82, %16, %112
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zbuffer_strands_abuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, float noundef %11, i32 noundef %12, ptr noundef %13) local_unnamed_addr #0 {
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = alloca %struct.ZSpan, align 8
  %19 = alloca %struct.StrandPart, align 8
  %20 = alloca %struct.StrandSegment, align 8
  %21 = alloca [4 x float], align 16
  %22 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #9
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = tail call i32 %24(ptr noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %465

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %31 = load i32, ptr %30, align 4, !tbaa !174
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %465, label %33

33:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %19, i8 0, i64 128, i1 false)
  store ptr %0, ptr %19, align 8, !tbaa !175
  %34 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !176
  %36 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 7
  store i32 %35, ptr %36, align 8, !tbaa !178
  %37 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !179
  %39 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 8
  store i32 %38, ptr %39, align 4, !tbaa !180
  %40 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 2
  store ptr %2, ptr %40, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 1
  store ptr %18, ptr %41, align 8, !tbaa !182
  %42 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !183
  %44 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !184
  %45 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !185
  %47 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !186
  %48 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !187
  %50 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !188
  %51 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 16
  store ptr %13, ptr %51, align 8, !tbaa !189
  %52 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 10
  store i32 %12, ptr %52, align 4, !tbaa !190
  %53 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 11
  store ptr %10, ptr %53, align 8, !tbaa !165
  %54 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 12
  store i32 %9, ptr %54, align 8, !tbaa !163
  call void @zbuf_alloc_span(ptr noundef nonnull %18, i32 noundef %35, i32 noundef %38, float noundef %11) #9
  %55 = sitofp i32 %7 to float
  %56 = fmul float %55, 5.000000e-01
  %57 = getelementptr inbounds %struct.ZSpan, ptr %18, i64 0, i32 12
  store float %56, ptr %57, align 8, !tbaa !191
  %58 = sitofp i32 %8 to float
  %59 = fmul float %58, 5.000000e-01
  %60 = getelementptr inbounds %struct.ZSpan, ptr %18, i64 0, i32 13
  store float %59, ptr %60, align 4, !tbaa !193
  %61 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !194
  %63 = sub nsw i32 0, %62
  %64 = sitofp i32 %63 to float
  %65 = getelementptr inbounds %struct.ZSpan, ptr %18, i64 0, i32 14
  store float %64, ptr %65, align 8, !tbaa !195
  %66 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !196
  %68 = sub nsw i32 0, %67
  %69 = sitofp i32 %68 to float
  %70 = getelementptr inbounds %struct.ZSpan, ptr %18, i64 0, i32 15
  store float %69, ptr %70, align 4, !tbaa !197
  %71 = icmp eq i32 %12, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %33
  %73 = fadd float %64, -5.000000e-01
  store float %73, ptr %65, align 8, !tbaa !195
  %74 = fadd float %69, -5.000000e-01
  store float %74, ptr %70, align 4, !tbaa !197
  br label %75

75:                                               ; preds = %72, %33
  %76 = getelementptr inbounds %struct.ZSpan, ptr %18, i64 0, i32 25
  store ptr %3, ptr %76, align 8, !tbaa !198
  %77 = shl nsw i32 %62, 1
  %78 = xor i32 %7, -1
  %79 = add i32 %77, %78
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %80, %55
  store float %81, ptr %21, align 16, !tbaa !47
  %82 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !199
  %84 = shl nsw i32 %83, 1
  %85 = sub i32 %84, %7
  %86 = add i32 %85, 1
  %87 = sitofp i32 %86 to float
  %88 = fdiv float %87, %55
  %89 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 1
  store float %88, ptr %89, align 4, !tbaa !47
  %90 = shl nsw i32 %67, 1
  %91 = xor i32 %8, -1
  %92 = add i32 %90, %91
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %93, %58
  %95 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 2
  store float %94, ptr %95, align 8, !tbaa !47
  %96 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !200
  %98 = shl nsw i32 %97, 1
  %99 = sub i32 %98, %8
  %100 = add i32 %99, 1
  %101 = sitofp i32 %100 to float
  %102 = fdiv float %101, %58
  %103 = getelementptr inbounds [4 x float], ptr %21, i64 0, i64 3
  store float %102, ptr %103, align 4, !tbaa !47
  %104 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.4) #9
  %105 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = icmp eq ptr %106, null
  br i1 %107, label %366, label %108

108:                                              ; preds = %75
  %109 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 1, i64 1
  %110 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %111 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %112 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %113 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %114 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %115 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %116 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %117 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %118 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  br label %119

119:                                              ; preds = %108, %360
  %120 = phi ptr [ %106, %108 ], [ %364, %360 ]
  %121 = phi i32 [ 0, %108 ], [ %362, %360 ]
  %122 = phi i32 [ 0, %108 ], [ %363, %360 ]
  %123 = phi ptr [ null, %108 ], [ %361, %360 ]
  %124 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %120, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !133
  %126 = getelementptr inbounds %struct.ObjectRen, ptr %125, i64 0, i32 22
  %127 = load ptr, ptr %126, align 8, !tbaa !201
  %128 = icmp eq ptr %127, null
  br i1 %128, label %360, label %129

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.StrandBuffer, ptr %127, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !203
  %132 = and i32 %131, %4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %360, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %120, i64 0, i32 11
  %136 = load i16, ptr %135, align 8, !tbaa !49
  %137 = and i16 %136, 3
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %120, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %22, ptr noundef %6, ptr noundef nonnull %140) #9
  br label %142

141:                                              ; preds = %134
  call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef %6) #9
  br label %142

142:                                              ; preds = %141, %139
  %143 = load ptr, ptr %126, align 8, !tbaa !201
  %144 = getelementptr inbounds %struct.StrandBuffer, ptr %143, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !42
  br i1 %71, label %156, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Material, ptr %145, i64 0, i32 53
  %148 = load i32, ptr %147, align 4, !tbaa !204
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %360, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.Material, ptr %145, i64 0, i32 51
  %153 = load i32, ptr %152, align 4, !tbaa !128
  %154 = and i32 %153, 33554432
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %360, label %161

156:                                              ; preds = %142
  %157 = getelementptr inbounds %struct.Material, ptr %145, i64 0, i32 51
  %158 = load i32, ptr %157, align 4, !tbaa !128
  %159 = and i32 %158, 8192
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %360

161:                                              ; preds = %151, %156
  %162 = load ptr, ptr %124, align 8, !tbaa !133
  %163 = getelementptr inbounds %struct.ObjectRen, ptr %162, i64 0, i32 9
  %164 = call i32 @clip_render_object(ptr noundef nonnull %163, ptr noundef nonnull %21, ptr noundef nonnull %22) #9
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %360

166:                                              ; preds = %161
  %167 = load ptr, ptr %126, align 8, !tbaa !201
  %168 = getelementptr inbounds %struct.StrandBuffer, ptr %167, i64 0, i32 16
  %169 = load float, ptr %168, align 4, !tbaa !205
  %170 = load float, ptr %22, align 16, !tbaa !47
  %171 = fmul float %169, %170
  %172 = load float, ptr %109, align 4, !tbaa !47
  %173 = fmul float %169, %172
  %174 = load ptr, ptr %126, align 8, !tbaa !201
  %175 = getelementptr inbounds %struct.StrandBuffer, ptr %174, i64 0, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !206
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %360

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.StrandBuffer, ptr %167, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !207
  br label %181

181:                                              ; preds = %178, %351
  %182 = phi i32 [ %353, %351 ], [ %121, %178 ]
  %183 = phi i32 [ %354, %351 ], [ 0, %178 ]
  %184 = phi ptr [ %352, %351 ], [ %123, %178 ]
  %185 = phi ptr [ %355, %351 ], [ %180, %178 ]
  %186 = getelementptr inbounds %struct.StrandBound, ptr %185, i64 0, i32 2
  %187 = call i32 @clip_render_object(ptr noundef nonnull %186, ptr noundef nonnull %21, ptr noundef nonnull %22) #9
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %351

189:                                              ; preds = %181
  %190 = load i32, ptr %185, align 4, !tbaa !208
  %191 = getelementptr inbounds %struct.StrandBound, ptr %185, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !210
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %351

194:                                              ; preds = %189, %345
  %195 = phi i32 [ %347, %345 ], [ %182, %189 ]
  %196 = phi i32 [ %348, %345 ], [ %190, %189 ]
  %197 = phi ptr [ %346, %345 ], [ %184, %189 ]
  %198 = call ptr @RE_findOrAddStrand(ptr noundef %125, i32 noundef %196) #9
  %199 = load ptr, ptr %198, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9
  call void @projectvert(ptr noundef %199, ptr noundef nonnull %22, ptr noundef nonnull %17) #9
  %200 = load float, ptr %110, align 8, !tbaa !47
  %201 = load float, ptr %17, align 16, !tbaa !47
  %202 = fadd float %171, %201
  %203 = load float, ptr %21, align 16, !tbaa !47
  %204 = load float, ptr %111, align 4, !tbaa !47
  %205 = fmul float %203, %204
  %206 = fcmp olt float %202, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %194
  %208 = fsub float %201, %171
  %209 = load float, ptr %89, align 4, !tbaa !47
  %210 = fmul float %204, %209
  %211 = fcmp ogt float %208, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212, %207, %194
  %214 = phi i32 [ 2, %212 ], [ 0, %207 ], [ 1, %194 ]
  %215 = load float, ptr %112, align 4, !tbaa !47
  %216 = fsub float %215, %173
  %217 = load float, ptr %103, align 4, !tbaa !47
  %218 = fmul float %204, %217
  %219 = fcmp ogt float %216, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = or disjoint i32 %214, 4
  br label %229

222:                                              ; preds = %213
  %223 = fadd float %173, %215
  %224 = load float, ptr %95, align 8, !tbaa !47
  %225 = fmul float %204, %224
  %226 = fcmp olt float %223, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = or disjoint i32 %214, 8
  br label %229

229:                                              ; preds = %220, %222, %227
  %230 = phi i32 [ %221, %220 ], [ %228, %227 ], [ %214, %222 ]
  %231 = call i32 @testclip(ptr noundef nonnull %17) #9
  %232 = or i32 %231, %230
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  %233 = getelementptr inbounds %struct.StrandVert, ptr %199, i64 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  call void @projectvert(ptr noundef nonnull %233, ptr noundef nonnull %22, ptr noundef nonnull %16) #9
  %234 = load float, ptr %113, align 8, !tbaa !47
  %235 = load float, ptr %16, align 16, !tbaa !47
  %236 = fadd float %171, %235
  %237 = load float, ptr %21, align 16, !tbaa !47
  %238 = load float, ptr %114, align 4, !tbaa !47
  %239 = fmul float %237, %238
  %240 = fcmp olt float %236, %239
  br i1 %240, label %247, label %241

241:                                              ; preds = %229
  %242 = fsub float %235, %171
  %243 = load float, ptr %89, align 4, !tbaa !47
  %244 = fmul float %238, %243
  %245 = fcmp ogt float %242, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %247

247:                                              ; preds = %246, %241, %229
  %248 = phi i32 [ 2, %246 ], [ 0, %241 ], [ 1, %229 ]
  %249 = load float, ptr %115, align 4, !tbaa !47
  %250 = fsub float %249, %173
  %251 = load float, ptr %103, align 4, !tbaa !47
  %252 = fmul float %238, %251
  %253 = fcmp ogt float %250, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = or disjoint i32 %248, 4
  br label %263

256:                                              ; preds = %247
  %257 = fadd float %173, %249
  %258 = load float, ptr %95, align 8, !tbaa !47
  %259 = fmul float %238, %258
  %260 = fcmp olt float %257, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = or disjoint i32 %248, 8
  br label %263

263:                                              ; preds = %254, %256, %261
  %264 = phi i32 [ %255, %254 ], [ %262, %261 ], [ %248, %256 ]
  %265 = call i32 @testclip(ptr noundef nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  %266 = getelementptr inbounds %struct.StrandRen, ptr %198, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !211
  %268 = icmp sgt i32 %267, 1
  br i1 %268, label %269, label %345

269:                                              ; preds = %263
  %270 = or i32 %265, %264
  %271 = getelementptr inbounds %struct.StrandRen, ptr %198, i64 0, i32 5
  br label %272

272:                                              ; preds = %269, %337
  %273 = phi i32 [ %267, %269 ], [ %342, %337 ]
  %274 = phi i32 [ %232, %269 ], [ %275, %337 ]
  %275 = phi i32 [ %232, %269 ], [ %276, %337 ]
  %276 = phi i32 [ %270, %269 ], [ %322, %337 ]
  %277 = phi i32 [ %195, %269 ], [ %339, %337 ]
  %278 = phi i32 [ 0, %269 ], [ %340, %337 ]
  %279 = phi ptr [ %197, %269 ], [ %338, %337 ]
  %280 = phi ptr [ %199, %269 ], [ %341, %337 ]
  %281 = phi float [ %200, %269 ], [ %282, %337 ]
  %282 = phi float [ %234, %269 ], [ %321, %337 ]
  %283 = add nsw i32 %273, -2
  %284 = icmp slt i32 %278, %283
  br i1 %284, label %285, label %320

285:                                              ; preds = %272
  %286 = getelementptr inbounds %struct.StrandVert, ptr %280, i64 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9
  call void @projectvert(ptr noundef nonnull %286, ptr noundef nonnull %22, ptr noundef nonnull %15) #9
  %287 = load float, ptr %116, align 8, !tbaa !47
  %288 = load float, ptr %15, align 16, !tbaa !47
  %289 = fadd float %171, %288
  %290 = load float, ptr %21, align 16, !tbaa !47
  %291 = load float, ptr %117, align 4, !tbaa !47
  %292 = fmul float %290, %291
  %293 = fcmp olt float %289, %292
  br i1 %293, label %300, label %294

294:                                              ; preds = %285
  %295 = fsub float %288, %171
  %296 = load float, ptr %89, align 4, !tbaa !47
  %297 = fmul float %291, %296
  %298 = fcmp ogt float %295, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %294, %285
  %301 = phi i32 [ 2, %299 ], [ 0, %294 ], [ 1, %285 ]
  %302 = load float, ptr %118, align 4, !tbaa !47
  %303 = fsub float %302, %173
  %304 = load float, ptr %103, align 4, !tbaa !47
  %305 = fmul float %291, %304
  %306 = fcmp ogt float %303, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = or disjoint i32 %301, 4
  br label %316

309:                                              ; preds = %300
  %310 = fadd float %173, %302
  %311 = load float, ptr %95, align 8, !tbaa !47
  %312 = fmul float %291, %311
  %313 = fcmp olt float %310, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  %315 = or disjoint i32 %301, 8
  br label %316

316:                                              ; preds = %307, %309, %314
  %317 = phi i32 [ %308, %307 ], [ %315, %314 ], [ %301, %309 ]
  %318 = call i32 @testclip(ptr noundef nonnull %15) #9
  %319 = or i32 %318, %317
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9
  br label %320

320:                                              ; preds = %272, %316
  %321 = phi float [ %287, %316 ], [ %282, %272 ]
  %322 = phi i32 [ %319, %316 ], [ %276, %272 ]
  %323 = and i32 %276, %274
  %324 = and i32 %323, %275
  %325 = and i32 %324, %322
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %320
  %328 = call ptr @BLI_memarena_alloc(ptr noundef %104, i64 noundef 24) #9
  %329 = getelementptr inbounds %struct.StrandSortSegment, ptr %328, i64 0, i32 1
  store i32 %122, ptr %329, align 8, !tbaa !212
  %330 = load i32, ptr %271, align 4, !tbaa !139
  %331 = getelementptr inbounds %struct.StrandSortSegment, ptr %328, i64 0, i32 2
  store i32 %330, ptr %331, align 4, !tbaa !214
  %332 = getelementptr inbounds %struct.StrandSortSegment, ptr %328, i64 0, i32 3
  store i32 %278, ptr %332, align 8, !tbaa !215
  %333 = fadd float %282, %281
  %334 = fmul float %333, 5.000000e-01
  %335 = getelementptr inbounds %struct.StrandSortSegment, ptr %328, i64 0, i32 4
  store float %334, ptr %335, align 4, !tbaa !216
  store ptr %279, ptr %328, align 8, !tbaa !217
  %336 = add nsw i32 %277, 1
  br label %337

337:                                              ; preds = %327, %320
  %338 = phi ptr [ %279, %320 ], [ %328, %327 ]
  %339 = phi i32 [ %277, %320 ], [ %336, %327 ]
  %340 = add nuw nsw i32 %278, 1
  %341 = getelementptr inbounds %struct.StrandVert, ptr %280, i64 1
  %342 = load i32, ptr %266, align 8, !tbaa !211
  %343 = add nsw i32 %342, -1
  %344 = icmp slt i32 %340, %343
  br i1 %344, label %272, label %345, !llvm.loop !218

345:                                              ; preds = %337, %263
  %346 = phi ptr [ %197, %263 ], [ %338, %337 ]
  %347 = phi i32 [ %195, %263 ], [ %339, %337 ]
  %348 = add nsw i32 %196, 1
  %349 = load i32, ptr %191, align 4, !tbaa !210
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %194, label %351, !llvm.loop !219

351:                                              ; preds = %345, %189, %181
  %352 = phi ptr [ %184, %181 ], [ %184, %189 ], [ %346, %345 ]
  %353 = phi i32 [ %182, %181 ], [ %182, %189 ], [ %347, %345 ]
  %354 = add nuw nsw i32 %183, 1
  %355 = getelementptr inbounds %struct.StrandBound, ptr %185, i64 1
  %356 = load ptr, ptr %126, align 8, !tbaa !201
  %357 = getelementptr inbounds %struct.StrandBuffer, ptr %356, i64 0, i32 5
  %358 = load i32, ptr %357, align 4, !tbaa !206
  %359 = icmp slt i32 %354, %358
  br i1 %359, label %181, label %360, !llvm.loop !220

360:                                              ; preds = %351, %166, %161, %156, %146, %151, %119, %129
  %361 = phi ptr [ %123, %129 ], [ %123, %119 ], [ %123, %151 ], [ %123, %146 ], [ %123, %156 ], [ %123, %161 ], [ %123, %166 ], [ %352, %351 ]
  %362 = phi i32 [ %121, %129 ], [ %121, %119 ], [ %121, %151 ], [ %121, %146 ], [ %121, %156 ], [ %121, %161 ], [ %121, %166 ], [ %353, %351 ]
  %363 = add nuw nsw i32 %122, 1
  %364 = load ptr, ptr %120, align 8, !tbaa !46
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %119, !llvm.loop !221

366:                                              ; preds = %360, %75
  %367 = phi ptr [ null, %75 ], [ %361, %360 ]
  %368 = phi i32 [ 0, %75 ], [ %362, %360 ]
  %369 = load ptr, ptr %23, align 8, !tbaa !172
  %370 = load ptr, ptr %25, align 8, !tbaa !173
  %371 = call i32 %369(ptr noundef %370) #9
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %389

373:                                              ; preds = %366
  %374 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %375 = sext i32 %368 to i64
  %376 = mul nsw i64 %375, 24
  %377 = call ptr %374(i64 noundef %376, ptr noundef nonnull @.str.5) #9
  %378 = icmp sgt i32 %368, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %373
  %380 = zext nneg i32 %368 to i64
  br label %381

381:                                              ; preds = %379, %381
  %382 = phi i64 [ 0, %379 ], [ %385, %381 ]
  %383 = phi ptr [ %367, %379 ], [ %386, %381 ]
  %384 = getelementptr inbounds %struct.StrandSortSegment, ptr %377, i64 %382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %384, ptr noundef nonnull align 8 dereferenceable(24) %383, i64 24, i1 false), !tbaa.struct !222
  %385 = add nuw nsw i64 %382, 1
  %386 = load ptr, ptr %383, align 8, !tbaa !217
  %387 = icmp eq i64 %385, %380
  br i1 %387, label %388, label %381, !llvm.loop !223

388:                                              ; preds = %381, %373
  call void @qsort(ptr noundef %377, i64 noundef %375, i64 noundef 24, ptr noundef nonnull @compare_strand_segment) #9
  br label %389

389:                                              ; preds = %388, %366
  %390 = phi ptr [ null, %366 ], [ %377, %388 ]
  call void @BLI_memarena_free(ptr noundef %104) #9
  %391 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %392 = load i32, ptr %34, align 8, !tbaa !176
  %393 = sext i32 %392 to i64
  %394 = shl nsw i64 %393, 2
  %395 = load i32, ptr %37, align 4, !tbaa !179
  %396 = sext i32 %395 to i64
  %397 = mul i64 %394, %396
  %398 = call ptr %391(i64 noundef %397, ptr noundef nonnull @.str.6) #9
  %399 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 3
  store ptr %398, ptr %399, align 8, !tbaa !224
  %400 = load ptr, ptr %23, align 8, !tbaa !172
  %401 = load ptr, ptr %25, align 8, !tbaa !173
  %402 = call i32 %400(ptr noundef %401) #9
  %403 = icmp eq i32 %402, 0
  %404 = icmp sgt i32 %368, 0
  %405 = select i1 %403, i1 %404, i1 false
  br i1 %405, label %406, label %458

406:                                              ; preds = %389
  %407 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %408 = getelementptr inbounds %struct.StrandSegment, ptr %20, i64 0, i32 3
  %409 = getelementptr inbounds %struct.StrandSegment, ptr %20, i64 0, i32 1
  %410 = getelementptr inbounds %struct.StrandSegment, ptr %20, i64 0, i32 2
  %411 = getelementptr inbounds %struct.StrandSegment, ptr %20, i64 0, i32 4
  %412 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 1
  %413 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 2
  %414 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 3
  %415 = getelementptr inbounds %struct.StrandSegment, ptr %20, i64 0, i32 7
  %416 = getelementptr inbounds %struct.StrandPart, ptr %19, i64 0, i32 13
  br label %417

417:                                              ; preds = %406, %424
  %418 = phi i32 [ 0, %406 ], [ %455, %424 ]
  %419 = phi ptr [ %390, %406 ], [ %456, %424 ]
  %420 = load ptr, ptr %23, align 8, !tbaa !172
  %421 = load ptr, ptr %25, align 8, !tbaa !173
  %422 = call i32 %420(ptr noundef %421) #9
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %458

424:                                              ; preds = %417
  %425 = load ptr, ptr %407, align 8, !tbaa !170
  %426 = getelementptr inbounds %struct.StrandSortSegment, ptr %419, i64 0, i32 1
  %427 = load i32, ptr %426, align 8, !tbaa !212
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %425, i64 %428
  %430 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %425, i64 %428, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !133
  store ptr %429, ptr %408, align 8, !tbaa !48
  %432 = getelementptr inbounds %struct.StrandSortSegment, ptr %419, i64 0, i32 2
  %433 = load i32, ptr %432, align 4, !tbaa !214
  %434 = call ptr @RE_findOrAddStrand(ptr noundef %431, i32 noundef %433) #9
  store ptr %434, ptr %409, align 8, !tbaa !66
  %435 = getelementptr inbounds %struct.StrandRen, ptr %434, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !225
  store ptr %436, ptr %410, align 8, !tbaa !34
  %437 = getelementptr inbounds %struct.StrandBuffer, ptr %436, i64 0, i32 13
  %438 = load float, ptr %437, align 8, !tbaa !226
  %439 = fmul float %438, %438
  store float %439, ptr %411, align 8, !tbaa !162
  %440 = load ptr, ptr %434, align 8, !tbaa !141
  %441 = getelementptr inbounds %struct.StrandSortSegment, ptr %419, i64 0, i32 3
  %442 = load i32, ptr %441, align 8, !tbaa !215
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.StrandVert, ptr %440, i64 %443
  %445 = icmp sgt i32 %442, 0
  %446 = sext i1 %445 to i64
  %447 = getelementptr inbounds %struct.StrandVert, ptr %444, i64 %446
  store ptr %447, ptr %20, align 8, !tbaa !46
  store ptr %444, ptr %412, align 8, !tbaa !46
  %448 = getelementptr inbounds %struct.StrandVert, ptr %444, i64 1
  store ptr %448, ptr %413, align 8, !tbaa !46
  %449 = getelementptr inbounds %struct.StrandRen, ptr %434, i64 0, i32 2
  %450 = load i32, ptr %449, align 8, !tbaa !211
  %451 = add nsw i32 %450, -2
  %452 = icmp slt i32 %442, %451
  %453 = getelementptr inbounds %struct.StrandVert, ptr %444, i64 2
  %454 = select i1 %452, ptr %453, ptr %448
  store ptr %454, ptr %414, align 8, !tbaa !46
  store i32 0, ptr %415, align 4, !tbaa !227
  store ptr %20, ptr %416, align 8, !tbaa !228
  call void @render_strand_segment(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %18, i32 noundef 1, ptr noundef nonnull %20)
  %455 = add nuw nsw i32 %418, 1
  %456 = getelementptr inbounds %struct.StrandSortSegment, ptr %419, i64 1
  %457 = icmp eq i32 %455, %368
  br i1 %457, label %458, label %417, !llvm.loop !229

458:                                              ; preds = %417, %424, %389
  %459 = icmp eq ptr %390, null
  br i1 %459, label %462, label %460

460:                                              ; preds = %458
  %461 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %461(ptr noundef nonnull %390) #9
  br label %462

462:                                              ; preds = %460, %458
  %463 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %464 = load ptr, ptr %399, align 8, !tbaa !224
  call void %463(ptr noundef %464) #9
  call void @zbuf_free_span(ptr noundef nonnull %18) #9
  br label %465

465:                                              ; preds = %29, %14, %462
  %466 = phi i32 [ %368, %462 ], [ 0, %14 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %18) #9
  ret i32 %466
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clip_render_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_strand_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.StrandSortSegment, ptr %0, i64 0, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !216
  %5 = getelementptr inbounds %struct.StrandSortSegment, ptr %1, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !216
  %7 = fcmp olt float %4, %6
  %8 = fcmp une float %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @cache_strand_surface(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !230
  %8 = tail call i32 %7(ptr noundef %2) #9
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !233
  %11 = tail call i32 %10(ptr noundef %2) #9
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !234
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 5
  br label %20

20:                                               ; preds = %15, %43
  %21 = phi ptr [ %13, %15 ], [ %44, %43 ]
  %22 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !235
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !237
  %28 = load ptr, ptr %18, align 8, !tbaa !238
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !239
  %33 = load i32, ptr %19, align 8, !tbaa !240
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !241
  %38 = icmp eq i32 %37, %8
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 11
  %41 = load i32, ptr %40, align 4, !tbaa !242
  %42 = icmp eq i32 %41, %11
  br i1 %42, label %75, label %43

43:                                               ; preds = %20, %25, %30, %35, %39
  %44 = load ptr, ptr %21, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !243

46:                                               ; preds = %43, %5
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %48 = tail call ptr %47(i64 noundef 360, ptr noundef nonnull @.str.7) #9
  %49 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %49, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 280, i1 false), !tbaa.struct !244
  %50 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 10
  store i32 %8, ptr %50, align 8, !tbaa !241
  %51 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 11
  store i32 %11, ptr %51, align 4, !tbaa !242
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %53 = sext i32 %11 to i64
  %54 = shl nsw i64 %53, 4
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.8) #9
  %56 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !245
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %58 = load i32, ptr %50, align 8, !tbaa !241
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, 12
  %61 = tail call ptr %57(i64 noundef %60, ptr noundef nonnull @.str.9) #9
  %62 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 5
  store ptr %61, ptr %62, align 8, !tbaa !246
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %64 = load i32, ptr %50, align 8, !tbaa !241
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 12
  %67 = tail call ptr %63(i64 noundef %66, ptr noundef nonnull @.str.10) #9
  %68 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 6
  store ptr %67, ptr %68, align 8, !tbaa !247
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %70 = load i32, ptr %50, align 8, !tbaa !241
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, 12
  %73 = tail call ptr %69(i64 noundef %72, ptr noundef nonnull @.str.11) #9
  %74 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 7
  store ptr %73, ptr %74, align 8, !tbaa !248
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %48) #9
  br label %75

75:                                               ; preds = %39, %46
  %76 = phi ptr [ %48, %46 ], [ %21, %39 ]
  switch i32 %4, label %166 [
    i32 -1, label %77
    i32 0, label %89
    i32 1, label %102
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !249
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !241
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, 12
  %87 = tail call ptr %82(i64 noundef %86, ptr noundef nonnull @.str.12) #9
  store ptr %87, ptr %78, align 8, !tbaa !249
  br label %113

88:                                               ; preds = %77
  switch i32 %4, label %166 [
    i32 0, label %89
    i32 1, label %102
  ]

89:                                               ; preds = %75, %88
  %90 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !250
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %95 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %96 = load i32, ptr %95, align 8, !tbaa !241
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, 12
  %99 = tail call ptr %94(i64 noundef %98, ptr noundef nonnull @.str.12) #9
  store ptr %99, ptr %90, align 8, !tbaa !250
  br label %113

100:                                              ; preds = %89
  %101 = icmp eq i32 %4, 1
  br i1 %101, label %102, label %166

102:                                              ; preds = %75, %88, %100
  %103 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !251
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %166

106:                                              ; preds = %102
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %109 = load i32, ptr %108, align 8, !tbaa !241
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, 12
  %112 = tail call ptr %107(i64 noundef %111, ptr noundef nonnull @.str.12) #9
  store ptr %112, ptr %103, align 8, !tbaa !251
  br label %113

113:                                              ; preds = %93, %106, %81
  %114 = phi ptr [ %112, %106 ], [ %99, %93 ], [ %87, %81 ]
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %116 = load ptr, ptr %115, align 8, !tbaa !252
  %117 = tail call ptr %116(ptr noundef %2) #9
  %118 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %119 = load i32, ptr %118, align 8, !tbaa !241
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %113, %121
  %122 = phi i64 [ %132, %121 ], [ 0, %113 ]
  %123 = phi ptr [ %133, %121 ], [ %117, %113 ]
  %124 = getelementptr inbounds [3 x float], ptr %114, i64 %122
  %125 = load float, ptr %123, align 4, !tbaa !47
  store float %125, ptr %124, align 4, !tbaa !47
  %126 = getelementptr inbounds float, ptr %123, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !47
  %128 = getelementptr inbounds float, ptr %124, i64 1
  store float %127, ptr %128, align 4, !tbaa !47
  %129 = getelementptr inbounds float, ptr %123, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !47
  %131 = getelementptr inbounds float, ptr %124, i64 2
  store float %130, ptr %131, align 4, !tbaa !47
  tail call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %124) #9
  %132 = add nuw nsw i64 %122, 1
  %133 = getelementptr inbounds %struct.MVert, ptr %123, i64 1
  %134 = load i32, ptr %118, align 8, !tbaa !241
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %121, label %137, !llvm.loop !253

137:                                              ; preds = %121, %113
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %139 = load ptr, ptr %138, align 8, !tbaa !254
  %140 = tail call ptr %139(ptr noundef %2) #9
  %141 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 11
  %142 = load i32, ptr %141, align 4, !tbaa !242
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !245
  br label %147

147:                                              ; preds = %144, %147
  %148 = phi i64 [ 0, %144 ], [ %161, %147 ]
  %149 = phi ptr [ %140, %144 ], [ %162, %147 ]
  %150 = load i32, ptr %149, align 4, !tbaa !255
  %151 = getelementptr inbounds [4 x i32], ptr %146, i64 %148
  store i32 %150, ptr %151, align 4, !tbaa !136
  %152 = getelementptr inbounds %struct.MFace, ptr %149, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !257
  %154 = getelementptr inbounds [4 x i32], ptr %146, i64 %148, i64 1
  store i32 %153, ptr %154, align 4, !tbaa !136
  %155 = getelementptr inbounds %struct.MFace, ptr %149, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !258
  %157 = getelementptr inbounds [4 x i32], ptr %146, i64 %148, i64 2
  store i32 %156, ptr %157, align 4, !tbaa !136
  %158 = getelementptr inbounds %struct.MFace, ptr %149, i64 0, i32 3
  %159 = load i32, ptr %158, align 4, !tbaa !259
  %160 = getelementptr inbounds [4 x i32], ptr %146, i64 %148, i64 3
  store i32 %159, ptr %160, align 4, !tbaa !136
  %161 = add nuw nsw i64 %148, 1
  %162 = getelementptr inbounds %struct.MFace, ptr %149, i64 1
  %163 = load i32, ptr %141, align 4, !tbaa !242
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %147, label %166, !llvm.loop !260

166:                                              ; preds = %147, %137, %100, %102, %88, %75
  ret ptr %76
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_strand_surface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1, %48
  %6 = phi ptr [ %49, %48 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !249
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #9
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !251
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %23(ptr noundef nonnull %20) #9
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !246
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %29(ptr noundef nonnull %26) #9
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !247
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %32) #9
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !248
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %41(ptr noundef nonnull %38) #9
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !245
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %47(ptr noundef nonnull %44) #9
  br label %48

48:                                               ; preds = %42, %46
  %49 = load ptr, ptr %6, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %5, !llvm.loop !261

51:                                               ; preds = %48, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #9
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @strand_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.StrandRen, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !211
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !141
  %11 = getelementptr inbounds float, ptr %5, i64 1
  %12 = getelementptr inbounds float, ptr %5, i64 2
  %13 = fcmp une float %3, 0.000000e+00
  %14 = fmul float %3, -2.000000e+00
  br label %15

15:                                               ; preds = %9, %36
  %16 = phi i32 [ 0, %9 ], [ %37, %36 ]
  %17 = phi ptr [ %10, %9 ], [ %38, %36 ]
  %18 = load float, ptr %17, align 4, !tbaa !47
  store float %18, ptr %5, align 4, !tbaa !47
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !47
  store float %20, ptr %11, align 4, !tbaa !47
  %21 = getelementptr inbounds float, ptr %17, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !47
  store float %22, ptr %12, align 4, !tbaa !47
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #9
  br i1 %13, label %23, label %36

23:                                               ; preds = %15
  %24 = load float, ptr %5, align 4, !tbaa !47
  %25 = fadd float %24, %3
  store float %25, ptr %5, align 4, !tbaa !47
  %26 = load float, ptr %11, align 4, !tbaa !47
  %27 = fadd float %26, %3
  store float %27, ptr %11, align 4, !tbaa !47
  %28 = load float, ptr %12, align 4, !tbaa !47
  %29 = fadd float %28, %3
  store float %29, ptr %12, align 4, !tbaa !47
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #9
  %30 = load float, ptr %5, align 4, !tbaa !47
  %31 = fadd float %14, %30
  store float %31, ptr %5, align 4, !tbaa !47
  %32 = load float, ptr %11, align 4, !tbaa !47
  %33 = fadd float %14, %32
  store float %33, ptr %11, align 4, !tbaa !47
  %34 = load float, ptr %12, align 4, !tbaa !47
  %35 = fadd float %14, %34
  store float %35, ptr %12, align 4, !tbaa !47
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #9
  br label %36

36:                                               ; preds = %15, %23
  %37 = add nuw nsw i32 %16, 1
  %38 = getelementptr inbounds %struct.StrandVert, ptr %17, i64 1
  %39 = load i32, ptr %6, align 8, !tbaa !211
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %15, label %41, !llvm.loop !262

41:                                               ; preds = %36, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_thread_srandom(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @shade_input_set_strand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_input_set_strand_texco(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #2

declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #2

declare void @shade_input_do_shade(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hoco_to_zco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zbufsinglewire(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zspan_scanconvert_strand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_strand_fillac(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5) #0 {
  %7 = alloca %struct.GHashPair, align 8
  %8 = alloca %struct.GHashPair, align 8
  %9 = alloca %struct.APixstrand, align 8
  %10 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !228
  %14 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !178
  %16 = mul nsw i32 %15, %2
  %17 = add nsw i32 %16, %1
  %18 = getelementptr inbounds %struct.StrandSegment, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %0, align 8, !tbaa !175
  %21 = getelementptr inbounds %struct.Render, ptr %20, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 288
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.StrandSegment, ptr %13, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.StrandRen, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !139
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load ptr, ptr %29, align 8, !tbaa !141
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !166
  %43 = shl nuw i32 1, %42
  %44 = fptosi float %5 to i32
  %45 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !184
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %6
  %49 = sext i32 %17 to i64
  %50 = getelementptr inbounds i64, ptr %46, i64 %49
  %51 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !188
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, i32 0, i32 2147483647
  %55 = load i64, ptr %50, align 8, !tbaa !263
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %48
  %58 = inttoptr i64 %55 to ptr
  br label %59

59:                                               ; preds = %57, %71
  %60 = phi ptr [ %58, %57 ], [ %72, %71 ]
  %61 = getelementptr inbounds %struct.PixStr, ptr %60, i64 0, i32 5
  %62 = load i16, ptr %61, align 8, !tbaa !265
  %63 = zext i16 %62 to i32
  %64 = and i32 %43, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.PixStr, ptr %60, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !267
  br i1 %53, label %94, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.PixStr, ptr %60, i64 0, i32 4
  br label %90

71:                                               ; preds = %59
  %72 = load ptr, ptr %60, align 8, !tbaa !268
  %73 = icmp eq ptr %72, null
  br i1 %73, label %94, label %59, !llvm.loop !269

74:                                               ; preds = %6
  %75 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !186
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = sext i32 %17 to i64
  %80 = getelementptr inbounds i32, ptr %76, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !136
  br label %82

82:                                               ; preds = %74, %78
  %83 = phi i32 [ %81, %78 ], [ 2147483647, %74 ]
  %84 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !188
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = sext i32 %17 to i64
  %89 = getelementptr inbounds i32, ptr %85, i64 %88
  br label %90

90:                                               ; preds = %87, %69
  %91 = phi ptr [ %70, %69 ], [ %89, %87 ]
  %92 = phi i32 [ %68, %69 ], [ %83, %87 ]
  %93 = load i32, ptr %91, align 4, !tbaa !136
  br label %94

94:                                               ; preds = %71, %90, %48, %66, %82
  %95 = phi i32 [ 0, %82 ], [ %54, %66 ], [ %54, %48 ], [ %93, %90 ], [ %54, %71 ]
  %96 = phi i32 [ %83, %82 ], [ %68, %66 ], [ 2147483647, %48 ], [ %92, %90 ], [ 2147483647, %71 ]
  %97 = icmp sgt i32 %96, %44
  br i1 %97, label %98, label %361

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !224
  %101 = sext i32 %17 to i64
  %102 = getelementptr inbounds i32, ptr %100, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !136
  %104 = icmp slt i32 %103, 2000
  br i1 %104, label %105, label %361

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !188
  %108 = icmp eq ptr %107, null
  %109 = icmp slt i32 %95, %44
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %111, label %361

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14
  %113 = load float, ptr %112, align 8, !tbaa !47
  %114 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !47
  %116 = fmul float %115, %4
  %117 = tail call float @llvm.fmuladd.f32(float %3, float %113, float %116)
  %118 = fsub float 1.000000e+00, %3
  %119 = fsub float %118, %4
  %120 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 2
  %121 = load float, ptr %120, align 8, !tbaa !47
  %122 = tail call float @llvm.fmuladd.f32(float %119, float %121, float %117)
  %123 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15
  %124 = load float, ptr %123, align 4, !tbaa !47
  %125 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !47
  %127 = fmul float %126, %4
  %128 = tail call float @llvm.fmuladd.f32(float %3, float %124, float %127)
  %129 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !47
  %131 = tail call float @llvm.fmuladd.f32(float %119, float %130, float %128)
  %132 = tail call float @llvm.fabs.f32(float %131)
  %133 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !181
  %135 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101
  %136 = icmp eq ptr %134, null
  %137 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 2
  %138 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3
  %139 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4
  %140 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 2, i64 1
  %141 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 1
  %142 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 1
  %143 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 2, i64 2
  %144 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 2
  %145 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 2
  %146 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 2, i64 3
  %147 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 3
  %148 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 3
  %149 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 1
  %150 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 7
  br i1 %136, label %317, label %151

151:                                              ; preds = %111, %304
  %152 = load i32, ptr %137, align 8, !tbaa !136
  %153 = icmp eq i32 %152, %32
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, ptr %138, align 8, !tbaa !136
  %156 = icmp eq i32 %155, %27
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load i32, ptr %139, align 8, !tbaa !136
  %159 = icmp eq i32 %158, %40
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i16, ptr %135, align 8, !tbaa !270
  %162 = zext i16 %161 to i32
  %163 = and i32 %43, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %317

165:                                              ; preds = %160
  %166 = trunc i32 %43 to i16
  %167 = or i16 %161, %166
  store i16 %167, ptr %135, align 8, !tbaa !270
  %168 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6
  %169 = load float, ptr %168, align 8, !tbaa !47
  %170 = fadd float %122, %169
  store float %170, ptr %168, align 8, !tbaa !47
  %171 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5
  %172 = load float, ptr %171, align 8, !tbaa !47
  %173 = fadd float %132, %172
  store float %173, ptr %171, align 8, !tbaa !47
  br label %317

174:                                              ; preds = %157, %154, %151
  %175 = load i32, ptr %140, align 4, !tbaa !136
  %176 = icmp eq i32 %175, %32
  br i1 %176, label %177, label %198

177:                                              ; preds = %174
  %178 = load i32, ptr %141, align 4, !tbaa !136
  %179 = icmp eq i32 %178, %27
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i32, ptr %142, align 4, !tbaa !136
  %182 = icmp eq i32 %181, %40
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 1
  %185 = load i16, ptr %184, align 2, !tbaa !270
  %186 = zext i16 %185 to i32
  %187 = and i32 %43, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %317

189:                                              ; preds = %183
  %190 = trunc i32 %43 to i16
  %191 = or i16 %185, %190
  store i16 %191, ptr %184, align 2, !tbaa !270
  %192 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !47
  %194 = fadd float %122, %193
  store float %194, ptr %192, align 4, !tbaa !47
  %195 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !47
  %197 = fadd float %132, %196
  store float %197, ptr %195, align 4, !tbaa !47
  br label %317

198:                                              ; preds = %180, %177, %174
  %199 = load i32, ptr %143, align 8, !tbaa !136
  %200 = icmp eq i32 %199, %32
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load i32, ptr %144, align 8, !tbaa !136
  %203 = icmp eq i32 %202, %27
  br i1 %203, label %204, label %222

204:                                              ; preds = %201
  %205 = load i32, ptr %145, align 8, !tbaa !136
  %206 = icmp eq i32 %205, %40
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 2
  %209 = load i16, ptr %208, align 4, !tbaa !270
  %210 = zext i16 %209 to i32
  %211 = and i32 %43, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %317

213:                                              ; preds = %207
  %214 = trunc i32 %43 to i16
  %215 = or i16 %209, %214
  store i16 %215, ptr %208, align 4, !tbaa !270
  %216 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 2
  %217 = load float, ptr %216, align 8, !tbaa !47
  %218 = fadd float %122, %217
  store float %218, ptr %216, align 8, !tbaa !47
  %219 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 2
  %220 = load float, ptr %219, align 8, !tbaa !47
  %221 = fadd float %132, %220
  store float %221, ptr %219, align 8, !tbaa !47
  br label %317

222:                                              ; preds = %204, %201, %198
  %223 = load i32, ptr %146, align 4, !tbaa !136
  %224 = icmp eq i32 %223, %32
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  %226 = load i32, ptr %147, align 4, !tbaa !136
  %227 = icmp eq i32 %226, %27
  br i1 %227, label %228, label %246

228:                                              ; preds = %225
  %229 = load i32, ptr %148, align 4, !tbaa !136
  %230 = icmp eq i32 %229, %40
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 3
  %233 = load i16, ptr %232, align 2, !tbaa !270
  %234 = zext i16 %233 to i32
  %235 = and i32 %43, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %317

237:                                              ; preds = %231
  %238 = trunc i32 %43 to i16
  %239 = or i16 %233, %238
  store i16 %239, ptr %232, align 2, !tbaa !270
  %240 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 3
  %241 = load float, ptr %240, align 4, !tbaa !47
  %242 = fadd float %122, %241
  store float %242, ptr %240, align 4, !tbaa !47
  %243 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 3
  %244 = load float, ptr %243, align 4, !tbaa !47
  %245 = fadd float %132, %244
  store float %245, ptr %243, align 4, !tbaa !47
  br label %317

246:                                              ; preds = %228, %225, %222
  %247 = icmp eq i32 %152, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3
  store i32 %27, ptr %249, align 8, !tbaa !136
  store i32 %32, ptr %137, align 8, !tbaa !136
  %250 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 1
  store i32 %44, ptr %250, align 8, !tbaa !136
  %251 = trunc i32 %43 to i16
  store i16 %251, ptr %135, align 8, !tbaa !270
  %252 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6
  store float %122, ptr %252, align 8, !tbaa !47
  %253 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5
  store float %132, ptr %253, align 8, !tbaa !47
  %254 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4
  store i32 %40, ptr %254, align 8, !tbaa !136
  br label %317

255:                                              ; preds = %246
  %256 = icmp eq i32 %175, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 1
  store i32 %27, ptr %258, align 4, !tbaa !136
  store i32 %32, ptr %140, align 4, !tbaa !136
  %259 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 1, i64 1
  store i32 %44, ptr %259, align 4, !tbaa !136
  %260 = trunc i32 %43 to i16
  %261 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 1
  store i16 %260, ptr %261, align 2, !tbaa !270
  %262 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 1
  store float %122, ptr %262, align 4, !tbaa !47
  %263 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 1
  store float %132, ptr %263, align 4, !tbaa !47
  %264 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 1
  store i32 %40, ptr %264, align 4, !tbaa !136
  br label %317

265:                                              ; preds = %255
  %266 = icmp eq i32 %199, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 2
  store i32 %27, ptr %268, align 8, !tbaa !136
  store i32 %32, ptr %143, align 8, !tbaa !136
  %269 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 1, i64 2
  store i32 %44, ptr %269, align 8, !tbaa !136
  %270 = trunc i32 %43 to i16
  %271 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 2
  store i16 %270, ptr %271, align 4, !tbaa !270
  %272 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 2
  store float %122, ptr %272, align 8, !tbaa !47
  %273 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 2
  store float %132, ptr %273, align 8, !tbaa !47
  %274 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 2
  store i32 %40, ptr %274, align 8, !tbaa !136
  br label %317

275:                                              ; preds = %265
  %276 = icmp eq i32 %223, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3, i64 3
  store i32 %27, ptr %278, align 4, !tbaa !136
  store i32 %32, ptr %146, align 4, !tbaa !136
  %279 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 1, i64 3
  store i32 %44, ptr %279, align 4, !tbaa !136
  %280 = trunc i32 %43 to i16
  %281 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 3
  store i16 %280, ptr %281, align 2, !tbaa !270
  %282 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6, i64 3
  store float %122, ptr %282, align 4, !tbaa !47
  %283 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5, i64 3
  store float %132, ptr %283, align 4, !tbaa !47
  %284 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4, i64 3
  store i32 %40, ptr %284, align 4, !tbaa !136
  br label %317

285:                                              ; preds = %275
  %286 = load ptr, ptr %149, align 8, !tbaa !182
  %287 = getelementptr inbounds %struct.ZSpan, ptr %286, i64 0, i32 30
  %288 = load i32, ptr %287, align 8, !tbaa !271
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.ZSpan, ptr %286, i64 0, i32 25
  %292 = load ptr, ptr %291, align 8, !tbaa !198
  %293 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %294 = tail call ptr %293(i64 noundef 24, ptr noundef nonnull @.str.14) #9
  tail call void @BLI_addtail(ptr noundef %292, ptr noundef %294) #9
  %295 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %296 = tail call ptr %295(i64 noundef 458752, ptr noundef nonnull @.str.15) #9
  %297 = getelementptr inbounds %struct.APixstrMain, ptr %294, i64 0, i32 2
  store ptr %296, ptr %297, align 8, !tbaa !272
  %298 = getelementptr inbounds %struct.ZSpan, ptr %286, i64 0, i32 24
  store ptr %296, ptr %298, align 8, !tbaa !274
  br label %304

299:                                              ; preds = %285
  %300 = getelementptr inbounds %struct.ZSpan, ptr %286, i64 0, i32 24
  %301 = load ptr, ptr %300, align 8, !tbaa !274
  %302 = getelementptr inbounds %struct.APixstrand, ptr %301, i64 1
  store ptr %302, ptr %300, align 8, !tbaa !274
  %303 = add nsw i32 %288, -1
  br label %304

304:                                              ; preds = %290, %299
  %305 = phi i32 [ %303, %299 ], [ 4095, %290 ]
  store i32 %305, ptr %287, align 8, !tbaa !271
  %306 = getelementptr inbounds %struct.ZSpan, ptr %286, i64 0, i32 24
  %307 = load ptr, ptr %306, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(112) %307, i64 112, i1 false), !tbaa.struct !275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %307, ptr noundef nonnull align 8 dereferenceable(112) %135, i64 112, i1 false), !tbaa.struct !275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %135, ptr noundef nonnull align 8 dereferenceable(112) %9, i64 112, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9)
  store ptr %307, ptr %150, align 8, !tbaa !276
  %308 = load i32, ptr %137, align 8, !tbaa !136
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %151, !llvm.loop !278

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 3
  store i32 %27, ptr %311, align 8, !tbaa !136
  store i32 %32, ptr %137, align 8, !tbaa !136
  %312 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 1
  store i32 %44, ptr %312, align 8, !tbaa !136
  %313 = trunc i32 %43 to i16
  store i16 %313, ptr %135, align 8, !tbaa !270
  %314 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 6
  store float %122, ptr %314, align 8, !tbaa !47
  %315 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 5
  store float %132, ptr %315, align 8, !tbaa !47
  %316 = getelementptr inbounds %struct.APixstrand, ptr %134, i64 %101, i32 4
  store i32 %40, ptr %316, align 8, !tbaa !136
  br label %317

317:                                              ; preds = %111, %231, %237, %207, %213, %183, %189, %160, %165, %310, %277, %267, %257, %248
  %318 = icmp eq ptr %11, null
  br i1 %318, label %356, label %319

319:                                              ; preds = %317
  %320 = load ptr, ptr %33, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %321 = load ptr, ptr %18, align 8, !tbaa !48
  store ptr %321, ptr %8, align 8
  %322 = getelementptr inbounds { ptr, ptr }, ptr %8, i64 0, i32 1
  store ptr %320, ptr %322, align 8
  %323 = getelementptr inbounds %struct.StrandShadeCache, ptr %11, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !73
  %325 = call ptr @BLI_ghash_lookup(ptr noundef %324, ptr noundef nonnull %8) #9
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %334

327:                                              ; preds = %319
  %328 = getelementptr inbounds %struct.StrandShadeCache, ptr %11, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !74
  %330 = call ptr @BLI_memarena_alloc(ptr noundef %329, i64 noundef 16) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %330, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !157
  %331 = load ptr, ptr %328, align 8, !tbaa !74
  %332 = call ptr @BLI_memarena_alloc(ptr noundef %331, i64 noundef 4) #9
  store i32 1, ptr %332, align 4, !tbaa !136
  %333 = load ptr, ptr %323, align 8, !tbaa !73
  call void @BLI_ghash_insert(ptr noundef %333, ptr noundef %330, ptr noundef nonnull %332) #9
  br label %337

334:                                              ; preds = %319
  %335 = load i32, ptr %325, align 4, !tbaa !136
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %325, align 4, !tbaa !136
  br label %337

337:                                              ; preds = %327, %334
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  %338 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 2
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %340 = load ptr, ptr %18, align 8, !tbaa !48
  store ptr %340, ptr %7, align 8
  %341 = getelementptr inbounds { ptr, ptr }, ptr %7, i64 0, i32 1
  store ptr %339, ptr %341, align 8
  %342 = load ptr, ptr %323, align 8, !tbaa !73
  %343 = call ptr @BLI_ghash_lookup(ptr noundef %342, ptr noundef nonnull %7) #9
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.StrandShadeCache, ptr %11, i64 0, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !74
  %348 = call ptr @BLI_memarena_alloc(ptr noundef %347, i64 noundef 16) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %348, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !157
  %349 = load ptr, ptr %346, align 8, !tbaa !74
  %350 = call ptr @BLI_memarena_alloc(ptr noundef %349, i64 noundef 4) #9
  store i32 1, ptr %350, align 4, !tbaa !136
  %351 = load ptr, ptr %323, align 8, !tbaa !73
  call void @BLI_ghash_insert(ptr noundef %351, ptr noundef %348, ptr noundef nonnull %350) #9
  br label %355

352:                                              ; preds = %337
  %353 = load i32, ptr %343, align 4, !tbaa !136
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %343, align 4, !tbaa !136
  br label %355

355:                                              ; preds = %345, %352
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %356

356:                                              ; preds = %355, %317
  %357 = load ptr, ptr %99, align 8, !tbaa !224
  %358 = getelementptr inbounds i32, ptr %357, i64 %101
  %359 = load i32, ptr %358, align 4, !tbaa !136
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %358, align 4, !tbaa !136
  br label %361

361:                                              ; preds = %105, %356, %98, %94
  ret void
}

declare i32 @testclip(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!34 = !{!35, !38, i64 40}
!35 = !{!"StrandSegment", !36, i64 0, !38, i64 32, !38, i64 40, !38, i64 48, !39, i64 56, !40, i64 60, !40, i64 252, !41, i64 444}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!"StrandPoint", !39, i64 0, !36, i64 4, !36, i64 16, !36, i64 28, !39, i64 40, !39, i64 44, !36, i64 48, !36, i64 60, !39, i64 72, !36, i64 76, !36, i64 88, !36, i64 100, !36, i64 116, !36, i64 132, !36, i64 144, !41, i64 156, !41, i64 160, !36, i64 164, !39, i64 180, !39, i64 184, !39, i64 188}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !38, i64 48}
!43 = !{!"StrandBuffer", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !41, i64 160, !41, i64 164}
!44 = !{!40, !39, i64 0}
!45 = !{!43, !41, i64 72}
!46 = !{!38, !38, i64 0}
!47 = !{!39, !39, i64 0}
!48 = !{!35, !38, i64 48}
!49 = !{!50, !51, i64 216}
!50 = !{!"ObjectInstanceRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !51, i64 216, !36, i64 220, !36, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !41, i64 264, !38, i64 272, !41, i64 280}
!51 = !{!"short", !36, i64 0}
!52 = !{!53, !39, i64 12}
!53 = !{!"StrandVert", !36, i64 0, !39, i64 12}
!54 = !{!40, !39, i64 40}
!55 = !{!40, !39, i64 72}
!56 = !{!57, !39, i64 444}
!57 = !{!"Material", !58, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !59, i64 224, !60, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !51, i64 356, !51, i64 358, !51, i64 360, !36, i64 362, !36, i64 363, !39, i64 364, !39, i64 368, !51, i64 372, !51, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !51, i64 392, !51, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !51, i64 412, !51, i64 414, !51, i64 416, !51, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !36, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !51, i64 544, !51, i64 546, !51, i64 548, !36, i64 550, !36, i64 551, !51, i64 552, !51, i64 554, !39, i64 556, !39, i64 560, !36, i64 564, !39, i64 580, !39, i64 584, !51, i64 588, !51, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !51, i64 612, !51, i64 614, !39, i64 616, !39, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !51, i64 820, !51, i64 822, !36, i64 824, !36, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !51, i64 876, !51, i64 878, !41, i64 880, !51, i64 884, !51, i64 886, !36, i64 888, !51, i64 904, !51, i64 906, !51, i64 908, !51, i64 910, !51, i64 912, !36, i64 914, !38, i64 920, !61, i64 928}
!58 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !51, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!59 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!60 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!61 = !{!"ListBase", !38, i64 0, !38, i64 8}
!62 = !{!57, !39, i64 436}
!63 = !{!57, !39, i64 440}
!64 = !{!40, !39, i64 44}
!65 = !{!43, !38, i64 40}
!66 = !{!35, !38, i64 32}
!67 = !{!40, !39, i64 188}
!68 = !{!43, !41, i64 160}
!69 = !{!43, !41, i64 164}
!70 = !{!43, !39, i64 84}
!71 = !{!72, !38, i64 0}
!72 = !{!"StrandShadeCache", !38, i64 0, !38, i64 8, !38, i64 16}
!73 = !{!72, !38, i64 8}
!74 = !{!72, !38, i64 16}
!75 = !{i64 0, i64 16, !76, i64 16, i64 16, !76, i64 32, i64 4, !47, i64 36, i64 4, !47, i64 40, i64 4, !47, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 16, !76, i64 108, i64 12, !76, i64 120, i64 12, !76, i64 132, i64 12, !76, i64 144, i64 12, !76, i64 156, i64 12, !76, i64 168, i64 12, !76, i64 180, i64 16, !76, i64 196, i64 16, !76}
!76 = !{!36, !36, i64 0}
!77 = !{i64 0, i64 12, !76, i64 12, i64 16, !76, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 36, i64 4, !47, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 16, !76, i64 104, i64 12, !76, i64 116, i64 12, !76, i64 128, i64 12, !76, i64 140, i64 12, !76, i64 152, i64 12, !76, i64 164, i64 12, !76, i64 176, i64 16, !76, i64 192, i64 16, !76}
!78 = !{i64 0, i64 8, !76, i64 8, i64 16, !76, i64 24, i64 4, !47, i64 28, i64 4, !47, i64 32, i64 4, !47, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 16, !76, i64 100, i64 12, !76, i64 112, i64 12, !76, i64 124, i64 12, !76, i64 136, i64 12, !76, i64 148, i64 12, !76, i64 160, i64 12, !76, i64 172, i64 16, !76, i64 188, i64 16, !76}
!79 = !{i64 0, i64 4, !76, i64 4, i64 16, !76, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 4, !47, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 16, !76, i64 96, i64 12, !76, i64 108, i64 12, !76, i64 120, i64 12, !76, i64 132, i64 12, !76, i64 144, i64 12, !76, i64 156, i64 12, !76, i64 168, i64 16, !76, i64 184, i64 16, !76}
!80 = !{i64 0, i64 16, !76, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 16, !76, i64 92, i64 12, !76, i64 104, i64 12, !76, i64 116, i64 12, !76, i64 128, i64 12, !76, i64 140, i64 12, !76, i64 152, i64 12, !76, i64 164, i64 16, !76, i64 180, i64 16, !76}
!81 = !{i64 0, i64 12, !76, i64 12, i64 4, !47, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 16, !76, i64 88, i64 12, !76, i64 100, i64 12, !76, i64 112, i64 12, !76, i64 124, i64 12, !76, i64 136, i64 12, !76, i64 148, i64 12, !76, i64 160, i64 16, !76, i64 176, i64 16, !76}
!82 = !{i64 0, i64 8, !76, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 4, !47, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 16, !76, i64 84, i64 12, !76, i64 96, i64 12, !76, i64 108, i64 12, !76, i64 120, i64 12, !76, i64 132, i64 12, !76, i64 144, i64 12, !76, i64 156, i64 16, !76, i64 172, i64 16, !76}
!83 = !{i64 0, i64 4, !76, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 16, !76, i64 80, i64 12, !76, i64 92, i64 12, !76, i64 104, i64 12, !76, i64 116, i64 12, !76, i64 128, i64 12, !76, i64 140, i64 12, !76, i64 152, i64 16, !76, i64 168, i64 16, !76}
!84 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 16, !76, i64 72, i64 12, !76, i64 84, i64 12, !76, i64 96, i64 12, !76, i64 108, i64 12, !76, i64 120, i64 12, !76, i64 132, i64 12, !76, i64 144, i64 16, !76, i64 160, i64 16, !76}
!85 = !{i64 0, i64 4, !47, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 16, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 12, !76, i64 104, i64 12, !76, i64 116, i64 12, !76, i64 128, i64 12, !76, i64 140, i64 16, !76, i64 156, i64 16, !76}
!86 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 16, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 12, !76, i64 100, i64 12, !76, i64 112, i64 12, !76, i64 124, i64 12, !76, i64 136, i64 16, !76, i64 152, i64 16, !76}
!87 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 16, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 12, !76, i64 96, i64 12, !76, i64 108, i64 12, !76, i64 120, i64 12, !76, i64 132, i64 16, !76, i64 148, i64 16, !76}
!88 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 16, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 12, !76, i64 104, i64 12, !76, i64 116, i64 12, !76, i64 128, i64 16, !76, i64 144, i64 16, !76}
!89 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 16, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 12, !76, i64 100, i64 12, !76, i64 112, i64 12, !76, i64 124, i64 16, !76, i64 140, i64 16, !76}
!90 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 16, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 12, !76, i64 96, i64 12, !76, i64 108, i64 12, !76, i64 120, i64 16, !76, i64 136, i64 16, !76}
!91 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 16, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 12, !76, i64 104, i64 12, !76, i64 116, i64 16, !76, i64 132, i64 16, !76}
!92 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 16, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 12, !76, i64 100, i64 12, !76, i64 112, i64 16, !76, i64 128, i64 16, !76}
!93 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 16, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 12, !76, i64 96, i64 12, !76, i64 108, i64 16, !76, i64 124, i64 16, !76}
!94 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 16, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 12, !76, i64 104, i64 16, !76, i64 120, i64 16, !76}
!95 = !{i64 0, i64 12, !76, i64 12, i64 16, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 12, !76, i64 100, i64 16, !76, i64 116, i64 16, !76}
!96 = !{i64 0, i64 8, !76, i64 8, i64 16, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 12, !76, i64 96, i64 16, !76, i64 112, i64 16, !76}
!97 = !{i64 0, i64 4, !76, i64 4, i64 16, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 12, !76, i64 92, i64 16, !76, i64 108, i64 16, !76}
!98 = !{i64 0, i64 16, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 12, !76, i64 76, i64 12, !76, i64 88, i64 16, !76, i64 104, i64 16, !76}
!99 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 12, !76, i64 84, i64 16, !76, i64 100, i64 16, !76}
!100 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 12, !76, i64 80, i64 16, !76, i64 96, i64 16, !76}
!101 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 12, !76, i64 72, i64 16, !76, i64 88, i64 16, !76}
!102 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 12, !76, i64 68, i64 16, !76, i64 84, i64 16, !76}
!103 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 12, !76, i64 64, i64 16, !76, i64 80, i64 16, !76}
!104 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 12, !76, i64 60, i64 16, !76, i64 76, i64 16, !76}
!105 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 12, !76, i64 56, i64 16, !76, i64 72, i64 16, !76}
!106 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 12, !76, i64 52, i64 16, !76, i64 68, i64 16, !76}
!107 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 12, !76, i64 48, i64 16, !76, i64 64, i64 16, !76}
!108 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 12, !76, i64 44, i64 16, !76, i64 60, i64 16, !76}
!109 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 12, !76, i64 40, i64 16, !76, i64 56, i64 16, !76}
!110 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 12, !76, i64 36, i64 16, !76, i64 52, i64 16, !76}
!111 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 12, !76, i64 32, i64 16, !76, i64 48, i64 16, !76}
!112 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 12, !76, i64 28, i64 16, !76, i64 44, i64 16, !76}
!113 = !{i64 0, i64 12, !76, i64 12, i64 12, !76, i64 24, i64 16, !76, i64 40, i64 16, !76}
!114 = !{i64 0, i64 8, !76, i64 8, i64 12, !76, i64 20, i64 16, !76, i64 36, i64 16, !76}
!115 = !{i64 0, i64 4, !76, i64 4, i64 12, !76, i64 16, i64 16, !76, i64 32, i64 16, !76}
!116 = !{i64 0, i64 12, !76, i64 12, i64 16, !76, i64 28, i64 16, !76}
!117 = !{i64 0, i64 8, !76, i64 8, i64 16, !76, i64 24, i64 16, !76}
!118 = !{i64 0, i64 4, !76, i64 4, i64 16, !76, i64 20, i64 16, !76}
!119 = !{i64 0, i64 16, !76, i64 16, i64 16, !76}
!120 = !{i64 0, i64 12, !76, i64 12, i64 16, !76}
!121 = !{i64 0, i64 8, !76, i64 8, i64 16, !76}
!122 = !{i64 0, i64 4, !76, i64 4, i64 16, !76}
!123 = !{!43, !39, i64 88}
!124 = !{!125, !39, i64 32}
!125 = !{!"ShadeResult", !36, i64 0, !36, i64 16, !39, i64 32, !39, i64 36, !39, i64 40, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 196}
!126 = !{!127, !36, i64 57}
!127 = !{!"VlakRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !38, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !41, i64 60}
!128 = !{!57, !41, i64 396}
!129 = !{!130, !38, i64 8}
!130 = !{!"ShadeInput", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !36, i64 44, !51, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !51, i64 88, !51, i64 90, !51, i64 92, !51, i64 94, !51, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !39, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !39, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !39, i64 1256, !39, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !39, i64 1336, !39, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !36, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !36, i64 1416, !39, i64 1428, !36, i64 1432, !36, i64 1433, !51, i64 1434, !51, i64 1436, !51, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !38, i64 1456, !38, i64 1464}
!131 = !{!130, !38, i64 16}
!132 = !{!130, !38, i64 24}
!133 = !{!50, !38, i64 16}
!134 = !{!130, !38, i64 32}
!135 = !{!130, !51, i64 1434}
!136 = !{!41, !41, i64 0}
!137 = !{!130, !41, i64 1404}
!138 = !{!130, !41, i64 1388}
!139 = !{!140, !41, i64 28}
!140 = !{!"StrandRen", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!141 = !{!140, !38, i64 0}
!142 = !{!143, !51, i64 96}
!143 = !{!"Render", !38, i64 0, !38, i64 8, !36, i64 16, !41, i64 92, !51, i64 96, !51, i64 98, !51, i64 100, !51, i64 102, !36, i64 104, !38, i64 112, !38, i64 120, !61, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !144, i64 156, !145, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !39, i64 544, !39, i64 548, !38, i64 552, !36, i64 560, !36, i64 816, !38, i64 1072, !36, i64 1080, !38, i64 1088, !38, i64 1096, !146, i64 1104, !153, i64 5088, !38, i64 5616, !41, i64 5624, !41, i64 5628, !61, i64 5632, !38, i64 5648, !38, i64 5656, !38, i64 5664, !38, i64 5672, !39, i64 5680, !38, i64 5688, !61, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !38, i64 5744, !61, i64 5752, !61, i64 5768, !61, i64 5784, !38, i64 5800, !61, i64 5808, !41, i64 5824, !38, i64 5832, !38, i64 5840, !38, i64 5848, !38, i64 5856, !38, i64 5864, !61, i64 5872, !38, i64 5888, !61, i64 5896, !61, i64 5912, !38, i64 5928, !38, i64 5936, !38, i64 5944, !38, i64 5952, !38, i64 5960, !38, i64 5968, !38, i64 5976, !38, i64 5984, !38, i64 5992, !38, i64 6000, !38, i64 6008, !38, i64 6016, !38, i64 6024, !38, i64 6032, !38, i64 6040, !38, i64 6048, !38, i64 6056, !154, i64 6064, !38, i64 6216, !38, i64 6224, !38, i64 6232}
!144 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!145 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!146 = !{!"RenderData", !147, i64 0, !38, i64 248, !38, i64 256, !150, i64 264, !151, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !51, i64 432, !51, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !41, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !41, i64 484, !41, i64 488, !51, i64 492, !51, i64 494, !41, i64 496, !41, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !145, i64 544, !145, i64 560, !144, i64 576, !61, i64 592, !51, i64 608, !51, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !39, i64 660, !39, i64 664, !51, i64 668, !51, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !41, i64 1704, !51, i64 1708, !51, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !51, i64 2524, !51, i64 2526, !39, i64 2528, !39, i64 2532, !51, i64 2536, !51, i64 2538, !39, i64 2540, !51, i64 2544, !51, i64 2546, !41, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !39, i64 2560, !39, i64 2564, !38, i64 2568, !41, i64 2576, !39, i64 2580, !36, i64 2584, !152, i64 2616, !41, i64 3976, !41, i64 3980}
!147 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !51, i64 8, !51, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !148, i64 24, !149, i64 184}
!148 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !38, i64 144, !38, i64 152}
!149 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!150 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !51, i64 48, !51, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!151 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !38, i64 64}
!152 = !{!"BakeData", !147, i64 0, !36, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!153 = !{!"World", !58, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !51, i64 132, !51, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !51, i64 200, !51, i64 202, !51, i64 204, !51, i64 206, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !51, i64 264, !51, i64 266, !51, i64 268, !51, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !51, i64 288, !51, i64 290, !51, i64 292, !51, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !51, i64 324, !51, i64 326, !51, i64 328, !51, i64 330, !51, i64 332, !51, i64 334, !38, i64 336, !38, i64 344, !38, i64 352, !36, i64 360, !51, i64 504, !51, i64 506, !36, i64 508, !38, i64 512, !38, i64 520}
!154 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !51, i64 36, !51, i64 38, !36, i64 40, !155, i64 48, !155, i64 56, !38, i64 64, !38, i64 72, !36, i64 80, !39, i64 144, !39, i64 148}
!155 = !{!"double", !36, i64 0}
!156 = !{!130, !41, i64 1444}
!157 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!158 = !{!40, !39, i64 180}
!159 = !{!40, !39, i64 184}
!160 = !{i32 0, i32 2}
!161 = !{!43, !41, i64 76}
!162 = !{!35, !39, i64 56}
!163 = !{!164, !41, i64 80}
!164 = !{!"StrandPart", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !38, i64 72, !41, i64 80, !38, i64 88, !36, i64 96, !36, i64 108, !38, i64 120}
!165 = !{!164, !38, i64 72}
!166 = !{!164, !41, i64 64}
!167 = distinct !{!167, !168, !169}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{!143, !38, i64 5800}
!171 = distinct !{!171, !168, !169}
!172 = !{!143, !38, i64 6048}
!173 = !{!143, !38, i64 6056}
!174 = !{!143, !41, i64 5732}
!175 = !{!164, !38, i64 0}
!176 = !{!177, !41, i64 128}
!177 = !{!"RenderPart", !38, i64 0, !38, i64 8, !38, i64 16, !61, i64 24, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !144, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !38, i64 152}
!178 = !{!164, !41, i64 56}
!179 = !{!177, !41, i64 132}
!180 = !{!164, !41, i64 60}
!181 = !{!164, !38, i64 16}
!182 = !{!164, !38, i64 8}
!183 = !{!177, !38, i64 72}
!184 = !{!164, !38, i64 48}
!185 = !{!177, !38, i64 56}
!186 = !{!164, !38, i64 32}
!187 = !{!177, !38, i64 64}
!188 = !{!164, !38, i64 40}
!189 = !{!164, !38, i64 120}
!190 = !{!164, !41, i64 68}
!191 = !{!192, !39, i64 72}
!192 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !41, i64 168, !39, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !39, i64 188, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216}
!193 = !{!192, !39, i64 76}
!194 = !{!177, !41, i64 112}
!195 = !{!192, !39, i64 80}
!196 = !{!177, !41, i64 120}
!197 = !{!192, !39, i64 84}
!198 = !{!192, !38, i64 160}
!199 = !{!177, !41, i64 116}
!200 = !{!177, !41, i64 124}
!201 = !{!202, !38, i64 144}
!202 = !{!"ObjectRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !36, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !36, i64 180, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272}
!203 = !{!43, !41, i64 64}
!204 = !{!57, !41, i64 404}
!205 = !{!43, !39, i64 92}
!206 = !{!43, !41, i64 36}
!207 = !{!43, !38, i64 24}
!208 = !{!209, !41, i64 0}
!209 = !{!"StrandBound", !41, i64 0, !41, i64 4, !36, i64 8}
!210 = !{!209, !41, i64 4}
!211 = !{!140, !41, i64 16}
!212 = !{!213, !41, i64 8}
!213 = !{!"StrandSortSegment", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !39, i64 20}
!214 = !{!213, !41, i64 12}
!215 = !{!213, !41, i64 16}
!216 = !{!213, !39, i64 20}
!217 = !{!213, !38, i64 0}
!218 = distinct !{!218, !168, !169}
!219 = distinct !{!219, !168, !169}
!220 = distinct !{!220, !168, !169}
!221 = distinct !{!221, !168, !169}
!222 = !{i64 0, i64 8, !46, i64 8, i64 4, !136, i64 12, i64 4, !136, i64 16, i64 4, !136, i64 20, i64 4, !47}
!223 = distinct !{!223, !168, !169}
!224 = !{!164, !38, i64 24}
!225 = !{!140, !38, i64 8}
!226 = !{!43, !39, i64 80}
!227 = !{!35, !41, i64 444}
!228 = !{!164, !38, i64 88}
!229 = distinct !{!229, !168, !169}
!230 = !{!231, !38, i64 1104}
!231 = !{!"DerivedMesh", !232, i64 0, !232, i64 200, !232, i64 400, !232, i64 600, !232, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !39, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !36, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!232 = !{!"CustomData", !38, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!233 = !{!231, !38, i64 1120}
!234 = !{!202, !38, i64 16}
!235 = !{!236, !38, i64 32}
!236 = !{!"StrandSurface", !38, i64 0, !38, i64 8, !202, i64 16, !38, i64 296, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !38, i64 336, !38, i64 344, !41, i64 352, !41, i64 356}
!237 = !{!236, !38, i64 40}
!238 = !{!202, !38, i64 24}
!239 = !{!236, !41, i64 56}
!240 = !{!202, !41, i64 40}
!241 = !{!236, !41, i64 352}
!242 = !{!236, !41, i64 356}
!243 = distinct !{!243, !168, !169}
!244 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 4, !136, i64 44, i64 4, !136, i64 48, i64 4, !136, i64 52, i64 4, !136, i64 56, i64 24, !76, i64 80, i64 4, !136, i64 84, i64 4, !136, i64 88, i64 4, !136, i64 92, i64 4, !136, i64 96, i64 4, !136, i64 100, i64 4, !136, i64 104, i64 4, !136, i64 108, i64 4, !136, i64 112, i64 8, !46, i64 120, i64 8, !46, i64 128, i64 8, !46, i64 136, i64 8, !46, i64 144, i64 8, !46, i64 152, i64 8, !46, i64 160, i64 8, !46, i64 168, i64 4, !136, i64 172, i64 4, !136, i64 176, i64 4, !136, i64 180, i64 64, !76, i64 248, i64 8, !46, i64 256, i64 8, !46, i64 264, i64 8, !46, i64 272, i64 8, !46}
!245 = !{!236, !38, i64 296}
!246 = !{!236, !38, i64 312}
!247 = !{!236, !38, i64 320}
!248 = !{!236, !38, i64 328}
!249 = !{!236, !38, i64 336}
!250 = !{!236, !38, i64 304}
!251 = !{!236, !38, i64 344}
!252 = !{!231, !38, i64 1168}
!253 = distinct !{!253, !168, !169}
!254 = !{!231, !38, i64 1184}
!255 = !{!256, !41, i64 0}
!256 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !51, i64 16, !36, i64 18, !36, i64 19}
!257 = !{!256, !41, i64 4}
!258 = !{!256, !41, i64 8}
!259 = !{!256, !41, i64 12}
!260 = distinct !{!260, !168, !169}
!261 = distinct !{!261, !168, !169}
!262 = distinct !{!262, !168, !169}
!263 = !{!264, !264, i64 0}
!264 = !{!"long", !36, i64 0}
!265 = !{!266, !51, i64 24}
!266 = !{!"PixStr", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !51, i64 24, !51, i64 26}
!267 = !{!266, !41, i64 16}
!268 = !{!266, !38, i64 0}
!269 = distinct !{!269, !168, !169}
!270 = !{!51, !51, i64 0}
!271 = !{!192, !41, i64 184}
!272 = !{!273, !38, i64 16}
!273 = !{!"APixstrMain", !38, i64 0, !38, i64 8, !38, i64 16}
!274 = !{!192, !38, i64 152}
!275 = !{i64 0, i64 8, !76, i64 8, i64 16, !76, i64 24, i64 16, !76, i64 40, i64 16, !76, i64 56, i64 16, !76, i64 72, i64 16, !76, i64 88, i64 16, !76, i64 104, i64 8, !46}
!276 = !{!277, !38, i64 104}
!277 = !{!"APixstrand", !36, i64 0, !36, i64 8, !36, i64 24, !36, i64 40, !36, i64 56, !36, i64 72, !36, i64 88, !38, i64 104}
!278 = distinct !{!278, !168, !169}
