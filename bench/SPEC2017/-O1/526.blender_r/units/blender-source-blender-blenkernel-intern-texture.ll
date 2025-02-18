; ModuleID = 'blender/source/blender/blenkernel/intern/texture.c'
source_filename = "blender/source/blender/blenkernel/intern/texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.ColorMapping = type { %struct.ColorBand, float, float, float, i32, [3 x float], float, i32, [3 x i32] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.OceanTex = type { ptr, [64 x i8], i32, i32 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"TexMapping\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ColorMapping\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"colorband\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ColorBand\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"add_mtex\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"envmap\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pointdensity\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"voxeldata\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ocean texture\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_tex_mapping(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 144, ptr noundef nonnull @.str) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %4 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 2, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !38
  store float 1.000000e+00, ptr %4, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 11
  %8 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 11, i64 2
  store float 1.000000e+00, ptr %8, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 11, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !38
  store float 1.000000e+00, ptr %7, align 4, !tbaa !38
  %10 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 9
  tail call void @unit_m4(ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 4
  store i8 1, ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 5
  store i8 2, ptr %12, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 6
  store i8 3, ptr %13, align 2, !tbaa !44
  %14 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 7
  store i8 0, ptr %14, align 1, !tbaa !45
  %15 = getelementptr inbounds %struct.TexMapping, ptr %3, i64 0, i32 8
  store i32 %0, ptr %15, align 4, !tbaa !46
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @default_tex_mapping(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %3 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2, i64 1
  store float 1.000000e+00, ptr %5, align 4, !tbaa !38
  store float 1.000000e+00, ptr %3, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 11, i64 2
  store float 1.000000e+00, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 11, i64 1
  store float 1.000000e+00, ptr %8, align 4, !tbaa !38
  store float 1.000000e+00, ptr %6, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  tail call void @unit_m4(ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 4
  store i8 1, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 5
  store i8 2, ptr %11, align 1, !tbaa !43
  %12 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 6
  store i8 3, ptr %12, align 2, !tbaa !44
  %13 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 7
  store i8 0, ptr %13, align 1, !tbaa !45
  %14 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 8
  store i32 %1, ptr %14, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_tex_mapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !43
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 6
  %15 = load i8, ptr %14, align 2, !tbaa !44
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load float, ptr %0, align 4, !tbaa !38
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !38
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !38
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %57, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !38
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !38
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !38
  %43 = fcmp oeq float %42, 1.000000e+00
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !38
  %47 = fcmp oeq float %46, 1.000000e+00
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !38
  %51 = fcmp une float %50, 1.000000e+00
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  tail call void @unit_m4(ptr noundef nonnull %53) #17
  %54 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !47
  %56 = or i32 %55, 4
  store i32 %56, ptr %54, align 4, !tbaa !47
  br label %112

57:                                               ; preds = %44, %40, %32, %28, %20, %17, %48, %36, %24, %13, %9, %1
  call void @zero_m4(ptr noundef nonnull %5) #17
  %58 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %58, align 4, !tbaa !38
  %59 = load i8, ptr %6, align 8, !tbaa !40
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = zext i8 %59 to i64
  %63 = add nuw nsw i64 %62, 4294967295
  %64 = and i64 %63, 4294967295
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %64
  store float 1.000000e+00, ptr %65, align 16, !tbaa !38
  br label %66

66:                                               ; preds = %61, %57
  %67 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 5
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = zext i8 %68 to i64
  %72 = add nuw nsw i64 %71, 4294967295
  %73 = and i64 %72, 4294967295
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %73, i64 1
  store float 1.000000e+00, ptr %74, align 4, !tbaa !38
  br label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 6
  %77 = load i8, ptr %76, align 2, !tbaa !44
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = zext i8 %77 to i64
  %81 = add nuw nsw i64 %80, 4294967295
  %82 = and i64 %81, 4294967295
  %83 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %82, i64 2
  store float 1.000000e+00, ptr %83, align 8, !tbaa !38
  br label %84

84:                                               ; preds = %79, %75
  %85 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %86 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 8
  call void @size_to_mat4(ptr noundef nonnull %2, ptr noundef nonnull %85) #17
  %87 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1
  call void @eul_to_mat4(ptr noundef nonnull %3, ptr noundef nonnull %87) #17
  call void @unit_m4(ptr noundef nonnull %4) #17
  %88 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %89 = load float, ptr %0, align 4, !tbaa !38
  store float %89, ptr %88, align 16, !tbaa !38
  %90 = getelementptr inbounds float, ptr %0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !38
  %92 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  store float %91, ptr %92, align 4, !tbaa !38
  %93 = getelementptr inbounds float, ptr %0, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !38
  %95 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  store float %94, ptr %95, align 8, !tbaa !38
  %96 = load i32, ptr %86, align 4, !tbaa !46
  switch i32 %96, label %107 [
    i32 1, label %97
    i32 0, label %100
    i32 2, label %102
    i32 3, label %104
  ]

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @_va_mul_m4_series_4(ptr noundef nonnull %98, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %99 = call zeroext i8 @invert_m4(ptr noundef nonnull %98) #17
  br label %107

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @_va_mul_m4_series_4(ptr noundef nonnull %101, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  br label %107

102:                                              ; preds = %84
  %103 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %103, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  br label %107

104:                                              ; preds = %84
  %105 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %105, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %106 = call zeroext i8 @invert_m4(ptr noundef nonnull %105) #17
  call void @transpose_m4(ptr noundef nonnull %105) #17
  br label %107

107:                                              ; preds = %84, %100, %104, %102, %97
  %108 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %108, ptr noundef nonnull %108, ptr noundef nonnull %5) #17
  %109 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !47
  %111 = and i32 %110, -5
  store i32 %111, ptr %109, align 4, !tbaa !47
  br label %112

112:                                              ; preds = %107, %52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

declare void @zero_m4(ptr noundef) local_unnamed_addr #3

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @eul_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @transpose_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_color_mapping() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 824, ptr noundef nonnull @.str.1) #17
  %3 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6
  %4 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 1
  %5 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %2, i8 0, i64 824, i1 false)
  store float 1.000000e+00, ptr %5, align 4, !tbaa !48
  store float 0.000000e+00, ptr %3, align 4, !tbaa !50
  %6 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 0, i32 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %8, align 4, !tbaa !53
  store float 1.000000e+00, ptr %4, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %10, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !53
  br label %12

12:                                               ; preds = %12, %0
  %13 = phi i64 [ 2, %0 ], [ %19, %12 ]
  %14 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %13
  store float 5.000000e-01, ptr %14, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %13, i32 1
  store float 5.000000e-01, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %13, i32 2
  store float 5.000000e-01, ptr %16, align 4, !tbaa !52
  %17 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %13, i32 3
  store float 1.000000e+00, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %13, i32 4
  store float 5.000000e-01, ptr %18, align 4, !tbaa !48
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %12, !llvm.loop !54

21:                                               ; preds = %12
  store i16 2, ptr %2, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 4
  store i8 0, ptr %22, align 2, !tbaa !60
  %23 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 2
  store float 1.000000e+00, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 3
  store float 1.000000e+00, ptr %25, align 4, !tbaa !64
  %26 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 5
  store float 0x3FE99999A0000000, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 5, i64 1
  store float 0x3FE99999A0000000, ptr %27, align 4, !tbaa !38
  %28 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 5, i64 2
  store float 0x3FE99999A0000000, ptr %28, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 7
  store i32 0, ptr %29, align 4, !tbaa !65
  %30 = getelementptr inbounds %struct.ColorMapping, ptr %2, i64 0, i32 6
  store float 0.000000e+00, ptr %30, align 4, !tbaa !66
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @default_color_mapping(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1
  %4 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %0, i8 0, i64 824, i1 false)
  store float 1.000000e+00, ptr %4, align 4, !tbaa !48
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %7, align 4, !tbaa !53
  store float 1.000000e+00, ptr %3, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %9, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %10, align 4, !tbaa !53
  br label %11

11:                                               ; preds = %11, %1
  %12 = phi i64 [ 2, %1 ], [ %18, %11 ]
  %13 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12
  store float 5.000000e-01, ptr %13, align 4, !tbaa !50
  %14 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 1
  store float 5.000000e-01, ptr %14, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 2
  store float 5.000000e-01, ptr %15, align 4, !tbaa !52
  %16 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 3
  store float 1.000000e+00, ptr %16, align 4, !tbaa !53
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 4
  store float 5.000000e-01, ptr %17, align 4, !tbaa !48
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %20, label %11, !llvm.loop !54

20:                                               ; preds = %11
  store i16 2, ptr %0, align 4, !tbaa !57
  %21 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 4
  store i8 0, ptr %21, align 2, !tbaa !60
  %22 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 2
  store float 1.000000e+00, ptr %23, align 4, !tbaa !63
  %24 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %24, align 4, !tbaa !64
  %25 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 5
  store float 0x3FE99999A0000000, ptr %25, align 4, !tbaa !38
  %26 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 5, i64 1
  store float 0x3FE99999A0000000, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 5, i64 2
  store float 0x3FE99999A0000000, ptr %27, align 4, !tbaa !38
  %28 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 7
  store i32 0, ptr %28, align 4, !tbaa !65
  %29 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 6
  store float 0.000000e+00, ptr %29, align 4, !tbaa !66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @init_colorband(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 4, !tbaa !48
  %5 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %6, align 4, !tbaa !48
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %13

9:                                                ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  store float 0.000000e+00, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %11, align 4, !tbaa !52
  %12 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !53
  br label %13

13:                                               ; preds = %9, %8
  store float 1.000000e+00, ptr %5, align 4, !tbaa !50
  %14 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %14, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %15, align 4, !tbaa !52
  %16 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %16, align 4, !tbaa !53
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 2, %13 ], [ %24, %17 ]
  %19 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %18
  store float 5.000000e-01, ptr %19, align 4, !tbaa !50
  %20 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %18, i32 1
  store float 5.000000e-01, ptr %20, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %18, i32 2
  store float 5.000000e-01, ptr %21, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %18, i32 3
  store float 1.000000e+00, ptr %22, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %18, i32 4
  store float 5.000000e-01, ptr %23, align 4, !tbaa !48
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, 32
  br i1 %25, label %26, label %17, !llvm.loop !54

26:                                               ; preds = %17
  store i16 2, ptr %0, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 4
  store i8 0, ptr %27, align 2, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @add_colorband(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 776, ptr noundef nonnull @.str.2) #17
  %4 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %5, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 1
  %7 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %7, align 4, !tbaa !48
  %8 = icmp eq i8 %0, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %14

10:                                               ; preds = %1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 0, i32 1
  store float 0.000000e+00, ptr %11, align 4, !tbaa !51
  %12 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !52
  %13 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %13, align 4, !tbaa !53
  br label %14

14:                                               ; preds = %10, %9
  store float 1.000000e+00, ptr %6, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %16, align 4, !tbaa !52
  %17 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %17, align 4, !tbaa !53
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 2, %14 ], [ %25, %18 ]
  %20 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 %19
  store float 5.000000e-01, ptr %20, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 %19, i32 1
  store float 5.000000e-01, ptr %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 %19, i32 2
  store float 5.000000e-01, ptr %22, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 %19, i32 3
  store float 1.000000e+00, ptr %23, align 4, !tbaa !53
  %24 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 6, i64 %19, i32 4
  store float 5.000000e-01, ptr %24, align 4, !tbaa !48
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %27, label %18, !llvm.loop !54

27:                                               ; preds = %18
  store i16 2, ptr %3, align 4, !tbaa !57
  %28 = getelementptr inbounds %struct.ColorBand, ptr %3, i64 0, i32 4
  store i8 0, ptr %28, align 2, !tbaa !60
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @do_colorband(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CBData, align 4
  %5 = alloca %struct.CBData, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %318, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr %0, align 4, !tbaa !57
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %318, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 4
  %18 = load i8, ptr %17, align 2, !tbaa !60
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 2
  %22 = load i8, ptr %21, align 4, !tbaa !67
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %23, %20 ], [ 0, %15 ]
  %26 = icmp eq i16 %13, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load float, ptr %16, align 4, !tbaa !50
  store float %28, ptr %2, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %2, i64 1
  store float %30, ptr %31, align 4, !tbaa !38
  %32 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !52
  %34 = getelementptr inbounds float, ptr %2, i64 2
  store float %33, ptr %34, align 4, !tbaa !38
  %35 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !53
  %37 = getelementptr inbounds float, ptr %2, i64 3
  store float %36, ptr %37, align 4, !tbaa !38
  br label %318

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 4
  %40 = load float, ptr %39, align 4, !tbaa !48
  %41 = fcmp oge float %40, %1
  %42 = icmp ult i32 %25, 2
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load float, ptr %16, align 4, !tbaa !50
  store float %45, ptr %2, align 4, !tbaa !38
  %46 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %2, i64 1
  store float %47, ptr %48, align 4, !tbaa !38
  %49 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !52
  %51 = getelementptr inbounds float, ptr %2, i64 2
  store float %50, ptr %51, align 4, !tbaa !38
  %52 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !53
  %54 = getelementptr inbounds float, ptr %2, i64 3
  store float %53, ptr %54, align 4, !tbaa !38
  br label %318

55:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %56 = sext i16 %13 to i32
  %57 = icmp sgt i16 %13, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55, %64
  %59 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %60 = phi ptr [ %66, %64 ], [ %16, %55 ]
  %61 = getelementptr inbounds %struct.CBData, ptr %60, i64 0, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !48
  %63 = fcmp ogt float %62, %1
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = add nuw nsw i32 %59, 1
  %66 = getelementptr inbounds %struct.CBData, ptr %60, i64 1
  %67 = icmp eq i32 %65, %56
  br i1 %67, label %68, label %58, !llvm.loop !68

68:                                               ; preds = %64, %58, %55
  %69 = phi ptr [ %16, %55 ], [ %66, %64 ], [ %60, %58 ]
  %70 = phi i32 [ 0, %55 ], [ %56, %64 ], [ %59, %58 ]
  %71 = icmp eq i32 %70, %56
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.CBData, ptr %69, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %73, i64 24, i1 false), !tbaa.struct !69
  %74 = getelementptr inbounds %struct.CBData, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %74, align 4, !tbaa !48
  br label %81

75:                                               ; preds = %68
  %76 = icmp eq i32 %70, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %69, i64 24, i1 false), !tbaa.struct !69
  %78 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %78, align 4, !tbaa !48
  br label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.CBData, ptr %69, i64 -1
  br label %81

