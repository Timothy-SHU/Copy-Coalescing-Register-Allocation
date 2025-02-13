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
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.GHashPair = type { ptr, ptr }
%struct.StrandCacheEntry = type { %struct.GHashPair, %struct.ShadeResult }
%struct.StrandPart = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, [3 x float], [3 x float], ptr }
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
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @strand_eval_point(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [3 x float]], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load float, ptr %1, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !45
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 2
  %16 = load ptr, ptr %0, align 8, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %16) #15
  %17 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1
  %18 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %19) #15
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2
  %21 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %22) #15
  %23 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3
  %24 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef %25) #15
  %26 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %27, i64 0, i32 11
  %29 = load i16, ptr %28, align 8, !tbaa !48
  %30 = and i16 %29, 3
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %27, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %33, ptr noundef nonnull %3) #16
  %34 = load ptr, ptr %26, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %34, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %17) #16
  %36 = load ptr, ptr %26, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %36, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef nonnull %20) #16
  %38 = load ptr, ptr %26, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %38, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %39, ptr noundef nonnull %23) #16
  br label %40

40:                                               ; preds = %32, %2
  %41 = fcmp oeq float %10, 0.000000e+00
  br i1 %41, label %42, label %59

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %17) #15
  %44 = load ptr, ptr %18, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.StrandVert, ptr %44, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !51
  %47 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %46, ptr %47, align 4, !tbaa !53
  %48 = load ptr, ptr %21, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.StrandVert, ptr %48, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !51
  %51 = load ptr, ptr %0, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.StrandVert, ptr %51, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = fsub float %50, %53
  %55 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 8
  store float %54, ptr %55, align 4, !tbaa !54
  %56 = icmp eq ptr %51, %44
  br i1 %56, label %126, label %57

57:                                               ; preds = %42
  %58 = fmul float %54, 5.000000e-01
  store float %58, ptr %55, align 4, !tbaa !54
  br label %126

59:                                               ; preds = %40
  %60 = fcmp oeq float %10, 1.000000e+00
  br i1 %60, label %61, label %78

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %20) #15
  %63 = load ptr, ptr %21, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.StrandVert, ptr %63, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !51
  %66 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %65, ptr %66, align 4, !tbaa !53
  %67 = load ptr, ptr %24, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.StrandVert, ptr %67, i64 0, i32 1
  %69 = load float, ptr %68, align 4, !tbaa !51
  %70 = load ptr, ptr %18, align 8, !tbaa !46
  %71 = getelementptr inbounds %struct.StrandVert, ptr %70, i64 0, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !51
  %73 = fsub float %69, %72
  %74 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 8
  store float %73, ptr %74, align 4, !tbaa !54
  %75 = icmp eq ptr %67, %63
  br i1 %75, label %126, label %76

76:                                               ; preds = %61
  %77 = fmul float %73, 5.000000e-01
  store float %77, ptr %74, align 4, !tbaa !54
  br label %126

78:                                               ; preds = %59
  call void @key_curve_position_weights(float noundef %10, ptr noundef nonnull %4, i32 noundef %15) #16
  %79 = load float, ptr %4, align 16, !tbaa !55
  %80 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !55
  %82 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !55
  %86 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  %87 = load <2 x float>, ptr %3, align 16, !tbaa !55
  %88 = load <2 x float>, ptr %17, align 4, !tbaa !55
  %89 = insertelement <2 x float> poison, float %81, i64 0
  %90 = shufflevector <2 x float> %89, <2 x float> poison, <2 x i32> zeroinitializer
  %91 = fmul <2 x float> %90, %88
  %92 = insertelement <2 x float> poison, float %79, i64 0
  %93 = shufflevector <2 x float> %92, <2 x float> poison, <2 x i32> zeroinitializer
  %94 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %93, <2 x float> %87, <2 x float> %91)
  %95 = load <2 x float>, ptr %20, align 8, !tbaa !55
  %96 = insertelement <2 x float> poison, float %83, i64 0
  %97 = shufflevector <2 x float> %96, <2 x float> poison, <2 x i32> zeroinitializer
  %98 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %97, <2 x float> %95, <2 x float> %94)
  %99 = load <2 x float>, ptr %23, align 4, !tbaa !55
  %100 = insertelement <2 x float> poison, float %85, i64 0
  %101 = shufflevector <2 x float> %100, <2 x float> poison, <2 x i32> zeroinitializer
  %102 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %101, <2 x float> %99, <2 x float> %98)
  store <2 x float> %102, ptr %86, align 4, !tbaa !55
  %103 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %104 = load float, ptr %103, align 8, !tbaa !55
  %105 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !55
  %107 = fmul float %81, %106
  %108 = call float @llvm.fmuladd.f32(float %79, float %104, float %107)
  %109 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %110 = load float, ptr %109, align 16, !tbaa !55
  %111 = call float @llvm.fmuladd.f32(float %83, float %110, float %108)
  %112 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !55
  %114 = call float @llvm.fmuladd.f32(float %85, float %113, float %111)
  %115 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  store float %114, ptr %115, align 4, !tbaa !55
  %116 = fsub float 1.000000e+00, %10
  %117 = load ptr, ptr %18, align 8, !tbaa !46
  %118 = getelementptr inbounds %struct.StrandVert, ptr %117, i64 0, i32 1
  %119 = load float, ptr %118, align 4, !tbaa !51
  %120 = load ptr, ptr %21, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.StrandVert, ptr %120, i64 0, i32 1
  %122 = load float, ptr %121, align 4, !tbaa !51
  %123 = fmul float %10, %122
  %124 = call float @llvm.fmuladd.f32(float %116, float %119, float %123)
  %125 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  store float %124, ptr %125, align 4, !tbaa !53
  br label %126

126:                                              ; preds = %78, %76, %61, %42, %57
  call void @key_curve_tangent_weights(float noundef %10, ptr noundef nonnull %4, i32 noundef %15) #16
  %127 = load float, ptr %4, align 16, !tbaa !55
  %128 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !55
  %130 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %131 = load float, ptr %130, align 8, !tbaa !55
  %132 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %133 = load float, ptr %132, align 4, !tbaa !55
  %134 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 6
  %135 = load <2 x float>, ptr %3, align 16, !tbaa !55
  %136 = load <2 x float>, ptr %17, align 4, !tbaa !55
  %137 = insertelement <2 x float> poison, float %129, i64 0
  %138 = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> zeroinitializer
  %139 = fmul <2 x float> %138, %136
  %140 = insertelement <2 x float> poison, float %127, i64 0
  %141 = shufflevector <2 x float> %140, <2 x float> poison, <2 x i32> zeroinitializer
  %142 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %141, <2 x float> %135, <2 x float> %139)
  %143 = load <2 x float>, ptr %20, align 8, !tbaa !55
  %144 = insertelement <2 x float> poison, float %131, i64 0
  %145 = shufflevector <2 x float> %144, <2 x float> poison, <2 x i32> zeroinitializer
  %146 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %145, <2 x float> %143, <2 x float> %142)
  %147 = load <2 x float>, ptr %23, align 4, !tbaa !55
  %148 = insertelement <2 x float> poison, float %133, i64 0
  %149 = shufflevector <2 x float> %148, <2 x float> poison, <2 x i32> zeroinitializer
  %150 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %149, <2 x float> %147, <2 x float> %146)
  store <2 x float> %150, ptr %134, align 4, !tbaa !55
  %151 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %152 = load float, ptr %151, align 8, !tbaa !55
  %153 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !55
  %155 = fmul float %129, %154
  %156 = call float @llvm.fmuladd.f32(float %127, float %152, float %155)
  %157 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %158 = load float, ptr %157, align 16, !tbaa !55
  %159 = call float @llvm.fmuladd.f32(float %131, float %158, float %156)
  %160 = getelementptr inbounds [4 x [3 x float]], ptr %3, i64 0, i64 3, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = call float @llvm.fmuladd.f32(float %133, float %161, float %159)
  %163 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 6, i64 2
  store float %162, ptr %163, align 4, !tbaa !55
  %164 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 3
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %164, ptr noundef nonnull %134) #15
  %165 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 2
  %166 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %165, ptr noundef nonnull %166) #15
  call fastcc void @negate_v3(ptr noundef nonnull %165) #15
  %167 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 4
  %168 = load float, ptr %167, align 4, !tbaa !53
  %169 = call fastcc float @strand_eval_width(ptr noundef %9, float noundef %168) #15
  %170 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 5
  store float %169, ptr %170, align 4, !tbaa !56
  %171 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !57
  %173 = getelementptr inbounds %struct.StrandSegment, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = call ptr @RE_strandren_get_simplify(ptr noundef %172, ptr noundef %174, i32 noundef 0) #16
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %126
  %178 = getelementptr inbounds float, ptr %175, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !55
  br label %180

180:                                              ; preds = %126, %177
  %181 = phi float [ %179, %177 ], [ 1.000000e+00, %126 ]
  %182 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 20
  store float %181, ptr %182, align 4, !tbaa !59
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %166, ptr noundef nonnull %164) #15
  %183 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 1, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !55
  %185 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 17
  %186 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 17, i64 2, i64 3
  %187 = load float, ptr %186, align 4, !tbaa !55
  %188 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 17, i64 3, i64 3
  %189 = load float, ptr %188, align 4, !tbaa !55
  %190 = call float @llvm.fmuladd.f32(float %184, float %187, float %189)
  %191 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 18
  %192 = load i32, ptr %191, align 8, !tbaa !60
  %193 = sitofp i32 %192 to float
  %194 = load float, ptr %5, align 4, !tbaa !55
  %195 = fmul float %194, %193
  %196 = load float, ptr %185, align 8, !tbaa !55
  %197 = fmul float %195, %196
  %198 = fdiv float %197, %190
  %199 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 19
  %200 = load i32, ptr %199, align 4, !tbaa !61
  %201 = sitofp i32 %200 to float
  %202 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !55
  %204 = fmul float %203, %201
  %205 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 17, i64 1, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !55
  %207 = fmul float %204, %206
  %208 = fdiv float %207, %190
  %209 = fmul float %208, %208
  %210 = call float @llvm.fmuladd.f32(float %198, float %198, float %209)
  %211 = call float @llvm.sqrt.f32(float %210)
  %212 = fcmp ogt float %211, 0.000000e+00
  br i1 %212, label %213, label %243

213:                                              ; preds = %180
  %214 = load i32, ptr %11, align 8, !tbaa !45
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %238, label %217

217:                                              ; preds = %213
  %218 = call fastcc float @len_v3(ptr noundef nonnull %5) #15
  %219 = fmul float %218, 2.000000e+00
  %220 = getelementptr inbounds %struct.StrandBuffer, ptr %7, i64 0, i32 14
  %221 = load float, ptr %220, align 4, !tbaa !62
  %222 = fmul float %219, %221
  %223 = fdiv float %222, %211
  %224 = load float, ptr %170, align 4, !tbaa !56
  %225 = fcmp olt float %224, %223
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = fdiv float %224, %223
  store float %227, ptr %182, align 4, !tbaa !59
  store float %223, ptr %170, align 4, !tbaa !56
  br label %228

228:                                              ; preds = %226, %217
  %229 = phi float [ %223, %226 ], [ %224, %217 ]
  br i1 %176, label %234, label %230

230:                                              ; preds = %228
  %231 = load float, ptr %175, align 4, !tbaa !55
  %232 = fmul float %231, %231
  %233 = fmul float %229, %232
  store float %233, ptr %170, align 4, !tbaa !56
  br label %234

234:                                              ; preds = %230, %228
  %235 = phi float [ %233, %230 ], [ %229, %228 ]
  %236 = fmul float %235, 5.000000e-01
  %237 = fdiv float %236, %218
  br label %241

238:                                              ; preds = %213
  %239 = load float, ptr %170, align 4, !tbaa !56
  %240 = fdiv float %239, %211
  br label %241

241:                                              ; preds = %238, %234
  %242 = phi float [ %237, %234 ], [ %240, %238 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %242) #15
  br label %243

243:                                              ; preds = %241, %180
  %244 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 9
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %244, ptr noundef nonnull %166, ptr noundef nonnull %5) #15
  %245 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 10
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %245, ptr noundef nonnull %166, ptr noundef nonnull %5) #15
  %246 = getelementptr inbounds %struct.StrandPoint, ptr %1, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %246, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !63 {
  %3 = load float, ptr %1, align 4, !tbaa !55
  store float %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @key_curve_tangent_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !64 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !65 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !55
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !55
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @strand_eval_width(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #5 !PGOFuncName !66 {
  %3 = fadd float %1, 1.000000e+00
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 65
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = fcmp olt float %6, 0.000000e+00
  %10 = fpext float %4 to double
  %11 = fadd float %6, 1.000000e+00
  %12 = fsub float 1.000000e+00, %6
  %13 = fdiv float 1.000000e+00, %12
  %14 = select i1 %9, float %11, float %13
  %15 = fpext float %14 to double
  %16 = tail call double @pow(double noundef %10, double noundef %15) #16
  %17 = fptrunc double %16 to float
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi float [ %4, %2 ], [ %17, %8 ]
  %20 = fsub float 1.000000e+00, %19
  %21 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 63
  %22 = load float, ptr %21, align 4, !tbaa !73
  %23 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 64
  %24 = load float, ptr %23, align 8, !tbaa !74
  %25 = fmul float %19, %24
  %26 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %25)
  ret float %26
}

