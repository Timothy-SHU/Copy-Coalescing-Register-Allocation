; ModuleID = 'blender/source/blender/blenkernel/intern/texture.c'
source_filename = "blender/source/blender/blenkernel/intern/texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.ColorMapping = type { %struct.ColorBand, float, float, float, i32, [3 x float], float, i32, [3 x i32] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_tex_mapping(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 144, ptr noundef nonnull @.str) #17
  tail call void @default_tex_mapping(ptr noundef %3, i32 noundef %0) #18
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_tex_mapping(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %3 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %4, align 8, !tbaa !38
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 11
  %6 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 11, i64 2
  store float 1.000000e+00, ptr %6, align 4, !tbaa !38
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  tail call void @unit_m4(ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 4
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %8, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 8
  store i32 %1, ptr %9, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_tex_mapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 1, !tbaa !45
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 6
  %15 = load i8, ptr %14, align 2, !tbaa !46
  %16 = icmp eq i8 %15, 3
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %0) #18, !range !47
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1
  %22 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %21) #18, !range !47
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %26 = tail call fastcc zeroext i8 @is_one_v3(ptr noundef nonnull %25) #18, !range !47
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  tail call void @unit_m4(ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !48
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 4, !tbaa !48
  br label %81

33:                                               ; preds = %24, %20, %17, %13, %9, %1
  call void @zero_m4(ptr noundef nonnull %5) #17
  %34 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %34, align 4, !tbaa !38
  %35 = load i8, ptr %6, align 8, !tbaa !44
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = zext i8 %35 to i64
  %39 = add nuw nsw i64 %38, 4294967295
  %40 = and i64 %39, 4294967295
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %40
  store float 1.000000e+00, ptr %41, align 16, !tbaa !38
  br label %42

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 5
  %44 = load i8, ptr %43, align 1, !tbaa !45
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = zext i8 %44 to i64
  %48 = add nuw nsw i64 %47, 4294967295
  %49 = and i64 %48, 4294967295
  %50 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %49, i64 1
  store float 1.000000e+00, ptr %50, align 4, !tbaa !38
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 6
  %53 = load i8, ptr %52, align 2, !tbaa !46
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = zext i8 %53 to i64
  %57 = add nuw nsw i64 %56, 4294967295
  %58 = and i64 %57, 4294967295
  %59 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %58, i64 2
  store float 1.000000e+00, ptr %59, align 8, !tbaa !38
  br label %60

60:                                               ; preds = %55, %51
  %61 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 2
  %62 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 8
  call void @size_to_mat4(ptr noundef nonnull %2, ptr noundef nonnull %61) #17
  %63 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 1
  call void @eul_to_mat4(ptr noundef nonnull %3, ptr noundef nonnull %63) #17
  call void @unit_m4(ptr noundef nonnull %4) #17
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %64, ptr noundef nonnull %0) #18
  %65 = load i32, ptr %62, align 4, !tbaa !41
  switch i32 %65, label %76 [
    i32 1, label %66
    i32 0, label %69
    i32 2, label %71
    i32 3, label %73
  ]

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @_va_mul_m4_series_4(ptr noundef nonnull %67, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %68 = call zeroext i8 @invert_m4(ptr noundef nonnull %67) #17
  br label %76

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @_va_mul_m4_series_4(ptr noundef nonnull %70, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  br label %76

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %72, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  br label %76

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %74, ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %75 = call zeroext i8 @invert_m4(ptr noundef nonnull %74) #17
  call void @transpose_m4(ptr noundef nonnull %74) #17
  br label %76

76:                                               ; preds = %60, %69, %73, %71, %66
  %77 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 9
  call void @mul_m4_m4m4(ptr noundef nonnull %77, ptr noundef nonnull %77, ptr noundef nonnull %5) #17
  %78 = getelementptr inbounds %struct.TexMapping, ptr %0, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !48
  %80 = and i32 %79, -5
  store i32 %80, ptr %78, align 4, !tbaa !48
  br label %81

81:                                               ; preds = %76, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !49 {
  %2 = load float, ptr %0, align 4, !tbaa !38
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_one_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !50 {
  %2 = load float, ptr %0, align 4, !tbaa !38
  %3 = fcmp oeq float %2, 1.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !38
  %7 = fcmp oeq float %6, 1.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !38
  %11 = fcmp oeq float %10, 1.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @zero_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !51 {
  %3 = load float, ptr %1, align 4, !tbaa !38
  store float %3, ptr %0, align 4, !tbaa !38
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @eul_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @transpose_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_color_mapping() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 824, ptr noundef nonnull @.str.1) #17
  tail call void @default_color_mapping(ptr noundef %2) #18
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @default_color_mapping(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(824) %0, i8 0, i64 824, i1 false)
  tail call void @init_colorband(ptr noundef %0, i8 noundef zeroext 1) #18
  %2 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !38
  %3 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %3, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.ColorMapping, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 4, !tbaa !56
  store <4 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0.000000e+00>, ptr %4, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @init_colorband(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %4 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %6, align 4, !tbaa !57
  %7 = icmp eq i8 %1, 0
  %8 = select i1 %7, float 0.000000e+00, float 1.000000e+00
  store <2 x float> zeroinitializer, ptr %3, align 4
  %9 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  store float 0.000000e+00, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  store float %8, ptr %10, align 4
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4
  br label %11

11:                                               ; preds = %2, %11
  %12 = phi i64 [ 2, %2 ], [ %15, %11 ]
  %13 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 4
  store float 5.000000e-01, ptr %14, align 4, !tbaa !57
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %11, !llvm.loop !59

17:                                               ; preds = %11
  store i16 2, ptr %0, align 4, !tbaa !61
  %18 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 4
  store i8 0, ptr %18, align 2, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_colorband(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 776, ptr noundef nonnull @.str.2) #17
  tail call void @init_colorband(ptr noundef %3, i8 noundef zeroext %0) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @do_colorband(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CBData, align 4
  %5 = alloca %struct.CBData, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %311, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr %0, align 4, !tbaa !61
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %311, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 4
  %18 = load i8, ptr %17, align 2, !tbaa !62
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 2
  %22 = load i8, ptr %21, align 4, !tbaa !63
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i32 [ %23, %20 ], [ 0, %15 ]
  %26 = icmp eq i16 %13, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load float, ptr %16, align 4, !tbaa !64
  store float %28, ptr %2, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !65
  %31 = getelementptr inbounds float, ptr %2, i64 1
  store float %30, ptr %31, align 4, !tbaa !38
  %32 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !66
  %34 = getelementptr inbounds float, ptr %2, i64 2
  store float %33, ptr %34, align 4, !tbaa !38
  %35 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !67
  %37 = getelementptr inbounds float, ptr %2, i64 3
  store float %36, ptr %37, align 4, !tbaa !38
  br label %311

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 4
  %40 = load float, ptr %39, align 4, !tbaa !57
  %41 = fcmp oge float %40, %1
  %42 = icmp ult i32 %25, 2
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load float, ptr %16, align 4, !tbaa !64
  store float %45, ptr %2, align 4, !tbaa !38
  %46 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !65
  %48 = getelementptr inbounds float, ptr %2, i64 1
  store float %47, ptr %48, align 4, !tbaa !38
  %49 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !66
  %51 = getelementptr inbounds float, ptr %2, i64 2
  store float %50, ptr %51, align 4, !tbaa !38
  %52 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !67
  %54 = getelementptr inbounds float, ptr %2, i64 3
  store float %53, ptr %54, align 4, !tbaa !38
  br label %311

55:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %56 = sext i16 %13 to i32
  %57 = icmp sgt i16 %13, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55, %64
  %59 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %60 = phi ptr [ %66, %64 ], [ %16, %55 ]
  %61 = getelementptr inbounds %struct.CBData, ptr %60, i64 0, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !57
  %63 = fcmp ogt float %62, %1
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = add nuw nsw i32 %59, 1
  %66 = getelementptr inbounds %struct.CBData, ptr %60, i64 1
  %67 = icmp eq i32 %65, %56
  br i1 %67, label %70, label %58, !llvm.loop !68

68:                                               ; preds = %58
  %69 = icmp eq i32 %59, %56
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %68
  %71 = phi i32 [ %59, %68 ], [ %56, %64 ]
  %72 = phi ptr [ %60, %68 ], [ %66, %64 ]
  %73 = getelementptr inbounds %struct.CBData, ptr %72, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %73, i64 24, i1 false), !tbaa.struct !69
  %74 = getelementptr inbounds %struct.CBData, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %74, align 4, !tbaa !57
  br label %82

75:                                               ; preds = %68
  %76 = icmp eq i32 %59, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %55, %75
  %78 = phi ptr [ %60, %75 ], [ %16, %55 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) %78, i64 24, i1 false), !tbaa.struct !69
  %79 = getelementptr inbounds %struct.CBData, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %79, align 4, !tbaa !57
  br label %82

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.CBData, ptr %60, i64 -1
  br label %82

82:                                               ; preds = %77, %80, %70
  %83 = phi float [ 1.000000e+00, %70 ], [ 0.000000e+00, %77 ], [ 0.000000e+00, %80 ]
  %84 = phi i32 [ %71, %70 ], [ 0, %77 ], [ %59, %80 ]
  %85 = phi ptr [ %5, %70 ], [ %78, %77 ], [ %60, %80 ]
  %86 = phi ptr [ %73, %70 ], [ %4, %77 ], [ %81, %80 ]
  %87 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 4
  %88 = load float, ptr %87, align 4, !tbaa !57
  %89 = fcmp ole float %88, %1
  %90 = select i1 %89, i1 %42, i1 false
  br i1 %90, label %91, label %102

91:                                               ; preds = %82
  %92 = load float, ptr %85, align 4, !tbaa !64
  store float %92, ptr %2, align 4, !tbaa !38
  %93 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !65
  %95 = getelementptr inbounds float, ptr %2, i64 1
  store float %94, ptr %95, align 4, !tbaa !38
  %96 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 2
  %97 = load float, ptr %96, align 4, !tbaa !66
  %98 = getelementptr inbounds float, ptr %2, i64 2
  store float %97, ptr %98, align 4, !tbaa !38
  %99 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 3
  %100 = load float, ptr %99, align 4, !tbaa !67
  %101 = getelementptr inbounds float, ptr %2, i64 3
  store float %100, ptr %101, align 4, !tbaa !38
  br label %310

102:                                              ; preds = %82
  %103 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 4
  %104 = load float, ptr %103, align 4, !tbaa !57
  %105 = fcmp une float %104, %88
  %106 = fsub float %1, %88
  %107 = fsub float %104, %88
  %108 = fdiv float %106, %107
  %109 = select i1 %105, float %108, float %83
  %110 = icmp eq i32 %25, 4
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load float, ptr %86, align 4, !tbaa !64
  store float %112, ptr %2, align 4, !tbaa !38
  %113 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !65
  %115 = getelementptr inbounds float, ptr %2, i64 1
  store float %114, ptr %115, align 4, !tbaa !38
  %116 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 2
  %117 = load float, ptr %116, align 4, !tbaa !66
  %118 = getelementptr inbounds float, ptr %2, i64 2
  store float %117, ptr %118, align 4, !tbaa !38
  %119 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 3
  %120 = load float, ptr %119, align 4, !tbaa !67
  %121 = getelementptr inbounds float, ptr %2, i64 3
  store float %120, ptr %121, align 4, !tbaa !38
  br label %310

122:                                              ; preds = %102
  %123 = icmp ugt i32 %25, 1
  br i1 %123, label %124, label %224

124:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %125 = add nsw i32 %56, -1
  %126 = icmp slt i32 %84, %125
  %127 = zext i1 %126 to i64
  %128 = getelementptr inbounds %struct.CBData, ptr %85, i64 %127
  %129 = icmp ugt i32 %84, 1
  %130 = sext i1 %129 to i64
  %131 = getelementptr inbounds %struct.CBData, ptr %86, i64 %130
  %132 = fcmp olt float %109, 0.000000e+00
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = fcmp ogt float %109, 1.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %124, %133, %135
  %137 = phi float [ 1.000000e+00, %135 ], [ %109, %133 ], [ 0.000000e+00, %124 ]
  %138 = icmp eq i32 %25, 3
  %139 = select i1 %138, i32 1, i32 2
  call void @key_curve_position_weights(float noundef %137, ptr noundef nonnull %6, i32 noundef %139) #17
  %140 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %141 = load float, ptr %140, align 4, !tbaa !38
  %142 = load float, ptr %131, align 4, !tbaa !64
  %143 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %144 = load float, ptr %143, align 8, !tbaa !38
  %145 = load float, ptr %86, align 4, !tbaa !64
  %146 = fmul float %144, %145
  %147 = call float @llvm.fmuladd.f32(float %141, float %142, float %146)
  %148 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !38
  %150 = load float, ptr %85, align 4, !tbaa !64
  %151 = call float @llvm.fmuladd.f32(float %149, float %150, float %147)
  %152 = load float, ptr %6, align 16, !tbaa !38
  %153 = load float, ptr %128, align 4, !tbaa !64
  %154 = call float @llvm.fmuladd.f32(float %152, float %153, float %151)
  store float %154, ptr %2, align 4, !tbaa !38
  %155 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 1
  %156 = getelementptr %struct.CBData, ptr %86, i64 -1, i32 1
  %157 = select i1 %129, ptr %156, ptr %155
  %158 = load float, ptr %157, align 4, !tbaa !65
  %159 = load float, ptr %155, align 4, !tbaa !65
  %160 = fmul float %144, %159
  %161 = call float @llvm.fmuladd.f32(float %141, float %158, float %160)
  %162 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 1
  %163 = load float, ptr %162, align 4, !tbaa !65
  %164 = call float @llvm.fmuladd.f32(float %149, float %163, float %161)
  %165 = getelementptr inbounds %struct.CBData, ptr %85, i64 1, i32 1
  %166 = select i1 %126, ptr %165, ptr %162
  %167 = load float, ptr %166, align 4, !tbaa !65
  %168 = call float @llvm.fmuladd.f32(float %152, float %167, float %164)
  %169 = getelementptr inbounds float, ptr %2, i64 1
  store float %168, ptr %169, align 4, !tbaa !38
  %170 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 2
  %171 = getelementptr %struct.CBData, ptr %86, i64 -1, i32 2
  %172 = select i1 %129, ptr %171, ptr %170
  %173 = load float, ptr %172, align 4, !tbaa !66
  %174 = load float, ptr %170, align 4, !tbaa !66
  %175 = fmul float %144, %174
  %176 = call float @llvm.fmuladd.f32(float %141, float %173, float %175)
  %177 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 2
  %178 = load float, ptr %177, align 4, !tbaa !66
  %179 = call float @llvm.fmuladd.f32(float %149, float %178, float %176)
  %180 = getelementptr inbounds %struct.CBData, ptr %85, i64 1, i32 2
  %181 = select i1 %126, ptr %180, ptr %177
  %182 = load float, ptr %181, align 4, !tbaa !66
  %183 = call float @llvm.fmuladd.f32(float %152, float %182, float %179)
  %184 = getelementptr inbounds float, ptr %2, i64 2
  store float %183, ptr %184, align 4, !tbaa !38
  %185 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 3
  %186 = getelementptr %struct.CBData, ptr %86, i64 -1, i32 3
  %187 = select i1 %129, ptr %186, ptr %185
  %188 = load float, ptr %187, align 4, !tbaa !67
  %189 = load float, ptr %185, align 4, !tbaa !67
  %190 = fmul float %144, %189
  %191 = call float @llvm.fmuladd.f32(float %141, float %188, float %190)
  %192 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 3
  %193 = load float, ptr %192, align 4, !tbaa !67
  %194 = call float @llvm.fmuladd.f32(float %149, float %193, float %191)
  %195 = getelementptr inbounds %struct.CBData, ptr %85, i64 1, i32 3
  %196 = select i1 %126, ptr %195, ptr %192
  %197 = load float, ptr %196, align 4, !tbaa !67
  %198 = call float @llvm.fmuladd.f32(float %152, float %197, float %194)
  %199 = getelementptr inbounds float, ptr %2, i64 3
  store float %198, ptr %199, align 4, !tbaa !38
  %200 = fcmp olt float %154, 0.000000e+00
  br i1 %200, label %203, label %201

201:                                              ; preds = %136
  %202 = fcmp ogt float %154, 1.000000e+00
  br i1 %202, label %203, label %205

203:                                              ; preds = %201, %136
  %204 = phi float [ 0.000000e+00, %136 ], [ 1.000000e+00, %201 ]
  store float %204, ptr %2, align 4, !tbaa !38
  br label %205

205:                                              ; preds = %203, %201
  %206 = fcmp olt float %168, 0.000000e+00
  br i1 %206, label %209, label %207

207:                                              ; preds = %205
  %208 = fcmp ogt float %168, 1.000000e+00
  br i1 %208, label %209, label %211

209:                                              ; preds = %207, %205
  %210 = phi float [ 0.000000e+00, %205 ], [ 1.000000e+00, %207 ]
  store float %210, ptr %169, align 4, !tbaa !38
  br label %211

211:                                              ; preds = %209, %207
  %212 = fcmp olt float %183, 0.000000e+00
  br i1 %212, label %215, label %213

213:                                              ; preds = %211
  %214 = fcmp ogt float %183, 1.000000e+00
  br i1 %214, label %215, label %217

215:                                              ; preds = %213, %211
  %216 = phi float [ 0.000000e+00, %211 ], [ 1.000000e+00, %213 ]
  store float %216, ptr %184, align 4, !tbaa !38
  br label %217

217:                                              ; preds = %215, %213
  %218 = fcmp olt float %198, 0.000000e+00
  br i1 %218, label %221, label %219

219:                                              ; preds = %217
  %220 = fcmp ogt float %198, 1.000000e+00
  br i1 %220, label %221, label %223

221:                                              ; preds = %219, %217
  %222 = phi float [ 0.000000e+00, %217 ], [ 1.000000e+00, %219 ]
  store float %222, ptr %199, align 4, !tbaa !38
  br label %223

223:                                              ; preds = %221, %219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %310

224:                                              ; preds = %122
  %225 = icmp eq i32 %25, 1
  br i1 %225, label %226, label %231

226:                                              ; preds = %224
  %227 = fmul float %109, %109
  %228 = fmul float %227, -2.000000e+00
  %229 = fmul float %109, %228
  %230 = tail call float @llvm.fmuladd.f32(float %227, float 3.000000e+00, float %229)
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi float [ %230, %226 ], [ %109, %224 ]
  %233 = fsub float 1.000000e+00, %232
  switch i8 %18, label %284 [
    i8 1, label %234
    i8 2, label %259
  ]

234:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @rgb_to_hsv_v(ptr noundef nonnull %85, ptr noundef nonnull %7) #17
  call void @rgb_to_hsv_v(ptr noundef nonnull %86, ptr noundef nonnull %8) #17
  %235 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 3
  %236 = load i8, ptr %235, align 1, !tbaa !71
  %237 = zext i8 %236 to i32
  %238 = load float, ptr %7, align 4, !tbaa !38
  %239 = load float, ptr %8, align 4, !tbaa !38
  %240 = call fastcc float @colorband_hue_interp(i32 noundef %237, float noundef %233, float noundef %232, float noundef %238, float noundef %239) #18
  store float %240, ptr %2, align 4, !tbaa !38
  %241 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %242 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %243 = getelementptr inbounds float, ptr %2, i64 1
  %244 = load <2 x float>, ptr %241, align 4, !tbaa !38
  %245 = load <2 x float>, ptr %242, align 4, !tbaa !38
  %246 = insertelement <2 x float> poison, float %232, i64 0
  %247 = shufflevector <2 x float> %246, <2 x float> poison, <2 x i32> zeroinitializer
  %248 = fmul <2 x float> %247, %245
  %249 = insertelement <2 x float> poison, float %233, i64 0
  %250 = shufflevector <2 x float> %249, <2 x float> poison, <2 x i32> zeroinitializer
  %251 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %250, <2 x float> %244, <2 x float> %248)
  store <2 x float> %251, ptr %243, align 4, !tbaa !38
  %252 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 3
  %253 = load float, ptr %252, align 4, !tbaa !67
  %254 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 3
  %255 = load float, ptr %254, align 4, !tbaa !67
  %256 = fmul float %232, %255
  %257 = call float @llvm.fmuladd.f32(float %233, float %253, float %256)
  %258 = getelementptr inbounds float, ptr %2, i64 3
  store float %257, ptr %258, align 4, !tbaa !38
  call void @hsv_to_rgb_v(ptr noundef nonnull %2, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  br label %310

259:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @rgb_to_hsl_v(ptr noundef nonnull %85, ptr noundef nonnull %9) #17
  call void @rgb_to_hsl_v(ptr noundef nonnull %86, ptr noundef nonnull %10) #17
  %260 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 3
  %261 = load i8, ptr %260, align 1, !tbaa !71
  %262 = zext i8 %261 to i32
  %263 = load float, ptr %9, align 4, !tbaa !38
  %264 = load float, ptr %10, align 4, !tbaa !38
  %265 = call fastcc float @colorband_hue_interp(i32 noundef %262, float noundef %233, float noundef %232, float noundef %263, float noundef %264) #18
  store float %265, ptr %2, align 4, !tbaa !38
  %266 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %267 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %268 = getelementptr inbounds float, ptr %2, i64 1
  %269 = load <2 x float>, ptr %266, align 4, !tbaa !38
  %270 = load <2 x float>, ptr %267, align 4, !tbaa !38
  %271 = insertelement <2 x float> poison, float %232, i64 0
  %272 = shufflevector <2 x float> %271, <2 x float> poison, <2 x i32> zeroinitializer
  %273 = fmul <2 x float> %272, %270
  %274 = insertelement <2 x float> poison, float %233, i64 0
  %275 = shufflevector <2 x float> %274, <2 x float> poison, <2 x i32> zeroinitializer
  %276 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %275, <2 x float> %269, <2 x float> %273)
  store <2 x float> %276, ptr %268, align 4, !tbaa !38
  %277 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 3
  %278 = load float, ptr %277, align 4, !tbaa !67
  %279 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 3
  %280 = load float, ptr %279, align 4, !tbaa !67
  %281 = fmul float %232, %280
  %282 = call float @llvm.fmuladd.f32(float %233, float %278, float %281)
  %283 = getelementptr inbounds float, ptr %2, i64 3
  store float %282, ptr %283, align 4, !tbaa !38
  call void @hsl_to_rgb_v(ptr noundef nonnull %2, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %310

284:                                              ; preds = %231
  %285 = load float, ptr %85, align 4, !tbaa !64
  %286 = load float, ptr %86, align 4, !tbaa !64
  %287 = fmul float %232, %286
  %288 = tail call float @llvm.fmuladd.f32(float %233, float %285, float %287)
  store float %288, ptr %2, align 4, !tbaa !38
  %289 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 1
  %290 = load float, ptr %289, align 4, !tbaa !65
  %291 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 1
  %292 = load float, ptr %291, align 4, !tbaa !65
  %293 = fmul float %232, %292
  %294 = tail call float @llvm.fmuladd.f32(float %233, float %290, float %293)
  %295 = getelementptr inbounds float, ptr %2, i64 1
  store float %294, ptr %295, align 4, !tbaa !38
  %296 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 2
  %297 = load float, ptr %296, align 4, !tbaa !66
  %298 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 2
  %299 = load float, ptr %298, align 4, !tbaa !66
  %300 = fmul float %232, %299
  %301 = tail call float @llvm.fmuladd.f32(float %233, float %297, float %300)
  %302 = getelementptr inbounds float, ptr %2, i64 2
  store float %301, ptr %302, align 4, !tbaa !38
  %303 = getelementptr inbounds %struct.CBData, ptr %85, i64 0, i32 3
  %304 = load float, ptr %303, align 4, !tbaa !67
  %305 = getelementptr inbounds %struct.CBData, ptr %86, i64 0, i32 3
  %306 = load float, ptr %305, align 4, !tbaa !67
  %307 = fmul float %232, %306
  %308 = tail call float @llvm.fmuladd.f32(float %233, float %304, float %307)
  %309 = getelementptr inbounds float, ptr %2, i64 3
  store float %308, ptr %309, align 4, !tbaa !38
  br label %310

310:                                              ; preds = %234, %284, %259, %111, %223, %91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %311

311:                                              ; preds = %27, %310, %44, %3, %12
  %312 = phi i8 [ 0, %12 ], [ 0, %3 ], [ 1, %44 ], [ 1, %310 ], [ 1, %27 ]
  ret i8 %312
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @key_curve_position_weights(float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @colorband_hue_interp(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #9 !PGOFuncName !72 {
  %6 = fcmp olt float %3, 1.000000e+00
  %7 = fadd float %3, -1.000000e+00
  %8 = select i1 %6, float %3, float %7
  %9 = fcmp olt float %4, 1.000000e+00
  %10 = fadd float %4, -1.000000e+00
  %11 = select i1 %9, float %4, float %10
  switch i32 %0, label %34 [
    i32 0, label %12
    i32 1, label %21
    i32 3, label %30
    i32 2, label %32
  ]

12:                                               ; preds = %5
  %13 = fcmp olt float %8, %11
  %14 = fsub float %11, %8
  %15 = fcmp ogt float %14, 5.000000e-01
  %16 = and i1 %13, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = fcmp ogt float %8, %11
  %19 = fcmp olt float %14, -5.000000e-01
  %20 = and i1 %18, %19
  br i1 %20, label %44, label %34

21:                                               ; preds = %5
  %22 = fcmp olt float %8, %11
  %23 = fsub float %11, %8
  %24 = fcmp olt float %23, 5.000000e-01
  %25 = and i1 %22, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = fcmp ogt float %8, %11
  %28 = fcmp ogt float %23, -5.000000e-01
  %29 = and i1 %27, %28
  br i1 %29, label %44, label %34

30:                                               ; preds = %5
  %31 = fcmp ogt float %8, %11
  br i1 %31, label %44, label %34

32:                                               ; preds = %5
  %33 = fcmp olt float %8, %11
  br i1 %33, label %37, label %34

34:                                               ; preds = %5, %30, %32, %17, %26
  %35 = fmul float %11, %2
  %36 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %35)
  br label %51

37:                                               ; preds = %32, %12, %21
  %38 = fadd float %8, 1.000000e+00
  %39 = fmul float %11, %2
  %40 = tail call float @llvm.fmuladd.f32(float %1, float %38, float %39)
  %41 = fcmp olt float %40, 1.000000e+00
  %42 = fadd float %40, -1.000000e+00
  %43 = select i1 %41, float %40, float %42
  br label %51

44:                                               ; preds = %26, %17, %30
  %45 = fadd float %11, 1.000000e+00
  %46 = fmul float %45, %2
  %47 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %46)
  %48 = fcmp olt float %47, 1.000000e+00
  %49 = fadd float %47, -1.000000e+00
  %50 = select i1 %48, float %47, float %49
  br label %51

51:                                               ; preds = %44, %37, %34
  %52 = phi float [ %50, %44 ], [ %43, %37 ], [ %36, %34 ]
  ret float %52
}

; Function Attrs: optsize
declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @hsl_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  %16 = tail call zeroext i8 @do_colorband(ptr noundef %0, float noundef %12, ptr noundef %15) #18, !range !47
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %2, align 4, !tbaa !70
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %8, label %21, !llvm.loop !73

21:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @colorband_update_sort(ptr noundef %0) local_unnamed_addr #10 {
  %2 = load i16, ptr %0, align 4, !tbaa !61
  %3 = icmp slt i16 %2, 2
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = add nuw nsw i64 %5, 3
  %7 = and i64 %6, 65532
  %8 = add nsw i64 %5, -1
  %9 = insertelement <4 x i64> poison, i64 %8, i64 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %37, %4
  %12 = phi i64 [ 0, %4 ], [ %38, %37 ]
  %13 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %4 ], [ %39, %37 ]
  %14 = trunc i64 %12 to i32
  %15 = icmp ule <4 x i64> %13, %10
  %16 = extractelement <4 x i1> %15, i64 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %12, i32 5
  store i32 %14, ptr %18, align 4, !tbaa !74
  br label %19

19:                                               ; preds = %17, %11
  %20 = extractelement <4 x i1> %15, i64 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = or disjoint i64 %12, 1
  %23 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %22, i32 5
  %24 = or disjoint i32 %14, 1
  store i32 %24, ptr %23, align 4, !tbaa !74
  br label %25

25:                                               ; preds = %21, %19
  %26 = extractelement <4 x i1> %15, i64 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = or disjoint i64 %12, 2
  %29 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %28, i32 5
  %30 = or disjoint i32 %14, 2
  store i32 %30, ptr %29, align 4, !tbaa !74
  br label %31

31:                                               ; preds = %27, %25
  %32 = extractelement <4 x i1> %15, i64 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = or disjoint i64 %12, 3
  %35 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %34, i32 5
  %36 = or disjoint i32 %14, 3
  store i32 %36, ptr %35, align 4, !tbaa !74
  br label %37

37:                                               ; preds = %33, %31
  %38 = add i64 %12, 4
  %39 = add <4 x i64> %13, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %38, %7
  br i1 %40, label %41, label %11, !llvm.loop !75

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %43 = zext nneg i16 %2 to i64
  tail call void @qsort(ptr noundef nonnull %42, i64 noundef %43, i64 noundef 24, ptr noundef nonnull @vergcband) #17
  %44 = load i16, ptr %0, align 4, !tbaa !61
  %45 = icmp sgt i16 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = zext nneg i16 %44 to i64
  %48 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !78
  %50 = sext i16 %49 to i32
  br label %51

51:                                               ; preds = %46, %58
  %52 = phi i64 [ 0, %46 ], [ %59, %58 ]
  %53 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %52, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !74
  %55 = icmp eq i32 %54, %50
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = trunc i64 %52 to i16
  store i16 %57, ptr %48, align 2, !tbaa !78
  br label %61

58:                                               ; preds = %51
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %47
  br i1 %60, label %61, label %51, !llvm.loop !79

61:                                               ; preds = %58, %41, %56, %1
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergcband(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.CBData, ptr %0, i64 0, i32 4
  %4 = load float, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.CBData, ptr %1, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !57
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @colorband_element_add(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 4, !tbaa !61
  %4 = icmp eq i16 %3, 32
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6
  %7 = sext i16 %3 to i64
  %8 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %7
  %9 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %7, i32 4
  store float %1, ptr %9, align 4, !tbaa !57
  %10 = icmp eq i16 %3, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call zeroext i8 @do_colorband(ptr noundef nonnull %0, float noundef %1, ptr noundef nonnull %8) #18, !range !47
  br label %14

13:                                               ; preds = %5
  tail call fastcc void @zero_v4(ptr noundef nonnull %8) #18
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i16, ptr %0, align 4, !tbaa !61
  %16 = add i16 %15, 1
  store i16 %16, ptr %0, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  store i16 %15, ptr %17, align 2, !tbaa !78
  tail call void @colorband_update_sort(ptr noundef nonnull %0) #18
  %18 = load i16, ptr %17, align 2, !tbaa !78
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds %struct.CBData, ptr %6, i64 %19
  br label %21

21:                                               ; preds = %2, %14
  %22 = phi ptr [ %20, %14 ], [ null, %2 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !81 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef i32 @colorband_element_remove(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = load i16, ptr %0, align 4, !tbaa !61
  %4 = sext i16 %3 to i32
  %5 = icmp sgt i16 %3, 1
  %6 = icmp ugt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = icmp sgt i32 %4, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %11, %10 ], [ %15, %12 ]
  %14 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %13
  %15 = add nuw nsw i64 %13, 1
  %16 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 6, i64 %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !69
  %17 = trunc i64 %15 to i32
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %12, label %19, !llvm.loop !82

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.ColorBand, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !78
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = add i16 %21, -1
  store i16 %24, ptr %20, align 2, !tbaa !78
  br label %25

25:                                               ; preds = %23, %19
  %26 = add nsw i16 %3, -1
  store i16 %26, ptr %0, align 4, !tbaa !61
  br label %27

27:                                               ; preds = %2, %25
  %28 = phi i32 [ 1, %25 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_texture_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @BKE_free_envmap(ptr noundef nonnull %9) #18
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @BKE_free_pointdensity(ptr noundef nonnull %14) #18
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @BKE_free_voxeldata(ptr noundef nonnull %19) #18
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @BKE_free_oceantex(ptr noundef nonnull %24) #18
  br label %27

27:                                               ; preds = %26, %22
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #17
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  tail call void @BKE_previewimg_free(ptr noundef nonnull %28) #17
  tail call void @BKE_icon_delete(ptr noundef nonnull %0) #17
  %29 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 7
  store i32 0, ptr %29, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  tail call void @ntreeFreeTree(ptr noundef nonnull %31) #17
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %35 = load ptr, ptr %30, align 8, !tbaa !92
  tail call void %34(ptr noundef %35) #17
  br label %36

36:                                               ; preds = %33, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_envmap(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_envmapdata(ptr noundef %0) #18
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_pointdensity(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_pointdensitydata(ptr noundef %0) #18
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_voxeldatadata(ptr noundef %0) #18
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_oceantex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_previewimg_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_icon_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @default_tex(ptr noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  store ptr null, ptr %2, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  store <4 x i16> <i16 7, i16 8, i16 8, i16 0>, ptr %3, align 4, !tbaa !94
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  store i16 3, ptr %4, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 34
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 38
  store i32 1, ptr %6, align 4, !tbaa !96
  %7 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  store i32 8, ptr %7, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 41
  store i16 1, ptr %8, align 2, !tbaa !98
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 40
  store i16 1, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 43
  store i16 2, ptr %10, align 2, !tbaa !100
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 47
  store i32 1, ptr %11, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 45
  store i32 0, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 46
  store i32 0, ptr %13, align 4, !tbaa !103
  %14 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 26
  store i16 2, ptr %15, align 4, !tbaa !104
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 49
  store float 0x3F999999A0000000, ptr %16, align 8, !tbaa !105
  store <4 x float> <float 2.500000e-01, float 5.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %14, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %18, align 8, !tbaa !106
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 28
  store i16 0, ptr %19, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 29
  store i16 0, ptr %20, align 2, !tbaa !108
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 12
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 16
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.500000e+00>, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 24
  store i16 0, ptr %24, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 25
  store i16 0, ptr %25, align 2, !tbaa !110
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.EnvMap, ptr %27, i64 0, i32 6
  store i16 1, ptr %30, align 2, !tbaa !111
  %31 = getelementptr inbounds %struct.EnvMap, ptr %27, i64 0, i32 7
  store <2 x float> <float 0x3FB99999A0000000, float 1.000000e+02>, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.EnvMap, ptr %27, i64 0, i32 11
  store i16 600, ptr %32, align 8, !tbaa !113
  %33 = getelementptr inbounds %struct.EnvMap, ptr %27, i64 0, i32 12
  store i16 0, ptr %33, align 2, !tbaa !114
  br label %34

34:                                               ; preds = %29, %1
  %35 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PointDensity, ptr %36, i64 0, i32 3
  store float 0x3FD3333340000000, ptr %39, align 8, !tbaa !115
  %40 = getelementptr inbounds %struct.PointDensity, ptr %36, i64 0, i32 1
  store i16 0, ptr %40, align 2, !tbaa !117
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %43 = load ptr, ptr %42, align 8, !tbaa !89
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %43, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct.VoxelData, ptr %43, i64 0, i32 2
  store i16 4, ptr %46, align 8, !tbaa !118
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.OceanTex, ptr %49, i64 0, i32 2
  store i32 1, ptr %52, align 8, !tbaa !120
  store ptr null, ptr %49, align 8, !tbaa !122
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 5
  store i8 2, ptr %54, align 8, !tbaa !123
  %55 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 7
  store i8 1, ptr %55, align 2, !tbaa !124
  %56 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 2
  store i32 100, ptr %56, align 4, !tbaa !125
  %57 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51, i32 4
  store i32 1, ptr %57, align 4, !tbaa !126
  %58 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  store ptr null, ptr %58, align 8, !tbaa !127
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_set_type(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %27 [
    i32 15, label %3
    i32 14, label %9
    i32 10, label %15
    i32 16, label %21
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_add_voxeldata() #18
  store ptr %8, ptr %4, align 8, !tbaa !89
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 58
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = tail call ptr @BKE_add_pointdensity() #18
  store ptr %14, ptr %10, align 8, !tbaa !88
  br label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 56
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call ptr @BKE_add_envmap() #18
  store ptr %20, ptr %16, align 8, !tbaa !87
  br label %27

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @BKE_add_oceantex() #18
  store ptr %26, ptr %22, align 8, !tbaa !90
  br label %27

27:                                               ; preds = %21, %25, %15, %19, %9, %13, %3, %7, %2
  %28 = trunc i32 %1 to i16
  %29 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  store i16 %28, ptr %29, align 8, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_add_voxeldata() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 1088, ptr noundef nonnull @.str.7) #17
  %3 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 13
  store ptr null, ptr %3, align 8, !tbaa !129
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 2
  store i16 4, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 10
  store float 1.000000e+00, ptr %5, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 4
  store i16 2, ptr %6, align 4, !tbaa !131
  %7 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 9
  store ptr null, ptr %7, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 14
  store i32 -1, ptr %8, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.VoxelData, ptr %2, i64 0, i32 15
  store i32 0, ptr %9, align 4, !tbaa !134
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_add_pointdensity() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str.6) #17
  store i16 0, ptr %2, align 8, !tbaa !135
  %3 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 1
  store i16 0, ptr %3, align 2, !tbaa !117
  %4 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 2
  store <2 x float> <float 2.000000e+00, float 0x3FD3333340000000>, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 4
  store i16 0, ptr %5, align 4, !tbaa !136
  %6 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 12
  %7 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %7, align 8, !tbaa !137
  %8 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 15
  store i16 1, ptr %8, align 4, !tbaa !138
  %9 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 19
  store float 1.000000e+00, ptr %9, align 8, !tbaa !139
  %10 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 16
  store i16 0, ptr %10, align 2, !tbaa !140
  %11 = tail call ptr @add_colorband(i8 noundef zeroext 1) #18
  %12 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 23
  store ptr %11, ptr %12, align 8, !tbaa !141
  %13 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 20
  store float 1.000000e+00, ptr %13, align 4, !tbaa !142
  %14 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 6
  store i32 0, ptr %14, align 8, !tbaa !143
  %15 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 8
  store ptr null, ptr %15, align 8, !tbaa !144
  %16 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !145
  %17 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 10
  store i16 2, ptr %17, align 4, !tbaa !146
  %18 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %19 = getelementptr inbounds %struct.PointDensity, ptr %2, i64 0, i32 24
  store ptr %18, ptr %19, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %18, i64 0, i32 2
  store i32 0, ptr %20, align 8, !tbaa !148
  %21 = getelementptr inbounds %struct.CurveMapping, ptr %18, i64 0, i32 6, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 2, !tbaa !151
  %24 = getelementptr inbounds %struct.CurveMapping, ptr %18, i64 0, i32 6
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %18, i64 0, i32 5
  tail call void @curvemap_reset(ptr noundef nonnull %24, ptr noundef nonnull %25, i32 noundef 0, i32 noundef 1) #17
  %26 = load ptr, ptr %19, align 8, !tbaa !147
  tail call void @curvemapping_changed(ptr noundef %26, i8 noundef zeroext 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_add_envmap() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 200, ptr noundef nonnull @.str.5) #17
  %3 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 5
  store i16 0, ptr %3, align 4, !tbaa !153
  %4 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 6
  store i16 1, ptr %4, align 2, !tbaa !111
  %5 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 7
  store <2 x float> <float 0x3FB99999A0000000, float 1.000000e+02>, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 11
  store i16 600, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.EnvMap, ptr %2, i64 0, i32 9
  store float 5.000000e-01, ptr %7, align 8, !tbaa !154
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_add_oceantex() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 80, ptr noundef nonnull @.str.8) #17
  %3 = getelementptr inbounds %struct.OceanTex, ptr %2, i64 0, i32 2
  store i32 1, ptr %3, align 8, !tbaa !120
  store ptr null, ptr %2, align 8, !tbaa !122
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_texture(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17748, ptr noundef %1) #17
  tail call void @default_tex(ptr noundef %3) #18
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @default_mtex(ptr noundef writeonly %0) local_unnamed_addr #12 {
  store i16 16, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 1
  store i16 1, ptr %2, align 2, !tbaa !157
  %3 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !158
  %4 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 7
  store i8 1, ptr %4, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 8
  store i8 2, ptr %5, align 1, !tbaa !160
  %6 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 9
  store i8 3, ptr %6, align 2, !tbaa !161
  %7 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %7, i8 0, i64 13, i1 false)
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 12, i64 2
  store float 1.000000e+00, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 14
  store i16 17664, ptr %11, align 8, !tbaa !163
  %12 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 15
  store i16 0, ptr %12, align 2, !tbaa !164
  %13 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 22
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 26
  store float 1.000000e+00, ptr %14, align 4, !tbaa !165
  %15 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 3
  store i16 0, ptr %15, align 2, !tbaa !166
  %16 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 28
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0x3FC99999A0000000>, ptr %16, align 4, !tbaa !38
  %17 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 33
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 37
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 41
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 45
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 61
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 49
  %23 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 53
  %24 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 57
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %22, align 8, !tbaa !38
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %23, align 8, !tbaa !38
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 18
  store i16 3, ptr %25, align 8, !tbaa !167
  %26 = getelementptr inbounds %struct.MTex, ptr %0, i64 0, i32 20
  store i8 1, ptr %26, align 4, !tbaa !168
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_mtex() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 312, ptr noundef nonnull @.str.4) #17
  tail call void @default_mtex(ptr noundef %2) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @add_mtex_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  %5 = call zeroext i8 @give_active_mtex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !47
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %8, %15
  %11 = phi i64 [ %16, %15 ], [ 0, %8 ]
  %12 = getelementptr inbounds ptr, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 18
  br i1 %17, label %45, label %10, !llvm.loop !169

18:                                               ; preds = %8
  %19 = icmp ugt i32 %1, 17
  br i1 %19, label %45, label %22

20:                                               ; preds = %10
  %21 = trunc i64 %11 to i32
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %1, %18 ], [ %21, %20 ]
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %6, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.MTex, ptr %26, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !162
  call void @id_us_min(ptr noundef %30) #17
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %32 = load ptr, ptr %25, align 8, !tbaa !34
  call void %31(ptr noundef %32) #17
  store ptr null, ptr %25, align 8, !tbaa !34
  br label %43

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %35 = load i16, ptr %34, align 8, !tbaa !94
  %36 = icmp eq i16 %35, 16717
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = shl nuw nsw i32 1, %23
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %41 = load i32, ptr %40, align 8, !tbaa !170
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 8, !tbaa !170
  br label %43

43:                                               ; preds = %33, %37, %28
  %44 = call ptr @add_mtex() #18
  store ptr %44, ptr %25, align 8, !tbaa !34
  br label %45

45:                                               ; preds = %15, %18, %2, %43
  %46 = phi ptr [ %44, %43 ], [ null, %2 ], [ null, %18 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @give_active_mtex(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !94
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
  %11 = load i8, ptr %10, align 1, !tbaa !175
  %12 = zext i8 %11 to i16
  br label %39

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70
  store ptr %14, ptr %1, align 8, !tbaa !34
  %15 = icmp eq ptr %2, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %18 = load i16, ptr %17, align 4, !tbaa !176
  br label %39

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69
  store ptr %20, ptr %1, align 8, !tbaa !34
  %21 = icmp eq ptr %2, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %24 = load i16, ptr %23, align 8, !tbaa !178
  br label %39

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39
  store ptr %26, ptr %1, align 8, !tbaa !34
  %27 = icmp eq ptr %2, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %30 = load i16, ptr %29, align 4, !tbaa !180
  br label %39

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121
  store ptr %32, ptr %1, align 8, !tbaa !34
  %33 = icmp eq ptr %2, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %36 = load i16, ptr %35, align 2, !tbaa !182
  br label %39

37:                                               ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !34
  %38 = icmp eq ptr %2, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37, %34, %28, %22, %16, %9
  %40 = phi i16 [ %12, %9 ], [ %18, %16 ], [ %24, %22 ], [ %30, %28 ], [ %36, %34 ], [ 0, %37 ]
  %41 = phi i8 [ 1, %9 ], [ 1, %16 ], [ 1, %22 ], [ 1, %28 ], [ 1, %34 ], [ 0, %37 ]
  store i16 %40, ptr %2, align 2, !tbaa !94
  br label %42

42:                                               ; preds = %39, %6, %13, %19, %25, %31, %37
  %43 = phi i8 [ 0, %37 ], [ 1, %31 ], [ 1, %25 ], [ 1, %19 ], [ 1, %13 ], [ 1, %6 ], [ %41, %39 ]
  ret i8 %43
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_texture_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 32
  %4 = load i16, ptr %3, align 8, !tbaa !128
  %5 = icmp eq i16 %4, 8
  %6 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 54
  br i1 %5, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 8, !tbaa !93
  tail call void @id_us_plus(ptr noundef %8) #17
  br label %10

9:                                                ; preds = %1
  store ptr null, ptr %6, align 8, !tbaa !93
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(ptr noundef nonnull %12) #17
  store ptr %16, ptr %11, align 8, !tbaa !83
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_copy_envmap(ptr noundef nonnull %19) #18
  store ptr %22, ptr %18, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 58
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @BKE_copy_pointdensity(ptr noundef nonnull %25) #18
  store ptr %28, ptr %24, align 8, !tbaa !88
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 59
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %35 = tail call ptr %34(ptr noundef nonnull %31) #17
  store ptr %35, ptr %30, align 8, !tbaa !89
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 60
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @BKE_copy_oceantex(ptr noundef nonnull %38) #18
  store ptr %41, ptr %37, align 8, !tbaa !90
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 57
  %44 = load ptr, ptr %43, align 8, !tbaa !127
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @BKE_previewimg_copy(ptr noundef nonnull %44) #17
  %48 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 57
  store ptr %47, ptr %48, align 8, !tbaa !127
  br label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %51, i64 0, i32 27
  %55 = load ptr, ptr %54, align 8, !tbaa !184
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %55) #17
  %58 = load ptr, ptr %50, align 8, !tbaa !92
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi ptr [ %58, %57 ], [ %51, %53 ]
  %61 = tail call ptr @ntreeCopyTree(ptr noundef %60) #17
  %62 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 52
  store ptr %61, ptr %62, align 8, !tbaa !92
  br label %63

63:                                               ; preds = %59, %49
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_copy_envmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.EnvMap, ptr %3, i64 0, i32 13
  store i32 0, ptr %4, align 4, !tbaa !187
  %5 = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false), !tbaa !34
  %6 = getelementptr inbounds %struct.EnvMap, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !188
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @id_us_plus(ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %9, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_copy_pointdensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 12
  %5 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %10 = tail call ptr %9(ptr noundef nonnull %6) #17
  store ptr %10, ptr %5, align 8, !tbaa !141
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.PointDensity, ptr %3, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = tail call ptr @curvemapping_copy(ptr noundef %13) #17
  store ptr %14, ptr %12, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_copy_oceantex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_previewimg_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @localize_texture(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext 0) #17
  %3 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 55
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(ptr noundef nonnull %4) #17
  store ptr %8, ptr %3, align 8, !tbaa !83
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @BKE_copy_envmap(ptr noundef nonnull %11) #18
  store ptr %14, ptr %10, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.EnvMap, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  tail call void @id_us_min(ptr noundef %16) #17
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 58
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_copy_pointdensity(ptr noundef nonnull %19) #18
  store ptr %22, ptr %18, align 8, !tbaa !88
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 59
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %29 = tail call ptr %28(ptr noundef nonnull %25) #17
  store ptr %29, ptr %24, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.VoxelData, ptr %29, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %35 = tail call ptr %34(ptr noundef nonnull %31) #17
  %36 = load ptr, ptr %24, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.VoxelData, ptr %36, i64 0, i32 13
  store ptr %35, ptr %37, align 8, !tbaa !129
  br label %38

38:                                               ; preds = %27, %33, %23
  %39 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 60
  %40 = load ptr, ptr %39, align 8, !tbaa !90
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 60
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  %45 = tail call ptr @BKE_copy_oceantex(ptr noundef %44) #18
  store ptr %45, ptr %39, align 8, !tbaa !90
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 57
  store ptr null, ptr %47, align 8, !tbaa !127
  %48 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @ntreeLocalize(ptr noundef nonnull %49) #17
  %53 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 52
  store ptr %52, ptr %53, align 8, !tbaa !92
  br label %54

54:                                               ; preds = %51, %46
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_texture_make_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !189
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  %5 = icmp eq ptr %4, null
  br i1 %5, label %411, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !192
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #17
  tail call fastcc void @extern_local_texture(ptr noundef nonnull %0) #18
  br label %411

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %18

15:                                               ; preds = %39
  %16 = load ptr, ptr %19, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18, !llvm.loop !193

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = phi i8 [ %41, %15 ], [ 0, %11 ]
  %21 = phi i8 [ %40, %15 ], [ 0, %11 ]
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  br label %23

23:                                               ; preds = %18, %39
  %24 = phi i64 [ 0, %18 ], [ %42, %39 ]
  %25 = phi i8 [ %20, %18 ], [ %41, %39 ]
  %26 = phi i8 [ %21, %18 ], [ %40, %39 ]
  %27 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 102, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.MTex, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load ptr, ptr %22, align 8, !tbaa !194
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i8 1, i8 %26
  %38 = select i1 %36, i8 %25, i8 1
  br label %39

39:                                               ; preds = %34, %23, %30
  %40 = phi i8 [ %26, %30 ], [ %26, %23 ], [ %37, %34 ]
  %41 = phi i8 [ %25, %30 ], [ %25, %23 ], [ %38, %34 ]
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, 18
  br i1 %43, label %15, label %23, !llvm.loop !195

44:                                               ; preds = %15, %11
  %45 = phi i8 [ 0, %11 ], [ %40, %15 ]
  %46 = phi i8 [ 0, %11 ], [ %41, %15 ]
  %47 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %79, label %53

50:                                               ; preds = %74
  %51 = load ptr, ptr %54, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %79, label %53, !llvm.loop !196

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %51, %50 ], [ %48, %44 ]
  %55 = phi i8 [ %76, %50 ], [ %46, %44 ]
  %56 = phi i8 [ %75, %50 ], [ %45, %44 ]
  %57 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  br label %58

58:                                               ; preds = %53, %74
  %59 = phi i64 [ 0, %53 ], [ %77, %74 ]
  %60 = phi i8 [ %55, %53 ], [ %76, %74 ]
  %61 = phi i8 [ %56, %53 ], [ %75, %74 ]
  %62 = getelementptr inbounds %struct.Lamp, ptr %54, i64 0, i32 69, i64 %59
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.MTex, ptr %63, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !162
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load ptr, ptr %57, align 8, !tbaa !197
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, i8 1, i8 %61
  %73 = select i1 %71, i8 %60, i8 1
  br label %74

74:                                               ; preds = %69, %58, %65
  %75 = phi i8 [ %61, %65 ], [ %61, %58 ], [ %72, %69 ]
  %76 = phi i8 [ %60, %65 ], [ %60, %58 ], [ %73, %69 ]
  %77 = add nuw nsw i64 %59, 1
  %78 = icmp eq i64 %77, 18
  br i1 %78, label %50, label %58, !llvm.loop !198

79:                                               ; preds = %50, %44
  %80 = phi i8 [ %45, %44 ], [ %75, %50 ]
  %81 = phi i8 [ %46, %44 ], [ %76, %50 ]
  %82 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %114, label %88

85:                                               ; preds = %109
  %86 = load ptr, ptr %89, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %114, label %88, !llvm.loop !199

88:                                               ; preds = %79, %85
  %89 = phi ptr [ %86, %85 ], [ %83, %79 ]
  %90 = phi i8 [ %111, %85 ], [ %81, %79 ]
  %91 = phi i8 [ %110, %85 ], [ %80, %79 ]
  %92 = getelementptr inbounds %struct.ID, ptr %89, i64 0, i32 3
  br label %93

93:                                               ; preds = %88, %109
  %94 = phi i64 [ 0, %88 ], [ %112, %109 ]
  %95 = phi i8 [ %90, %88 ], [ %111, %109 ]
  %96 = phi i8 [ %91, %88 ], [ %110, %109 ]
  %97 = getelementptr inbounds %struct.World, ptr %89, i64 0, i32 70, i64 %94
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.MTex, ptr %98, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !162
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load ptr, ptr %92, align 8, !tbaa !200
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, i8 1, i8 %96
  %108 = select i1 %106, i8 %95, i8 1
  br label %109

109:                                              ; preds = %104, %93, %100
  %110 = phi i8 [ %96, %100 ], [ %96, %93 ], [ %107, %104 ]
  %111 = phi i8 [ %95, %100 ], [ %95, %93 ], [ %108, %104 ]
  %112 = add nuw nsw i64 %94, 1
  %113 = icmp eq i64 %112, 18
  br i1 %113, label %85, label %93, !llvm.loop !201

114:                                              ; preds = %85, %79
  %115 = phi i8 [ %80, %79 ], [ %110, %85 ]
  %116 = phi i8 [ %81, %79 ], [ %111, %85 ]
  %117 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %150, label %120

120:                                              ; preds = %114, %145
  %121 = phi ptr [ %148, %145 ], [ %118, %114 ]
  %122 = phi i8 [ %147, %145 ], [ %116, %114 ]
  %123 = phi i8 [ %146, %145 ], [ %115, %114 ]
  %124 = getelementptr inbounds %struct.Brush, ptr %121, i64 0, i32 3, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !202
  %126 = icmp eq ptr %125, %0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.ID, ptr %121, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !205
  %130 = icmp eq ptr %129, null
  %131 = select i1 %130, i8 1, i8 %123
  %132 = select i1 %130, i8 %122, i8 1
  br label %133

133:                                              ; preds = %127, %120
  %134 = phi i8 [ %123, %120 ], [ %131, %127 ]
  %135 = phi i8 [ %122, %120 ], [ %132, %127 ]
  %136 = getelementptr inbounds %struct.Brush, ptr %121, i64 0, i32 4, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !206
  %138 = icmp eq ptr %137, %0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.ID, ptr %121, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !205
  %142 = icmp eq ptr %141, null
  %143 = select i1 %142, i8 1, i8 %134
  %144 = select i1 %142, i8 %135, i8 1
  br label %145

145:                                              ; preds = %139, %133
  %146 = phi i8 [ %134, %133 ], [ %143, %139 ]
  %147 = phi i8 [ %135, %133 ], [ %144, %139 ]
  %148 = load ptr, ptr %121, align 8, !tbaa !34
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %120, !llvm.loop !207

150:                                              ; preds = %145, %114
  %151 = phi i8 [ %115, %114 ], [ %146, %145 ]
  %152 = phi i8 [ %116, %114 ], [ %147, %145 ]
  %153 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %154 = load ptr, ptr %153, align 8, !tbaa !34
  %155 = icmp eq ptr %154, null
  br i1 %155, label %185, label %159

156:                                              ; preds = %180
  %157 = load ptr, ptr %160, align 8, !tbaa !34
  %158 = icmp eq ptr %157, null
  br i1 %158, label %185, label %159, !llvm.loop !208

159:                                              ; preds = %150, %156
  %160 = phi ptr [ %157, %156 ], [ %154, %150 ]
  %161 = phi i8 [ %182, %156 ], [ %152, %150 ]
  %162 = phi i8 [ %181, %156 ], [ %151, %150 ]
  %163 = getelementptr inbounds %struct.ID, ptr %160, i64 0, i32 3
  br label %164

164:                                              ; preds = %159, %180
  %165 = phi i64 [ 0, %159 ], [ %183, %180 ]
  %166 = phi i8 [ %161, %159 ], [ %182, %180 ]
  %167 = phi i8 [ %162, %159 ], [ %181, %180 ]
  %168 = getelementptr inbounds %struct.ParticleSettings, ptr %160, i64 0, i32 121, i64 %165
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.MTex, ptr %169, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !162
  %174 = icmp eq ptr %173, %0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load ptr, ptr %163, align 8, !tbaa !209
  %177 = icmp eq ptr %176, null
  %178 = select i1 %177, i8 1, i8 %167
  %179 = select i1 %177, i8 %166, i8 1
  br label %180

180:                                              ; preds = %175, %164, %171
  %181 = phi i8 [ %167, %171 ], [ %167, %164 ], [ %178, %175 ]
  %182 = phi i8 [ %166, %171 ], [ %166, %164 ], [ %179, %175 ]
  %183 = add nuw nsw i64 %165, 1
  %184 = icmp eq i64 %183, 18
  br i1 %184, label %156, label %164, !llvm.loop !210

185:                                              ; preds = %156, %150
  %186 = phi i8 [ %151, %150 ], [ %181, %156 ]
  %187 = phi i8 [ %152, %150 ], [ %182, %156 ]
  %188 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = icmp eq ptr %189, null
  br i1 %190, label %220, label %194

191:                                              ; preds = %215
  %192 = load ptr, ptr %195, align 8, !tbaa !34
  %193 = icmp eq ptr %192, null
  br i1 %193, label %220, label %194, !llvm.loop !211

194:                                              ; preds = %185, %191
  %195 = phi ptr [ %192, %191 ], [ %189, %185 ]
  %196 = phi i8 [ %217, %191 ], [ %187, %185 ]
  %197 = phi i8 [ %216, %191 ], [ %186, %185 ]
  %198 = getelementptr inbounds %struct.ID, ptr %195, i64 0, i32 3
  br label %199

199:                                              ; preds = %194, %215
  %200 = phi i64 [ 0, %194 ], [ %218, %215 ]
  %201 = phi i8 [ %196, %194 ], [ %217, %215 ]
  %202 = phi i8 [ %197, %194 ], [ %216, %215 ]
  %203 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %195, i64 0, i32 39, i64 %200
  %204 = load ptr, ptr %203, align 8, !tbaa !34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %215, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.MTex, ptr %204, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !162
  %209 = icmp eq ptr %208, %0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load ptr, ptr %198, align 8, !tbaa !212
  %212 = icmp eq ptr %211, null
  %213 = select i1 %212, i8 1, i8 %202
  %214 = select i1 %212, i8 %201, i8 1
  br label %215

215:                                              ; preds = %210, %199, %206
  %216 = phi i8 [ %202, %206 ], [ %202, %199 ], [ %213, %210 ]
  %217 = phi i8 [ %201, %206 ], [ %201, %199 ], [ %214, %210 ]
  %218 = add nuw nsw i64 %200, 1
  %219 = icmp eq i64 %218, 18
  br i1 %219, label %191, label %199, !llvm.loop !213

220:                                              ; preds = %191, %185
  %221 = phi i8 [ %186, %185 ], [ %216, %191 ]
  %222 = phi i8 [ %187, %185 ], [ %217, %191 ]
  %223 = icmp ne i8 %221, 0
  %224 = icmp eq i8 %222, 0
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  tail call fastcc void @extern_local_texture(ptr noundef %0) #18
  br label %411

227:                                              ; preds = %220
  %228 = icmp ne i8 %222, 0
  %229 = select i1 %223, i1 %228, i1 false
  br i1 %229, label %230, label %411

230:                                              ; preds = %227
  %231 = tail call ptr @BKE_texture_copy(ptr noundef %0) #18
  %232 = getelementptr inbounds %struct.ID, ptr %231, i64 0, i32 6
  store i32 0, ptr %232, align 4, !tbaa !192
  %233 = load ptr, ptr %3, align 8, !tbaa !191
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %233, ptr noundef %231) #17
  %234 = load ptr, ptr %12, align 8, !tbaa !34
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %239

236:                                              ; preds = %262
  %237 = load ptr, ptr %240, align 8, !tbaa !34
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239, !llvm.loop !214

239:                                              ; preds = %230, %236
  %240 = phi ptr [ %237, %236 ], [ %234, %230 ]
  %241 = getelementptr inbounds %struct.ID, ptr %240, i64 0, i32 3
  br label %245

242:                                              ; preds = %236, %230
  %243 = load ptr, ptr %47, align 8, !tbaa !34
  %244 = icmp eq ptr %243, null
  br i1 %244, label %271, label %268

245:                                              ; preds = %239, %262
  %246 = phi i64 [ 0, %239 ], [ %263, %262 ]
  %247 = getelementptr inbounds %struct.Material, ptr %240, i64 0, i32 102, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !34
  %249 = icmp eq ptr %248, null
  br i1 %249, label %262, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.MTex, ptr %248, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !162
  %253 = icmp eq ptr %252, %0
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load ptr, ptr %241, align 8, !tbaa !194
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  store ptr %231, ptr %251, align 8, !tbaa !162
  %258 = load i32, ptr %232, align 4, !tbaa !192
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %232, align 4, !tbaa !192
  %260 = load i32, ptr %7, align 4, !tbaa !192
  %261 = add nsw i32 %260, -1
  store i32 %261, ptr %7, align 4, !tbaa !192
  br label %262

262:                                              ; preds = %245, %250, %257, %254
  %263 = add nuw nsw i64 %246, 1
  %264 = icmp eq i64 %263, 18
  br i1 %264, label %236, label %245, !llvm.loop !215

265:                                              ; preds = %291
  %266 = load ptr, ptr %269, align 8, !tbaa !34
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268, !llvm.loop !216

268:                                              ; preds = %242, %265
  %269 = phi ptr [ %266, %265 ], [ %243, %242 ]
  %270 = getelementptr inbounds %struct.ID, ptr %269, i64 0, i32 3
  br label %274

271:                                              ; preds = %265, %242
  %272 = load ptr, ptr %82, align 8, !tbaa !34
  %273 = icmp eq ptr %272, null
  br i1 %273, label %300, label %297

274:                                              ; preds = %268, %291
  %275 = phi i64 [ 0, %268 ], [ %292, %291 ]
  %276 = getelementptr inbounds %struct.Lamp, ptr %269, i64 0, i32 69, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !34
  %278 = icmp eq ptr %277, null
  br i1 %278, label %291, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.MTex, ptr %277, i64 0, i32 5
  %281 = load ptr, ptr %280, align 8, !tbaa !162
  %282 = icmp eq ptr %281, %0
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load ptr, ptr %270, align 8, !tbaa !197
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  store ptr %231, ptr %280, align 8, !tbaa !162
  %287 = load i32, ptr %232, align 4, !tbaa !192
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %232, align 4, !tbaa !192
  %289 = load i32, ptr %7, align 4, !tbaa !192
  %290 = add nsw i32 %289, -1
  store i32 %290, ptr %7, align 4, !tbaa !192
  br label %291

291:                                              ; preds = %274, %279, %286, %283
  %292 = add nuw nsw i64 %275, 1
  %293 = icmp eq i64 %292, 18
  br i1 %293, label %265, label %274, !llvm.loop !217

294:                                              ; preds = %320
  %295 = load ptr, ptr %298, align 8, !tbaa !34
  %296 = icmp eq ptr %295, null
  br i1 %296, label %300, label %297, !llvm.loop !218

297:                                              ; preds = %271, %294
  %298 = phi ptr [ %295, %294 ], [ %272, %271 ]
  %299 = getelementptr inbounds %struct.ID, ptr %298, i64 0, i32 3
  br label %303

300:                                              ; preds = %294, %271
  %301 = load ptr, ptr %117, align 8, !tbaa !34
  %302 = icmp eq ptr %301, null
  br i1 %302, label %323, label %326

303:                                              ; preds = %297, %320
  %304 = phi i64 [ 0, %297 ], [ %321, %320 ]
  %305 = getelementptr inbounds %struct.World, ptr %298, i64 0, i32 70, i64 %304
  %306 = load ptr, ptr %305, align 8, !tbaa !34
  %307 = icmp eq ptr %306, null
  br i1 %307, label %320, label %308

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.MTex, ptr %306, i64 0, i32 5
  %310 = load ptr, ptr %309, align 8, !tbaa !162
  %311 = icmp eq ptr %310, %0
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = load ptr, ptr %299, align 8, !tbaa !200
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  store ptr %231, ptr %309, align 8, !tbaa !162
  %316 = load i32, ptr %232, align 4, !tbaa !192
  %317 = add nsw i32 %316, 1
  store i32 %317, ptr %232, align 4, !tbaa !192
  %318 = load i32, ptr %7, align 4, !tbaa !192
  %319 = add nsw i32 %318, -1
  store i32 %319, ptr %7, align 4, !tbaa !192
  br label %320

320:                                              ; preds = %303, %308, %315, %312
  %321 = add nuw nsw i64 %304, 1
  %322 = icmp eq i64 %321, 18
  br i1 %322, label %294, label %303, !llvm.loop !219

323:                                              ; preds = %353, %300
  %324 = load ptr, ptr %153, align 8, !tbaa !34
  %325 = icmp eq ptr %324, null
  br i1 %325, label %362, label %359

326:                                              ; preds = %300, %353
  %327 = phi ptr [ %354, %353 ], [ %301, %300 ]
  %328 = getelementptr inbounds %struct.Brush, ptr %327, i64 0, i32 3, i32 5
  %329 = load ptr, ptr %328, align 8, !tbaa !202
  %330 = icmp eq ptr %329, %0
  br i1 %330, label %331, label %340

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.ID, ptr %327, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !205
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  store ptr %231, ptr %328, align 8, !tbaa !202
  %336 = load i32, ptr %232, align 4, !tbaa !192
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %232, align 4, !tbaa !192
  %338 = load i32, ptr %7, align 4, !tbaa !192
  %339 = add nsw i32 %338, -1
  store i32 %339, ptr %7, align 4, !tbaa !192
  br label %340

340:                                              ; preds = %331, %335, %326
  %341 = getelementptr inbounds %struct.Brush, ptr %327, i64 0, i32 4, i32 5
  %342 = load ptr, ptr %341, align 8, !tbaa !206
  %343 = icmp eq ptr %342, %0
  br i1 %343, label %344, label %353

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.ID, ptr %327, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !205
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  store ptr %231, ptr %341, align 8, !tbaa !206
  %349 = load i32, ptr %232, align 4, !tbaa !192
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %232, align 4, !tbaa !192
  %351 = load i32, ptr %7, align 4, !tbaa !192
  %352 = add nsw i32 %351, -1
  store i32 %352, ptr %7, align 4, !tbaa !192
  br label %353

353:                                              ; preds = %344, %348, %340
  %354 = load ptr, ptr %327, align 8, !tbaa !34
  %355 = icmp eq ptr %354, null
  br i1 %355, label %323, label %326, !llvm.loop !220

356:                                              ; preds = %382
  %357 = load ptr, ptr %360, align 8, !tbaa !34
  %358 = icmp eq ptr %357, null
  br i1 %358, label %362, label %359, !llvm.loop !221

359:                                              ; preds = %323, %356
  %360 = phi ptr [ %357, %356 ], [ %324, %323 ]
  %361 = getelementptr inbounds %struct.ID, ptr %360, i64 0, i32 3
  br label %365

362:                                              ; preds = %356, %323
  %363 = load ptr, ptr %188, align 8, !tbaa !34
  %364 = icmp eq ptr %363, null
  br i1 %364, label %411, label %388

365:                                              ; preds = %359, %382
  %366 = phi i64 [ 0, %359 ], [ %383, %382 ]
  %367 = getelementptr inbounds %struct.ParticleSettings, ptr %360, i64 0, i32 121, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !34
  %369 = icmp eq ptr %368, null
  br i1 %369, label %382, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.MTex, ptr %368, i64 0, i32 5
  %372 = load ptr, ptr %371, align 8, !tbaa !162
  %373 = icmp eq ptr %372, %0
  br i1 %373, label %374, label %382

374:                                              ; preds = %370
  %375 = load ptr, ptr %361, align 8, !tbaa !209
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %382

377:                                              ; preds = %374
  store ptr %231, ptr %371, align 8, !tbaa !162
  %378 = load i32, ptr %232, align 4, !tbaa !192
  %379 = add nsw i32 %378, 1
  store i32 %379, ptr %232, align 4, !tbaa !192
  %380 = load i32, ptr %7, align 4, !tbaa !192
  %381 = add nsw i32 %380, -1
  store i32 %381, ptr %7, align 4, !tbaa !192
  br label %382

382:                                              ; preds = %365, %370, %377, %374
  %383 = add nuw nsw i64 %366, 1
  %384 = icmp eq i64 %383, 18
  br i1 %384, label %356, label %365, !llvm.loop !222

385:                                              ; preds = %408
  %386 = load ptr, ptr %389, align 8, !tbaa !34
  %387 = icmp eq ptr %386, null
  br i1 %387, label %411, label %388, !llvm.loop !223

388:                                              ; preds = %362, %385
  %389 = phi ptr [ %386, %385 ], [ %363, %362 ]
  %390 = getelementptr inbounds %struct.ID, ptr %389, i64 0, i32 3
  br label %391

391:                                              ; preds = %388, %408
  %392 = phi i64 [ 0, %388 ], [ %409, %408 ]
  %393 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %389, i64 0, i32 39, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !34
  %395 = icmp eq ptr %394, null
  br i1 %395, label %408, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.MTex, ptr %394, i64 0, i32 5
  %398 = load ptr, ptr %397, align 8, !tbaa !162
  %399 = icmp eq ptr %398, %0
  br i1 %399, label %400, label %408

400:                                              ; preds = %396
  %401 = load ptr, ptr %390, align 8, !tbaa !212
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  store ptr %231, ptr %397, align 8, !tbaa !162
  %404 = load i32, ptr %232, align 4, !tbaa !192
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %232, align 4, !tbaa !192
  %406 = load i32, ptr %7, align 4, !tbaa !192
  %407 = add nsw i32 %406, -1
  store i32 %407, ptr %7, align 4, !tbaa !192
  br label %408

408:                                              ; preds = %391, %396, %403, %400
  %409 = add nuw nsw i64 %392, 1
  %410 = icmp eq i64 %409, 18
  br i1 %410, label %385, label %391, !llvm.loop !224

411:                                              ; preds = %385, %362, %226, %227, %1, %10
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_texture(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  tail call void @id_lib_extern(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @give_current_object_texture(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %5 = load i32, ptr %4, align 8, !tbaa !226
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !230
  %9 = icmp eq i16 %8, 10
  br i1 %6, label %10, label %11

10:                                               ; preds = %3
  br i1 %9, label %12, label %25

11:                                               ; preds = %3
  br i1 %9, label %12, label %16

12:                                               ; preds = %10, %11
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !231
  %15 = tail call ptr @give_current_lamp_texture(ptr noundef %14) #18
  br label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %18 = load i32, ptr %17, align 4, !tbaa !232
  %19 = trunc i32 %18 to i16
  %20 = tail call ptr @give_current_material(ptr noundef nonnull %0, i16 noundef signext %19) #17
  %21 = tail call ptr @give_node_material(ptr noundef %20) #17
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %20, ptr %21
  %24 = tail call ptr @give_current_material_texture(ptr noundef %23) #18
  br label %25

25:                                               ; preds = %12, %16, %10, %1
  %26 = phi ptr [ null, %1 ], [ null, %10 ], [ %15, %12 ], [ %24, %16 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_lamp_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %5 = load i16, ptr %4, align 8, !tbaa !178
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_node_material(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @give_current_material_texture(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !233
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !234
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 17748) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  br label %25

16:                                               ; preds = %11, %7, %3
  %17 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %18 = load i8, ptr %17, align 1, !tbaa !175
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ %15, %14 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %1, %16
  %29 = phi ptr [ null, %16 ], [ null, %1 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_lamp_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  %4 = load i16, ptr %3, align 8, !tbaa !178
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 69, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %24, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call ptr @add_mtex() #18
  store ptr %20, ptr %6, align 8, !tbaa !34
  store i16 8, ptr %20, align 8, !tbaa !155
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %20, %19 ], [ %16, %18 ]
  %23 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  store ptr %1, ptr %23, align 8, !tbaa !162
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %27

24:                                               ; preds = %14
  br i1 %17, label %27, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %24, %25, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_linestyle_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %5 = load i16, ptr %4, align 4, !tbaa !180
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ %12, %10 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_linestyle_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  %4 = load i16, ptr %3, align 4, !tbaa !180
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %24, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call ptr @add_mtex() #18
  store ptr %20, ptr %6, align 8, !tbaa !34
  store i16 16, ptr %20, align 8, !tbaa !155
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %20, %19 ], [ %16, %18 ]
  %23 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  store ptr %1, ptr %23, align 8, !tbaa !162
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %27

24:                                               ; preds = %14
  br i1 %17, label %27, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %24, %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @give_current_material_texture_node(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !233
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !234
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %9, i16 noundef signext 17748) #17
  br label %13

13:                                               ; preds = %1, %3, %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @nodeGetActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @set_active_mtex(ptr nocapture noundef %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = icmp slt i16 %1, 0
  %4 = tail call i16 @llvm.umin.i16(i16 %1, i16 17)
  %5 = select i1 %3, i16 0, i16 %4
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !94
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
  store i8 %9, ptr %10, align 1, !tbaa !175
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  store i16 %5, ptr %12, align 4, !tbaa !176
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 49
  store i16 %5, ptr %14, align 8, !tbaa !178
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 28
  store i16 %5, ptr %16, align 4, !tbaa !180
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  store i16 %5, ptr %18, align 2, !tbaa !182
  br label %19

19:                                               ; preds = %2, %17, %15, %13, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_material_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %4 = load i8, ptr %3, align 1, !tbaa !233
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @nodeGetActiveID(ptr noundef nonnull %8, i16 noundef signext 17748) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !235
  tail call void @id_us_min(ptr noundef %15) #17
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !235
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %49

18:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !235
  br label %49

19:                                               ; preds = %10, %6, %2
  %20 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 75
  %21 = load i8, ptr %20, align 1, !tbaa !175
  %22 = zext nneg i8 %21 to i32
  %23 = zext i8 %21 to i64
  %24 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.MTex, ptr %25, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi ptr [ %29, %27 ], [ null, %19 ]
  tail call void @id_us_min(ptr noundef %31) #17
  %32 = icmp eq ptr %1, null
  %33 = load ptr, ptr %24, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %32, label %46, label %35

35:                                               ; preds = %30
  br i1 %34, label %36, label %43

36:                                               ; preds = %35
  %37 = tail call ptr @add_mtex() #18
  store ptr %37, ptr %24, align 8, !tbaa !34
  %38 = shl nuw i32 1, %22
  %39 = xor i32 %38, -1
  %40 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 73
  %41 = load i32, ptr %40, align 8, !tbaa !170
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 8, !tbaa !170
  br label %43

43:                                               ; preds = %36, %35
  %44 = phi ptr [ %37, %36 ], [ %33, %35 ]
  %45 = getelementptr inbounds %struct.MTex, ptr %44, i64 0, i32 5
  store ptr %1, ptr %45, align 8, !tbaa !162
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %49

46:                                               ; preds = %30
  br i1 %34, label %49, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef nonnull %33) #17
  store ptr null, ptr %24, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %43, %47, %46, %17, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @has_current_material_texture(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %5 = load i8, ptr %4, align 1, !tbaa !233
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %9 = load ptr, ptr %8, align 8, !tbaa !234
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_world_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !176
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_world_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 4, !tbaa !176
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 70, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %24, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call ptr @add_mtex() #18
  store ptr %20, ptr %6, align 8, !tbaa !34
  store i16 128, ptr %20, align 8, !tbaa !155
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi ptr [ %20, %19 ], [ %16, %18 ]
  %23 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  store ptr %1, ptr %23, align 8, !tbaa !162
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %27

24:                                               ; preds = %14
  br i1 %17, label %27, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %24, %25, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @give_current_brush_texture(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !202
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_brush_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Brush, ptr %0, i64 0, i32 3, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store ptr %1, ptr %3, align 8, !tbaa !202
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @give_current_particle_texture(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = sext i16 %5 to i64
  %7 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MTex, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  br label %13

13:                                               ; preds = %3, %10, %1
  %14 = phi ptr [ null, %1 ], [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_current_particle_texture(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 10
  %4 = load i16, ptr %3, align 2, !tbaa !182
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %0, i64 0, i32 121, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef nonnull %11) #17
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = icmp eq ptr %1, null
  %16 = load ptr, ptr %6, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %25, label %18

18:                                               ; preds = %14
  br i1 %17, label %19, label %22

19:                                               ; preds = %18
  %20 = tail call ptr @add_mtex() #18
  store ptr %20, ptr %6, align 8, !tbaa !34
  store i16 1, ptr %20, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 3
  store i16 1, ptr %21, align 2, !tbaa !166
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi ptr [ %20, %19 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 5
  store ptr %1, ptr %24, align 8, !tbaa !162
  tail call void @id_us_plus(ptr noundef nonnull %1) #17
  br label %28

25:                                               ; preds = %14
  br i1 %17, label %28, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %16) #17
  store ptr null, ptr %6, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %26, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %10, label %11, label %2, !llvm.loop !237

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.EnvMap, ptr %0, i64 0, i32 13
  store i32 0, ptr %12, align 4, !tbaa !187
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_pointdensitydata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !238
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !239
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #17
  store ptr null, ptr %7, align 8, !tbaa !239
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #17
  store ptr null, ptr %13, align 8, !tbaa !141
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.PointDensity, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !147
  tail call void @curvemapping_free(ptr noundef %20) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_voxeldatadata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_copy_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.VoxelData, ptr %3, i64 0, i32 13
  store ptr null, ptr %4, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_texture_dependsOnTime(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %3) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !240
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 32
  %14 = load i16, ptr %13, align 8, !tbaa !128
  %15 = icmp eq i16 %14, 7
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %5
  %18 = phi i8 [ 1, %5 ], [ 1, %8 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %15, label %26, label %17

17:                                               ; preds = %11
  %18 = load float, ptr %16, align 4, !tbaa !241
  %19 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !243
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds %struct.TexResult, ptr %3, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !244
  %24 = fadd float %21, %23
  %25 = fmul float %24, 0x3FD5555560000000
  store float %25, ptr %3, align 8, !tbaa !245
  br label %28

26:                                               ; preds = %11
  %27 = load float, ptr %3, align 8, !tbaa !245
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %16, float noundef %27) #18
  br label %28

28:                                               ; preds = %26, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @multitex_ext_safe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #12 !PGOFuncName !246 {
  store float %1, ptr %0, align 4, !tbaa !38
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !38
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!42, !43, i64 44}
!42 = !{!"TexMapping", !36, i64 0, !36, i64 12, !36, i64 24, !43, i64 36, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !43, i64 44, !36, i64 48, !36, i64 112, !36, i64 124, !35, i64 136}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !36, i64 40}
!45 = !{!42, !36, i64 41}
!46 = !{!42, !36, i64 42}
!47 = !{i8 0, i8 2}
!48 = !{!42, !43, i64 36}
!49 = !{!"texture.c:is_zero_v3"}
!50 = !{!"texture.c:is_one_v3"}
!51 = !{!"texture.c:copy_v3_v3"}
!52 = !{!53, !39, i64 784}
!53 = !{!"ColorMapping", !54, i64 0, !39, i64 776, !39, i64 780, !39, i64 784, !43, i64 788, !36, i64 792, !39, i64 804, !43, i64 808, !36, i64 812}
!54 = !{!"ColorBand", !55, i64 0, !55, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!55 = !{!"short", !36, i64 0}
!56 = !{!53, !43, i64 808}
!57 = !{!58, !39, i64 16}
!58 = !{!"CBData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !43, i64 20}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!54, !55, i64 0}
!62 = !{!54, !36, i64 6}
!63 = !{!54, !36, i64 4}
!64 = !{!58, !39, i64 0}
!65 = !{!58, !39, i64 4}
!66 = !{!58, !39, i64 8}
!67 = !{!58, !39, i64 12}
!68 = distinct !{!68, !60}
!69 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 20, i64 4, !70}
!70 = !{!43, !43, i64 0}
!71 = !{!54, !36, i64 5}
!72 = !{!"texture.c:colorband_hue_interp"}
!73 = distinct !{!73, !60}
!74 = !{!58, !43, i64 20}
!75 = distinct !{!75, !60, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!54, !55, i64 2}
!79 = distinct !{!79, !60}
!80 = !{!"texture.c:vergcband"}
!81 = !{!"texture.c:zero_v4"}
!82 = distinct !{!82, !60}
!83 = !{!84, !35, i64 360}
!84 = !{!"Tex", !85, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !55, i64 216, !55, i64 218, !55, i64 220, !55, i64 222, !55, i64 224, !55, i64 226, !55, i64 228, !55, i64 230, !55, i64 232, !55, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !43, i64 252, !43, i64 256, !55, i64 260, !55, i64 262, !55, i64 264, !55, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !86, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!85 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !55, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!86 = !{!"ImageUser", !35, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !55, i64 28, !55, i64 30, !55, i64 32, !55, i64 34, !43, i64 36}
!87 = !{!84, !35, i64 368}
!88 = !{!84, !35, i64 384}
!89 = !{!84, !35, i64 392}
!90 = !{!84, !35, i64 400}
!91 = !{!84, !43, i64 104}
!92 = !{!84, !35, i64 336}
!93 = !{!84, !35, i64 352}
!94 = !{!55, !55, i64 0}
!95 = !{!84, !55, i64 264}
!96 = !{!84, !43, i64 252}
!97 = !{!84, !43, i64 256}
!98 = !{!84, !55, i64 262}
!99 = !{!84, !55, i64 260}
!100 = !{!84, !55, i64 266}
!101 = !{!84, !43, i64 280}
!102 = !{!84, !43, i64 272}
!103 = !{!84, !43, i64 276}
!104 = !{!84, !55, i64 220}
!105 = !{!84, !39, i64 288}
!106 = !{!84, !39, i64 160}
!107 = !{!84, !55, i64 224}
!108 = !{!84, !55, i64 226}
!109 = !{!84, !55, i64 216}
!110 = !{!84, !55, i64 218}
!111 = !{!112, !55, i64 166}
!112 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !55, i64 164, !55, i64 166, !39, i64 168, !39, i64 172, !39, i64 176, !43, i64 180, !55, i64 184, !55, i64 186, !43, i64 188, !43, i64 192, !55, i64 196, !55, i64 198}
!113 = !{!112, !55, i64 184}
!114 = !{!112, !55, i64 186}
!115 = !{!116, !39, i64 8}
!116 = !{!"PointDensity", !55, i64 0, !55, i64 2, !39, i64 4, !39, i64 8, !55, i64 12, !55, i64 14, !43, i64 16, !43, i64 20, !35, i64 24, !43, i64 32, !55, i64 36, !55, i64 38, !35, i64 40, !35, i64 48, !39, i64 56, !55, i64 60, !55, i64 62, !55, i64 64, !36, i64 66, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !35, i64 88, !35, i64 96}
!117 = !{!116, !55, i64 2}
!118 = !{!119, !55, i64 16}
!119 = !{!"VoxelData", !36, i64 0, !43, i64 12, !55, i64 16, !55, i64 18, !55, i64 20, !55, i64 22, !55, i64 24, !55, i64 26, !43, i64 28, !35, i64 32, !39, i64 40, !43, i64 44, !36, i64 48, !35, i64 1072, !43, i64 1080, !43, i64 1084}
!120 = !{!121, !43, i64 72}
!121 = !{!"OceanTex", !35, i64 0, !36, i64 8, !43, i64 72, !43, i64 76}
!122 = !{!121, !35, i64 0}
!123 = !{!84, !36, i64 320}
!124 = !{!84, !36, i64 322}
!125 = !{!84, !43, i64 308}
!126 = !{!84, !43, i64 316}
!127 = !{!84, !35, i64 376}
!128 = !{!84, !55, i64 232}
!129 = !{!119, !35, i64 1072}
!130 = !{!119, !39, i64 40}
!131 = !{!119, !55, i64 20}
!132 = !{!119, !35, i64 32}
!133 = !{!119, !43, i64 1080}
!134 = !{!119, !43, i64 1084}
!135 = !{!116, !55, i64 0}
!136 = !{!116, !55, i64 12}
!137 = !{!116, !39, i64 56}
!138 = !{!116, !55, i64 60}
!139 = !{!116, !39, i64 72}
!140 = !{!116, !55, i64 62}
!141 = !{!116, !35, i64 88}
!142 = !{!116, !39, i64 76}
!143 = !{!116, !43, i64 16}
!144 = !{!116, !35, i64 24}
!145 = !{!116, !43, i64 32}
!146 = !{!116, !55, i64 36}
!147 = !{!116, !35, i64 96}
!148 = !{!149, !43, i64 8}
!149 = !{!"CurveMapping", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !150, i64 16, !150, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!150 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!151 = !{!152, !55, i64 2}
!152 = !{!"CurveMap", !55, i64 0, !55, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!153 = !{!112, !55, i64 164}
!154 = !{!112, !39, i64 176}
!155 = !{!156, !55, i64 0}
!156 = !{!"MTex", !55, i64 0, !55, i64 2, !55, i64 4, !55, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !39, i64 116, !55, i64 120, !55, i64 122, !55, i64 124, !55, i64 126, !55, i64 128, !55, i64 130, !36, i64 132, !36, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!157 = !{!156, !55, i64 2}
!158 = !{!156, !35, i64 8}
!159 = !{!156, !36, i64 88}
!160 = !{!156, !36, i64 89}
!161 = !{!156, !36, i64 90}
!162 = !{!156, !35, i64 16}
!163 = !{!156, !55, i64 120}
!164 = !{!156, !55, i64 122}
!165 = !{!156, !39, i64 156}
!166 = !{!156, !55, i64 6}
!167 = !{!156, !55, i64 128}
!168 = !{!156, !36, i64 132}
!169 = distinct !{!169, !60}
!170 = !{!171, !43, i64 536}
!171 = !{!"Material", !85, i64 0, !35, i64 120, !55, i64 128, !55, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !172, i64 224, !173, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !55, i64 356, !55, i64 358, !55, i64 360, !36, i64 362, !36, i64 363, !39, i64 364, !39, i64 368, !55, i64 372, !55, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !55, i64 392, !55, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !55, i64 412, !55, i64 414, !55, i64 416, !55, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !36, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !55, i64 544, !55, i64 546, !55, i64 548, !36, i64 550, !36, i64 551, !55, i64 552, !55, i64 554, !39, i64 556, !39, i64 560, !36, i64 564, !39, i64 580, !39, i64 584, !55, i64 588, !55, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !55, i64 612, !55, i64 614, !39, i64 616, !39, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !55, i64 820, !55, i64 822, !36, i64 824, !36, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !55, i64 876, !55, i64 878, !43, i64 880, !55, i64 884, !55, i64 886, !36, i64 888, !55, i64 904, !55, i64 906, !55, i64 908, !55, i64 910, !55, i64 912, !36, i64 914, !35, i64 920, !174, i64 928}
!172 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !55, i64 64, !55, i64 66, !55, i64 68, !55, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!173 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!174 = !{!"ListBase", !35, i64 0, !35, i64 8}
!175 = !{!171, !36, i64 541}
!176 = !{!177, !55, i64 132}
!177 = !{!"World", !85, i64 0, !35, i64 120, !55, i64 128, !55, i64 130, !55, i64 132, !55, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !55, i64 200, !55, i64 202, !55, i64 204, !55, i64 206, !55, i64 208, !55, i64 210, !55, i64 212, !55, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !55, i64 264, !55, i64 266, !55, i64 268, !55, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !55, i64 288, !55, i64 290, !55, i64 292, !55, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !55, i64 324, !55, i64 326, !55, i64 328, !55, i64 330, !55, i64 332, !55, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !55, i64 504, !55, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!178 = !{!179, !55, i64 280}
!179 = !{!"Lamp", !85, i64 0, !35, i64 120, !55, i64 128, !55, i64 130, !43, i64 132, !55, i64 136, !55, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !35, i64 200, !55, i64 208, !55, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !55, i64 240, !55, i64 242, !55, i64 244, !55, i64 246, !36, i64 248, !36, i64 249, !55, i64 250, !55, i64 252, !55, i64 254, !55, i64 256, !55, i64 258, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !55, i64 276, !55, i64 278, !55, i64 280, !55, i64 282, !55, i64 284, !55, i64 286, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !55, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !55, i64 496, !55, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!180 = !{!181, !55, i64 220}
!181 = !{!"FreestyleLineStyle", !85, i64 0, !35, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !43, i64 148, !39, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !43, i64 192, !55, i64 196, !55, i64 198, !55, i64 200, !55, i64 202, !55, i64 204, !55, i64 206, !43, i64 208, !43, i64 212, !39, i64 216, !55, i64 220, !55, i64 222, !55, i64 224, !36, i64 226, !55, i64 232, !55, i64 234, !55, i64 236, !55, i64 238, !55, i64 240, !55, i64 242, !43, i64 244, !36, i64 248, !35, i64 392, !174, i64 400, !174, i64 416, !174, i64 432, !174, i64 448}
!182 = !{!183, !55, i64 166}
!183 = !{!"ParticleSettings", !85, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !43, i64 156, !55, i64 160, !55, i64 162, !55, i64 164, !55, i64 166, !55, i64 168, !55, i64 170, !55, i64 172, !55, i64 174, !43, i64 176, !43, i64 180, !55, i64 184, !55, i64 186, !55, i64 188, !55, i64 190, !55, i64 192, !55, i64 194, !55, i64 196, !55, i64 198, !55, i64 200, !55, i64 202, !55, i64 204, !55, i64 206, !55, i64 208, !55, i64 210, !55, i64 212, !55, i64 214, !55, i64 216, !55, i64 218, !55, i64 220, !55, i64 222, !55, i64 224, !55, i64 226, !55, i64 228, !55, i64 230, !39, i64 232, !39, i64 236, !36, i64 240, !36, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !55, i64 268, !55, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !55, i64 340, !36, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !36, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !36, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !43, i64 444, !43, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !36, i64 552, !39, i64 560, !39, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !35, i64 720, !174, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !55, i64 792, !36, i64 794}
!184 = !{!185, !35, i64 360}
!185 = !{!"bNodeTree", !85, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !174, i64 224, !174, i64 240, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !55, i64 276, !55, i64 278, !43, i64 280, !43, i64 284, !55, i64 288, !55, i64 290, !43, i64 292, !150, i64 296, !174, i64 312, !174, i64 328, !35, i64 344, !186, i64 352, !43, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!186 = !{!"bNodeInstanceKey", !43, i64 0}
!187 = !{!112, !43, i64 188}
!188 = !{!112, !35, i64 8}
!189 = !{!190, !35, i64 0}
!190 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !174, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !55, i64 2084, !55, i64 2086, !55, i64 2088, !36, i64 2090, !55, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!191 = !{!84, !35, i64 24}
!192 = !{!84, !43, i64 100}
!193 = distinct !{!193, !60}
!194 = !{!171, !35, i64 24}
!195 = distinct !{!195, !60}
!196 = distinct !{!196, !60}
!197 = !{!179, !35, i64 24}
!198 = distinct !{!198, !60}
!199 = distinct !{!199, !60}
!200 = !{!177, !35, i64 24}
!201 = distinct !{!201, !60}
!202 = !{!203, !35, i64 168}
!203 = !{!"Brush", !85, i64 0, !204, i64 120, !35, i64 144, !156, i64 152, !156, i64 464, !35, i64 776, !35, i64 784, !35, i64 792, !35, i64 800, !35, i64 808, !36, i64 816, !39, i64 1840, !55, i64 1844, !55, i64 1846, !39, i64 1848, !43, i64 1852, !43, i64 1856, !43, i64 1860, !39, i64 1864, !43, i64 1868, !43, i64 1872, !43, i64 1876, !43, i64 1880, !39, i64 1884, !39, i64 1888, !36, i64 1892, !39, i64 1904, !36, i64 1908, !43, i64 1920, !39, i64 1924, !39, i64 1928, !43, i64 1932, !43, i64 1936, !43, i64 1940, !36, i64 1944, !36, i64 1945, !36, i64 1946, !36, i64 1947, !39, i64 1948, !39, i64 1952, !39, i64 1956, !39, i64 1960, !39, i64 1964, !43, i64 1968, !43, i64 1972, !43, i64 1976, !39, i64 1980, !39, i64 1984, !43, i64 1988, !43, i64 1992, !39, i64 1996, !36, i64 2000, !36, i64 2012, !36, i64 2024, !36, i64 2032, !36, i64 2040, !36, i64 2048}
!204 = !{!"BrushClone", !35, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!205 = !{!203, !35, i64 24}
!206 = !{!203, !35, i64 480}
!207 = distinct !{!207, !60}
!208 = distinct !{!208, !60}
!209 = !{!183, !35, i64 24}
!210 = distinct !{!210, !60}
!211 = distinct !{!211, !60}
!212 = !{!181, !35, i64 24}
!213 = distinct !{!213, !60}
!214 = distinct !{!214, !60}
!215 = distinct !{!215, !60}
!216 = distinct !{!216, !60}
!217 = distinct !{!217, !60}
!218 = distinct !{!218, !60}
!219 = distinct !{!219, !60}
!220 = distinct !{!220, !60}
!221 = distinct !{!221, !60}
!222 = distinct !{!222, !60}
!223 = distinct !{!223, !60}
!224 = distinct !{!224, !60}
!225 = !{!"texture.c:extern_local_texture"}
!226 = !{!227, !43, i64 456}
!227 = !{!"Object", !85, i64 0, !35, i64 120, !35, i64 128, !55, i64 136, !55, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !228, i64 312, !35, i64 360, !174, i64 368, !174, i64 384, !174, i64 400, !174, i64 416, !43, i64 432, !43, i64 436, !35, i64 440, !35, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !55, i64 948, !55, i64 950, !55, i64 952, !55, i64 954, !55, i64 956, !55, i64 958, !55, i64 960, !55, i64 962, !55, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !55, i64 1036, !55, i64 1038, !55, i64 1040, !36, i64 1042, !36, i64 1043, !55, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !174, i64 1056, !174, i64 1072, !174, i64 1088, !174, i64 1104, !39, i64 1120, !55, i64 1124, !55, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !55, i64 1162, !36, i64 1164, !174, i64 1176, !174, i64 1192, !174, i64 1208, !174, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !55, i64 1266, !39, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !229, i64 1304, !229, i64 1312, !43, i64 1320, !43, i64 1324, !174, i64 1328, !174, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !174, i64 1400, !35, i64 1416}
!228 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !55, i64 16, !55, i64 18, !55, i64 20, !55, i64 22, !55, i64 24, !55, i64 26, !55, i64 28, !55, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!229 = !{!"long", !36, i64 0}
!230 = !{!227, !55, i64 136}
!231 = !{!227, !35, i64 296}
!232 = !{!227, !43, i64 460}
!233 = !{!171, !36, i64 543}
!234 = !{!171, !35, i64 768}
!235 = !{!236, !35, i64 240}
!236 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !43, i64 168, !55, i64 172, !55, i64 174, !55, i64 176, !55, i64 178, !55, i64 180, !55, i64 182, !55, i64 184, !55, i64 186, !36, i64 188, !174, i64 200, !174, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !174, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !43, i64 308, !36, i64 312, !55, i64 376, !55, i64 378, !39, i64 380, !39, i64 384, !55, i64 388, !55, i64 390, !35, i64 392, !150, i64 400, !150, i64 416, !150, i64 432, !55, i64 448, !55, i64 450, !43, i64 452, !35, i64 456}
!237 = distinct !{!237, !60}
!238 = !{!116, !35, i64 40}
!239 = !{!116, !35, i64 48}
!240 = !{!84, !35, i64 120}
!241 = !{!242, !39, i64 4}
!242 = !{!"TexResult", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !43, i64 20, !35, i64 24}
!243 = !{!242, !39, i64 8}
!244 = !{!242, !39, i64 12}
!245 = !{!242, !39, i64 0}
!246 = !{!"texture.c:copy_v3_fl"}