81:                                               ; preds = %77, %79, %72
  %82 = phi ptr [ %5, %72 ], [ %69, %77 ], [ %69, %79 ]
  %83 = phi ptr [ %73, %72 ], [ %4, %77 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 4
  %85 = load float, ptr %84, align 4, !tbaa !48
  %86 = fcmp ole float %85, %1
  %87 = select i1 %86, i1 %42, i1 false
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load float, ptr %82, align 4, !tbaa !50
  store float %89, ptr %2, align 4, !tbaa !38
  %90 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !51
  %92 = getelementptr inbounds float, ptr %2, i64 1
  store float %91, ptr %92, align 4, !tbaa !38
  %93 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 2
  %94 = load float, ptr %93, align 4, !tbaa !52
  %95 = getelementptr inbounds float, ptr %2, i64 2
  store float %94, ptr %95, align 4, !tbaa !38
  %96 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 3
  %97 = load float, ptr %96, align 4, !tbaa !53
  %98 = getelementptr inbounds float, ptr %2, i64 3
  store float %97, ptr %98, align 4, !tbaa !38
  br label %317

99:                                               ; preds = %81
  %100 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !48
  %102 = fcmp une float %101, %85
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = fsub float %1, %85
  %105 = fsub float %101, %85
  %106 = fdiv float %104, %105
  br label %109

107:                                              ; preds = %99
  %108 = select i1 %71, float 1.000000e+00, float 0.000000e+00
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi float [ %106, %103 ], [ %108, %107 ]
  %111 = icmp eq i32 %25, 4
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load float, ptr %83, align 4, !tbaa !50
  store float %113, ptr %2, align 4, !tbaa !38
  %114 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 1
  %115 = load float, ptr %114, align 4, !tbaa !51
  %116 = getelementptr inbounds float, ptr %2, i64 1
  store float %115, ptr %116, align 4, !tbaa !38
  %117 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 2
  %118 = load float, ptr %117, align 4, !tbaa !52
  %119 = getelementptr inbounds float, ptr %2, i64 2
  store float %118, ptr %119, align 4, !tbaa !38
  %120 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 3
  %121 = load float, ptr %120, align 4, !tbaa !53
  %122 = getelementptr inbounds float, ptr %2, i64 3
  store float %121, ptr %122, align 4, !tbaa !38
  br label %317

123:                                              ; preds = %109
  %124 = icmp ugt i32 %25, 1
  br i1 %124, label %125, label %225

125:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %126 = add nsw i32 %56, -1
  %127 = icmp slt i32 %70, %126
  %128 = zext i1 %127 to i64
  %129 = getelementptr inbounds %struct.CBData, ptr %82, i64 %128
  %130 = icmp ugt i32 %70, 1
  %131 = sext i1 %130 to i64
  %132 = getelementptr inbounds %struct.CBData, ptr %83, i64 %131
  %133 = fcmp olt float %110, 0.000000e+00
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  %135 = fcmp ogt float %110, 1.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %125, %134, %136
  %138 = phi float [ 1.000000e+00, %136 ], [ %110, %134 ], [ 0.000000e+00, %125 ]
  %139 = icmp eq i32 %25, 3
  %140 = select i1 %139, i32 1, i32 2
  call void @key_curve_position_weights(float noundef %138, ptr noundef nonnull %6, i32 noundef %140) #17
  %141 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %142 = load float, ptr %141, align 4, !tbaa !38
  %143 = load float, ptr %132, align 4, !tbaa !50
  %144 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %145 = load float, ptr %144, align 8, !tbaa !38
  %146 = load float, ptr %83, align 4, !tbaa !50
  %147 = fmul float %145, %146
  %148 = call float @llvm.fmuladd.f32(float %142, float %143, float %147)
  %149 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !38
  %151 = load float, ptr %82, align 4, !tbaa !50
  %152 = call float @llvm.fmuladd.f32(float %150, float %151, float %148)
  %153 = load float, ptr %6, align 16, !tbaa !38
  %154 = load float, ptr %129, align 4, !tbaa !50
  %155 = call float @llvm.fmuladd.f32(float %153, float %154, float %152)
  store float %155, ptr %2, align 4, !tbaa !38
  %156 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 1
  %157 = getelementptr %struct.CBData, ptr %83, i64 -1, i32 1
  %158 = select i1 %130, ptr %157, ptr %156
  %159 = load float, ptr %158, align 4, !tbaa !51
  %160 = load float, ptr %156, align 4, !tbaa !51
  %161 = fmul float %145, %160
  %162 = call float @llvm.fmuladd.f32(float %142, float %159, float %161)
  %163 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 1
  %164 = load float, ptr %163, align 4, !tbaa !51
  %165 = call float @llvm.fmuladd.f32(float %150, float %164, float %162)
  %166 = getelementptr inbounds %struct.CBData, ptr %82, i64 1, i32 1
  %167 = select i1 %127, ptr %166, ptr %163
  %168 = load float, ptr %167, align 4, !tbaa !51
  %169 = call float @llvm.fmuladd.f32(float %153, float %168, float %165)
  %170 = getelementptr inbounds float, ptr %2, i64 1
  store float %169, ptr %170, align 4, !tbaa !38
  %171 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 2
  %172 = getelementptr %struct.CBData, ptr %83, i64 -1, i32 2
  %173 = select i1 %130, ptr %172, ptr %171
  %174 = load float, ptr %173, align 4, !tbaa !52
  %175 = load float, ptr %171, align 4, !tbaa !52
  %176 = fmul float %145, %175
  %177 = call float @llvm.fmuladd.f32(float %142, float %174, float %176)
  %178 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 2
  %179 = load float, ptr %178, align 4, !tbaa !52
  %180 = call float @llvm.fmuladd.f32(float %150, float %179, float %177)
  %181 = getelementptr inbounds %struct.CBData, ptr %82, i64 1, i32 2
  %182 = select i1 %127, ptr %181, ptr %178
  %183 = load float, ptr %182, align 4, !tbaa !52
  %184 = call float @llvm.fmuladd.f32(float %153, float %183, float %180)
  %185 = getelementptr inbounds float, ptr %2, i64 2
  store float %184, ptr %185, align 4, !tbaa !38
  %186 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 3
  %187 = getelementptr %struct.CBData, ptr %83, i64 -1, i32 3
  %188 = select i1 %130, ptr %187, ptr %186
  %189 = load float, ptr %188, align 4, !tbaa !53
  %190 = load float, ptr %186, align 4, !tbaa !53
  %191 = fmul float %145, %190
  %192 = call float @llvm.fmuladd.f32(float %142, float %189, float %191)
  %193 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 3
  %194 = load float, ptr %193, align 4, !tbaa !53
  %195 = call float @llvm.fmuladd.f32(float %150, float %194, float %192)
  %196 = getelementptr inbounds %struct.CBData, ptr %82, i64 1, i32 3
  %197 = select i1 %127, ptr %196, ptr %193
  %198 = load float, ptr %197, align 4, !tbaa !53
  %199 = call float @llvm.fmuladd.f32(float %153, float %198, float %195)
  %200 = getelementptr inbounds float, ptr %2, i64 3
  store float %199, ptr %200, align 4, !tbaa !38
  %201 = fcmp olt float %155, 0.000000e+00
  br i1 %201, label %204, label %202

202:                                              ; preds = %137
  %203 = fcmp ogt float %155, 1.000000e+00
  br i1 %203, label %204, label %206

204:                                              ; preds = %202, %137
  %205 = phi float [ 0.000000e+00, %137 ], [ 1.000000e+00, %202 ]
  store float %205, ptr %2, align 4, !tbaa !38
  br label %206

206:                                              ; preds = %204, %202
  %207 = fcmp olt float %169, 0.000000e+00
  br i1 %207, label %210, label %208

208:                                              ; preds = %206
  %209 = fcmp ogt float %169, 1.000000e+00
  br i1 %209, label %210, label %212

210:                                              ; preds = %208, %206
  %211 = phi float [ 0.000000e+00, %206 ], [ 1.000000e+00, %208 ]
  store float %211, ptr %170, align 4, !tbaa !38
  br label %212

212:                                              ; preds = %210, %208
  %213 = fcmp olt float %184, 0.000000e+00
  br i1 %213, label %216, label %214

214:                                              ; preds = %212
  %215 = fcmp ogt float %184, 1.000000e+00
  br i1 %215, label %216, label %218

216:                                              ; preds = %214, %212
  %217 = phi float [ 0.000000e+00, %212 ], [ 1.000000e+00, %214 ]
  store float %217, ptr %185, align 4, !tbaa !38
  br label %218

218:                                              ; preds = %216, %214
  %219 = fcmp olt float %199, 0.000000e+00
  br i1 %219, label %222, label %220

220:                                              ; preds = %218
  %221 = fcmp ogt float %199, 1.000000e+00
  br i1 %221, label %222, label %224

222:                                              ; preds = %220, %218
  %223 = phi float [ 0.000000e+00, %218 ], [ 1.000000e+00, %220 ]
  store float %223, ptr %200, align 4, !tbaa !38
  br label %224

224:                                              ; preds = %222, %220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %317

225:                                              ; preds = %123
  %226 = icmp eq i32 %25, 1
  br i1 %226, label %227, label %232

227:                                              ; preds = %225
  %228 = fmul float %110, %110
  %229 = fmul float %228, -2.000000e+00
  %230 = fmul float %110, %229
  %231 = tail call float @llvm.fmuladd.f32(float %228, float 3.000000e+00, float %230)
  br label %232

232:                                              ; preds = %227, %225
  %233 = phi float [ %231, %227 ], [ %110, %225 ]
  %234 = fsub float 1.000000e+00, %233
  switch i8 %18, label %291 [
    i8 1, label %235
    i8 2, label %263
  ]

235:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @rgb_to_hsv_v(ptr noundef %82, ptr noundef nonnull %7) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %83, ptr noundef nonnull %8) #17
  %236 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 3
  %237 = load i8, ptr %236, align 1, !tbaa !71
  %238 = zext i8 %237 to i32
  %239 = load float, ptr %7, align 4, !tbaa !38
  %240 = load float, ptr %8, align 4, !tbaa !38
  %241 = call fastcc float @colorband_hue_interp(i32 noundef %238, float noundef %234, float noundef %233, float noundef %239, float noundef %240)
  store float %241, ptr %2, align 4, !tbaa !38
  %242 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !38
  %244 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !38
  %246 = fmul float %233, %245
  %247 = call float @llvm.fmuladd.f32(float %234, float %243, float %246)
  %248 = getelementptr inbounds float, ptr %2, i64 1
  store float %247, ptr %248, align 4, !tbaa !38
  %249 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %250 = load float, ptr %249, align 4, !tbaa !38
  %251 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !38
  %253 = fmul float %233, %252
  %254 = call float @llvm.fmuladd.f32(float %234, float %250, float %253)
  %255 = getelementptr inbounds float, ptr %2, i64 2
  store float %254, ptr %255, align 4, !tbaa !38
  %256 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 3
  %257 = load float, ptr %256, align 4, !tbaa !53
  %258 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 3
  %259 = load float, ptr %258, align 4, !tbaa !53
  %260 = fmul float %233, %259
  %261 = call float @llvm.fmuladd.f32(float %234, float %257, float %260)
  %262 = getelementptr inbounds float, ptr %2, i64 3
  store float %261, ptr %262, align 4, !tbaa !38
  call void @hsv_to_rgb_v(ptr noundef nonnull %2, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %317

263:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @rgb_to_hsl_v(ptr noundef %82, ptr noundef nonnull %9) #17
  call void @rgb_to_hsl_v(ptr noundef nonnull %83, ptr noundef nonnull %10) #17
  %264 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 3
  %265 = load i8, ptr %264, align 1, !tbaa !71
  %266 = zext i8 %265 to i32
  %267 = load float, ptr %9, align 4, !tbaa !38
  %268 = load float, ptr %10, align 4, !tbaa !38
  %269 = call fastcc float @colorband_hue_interp(i32 noundef %266, float noundef %234, float noundef %233, float noundef %267, float noundef %268)
  store float %269, ptr %2, align 4, !tbaa !38
  %270 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !38
  %272 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !38
  %274 = fmul float %233, %273
  %275 = call float @llvm.fmuladd.f32(float %234, float %271, float %274)
  %276 = getelementptr inbounds float, ptr %2, i64 1
  store float %275, ptr %276, align 4, !tbaa !38
  %277 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %278 = load float, ptr %277, align 4, !tbaa !38
  %279 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %280 = load float, ptr %279, align 4, !tbaa !38
  %281 = fmul float %233, %280
  %282 = call float @llvm.fmuladd.f32(float %234, float %278, float %281)
  %283 = getelementptr inbounds float, ptr %2, i64 2
  store float %282, ptr %283, align 4, !tbaa !38
  %284 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 3
  %285 = load float, ptr %284, align 4, !tbaa !53
  %286 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 3
  %287 = load float, ptr %286, align 4, !tbaa !53
  %288 = fmul float %233, %287
  %289 = call float @llvm.fmuladd.f32(float %234, float %285, float %288)
  %290 = getelementptr inbounds float, ptr %2, i64 3
  store float %289, ptr %290, align 4, !tbaa !38
  call void @hsl_to_rgb_v(ptr noundef nonnull %2, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  br label %317

291:                                              ; preds = %232
  %292 = load float, ptr %82, align 4, !tbaa !50
  %293 = load float, ptr %83, align 4, !tbaa !50
  %294 = fmul float %233, %293
  %295 = tail call float @llvm.fmuladd.f32(float %234, float %292, float %294)
  store float %295, ptr %2, align 4, !tbaa !38
  %296 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 1
  %297 = load float, ptr %296, align 4, !tbaa !51
  %298 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 1
  %299 = load float, ptr %298, align 4, !tbaa !51
  %300 = fmul float %233, %299
  %301 = tail call float @llvm.fmuladd.f32(float %234, float %297, float %300)
  %302 = getelementptr inbounds float, ptr %2, i64 1
  store float %301, ptr %302, align 4, !tbaa !38
  %303 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 2
  %304 = load float, ptr %303, align 4, !tbaa !52
  %305 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 2
  %306 = load float, ptr %305, align 4, !tbaa !52
  %307 = fmul float %233, %306
  %308 = tail call float @llvm.fmuladd.f32(float %234, float %304, float %307)
  %309 = getelementptr inbounds float, ptr %2, i64 2
  store float %308, ptr %309, align 4, !tbaa !38
  %310 = getelementptr inbounds %struct.CBData, ptr %82, i64 0, i32 3
  %311 = load float, ptr %310, align 4, !tbaa !53
  %312 = getelementptr inbounds %struct.CBData, ptr %83, i64 0, i32 3
  %313 = load float, ptr %312, align 4, !tbaa !53
  %314 = fmul float %233, %313
  %315 = tail call float @llvm.fmuladd.f32(float %234, float %311, float %314)
  %316 = getelementptr inbounds float, ptr %2, i64 3
  store float %315, ptr %316, align 4, !tbaa !38
  br label %317

317:                                              ; preds = %235, %291, %263, %112, %224, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %318

318:                                              ; preds = %27, %317, %44, %3, %12
  %319 = phi i8 [ 0, %12 ], [ 0, %3 ], [ 1, %44 ], [ 1, %317 ], [ 1, %27 ]
  ret i8 %319
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @colorband_hue_interp(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #7 {
  %6 = fcmp olt float %3, 1.000000e+00
  %7 = fadd float %3, -1.000000e+00
  %8 = select i1 %6, float %3, float %7
  %9 = fcmp olt float %4, 1.000000e+00
  %10 = fadd float %4, -1.000000e+00
  %11 = select i1 %9, float %4, float %10
  switch i32 %0, label %38 [
    i32 0, label %12
    i32 1, label %22
    i32 3, label %32
    i32 2, label %35
  ]

12:                                               ; preds = %5
  %13 = fcmp olt float %8, %11
  %14 = fsub float %11, %8
  %15 = fcmp ogt float %14, 5.000000e-01
  %16 = and i1 %13, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = fcmp ogt float %8, %11
  %19 = fcmp olt float %14, -5.000000e-01
  %20 = and i1 %18, %19
  %21 = select i1 %20, i32 2, i32 0
  br label %38

22:                                               ; preds = %5
  %23 = fcmp olt float %8, %11
  %24 = fsub float %11, %8
  %25 = fcmp olt float %24, 5.000000e-01
  %26 = and i1 %23, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = fcmp ogt float %8, %11
  %29 = fcmp ogt float %24, -5.000000e-01
  %30 = and i1 %28, %29
  %31 = select i1 %30, i32 2, i32 0
  br label %38

32:                                               ; preds = %5
  %33 = fcmp ogt float %8, %11
  %34 = select i1 %33, i32 2, i32 0
  br label %38

35:                                               ; preds = %5
  %36 = fcmp olt float %8, %11
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %27, %17, %35, %32, %22, %12, %5
  %39 = phi i32 [ 0, %5 ], [ 1, %12 ], [ 1, %22 ], [ %34, %32 ], [ %37, %35 ], [ %21, %17 ], [ %31, %27 ]
  switch i32 %39, label %57 [
    i32 0, label %40
    i32 1, label %43
    i32 2, label %50
  ]

40:                                               ; preds = %38
  %41 = fmul float %11, %2
  %42 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %41)
  br label %58

43:                                               ; preds = %38
  %44 = fadd float %8, 1.000000e+00
  %45 = fmul float %11, %2
  %46 = tail call float @llvm.fmuladd.f32(float %1, float %44, float %45)
  %47 = fcmp olt float %46, 1.000000e+00
  %48 = fadd float %46, -1.000000e+00
  %49 = select i1 %47, float %46, float %48
  br label %58

50:                                               ; preds = %38
  %51 = fadd float %11, 1.000000e+00
  %52 = fmul float %51, %2
  %53 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %52)
  %54 = fcmp olt float %53, 1.000000e+00
  %55 = fadd float %53, -1.000000e+00
  %56 = select i1 %54, float %53, float %55
  br label %58

57:                                               ; preds = %38
  unreachable

58:                                               ; preds = %50, %43, %40
  %59 = phi float [ %56, %50 ], [ %49, %43 ], [ %42, %40 ]
  ret float %59
}

declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hsl_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @colorband_table_RGBA(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  store i32 257, ptr %2, align 4, !tbaa !70
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 4112, ptr noundef nonnull @.str.3) #17
  store ptr %5, ptr %1, align 8, !tbaa !34
  %6 = load i32, ptr %2, align 4, !tbaa !70
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %3 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 3.906250e-03
  %13 = load ptr, ptr %1, align 8, !tbaa !34
  %14 = shl nsw i64 %9, 2
  %15 = getelementptr inbounds float, ptr %13, i64 %14
  %16 = tail call zeroext i8 @do_colorband(ptr noundef %0, float noundef %12, ptr noundef %15), !range !72
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %2, align 4, !tbaa !70
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !73

21:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @colorband_update_sort(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load i16, ptr %0, align 4, !tbaa !57
  %3 = icmp slt i16 %2, 2
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %7, i32 5
  %9 = trunc i64 %7 to i32
  store i32 %9, ptr %8, align 4, !tbaa !74
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !75

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %14 = zext nneg i16 %2 to i64
  tail call void @qsort(ptr noundef nonnull %13, i64 noundef %14, i64 noundef 24, ptr noundef nonnull @vergcband) #17
  %15 = load i16, ptr %0, align 4, !tbaa !57
  %16 = icmp sgt i16 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = zext nneg i16 %15 to i64
  %19 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !76
  %21 = sext i16 %20 to i32
  br label %22

22:                                               ; preds = %17, %30
  %23 = phi i64 [ 0, %17 ], [ %31, %30 ]
  %24 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %23, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = icmp eq i32 %25, %21
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  %29 = trunc i64 %23 to i16
  store i16 %29, ptr %28, align 2, !tbaa !76
  br label %33

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %22, !llvm.loop !77

33:                                               ; preds = %30, %12, %27, %1
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergcband(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.CBData, ptr %0, i64 0, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !48
  %5 = getelementptr inbounds %struct.CBData, ptr %1, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !48
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @colorband_element_add(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 4, !tbaa !57
  %4 = icmp eq i16 %3, 32
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %7 = sext i16 %3 to i64
  %8 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %7
  %9 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %7, i32 4
  store float %1, ptr %9, align 4, !tbaa !48
  %10 = icmp eq i16 %3, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call zeroext i8 @do_colorband(ptr noundef nonnull %0, float noundef %1, ptr noundef nonnull %8), !range !72
  br label %14

13:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i16, ptr %0, align 4, !tbaa !57
  %16 = add i16 %15, 1
  store i16 %16, ptr %0, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  store i16 %15, ptr %17, align 2, !tbaa !76
  %18 = icmp slt i16 %16, 2
  br i1 %18, label %44, label %19

19:                                               ; preds = %14
  %20 = zext nneg i16 %16 to i64
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %25, %21 ]
  %23 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %22, i32 5
  %24 = trunc i64 %22 to i32
  store i32 %24, ptr %23, align 4, !tbaa !74
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, %20
  br i1 %26, label %27, label %21, !llvm.loop !75

27:                                               ; preds = %21
  tail call void @qsort(ptr noundef nonnull %6, i64 noundef %20, i64 noundef 24, ptr noundef nonnull @vergcband) #17
  %28 = load i16, ptr %0, align 4, !tbaa !57
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = zext nneg i16 %28 to i64
  %32 = load i16, ptr %17, align 2, !tbaa !76
  %33 = sext i16 %32 to i32
  br label %34

34:                                               ; preds = %41, %30
  %35 = phi i64 [ 0, %30 ], [ %42, %41 ]
  %36 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %35, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = icmp eq i32 %37, %33
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = trunc i64 %35 to i16
  store i16 %40, ptr %17, align 2, !tbaa !76
  br label %44

41:                                               ; preds = %34
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %44, label %34, !llvm.loop !77

44:                                               ; preds = %41, %14, %27, %39
  %45 = load i16, ptr %17, align 2, !tbaa !76
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds %struct.CBData, ptr %6, i64 %46
  br label %48

48:                                               ; preds = %2, %44
  %49 = phi ptr [ %47, %44 ], [ null, %2 ]
  ret ptr %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @colorband_element_remove(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = load i16, ptr %0, align 4, !tbaa !57
  %4 = icmp sgt i16 %3, 1
  %5 = zext nneg i16 %3 to i32
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = sext i16 %3 to i32
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = zext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ %12, %11 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %14
  %16 = add nuw nsw i64 %14, 1
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %15, ptr noundef nonnull align 4 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !69
  %18 = trunc i64 %16 to i32
  %19 = icmp slt i32 %18, %9
  br i1 %19, label %13, label %20, !llvm.loop !78

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !76
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = add i16 %22, -1
  store i16 %25, ptr %21, align 2, !tbaa !76
  br label %26

26:                                               ; preds = %24, %20
  %27 = add i16 %3, -1
  store i16 %27, ptr %0, align 4, !tbaa !57
  br label %28

28:                                               ; preds = %2, %26
  %29 = phi i32 [ 1, %26 ], [ 0, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_texture_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7, %17
  %12 = phi i64 [ %18, %17 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.EnvMap, ptr %9, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @IMB_freeImBuf(ptr noundef nonnull %14) #17
  br label %17

17:                                               ; preds = %16, %11
  store ptr null, ptr %13, align 8, !tbaa !34
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %20, label %11, !llvm.loop !84

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.EnvMap, ptr %9, i64 0, i32 13
  store i32 0, ptr %21, align 4, !tbaa !85
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %9) #17
  br label %23

23:                                               ; preds = %20, %7
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %29) #17
  store ptr null, ptr %28, align 8, !tbaa !88
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %34) #17
  store ptr null, ptr %33, align 8, !tbaa !90
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %40) #17
  store ptr null, ptr %39, align 8, !tbaa !91
  br label %44

44:                                               ; preds = %38, %42
  %45 = getelementptr inbounds %struct.PointDensity, ptr %25, i64 0, i32 24
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  tail call void @curvemapping_free(ptr noundef %46) #17
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %47(ptr noundef nonnull %25) #17
  br label %48

48:                                               ; preds = %44, %23
  %49 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.VoxelData, ptr %50, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !94
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %57(ptr noundef nonnull %54) #17
  store ptr null, ptr %53, align 8, !tbaa !94
  br label %58

58:                                               ; preds = %52, %56
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %59(ptr noundef nonnull %50) #17
  br label %60

60:                                               ; preds = %58, %48
  %61 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %62 = load ptr, ptr %61, align 8, !tbaa !96
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %65(ptr noundef nonnull %62) #17
  br label %66

66:                                               ; preds = %64, %60
  tail call void @BKE_free_animdata(ptr noundef %0) #17
  %67 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  tail call void @BKE_previewimg_free(ptr noundef nonnull %67) #17
  tail call void @BKE_icon_delete(ptr noundef %0) #17
  %68 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %68, align 8, !tbaa !97
  %69 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  tail call void @ntreeFreeTree(ptr noundef nonnull %70) #17
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %74 = load ptr, ptr %69, align 8, !tbaa !98
  tail call void %73(ptr noundef %74) #17
  br label %75

75:                                               ; preds = %72, %66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_envmap(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @IMB_freeImBuf(ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !34
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 6
  br i1 %10, label %11, label %2, !llvm.loop !84

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 0, ptr %12, align 4, !tbaa !85
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_pointdensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !90
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #17
  store ptr null, ptr %13, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %12, %16
  %19 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  tail call void @curvemapping_free(ptr noundef %20) #17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !94
  br label %7

7:                                                ; preds = %1, %5
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_oceantex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #3

declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #3

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @default_tex(ptr noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  store i16 8, ptr %2, align 8, !tbaa !99
  %3 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  store ptr null, ptr %3, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 33
  store i16 0, ptr %4, align 2, !tbaa !101
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  store i16 8, ptr %5, align 2, !tbaa !102
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  store i16 7, ptr %6, align 4, !tbaa !103
  %7 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  store i16 3, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 35
  store float 0.000000e+00, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 34
  store float 0.000000e+00, ptr %9, align 4, !tbaa !106
  %10 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 37
  store float 1.000000e+00, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 36
  store float 1.000000e+00, ptr %11, align 4, !tbaa !108
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 38
  store i32 1, ptr %12, align 4, !tbaa !109
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  store i32 8, ptr %13, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 41
  store i16 1, ptr %14, align 2, !tbaa !111
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 40
  store i16 1, ptr %15, align 4, !tbaa !112
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 43
  store i16 2, ptr %16, align 2, !tbaa !113
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 47
  store i32 1, ptr %17, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 45
  store i32 0, ptr %18, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 46
  store i32 0, ptr %19, align 4, !tbaa !116
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  store float 2.500000e-01, ptr %20, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  store i16 2, ptr %21, align 4, !tbaa !118
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 3
  store float 5.000000e+00, ptr %22, align 4, !tbaa !119
  %23 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  store float 0x3F999999A0000000, ptr %23, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  store float 1.000000e+00, ptr %24, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %25, align 4, !tbaa !122
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %26, align 8, !tbaa !123
  %27 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %27, align 8, !tbaa !124
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %28, align 4, !tbaa !125
  %29 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %29, align 8, !tbaa !126
  %30 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %30, align 4, !tbaa !127
  %31 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  store i16 0, ptr %31, align 8, !tbaa !128
  %32 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  store i16 0, ptr %32, align 2, !tbaa !129
  %33 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  store float 1.000000e+00, ptr %33, align 8, !tbaa !130
  %34 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 13
  store float 2.000000e+00, ptr %34, align 4, !tbaa !131
  %35 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 14
  store float 2.000000e+00, ptr %35, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 15
  store float 1.000000e+00, ptr %36, align 4, !tbaa !133
  %37 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 16
  store float 1.000000e+00, ptr %37, align 8, !tbaa !134
  %38 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 18
  store float 1.000000e+00, ptr %38, align 8, !tbaa !135
  %39 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 17
  store float 1.000000e+00, ptr %39, align 4, !tbaa !136
  %40 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 19
  store float 1.000000e+00, ptr %40, align 4, !tbaa !137
  %41 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 22
  store float 0.000000e+00, ptr %41, align 8, !tbaa !138
  %42 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 21
  store float 0.000000e+00, ptr %42, align 4, !tbaa !139
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  store float 0.000000e+00, ptr %43, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 23
  store float 2.500000e+00, ptr %44, align 4, !tbaa !141
  %45 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 24
  store i16 0, ptr %45, align 8, !tbaa !142
  %46 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 25
  store i16 0, ptr %46, align 2, !tbaa !143
  %47 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.EnvMap, ptr %48, i64 0, i32 6
  store i16 1, ptr %51, align 2, !tbaa !144
  %52 = getelementptr inbounds %struct.EnvMap, ptr %48, i64 0, i32 7
  store float 0x3FB99999A0000000, ptr %52, align 8, !tbaa !145
  %53 = getelementptr inbounds %struct.EnvMap, ptr %48, i64 0, i32 8
  store float 1.000000e+02, ptr %53, align 4, !tbaa !146
  %54 = getelementptr inbounds %struct.EnvMap, ptr %48, i64 0, i32 11
  store i16 600, ptr %54, align 8, !tbaa !147
  %55 = getelementptr inbounds %struct.EnvMap, ptr %48, i64 0, i32 12
  store i16 0, ptr %55, align 2, !tbaa !148
  br label %56

56:                                               ; preds = %50, %1
  %57 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %58 = load ptr, ptr %57, align 8, !tbaa !87
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.PointDensity, ptr %58, i64 0, i32 3
  store float 0x3FD3333340000000, ptr %61, align 8, !tbaa !149
  %62 = getelementptr inbounds %struct.PointDensity, ptr %58, i64 0, i32 1
  store i16 0, ptr %62, align 2, !tbaa !150
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %65 = load ptr, ptr %64, align 8, !tbaa !93
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds [3 x i32], ptr %65, i64 0, i64 2
  store i32 0, ptr %68, align 8, !tbaa !70
  %69 = getelementptr inbounds [3 x i32], ptr %65, i64 0, i64 1
  store i32 0, ptr %69, align 4, !tbaa !70
  store i32 0, ptr %65, align 8, !tbaa !70
  %70 = getelementptr inbounds %struct.VoxelData, ptr %65, i64 0, i32 1
  store i32 1, ptr %70, align 4, !tbaa !151
  %71 = getelementptr inbounds %struct.VoxelData, ptr %65, i64 0, i32 2
  store i16 4, ptr %71, align 8, !tbaa !152
  br label %72

72:                                               ; preds = %67, %63
  %73 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %74 = load ptr, ptr %73, align 8, !tbaa !96
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.OceanTex, ptr %74, i64 0, i32 2
  store i32 1, ptr %77, align 8, !tbaa !153
  store ptr null, ptr %74, align 8, !tbaa !155
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 5
  store i8 2, ptr %79, align 8, !tbaa !156
  %80 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 7
  store i8 1, ptr %80, align 2, !tbaa !157
  %81 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 2
  store i32 100, ptr %81, align 4, !tbaa !158
  %82 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 4
  store i32 1, ptr %82, align 4, !tbaa !159
  %83 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  store ptr null, ptr %83, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @tex_set_type(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %47 [
    i32 15, label %3
    i32 14, label %20
    i32 10, label %26
    i32 16, label %39
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 1088, ptr noundef nonnull @.str.7) #17
  %10 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 13
  store ptr null, ptr %10, align 8, !tbaa !94
  %11 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 2
  store i32 1, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  store i32 1, ptr %12, align 4, !tbaa !70
  store i32 1, ptr %9, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 1
  store i32 1, ptr %13, align 4, !tbaa !151
  %14 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 2
  store i16 4, ptr %14, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 10
  store float 1.000000e+00, ptr %15, align 8, !tbaa !161
  %16 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 4
  store i16 2, ptr %16, align 4, !tbaa !162
  %17 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 9
  store ptr null, ptr %17, align 8, !tbaa !163
  %18 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 14
  store i32 -1, ptr %18, align 8, !tbaa !164
  %19 = getelementptr inbounds %struct.VoxelData, ptr %9, i64 0, i32 15
  store i32 0, ptr %19, align 4, !tbaa !165
  store ptr %9, ptr %4, align 8, !tbaa !93
  br label %47

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = tail call ptr @BKE_add_pointdensity()
  store ptr %25, ptr %21, align 8, !tbaa !87
  br label %47

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 200, ptr noundef nonnull @.str.5) #17
  %33 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 5
  store i16 0, ptr %33, align 4, !tbaa !166
  %34 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 6
  store i16 1, ptr %34, align 2, !tbaa !144
  %35 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 7
  store float 0x3FB99999A0000000, ptr %35, align 8, !tbaa !145
  %36 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 8
  store float 1.000000e+02, ptr %36, align 4, !tbaa !146
  %37 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 11
  store i16 600, ptr %37, align 8, !tbaa !147
  %38 = getelementptr inbounds %struct.EnvMap, ptr %32, i64 0, i32 9
  store float 5.000000e-01, ptr %38, align 8, !tbaa !167
  store ptr %32, ptr %27, align 8, !tbaa !83
  br label %47

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = tail call ptr %44(i64 noundef 80, ptr noundef nonnull @.str.8) #17
  %46 = getelementptr inbounds %struct.OceanTex, ptr %45, i64 0, i32 2
  store i32 1, ptr %46, align 8, !tbaa !153
  store ptr null, ptr %45, align 8, !tbaa !155
  store ptr %45, ptr %40, align 8, !tbaa !96
  br label %47

47:                                               ; preds = %39, %43, %26, %30, %20, %24, %3, %7, %2
  %48 = trunc i32 %1 to i16
  %49 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  store i16 %48, ptr %49, align 8, !tbaa !99
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_add_voxeldata() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 1088, ptr noundef nonnull @.str.7) #17
  %3 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 13
  store ptr null, ptr %3, align 8, !tbaa !94
  %4 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 1, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 1, ptr %5, align 4, !tbaa !70
  store i32 1, ptr %2, align 8, !tbaa !70
  %6 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 1
  store i32 1, ptr %6, align 4, !tbaa !151
  %7 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 2
  store i16 4, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 10
  store float 1.000000e+00, ptr %8, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 4
  store i16 2, ptr %9, align 4, !tbaa !162
  %10 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 9
  store ptr null, ptr %10, align 8, !tbaa !163
  %11 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 14
  store i32 -1, ptr %11, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 15
  store i32 0, ptr %12, align 4, !tbaa !165
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_add_pointdensity() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str.6) #17
  store i16 0, ptr %2, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 3
  store float 0x3FD3333340000000, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 1
  store i16 0, ptr %4, align 2, !tbaa !150
  %5 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 2
  store float 2.000000e+00, ptr %5, align 4, !tbaa !169
  %6 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 4
  store i16 0, ptr %6, align 4, !tbaa !170
  %7 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 12
  %8 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %8, align 8, !tbaa !171
  %9 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 15
  store i16 1, ptr %9, align 4, !tbaa !172
  %10 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 19
  store float 1.000000e+00, ptr %10, align 8, !tbaa !173
  %11 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 16
  store i16 0, ptr %11, align 2, !tbaa !174
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 776, ptr noundef nonnull @.str.2) #17
  %14 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6
  %15 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %15, align 4, !tbaa !48
  %16 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 1
  %17 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %17, align 4, !tbaa !48
  store float 0.000000e+00, ptr %14, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 0, i32 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !51
  %19 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %20, align 4, !tbaa !53
  store float 1.000000e+00, ptr %16, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %22, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %23, align 4, !tbaa !53
  br label %24

24:                                               ; preds = %24, %0
  %25 = phi i64 [ 2, %0 ], [ %31, %24 ]
  %26 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 %25
  store float 5.000000e-01, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 %25, i32 1
  store float 5.000000e-01, ptr %27, align 4, !tbaa !51
  %28 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 %25, i32 2
  store float 5.000000e-01, ptr %28, align 4, !tbaa !52
  %29 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 %25, i32 3
  store float 1.000000e+00, ptr %29, align 4, !tbaa !53
  %30 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 6, i64 %25, i32 4
  store float 5.000000e-01, ptr %30, align 4, !tbaa !48
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, 32
  br i1 %32, label %33, label %24, !llvm.loop !54

33:                                               ; preds = %24
  store i16 2, ptr %13, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.ColorBand, ptr %13, i64 0, i32 4
  store i8 0, ptr %34, align 2, !tbaa !60
  %35 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 23
  store ptr %13, ptr %35, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 20
  store float 1.000000e+00, ptr %36, align 4, !tbaa !175
  %37 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 6
  store i32 0, ptr %37, align 8, !tbaa !176
  %38 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 8
  store ptr null, ptr %38, align 8, !tbaa !177
  %39 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 9
  store i32 0, ptr %39, align 8, !tbaa !178
  %40 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 10
  store i16 2, ptr %40, align 4, !tbaa !179
  %41 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %42 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 24
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.CurveMapping, ptr %41, i64 0, i32 2
  store i32 0, ptr %43, align 8, !tbaa !180
  %44 = getelementptr inbounds %struct.CurveMapping, ptr %41, i64 0, i32 6, i64 0, i32 1
  %45 = load i16, ptr %44, align 2, !tbaa !183
  %46 = and i16 %45, -2
  store i16 %46, ptr %44, align 2, !tbaa !183
  %47 = getelementptr inbounds %struct.CurveMapping, ptr %41, i64 0, i32 6
  %48 = getelementptr inbounds %struct.CurveMapping, ptr %41, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef 0, i32 noundef 1) #17
  %49 = load ptr, ptr %42, align 8, !tbaa !92
  tail call void @curvemapping_changed(ptr noundef %49, i8 noundef zeroext 0) #17
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_add_envmap() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 200, ptr noundef nonnull @.str.5) #17
  %3 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 5
  store i16 0, ptr %3, align 4, !tbaa !166
  %4 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 6
  store i16 1, ptr %4, align 2, !tbaa !144
  %5 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 7
  store float 0x3FB99999A0000000, ptr %5, align 8, !tbaa !145
  %6 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 8
  store float 1.000000e+02, ptr %6, align 4, !tbaa !146
  %7 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 11
  store i16 600, ptr %7, align 8, !tbaa !147
  %8 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 9
  store float 5.000000e-01, ptr %8, align 8, !tbaa !167
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_add_oceantex() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 80, ptr noundef nonnull @.str.8) #17
  %3 = getelementptr inbounds %struct.OceanTex, ptr %2, i64 0, i32 2
  store i32 1, ptr %3, align 8, !tbaa !153
  store ptr null, ptr %2, align 8, !tbaa !155
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_texture(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17748, ptr noundef %1) #17
  tail call void @default_tex(ptr noundef %3)
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @default_mtex(ptr noundef writeonly %0) local_unnamed_addr #13 {
  store i16 16, ptr %0, align 8, !tbaa !185
  %2 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 2, !tbaa !187
  %3 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  store i8 1, ptr %4, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  store i8 2, ptr %5, align 1, !tbaa !190
  %6 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  store i8 3, ptr %6, align 2, !tbaa !191
  %7 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %7, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !38
  %10 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 14
  store i16 17664, ptr %12, align 8, !tbaa !193
  %13 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 15
  store i16 0, ptr %13, align 2, !tbaa !194
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 22
  store float 1.000000e+00, ptr %14, align 4, !tbaa !195
  %15 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 23
  store float 0.000000e+00, ptr %15, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 24
  store float 1.000000e+00, ptr %16, align 4, !tbaa !197
  %17 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 25
  store float 1.000000e+00, ptr %17, align 8, !tbaa !198
  %18 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 26
  store float 1.000000e+00, ptr %18, align 4, !tbaa !199
  %19 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 3
  store i16 0, ptr %19, align 2, !tbaa !200
  %20 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 28
  store float 1.000000e+00, ptr %20, align 4, !tbaa !201
  %21 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 30
  store float 1.000000e+00, ptr %21, align 4, !tbaa !202
  %22 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 29
  store float 1.000000e+00, ptr %22, align 8, !tbaa !203
  %23 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %23, align 8, !tbaa !204
  %24 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 33
  store float 1.000000e+00, ptr %24, align 8, !tbaa !205
  %25 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 34
  store float 1.000000e+00, ptr %25, align 4, !tbaa !206
  %26 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 35
  store float 1.000000e+00, ptr %26, align 8, !tbaa !207
  %27 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 36
  store float 1.000000e+00, ptr %27, align 4, !tbaa !208
  %28 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 37
  store float 1.000000e+00, ptr %28, align 8, !tbaa !209
  %29 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 38
  store float 1.000000e+00, ptr %29, align 4, !tbaa !210
  %30 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 39
  store float 1.000000e+00, ptr %30, align 8, !tbaa !211
  %31 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 40
  store float 1.000000e+00, ptr %31, align 4, !tbaa !212
  %32 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 41
  store float 1.000000e+00, ptr %32, align 8, !tbaa !213
  %33 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 42
  store float 1.000000e+00, ptr %33, align 4, !tbaa !214
  %34 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 43
  store float 1.000000e+00, ptr %34, align 8, !tbaa !215
  %35 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 44
  store float 1.000000e+00, ptr %35, align 4, !tbaa !216
  %36 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 45
  store float 1.000000e+00, ptr %36, align 8, !tbaa !217
  %37 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 46
  store float 1.000000e+00, ptr %37, align 4, !tbaa !218
  %38 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 47
  store float 1.000000e+00, ptr %38, align 8, !tbaa !219
  %39 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 48
  store float 1.000000e+00, ptr %39, align 4, !tbaa !220
  %40 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 61
  store float 1.000000e+00, ptr %40, align 8, !tbaa !221
  %41 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 62
  store float 1.000000e+00, ptr %41, align 4, !tbaa !222
  %42 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 63
  store float 1.000000e+00, ptr %42, align 8, !tbaa !223
  %43 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 64
  store float 1.000000e+00, ptr %43, align 4, !tbaa !224
  %44 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 49
  store float 1.000000e+00, ptr %44, align 8, !tbaa !225
  %45 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 50
  store float 1.000000e+00, ptr %45, align 4, !tbaa !226
  %46 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 51
  store float 1.000000e+00, ptr %46, align 8, !tbaa !227
  %47 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 53
  store float 1.000000e+00, ptr %47, align 8, !tbaa !228
  %48 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 54
  store float 1.000000e+00, ptr %48, align 4, !tbaa !229
  %49 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 55
  store float 1.000000e+00, ptr %49, align 8, !tbaa !230
  %50 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 57
  store float 1.000000e+00, ptr %50, align 8, !tbaa !231
  %51 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 58
  store float 1.000000e+00, ptr %51, align 4, !tbaa !232
  %52 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 59
  store float 1.000000e+00, ptr %52, align 8, !tbaa !233
  %53 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 52
  store float 1.000000e+00, ptr %53, align 4, !tbaa !234
  %54 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 56
  store float 1.000000e+00, ptr %54, align 4, !tbaa !235
  %55 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 60
  store float 1.000000e+00, ptr %55, align 4, !tbaa !236
  %56 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 18
  store i16 3, ptr %56, align 8, !tbaa !237
  %57 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 20
  store i8 1, ptr %57, align 4, !tbaa !238
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_mtex() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %2, align 8, !tbaa !185
  %3 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 1
  store i16 1, ptr %3, align 2, !tbaa !187
  %4 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 4
  store ptr null, ptr %4, align 8, !tbaa !188
  %5 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 7
  store i8 1, ptr %5, align 8, !tbaa !189
  %6 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 8
  store i8 2, ptr %6, align 1, !tbaa !190
  %7 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 9
  store i8 3, ptr %7, align 2, !tbaa !191
  %8 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 10
  %9 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %8, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !192
  %13 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 14
  store i16 17664, ptr %13, align 8, !tbaa !193
  %14 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 15
  store i16 0, ptr %14, align 2, !tbaa !194
  %15 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 22
  store float 1.000000e+00, ptr %15, align 4, !tbaa !195
  %16 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 23
  store float 0.000000e+00, ptr %16, align 8, !tbaa !196
  %17 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 24
  store float 1.000000e+00, ptr %17, align 4, !tbaa !197
  %18 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 25
  store float 1.000000e+00, ptr %18, align 8, !tbaa !198
  %19 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 26
  store float 1.000000e+00, ptr %19, align 4, !tbaa !199
  %20 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 3
  store i16 0, ptr %20, align 2, !tbaa !200
  %21 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 28
  store float 1.000000e+00, ptr %21, align 4, !tbaa !201
  %22 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 30
  store float 1.000000e+00, ptr %22, align 4, !tbaa !202
  %23 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 29
  store float 1.000000e+00, ptr %23, align 8, !tbaa !203
  %24 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %24, align 8, !tbaa !204
  %25 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 33
  store float 1.000000e+00, ptr %25, align 8, !tbaa !205
  %26 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 34
  store float 1.000000e+00, ptr %26, align 4, !tbaa !206
  %27 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 35
  store float 1.000000e+00, ptr %27, align 8, !tbaa !207
  %28 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 36
  store float 1.000000e+00, ptr %28, align 4, !tbaa !208
  %29 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 37
  store float 1.000000e+00, ptr %29, align 8, !tbaa !209
  %30 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 38
  store float 1.000000e+00, ptr %30, align 4, !tbaa !210
  %31 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 39
  store float 1.000000e+00, ptr %31, align 8, !tbaa !211
  %32 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 40
  store float 1.000000e+00, ptr %32, align 4, !tbaa !212
  %33 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 41
  store float 1.000000e+00, ptr %33, align 8, !tbaa !213
  %34 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 42
  store float 1.000000e+00, ptr %34, align 4, !tbaa !214
  %35 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 43
  store float 1.000000e+00, ptr %35, align 8, !tbaa !215
  %36 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 44
  store float 1.000000e+00, ptr %36, align 4, !tbaa !216
  %37 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 45
  store float 1.000000e+00, ptr %37, align 8, !tbaa !217
  %38 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 46
  store float 1.000000e+00, ptr %38, align 4, !tbaa !218
  %39 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 47
  store float 1.000000e+00, ptr %39, align 8, !tbaa !219
  %40 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 48
  store float 1.000000e+00, ptr %40, align 4, !tbaa !220
  %41 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 61
  store float 1.000000e+00, ptr %41, align 8, !tbaa !221
  %42 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 62
  store float 1.000000e+00, ptr %42, align 4, !tbaa !222
  %43 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 63
  store float 1.000000e+00, ptr %43, align 8, !tbaa !223
  %44 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 64
  store float 1.000000e+00, ptr %44, align 4, !tbaa !224
  %45 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 49
  store float 1.000000e+00, ptr %45, align 8, !tbaa !225
  %46 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 50
  store float 1.000000e+00, ptr %46, align 4, !tbaa !226
  %47 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 51
  store float 1.000000e+00, ptr %47, align 8, !tbaa !227
  %48 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 53
  store float 1.000000e+00, ptr %48, align 8, !tbaa !228
  %49 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 54
  store float 1.000000e+00, ptr %49, align 4, !tbaa !229
  %50 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 55
  store float 1.000000e+00, ptr %50, align 8, !tbaa !230
  %51 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 57
  store float 1.000000e+00, ptr %51, align 8, !tbaa !231
  %52 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 58
  store float 1.000000e+00, ptr %52, align 4, !tbaa !232
  %53 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 59
  store float 1.000000e+00, ptr %53, align 8, !tbaa !233
  %54 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 52
  store float 1.000000e+00, ptr %54, align 4, !tbaa !234
  %55 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 56
  store float 1.000000e+00, ptr %55, align 4, !tbaa !235
  %56 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 60
  store float 1.000000e+00, ptr %56, align 4, !tbaa !236
  %57 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 18
  store i16 3, ptr %57, align 8, !tbaa !237
  %58 = getelementptr inbounds %struct.MTex, ptr %2, i64 0, i32 20
  store i8 1, ptr %58, align 4, !tbaa !238
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @add_mtex_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !239
  switch i16 %4, label %15 [
    i16 16717, label %5
    i16 20311, label %7
    i16 16716, label %9
    i16 21324, label %11
    i16 16720, label %13
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121
  br label %15

15:                                               ; preds = %2, %5, %7, %9, %11, %13
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ null, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %113, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, -1
  br i1 %19, label %20, label %33

20:                                               ; preds = %18, %25
  %21 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %22 = getelementptr inbounds ptr, ptr %16, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %30, label %20, !llvm.loop !240

28:                                               ; preds = %20
  %29 = trunc i64 %21 to i32
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i32 [ %29, %28 ], [ -1, %25 ]
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %113, label %35

33:                                               ; preds = %18
  %34 = icmp ugt i32 %1, 17
  br i1 %34, label %113, label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %31, %30 ], [ %1, %33 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %16, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.MTex, ptr %39, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !192
  tail call void @id_us_min(ptr noundef %43) #17
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %45 = load ptr, ptr %38, align 8, !tbaa !34
  tail call void %44(ptr noundef %45) #17
  store ptr null, ptr %38, align 8, !tbaa !34
  br label %54

46:                                               ; preds = %35
  %47 = icmp eq i16 %4, 16717
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = shl nuw i32 1, %36
  %50 = xor i32 %49, -1
  %51 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %52 = load i32, ptr %51, align 8, !tbaa !241
  %53 = and i32 %52, %50
  store i32 %53, ptr %51, align 8, !tbaa !241
  br label %54

54:                                               ; preds = %46, %48, %41
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %56 = tail call ptr %55(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %56, align 8, !tbaa !185
  %57 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 1
  store i16 1, ptr %57, align 2, !tbaa !187
  %58 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 4
  store ptr null, ptr %58, align 8, !tbaa !188
  %59 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 7
  store i8 1, ptr %59, align 8, !tbaa !189
  %60 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 8
  store i8 2, ptr %60, align 1, !tbaa !190
  %61 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 9
  store i8 3, ptr %61, align 2, !tbaa !191
  %62 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 10
  %63 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %62, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %64, align 4, !tbaa !38
  %65 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %65, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 5
  store ptr null, ptr %66, align 8, !tbaa !192
  %67 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 14
  store i16 17664, ptr %67, align 8, !tbaa !193
  %68 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 15
  store i16 0, ptr %68, align 2, !tbaa !194
  %69 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 22
  store float 1.000000e+00, ptr %69, align 4, !tbaa !195
  %70 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 23
  store float 0.000000e+00, ptr %70, align 8, !tbaa !196
  %71 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 24
  store float 1.000000e+00, ptr %71, align 4, !tbaa !197
  %72 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 25
  store float 1.000000e+00, ptr %72, align 8, !tbaa !198
  %73 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 26
  store float 1.000000e+00, ptr %73, align 4, !tbaa !199
  %74 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 3
  store i16 0, ptr %74, align 2, !tbaa !200
  %75 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 28
  store float 1.000000e+00, ptr %75, align 4, !tbaa !201
  %76 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 30
  store float 1.000000e+00, ptr %76, align 4, !tbaa !202
  %77 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 29
  store float 1.000000e+00, ptr %77, align 8, !tbaa !203
  %78 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %78, align 8, !tbaa !204
  %79 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 33
  store float 1.000000e+00, ptr %79, align 8, !tbaa !205
  %80 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 34
  store float 1.000000e+00, ptr %80, align 4, !tbaa !206
  %81 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 35
  store float 1.000000e+00, ptr %81, align 8, !tbaa !207
  %82 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 36
  store float 1.000000e+00, ptr %82, align 4, !tbaa !208
  %83 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 37
  store float 1.000000e+00, ptr %83, align 8, !tbaa !209
  %84 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 38
  store float 1.000000e+00, ptr %84, align 4, !tbaa !210
  %85 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 39
  store float 1.000000e+00, ptr %85, align 8, !tbaa !211
  %86 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 40
  store float 1.000000e+00, ptr %86, align 4, !tbaa !212
  %87 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 41
  store float 1.000000e+00, ptr %87, align 8, !tbaa !213
  %88 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 42
  store float 1.000000e+00, ptr %88, align 4, !tbaa !214
  %89 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 43
  store float 1.000000e+00, ptr %89, align 8, !tbaa !215
  %90 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 44
  store float 1.000000e+00, ptr %90, align 4, !tbaa !216
  %91 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 45
  store float 1.000000e+00, ptr %91, align 8, !tbaa !217
  %92 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 46
  store float 1.000000e+00, ptr %92, align 4, !tbaa !218
  %93 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 47
  store float 1.000000e+00, ptr %93, align 8, !tbaa !219
  %94 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 48
  store float 1.000000e+00, ptr %94, align 4, !tbaa !220
  %95 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 61
  store float 1.000000e+00, ptr %95, align 8, !tbaa !221
  %96 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 62
  store float 1.000000e+00, ptr %96, align 4, !tbaa !222
  %97 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 63
  store float 1.000000e+00, ptr %97, align 8, !tbaa !223
  %98 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 64
  store float 1.000000e+00, ptr %98, align 4, !tbaa !224
  %99 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 49
  store float 1.000000e+00, ptr %99, align 8, !tbaa !225
  %100 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 50
  store float 1.000000e+00, ptr %100, align 4, !tbaa !226
  %101 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 51
  store float 1.000000e+00, ptr %101, align 8, !tbaa !227
  %102 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 53
  store float 1.000000e+00, ptr %102, align 8, !tbaa !228
  %103 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 54
  store float 1.000000e+00, ptr %103, align 4, !tbaa !229
  %104 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 55
  store float 1.000000e+00, ptr %104, align 8, !tbaa !230
  %105 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 57
  store float 1.000000e+00, ptr %105, align 8, !tbaa !231
  %106 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 58
  store float 1.000000e+00, ptr %106, align 4, !tbaa !232
  %107 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 59
  store float 1.000000e+00, ptr %107, align 8, !tbaa !233
  %108 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 52
  store float 1.000000e+00, ptr %108, align 4, !tbaa !234
  %109 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 56
  store float 1.000000e+00, ptr %109, align 4, !tbaa !235
  %110 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 60
  store float 1.000000e+00, ptr %110, align 4, !tbaa !236
  %111 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 18
  store i16 3, ptr %111, align 8, !tbaa !237
  %112 = getelementptr inbounds %struct.MTex, ptr %56, i64 0, i32 20
  store i8 1, ptr %112, align 4, !tbaa !238
  store ptr %56, ptr %38, align 8, !tbaa !34
  br label %113

113:                                              ; preds = %33, %15, %30, %54
  %114 = phi ptr [ %56, %54 ], [ null, %30 ], [ null, %15 ], [ null, %33 ]
  ret ptr %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @give_active_mtex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !239
  switch i16 %5, label %37 [
    i16 16717, label %6
    i16 20311, label %13
    i16 16716, label %19
    i16 21324, label %25
    i16 16720, label %31
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102
  store ptr %7, ptr %1, align 8, !tbaa !34
  %8 = icmp eq ptr %2, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %11 = load i8, ptr %10, align 1, !tbaa !246
  %12 = zext i8 %11 to i16
  br label %39

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70
  store ptr %14, ptr %1, align 8, !tbaa !34
  %15 = icmp eq ptr %2, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %18 = load i16, ptr %17, align 4, !tbaa !247
  br label %39

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69
  store ptr %20, ptr %1, align 8, !tbaa !34
  %21 = icmp eq ptr %2, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %24 = load i16, ptr %23, align 8, !tbaa !249
  br label %39

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39
  store ptr %26, ptr %1, align 8, !tbaa !34
  %27 = icmp eq ptr %2, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %30 = load i16, ptr %29, align 4, !tbaa !251
  br label %39

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121
  store ptr %32, ptr %1, align 8, !tbaa !34
  %33 = icmp eq ptr %2, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %36 = load i16, ptr %35, align 2, !tbaa !253
  br label %39

37:                                               ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !34
  %38 = icmp eq ptr %2, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37, %34, %28, %22, %16, %9
  %40 = phi i16 [ %12, %9 ], [ %18, %16 ], [ %24, %22 ], [ %30, %28 ], [ %36, %34 ], [ 0, %37 ]
  %41 = phi i8 [ 1, %9 ], [ 1, %16 ], [ 1, %22 ], [ 1, %28 ], [ 1, %34 ], [ 0, %37 ]
  store i16 %40, ptr %2, align 2, !tbaa !239
  br label %42

42:                                               ; preds = %39, %6, %13, %19, %25, %31, %37
  %43 = phi i8 [ 0, %37 ], [ 1, %31 ], [ 1, %25 ], [ 1, %19 ], [ 1, %13 ], [ 1, %6 ], [ %41, %39 ]
  ret i8 %43
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_texture_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 32
  %4 = load i16, ptr %3, align 8, !tbaa !99
  %5 = icmp eq i16 %4, 8
  %6 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 54
  br i1 %5, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 8, !tbaa !100
  tail call void @id_us_plus(ptr noundef %8) #17
  br label %10

9:                                                ; preds = %1
  store ptr null, ptr %6, align 8, !tbaa !100
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(ptr noundef nonnull %12) #17
  store ptr %16, ptr %11, align 8, !tbaa !79
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %23 = tail call ptr %22(ptr noundef nonnull %19) #17
  %24 = getelementptr inbounds %struct.EnvMap, ptr %23, i64 0, i32 13
  store i32 0, ptr %24, align 4, !tbaa !85
  %25 = getelementptr i8, ptr %23, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false), !tbaa !34
  %26 = getelementptr inbounds %struct.EnvMap, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !255
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @id_us_plus(ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %21, %29
  store ptr %23, ptr %18, align 8, !tbaa !83
  br label %31

31:                                               ; preds = %30, %17
  %32 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 58
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %37 = tail call ptr %36(ptr noundef nonnull %33) #17
  %38 = getelementptr inbounds %struct.PointDensity, ptr %37, i64 0, i32 12
  %39 = getelementptr inbounds %struct.PointDensity, ptr %37, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %44 = tail call ptr %43(ptr noundef nonnull %40) #17
  store ptr %44, ptr %39, align 8, !tbaa !91
  br label %45

45:                                               ; preds = %35, %42
  %46 = getelementptr inbounds %struct.PointDensity, ptr %37, i64 0, i32 24
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = tail call ptr @curvemapping_copy(ptr noundef %47) #17
  store ptr %48, ptr %46, align 8, !tbaa !92
  store ptr %37, ptr %32, align 8, !tbaa !87
  br label %49

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 59
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %55 = tail call ptr %54(ptr noundef nonnull %51) #17
  store ptr %55, ptr %50, align 8, !tbaa !93
  br label %56

56:                                               ; preds = %53, %49
  %57 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 60
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %62 = tail call ptr %61(ptr noundef nonnull %58) #17
  store ptr %62, ptr %57, align 8, !tbaa !96
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  %65 = load ptr, ptr %64, align 8, !tbaa !160
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %65) #17
  %69 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 57
  store ptr %68, ptr %69, align 8, !tbaa !160
  br label %70

70:                                               ; preds = %67, %63
  %71 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %72 = load ptr, ptr %71, align 8, !tbaa !98
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.bNodeTree, ptr %72, i64 0, i32 27
  %76 = load ptr, ptr %75, align 8, !tbaa !256
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %76) #17
  br label %79

79:                                               ; preds = %78, %74
  %80 = load ptr, ptr %71, align 8, !tbaa !98
  %81 = tail call ptr @ntreeCopyTree(ptr noundef %80) #17
  %82 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 52
  store ptr %81, ptr %82, align 8, !tbaa !98
  br label %83

83:                                               ; preds = %79, %70
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_copy_envmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.EnvMap, ptr %3, i64 0, i32 13
  store i32 0, ptr %4, align 4, !tbaa !85
  %5 = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false), !tbaa !34
  %6 = getelementptr inbounds %struct.EnvMap, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @id_us_plus(ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %9, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_copy_pointdensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 12
  %5 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(ptr noundef nonnull %6) #17
  store ptr %10, ptr %5, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = tail call ptr @curvemapping_copy(ptr noundef %13) #17
  store ptr %14, ptr %12, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_copy_oceantex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  ret ptr %3
}

declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #3

declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #3

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @localize_texture(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #17
  %3 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(ptr noundef nonnull %4) #17
  store ptr %8, ptr %3, align 8, !tbaa !79
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(ptr noundef nonnull %11) #17
  %16 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 13
  store i32 0, ptr %16, align 4, !tbaa !85
  %17 = getelementptr i8, ptr %15, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, i8 0, i64 48, i1 false), !tbaa !34
  %18 = getelementptr inbounds %struct.EnvMap, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !255
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @id_us_plus(ptr noundef nonnull %19) #17
  br label %22

22:                                               ; preds = %13, %21
  store ptr %15, ptr %10, align 8, !tbaa !83
  %23 = load ptr, ptr %18, align 8, !tbaa !255
  tail call void @id_us_min(ptr noundef %23) #17
  br label %24

24:                                               ; preds = %22, %9
  %25 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 58
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %30 = tail call ptr %29(ptr noundef nonnull %26) #17
  %31 = getelementptr inbounds %struct.PointDensity, ptr %30, i64 0, i32 12
  %32 = getelementptr inbounds %struct.PointDensity, ptr %30, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %37 = tail call ptr %36(ptr noundef nonnull %33) #17
  store ptr %37, ptr %32, align 8, !tbaa !91
  br label %38