; Function Attrs: optsize
declare ptr @RE_strandren_get_simplify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !75 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !55
  %15 = load float, ptr %8, align 4, !tbaa !55
  %16 = load float, ptr %2, align 4, !tbaa !55
  %17 = load float, ptr %1, align 4, !tbaa !55
  %18 = load float, ptr %6, align 4, !tbaa !55
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !55
  %23 = load float, ptr %1, align 4, !tbaa !55
  %24 = load float, ptr %10, align 4, !tbaa !55
  %25 = load float, ptr %4, align 4, !tbaa !55
  %26 = load float, ptr %2, align 4, !tbaa !55
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !76 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #15
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !77 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !55
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !78 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %2, align 4, !tbaa !55
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !79 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = load float, ptr %2, align 4, !tbaa !55
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @strand_shade_cache_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str) #16
  %3 = tail call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.1) #16
  store ptr %3, ptr %2, align 8, !tbaa !80
  %4 = tail call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.2) #16
  %5 = getelementptr inbounds %struct.StrandShadeCache, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !82
  %6 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.3) #16
  %7 = getelementptr inbounds %struct.StrandShadeCache, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !83
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_ghash_pair_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @strand_shade_cache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef %4, ptr noundef %5, ptr noundef null) #16
  %6 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  tail call void @BLI_memarena_free(ptr noundef %7) #16
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @strand_shade_segment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ShadeResult, align 4
  %9 = alloca %struct.ShadeResult, align 4
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %9) #14
  %10 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call fastcc void @strand_shade_get(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.ShadeSample, ptr %3, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %8, ptr noundef nonnull align 8 dereferenceable(212) %12, i64 212, i1 false), !tbaa.struct !84
  %13 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call fastcc void @strand_shade_get(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %14) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %9, ptr noundef nonnull align 8 dereferenceable(212) %12, i64 212, i1 false), !tbaa.struct !84
  call fastcc void @interpolate_shade_result(ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %4, ptr noundef nonnull %12, i32 noundef %6) #15
  %15 = getelementptr inbounds %struct.StrandSegment, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.StrandBuffer, ptr %16, i64 0, i32 15
  %18 = load float, ptr %17, align 8, !tbaa !86
  %19 = fcmp une float %18, -1.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = tail call float @llvm.fabs.f32(float %5)
  %22 = tail call float @powf(float noundef %21, float noundef %18) #16
  %23 = fsub float 1.000000e+00, %22
  tail call fastcc void @strand_apply_shaderesult_alpha(ptr noundef nonnull %12, float noundef %23) #15
  br label %24

24:                                               ; preds = %20, %7
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %8) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @strand_shade_get(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !87 {
  %6 = alloca %struct.StrandPoint, align 4
  %7 = alloca %struct.GHashPair, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.StrandSegment, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call fastcc { ptr, ptr } @strand_shade_hash_pair(ptr noundef %9, ptr noundef %4) #15
  %11 = extractvalue { ptr, ptr } %10, 0
  store ptr %11, ptr %7, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %7, i64 0, i32 1
  %13 = extractvalue { ptr, ptr } %10, 1
  store ptr %13, ptr %12, align 8
  %14 = load ptr, ptr %1, align 8, !tbaa !80
  %15 = call ptr @BLI_ghash_lookup(ptr noundef %14, ptr noundef nonnull %7) #16
  %16 = getelementptr inbounds %struct.StrandShadeCache, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = call ptr @BLI_ghash_lookup(ptr noundef %17, ptr noundef nonnull %7) #16
  %19 = icmp eq ptr %15, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, %4
  %24 = select i1 %23, float 0.000000e+00, float 1.000000e+00
  store float %24, ptr %6, align 4, !tbaa !44
  call void @strand_eval_point(ptr noundef nonnull %3, ptr noundef nonnull %6) #15
  call fastcc void @strand_shade_point(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %6) #15
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %26 = call ptr %25(i64 noundef 232, ptr noundef nonnull @.str.13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !88
  %27 = getelementptr inbounds %struct.StrandCacheEntry, ptr %26, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %27, ptr noundef nonnull align 8 dereferenceable(212) %28, i64 212, i1 false), !tbaa.struct !84
  %29 = load ptr, ptr %1, align 8, !tbaa !80
  call void @BLI_ghash_insert(ptr noundef %29, ptr noundef %26, ptr noundef %26) #16
  br label %33

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.ShadeSample, ptr %2, i64 0, i32 3
  %32 = getelementptr inbounds %struct.StrandCacheEntry, ptr %15, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %31, ptr noundef nonnull align 8 dereferenceable(212) %32, i64 212, i1 false), !tbaa.struct !84
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, ptr %18, align 4, !tbaa !89
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %18, align 4, !tbaa !89
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load ptr, ptr %1, align 8, !tbaa !80
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %40 = call zeroext i8 @BLI_ghash_remove(ptr noundef %38, ptr noundef nonnull %7, ptr noundef %39, ptr noundef null) #16
  %41 = load ptr, ptr %16, align 8, !tbaa !82
  %42 = call zeroext i8 @BLI_ghash_remove(ptr noundef %41, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #16
  br label %43

43:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @interpolate_shade_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !90 {
  %6 = fsub float 1.000000e+00, %2
  tail call fastcc void @interpolate_vec4(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %6, ptr noundef %3) #15
  %7 = and i32 %4, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 16
  %11 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16
  %12 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 16
  tail call fastcc void @interpolate_vec4(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %2, float noundef %6, ptr noundef nonnull %12) #15
  br label %13

13:                                               ; preds = %9, %5
  %14 = and i32 %4, -513
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %110, label %16

16:                                               ; preds = %13
  %17 = and i32 %4, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 4
  %21 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 4
  %22 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 4
  tail call fastcc void @interpolate_vec1(ptr noundef nonnull %20, ptr noundef nonnull %21, float noundef %2, float noundef %6, ptr noundef nonnull %22) #15
  br label %23

23:                                               ; preds = %19, %16
  %24 = and i32 %4, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 1
  tail call fastcc void @interpolate_vec4(ptr noundef nonnull %27, ptr noundef nonnull %28, float noundef %2, float noundef %6, ptr noundef nonnull %29) #15
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %4, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 15
  %35 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15
  %36 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 15
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %34, ptr noundef nonnull %35, float noundef %2, float noundef %6, ptr noundef nonnull %36) #15
  tail call fastcc void @normalize_v3(ptr noundef nonnull %36) #15
  br label %37

37:                                               ; preds = %33, %30
  %38 = and i32 %4, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 5
  %42 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  %43 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 5
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %41, ptr noundef nonnull %42, float noundef %2, float noundef %6, ptr noundef nonnull %43) #15
  br label %44

44:                                               ; preds = %40, %37
  %45 = and i32 %4, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 6
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 6
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %48, ptr noundef nonnull %49, float noundef %2, float noundef %6, ptr noundef nonnull %50) #15
  %51 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 7
  %52 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 7
  %53 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 7
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %51, ptr noundef nonnull %52, float noundef %2, float noundef %6, ptr noundef nonnull %53) #15
  br label %54

54:                                               ; preds = %47, %44
  %55 = and i32 %4, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 8
  %59 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %60 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 8
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %58, ptr noundef nonnull %59, float noundef %2, float noundef %6, ptr noundef nonnull %60) #15
  br label %61

61:                                               ; preds = %57, %54
  %62 = and i32 %4, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 9
  %66 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %67 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 9
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %65, ptr noundef nonnull %66, float noundef %2, float noundef %6, ptr noundef nonnull %67) #15
  br label %68

68:                                               ; preds = %64, %61
  %69 = and i32 %4, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 10
  %73 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %74 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 10
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %72, ptr noundef nonnull %73, float noundef %2, float noundef %6, ptr noundef nonnull %74) #15
  br label %75

75:                                               ; preds = %71, %68
  %76 = and i32 %4, 131072
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 11
  %80 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  %81 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 11
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %79, ptr noundef nonnull %80, float noundef %2, float noundef %6, ptr noundef nonnull %81) #15
  br label %82

82:                                               ; preds = %78, %75
  %83 = and i32 %4, 8192
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 12
  %87 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12
  %88 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 12
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %86, ptr noundef nonnull %87, float noundef %2, float noundef %6, ptr noundef nonnull %88) #15
  br label %89

89:                                               ; preds = %85, %82
  %90 = and i32 %4, 128
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 13
  %94 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  %95 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 13
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %93, ptr noundef nonnull %94, float noundef %2, float noundef %6, ptr noundef nonnull %95) #15
  br label %96

96:                                               ; preds = %92, %89
  %97 = and i32 %4, 1024
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 14
  %101 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  %102 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 14
  tail call fastcc void @interpolate_vec3(ptr noundef nonnull %100, ptr noundef nonnull %101, float noundef %2, float noundef %6, ptr noundef nonnull %102) #15
  br label %103

103:                                              ; preds = %99, %96
  %104 = and i32 %4, 16384
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 3
  %108 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 3
  %109 = getelementptr inbounds %struct.ShadeResult, ptr %3, i64 0, i32 3
  tail call fastcc void @interpolate_vec1(ptr noundef nonnull %107, ptr noundef nonnull %108, float noundef %2, float noundef %6, ptr noundef nonnull %109) #15
  br label %110