38:                                               ; preds = %28, %35
  %39 = getelementptr inbounds %struct.PointDensity, ptr %30, i64 0, i32 24
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = tail call ptr @curvemapping_copy(ptr noundef %40) #17
  store ptr %41, ptr %39, align 8, !tbaa !92
  store ptr %30, ptr %25, align 8, !tbaa !87
  br label %42

42:                                               ; preds = %38, %24
  %43 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 59
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %48 = tail call ptr %47(ptr noundef nonnull %44) #17
  store ptr %48, ptr %43, align 8, !tbaa !93
  %49 = getelementptr inbounds %struct.VoxelData, ptr %48, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %54 = tail call ptr %53(ptr noundef nonnull %50) #17
  %55 = load ptr, ptr %43, align 8, !tbaa !93
  %56 = getelementptr inbounds %struct.VoxelData, ptr %55, i64 0, i32 13
  store ptr %54, ptr %56, align 8, !tbaa !94
  br label %57

57:                                               ; preds = %46, %52, %42
  %58 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 60
  %59 = load ptr, ptr %58, align 8, !tbaa !96
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %63 = load ptr, ptr %62, align 8, !tbaa !96
  %64 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %65 = tail call ptr %64(ptr noundef %63) #17
  store ptr %65, ptr %58, align 8, !tbaa !96
  br label %66

66:                                               ; preds = %61, %57
  %67 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 57
  store ptr null, ptr %67, align 8, !tbaa !160
  %68 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @ntreeLocalize(ptr noundef nonnull %69) #17
  %73 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 52
  store ptr %72, ptr %73, align 8, !tbaa !98
  br label %74

74:                                               ; preds = %71, %66
  ret ptr %2
}

declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_texture_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !259
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = icmp eq ptr %4, null
  br i1 %5, label %412, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !262
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %409, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %17

14:                                               ; preds = %38
  %15 = load ptr, ptr %18, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !llvm.loop !263

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %19 = phi i8 [ %40, %14 ], [ 0, %10 ]
  %20 = phi i8 [ %39, %14 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  br label %22

22:                                               ; preds = %17, %38
  %23 = phi i64 [ 0, %17 ], [ %41, %38 ]
  %24 = phi i8 [ %19, %17 ], [ %40, %38 ]
  %25 = phi i8 [ %20, %17 ], [ %39, %38 ]
  %26 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 102, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.MTex, ptr %27, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !192
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr %21, align 8, !tbaa !264
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, i8 1, i8 %25
  %37 = select i1 %35, i8 %24, i8 1
  br label %38

38:                                               ; preds = %33, %22, %29
  %39 = phi i8 [ %25, %29 ], [ %25, %22 ], [ %36, %33 ]
  %40 = phi i8 [ %24, %29 ], [ %24, %22 ], [ %37, %33 ]
  %41 = add nuw nsw i64 %23, 1
  %42 = icmp eq i64 %41, 18
  br i1 %42, label %14, label %22, !llvm.loop !265

43:                                               ; preds = %14, %10
  %44 = phi i8 [ 0, %10 ], [ %39, %14 ]
  %45 = phi i8 [ 0, %10 ], [ %40, %14 ]
  %46 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %78, label %52

49:                                               ; preds = %73
  %50 = load ptr, ptr %53, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52, !llvm.loop !266

52:                                               ; preds = %43, %49
  %53 = phi ptr [ %50, %49 ], [ %47, %43 ]
  %54 = phi i8 [ %75, %49 ], [ %45, %43 ]
  %55 = phi i8 [ %74, %49 ], [ %44, %43 ]
  %56 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 3
  br label %57

57:                                               ; preds = %52, %73
  %58 = phi i64 [ 0, %52 ], [ %76, %73 ]
  %59 = phi i8 [ %54, %52 ], [ %75, %73 ]
  %60 = phi i8 [ %55, %52 ], [ %74, %73 ]
  %61 = getelementptr inbounds %struct.Lamp, ptr %53, i64 0, i32 69, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.MTex, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !192
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load ptr, ptr %56, align 8, !tbaa !267
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, i8 1, i8 %60
  %72 = select i1 %70, i8 %59, i8 1
  br label %73

73:                                               ; preds = %68, %57, %64
  %74 = phi i8 [ %60, %64 ], [ %60, %57 ], [ %71, %68 ]
  %75 = phi i8 [ %59, %64 ], [ %59, %57 ], [ %72, %68 ]
  %76 = add nuw nsw i64 %58, 1
  %77 = icmp eq i64 %76, 18
  br i1 %77, label %49, label %57, !llvm.loop !268

78:                                               ; preds = %49, %43
  %79 = phi i8 [ %44, %43 ], [ %74, %49 ]
  %80 = phi i8 [ %45, %43 ], [ %75, %49 ]
  %81 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %82 = load ptr, ptr %81, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %113, label %87

84:                                               ; preds = %108
  %85 = load ptr, ptr %88, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %113, label %87, !llvm.loop !269

87:                                               ; preds = %78, %84
  %88 = phi ptr [ %85, %84 ], [ %82, %78 ]
  %89 = phi i8 [ %110, %84 ], [ %80, %78 ]
  %90 = phi i8 [ %109, %84 ], [ %79, %78 ]
  %91 = getelementptr inbounds %struct.ID, ptr %88, i64 0, i32 3
  br label %92

92:                                               ; preds = %87, %108
  %93 = phi i64 [ 0, %87 ], [ %111, %108 ]
  %94 = phi i8 [ %89, %87 ], [ %110, %108 ]
  %95 = phi i8 [ %90, %87 ], [ %109, %108 ]
  %96 = getelementptr inbounds %struct.World, ptr %88, i64 0, i32 70, i64 %93
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.MTex, ptr %97, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !192
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load ptr, ptr %91, align 8, !tbaa !270
  %105 = icmp eq ptr %104, null
  %106 = select i1 %105, i8 1, i8 %95
  %107 = select i1 %105, i8 %94, i8 1
  br label %108

108:                                              ; preds = %103, %92, %99
  %109 = phi i8 [ %95, %99 ], [ %95, %92 ], [ %106, %103 ]
  %110 = phi i8 [ %94, %99 ], [ %94, %92 ], [ %107, %103 ]
  %111 = add nuw nsw i64 %93, 1
  %112 = icmp eq i64 %111, 18
  br i1 %112, label %84, label %92, !llvm.loop !271

113:                                              ; preds = %84, %78
  %114 = phi i8 [ %79, %78 ], [ %109, %84 ]
  %115 = phi i8 [ %80, %78 ], [ %110, %84 ]
  %116 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %149, label %119

119:                                              ; preds = %113, %144
  %120 = phi ptr [ %147, %144 ], [ %117, %113 ]
  %121 = phi i8 [ %146, %144 ], [ %115, %113 ]
  %122 = phi i8 [ %145, %144 ], [ %114, %113 ]
  %123 = getelementptr inbounds %struct.Brush, ptr %120, i64 0, i32 3, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !272
  %125 = icmp eq ptr %124, %0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !275
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, i8 1, i8 %122
  %131 = select i1 %129, i8 %121, i8 1
  br label %132

132:                                              ; preds = %126, %119
  %133 = phi i8 [ %122, %119 ], [ %130, %126 ]
  %134 = phi i8 [ %121, %119 ], [ %131, %126 ]
  %135 = getelementptr inbounds %struct.Brush, ptr %120, i64 0, i32 4, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !276
  %137 = icmp eq ptr %136, %0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !275
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, i8 1, i8 %133
  %143 = select i1 %141, i8 %134, i8 1
  br label %144

144:                                              ; preds = %138, %132
  %145 = phi i8 [ %133, %132 ], [ %142, %138 ]
  %146 = phi i8 [ %134, %132 ], [ %143, %138 ]
  %147 = load ptr, ptr %120, align 8, !tbaa !34
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %119, !llvm.loop !277

149:                                              ; preds = %144, %113
  %150 = phi i8 [ %114, %113 ], [ %145, %144 ]
  %151 = phi i8 [ %115, %113 ], [ %146, %144 ]
  %152 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %153 = load ptr, ptr %152, align 8, !tbaa !34
  %154 = icmp eq ptr %153, null
  br i1 %154, label %184, label %158

155:                                              ; preds = %179
  %156 = load ptr, ptr %159, align 8, !tbaa !34
  %157 = icmp eq ptr %156, null
  br i1 %157, label %184, label %158, !llvm.loop !278

158:                                              ; preds = %149, %155
  %159 = phi ptr [ %156, %155 ], [ %153, %149 ]
  %160 = phi i8 [ %181, %155 ], [ %151, %149 ]
  %161 = phi i8 [ %180, %155 ], [ %150, %149 ]
  %162 = getelementptr inbounds %struct.ID, ptr %159, i64 0, i32 3
  br label %163

163:                                              ; preds = %158, %179
  %164 = phi i64 [ 0, %158 ], [ %182, %179 ]
  %165 = phi i8 [ %160, %158 ], [ %181, %179 ]
  %166 = phi i8 [ %161, %158 ], [ %180, %179 ]
  %167 = getelementptr inbounds %struct.ParticleSettings, ptr %159, i64 0, i32 121, i64 %164
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.MTex, ptr %168, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !192
  %173 = icmp eq ptr %172, %0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load ptr, ptr %162, align 8, !tbaa !279
  %176 = icmp eq ptr %175, null
  %177 = select i1 %176, i8 1, i8 %166
  %178 = select i1 %176, i8 %165, i8 1
  br label %179

179:                                              ; preds = %174, %163, %170
  %180 = phi i8 [ %166, %170 ], [ %166, %163 ], [ %177, %174 ]
  %181 = phi i8 [ %165, %170 ], [ %165, %163 ], [ %178, %174 ]
  %182 = add nuw nsw i64 %164, 1
  %183 = icmp eq i64 %182, 18
  br i1 %183, label %155, label %163, !llvm.loop !280

184:                                              ; preds = %155, %149
  %185 = phi i8 [ %150, %149 ], [ %180, %155 ]
  %186 = phi i8 [ %151, %149 ], [ %181, %155 ]
  %187 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  %189 = icmp eq ptr %188, null
  br i1 %189, label %219, label %193

190:                                              ; preds = %214
  %191 = load ptr, ptr %194, align 8, !tbaa !34
  %192 = icmp eq ptr %191, null
  br i1 %192, label %219, label %193, !llvm.loop !281

193:                                              ; preds = %184, %190
  %194 = phi ptr [ %191, %190 ], [ %188, %184 ]
  %195 = phi i8 [ %216, %190 ], [ %186, %184 ]
  %196 = phi i8 [ %215, %190 ], [ %185, %184 ]
  %197 = getelementptr inbounds %struct.ID, ptr %194, i64 0, i32 3
  br label %198

198:                                              ; preds = %193, %214
  %199 = phi i64 [ 0, %193 ], [ %217, %214 ]
  %200 = phi i8 [ %195, %193 ], [ %216, %214 ]
  %201 = phi i8 [ %196, %193 ], [ %215, %214 ]
  %202 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %194, i64 0, i32 39, i64 %199
  %203 = load ptr, ptr %202, align 8, !tbaa !34
  %204 = icmp eq ptr %203, null
  br i1 %204, label %214, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.MTex, ptr %203, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !192
  %208 = icmp eq ptr %207, %0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load ptr, ptr %197, align 8, !tbaa !282
  %211 = icmp eq ptr %210, null
  %212 = select i1 %211, i8 1, i8 %201
  %213 = select i1 %211, i8 %200, i8 1
  br label %214

214:                                              ; preds = %209, %198, %205
  %215 = phi i8 [ %201, %205 ], [ %201, %198 ], [ %212, %209 ]
  %216 = phi i8 [ %200, %205 ], [ %200, %198 ], [ %213, %209 ]
  %217 = add nuw nsw i64 %199, 1
  %218 = icmp eq i64 %217, 18
  br i1 %218, label %190, label %198, !llvm.loop !283

219:                                              ; preds = %190, %184
  %220 = phi i8 [ %185, %184 ], [ %215, %190 ]
  %221 = phi i8 [ %186, %184 ], [ %216, %190 ]
  %222 = icmp ne i8 %220, 0
  %223 = icmp eq i8 %221, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %409, label %225

225:                                              ; preds = %219
  %226 = icmp ne i8 %221, 0
  %227 = select i1 %222, i1 %226, i1 false
  br i1 %227, label %228, label %412

228:                                              ; preds = %225
  %229 = tail call ptr @BKE_texture_copy(ptr noundef %0)
  %230 = getelementptr inbounds %struct.ID, ptr %229, i64 0, i32 6
  store i32 0, ptr %230, align 4, !tbaa !262
  %231 = load ptr, ptr %3, align 8, !tbaa !261
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %231, ptr noundef %229) #17
  %232 = load ptr, ptr %11, align 8, !tbaa !34
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %237

234:                                              ; preds = %260
  %235 = load ptr, ptr %238, align 8, !tbaa !34
  %236 = icmp eq ptr %235, null
  br i1 %236, label %240, label %237, !llvm.loop !284

237:                                              ; preds = %228, %234
  %238 = phi ptr [ %235, %234 ], [ %232, %228 ]
  %239 = getelementptr inbounds %struct.ID, ptr %238, i64 0, i32 3
  br label %243

240:                                              ; preds = %234, %228
  %241 = load ptr, ptr %46, align 8, !tbaa !34
  %242 = icmp eq ptr %241, null
  br i1 %242, label %269, label %266

243:                                              ; preds = %237, %260
  %244 = phi i64 [ 0, %237 ], [ %261, %260 ]
  %245 = getelementptr inbounds %struct.Material, ptr %238, i64 0, i32 102, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !34
  %247 = icmp eq ptr %246, null
  br i1 %247, label %260, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.MTex, ptr %246, i64 0, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !192
  %251 = icmp eq ptr %250, %0
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = load ptr, ptr %239, align 8, !tbaa !264
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %252
  store ptr %229, ptr %249, align 8, !tbaa !192
  %256 = load i32, ptr %230, align 4, !tbaa !262
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %230, align 4, !tbaa !262
  %258 = load i32, ptr %7, align 4, !tbaa !262
  %259 = add nsw i32 %258, -1
  store i32 %259, ptr %7, align 4, !tbaa !262
  br label %260

260:                                              ; preds = %243, %248, %255, %252
  %261 = add nuw nsw i64 %244, 1
  %262 = icmp eq i64 %261, 18
  br i1 %262, label %234, label %243, !llvm.loop !285

263:                                              ; preds = %289
  %264 = load ptr, ptr %267, align 8, !tbaa !34
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266, !llvm.loop !286

266:                                              ; preds = %240, %263
  %267 = phi ptr [ %264, %263 ], [ %241, %240 ]
  %268 = getelementptr inbounds %struct.ID, ptr %267, i64 0, i32 3
  br label %272

269:                                              ; preds = %263, %240
  %270 = load ptr, ptr %81, align 8, !tbaa !34
  %271 = icmp eq ptr %270, null
  br i1 %271, label %298, label %295

272:                                              ; preds = %266, %289
  %273 = phi i64 [ 0, %266 ], [ %290, %289 ]
  %274 = getelementptr inbounds %struct.Lamp, ptr %267, i64 0, i32 69, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !34
  %276 = icmp eq ptr %275, null
  br i1 %276, label %289, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.MTex, ptr %275, i64 0, i32 5
  %279 = load ptr, ptr %278, align 8, !tbaa !192
  %280 = icmp eq ptr %279, %0
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load ptr, ptr %268, align 8, !tbaa !267
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  store ptr %229, ptr %278, align 8, !tbaa !192
  %285 = load i32, ptr %230, align 4, !tbaa !262
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %230, align 4, !tbaa !262
  %287 = load i32, ptr %7, align 4, !tbaa !262
  %288 = add nsw i32 %287, -1
  store i32 %288, ptr %7, align 4, !tbaa !262
  br label %289

289:                                              ; preds = %272, %277, %284, %281
  %290 = add nuw nsw i64 %273, 1
  %291 = icmp eq i64 %290, 18
  br i1 %291, label %263, label %272, !llvm.loop !287

292:                                              ; preds = %318
  %293 = load ptr, ptr %296, align 8, !tbaa !34
  %294 = icmp eq ptr %293, null
  br i1 %294, label %298, label %295, !llvm.loop !288

295:                                              ; preds = %269, %292
  %296 = phi ptr [ %293, %292 ], [ %270, %269 ]
  %297 = getelementptr inbounds %struct.ID, ptr %296, i64 0, i32 3
  br label %301

298:                                              ; preds = %292, %269
  %299 = load ptr, ptr %116, align 8, !tbaa !34
  %300 = icmp eq ptr %299, null
  br i1 %300, label %321, label %324

301:                                              ; preds = %295, %318
  %302 = phi i64 [ 0, %295 ], [ %319, %318 ]
  %303 = getelementptr inbounds %struct.World, ptr %296, i64 0, i32 70, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !34
  %305 = icmp eq ptr %304, null
  br i1 %305, label %318, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.MTex, ptr %304, i64 0, i32 5
  %308 = load ptr, ptr %307, align 8, !tbaa !192
  %309 = icmp eq ptr %308, %0
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load ptr, ptr %297, align 8, !tbaa !270
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  store ptr %229, ptr %307, align 8, !tbaa !192
  %314 = load i32, ptr %230, align 4, !tbaa !262
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %230, align 4, !tbaa !262
  %316 = load i32, ptr %7, align 4, !tbaa !262
  %317 = add nsw i32 %316, -1
  store i32 %317, ptr %7, align 4, !tbaa !262
  br label %318

318:                                              ; preds = %301, %306, %313, %310
  %319 = add nuw nsw i64 %302, 1
  %320 = icmp eq i64 %319, 18
  br i1 %320, label %292, label %301, !llvm.loop !289

321:                                              ; preds = %351, %298
  %322 = load ptr, ptr %152, align 8, !tbaa !34
  %323 = icmp eq ptr %322, null
  br i1 %323, label %360, label %357

324:                                              ; preds = %298, %351
  %325 = phi ptr [ %352, %351 ], [ %299, %298 ]
  %326 = getelementptr inbounds %struct.Brush, ptr %325, i64 0, i32 3, i32 5
  %327 = load ptr, ptr %326, align 8, !tbaa !272
  %328 = icmp eq ptr %327, %0
  br i1 %328, label %329, label %338

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.ID, ptr %325, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !275
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  store ptr %229, ptr %326, align 8, !tbaa !272
  %334 = load i32, ptr %230, align 4, !tbaa !262
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %230, align 4, !tbaa !262
  %336 = load i32, ptr %7, align 4, !tbaa !262
  %337 = add nsw i32 %336, -1
  store i32 %337, ptr %7, align 4, !tbaa !262
  br label %338

338:                                              ; preds = %329, %333, %324
  %339 = getelementptr inbounds %struct.Brush, ptr %325, i64 0, i32 4, i32 5
  %340 = load ptr, ptr %339, align 8, !tbaa !276
  %341 = icmp eq ptr %340, %0
  br i1 %341, label %342, label %351

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.ID, ptr %325, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !275
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  store ptr %229, ptr %339, align 8, !tbaa !276
  %347 = load i32, ptr %230, align 4, !tbaa !262
  %348 = add nsw i32 %347, 1
  store i32 %348, ptr %230, align 4, !tbaa !262
  %349 = load i32, ptr %7, align 4, !tbaa !262
  %350 = add nsw i32 %349, -1
  store i32 %350, ptr %7, align 4, !tbaa !262
  br label %351

351:                                              ; preds = %342, %346, %338
  %352 = load ptr, ptr %325, align 8, !tbaa !34
  %353 = icmp eq ptr %352, null
  br i1 %353, label %321, label %324, !llvm.loop !290

354:                                              ; preds = %380
  %355 = load ptr, ptr %358, align 8, !tbaa !34
  %356 = icmp eq ptr %355, null
  br i1 %356, label %360, label %357, !llvm.loop !291

357:                                              ; preds = %321, %354
  %358 = phi ptr [ %355, %354 ], [ %322, %321 ]
  %359 = getelementptr inbounds %struct.ID, ptr %358, i64 0, i32 3
  br label %363

360:                                              ; preds = %354, %321
  %361 = load ptr, ptr %187, align 8, !tbaa !34
  %362 = icmp eq ptr %361, null
  br i1 %362, label %412, label %386

363:                                              ; preds = %357, %380
  %364 = phi i64 [ 0, %357 ], [ %381, %380 ]
  %365 = getelementptr inbounds %struct.ParticleSettings, ptr %358, i64 0, i32 121, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !34
  %367 = icmp eq ptr %366, null
  br i1 %367, label %380, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.MTex, ptr %366, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !192
  %371 = icmp eq ptr %370, %0
  br i1 %371, label %372, label %380

372:                                              ; preds = %368
  %373 = load ptr, ptr %359, align 8, !tbaa !279
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  store ptr %229, ptr %369, align 8, !tbaa !192
  %376 = load i32, ptr %230, align 4, !tbaa !262
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %230, align 4, !tbaa !262
  %378 = load i32, ptr %7, align 4, !tbaa !262
  %379 = add nsw i32 %378, -1
  store i32 %379, ptr %7, align 4, !tbaa !262
  br label %380

380:                                              ; preds = %363, %368, %375, %372
  %381 = add nuw nsw i64 %364, 1
  %382 = icmp eq i64 %381, 18
  br i1 %382, label %354, label %363, !llvm.loop !292

383:                                              ; preds = %406
  %384 = load ptr, ptr %387, align 8, !tbaa !34
  %385 = icmp eq ptr %384, null
  br i1 %385, label %412, label %386, !llvm.loop !293

386:                                              ; preds = %360, %383
  %387 = phi ptr [ %384, %383 ], [ %361, %360 ]
  %388 = getelementptr inbounds %struct.ID, ptr %387, i64 0, i32 3
  br label %389

389:                                              ; preds = %386, %406
  %390 = phi i64 [ 0, %386 ], [ %407, %406 ]
  %391 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %387, i64 0, i32 39, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !34
  %393 = icmp eq ptr %392, null
  br i1 %393, label %406, label %394

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.MTex, ptr %392, i64 0, i32 5
  %396 = load ptr, ptr %395, align 8, !tbaa !192
  %397 = icmp eq ptr %396, %0
  br i1 %397, label %398, label %406

398:                                              ; preds = %394
  %399 = load ptr, ptr %388, align 8, !tbaa !282
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  store ptr %229, ptr %395, align 8, !tbaa !192
  %402 = load i32, ptr %230, align 4, !tbaa !262
  %403 = add nsw i32 %402, 1
  store i32 %403, ptr %230, align 4, !tbaa !262
  %404 = load i32, ptr %7, align 4, !tbaa !262
  %405 = add nsw i32 %404, -1
  store i32 %405, ptr %7, align 4, !tbaa !262
  br label %406

406:                                              ; preds = %389, %394, %401, %398
  %407 = add nuw nsw i64 %390, 1
  %408 = icmp eq i64 %407, 18
  br i1 %408, label %383, label %389, !llvm.loop !294

409:                                              ; preds = %219, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  %410 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %411 = load ptr, ptr %410, align 8, !tbaa !100
  tail call void @id_lib_extern(ptr noundef %411) #17
  br label %412

412:                                              ; preds = %383, %409, %360, %225, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @give_current_object_texture(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !295
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !299
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %64

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !299
  %14 = icmp eq i16 %13, 10
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !300
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Lamp, ptr %17, i64 0, i32 49
  %21 = load i16, ptr %20, align 8, !tbaa !249
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.Lamp, ptr %17, i64 0, i32 69, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %60

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %28 = load i32, ptr %27, align 4, !tbaa !301
  %29 = trunc i32 %28 to i16
  %30 = tail call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %29) #17
  %31 = tail call ptr @give_node_material(ptr noundef %30) #17
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %30, ptr %31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 77
  %37 = load i8, ptr %36, align 1, !tbaa !302
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Material, ptr %33, i64 0, i32 103
  %41 = load ptr, ptr %40, align 8, !tbaa !303
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %41, i16 noundef signext 17748) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bNode, ptr %44, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !304
  br label %49

49:                                               ; preds = %46, %43, %39, %35, %26
  %50 = phi ptr [ %48, %46 ], [ null, %43 ], [ null, %39 ], [ null, %35 ], [ null, %26 ]
  %51 = phi ptr [ null, %46 ], [ %33, %43 ], [ %33, %39 ], [ %33, %35 ], [ null, %26 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Material, ptr %51, i64 0, i32 75
  %55 = load i8, ptr %54, align 1, !tbaa !246
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.Material, ptr %51, i64 0, i32 102, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53, %19
  %61 = phi ptr [ %24, %19 ], [ %58, %53 ]
  %62 = getelementptr inbounds %struct.MTex, ptr %61, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !192
  br label %64

64:                                               ; preds = %60, %53, %49, %19, %15, %7, %1
  %65 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %19 ], [ null, %15 ], [ %50, %53 ], [ %50, %49 ], [ %63, %60 ]
  ret ptr %65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_lamp_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %5 = load i16, ptr %4, align 8, !tbaa !249
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @give_node_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @give_current_material_texture(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !302
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !303
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 17748) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !304
  br label %17