110:                                              ; preds = %103, %106, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @strand_apply_shaderesult_alpha(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !91 {
  %3 = fcmp olt float %1, 1.000000e+00
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = load <4 x float>, ptr %0, align 4, !tbaa !55
  %6 = insertelement <4 x float> poison, float %1, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = fmul <4 x float> %5, %7
  store <4 x float> %8, ptr %0, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 1
  %10 = load <4 x float>, ptr %9, align 4, !tbaa !55
  %11 = fmul <4 x float> %10, %7
  store <4 x float> %11, ptr %9, align 4, !tbaa !55
  %12 = getelementptr inbounds %struct.ShadeResult, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !92
  %14 = fmul float %13, %1
  store float %14, ptr %12, align 4, !tbaa !92
  br label %15

15:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @strand_shade_unref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.GHashPair, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = tail call fastcc { ptr, ptr } @strand_shade_hash_pair(ptr noundef %1, ptr noundef %2) #15
  %6 = extractvalue { ptr, ptr } %5, 0
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %8 = extractvalue { ptr, ptr } %5, 1
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = call ptr @BLI_ghash_lookup(ptr noundef %10, ptr noundef nonnull %4) #16
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4, !tbaa !89
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8, !tbaa !80
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %18 = call zeroext i8 @BLI_ghash_remove(ptr noundef %16, ptr noundef nonnull %4, ptr noundef %17, ptr noundef null) #16
  %19 = load ptr, ptr %9, align 8, !tbaa !82
  %20 = call zeroext i8 @BLI_ghash_remove(ptr noundef %19, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #16
  br label %21

21:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc { ptr, ptr } @strand_shade_hash_pair(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !94 {
  %3 = insertvalue { ptr, ptr } poison, ptr %0, 0
  %4 = insertvalue { ptr, ptr } %3, ptr %1, 1
  ret { ptr, ptr } %4
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @render_strand_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6
  store float 0.000000e+00, ptr %9, align 4, !tbaa !44
  store float 1.000000e+00, ptr %10, align 4, !tbaa !44
  tail call void @strand_eval_point(ptr noundef %5, ptr noundef nonnull %9) #15
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 17
  %12 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.StrandBuffer, ptr %8, i64 0, i32 19
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = sitofp i32 %16 to float
  tail call fastcc void @strand_project_point(ptr noundef nonnull %11, float noundef %14, float noundef %17, ptr noundef nonnull %9) #15
  tail call void @strand_eval_point(ptr noundef %5, ptr noundef nonnull %10) #15
  %18 = load i32, ptr %12, align 8, !tbaa !60
  %19 = sitofp i32 %18 to float
  %20 = load i32, ptr %15, align 4, !tbaa !61
  %21 = sitofp i32 %20 to float
  tail call fastcc void @strand_project_point(ptr noundef nonnull %11, float noundef %19, float noundef %21, ptr noundef nonnull %10) #15
  %22 = icmp eq ptr %2, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 9
  %25 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 11
  %26 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 13
  tail call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #15
  %27 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 10
  %28 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 12
  %29 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 5, i32 14
  tail call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #15
  %30 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 9
  %31 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 11
  %32 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 13
  tail call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #15
  %33 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 10
  %34 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 12
  %35 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 6, i32 14
  tail call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  br label %36

36:                                               ; preds = %6, %23
  %37 = tail call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 0) #15, !range !95
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call fastcc void @strand_render(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  br label %40

40:                                               ; preds = %39, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @strand_project_point(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !96 {
  %5 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 17
  tail call void @projectvert(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 17, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds %struct.StrandPoint, ptr %3, i64 0, i32 18
  %11 = load <2 x float>, ptr %6, align 4, !tbaa !55
  %12 = insertelement <2 x float> poison, float %9, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %11, %13
  %15 = insertelement <2 x float> poison, float %1, i64 0
  %16 = insertelement <2 x float> %15, float %2, i64 1
  %17 = fmul <2 x float> %14, %16
  %18 = fmul <2 x float> %17, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %18, ptr %10, align 4, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_strand_point_project(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !97 {
  tail call void @projectvert(ptr noundef %2, ptr noundef %0, ptr noundef %3) #16
  tail call void @hoco_to_zco(ptr noundef %1, ptr noundef %4, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !98 {
  %10 = alloca %struct.StrandPoint, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %10) #14
  %11 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 12
  %14 = load i32, ptr %13, align 4, !tbaa !99
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %89, label %16

16:                                               ; preds = %9
  %17 = load float, ptr %6, align 4, !tbaa !44
  %18 = load float, ptr %7, align 4, !tbaa !44
  %19 = fadd float %17, %18
  %20 = fmul float %19, 5.000000e-01
  store float %20, ptr %10, align 4, !tbaa !44
  call void @strand_eval_point(ptr noundef nonnull %5, ptr noundef nonnull %10) #15
  %21 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 17
  %22 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 18
  %23 = load i32, ptr %22, align 8, !tbaa !60
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds %struct.StrandBuffer, ptr %12, i64 0, i32 19
  %26 = load i32, ptr %25, align 4, !tbaa !61
  %27 = sitofp i32 %26 to float
  call fastcc void @strand_project_point(ptr noundef nonnull %21, float noundef %24, float noundef %27, ptr noundef nonnull %10) #15
  %28 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 18
  %29 = load float, ptr %28, align 4, !tbaa !100
  %30 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 18
  %31 = load float, ptr %30, align 4, !tbaa !100
  %32 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 19
  %33 = load float, ptr %32, align 4, !tbaa !101
  %34 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 19
  %35 = load float, ptr %34, align 4, !tbaa !101
  %36 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 18
  %37 = load float, ptr %36, align 4, !tbaa !100
  %38 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 19
  %39 = load float, ptr %38, align 4, !tbaa !101
  %40 = insertelement <2 x float> poison, float %37, i64 0
  %41 = insertelement <2 x float> %40, float %29, i64 1
  %42 = insertelement <2 x float> poison, float %29, i64 0
  %43 = insertelement <2 x float> %42, float %31, i64 1
  %44 = fsub <2 x float> %41, %43
  %45 = insertelement <2 x float> poison, float %39, i64 0
  %46 = insertelement <2 x float> %45, float %33, i64 1
  %47 = insertelement <2 x float> poison, float %33, i64 0
  %48 = insertelement <2 x float> %47, float %35, i64 1
  %49 = fsub <2 x float> %46, %48
  %50 = fmul <2 x float> %49, %49
  %51 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %44, <2 x float> %50)
  %52 = fcmp oeq <2 x float> %51, zeroinitializer
  %53 = extractelement <2 x i1> %52, i64 0
  %54 = extractelement <2 x i1> %52, i64 1
  %55 = select i1 %54, i1 true, i1 %53
  br i1 %55, label %89, label %56

56:                                               ; preds = %16
  %57 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %58 = fmul <2 x float> %57, %49
  %59 = extractelement <2 x float> %58, i64 0
  %60 = extractelement <2 x float> %44, i64 0
  %61 = extractelement <2 x float> %44, i64 1
  %62 = call float @llvm.fmuladd.f32(float %61, float %60, float %59)
  %63 = fmul float %62, %62
  %64 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 4
  %65 = load float, ptr %64, align 8, !tbaa !102
  %66 = extractelement <2 x float> %51, i64 1
  %67 = fmul float %66, %65
  %68 = extractelement <2 x float> %51, i64 0
  %69 = fmul float %68, %67
  %70 = fcmp ogt float %63, %69
  br i1 %70, label %89, label %71

71:                                               ; preds = %56
  %72 = icmp eq ptr %2, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 9
  %75 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 11
  %76 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 13
  call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %76) #15
  %77 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 10
  %78 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 12
  %79 = getelementptr inbounds %struct.StrandPoint, ptr %10, i64 0, i32 14
  call fastcc void @do_strand_point_project(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %79) #15
  br label %80

80:                                               ; preds = %71, %73
  %81 = add nsw i32 %8, 1
  %82 = call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10, i32 noundef %81) #15, !range !95
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  call fastcc void @strand_render(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %10) #15
  br label %85

85:                                               ; preds = %84, %80
  %86 = call fastcc i32 @strand_segment_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %7, i32 noundef %81) #15, !range !95
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call fastcc void @strand_render(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %7) #15
  br label %89

89:                                               ; preds = %85, %88, %56, %16, %9
  %90 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 0, %56 ], [ 1, %88 ], [ 1, %85 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %10) #14
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @strand_render(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !103 {
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = icmp eq ptr %3, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load float, ptr %7, align 4, !tbaa !44
  %14 = load float, ptr %6, align 4, !tbaa !44
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds %struct.StrandPart, ptr %3, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !104
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 14
  %21 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 13
  %22 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 13
  %23 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 14
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i32 [ 0, %19 ], [ %26, %24 ]
  tail call fastcc void @do_scanconvert_strand(ptr noundef nonnull %3, ptr noundef %4, float noundef %13, float noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, i32 noundef %25) #15
  %26 = add nuw nsw i32 %25, 1
  %27 = load i32, ptr %16, align 8, !tbaa !104
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %24, label %54, !llvm.loop !106

29:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  %30 = getelementptr inbounds %struct.StrandSegment, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = ptrtoint ptr %31 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 288
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.StrandSegment, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.StrandRen, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !122
  %43 = getelementptr inbounds %struct.StrandPoint, ptr %6, i64 0, i32 1
  call void @projectvert(ptr noundef nonnull %43, ptr noundef %2, ptr noundef nonnull %9) #16
  %44 = getelementptr inbounds %struct.StrandPoint, ptr %7, i64 0, i32 1
  call void @projectvert(ptr noundef nonnull %44, ptr noundef %2, ptr noundef nonnull %10) #16
  %45 = icmp sgt i32 %5, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %29
  %47 = zext nneg i32 %5 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  %50 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 %49
  call void @zbufsinglewire(ptr noundef %50, i32 noundef %38, i32 noundef %42, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %51 = add nuw nsw i64 %49, 1
  %52 = icmp eq i64 %51, %47
  br i1 %52, label %53, label %48, !llvm.loop !124

53:                                               ; preds = %48, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %54

54:                                               ; preds = %24, %12, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @zbuffer_strands_abuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, float noundef %11, i32 noundef %12, ptr noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.ZSpan, align 8
  %16 = alloca %struct.StrandPart, align 8
  %17 = alloca %struct.StrandSegment, align 8
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #14
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %22 = load ptr, ptr %21, align 8, !tbaa !125
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %24 = load ptr, ptr %23, align 8, !tbaa !126
  %25 = tail call i32 %22(ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %356

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %29 = load i32, ptr %28, align 4, !tbaa !127
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %356, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %32, i8 0, i64 96, i1 false)
  store ptr %0, ptr %16, align 8, !tbaa !128
  %33 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %34 = load i32, ptr %33, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 7
  store i32 %34, ptr %35, align 8, !tbaa !131
  %36 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %37 = load i32, ptr %36, align 4, !tbaa !132
  %38 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 8
  store i32 %37, ptr %38, align 4, !tbaa !133
  %39 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 2
  store ptr %2, ptr %39, align 8, !tbaa !134
  %40 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 1
  store ptr %15, ptr %40, align 8, !tbaa !135
  %41 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !136
  %43 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 6
  store ptr %42, ptr %43, align 8, !tbaa !137
  %44 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 6
  %45 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 4
  %46 = load <2 x ptr>, ptr %44, align 8, !tbaa !46
  store <2 x ptr> %46, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 16
  store ptr %13, ptr %47, align 8, !tbaa !138
  %48 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 10
  store i32 %12, ptr %48, align 4, !tbaa !139
  %49 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 11
  store ptr %10, ptr %49, align 8, !tbaa !140
  %50 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 12
  store i32 %9, ptr %50, align 8, !tbaa !104
  call void @zbuf_alloc_span(ptr noundef nonnull %15, i32 noundef %34, i32 noundef %37, float noundef %11) #16
  %51 = insertelement <2 x i32> poison, i32 %7, i64 0
  %52 = insertelement <2 x i32> %51, i32 %8, i64 1
  %53 = sitofp <2 x i32> %52 to <2 x float>
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %55 = getelementptr inbounds %struct.ZSpan, ptr %15, i64 0, i32 12
  %56 = fmul <2 x float> %53, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %56, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %58 = load i32, ptr %57, align 8, !tbaa !141
  %59 = getelementptr inbounds %struct.ZSpan, ptr %15, i64 0, i32 14
  %60 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !142
  %62 = insertelement <2 x i32> poison, i32 %58, i64 0
  %63 = insertelement <2 x i32> %62, i32 %61, i64 1
  %64 = sub nsw <2 x i32> zeroinitializer, %63
  %65 = sitofp <2 x i32> %64 to <2 x float>
  %66 = icmp eq i32 %12, 0
  %67 = fadd <2 x float> %65, <float -5.000000e-01, float -5.000000e-01>
  %68 = select i1 %66, <2 x float> %67, <2 x float> %65
  store <2 x float> %68, ptr %59, align 8, !tbaa !55
  %69 = getelementptr inbounds %struct.ZSpan, ptr %15, i64 0, i32 25
  store ptr %3, ptr %69, align 8, !tbaa !143
  %70 = xor <2 x i32> %52, <i32 -1, i32 -1>
  %71 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !145
  %73 = shl nsw i32 %72, 1
  %74 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !146
  %76 = shl nsw i32 %75, 1
  %77 = insertelement <4 x i32> poison, i32 %58, i64 0
  %78 = insertelement <4 x i32> %77, i32 %73, i64 1
  %79 = insertelement <4 x i32> %78, i32 %61, i64 2
  %80 = insertelement <4 x i32> %79, i32 %76, i64 3
  %81 = shufflevector <2 x i32> %52, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %82 = shufflevector <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>, <4 x i32> %81, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %83 = shl nsw <4 x i32> %80, %82
  %84 = sub <4 x i32> %80, %82
  %85 = shufflevector <4 x i32> %83, <4 x i32> %84, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %86 = shufflevector <2 x i32> %70, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %87 = shufflevector <4 x i32> %86, <4 x i32> <i32 poison, i32 1, i32 poison, i32 1>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %88 = add <4 x i32> %85, %87
  %89 = sitofp <4 x i32> %88 to <4 x float>
  %90 = fdiv <4 x float> %89, %54
  store <4 x float> %90, ptr %19, align 16, !tbaa !55
  %91 = call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.4) #16
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %257, label %95

95:                                               ; preds = %31
  %96 = getelementptr inbounds [4 x [4 x float]], ptr %20, i64 0, i64 1, i64 1
  %97 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 1
  %98 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 2
  %99 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  br label %100

100:                                              ; preds = %95, %251
  %101 = phi ptr [ %93, %95 ], [ %255, %251 ]
  %102 = phi i32 [ 0, %95 ], [ %253, %251 ]
  %103 = phi i32 [ 0, %95 ], [ %254, %251 ]
  %104 = phi ptr [ null, %95 ], [ %252, %251 ]
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %101, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = getelementptr inbounds %struct.ObjectRen, ptr %106, i64 0, i32 22
  %108 = load ptr, ptr %107, align 8, !tbaa !148
  %109 = icmp eq ptr %108, null
  br i1 %109, label %251, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.StrandBuffer, ptr %108, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !150
  %113 = and i32 %112, %4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %251, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %101, i64 0, i32 11
  %117 = load i16, ptr %116, align 8, !tbaa !48
  %118 = and i16 %117, 3
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %101, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %20, ptr noundef %6, ptr noundef nonnull %121) #16
  br label %123

122:                                              ; preds = %115
  call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef %6) #16
  br label %123

123:                                              ; preds = %122, %120
  %124 = load ptr, ptr %107, align 8, !tbaa !148
  %125 = getelementptr inbounds %struct.StrandBuffer, ptr %124, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !42
  br i1 %66, label %137, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 53
  %129 = load i32, ptr %128, align 4, !tbaa !151
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %251, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 51
  %134 = load i32, ptr %133, align 4, !tbaa !152
  %135 = and i32 %134, 33554432
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %251, label %142

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.Material, ptr %126, i64 0, i32 51
  %139 = load i32, ptr %138, align 4, !tbaa !152
  %140 = and i32 %139, 8192
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %251

142:                                              ; preds = %132, %137
  %143 = load ptr, ptr %105, align 8, !tbaa !147
  %144 = getelementptr inbounds %struct.ObjectRen, ptr %143, i64 0, i32 9
  %145 = call i32 @clip_render_object(ptr noundef nonnull %144, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %251

147:                                              ; preds = %142
  %148 = load ptr, ptr %107, align 8, !tbaa !148
  %149 = getelementptr inbounds %struct.StrandBuffer, ptr %148, i64 0, i32 16
  %150 = load float, ptr %149, align 4, !tbaa !153
  %151 = load float, ptr %20, align 16, !tbaa !55
  %152 = fmul float %150, %151
  %153 = load float, ptr %96, align 4, !tbaa !55
  %154 = fmul float %150, %153
  %155 = getelementptr inbounds %struct.StrandBuffer, ptr %148, i64 0, i32 5
  %156 = load i32, ptr %155, align 4, !tbaa !154
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %251

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct.StrandBuffer, ptr %148, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !155
  br label %161

161:                                              ; preds = %158, %242
  %162 = phi i32 [ %244, %242 ], [ %102, %158 ]
  %163 = phi i32 [ %245, %242 ], [ 0, %158 ]
  %164 = phi ptr [ %243, %242 ], [ %104, %158 ]
  %165 = phi ptr [ %246, %242 ], [ %160, %158 ]
  %166 = getelementptr inbounds %struct.StrandBound, ptr %165, i64 0, i32 2
  %167 = call i32 @clip_render_object(ptr noundef nonnull %166, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %242

169:                                              ; preds = %161
  %170 = load i32, ptr %165, align 4, !tbaa !156
  %171 = getelementptr inbounds %struct.StrandBound, ptr %165, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !158
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %242

174:                                              ; preds = %169, %236
  %175 = phi i32 [ %238, %236 ], [ %162, %169 ]
  %176 = phi i32 [ %239, %236 ], [ %170, %169 ]
  %177 = phi ptr [ %237, %236 ], [ %164, %169 ]
  %178 = call ptr @RE_findOrAddStrand(ptr noundef %106, i32 noundef %176) #16
  %179 = load ptr, ptr %178, align 8, !tbaa !159
  %180 = call fastcc i32 @strand_test_clip(ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef %179, ptr noundef nonnull %97, float noundef %152, float noundef %154) #15
  %181 = getelementptr inbounds %struct.StrandVert, ptr %179, i64 1
  %182 = call fastcc i32 @strand_test_clip(ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef nonnull %181, ptr noundef nonnull %98, float noundef %152, float noundef %154) #15
  %183 = load float, ptr %97, align 4, !tbaa !55
  store float %183, ptr %18, align 16, !tbaa !55
  %184 = getelementptr inbounds %struct.StrandRen, ptr %178, i64 0, i32 2
  %185 = load i32, ptr %184, align 8, !tbaa !160
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %236

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.StrandRen, ptr %178, i64 0, i32 5
  br label %189

189:                                              ; preds = %187, %226
  %190 = phi i32 [ %185, %187 ], [ %233, %226 ]
  %191 = phi i32 [ %180, %187 ], [ %192, %226 ]
  %192 = phi i32 [ %180, %187 ], [ %193, %226 ]
  %193 = phi i32 [ %182, %187 ], [ %206, %226 ]
  %194 = phi i32 [ %175, %187 ], [ %228, %226 ]
  %195 = phi i32 [ 0, %187 ], [ %231, %226 ]
  %196 = phi ptr [ %177, %187 ], [ %227, %226 ]
  %197 = phi ptr [ %179, %187 ], [ %232, %226 ]
  %198 = add nsw i32 %190, -2
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.StrandVert, ptr %197, i64 2
  %202 = call fastcc i32 @strand_test_clip(ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef nonnull %201, ptr noundef nonnull %99, float noundef %152, float noundef %154) #15
  br label %205

203:                                              ; preds = %189
  %204 = load float, ptr %98, align 8, !tbaa !55
  store float %204, ptr %99, align 4, !tbaa !55
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i32 [ %202, %200 ], [ %193, %203 ]
  %207 = and i32 %193, %191
  %208 = and i32 %207, %192
  %209 = and i32 %208, %206
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %205
  %212 = load <2 x float>, ptr %97, align 4, !tbaa !55
  br label %226

213:                                              ; preds = %205
  %214 = call ptr @BLI_memarena_alloc(ptr noundef %91, i64 noundef 24) #16
  %215 = getelementptr inbounds %struct.StrandSortSegment, ptr %214, i64 0, i32 1
  store i32 %103, ptr %215, align 8, !tbaa !161
  %216 = load i32, ptr %188, align 4, !tbaa !122
  %217 = getelementptr inbounds %struct.StrandSortSegment, ptr %214, i64 0, i32 2
  store i32 %216, ptr %217, align 4, !tbaa !163
  %218 = getelementptr inbounds %struct.StrandSortSegment, ptr %214, i64 0, i32 3
  store i32 %195, ptr %218, align 8, !tbaa !164
  %219 = load <2 x float>, ptr %97, align 4, !tbaa !55
  %220 = shufflevector <2 x float> %219, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %221 = fadd <2 x float> %219, %220
  %222 = extractelement <2 x float> %221, i64 0
  %223 = fmul float %222, 5.000000e-01
  %224 = getelementptr inbounds %struct.StrandSortSegment, ptr %214, i64 0, i32 4
  store float %223, ptr %224, align 4, !tbaa !165
  store ptr %196, ptr %214, align 8, !tbaa !166
  %225 = add nsw i32 %194, 1
  br label %226

226:                                              ; preds = %211, %213
  %227 = phi ptr [ %196, %211 ], [ %214, %213 ]
  %228 = phi i32 [ %194, %211 ], [ %225, %213 ]
  %229 = phi <2 x float> [ %212, %211 ], [ %219, %213 ]
  store <2 x float> %229, ptr %18, align 16, !tbaa !55
  %230 = load float, ptr %99, align 4, !tbaa !55
  store float %230, ptr %98, align 8, !tbaa !55
  %231 = add nuw nsw i32 %195, 1
  %232 = getelementptr inbounds %struct.StrandVert, ptr %197, i64 1
  %233 = load i32, ptr %184, align 8, !tbaa !160
  %234 = add nsw i32 %233, -1
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %189, label %236, !llvm.loop !167

236:                                              ; preds = %226, %174
  %237 = phi ptr [ %177, %174 ], [ %227, %226 ]
  %238 = phi i32 [ %175, %174 ], [ %228, %226 ]
  %239 = add nsw i32 %176, 1
  %240 = load i32, ptr %171, align 4, !tbaa !158
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %174, label %242, !llvm.loop !168

242:                                              ; preds = %236, %169, %161
  %243 = phi ptr [ %164, %161 ], [ %164, %169 ], [ %237, %236 ]
  %244 = phi i32 [ %162, %161 ], [ %162, %169 ], [ %238, %236 ]
  %245 = add nuw nsw i32 %163, 1
  %246 = getelementptr inbounds %struct.StrandBound, ptr %165, i64 1
  %247 = load ptr, ptr %107, align 8, !tbaa !148
  %248 = getelementptr inbounds %struct.StrandBuffer, ptr %247, i64 0, i32 5
  %249 = load i32, ptr %248, align 4, !tbaa !154
  %250 = icmp slt i32 %245, %249
  br i1 %250, label %161, label %251, !llvm.loop !169

251:                                              ; preds = %242, %147, %142, %137, %127, %132, %100, %110
  %252 = phi ptr [ %104, %110 ], [ %104, %100 ], [ %104, %132 ], [ %104, %127 ], [ %104, %137 ], [ %104, %142 ], [ %104, %147 ], [ %243, %242 ]
  %253 = phi i32 [ %102, %110 ], [ %102, %100 ], [ %102, %132 ], [ %102, %127 ], [ %102, %137 ], [ %102, %142 ], [ %102, %147 ], [ %244, %242 ]
  %254 = add nuw nsw i32 %103, 1
  %255 = load ptr, ptr %101, align 8, !tbaa !46
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %100, !llvm.loop !170

257:                                              ; preds = %251, %31
  %258 = phi ptr [ null, %31 ], [ %252, %251 ]
  %259 = phi i32 [ 0, %31 ], [ %253, %251 ]
  %260 = load ptr, ptr %21, align 8, !tbaa !125
  %261 = load ptr, ptr %23, align 8, !tbaa !126
  %262 = call i32 %260(ptr noundef %261) #16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %257
  %265 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %266 = sext i32 %259 to i64
  %267 = mul nsw i64 %266, 24
  %268 = call ptr %265(i64 noundef %267, ptr noundef nonnull @.str.5) #16
  %269 = icmp sgt i32 %259, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %264
  %271 = zext nneg i32 %259 to i64
  br label %272

272:                                              ; preds = %270, %272
  %273 = phi i64 [ 0, %270 ], [ %276, %272 ]
  %274 = phi ptr [ %258, %270 ], [ %277, %272 ]
  %275 = getelementptr inbounds %struct.StrandSortSegment, ptr %268, i64 %273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %275, ptr noundef nonnull align 8 dereferenceable(24) %274, i64 24, i1 false), !tbaa.struct !171
  %276 = add nuw nsw i64 %273, 1
  %277 = load ptr, ptr %274, align 8, !tbaa !166
  %278 = icmp eq i64 %276, %271
  br i1 %278, label %279, label %272, !llvm.loop !172

279:                                              ; preds = %272, %264
  call void @qsort(ptr noundef %268, i64 noundef %266, i64 noundef 24, ptr noundef nonnull @compare_strand_segment) #16
  br label %280

280:                                              ; preds = %279, %257
  %281 = phi ptr [ null, %257 ], [ %268, %279 ]
  call void @BLI_memarena_free(ptr noundef %91) #16
  %282 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %283 = load i32, ptr %33, align 8, !tbaa !129
  %284 = sext i32 %283 to i64
  %285 = shl nsw i64 %284, 2
  %286 = load i32, ptr %36, align 4, !tbaa !132
  %287 = sext i32 %286 to i64
  %288 = mul i64 %285, %287
  %289 = call ptr %282(i64 noundef %288, ptr noundef nonnull @.str.6) #16
  %290 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 3
  store ptr %289, ptr %290, align 8, !tbaa !173
  %291 = load ptr, ptr %21, align 8, !tbaa !125
  %292 = load ptr, ptr %23, align 8, !tbaa !126
  %293 = call i32 %291(ptr noundef %292) #16
  %294 = icmp eq i32 %293, 0
  %295 = icmp sgt i32 %259, 0
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %297, label %349

297:                                              ; preds = %280
  %298 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %299 = getelementptr inbounds %struct.StrandSegment, ptr %17, i64 0, i32 3
  %300 = getelementptr inbounds %struct.StrandSegment, ptr %17, i64 0, i32 1
  %301 = getelementptr inbounds %struct.StrandSegment, ptr %17, i64 0, i32 2
  %302 = getelementptr inbounds %struct.StrandSegment, ptr %17, i64 0, i32 4
  %303 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 1
  %304 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 2
  %305 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 3
  %306 = getelementptr inbounds %struct.StrandSegment, ptr %17, i64 0, i32 7
  %307 = getelementptr inbounds %struct.StrandPart, ptr %16, i64 0, i32 13
  br label %308

308:                                              ; preds = %297, %315
  %309 = phi i32 [ 0, %297 ], [ %346, %315 ]
  %310 = phi ptr [ %281, %297 ], [ %347, %315 ]
  %311 = load ptr, ptr %21, align 8, !tbaa !125
  %312 = load ptr, ptr %23, align 8, !tbaa !126
  %313 = call i32 %311(ptr noundef %312) #16
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %349

315:                                              ; preds = %308
  %316 = load ptr, ptr %298, align 8, !tbaa !108
  %317 = getelementptr inbounds %struct.StrandSortSegment, ptr %310, i64 0, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !161
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %316, i64 %319
  %321 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %316, i64 %319, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !147
  store ptr %320, ptr %299, align 8, !tbaa !47
  %323 = getelementptr inbounds %struct.StrandSortSegment, ptr %310, i64 0, i32 2
  %324 = load i32, ptr %323, align 4, !tbaa !163
  %325 = call ptr @RE_findOrAddStrand(ptr noundef %322, i32 noundef %324) #16
  store ptr %325, ptr %300, align 8, !tbaa !58
  %326 = getelementptr inbounds %struct.StrandRen, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !174
  store ptr %327, ptr %301, align 8, !tbaa !34
  %328 = getelementptr inbounds %struct.StrandBuffer, ptr %327, i64 0, i32 13
  %329 = load float, ptr %328, align 8, !tbaa !175
  %330 = fmul float %329, %329
  store float %330, ptr %302, align 8, !tbaa !102
  %331 = load ptr, ptr %325, align 8, !tbaa !159
  %332 = getelementptr inbounds %struct.StrandSortSegment, ptr %310, i64 0, i32 3
  %333 = load i32, ptr %332, align 8, !tbaa !164
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.StrandVert, ptr %331, i64 %334
  %336 = icmp sgt i32 %333, 0
  %337 = sext i1 %336 to i64
  %338 = getelementptr inbounds %struct.StrandVert, ptr %335, i64 %337
  store ptr %338, ptr %17, align 8, !tbaa !46
  store ptr %335, ptr %303, align 8, !tbaa !46
  %339 = getelementptr inbounds %struct.StrandVert, ptr %335, i64 1
  store ptr %339, ptr %304, align 8, !tbaa !46
  %340 = getelementptr inbounds %struct.StrandRen, ptr %325, i64 0, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !160
  %342 = add nsw i32 %341, -2
  %343 = icmp slt i32 %333, %342
  %344 = getelementptr inbounds %struct.StrandVert, ptr %335, i64 2
  %345 = select i1 %343, ptr %344, ptr %339
  store ptr %345, ptr %305, align 8, !tbaa !46
  store i32 0, ptr %306, align 4, !tbaa !176
  store ptr %17, ptr %307, align 8, !tbaa !177
  call void @render_strand_segment(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %16, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull %17) #15
  %346 = add nuw nsw i32 %309, 1
  %347 = getelementptr inbounds %struct.StrandSortSegment, ptr %310, i64 1
  %348 = icmp eq i32 %346, %259
  br i1 %348, label %349, label %308, !llvm.loop !178

349:                                              ; preds = %308, %315, %280
  %350 = icmp eq ptr %281, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %349
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %352(ptr noundef nonnull %281) #16
  br label %353

353:                                              ; preds = %351, %349
  %354 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %355 = load ptr, ptr %290, align 8, !tbaa !173
  call void %354(ptr noundef %355) #16
  call void @zbuf_free_span(ptr noundef nonnull %15) #16
  br label %356

356:                                              ; preds = %27, %14, %353
  %357 = phi i32 [ %259, %353 ], [ 0, %14 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %15) #14
  ret i32 %357
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @clip_render_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @strand_test_clip(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, float noundef %4, float noundef %5) unnamed_addr #0 !PGOFuncName !179 {
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @projectvert(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %9 = load float, ptr %8, align 8, !tbaa !55
  store float %9, ptr %3, align 4, !tbaa !55
  %10 = load float, ptr %7, align 16, !tbaa !55
  %11 = fadd float %10, %4
  %12 = load float, ptr %1, align 4, !tbaa !55
  %13 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = fmul float %12, %14
  %16 = fcmp olt float %11, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %6
  %18 = fsub float %10, %4
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fmul float %14, %20
  %22 = fcmp ogt float %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %6, %17, %23
  %25 = phi i32 [ 2, %23 ], [ 0, %17 ], [ 1, %6 ]
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !55
  %28 = fsub float %27, %5
  %29 = getelementptr inbounds float, ptr %1, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !55
  %31 = fmul float %14, %30
  %32 = fcmp ogt float %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = or disjoint i32 %25, 4
  br label %43

35:                                               ; preds = %24
  %36 = fadd float %27, %5
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = fmul float %14, %38
  %40 = fcmp olt float %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = or disjoint i32 %25, 8
  br label %43

43:                                               ; preds = %35, %41, %33
  %44 = phi i32 [ %34, %33 ], [ %42, %41 ], [ %25, %35 ]
  %45 = call i32 @testclip(ptr noundef nonnull %7) #16
  %46 = or i32 %45, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i32 %46
}

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @compare_strand_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !PGOFuncName !180 {
  %3 = getelementptr inbounds %struct.StrandSortSegment, ptr %0, i64 0, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !165
  %5 = getelementptr inbounds %struct.StrandSortSegment, ptr %1, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !165
  %7 = fcmp olt float %4, %6
  %8 = fcmp une float %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: optsize
declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cache_strand_surface(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = tail call i32 %7(ptr noundef %2) #16
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = tail call i32 %10(ptr noundef %2) #16
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 3
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 5
  br label %20

20:                                               ; preds = %15, %43
  %21 = phi ptr [ %13, %15 ], [ %44, %43 ]
  %22 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !186
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = load ptr, ptr %18, align 8, !tbaa !189
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 2, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !190
  %33 = load i32, ptr %19, align 8, !tbaa !191
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !192
  %38 = icmp eq i32 %37, %8
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.StrandSurface, ptr %21, i64 0, i32 11
  %41 = load i32, ptr %40, align 4, !tbaa !193
  %42 = icmp eq i32 %41, %11
  br i1 %42, label %75, label %43

43:                                               ; preds = %20, %25, %30, %35, %39
  %44 = load ptr, ptr %21, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !194

46:                                               ; preds = %43, %5
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %48 = tail call ptr %47(i64 noundef 360, ptr noundef nonnull @.str.7) #16
  %49 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %49, ptr noundef nonnull align 8 dereferenceable(280) %1, i64 280, i1 false), !tbaa.struct !195
  %50 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 10
  store i32 %8, ptr %50, align 8, !tbaa !192
  %51 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 11
  store i32 %11, ptr %51, align 4, !tbaa !193
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %53 = sext i32 %11 to i64
  %54 = shl nsw i64 %53, 4
  %55 = tail call ptr %52(i64 noundef %54, ptr noundef nonnull @.str.8) #16
  %56 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !196
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %58 = load i32, ptr %50, align 8, !tbaa !192
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, 12
  %61 = tail call ptr %57(i64 noundef %60, ptr noundef nonnull @.str.9) #16
  %62 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 5
  store ptr %61, ptr %62, align 8, !tbaa !197
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %64 = load i32, ptr %50, align 8, !tbaa !192
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 12
  %67 = tail call ptr %63(i64 noundef %66, ptr noundef nonnull @.str.10) #16
  %68 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 6
  store ptr %67, ptr %68, align 8, !tbaa !198
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %70 = load i32, ptr %50, align 8, !tbaa !192
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, 12
  %73 = tail call ptr %69(i64 noundef %72, ptr noundef nonnull @.str.11) #16
  %74 = getelementptr inbounds %struct.StrandSurface, ptr %48, i64 0, i32 7
  store ptr %73, ptr %74, align 8, !tbaa !199
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %48) #16
  br label %75

75:                                               ; preds = %39, %46
  %76 = phi ptr [ %48, %46 ], [ %21, %39 ]
  switch i32 %4, label %156 [
    i32 -1, label %77
    i32 0, label %88
    i32 1, label %99
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !200
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %156

81:                                               ; preds = %77
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !192
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, 12
  %87 = tail call ptr %82(i64 noundef %86, ptr noundef nonnull @.str.12) #16
  store ptr %87, ptr %78, align 8, !tbaa !200
  br label %110

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !201
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %156

92:                                               ; preds = %88
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %95 = load i32, ptr %94, align 8, !tbaa !192
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, 12
  %98 = tail call ptr %93(i64 noundef %97, ptr noundef nonnull @.str.12) #16
  store ptr %98, ptr %89, align 8, !tbaa !201
  br label %110

99:                                               ; preds = %75
  %100 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !202
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %156

103:                                              ; preds = %99
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %105 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %106 = load i32, ptr %105, align 8, !tbaa !192
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, 12
  %109 = tail call ptr %104(i64 noundef %108, ptr noundef nonnull @.str.12) #16
  store ptr %109, ptr %100, align 8, !tbaa !202
  br label %110

110:                                              ; preds = %92, %103, %81
  %111 = phi ptr [ %109, %103 ], [ %98, %92 ], [ %87, %81 ]
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %113 = load ptr, ptr %112, align 8, !tbaa !203
  %114 = tail call ptr %113(ptr noundef %2) #16
  %115 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 10
  %116 = load i32, ptr %115, align 8, !tbaa !192
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110, %118
  %119 = phi i64 [ %122, %118 ], [ 0, %110 ]
  %120 = phi ptr [ %123, %118 ], [ %114, %110 ]
  %121 = getelementptr inbounds [3 x float], ptr %111, i64 %119
  tail call fastcc void @copy_v3_v3(ptr noundef %121, ptr noundef %120) #15
  tail call void @mul_m4_v3(ptr noundef %3, ptr noundef %121) #16
  %122 = add nuw nsw i64 %119, 1
  %123 = getelementptr inbounds %struct.MVert, ptr %120, i64 1
  %124 = load i32, ptr %115, align 8, !tbaa !192
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %118, label %127, !llvm.loop !204

127:                                              ; preds = %118, %110
  %128 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %129 = load ptr, ptr %128, align 8, !tbaa !205
  %130 = tail call ptr %129(ptr noundef %2) #16
  %131 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 11
  %132 = load i32, ptr %131, align 4, !tbaa !193
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.StrandSurface, ptr %76, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !196
  br label %137

137:                                              ; preds = %134, %137
  %138 = phi i64 [ 0, %134 ], [ %151, %137 ]
  %139 = phi ptr [ %130, %134 ], [ %152, %137 ]
  %140 = load i32, ptr %139, align 4, !tbaa !206
  %141 = getelementptr inbounds [4 x i32], ptr %136, i64 %138
  store i32 %140, ptr %141, align 4, !tbaa !89
  %142 = getelementptr inbounds %struct.MFace, ptr %139, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !208
  %144 = getelementptr inbounds [4 x i32], ptr %136, i64 %138, i64 1
  store i32 %143, ptr %144, align 4, !tbaa !89
  %145 = getelementptr inbounds %struct.MFace, ptr %139, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !209
  %147 = getelementptr inbounds [4 x i32], ptr %136, i64 %138, i64 2
  store i32 %146, ptr %147, align 4, !tbaa !89
  %148 = getelementptr inbounds %struct.MFace, ptr %139, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !210
  %150 = getelementptr inbounds [4 x i32], ptr %136, i64 %138, i64 3
  store i32 %149, ptr %150, align 4, !tbaa !89
  %151 = add nuw nsw i64 %138, 1
  %152 = getelementptr inbounds %struct.MFace, ptr %139, i64 1
  %153 = load i32, ptr %131, align 4, !tbaa !193
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %137, label %156, !llvm.loop !211

156:                                              ; preds = %137, %127, %88, %77, %99, %75
  ret ptr %76
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_strand_surface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1, %48
  %6 = phi ptr [ %49, %48 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #16
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #16
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %23(ptr noundef nonnull %20) #16
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !197
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %29(ptr noundef nonnull %26) #16
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !198
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %32) #16
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %41(ptr noundef nonnull %38) #16
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.StrandSurface, ptr %6, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !196
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %47(ptr noundef nonnull %44) #16
  br label %48

48:                                               ; preds = %42, %46
  %49 = load ptr, ptr %6, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %5, !llvm.loop !212

51:                                               ; preds = %48, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @strand_minmax(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.StrandRen, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !160
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !159
  %11 = fcmp une float %3, 0.000000e+00
  %12 = fmul float %3, -2.000000e+00
  br label %13

13:                                               ; preds = %9, %17
  %14 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %15 = phi ptr [ %10, %9 ], [ %19, %17 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %15) #15
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16
  br i1 %11, label %16, label %17

16:                                               ; preds = %13
  call fastcc void @add_v3_fl(ptr noundef nonnull %5, float noundef %3) #15
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16
  call fastcc void @add_v3_fl(ptr noundef nonnull %5, float noundef %12) #15
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #16
  br label %17

17:                                               ; preds = %13, %16
  %18 = add nuw nsw i32 %14, 1
  %19 = getelementptr inbounds %struct.StrandVert, ptr %15, i64 1
  %20 = load i32, ptr %6, align 8, !tbaa !160
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %13, label %22, !llvm.loop !213

22:                                               ; preds = %17, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !214 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !55
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fadd <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fadd float %8, %1
  store float %9, ptr %7, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !215 {
  %3 = load float, ptr %0, align 4, !tbaa !55
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !55
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !55
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !216 {
  %4 = load float, ptr %1, align 4, !tbaa !55
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !55
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !217 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !55
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @strand_shade_point(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !218 {
  %6 = alloca %struct.VlakRen, align 8
  %7 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %9 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 7
  store i8 1, ptr %9, align 1, !tbaa !219
  %10 = getelementptr inbounds %struct.StrandSegment, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.StrandBuffer, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 51
  %15 = load i32, ptr %14, align 4, !tbaa !152
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i8 65, ptr %9, align 1, !tbaa !219
  br label %19

19:                                               ; preds = %18, %5
  %20 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 1
  store ptr %6, ptr %20, align 8, !tbaa !221
  %21 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 8
  %22 = getelementptr inbounds %struct.StrandSegment, ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !223
  %25 = getelementptr inbounds %struct.StrandSegment, ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !224
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !147
  %30 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !225
  %31 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 114
  %32 = load i16, ptr %31, align 2, !tbaa !226
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 42, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !89
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !89
  %37 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 107
  store i32 %35, ptr %37, align 4, !tbaa !227
  %38 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 105
  store i32 65535, ptr %38, align 4, !tbaa !228
  %39 = getelementptr inbounds %struct.StrandRen, ptr %23, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !122
  %41 = load ptr, ptr %23, align 8, !tbaa !159
  %42 = ptrtoint ptr %3 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = add i32 %40, %46
  %48 = sext i16 %32 to i32
  call void @BLI_thread_srandom(i32 noundef %48, i32 noundef %47) #16
  %49 = load ptr, ptr %22, align 8, !tbaa !58
  call void @shade_input_set_strand(ptr noundef nonnull %7, ptr noundef %49, ptr noundef %4) #16
  %50 = load ptr, ptr %22, align 8, !tbaa !58
  %51 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  call void @shade_input_set_strand_texco(ptr noundef nonnull %7, ptr noundef %50, ptr noundef %52, ptr noundef %4) #16
  call void @shade_input_init_material(ptr noundef nonnull %7) #16
  call void @shade_samples_do_AO(ptr noundef %1) #16
  call void @shade_input_do_shade(ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %53 = getelementptr inbounds %struct.StrandPoint, ptr %4, i64 0, i32 20
  %54 = load float, ptr %53, align 4, !tbaa !59
  call fastcc void @strand_apply_shaderesult_alpha(ptr noundef nonnull %8, float noundef %54) #15
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %56 = load i16, ptr %55, align 8, !tbaa !229
  %57 = and i16 %56, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %19
  %60 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 118
  %61 = load i32, ptr %60, align 4, !tbaa !230
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 3, i64 0, i32 0, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !55
  call void @renderspothalo(ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %66) #16
  br label %67

67:                                               ; preds = %59, %64, %19
  store ptr null, ptr %24, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_thread_srandom(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_set_strand(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_set_strand_texco(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_init_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @shade_input_do_shade(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_vec4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 !PGOFuncName !231 {
  %6 = load float, ptr %0, align 4, !tbaa !55
  %7 = load float, ptr %1, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %8)
  store float %9, ptr %4, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !55
  %14 = fmul float %13, %2
  %15 = tail call float @llvm.fmuladd.f32(float %3, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %4, i64 1
  store float %15, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fmul float %20, %2
  %22 = tail call float @llvm.fmuladd.f32(float %3, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %4, i64 2
  store float %22, ptr %23, align 4, !tbaa !55
  %24 = getelementptr inbounds float, ptr %0, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !55
  %26 = getelementptr inbounds float, ptr %1, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !55
  %28 = fmul float %27, %2
  %29 = tail call float @llvm.fmuladd.f32(float %3, float %25, float %28)
  %30 = getelementptr inbounds float, ptr %4, i64 3
  store float %29, ptr %30, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_vec1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 !PGOFuncName !232 {
  %6 = load float, ptr %0, align 4, !tbaa !55
  %7 = load float, ptr %1, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %8)
  store float %9, ptr %4, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_vec3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 !PGOFuncName !233 {
  %6 = load float, ptr %0, align 4, !tbaa !55
  %7 = load float, ptr %1, align 4, !tbaa !55
  %8 = fmul float %7, %2
  %9 = tail call float @llvm.fmuladd.f32(float %3, float %6, float %8)
  store float %9, ptr %4, align 4, !tbaa !55
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !55
  %14 = fmul float %13, %2
  %15 = tail call float @llvm.fmuladd.f32(float %3, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %4, i64 1
  store float %15, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fmul float %20, %2
  %22 = tail call float @llvm.fmuladd.f32(float %3, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %4, i64 2
  store float %22, ptr %23, align 4, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !234 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @hoco_to_zco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_scanconvert_strand(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !235 {
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %4) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %5) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %6) #15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %7) #15
  %14 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %9
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds [2 x float], ptr %15, i64 %18
  %20 = load <2 x float>, ptr %19, align 4, !tbaa !55
  %21 = load <2 x float>, ptr %10, align 8, !tbaa !55
  %22 = fsub <2 x float> %21, %20
  store <2 x float> %22, ptr %10, align 8, !tbaa !55
  %23 = load <2 x float>, ptr %11, align 8, !tbaa !55
  %24 = fsub <2 x float> %23, %20
  store <2 x float> %24, ptr %11, align 8, !tbaa !55
  %25 = load <2 x float>, ptr %12, align 8, !tbaa !55
  %26 = fsub <2 x float> %25, %20
  store <2 x float> %26, ptr %12, align 8, !tbaa !55
  %27 = load <2 x float>, ptr %13, align 8, !tbaa !55
  %28 = fsub <2 x float> %27, %20
  store <2 x float> %28, ptr %13, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %17, %9
  %30 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 9
  store i32 %8, ptr %30, align 8, !tbaa !236
  %31 = fsub float %2, %3
  %32 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14
  store float %31, ptr %32, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15
  %34 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 1
  store float %31, ptr %34, align 4, !tbaa !55
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %33, align 4, !tbaa !55
  %35 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 2
  store float %2, ptr %35, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15, i64 2
  store float 1.000000e+00, ptr %36, align 4, !tbaa !55
  call void @zspan_scanconvert_strand(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull @do_strand_fillac) #16
  store float %31, ptr %32, align 8, !tbaa !55
  store float %2, ptr %34, align 4, !tbaa !55
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %33, align 4, !tbaa !55
  store float %2, ptr %35, align 8, !tbaa !55
  store float -1.000000e+00, ptr %36, align 4, !tbaa !55
  call void @zspan_scanconvert_strand(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @do_strand_fillac) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  ret void
}

; Function Attrs: optsize
declare void @zbufsinglewire(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @zspan_scanconvert_strand(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_strand_fillac(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5) #0 !PGOFuncName !237 {
  %7 = alloca %struct.APixstrand, align 8
  %8 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !177
  %12 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = mul nsw i32 %13, %2
  %15 = add nsw i32 %14, %1
  %16 = getelementptr inbounds %struct.StrandSegment, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = load ptr, ptr %0, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct.Render, ptr %18, i64 0, i32 69
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 288
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.StrandSegment, ptr %11, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.StrandRen, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !122
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = load ptr, ptr %27, align 8, !tbaa !159
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !236
  %41 = shl nuw i32 1, %40
  %42 = fptosi float %5 to i32
  %43 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !137
  %45 = icmp eq ptr %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %6
  %47 = sext i32 %15 to i64
  %48 = getelementptr inbounds i64, ptr %44, i64 %47
  %49 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !238
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, i32 0, i32 2147483647
  %53 = load i64, ptr %48, align 8, !tbaa !239
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %46
  %56 = inttoptr i64 %53 to ptr
  br label %57

57:                                               ; preds = %55, %69
  %58 = phi ptr [ %56, %55 ], [ %70, %69 ]
  %59 = getelementptr inbounds %struct.PixStr, ptr %58, i64 0, i32 5
  %60 = load i16, ptr %59, align 8, !tbaa !241
  %61 = zext i16 %60 to i32
  %62 = and i32 %41, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.PixStr, ptr %58, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !243
  br i1 %51, label %93, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.PixStr, ptr %58, i64 0, i32 4
  br label %88

69:                                               ; preds = %57
  %70 = load ptr, ptr %58, align 8, !tbaa !244
  %71 = icmp eq ptr %70, null
  br i1 %71, label %93, label %57, !llvm.loop !245

72:                                               ; preds = %6
  %73 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !246
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = sext i32 %15 to i64
  %78 = getelementptr inbounds i32, ptr %74, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !89
  br label %80

80:                                               ; preds = %72, %76
  %81 = phi i32 [ %79, %76 ], [ 2147483647, %72 ]
  %82 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !238
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = sext i32 %15 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  br label %88

88:                                               ; preds = %85, %67
  %89 = phi ptr [ %68, %67 ], [ %87, %85 ]
  %90 = phi ptr [ %50, %67 ], [ %83, %85 ]
  %91 = phi i32 [ %66, %67 ], [ %81, %85 ]
  %92 = load i32, ptr %89, align 4, !tbaa !89
  br label %93

93:                                               ; preds = %69, %88, %46, %64, %80
  %94 = phi ptr [ null, %80 ], [ null, %64 ], [ %50, %46 ], [ %90, %88 ], [ %50, %69 ]
  %95 = phi i32 [ 0, %80 ], [ 0, %64 ], [ %52, %46 ], [ %92, %88 ], [ %52, %69 ]
  %96 = phi i32 [ %81, %80 ], [ %66, %64 ], [ 2147483647, %46 ], [ %91, %88 ], [ 2147483647, %69 ]
  %97 = icmp sgt i32 %96, %42
  br i1 %97, label %98, label %298

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !173
  %101 = sext i32 %15 to i64
  %102 = getelementptr inbounds i32, ptr %100, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !89
  %104 = icmp slt i32 %103, 2000
  br i1 %104, label %105, label %298

105:                                              ; preds = %98
  %106 = icmp eq ptr %94, null
  %107 = icmp slt i32 %95, %42
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %298

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14
  %111 = load float, ptr %110, align 8, !tbaa !55
  %112 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !55
  %114 = fmul float %113, %4
  %115 = tail call float @llvm.fmuladd.f32(float %3, float %111, float %114)
  %116 = fsub float 1.000000e+00, %3
  %117 = fsub float %116, %4
  %118 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 14, i64 2
  %119 = load float, ptr %118, align 8, !tbaa !55
  %120 = tail call float @llvm.fmuladd.f32(float %117, float %119, float %115)
  %121 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15
  %122 = load float, ptr %121, align 4, !tbaa !55
  %123 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !55
  %125 = fmul float %124, %4
  %126 = tail call float @llvm.fmuladd.f32(float %3, float %122, float %125)
  %127 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 15, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !55
  %129 = tail call float @llvm.fmuladd.f32(float %117, float %128, float %126)
  %130 = tail call float @llvm.fabs.f32(float %129)
  %131 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !134
  %133 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101
  %134 = icmp eq ptr %132, null
  %135 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 2
  %136 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 3
  %137 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 4
  %138 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 2, i64 1
  %139 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 3, i64 1
  %140 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 4, i64 1
  %141 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 2, i64 2
  %142 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 3, i64 2
  %143 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 4, i64 2
  %144 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 2, i64 3
  %145 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 3, i64 3
  %146 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 4, i64 3
  %147 = getelementptr inbounds %struct.StrandPart, ptr %0, i64 0, i32 1
  %148 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 7
  br i1 %134, label %287, label %149

149:                                              ; preds = %109
  %150 = load i32, ptr %135, align 8, !tbaa !89
  br label %151

151:                                              ; preds = %149, %277
  %152 = phi i32 [ %150, %149 ], [ %280, %277 ]
  %153 = icmp eq i32 %152, %30
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, ptr %136, align 8, !tbaa !89
  %156 = icmp eq i32 %155, %25
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load i32, ptr %137, align 8, !tbaa !89
  %159 = icmp eq i32 %158, %38
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i16, ptr %133, align 8, !tbaa !247
  %162 = zext i16 %161 to i32
  %163 = and i32 %41, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %287

165:                                              ; preds = %160
  %166 = trunc i32 %41 to i16
  %167 = or i16 %161, %166
  store i16 %167, ptr %133, align 8, !tbaa !247
  %168 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6
  %169 = load float, ptr %168, align 8, !tbaa !55
  %170 = fadd float %120, %169
  store float %170, ptr %168, align 8, !tbaa !55
  %171 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5
  %172 = load float, ptr %171, align 8, !tbaa !55
  %173 = fadd float %130, %172
  store float %173, ptr %171, align 8, !tbaa !55
  br label %287

174:                                              ; preds = %157, %154, %151
  %175 = load i32, ptr %138, align 4, !tbaa !89
  %176 = icmp eq i32 %175, %30
  br i1 %176, label %177, label %198

177:                                              ; preds = %174
  %178 = load i32, ptr %139, align 4, !tbaa !89
  %179 = icmp eq i32 %178, %25
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i32, ptr %140, align 4, !tbaa !89
  %182 = icmp eq i32 %181, %38
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 1
  %185 = load i16, ptr %184, align 2, !tbaa !247
  %186 = zext i16 %185 to i32
  %187 = and i32 %41, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %287

189:                                              ; preds = %183
  %190 = trunc i32 %41 to i16
  %191 = or i16 %185, %190
  store i16 %191, ptr %184, align 2, !tbaa !247
  %192 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !55
  %194 = fadd float %120, %193
  store float %194, ptr %192, align 4, !tbaa !55
  %195 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !55
  %197 = fadd float %130, %196
  store float %197, ptr %195, align 4, !tbaa !55
  br label %287

198:                                              ; preds = %180, %177, %174
  %199 = load i32, ptr %141, align 8, !tbaa !89
  %200 = icmp eq i32 %199, %30
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load i32, ptr %142, align 8, !tbaa !89
  %203 = icmp eq i32 %202, %25
  br i1 %203, label %204, label %222

204:                                              ; preds = %201
  %205 = load i32, ptr %143, align 8, !tbaa !89
  %206 = icmp eq i32 %205, %38
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 2
  %209 = load i16, ptr %208, align 4, !tbaa !247
  %210 = zext i16 %209 to i32
  %211 = and i32 %41, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %287

213:                                              ; preds = %207
  %214 = trunc i32 %41 to i16
  %215 = or i16 %209, %214
  store i16 %215, ptr %208, align 4, !tbaa !247
  %216 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 2
  %217 = load float, ptr %216, align 8, !tbaa !55
  %218 = fadd float %120, %217
  store float %218, ptr %216, align 8, !tbaa !55
  %219 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 2
  %220 = load float, ptr %219, align 8, !tbaa !55
  %221 = fadd float %130, %220
  store float %221, ptr %219, align 8, !tbaa !55
  br label %287

222:                                              ; preds = %204, %201, %198
  %223 = load i32, ptr %144, align 4, !tbaa !89
  %224 = icmp eq i32 %223, %30
  br i1 %224, label %225, label %246

225:                                              ; preds = %222
  %226 = load i32, ptr %145, align 4, !tbaa !89
  %227 = icmp eq i32 %226, %25
  br i1 %227, label %228, label %246

228:                                              ; preds = %225
  %229 = load i32, ptr %146, align 4, !tbaa !89
  %230 = icmp eq i32 %229, %38
  br i1 %230, label %231, label %246

231:                                              ; preds = %228
  %232 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 3
  %233 = load i16, ptr %232, align 2, !tbaa !247
  %234 = zext i16 %233 to i32
  %235 = and i32 %41, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %287

237:                                              ; preds = %231
  %238 = trunc i32 %41 to i16
  %239 = or i16 %233, %238
  store i16 %239, ptr %232, align 2, !tbaa !247
  %240 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 3
  %241 = load float, ptr %240, align 4, !tbaa !55
  %242 = fadd float %120, %241
  store float %242, ptr %240, align 4, !tbaa !55
  %243 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 3
  %244 = load float, ptr %243, align 4, !tbaa !55
  %245 = fadd float %130, %244
  store float %245, ptr %243, align 4, !tbaa !55
  br label %287

246:                                              ; preds = %228, %225, %222
  %247 = icmp eq i32 %152, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %246
  store i32 %25, ptr %136, align 8, !tbaa !89
  store i32 %30, ptr %135, align 8, !tbaa !89
  %249 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 1
  store i32 %42, ptr %249, align 8, !tbaa !89
  %250 = trunc i32 %41 to i16
  store i16 %250, ptr %133, align 8, !tbaa !247
  %251 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6
  store float %120, ptr %251, align 8, !tbaa !55
  %252 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5
  store float %130, ptr %252, align 8, !tbaa !55
  store i32 %38, ptr %137, align 8, !tbaa !89
  br label %287

253:                                              ; preds = %246
  %254 = icmp eq i32 %175, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %253
  store i32 %25, ptr %139, align 4, !tbaa !89
  store i32 %30, ptr %138, align 4, !tbaa !89
  %256 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 1, i64 1
  store i32 %42, ptr %256, align 4, !tbaa !89
  %257 = trunc i32 %41 to i16
  %258 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 1
  store i16 %257, ptr %258, align 2, !tbaa !247
  %259 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 1
  store float %120, ptr %259, align 4, !tbaa !55
  %260 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 1
  store float %130, ptr %260, align 4, !tbaa !55
  store i32 %38, ptr %140, align 4, !tbaa !89
  br label %287

261:                                              ; preds = %253
  %262 = icmp eq i32 %199, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %261
  store i32 %25, ptr %142, align 8, !tbaa !89
  store i32 %30, ptr %141, align 8, !tbaa !89
  %264 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 1, i64 2
  store i32 %42, ptr %264, align 8, !tbaa !89
  %265 = trunc i32 %41 to i16
  %266 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 2
  store i16 %265, ptr %266, align 4, !tbaa !247
  %267 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 2
  store float %120, ptr %267, align 8, !tbaa !55
  %268 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 2
  store float %130, ptr %268, align 8, !tbaa !55
  store i32 %38, ptr %143, align 8, !tbaa !89
  br label %287

269:                                              ; preds = %261
  %270 = icmp eq i32 %223, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %269
  store i32 %25, ptr %145, align 4, !tbaa !89
  store i32 %30, ptr %144, align 4, !tbaa !89
  %272 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 1, i64 3
  store i32 %42, ptr %272, align 4, !tbaa !89
  %273 = trunc i32 %41 to i16
  %274 = getelementptr inbounds [4 x i16], ptr %133, i64 0, i64 3
  store i16 %273, ptr %274, align 2, !tbaa !247
  %275 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6, i64 3
  store float %120, ptr %275, align 4, !tbaa !55
  %276 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5, i64 3
  store float %130, ptr %276, align 4, !tbaa !55
  store i32 %38, ptr %146, align 4, !tbaa !89
  br label %287

277:                                              ; preds = %269
  %278 = load ptr, ptr %147, align 8, !tbaa !135
  %279 = tail call fastcc ptr @addpsAstrand(ptr noundef %278) #15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %279, i64 112, i1 false), !tbaa.struct !248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %279, ptr noundef nonnull align 8 dereferenceable(112) %133, i64 112, i1 false), !tbaa.struct !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %133, ptr noundef nonnull align 8 dereferenceable(112) %7, i64 112, i1 false), !tbaa.struct !248
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %7)
  store ptr %279, ptr %148, align 8, !tbaa !249
  %280 = load i32, ptr %135, align 8, !tbaa !89
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %151, !llvm.loop !251

282:                                              ; preds = %277
  store i32 %25, ptr %136, align 8, !tbaa !89
  store i32 %30, ptr %135, align 8, !tbaa !89
  %283 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 1
  store i32 %42, ptr %283, align 8, !tbaa !89
  %284 = trunc i32 %41 to i16
  store i16 %284, ptr %133, align 8, !tbaa !247
  %285 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 6
  store float %120, ptr %285, align 8, !tbaa !55
  %286 = getelementptr inbounds %struct.APixstrand, ptr %132, i64 %101, i32 5
  store float %130, ptr %286, align 8, !tbaa !55
  store i32 %38, ptr %137, align 8, !tbaa !89
  br label %287

287:                                              ; preds = %109, %231, %237, %207, %213, %183, %189, %160, %165, %282, %271, %263, %255, %248
  %288 = icmp eq ptr %9, null
  br i1 %288, label %293, label %289

289:                                              ; preds = %287
  %290 = load ptr, ptr %31, align 8, !tbaa !46
  tail call fastcc void @strand_shade_refcount(ptr noundef nonnull %9, ptr noundef %11, ptr noundef %290) #15
  %291 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 2
  %292 = load ptr, ptr %291, align 8, !tbaa !46
  tail call fastcc void @strand_shade_refcount(ptr noundef nonnull %9, ptr noundef %11, ptr noundef %292) #15
  br label %293

293:                                              ; preds = %289, %287
  %294 = load ptr, ptr %99, align 8, !tbaa !173
  %295 = getelementptr inbounds i32, ptr %294, i64 %101
  %296 = load i32, ptr %295, align 4, !tbaa !89
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %295, align 4, !tbaa !89
  br label %298

298:                                              ; preds = %105, %293, %98, %93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addpsAstrand(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !252 {
  %2 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !253
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = tail call fastcc ptr @addpsmainAstrand(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 24
  store ptr %8, ptr %9, align 8, !tbaa !254
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !254
  %13 = getelementptr inbounds %struct.APixstrand, ptr %12, i64 1
  store ptr %13, ptr %11, align 8, !tbaa !254
  %14 = add nsw i32 %3, -1
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %17 = phi i32 [ %14, %10 ], [ 4095, %5 ]
  store i32 %17, ptr %2, align 8, !tbaa !253
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @strand_shade_refcount(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !255 {
  %4 = alloca %struct.GHashPair, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.StrandSegment, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call fastcc { ptr, ptr } @strand_shade_hash_pair(ptr noundef %6, ptr noundef %2) #15
  %8 = extractvalue { ptr, ptr } %7, 0
  store ptr %8, ptr %4, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %10 = extractvalue { ptr, ptr } %7, 1
  store ptr %10, ptr %9, align 8
  %11 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef nonnull %4) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.StrandShadeCache, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = call ptr @BLI_memarena_alloc(ptr noundef %17, i64 noundef 16) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !88
  %19 = load ptr, ptr %16, align 8, !tbaa !83
  %20 = call ptr @BLI_memarena_alloc(ptr noundef %19, i64 noundef 4) #16
  store i32 1, ptr %20, align 4, !tbaa !89
  %21 = load ptr, ptr %11, align 8, !tbaa !82
  call void @BLI_ghash_insert(ptr noundef %21, ptr noundef %18, ptr noundef nonnull %20) #16
  br label %25

22:                                               ; preds = %3
  %23 = load i32, ptr %13, align 4, !tbaa !89
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %13, align 4, !tbaa !89
  br label %25

25:                                               ; preds = %22, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addpsmainAstrand(ptr noundef %0) unnamed_addr #0 !PGOFuncName !256 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.14) #16
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #16
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 458752, ptr noundef nonnull @.str.15) #16
  %6 = getelementptr inbounds %struct.APixstrMain, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !257
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @testclip(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }

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
!47 = !{!35, !38, i64 48}
!48 = !{!49, !50, i64 216}
!49 = !{!"ObjectInstanceRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !50, i64 216, !36, i64 220, !36, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !41, i64 264, !38, i64 272, !41, i64 280}
!50 = !{!"short", !36, i64 0}
!51 = !{!52, !39, i64 12}
!52 = !{!"StrandVert", !36, i64 0, !39, i64 12}
!53 = !{!40, !39, i64 40}
!54 = !{!40, !39, i64 72}
!55 = !{!39, !39, i64 0}
!56 = !{!40, !39, i64 44}
!57 = !{!43, !38, i64 40}
!58 = !{!35, !38, i64 32}
!59 = !{!40, !39, i64 188}
!60 = !{!43, !41, i64 160}
!61 = !{!43, !41, i64 164}
!62 = !{!43, !39, i64 84}
!63 = !{!"strand.c:copy_v3_v3"}
!64 = !{!"strand.c:normalize_v3_v3"}
!65 = !{!"strand.c:negate_v3"}
!66 = !{!"strand.c:strand_eval_width"}
!67 = !{!68, !39, i64 444}
!68 = !{!"Material", !69, i64 0, !38, i64 120, !50, i64 128, !50, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !70, i64 224, !71, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !50, i64 356, !50, i64 358, !50, i64 360, !36, i64 362, !36, i64 363, !39, i64 364, !39, i64 368, !50, i64 372, !50, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !50, i64 392, !50, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !50, i64 412, !50, i64 414, !50, i64 416, !50, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !36, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !50, i64 544, !50, i64 546, !50, i64 548, !36, i64 550, !36, i64 551, !50, i64 552, !50, i64 554, !39, i64 556, !39, i64 560, !36, i64 564, !39, i64 580, !39, i64 584, !50, i64 588, !50, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !50, i64 612, !50, i64 614, !39, i64 616, !39, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !50, i64 820, !50, i64 822, !36, i64 824, !36, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !50, i64 876, !50, i64 878, !41, i64 880, !50, i64 884, !50, i64 886, !36, i64 888, !50, i64 904, !50, i64 906, !50, i64 908, !50, i64 910, !50, i64 912, !36, i64 914, !38, i64 920, !72, i64 928}
!69 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !50, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!70 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !50, i64 64, !50, i64 66, !50, i64 68, !50, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!71 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!72 = !{!"ListBase", !38, i64 0, !38, i64 8}
!73 = !{!68, !39, i64 436}
!74 = !{!68, !39, i64 440}
!75 = !{!"strand.c:cross_v3_v3v3"}
!76 = !{!"strand.c:len_v3"}
!77 = !{!"strand.c:mul_v3_fl"}
!78 = !{!"strand.c:sub_v3_v3v3"}
!79 = !{!"strand.c:add_v3_v3v3"}
!80 = !{!81, !38, i64 0}
!81 = !{!"StrandShadeCache", !38, i64 0, !38, i64 8, !38, i64 16}
!82 = !{!81, !38, i64 8}
!83 = !{!81, !38, i64 16}
!84 = !{i64 0, i64 16, !85, i64 16, i64 16, !85, i64 32, i64 4, !55, i64 36, i64 4, !55, i64 40, i64 4, !55, i64 44, i64 12, !85, i64 56, i64 12, !85, i64 68, i64 12, !85, i64 80, i64 12, !85, i64 92, i64 16, !85, i64 108, i64 12, !85, i64 120, i64 12, !85, i64 132, i64 12, !85, i64 144, i64 12, !85, i64 156, i64 12, !85, i64 168, i64 12, !85, i64 180, i64 16, !85, i64 196, i64 16, !85}
!85 = !{!36, !36, i64 0}
!86 = !{!43, !39, i64 88}
!87 = !{!"strand.c:strand_shade_get"}
!88 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!89 = !{!41, !41, i64 0}
!90 = !{!"strand.c:interpolate_shade_result"}
!91 = !{!"strand.c:strand_apply_shaderesult_alpha"}
!92 = !{!93, !39, i64 32}
!93 = !{!"ShadeResult", !36, i64 0, !36, i64 16, !39, i64 32, !39, i64 36, !39, i64 40, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 196}
!94 = !{!"strand.c:strand_shade_hash_pair"}
!95 = !{i32 0, i32 2}
!96 = !{!"strand.c:strand_project_point"}
!97 = !{!"strand.c:do_strand_point_project"}
!98 = !{!"strand.c:strand_segment_recursive"}
!99 = !{!43, !41, i64 76}
!100 = !{!40, !39, i64 180}
!101 = !{!40, !39, i64 184}
!102 = !{!35, !39, i64 56}
!103 = !{!"strand.c:strand_render"}
!104 = !{!105, !41, i64 80}
!105 = !{!"StrandPart", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !38, i64 72, !41, i64 80, !38, i64 88, !36, i64 96, !36, i64 108, !38, i64 120}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!109, !38, i64 5800}
!109 = !{!"Render", !38, i64 0, !38, i64 8, !36, i64 16, !41, i64 92, !50, i64 96, !50, i64 98, !50, i64 100, !50, i64 102, !36, i64 104, !38, i64 112, !38, i64 120, !72, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !110, i64 156, !111, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !39, i64 544, !39, i64 548, !38, i64 552, !36, i64 560, !36, i64 816, !38, i64 1072, !36, i64 1080, !38, i64 1088, !38, i64 1096, !112, i64 1104, !119, i64 5088, !38, i64 5616, !41, i64 5624, !41, i64 5628, !72, i64 5632, !38, i64 5648, !38, i64 5656, !38, i64 5664, !38, i64 5672, !39, i64 5680, !38, i64 5688, !72, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !38, i64 5744, !72, i64 5752, !72, i64 5768, !72, i64 5784, !38, i64 5800, !72, i64 5808, !41, i64 5824, !38, i64 5832, !38, i64 5840, !38, i64 5848, !38, i64 5856, !38, i64 5864, !72, i64 5872, !38, i64 5888, !72, i64 5896, !72, i64 5912, !38, i64 5928, !38, i64 5936, !38, i64 5944, !38, i64 5952, !38, i64 5960, !38, i64 5968, !38, i64 5976, !38, i64 5984, !38, i64 5992, !38, i64 6000, !38, i64 6008, !38, i64 6016, !38, i64 6024, !38, i64 6032, !38, i64 6040, !38, i64 6048, !38, i64 6056, !120, i64 6064, !38, i64 6216, !38, i64 6224, !38, i64 6232}
!110 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!111 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!112 = !{!"RenderData", !113, i64 0, !38, i64 248, !38, i64 256, !116, i64 264, !117, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !50, i64 432, !50, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !50, i64 456, !50, i64 458, !50, i64 460, !50, i64 462, !50, i64 464, !50, i64 466, !41, i64 468, !50, i64 472, !50, i64 474, !50, i64 476, !50, i64 478, !50, i64 480, !50, i64 482, !41, i64 484, !41, i64 488, !50, i64 492, !50, i64 494, !41, i64 496, !41, i64 500, !50, i64 504, !50, i64 506, !50, i64 508, !50, i64 510, !50, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !50, i64 528, !50, i64 530, !50, i64 532, !50, i64 534, !50, i64 536, !50, i64 538, !50, i64 540, !50, i64 542, !111, i64 544, !111, i64 560, !110, i64 576, !72, i64 592, !50, i64 608, !50, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !50, i64 648, !50, i64 650, !50, i64 652, !50, i64 654, !50, i64 656, !50, i64 658, !39, i64 660, !39, i64 664, !50, i64 668, !50, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !41, i64 1704, !50, i64 1708, !50, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !50, i64 2524, !50, i64 2526, !39, i64 2528, !39, i64 2532, !50, i64 2536, !50, i64 2538, !39, i64 2540, !50, i64 2544, !50, i64 2546, !41, i64 2548, !50, i64 2552, !50, i64 2554, !50, i64 2556, !50, i64 2558, !39, i64 2560, !39, i64 2564, !38, i64 2568, !41, i64 2576, !39, i64 2580, !36, i64 2584, !118, i64 2616, !41, i64 3976, !41, i64 3980}
!113 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !50, i64 8, !50, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !114, i64 24, !115, i64 184}
!114 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !38, i64 144, !38, i64 152}
!115 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!116 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !50, i64 48, !50, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!117 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !38, i64 64}
!118 = !{!"BakeData", !113, i64 0, !36, i64 248, !50, i64 1272, !50, i64 1274, !50, i64 1276, !50, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!119 = !{!"World", !69, i64 0, !38, i64 120, !50, i64 128, !50, i64 130, !50, i64 132, !50, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !50, i64 200, !50, i64 202, !50, i64 204, !50, i64 206, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !50, i64 264, !50, i64 266, !50, i64 268, !50, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !50, i64 288, !50, i64 290, !50, i64 292, !50, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !50, i64 324, !50, i64 326, !50, i64 328, !50, i64 330, !50, i64 332, !50, i64 334, !38, i64 336, !38, i64 344, !38, i64 352, !36, i64 360, !50, i64 504, !50, i64 506, !36, i64 508, !38, i64 512, !38, i64 520}
!120 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !50, i64 28, !50, i64 30, !50, i64 32, !50, i64 34, !50, i64 36, !50, i64 38, !36, i64 40, !121, i64 48, !121, i64 56, !38, i64 64, !38, i64 72, !36, i64 80, !39, i64 144, !39, i64 148}
!121 = !{!"double", !36, i64 0}
!122 = !{!123, !41, i64 28}
!123 = !{!"StrandRen", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!124 = distinct !{!124, !107}
!125 = !{!109, !38, i64 6048}
!126 = !{!109, !38, i64 6056}
!127 = !{!109, !41, i64 5732}
!128 = !{!105, !38, i64 0}
!129 = !{!130, !41, i64 128}
!130 = !{!"RenderPart", !38, i64 0, !38, i64 8, !38, i64 16, !72, i64 24, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !110, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !50, i64 140, !50, i64 142, !50, i64 144, !50, i64 146, !38, i64 152}
!131 = !{!105, !41, i64 56}
!132 = !{!130, !41, i64 132}
!133 = !{!105, !41, i64 60}
!134 = !{!105, !38, i64 16}
!135 = !{!105, !38, i64 8}
!136 = !{!130, !38, i64 72}
!137 = !{!105, !38, i64 48}
!138 = !{!105, !38, i64 120}
!139 = !{!105, !41, i64 68}
!140 = !{!105, !38, i64 72}
!141 = !{!130, !41, i64 112}
!142 = !{!130, !41, i64 120}
!143 = !{!144, !38, i64 160}
!144 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !41, i64 168, !39, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !39, i64 188, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216}
!145 = !{!130, !41, i64 116}
!146 = !{!130, !41, i64 124}
!147 = !{!49, !38, i64 16}
!148 = !{!149, !38, i64 144}
!149 = !{!"ObjectRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !36, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !36, i64 180, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272}
!150 = !{!43, !41, i64 64}
!151 = !{!68, !41, i64 404}
!152 = !{!68, !41, i64 396}
!153 = !{!43, !39, i64 92}
!154 = !{!43, !41, i64 36}
!155 = !{!43, !38, i64 24}
!156 = !{!157, !41, i64 0}
!157 = !{!"StrandBound", !41, i64 0, !41, i64 4, !36, i64 8}
!158 = !{!157, !41, i64 4}
!159 = !{!123, !38, i64 0}
!160 = !{!123, !41, i64 16}
!161 = !{!162, !41, i64 8}
!162 = !{!"StrandSortSegment", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !39, i64 20}
!163 = !{!162, !41, i64 12}
!164 = !{!162, !41, i64 16}
!165 = !{!162, !39, i64 20}
!166 = !{!162, !38, i64 0}
!167 = distinct !{!167, !107}
!168 = distinct !{!168, !107}
!169 = distinct !{!169, !107}
!170 = distinct !{!170, !107}
!171 = !{i64 0, i64 8, !46, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 4, !89, i64 20, i64 4, !55}
!172 = distinct !{!172, !107}
!173 = !{!105, !38, i64 24}
!174 = !{!123, !38, i64 8}
!175 = !{!43, !39, i64 80}
!176 = !{!35, !41, i64 444}
!177 = !{!105, !38, i64 88}
!178 = distinct !{!178, !107}
!179 = !{!"strand.c:strand_test_clip"}
!180 = !{!"strand.c:compare_strand_segment"}
!181 = !{!182, !38, i64 1104}
!182 = !{!"DerivedMesh", !183, i64 0, !183, i64 200, !183, i64 400, !183, i64 600, !183, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !39, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !36, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!183 = !{!"CustomData", !38, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!184 = !{!182, !38, i64 1120}
!185 = !{!149, !38, i64 16}
!186 = !{!187, !38, i64 32}
!187 = !{!"StrandSurface", !38, i64 0, !38, i64 8, !149, i64 16, !38, i64 296, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !38, i64 336, !38, i64 344, !41, i64 352, !41, i64 356}
!188 = !{!187, !38, i64 40}
!189 = !{!149, !38, i64 24}
!190 = !{!187, !41, i64 56}
!191 = !{!149, !41, i64 40}
!192 = !{!187, !41, i64 352}
!193 = !{!187, !41, i64 356}
!194 = distinct !{!194, !107}
!195 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 4, !89, i64 44, i64 4, !89, i64 48, i64 4, !89, i64 52, i64 4, !89, i64 56, i64 24, !85, i64 80, i64 4, !89, i64 84, i64 4, !89, i64 88, i64 4, !89, i64 92, i64 4, !89, i64 96, i64 4, !89, i64 100, i64 4, !89, i64 104, i64 4, !89, i64 108, i64 4, !89, i64 112, i64 8, !46, i64 120, i64 8, !46, i64 128, i64 8, !46, i64 136, i64 8, !46, i64 144, i64 8, !46, i64 152, i64 8, !46, i64 160, i64 8, !46, i64 168, i64 4, !89, i64 172, i64 4, !89, i64 176, i64 4, !89, i64 180, i64 64, !85, i64 248, i64 8, !46, i64 256, i64 8, !46, i64 264, i64 8, !46, i64 272, i64 8, !46}
!196 = !{!187, !38, i64 296}
!197 = !{!187, !38, i64 312}
!198 = !{!187, !38, i64 320}
!199 = !{!187, !38, i64 328}
!200 = !{!187, !38, i64 336}
!201 = !{!187, !38, i64 304}
!202 = !{!187, !38, i64 344}
!203 = !{!182, !38, i64 1168}
!204 = distinct !{!204, !107}
!205 = !{!182, !38, i64 1184}
!206 = !{!207, !41, i64 0}
!207 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !50, i64 16, !36, i64 18, !36, i64 19}
!208 = !{!207, !41, i64 4}
!209 = !{!207, !41, i64 8}
!210 = !{!207, !41, i64 12}
!211 = distinct !{!211, !107}
!212 = distinct !{!212, !107}
!213 = distinct !{!213, !107}
!214 = !{!"strand.c:add_v3_fl"}
!215 = !{!"strand.c:dot_v3v3"}
!216 = !{!"strand.c:mul_v3_v3fl"}
!217 = !{!"strand.c:zero_v3"}
!218 = !{!"strand.c:strand_shade_point"}
!219 = !{!220, !36, i64 57}
!220 = !{!"VlakRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !38, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !41, i64 60}
!221 = !{!222, !38, i64 8}
!222 = !{!"ShadeInput", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !36, i64 44, !50, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !50, i64 88, !50, i64 90, !50, i64 92, !50, i64 94, !50, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !39, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !39, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !39, i64 1256, !39, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !39, i64 1336, !39, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !36, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !36, i64 1416, !39, i64 1428, !36, i64 1432, !36, i64 1433, !50, i64 1434, !50, i64 1436, !50, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !38, i64 1456, !38, i64 1464}
!223 = !{!222, !38, i64 16}
!224 = !{!222, !38, i64 24}
!225 = !{!222, !38, i64 32}
!226 = !{!222, !50, i64 1434}
!227 = !{!222, !41, i64 1404}
!228 = !{!222, !41, i64 1388}
!229 = !{!109, !50, i64 96}
!230 = !{!222, !41, i64 1444}
!231 = !{!"strand.c:interpolate_vec4"}
!232 = !{!"strand.c:interpolate_vec1"}
!233 = !{!"strand.c:interpolate_vec3"}
!234 = !{!"strand.c:normalize_v3"}
!235 = !{!"strand.c:do_scanconvert_strand"}
!236 = !{!105, !41, i64 64}
!237 = !{!"strand.c:do_strand_fillac"}
!238 = !{!105, !38, i64 40}
!239 = !{!240, !240, i64 0}
!240 = !{!"long", !36, i64 0}
!241 = !{!242, !50, i64 24}
!242 = !{!"PixStr", !38, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !50, i64 24, !50, i64 26}
!243 = !{!242, !41, i64 16}
!244 = !{!242, !38, i64 0}
!245 = distinct !{!245, !107}
!246 = !{!105, !38, i64 32}
!247 = !{!50, !50, i64 0}
!248 = !{i64 0, i64 8, !85, i64 8, i64 16, !85, i64 24, i64 16, !85, i64 40, i64 16, !85, i64 56, i64 16, !85, i64 72, i64 16, !85, i64 88, i64 16, !85, i64 104, i64 8, !46}
!249 = !{!250, !38, i64 104}
!250 = !{!"APixstrand", !36, i64 0, !36, i64 8, !36, i64 24, !36, i64 40, !36, i64 56, !36, i64 72, !36, i64 88, !38, i64 104}
!251 = distinct !{!251, !107}
!252 = !{!"strand.c:addpsAstrand"}
!253 = !{!144, !41, i64 184}
!254 = !{!144, !38, i64 152}
!255 = !{!"strand.c:strand_shade_refcount"}
!256 = !{!"strand.c:addpsmainAstrand"}
!257 = !{!258, !38, i64 16}
!258 = !{!"APixstrMain", !38, i64 0, !38, i64 8, !38, i64 16}