17:                                               ; preds = %11, %14, %7, %3, %1
  %18 = phi ptr [ %16, %14 ], [ null, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  %19 = phi ptr [ null, %14 ], [ %0, %11 ], [ %0, %7 ], [ %0, %3 ], [ null, %1 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 75
  %23 = load i8, ptr %22, align 1, !tbaa !246
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 102, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.MTex, ptr %26, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  br label %31

31:                                               ; preds = %21, %28, %17
  %32 = phi ptr [ %30, %28 ], [ %18, %21 ], [ %18, %17 ]
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_lamp_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %4 = load i16, ptr %3, align 8, !tbaa !249
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %81, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %78

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %21, align 8, !tbaa !185
  %22 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 1
  store i16 1, ptr %22, align 2, !tbaa !187
  %23 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 7
  store i8 1, ptr %24, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 8
  store i8 2, ptr %25, align 1, !tbaa !190
  %26 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 9
  store i8 3, ptr %26, align 2, !tbaa !191
  %27 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 10
  %28 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %27, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  store ptr null, ptr %31, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 14
  store i16 17664, ptr %32, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 15
  store i16 0, ptr %33, align 2, !tbaa !194
  %34 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 22
  store float 1.000000e+00, ptr %34, align 4, !tbaa !195
  %35 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 23
  store float 0.000000e+00, ptr %35, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 24
  store float 1.000000e+00, ptr %36, align 4, !tbaa !197
  %37 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 25
  store float 1.000000e+00, ptr %37, align 8, !tbaa !198
  %38 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 26
  store float 1.000000e+00, ptr %38, align 4, !tbaa !199
  %39 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 3
  store i16 0, ptr %39, align 2, !tbaa !200
  %40 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 28
  store float 1.000000e+00, ptr %40, align 4, !tbaa !201
  %41 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 30
  store float 1.000000e+00, ptr %41, align 4, !tbaa !202
  %42 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 29
  store float 1.000000e+00, ptr %42, align 8, !tbaa !203
  %43 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %43, align 8, !tbaa !204
  %44 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 33
  store float 1.000000e+00, ptr %44, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 34
  store float 1.000000e+00, ptr %45, align 4, !tbaa !206
  %46 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 35
  store float 1.000000e+00, ptr %46, align 8, !tbaa !207
  %47 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 36
  store float 1.000000e+00, ptr %47, align 4, !tbaa !208
  %48 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 37
  store float 1.000000e+00, ptr %48, align 8, !tbaa !209
  %49 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 38
  store float 1.000000e+00, ptr %49, align 4, !tbaa !210
  %50 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 39
  store float 1.000000e+00, ptr %50, align 8, !tbaa !211
  %51 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 40
  store float 1.000000e+00, ptr %51, align 4, !tbaa !212
  %52 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 41
  store float 1.000000e+00, ptr %52, align 8, !tbaa !213
  %53 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 42
  store float 1.000000e+00, ptr %53, align 4, !tbaa !214
  %54 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 43
  store float 1.000000e+00, ptr %54, align 8, !tbaa !215
  %55 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 44
  store float 1.000000e+00, ptr %55, align 4, !tbaa !216
  %56 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 45
  store float 1.000000e+00, ptr %56, align 8, !tbaa !217
  %57 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 46
  store float 1.000000e+00, ptr %57, align 4, !tbaa !218
  %58 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 47
  store float 1.000000e+00, ptr %58, align 8, !tbaa !219
  %59 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 48
  store float 1.000000e+00, ptr %59, align 4, !tbaa !220
  %60 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 61
  store float 1.000000e+00, ptr %60, align 8, !tbaa !221
  %61 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 62
  store float 1.000000e+00, ptr %61, align 4, !tbaa !222
  %62 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 63
  store float 1.000000e+00, ptr %62, align 8, !tbaa !223
  %63 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 64
  store float 1.000000e+00, ptr %63, align 4, !tbaa !224
  %64 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 49
  store float 1.000000e+00, ptr %64, align 8, !tbaa !225
  %65 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 50
  store float 1.000000e+00, ptr %65, align 4, !tbaa !226
  %66 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 51
  store float 1.000000e+00, ptr %66, align 8, !tbaa !227
  %67 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 53
  store float 1.000000e+00, ptr %67, align 8, !tbaa !228
  %68 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 54
  store float 1.000000e+00, ptr %68, align 4, !tbaa !229
  %69 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 55
  store float 1.000000e+00, ptr %69, align 8, !tbaa !230
  %70 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 57
  store float 1.000000e+00, ptr %70, align 8, !tbaa !231
  %71 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 58
  store float 1.000000e+00, ptr %71, align 4, !tbaa !232
  %72 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 59
  store float 1.000000e+00, ptr %72, align 8, !tbaa !233
  %73 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 52
  store float 1.000000e+00, ptr %73, align 4, !tbaa !234
  %74 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 56
  store float 1.000000e+00, ptr %74, align 4, !tbaa !235
  %75 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 60
  store float 1.000000e+00, ptr %75, align 4, !tbaa !236
  %76 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 18
  store i16 3, ptr %76, align 8, !tbaa !237
  %77 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 20
  store i8 1, ptr %77, align 4, !tbaa !238
  store ptr %21, ptr %6, align 8, !tbaa !34
  store i16 8, ptr %21, align 8, !tbaa !185
  br label %78

78:                                               ; preds = %19, %18
  %79 = load ptr, ptr %6, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.MTex, ptr %79, i64 0, i32 5
  store ptr %1, ptr %80, align 8, !tbaa !192
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %84

81:                                               ; preds = %14
  br i1 %17, label %84, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %83(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %84

84:                                               ; preds = %81, %82, %78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_linestyle_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %5 = load i16, ptr %4, align 4, !tbaa !251
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_linestyle_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %4 = load i16, ptr %3, align 4, !tbaa !251
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %81, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %78

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %21, align 8, !tbaa !185
  %22 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 1
  store i16 1, ptr %22, align 2, !tbaa !187
  %23 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 7
  store i8 1, ptr %24, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 8
  store i8 2, ptr %25, align 1, !tbaa !190
  %26 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 9
  store i8 3, ptr %26, align 2, !tbaa !191
  %27 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 10
  %28 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %27, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  store ptr null, ptr %31, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 14
  store i16 17664, ptr %32, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 15
  store i16 0, ptr %33, align 2, !tbaa !194
  %34 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 22
  store float 1.000000e+00, ptr %34, align 4, !tbaa !195
  %35 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 23
  store float 0.000000e+00, ptr %35, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 24
  store float 1.000000e+00, ptr %36, align 4, !tbaa !197
  %37 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 25
  store float 1.000000e+00, ptr %37, align 8, !tbaa !198
  %38 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 26
  store float 1.000000e+00, ptr %38, align 4, !tbaa !199
  %39 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 3
  store i16 0, ptr %39, align 2, !tbaa !200
  %40 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 28
  store float 1.000000e+00, ptr %40, align 4, !tbaa !201
  %41 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 30
  store float 1.000000e+00, ptr %41, align 4, !tbaa !202
  %42 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 29
  store float 1.000000e+00, ptr %42, align 8, !tbaa !203
  %43 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %43, align 8, !tbaa !204
  %44 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 33
  store float 1.000000e+00, ptr %44, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 34
  store float 1.000000e+00, ptr %45, align 4, !tbaa !206
  %46 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 35
  store float 1.000000e+00, ptr %46, align 8, !tbaa !207
  %47 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 36
  store float 1.000000e+00, ptr %47, align 4, !tbaa !208
  %48 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 37
  store float 1.000000e+00, ptr %48, align 8, !tbaa !209
  %49 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 38
  store float 1.000000e+00, ptr %49, align 4, !tbaa !210
  %50 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 39
  store float 1.000000e+00, ptr %50, align 8, !tbaa !211
  %51 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 40
  store float 1.000000e+00, ptr %51, align 4, !tbaa !212
  %52 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 41
  store float 1.000000e+00, ptr %52, align 8, !tbaa !213
  %53 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 42
  store float 1.000000e+00, ptr %53, align 4, !tbaa !214
  %54 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 43
  store float 1.000000e+00, ptr %54, align 8, !tbaa !215
  %55 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 44
  store float 1.000000e+00, ptr %55, align 4, !tbaa !216
  %56 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 45
  store float 1.000000e+00, ptr %56, align 8, !tbaa !217
  %57 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 46
  store float 1.000000e+00, ptr %57, align 4, !tbaa !218
  %58 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 47
  store float 1.000000e+00, ptr %58, align 8, !tbaa !219
  %59 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 48
  store float 1.000000e+00, ptr %59, align 4, !tbaa !220
  %60 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 61
  store float 1.000000e+00, ptr %60, align 8, !tbaa !221
  %61 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 62
  store float 1.000000e+00, ptr %61, align 4, !tbaa !222
  %62 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 63
  store float 1.000000e+00, ptr %62, align 8, !tbaa !223
  %63 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 64
  store float 1.000000e+00, ptr %63, align 4, !tbaa !224
  %64 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 49
  store float 1.000000e+00, ptr %64, align 8, !tbaa !225
  %65 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 50
  store float 1.000000e+00, ptr %65, align 4, !tbaa !226
  %66 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 51
  store float 1.000000e+00, ptr %66, align 8, !tbaa !227
  %67 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 53
  store float 1.000000e+00, ptr %67, align 8, !tbaa !228
  %68 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 54
  store float 1.000000e+00, ptr %68, align 4, !tbaa !229
  %69 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 55
  store float 1.000000e+00, ptr %69, align 8, !tbaa !230
  %70 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 57
  store float 1.000000e+00, ptr %70, align 8, !tbaa !231
  %71 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 58
  store float 1.000000e+00, ptr %71, align 4, !tbaa !232
  %72 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 59
  store float 1.000000e+00, ptr %72, align 8, !tbaa !233
  %73 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 52
  store float 1.000000e+00, ptr %73, align 4, !tbaa !234
  %74 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 56
  store float 1.000000e+00, ptr %74, align 4, !tbaa !235
  %75 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 60
  store float 1.000000e+00, ptr %75, align 4, !tbaa !236
  %76 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 18
  store i16 3, ptr %76, align 8, !tbaa !237
  %77 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 20
  store i8 1, ptr %77, align 4, !tbaa !238
  store ptr %21, ptr %6, align 8, !tbaa !34
  store i16 16, ptr %21, align 8, !tbaa !185
  br label %78

78:                                               ; preds = %19, %18
  %79 = load ptr, ptr %6, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.MTex, ptr %79, i64 0, i32 5
  store ptr %1, ptr %80, align 8, !tbaa !192
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %84

81:                                               ; preds = %14
  br i1 %17, label %84, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %83(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %84

84:                                               ; preds = %81, %82, %78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @give_current_material_texture_node(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !302
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !303
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 17748) #17
  br label %13

13:                                               ; preds = %1, %3, %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @set_active_mtex(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #14 {
  %3 = icmp slt i16 %1, 0
  %4 = tail call i16 @llvm.umin.i16(i16 %1, i16 17)
  %5 = select i1 %3, i16 0, i16 %4
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !239
  switch i16 %7, label %19 [
    i16 16717, label %8
    i16 20311, label %11
    i16 16716, label %13
    i16 21324, label %15
    i16 16720, label %17
  ]

8:                                                ; preds = %2
  %9 = trunc i16 %5 to i8
  %10 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  store i8 %9, ptr %10, align 1, !tbaa !246
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  store i16 %5, ptr %12, align 4, !tbaa !247
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  store i16 %5, ptr %14, align 8, !tbaa !249
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  store i16 %5, ptr %16, align 4, !tbaa !251
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  store i16 %5, ptr %18, align 2, !tbaa !253
  br label %19

19:                                               ; preds = %2, %17, %15, %13, %11, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_material_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %4 = load i8, ptr %3, align 1, !tbaa !302
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %8 = load ptr, ptr %7, align 8, !tbaa !303
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %8, i16 noundef signext 17748) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !304
  tail call void @id_us_min(ptr noundef %15) #17
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !304
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %106

18:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !304
  br label %106

19:                                               ; preds = %10, %6, %2
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %21 = load i8, ptr %20, align 1, !tbaa !246
  %22 = zext nneg i8 %21 to i32
  %23 = zext i8 %21 to i64
  %24 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.MTex, ptr %25, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !192
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi ptr [ %29, %27 ], [ null, %19 ]
  tail call void @id_us_min(ptr noundef %31) #17
  %32 = icmp eq ptr %1, null
  %33 = load ptr, ptr %24, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %32, label %103, label %35

35:                                               ; preds = %30
  br i1 %34, label %36, label %100

36:                                               ; preds = %35
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = tail call ptr %37(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %38, align 8, !tbaa !185
  %39 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 1
  store i16 1, ptr %39, align 2, !tbaa !187
  %40 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 4
  store ptr null, ptr %40, align 8, !tbaa !188
  %41 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 7
  store i8 1, ptr %41, align 8, !tbaa !189
  %42 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 8
  store i8 2, ptr %42, align 1, !tbaa !190
  %43 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 9
  store i8 3, ptr %43, align 2, !tbaa !191
  %44 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 10
  %45 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %44, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %45, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %46, align 4, !tbaa !38
  %47 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %47, align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 5
  store ptr null, ptr %48, align 8, !tbaa !192
  %49 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 14
  store i16 17664, ptr %49, align 8, !tbaa !193
  %50 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 15
  store i16 0, ptr %50, align 2, !tbaa !194
  %51 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 22
  store float 1.000000e+00, ptr %51, align 4, !tbaa !195
  %52 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 23
  store float 0.000000e+00, ptr %52, align 8, !tbaa !196
  %53 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 24
  store float 1.000000e+00, ptr %53, align 4, !tbaa !197
  %54 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 25
  store float 1.000000e+00, ptr %54, align 8, !tbaa !198
  %55 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 26
  store float 1.000000e+00, ptr %55, align 4, !tbaa !199
  %56 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 3
  store i16 0, ptr %56, align 2, !tbaa !200
  %57 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 28
  store float 1.000000e+00, ptr %57, align 4, !tbaa !201
  %58 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 30
  store float 1.000000e+00, ptr %58, align 4, !tbaa !202
  %59 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 29
  store float 1.000000e+00, ptr %59, align 8, !tbaa !203
  %60 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %60, align 8, !tbaa !204
  %61 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 33
  store float 1.000000e+00, ptr %61, align 8, !tbaa !205
  %62 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 34
  store float 1.000000e+00, ptr %62, align 4, !tbaa !206
  %63 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 35
  store float 1.000000e+00, ptr %63, align 8, !tbaa !207
  %64 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 36
  store float 1.000000e+00, ptr %64, align 4, !tbaa !208
  %65 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 37
  store float 1.000000e+00, ptr %65, align 8, !tbaa !209
  %66 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 38
  store float 1.000000e+00, ptr %66, align 4, !tbaa !210
  %67 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 39
  store float 1.000000e+00, ptr %67, align 8, !tbaa !211
  %68 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 40
  store float 1.000000e+00, ptr %68, align 4, !tbaa !212
  %69 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 41
  store float 1.000000e+00, ptr %69, align 8, !tbaa !213
  %70 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 42
  store float 1.000000e+00, ptr %70, align 4, !tbaa !214
  %71 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 43
  store float 1.000000e+00, ptr %71, align 8, !tbaa !215
  %72 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 44
  store float 1.000000e+00, ptr %72, align 4, !tbaa !216
  %73 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 45
  store float 1.000000e+00, ptr %73, align 8, !tbaa !217
  %74 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 46
  store float 1.000000e+00, ptr %74, align 4, !tbaa !218
  %75 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 47
  store float 1.000000e+00, ptr %75, align 8, !tbaa !219
  %76 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 48
  store float 1.000000e+00, ptr %76, align 4, !tbaa !220
  %77 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 61
  store float 1.000000e+00, ptr %77, align 8, !tbaa !221
  %78 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 62
  store float 1.000000e+00, ptr %78, align 4, !tbaa !222
  %79 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 63
  store float 1.000000e+00, ptr %79, align 8, !tbaa !223
  %80 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 64
  store float 1.000000e+00, ptr %80, align 4, !tbaa !224
  %81 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 49
  store float 1.000000e+00, ptr %81, align 8, !tbaa !225
  %82 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 50
  store float 1.000000e+00, ptr %82, align 4, !tbaa !226
  %83 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 51
  store float 1.000000e+00, ptr %83, align 8, !tbaa !227
  %84 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 53
  store float 1.000000e+00, ptr %84, align 8, !tbaa !228
  %85 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 54
  store float 1.000000e+00, ptr %85, align 4, !tbaa !229
  %86 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 55
  store float 1.000000e+00, ptr %86, align 8, !tbaa !230
  %87 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 57
  store float 1.000000e+00, ptr %87, align 8, !tbaa !231
  %88 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 58
  store float 1.000000e+00, ptr %88, align 4, !tbaa !232
  %89 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 59
  store float 1.000000e+00, ptr %89, align 8, !tbaa !233
  %90 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 52
  store float 1.000000e+00, ptr %90, align 4, !tbaa !234
  %91 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 56
  store float 1.000000e+00, ptr %91, align 4, !tbaa !235
  %92 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 60
  store float 1.000000e+00, ptr %92, align 4, !tbaa !236
  %93 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 18
  store i16 3, ptr %93, align 8, !tbaa !237
  %94 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 20
  store i8 1, ptr %94, align 4, !tbaa !238
  store ptr %38, ptr %24, align 8, !tbaa !34
  %95 = shl nuw i32 1, %22
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %98 = load i32, ptr %97, align 8, !tbaa !241
  %99 = and i32 %98, %96
  store i32 %99, ptr %97, align 8, !tbaa !241
  br label %100

100:                                              ; preds = %36, %35
  %101 = load ptr, ptr %24, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.MTex, ptr %101, i64 0, i32 5
  store ptr %1, ptr %102, align 8, !tbaa !192
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %106

103:                                              ; preds = %30
  br i1 %34, label %106, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %105(ptr noundef nonnull %33) #17
  store ptr null, ptr %24, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %100, %104, %103, %17, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @has_current_material_texture(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !302
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !303
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 17748) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %7, %3, %1
  %15 = zext i1 %2 to i8
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi i8 [ %15, %14 ], [ 1, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_world_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !247
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_world_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 4, !tbaa !247
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %81, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %78

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %21, align 8, !tbaa !185
  %22 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 1
  store i16 1, ptr %22, align 2, !tbaa !187
  %23 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 7
  store i8 1, ptr %24, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 8
  store i8 2, ptr %25, align 1, !tbaa !190
  %26 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 9
  store i8 3, ptr %26, align 2, !tbaa !191
  %27 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 10
  %28 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %27, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  store ptr null, ptr %31, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 14
  store i16 17664, ptr %32, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 15
  store i16 0, ptr %33, align 2, !tbaa !194
  %34 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 22
  store float 1.000000e+00, ptr %34, align 4, !tbaa !195
  %35 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 23
  store float 0.000000e+00, ptr %35, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 24
  store float 1.000000e+00, ptr %36, align 4, !tbaa !197
  %37 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 25
  store float 1.000000e+00, ptr %37, align 8, !tbaa !198
  %38 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 26
  store float 1.000000e+00, ptr %38, align 4, !tbaa !199
  %39 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 3
  store i16 0, ptr %39, align 2, !tbaa !200
  %40 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 28
  store float 1.000000e+00, ptr %40, align 4, !tbaa !201
  %41 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 30
  store float 1.000000e+00, ptr %41, align 4, !tbaa !202
  %42 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 29
  store float 1.000000e+00, ptr %42, align 8, !tbaa !203
  %43 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %43, align 8, !tbaa !204
  %44 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 33
  store float 1.000000e+00, ptr %44, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 34
  store float 1.000000e+00, ptr %45, align 4, !tbaa !206
  %46 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 35
  store float 1.000000e+00, ptr %46, align 8, !tbaa !207
  %47 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 36
  store float 1.000000e+00, ptr %47, align 4, !tbaa !208
  %48 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 37
  store float 1.000000e+00, ptr %48, align 8, !tbaa !209
  %49 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 38
  store float 1.000000e+00, ptr %49, align 4, !tbaa !210
  %50 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 39
  store float 1.000000e+00, ptr %50, align 8, !tbaa !211
  %51 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 40
  store float 1.000000e+00, ptr %51, align 4, !tbaa !212
  %52 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 41
  store float 1.000000e+00, ptr %52, align 8, !tbaa !213
  %53 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 42
  store float 1.000000e+00, ptr %53, align 4, !tbaa !214
  %54 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 43
  store float 1.000000e+00, ptr %54, align 8, !tbaa !215
  %55 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 44
  store float 1.000000e+00, ptr %55, align 4, !tbaa !216
  %56 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 45
  store float 1.000000e+00, ptr %56, align 8, !tbaa !217
  %57 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 46
  store float 1.000000e+00, ptr %57, align 4, !tbaa !218
  %58 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 47
  store float 1.000000e+00, ptr %58, align 8, !tbaa !219
  %59 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 48
  store float 1.000000e+00, ptr %59, align 4, !tbaa !220
  %60 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 61
  store float 1.000000e+00, ptr %60, align 8, !tbaa !221
  %61 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 62
  store float 1.000000e+00, ptr %61, align 4, !tbaa !222
  %62 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 63
  store float 1.000000e+00, ptr %62, align 8, !tbaa !223
  %63 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 64
  store float 1.000000e+00, ptr %63, align 4, !tbaa !224
  %64 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 49
  store float 1.000000e+00, ptr %64, align 8, !tbaa !225
  %65 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 50
  store float 1.000000e+00, ptr %65, align 4, !tbaa !226
  %66 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 51
  store float 1.000000e+00, ptr %66, align 8, !tbaa !227
  %67 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 53
  store float 1.000000e+00, ptr %67, align 8, !tbaa !228
  %68 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 54
  store float 1.000000e+00, ptr %68, align 4, !tbaa !229
  %69 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 55
  store float 1.000000e+00, ptr %69, align 8, !tbaa !230
  %70 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 57
  store float 1.000000e+00, ptr %70, align 8, !tbaa !231
  %71 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 58
  store float 1.000000e+00, ptr %71, align 4, !tbaa !232
  %72 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 59
  store float 1.000000e+00, ptr %72, align 8, !tbaa !233
  %73 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 52
  store float 1.000000e+00, ptr %73, align 4, !tbaa !234
  %74 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 56
  store float 1.000000e+00, ptr %74, align 4, !tbaa !235
  %75 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 60
  store float 1.000000e+00, ptr %75, align 4, !tbaa !236
  %76 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 18
  store i16 3, ptr %76, align 8, !tbaa !237
  %77 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 20
  store i8 1, ptr %77, align 4, !tbaa !238
  store ptr %21, ptr %6, align 8, !tbaa !34
  store i16 128, ptr %21, align 8, !tbaa !185
  br label %78

78:                                               ; preds = %19, %18
  %79 = load ptr, ptr %6, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.MTex, ptr %79, i64 0, i32 5
  store ptr %1, ptr %80, align 8, !tbaa !192
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %84

81:                                               ; preds = %14
  br i1 %17, label %84, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %83(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %84

84:                                               ; preds = %81, %82, %78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @give_current_brush_texture(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_brush_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store ptr %1, ptr %3, align 8, !tbaa !272
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_particle_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !253
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !192
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local void @set_current_particle_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 2, !tbaa !253
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %81, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %78

19:                                               ; preds = %18
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  store i16 16, ptr %21, align 8, !tbaa !185
  %22 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 1
  store i16 1, ptr %22, align 2, !tbaa !187
  %23 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 4
  store ptr null, ptr %23, align 8, !tbaa !188
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 7
  store i8 1, ptr %24, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 8
  store i8 2, ptr %25, align 1, !tbaa !190
  %26 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 9
  store i8 3, ptr %26, align 2, !tbaa !191
  %27 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 10
  %28 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %27, i8 0, i64 13, i1 false)
  store float 1.000000e+00, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 1
  store float 1.000000e+00, ptr %29, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  store ptr null, ptr %31, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 14
  store i16 17664, ptr %32, align 8, !tbaa !193
  %33 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 15
  store i16 0, ptr %33, align 2, !tbaa !194
  %34 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 22
  store float 1.000000e+00, ptr %34, align 4, !tbaa !195
  %35 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 23
  store float 0.000000e+00, ptr %35, align 8, !tbaa !196
  %36 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 24
  store float 1.000000e+00, ptr %36, align 4, !tbaa !197
  %37 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 25
  store float 1.000000e+00, ptr %37, align 8, !tbaa !198
  %38 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 26
  store float 1.000000e+00, ptr %38, align 4, !tbaa !199
  %39 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 3
  store i16 0, ptr %39, align 2, !tbaa !200
  %40 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 28
  store float 1.000000e+00, ptr %40, align 4, !tbaa !201
  %41 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 30
  store float 1.000000e+00, ptr %41, align 4, !tbaa !202
  %42 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 29
  store float 1.000000e+00, ptr %42, align 8, !tbaa !203
  %43 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 31
  store float 0x3FC99999A0000000, ptr %43, align 8, !tbaa !204
  %44 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 33
  store float 1.000000e+00, ptr %44, align 8, !tbaa !205
  %45 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 34
  store float 1.000000e+00, ptr %45, align 4, !tbaa !206
  %46 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 35
  store float 1.000000e+00, ptr %46, align 8, !tbaa !207
  %47 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 36
  store float 1.000000e+00, ptr %47, align 4, !tbaa !208
  %48 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 37
  store float 1.000000e+00, ptr %48, align 8, !tbaa !209
  %49 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 38
  store float 1.000000e+00, ptr %49, align 4, !tbaa !210
  %50 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 39
  store float 1.000000e+00, ptr %50, align 8, !tbaa !211
  %51 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 40
  store float 1.000000e+00, ptr %51, align 4, !tbaa !212
  %52 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 41
  store float 1.000000e+00, ptr %52, align 8, !tbaa !213
  %53 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 42
  store float 1.000000e+00, ptr %53, align 4, !tbaa !214
  %54 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 43
  store float 1.000000e+00, ptr %54, align 8, !tbaa !215
  %55 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 44
  store float 1.000000e+00, ptr %55, align 4, !tbaa !216
  %56 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 45
  store float 1.000000e+00, ptr %56, align 8, !tbaa !217
  %57 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 46
  store float 1.000000e+00, ptr %57, align 4, !tbaa !218
  %58 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 47
  store float 1.000000e+00, ptr %58, align 8, !tbaa !219
  %59 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 48
  store float 1.000000e+00, ptr %59, align 4, !tbaa !220
  %60 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 61
  store float 1.000000e+00, ptr %60, align 8, !tbaa !221
  %61 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 62
  store float 1.000000e+00, ptr %61, align 4, !tbaa !222
  %62 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 63
  store float 1.000000e+00, ptr %62, align 8, !tbaa !223
  %63 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 64
  store float 1.000000e+00, ptr %63, align 4, !tbaa !224
  %64 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 49
  store float 1.000000e+00, ptr %64, align 8, !tbaa !225
  %65 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 50
  store float 1.000000e+00, ptr %65, align 4, !tbaa !226
  %66 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 51
  store float 1.000000e+00, ptr %66, align 8, !tbaa !227
  %67 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 53
  store float 1.000000e+00, ptr %67, align 8, !tbaa !228
  %68 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 54
  store float 1.000000e+00, ptr %68, align 4, !tbaa !229
  %69 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 55
  store float 1.000000e+00, ptr %69, align 8, !tbaa !230
  %70 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 57
  store float 1.000000e+00, ptr %70, align 8, !tbaa !231
  %71 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 58
  store float 1.000000e+00, ptr %71, align 4, !tbaa !232
  %72 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 59
  store float 1.000000e+00, ptr %72, align 8, !tbaa !233
  %73 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 52
  store float 1.000000e+00, ptr %73, align 4, !tbaa !234
  %74 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 56
  store float 1.000000e+00, ptr %74, align 4, !tbaa !235
  %75 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 60
  store float 1.000000e+00, ptr %75, align 4, !tbaa !236
  %76 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 18
  store i16 3, ptr %76, align 8, !tbaa !237
  %77 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 20
  store i8 1, ptr %77, align 4, !tbaa !238
  store ptr %21, ptr %6, align 8, !tbaa !34
  store i16 1, ptr %21, align 8, !tbaa !185
  store i16 1, ptr %39, align 2, !tbaa !200
  br label %78

78:                                               ; preds = %19, %18
  %79 = load ptr, ptr %6, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.MTex, ptr %79, i64 0, i32 5
  store ptr %1, ptr %80, align 8, !tbaa !192
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %84

81:                                               ; preds = %14
  br i1 %17, label %84, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %83(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %84

84:                                               ; preds = %81, %82, %78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_envmapdata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @IMB_freeImBuf(ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !34
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 6
  br i1 %10, label %11, label %2, !llvm.loop !84

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 0, ptr %12, align 4, !tbaa !85
  ret void
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_pointdensitydata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !90
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #17
  store ptr null, ptr %13, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  tail call void @curvemapping_free(ptr noundef %20) #17
  ret void
}

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_voxeldatadata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !94
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_copy_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.VoxelData, ptr %3, i64 0, i32 13
  store ptr null, ptr %4, align 8, !tbaa !94
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_texture_dependsOnTime(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %3) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !306
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %14 = load i16, ptr %13, align 8, !tbaa !99
  %15 = icmp eq i16 %14, 7
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %5
  %18 = phi i8 [ 1, %5 ], [ 1, %8 ], [ %16, %12 ]
  ret i8 %18
}

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_texture_get_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne i8 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef nonnull %0) #17
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i8 [ %10, %9 ], [ 0, %5 ]
  %13 = tail call i32 @multitex_ext_safe(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext %12) #17
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  br i1 %15, label %26, label %18

18:                                               ; preds = %11
  %19 = load float, ptr %16, align 4, !tbaa !307
  %20 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !309
  %22 = fadd float %19, %21
  %23 = load float, ptr %17, align 4, !tbaa !310
  %24 = fadd float %22, %23
  %25 = fmul float %24, 0x3FD5555560000000
  store float %25, ptr %3, align 8, !tbaa !311
  br label %29

26:                                               ; preds = %11
  %27 = load float, ptr %3, align 8, !tbaa !311
  store float %27, ptr %16, align 4, !tbaa !38
  %28 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  store float %27, ptr %28, align 4, !tbaa !38
  store float %27, ptr %17, align 4, !tbaa !38
  br label %29

29:                                               ; preds = %26, %18
  ret void
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #3

declare i32 @multitex_ext_safe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!41, !36, i64 40}
!41 = !{!"TexMapping", !36, i64 0, !36, i64 12, !36, i64 24, !42, i64 36, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !42, i64 44, !36, i64 48, !36, i64 112, !36, i64 124, !35, i64 136}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !36, i64 41}
!44 = !{!41, !36, i64 42}
!45 = !{!41, !36, i64 43}
!46 = !{!41, !42, i64 44}
!47 = !{!41, !42, i64 36}
!48 = !{!49, !39, i64 16}
!49 = !{!"CBData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !42, i64 20}
!50 = !{!49, !39, i64 0}
!51 = !{!49, !39, i64 4}
!52 = !{!49, !39, i64 8}
!53 = !{!49, !39, i64 12}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !59, i64 0}
!58 = !{!"ColorBand", !59, i64 0, !59, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!59 = !{!"short", !36, i64 0}
!60 = !{!58, !36, i64 6}
!61 = !{!62, !39, i64 776}
!62 = !{!"ColorMapping", !58, i64 0, !39, i64 776, !39, i64 780, !39, i64 784, !42, i64 788, !36, i64 792, !39, i64 804, !42, i64 808, !36, i64 812}
!63 = !{!62, !39, i64 780}
!64 = !{!62, !39, i64 784}
!65 = !{!62, !42, i64 808}
!66 = !{!62, !39, i64 804}
!67 = !{!58, !36, i64 4}
!68 = distinct !{!68, !55, !56}
!69 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 20, i64 4, !70}
!70 = !{!42, !42, i64 0}
!71 = !{!58, !36, i64 5}
!72 = !{i8 0, i8 2}
!73 = distinct !{!73, !55, !56}
!74 = !{!49, !42, i64 20}
!75 = distinct !{!75, !55, !56}
!76 = !{!58, !59, i64 2}
!77 = distinct !{!77, !55, !56}
!78 = distinct !{!78, !55, !56}
!79 = !{!80, !35, i64 360}
!80 = !{!"Tex", !81, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !59, i64 216, !59, i64 218, !59, i64 220, !59, i64 222, !59, i64 224, !59, i64 226, !59, i64 228, !59, i64 230, !59, i64 232, !59, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !42, i64 252, !42, i64 256, !59, i64 260, !59, i64 262, !59, i64 264, !59, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !82, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!81 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !59, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!82 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !59, i64 28, !59, i64 30, !59, i64 32, !59, i64 34, !42, i64 36}
!83 = !{!80, !35, i64 368}
!84 = distinct !{!84, !55, !56}
!85 = !{!86, !42, i64 188}
!86 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !59, i64 164, !59, i64 166, !39, i64 168, !39, i64 172, !39, i64 176, !42, i64 180, !59, i64 184, !59, i64 186, !42, i64 188, !42, i64 192, !59, i64 196, !59, i64 198}
!87 = !{!80, !35, i64 384}
!88 = !{!89, !35, i64 40}
!89 = !{!"PointDensity", !59, i64 0, !59, i64 2, !39, i64 4, !39, i64 8, !59, i64 12, !59, i64 14, !42, i64 16, !42, i64 20, !35, i64 24, !42, i64 32, !59, i64 36, !59, i64 38, !35, i64 40, !35, i64 48, !39, i64 56, !59, i64 60, !59, i64 62, !59, i64 64, !36, i64 66, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !35, i64 88, !35, i64 96}
!90 = !{!89, !35, i64 48}
!91 = !{!89, !35, i64 88}
!92 = !{!89, !35, i64 96}
!93 = !{!80, !35, i64 392}
!94 = !{!95, !35, i64 1072}
!95 = !{!"VoxelData", !36, i64 0, !42, i64 12, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !42, i64 28, !35, i64 32, !39, i64 40, !42, i64 44, !36, i64 48, !35, i64 1072, !42, i64 1080, !42, i64 1084}
!96 = !{!80, !35, i64 400}
!97 = !{!80, !42, i64 104}
!98 = !{!80, !35, i64 336}
!99 = !{!80, !59, i64 232}
!100 = !{!80, !35, i64 352}
!101 = !{!80, !59, i64 234}
!102 = !{!80, !59, i64 230}
!103 = !{!80, !59, i64 228}
!104 = !{!80, !59, i64 264}
!105 = !{!80, !39, i64 240}
!106 = !{!80, !39, i64 236}
!107 = !{!80, !39, i64 248}
!108 = !{!80, !39, i64 244}
!109 = !{!80, !42, i64 252}
!110 = !{!80, !42, i64 256}
!111 = !{!80, !59, i64 262}
!112 = !{!80, !59, i64 260}
!113 = !{!80, !59, i64 266}
!114 = !{!80, !42, i64 280}
!115 = !{!80, !42, i64 272}
!116 = !{!80, !42, i64 276}
!117 = !{!80, !39, i64 128}
!118 = !{!80, !59, i64 220}
!119 = !{!80, !39, i64 132}
!120 = !{!80, !39, i64 288}
!121 = !{!80, !39, i64 136}
!122 = !{!80, !39, i64 140}
!123 = !{!80, !39, i64 144}
!124 = !{!80, !39, i64 160}
!125 = !{!80, !39, i64 148}
!126 = !{!80, !39, i64 152}
!127 = !{!80, !39, i64 156}
!128 = !{!80, !59, i64 224}
!129 = !{!80, !59, i64 226}
!130 = !{!80, !39, i64 168}
!131 = !{!80, !39, i64 172}
!132 = !{!80, !39, i64 176}
!133 = !{!80, !39, i64 180}
!134 = !{!80, !39, i64 184}
!135 = !{!80, !39, i64 192}
!136 = !{!80, !39, i64 188}
!137 = !{!80, !39, i64 196}
!138 = !{!80, !39, i64 208}
!139 = !{!80, !39, i64 204}
!140 = !{!80, !39, i64 200}
!141 = !{!80, !39, i64 212}
!142 = !{!80, !59, i64 216}
!143 = !{!80, !59, i64 218}
!144 = !{!86, !59, i64 166}
!145 = !{!86, !39, i64 168}
!146 = !{!86, !39, i64 172}
!147 = !{!86, !59, i64 184}
!148 = !{!86, !59, i64 186}
!149 = !{!89, !39, i64 8}
!150 = !{!89, !59, i64 2}
!151 = !{!95, !42, i64 12}
!152 = !{!95, !59, i64 16}
!153 = !{!154, !42, i64 72}
!154 = !{!"OceanTex", !35, i64 0, !36, i64 8, !42, i64 72, !42, i64 76}
!155 = !{!154, !35, i64 0}
!156 = !{!80, !36, i64 320}
!157 = !{!80, !36, i64 322}
!158 = !{!80, !42, i64 308}
!159 = !{!80, !42, i64 316}
!160 = !{!80, !35, i64 376}
!161 = !{!95, !39, i64 40}
!162 = !{!95, !59, i64 20}
!163 = !{!95, !35, i64 32}
!164 = !{!95, !42, i64 1080}
!165 = !{!95, !42, i64 1084}
!166 = !{!86, !59, i64 164}
!167 = !{!86, !39, i64 176}
!168 = !{!89, !59, i64 0}
!169 = !{!89, !39, i64 4}
!170 = !{!89, !59, i64 12}
!171 = !{!89, !39, i64 56}
!172 = !{!89, !59, i64 60}
!173 = !{!89, !39, i64 72}
!174 = !{!89, !59, i64 62}
!175 = !{!89, !39, i64 76}
!176 = !{!89, !42, i64 16}
!177 = !{!89, !35, i64 24}
!178 = !{!89, !42, i64 32}
!179 = !{!89, !59, i64 36}
!180 = !{!181, !42, i64 8}
!181 = !{!"CurveMapping", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !182, i64 16, !182, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!182 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!183 = !{!184, !59, i64 2}
!184 = !{!"CurveMap", !59, i64 0, !59, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!185 = !{!186, !59, i64 0}
!186 = !{!"MTex", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !39, i64 116, !59, i64 120, !59, i64 122, !59, i64 124, !59, i64 126, !59, i64 128, !59, i64 130, !36, i64 132, !36, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!187 = !{!186, !59, i64 2}
!188 = !{!186, !35, i64 8}
!189 = !{!186, !36, i64 88}
!190 = !{!186, !36, i64 89}
!191 = !{!186, !36, i64 90}
!192 = !{!186, !35, i64 16}
!193 = !{!186, !59, i64 120}
!194 = !{!186, !59, i64 122}
!195 = !{!186, !39, i64 140}
!196 = !{!186, !39, i64 144}
!197 = !{!186, !39, i64 148}
!198 = !{!186, !39, i64 152}
!199 = !{!186, !39, i64 156}
!200 = !{!186, !59, i64 6}
!201 = !{!186, !39, i64 164}
!202 = !{!186, !39, i64 172}
!203 = !{!186, !39, i64 168}
!204 = !{!186, !39, i64 176}
!205 = !{!186, !39, i64 184}
!206 = !{!186, !39, i64 188}
!207 = !{!186, !39, i64 192}
!208 = !{!186, !39, i64 196}
!209 = !{!186, !39, i64 200}
!210 = !{!186, !39, i64 204}
!211 = !{!186, !39, i64 208}
!212 = !{!186, !39, i64 212}
!213 = !{!186, !39, i64 216}
!214 = !{!186, !39, i64 220}
!215 = !{!186, !39, i64 224}
!216 = !{!186, !39, i64 228}
!217 = !{!186, !39, i64 232}
!218 = !{!186, !39, i64 236}
!219 = !{!186, !39, i64 240}
!220 = !{!186, !39, i64 244}
!221 = !{!186, !39, i64 296}
!222 = !{!186, !39, i64 300}
!223 = !{!186, !39, i64 304}
!224 = !{!186, !39, i64 308}
!225 = !{!186, !39, i64 248}
!226 = !{!186, !39, i64 252}
!227 = !{!186, !39, i64 256}
!228 = !{!186, !39, i64 264}
!229 = !{!186, !39, i64 268}
!230 = !{!186, !39, i64 272}
!231 = !{!186, !39, i64 280}
!232 = !{!186, !39, i64 284}
!233 = !{!186, !39, i64 288}
!234 = !{!186, !39, i64 260}
!235 = !{!186, !39, i64 276}
!236 = !{!186, !39, i64 292}
!237 = !{!186, !59, i64 128}
!238 = !{!186, !36, i64 132}
!239 = !{!59, !59, i64 0}
!240 = distinct !{!240, !55, !56}
!241 = !{!242, !42, i64 536}
!242 = !{!"Material", !81, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !243, i64 224, !244, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !59, i64 356, !59, i64 358, !59, i64 360, !36, i64 362, !36, i64 363, !39, i64 364, !39, i64 368, !59, i64 372, !59, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !59, i64 392, !59, i64 394, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !59, i64 412, !59, i64 414, !59, i64 416, !59, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !36, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !42, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !59, i64 544, !59, i64 546, !59, i64 548, !36, i64 550, !36, i64 551, !59, i64 552, !59, i64 554, !39, i64 556, !39, i64 560, !36, i64 564, !39, i64 580, !39, i64 584, !59, i64 588, !59, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !59, i64 612, !59, i64 614, !39, i64 616, !39, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !59, i64 820, !59, i64 822, !36, i64 824, !36, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !59, i64 876, !59, i64 878, !42, i64 880, !59, i64 884, !59, i64 886, !36, i64 888, !59, i64 904, !59, i64 906, !59, i64 908, !59, i64 910, !59, i64 912, !36, i64 914, !35, i64 920, !245, i64 928}
!243 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !59, i64 64, !59, i64 66, !59, i64 68, !59, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!244 = !{!"GameSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!245 = !{!"ListBase", !35, i64 0, !35, i64 8}
!246 = !{!242, !36, i64 541}
!247 = !{!248, !59, i64 132}
!248 = !{!"World", !81, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !59, i64 132, !59, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !59, i64 200, !59, i64 202, !59, i64 204, !59, i64 206, !59, i64 208, !59, i64 210, !59, i64 212, !59, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !59, i64 264, !59, i64 266, !59, i64 268, !59, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !59, i64 288, !59, i64 290, !59, i64 292, !59, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !59, i64 324, !59, i64 326, !59, i64 328, !59, i64 330, !59, i64 332, !59, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !59, i64 504, !59, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!249 = !{!250, !59, i64 280}
!250 = !{!"Lamp", !81, i64 0, !35, i64 120, !59, i64 128, !59, i64 130, !42, i64 132, !59, i64 136, !59, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !35, i64 200, !59, i64 208, !59, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !59, i64 240, !59, i64 242, !59, i64 244, !59, i64 246, !36, i64 248, !36, i64 249, !59, i64 250, !59, i64 252, !59, i64 254, !59, i64 256, !59, i64 258, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !59, i64 276, !59, i64 278, !59, i64 280, !59, i64 282, !59, i64 284, !59, i64 286, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !59, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !59, i64 496, !59, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!251 = !{!252, !59, i64 220}
!252 = !{!"FreestyleLineStyle", !81, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !42, i64 148, !39, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !42, i64 192, !59, i64 196, !59, i64 198, !59, i64 200, !59, i64 202, !59, i64 204, !59, i64 206, !42, i64 208, !42, i64 212, !39, i64 216, !59, i64 220, !59, i64 222, !59, i64 224, !36, i64 226, !59, i64 232, !59, i64 234, !59, i64 236, !59, i64 238, !59, i64 240, !59, i64 242, !42, i64 244, !36, i64 248, !35, i64 392, !245, i64 400, !245, i64 416, !245, i64 432, !245, i64 448}
!253 = !{!254, !59, i64 166}
!254 = !{!"ParticleSettings", !81, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !42, i64 156, !59, i64 160, !59, i64 162, !59, i64 164, !59, i64 166, !59, i64 168, !59, i64 170, !59, i64 172, !59, i64 174, !42, i64 176, !42, i64 180, !59, i64 184, !59, i64 186, !59, i64 188, !59, i64 190, !59, i64 192, !59, i64 194, !59, i64 196, !59, i64 198, !59, i64 200, !59, i64 202, !59, i64 204, !59, i64 206, !59, i64 208, !59, i64 210, !59, i64 212, !59, i64 214, !59, i64 216, !59, i64 218, !59, i64 220, !59, i64 222, !59, i64 224, !59, i64 226, !59, i64 228, !59, i64 230, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !59, i64 268, !59, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !36, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !59, i64 340, !36, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !36, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !36, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !42, i64 444, !42, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !36, i64 552, !39, i64 560, !39, i64 564, !42, i64 568, !42, i64 572, !36, i64 576, !35, i64 720, !245, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !59, i64 792, !36, i64 794}
!255 = !{!86, !35, i64 8}
!256 = !{!257, !35, i64 360}
!257 = !{!"bNodeTree", !81, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !245, i64 224, !245, i64 240, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !59, i64 276, !59, i64 278, !42, i64 280, !42, i64 284, !59, i64 288, !59, i64 290, !42, i64 292, !182, i64 296, !245, i64 312, !245, i64 328, !35, i64 344, !258, i64 352, !42, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!258 = !{!"bNodeInstanceKey", !42, i64 0}
!259 = !{!260, !35, i64 0}
!260 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !245, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !59, i64 2084, !59, i64 2086, !59, i64 2088, !36, i64 2090, !59, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!261 = !{!80, !35, i64 24}
!262 = !{!80, !42, i64 100}
!263 = distinct !{!263, !55, !56}
!264 = !{!242, !35, i64 24}
!265 = distinct !{!265, !55, !56}
!266 = distinct !{!266, !55, !56}
!267 = !{!250, !35, i64 24}
!268 = distinct !{!268, !55, !56}
!269 = distinct !{!269, !55, !56}
!270 = !{!248, !35, i64 24}
!271 = distinct !{!271, !55, !56}
!272 = !{!273, !35, i64 168}
!273 = !{!"Brush", !81, i64 0, !274, i64 120, !35, i64 144, !186, i64 152, !186, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !39, i64 1840, !59, i64 1844, !59, i64 1846, !39, i64 1848, !42, i64 1852, !42, i64 1856, !42, i64 1860, !39, i64 1864, !42, i64 1868, !42, i64 1872, !42, i64 1876, !42, i64 1880, !39, i64 1884, !39, i64 1888, !36, i64 1892, !39, i64 1904, !36, i64 1908, !42, i64 1920, !39, i64 1924, !39, i64 1928, !42, i64 1932, !42, i64 1936, !42, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !39, i64 1948, !39, i64 1952, !39, i64 1956, !39, i64 1960, !39, i64 1964, !42, i64 1968, !42, i64 1972, !42, i64 1976, !39, i64 1980, !39, i64 1984, !42, i64 1988, !42, i64 1992, !39, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!274 = !{!"BrushClone", !35, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!275 = !{!273, !35, i64 24}
!276 = !{!273, !35, i64 480}
!277 = distinct !{!277, !55, !56}
!278 = distinct !{!278, !55, !56}
!279 = !{!254, !35, i64 24}
!280 = distinct !{!280, !55, !56}
!281 = distinct !{!281, !55, !56}
!282 = !{!252, !35, i64 24}
!283 = distinct !{!283, !55, !56}
!284 = distinct !{!284, !55, !56}
!285 = distinct !{!285, !55, !56}
!286 = distinct !{!286, !55, !56}
!287 = distinct !{!287, !55, !56}
!288 = distinct !{!288, !55, !56}
!289 = distinct !{!289, !55, !56}
!290 = distinct !{!290, !55, !56}
!291 = distinct !{!291, !55, !56}
!292 = distinct !{!292, !55, !56}
!293 = distinct !{!293, !55, !56}
!294 = distinct !{!294, !55, !56}
!295 = !{!296, !42, i64 456}
!296 = !{!"Object", !81, i64 0, !35, i64 120, !35, i64 128, !59, i64 136, !59, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !297, i64 312, !35, i64 360, !245, i64 368, !245, i64 384, !245, i64 400, !245, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !59, i64 948, !59, i64 950, !59, i64 952, !59, i64 954, !59, i64 956, !59, i64 958, !59, i64 960, !59, i64 962, !59, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !59, i64 1036, !59, i64 1038, !59, i64 1040, !36, i64 1042, !36, i64 1043, !59, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !245, i64 1056, !245, i64 1072, !245, i64 1088, !245, i64 1104, !39, i64 1120, !59, i64 1124, !59, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !59, i64 1162, !36, i64 1164, !245, i64 1176, !245, i64 1192, !245, i64 1208, !245, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !59, i64 1266, !39, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !298, i64 1304, !298, i64 1312, !42, i64 1320, !42, i64 1324, !245, i64 1328, !245, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !245, i64 1400, !35, i64 1416}
!297 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!298 = !{!"long", !36, i64 0}
!299 = !{!296, !59, i64 136}
!300 = !{!296, !35, i64 296}
!301 = !{!296, !42, i64 460}
!302 = !{!242, !36, i64 543}
!303 = !{!242, !35, i64 768}
!304 = !{!305, !35, i64 240}
!305 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !42, i64 168, !59, i64 172, !59, i64 174, !59, i64 176, !59, i64 178, !59, i64 180, !59, i64 182, !59, i64 184, !59, i64 186, !36, i64 188, !245, i64 200, !245, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !245, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !42, i64 308, !36, i64 312, !59, i64 376, !59, i64 378, !39, i64 380, !39, i64 384, !59, i64 388, !59, i64 390, !35, i64 392, !182, i64 400, !182, i64 416, !182, i64 432, !59, i64 448, !59, i64 450, !42, i64 452, !35, i64 456}
!306 = !{!80, !35, i64 120}
!307 = !{!308, !39, i64 4}
!308 = !{!"TexResult", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !42, i64 20, !35, i64 24}
!309 = !{!308, !39, i64 8}
!310 = !{!308, !39, i64 12}
!311 = !{!308, !39, i64 0}
